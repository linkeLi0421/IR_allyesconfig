; ModuleID = '/llk/IR_all_yes/drivers/vme/bridges/vme_tsi148.c_pt.bc'
source_filename = "../drivers/vme/bridges/vme_tsi148.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vme_bridge = type { [16 x i8], i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, [7 x %struct.vme_irq], %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vme_irq = type { i32, [256 x %struct.vme_callback] }
%struct.vme_callback = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.tsi148_driver = type { ptr, [2 x %struct.wait_queue_head], %struct.wait_queue_head, [4 x ptr], [4 x ptr], ptr, i32, ptr, %struct.mutex, %struct.mutex }
%struct.vme_master_resource = type { %struct.list_head, ptr, %struct.spinlock, i32, i32, i32, i32, i32, %struct.resource, ptr }
%struct.vme_slave_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, i32, i32 }
%struct.vme_dma_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, %struct.list_head, %struct.list_head, i32 }
%struct.vme_lm_resource = type { %struct.list_head, ptr, %struct.mutex, i32, i32, i32 }
%struct.pci_bus_region = type { i32, i32 }
%struct.vme_error_handler = type { %struct.list_head, i64, i64, i64, i32, i32 }
%struct.vme_dma_list = type { %struct.list_head, ptr, %struct.list_head, %struct.mutex }
%struct.vme_dma_attr = type { i32, ptr }
%struct.tsi148_dma_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vme_dma_pattern = type { i32, i32 }
%struct.vme_dma_vme = type { i64, i32, i32, i32 }
%struct.tsi148_dma_entry = type { %struct.tsi148_dma_descriptor, %struct.list_head, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_vme_tsi148__237_2652_tsi148_driver_init6 = internal global ptr @tsi148_driver_init, section ".initcall6.init", align 4
@tsi148_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @driver_name, ptr @tsi148_ids, ptr @tsi148_probe, ptr @tsi148_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tsi148_driver_exit = internal global ptr @tsi148_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_err_chk238 = internal constant [65 x i8] c"vme_tsi148.parm=err_chk:Check for VME errors on reads and writes\00", section ".modinfo", align 1
@__param_str_err_chk = internal constant [19 x i8] c"vme_tsi148.err_chk\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@err_chk = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_err_chk = internal constant %struct.kernel_param { ptr @__param_str_err_chk, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @err_chk } }, section "__param", align 4
@__UNIQUE_ID_err_chktype239 = internal constant [33 x i8] c"vme_tsi148.parmtype=err_chk:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_geoid240 = internal constant [55 x i8] c"vme_tsi148.parm=geoid:Override geographical addressing\00", section ".modinfo", align 1
@__param_str_geoid = internal constant [17 x i8] c"vme_tsi148.geoid\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@geoid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_geoid = internal constant %struct.kernel_param { ptr @__param_str_geoid, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @geoid } }, section "__param", align 4
@__UNIQUE_ID_geoidtype241 = internal constant [30 x i8] c"vme_tsi148.parmtype=geoid:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [66 x i8] c"vme_tsi148.description=VME driver for the Tundra Tempe VME bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [47 x i8] c"vme_tsi148.file=drivers/vme/bridges/vme_tsi148\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [23 x i8] c"vme_tsi148.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vme_tsi148\00", [21 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vme_tsi148\00", [21 x i8] zeroinitializer }, align 32
@tsi148_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4323, i32 328, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tsi148_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tsi148_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/vme/bridges/vme_tsi148.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr = internal global ptr @tsi148_probe._entry, section ".printk_index", align 4
@tsi148_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to reserve resources\0A\00", [35 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.8 = internal global ptr @tsi148_probe._entry.6, section ".printk_index", align 4
@tsi148_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to remap CRG region\0A\00", [36 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.11 = internal global ptr @tsi148_probe._entry.9, section ".printk_index", align 4
@tsi148_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CRG region check failed\0A\00", [39 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.14 = internal global ptr @tsi148_probe._entry.12, section ".printk_index", align 4
@tsi148_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&tsi148_device->dma_queue[0]\00", [35 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&tsi148_device->dma_queue[1]\00", [35 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&tsi148_device->iack_queue\00", [37 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&tsi148_device->vme_int\00", [40 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&tsi148_device->vme_rmw\00", [40 x i8] zeroinitializer }, align 32
@tsi148_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Chip Initialization failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.26 = internal global ptr @tsi148_probe._entry.24, section ".printk_index", align 4
@tsi148_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&tsi148_device->flush_image->lock\00", [62 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&master_image->lock\00", [44 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&slave_image->mtx\00", [46 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dma_ctrlr->mtx\00", [16 x i8] zeroinitializer }, align 32
@tsi148_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&lm->mtx\00", [23 x i8] zeroinitializer }, align 32
@tsi148_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 2475, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Board is%s the VME system controller\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.40 = internal global ptr @tsi148_probe._entry.37, section ".printk_index", align 4
@.str.41 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@tsi148_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 2478, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VME geographical address is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.45 = internal global ptr @tsi148_probe._entry.43, section ".printk_index", align 4
@tsi148_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 2481, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VME geographical address is set to %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.48 = internal global ptr @tsi148_probe._entry.46, section ".printk_index", align 4
@tsi148_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 2484, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VME Write and flush and error check is %s\0A\00", [53 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.51 = internal global ptr @tsi148_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@tsi148_probe._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.2, ptr @.str.3, i32 2488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CR/CSR configuration failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.56 = internal global ptr @tsi148_probe._entry.54, section ".printk_index", align 4
@tsi148_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.2, ptr @.str.3, i32 2494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Chip Registration failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@tsi148_probe._entry_ptr.59 = internal global ptr @tsi148_probe._entry.57, section ".printk_index", align 4
@tsi148_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't get assigned pci irq vector %02X\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tsi148_irq_init\00", [16 x i8] zeroinitializer }, align 32
@tsi148_irq_init._entry_ptr = internal global ptr @tsi148_irq_init._entry, section ".printk_index", align 4
@TSI148_LCSR_INTC_LMC = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1048576, i32 2097152, i32 4194304, i32 8388608], [16 x i8] zeroinitializer }, align 32
@tsi148_MB_irqhandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VME Mailbox %d received: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi148_MB_irqhandler\00", [43 x i8] zeroinitializer }, align 32
@tsi148_MB_irqhandler._entry_ptr = internal global ptr @tsi148_MB_irqhandler._entry, section ".printk_index", align 4
@tsi148_PERR_irqhandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PCI Exception at address: 0x%08x:%08x, attributes: %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tsi148_PERR_irqhandler\00", [41 x i8] zeroinitializer }, align 32
@tsi148_PERR_irqhandler._entry_ptr = internal global ptr @tsi148_PERR_irqhandler._entry, section ".printk_index", align 4
@tsi148_PERR_irqhandler._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"PCI-X attribute reg: %08x, PCI-X split completion reg: %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@tsi148_PERR_irqhandler._entry_ptr.68 = internal global ptr @tsi148_PERR_irqhandler._entry.66, section ".printk_index", align 4
@tsi148_VERR_irqhandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VME Bus Exception Overflow Occurred\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tsi148_VERR_irqhandler\00", [41 x i8] zeroinitializer }, align 32
@tsi148_VERR_irqhandler._entry_ptr = internal global ptr @tsi148_VERR_irqhandler._entry, section ".printk_index", align 4
@tsi148_VERR_irqhandler._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"VME Bus Error at address: 0x%llx, attributes: %08x\0A\00", [44 x i8] zeroinitializer }, align 32
@tsi148_VERR_irqhandler._entry_ptr.73 = internal global ptr @tsi148_VERR_irqhandler._entry.71, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@TSI148_LCSR_IT = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 768, i32 800, i32 832, i32 864, i32 896, i32 928, i32 960, i32 992], [32 x i8] zeroinitializer }, align 32
@tsi148_slave_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid address space\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsi148_slave_set\00", [47 x i8] zeroinitializer }, align 32
@tsi148_slave_set._entry_ptr = internal global ptr @tsi148_slave_set._entry, section ".printk_index", align 4
@tsi148_slave_set._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid VME base alignment\0A\00", [36 x i8] zeroinitializer }, align 32
@tsi148_slave_set._entry_ptr.78 = internal global ptr @tsi148_slave_set._entry.76, section ".printk_index", align 4
@tsi148_slave_set._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid VME bound alignment\0A\00", [35 x i8] zeroinitializer }, align 32
@tsi148_slave_set._entry_ptr.81 = internal global ptr @tsi148_slave_set._entry.79, section ".printk_index", align 4
@tsi148_slave_set._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid PCI Offset alignment\0A\00", [34 x i8] zeroinitializer }, align 32
@tsi148_slave_set._entry_ptr.84 = internal global ptr @tsi148_slave_set._entry.82, section ".printk_index", align 4
@TSI148_LCSR_OT = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 256, i32 288, i32 320, i32 352, i32 384, i32 416, i32 448, i32 480], [32 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 831, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid VME Window alignment\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tsi148_master_set\00", [46 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr = internal global ptr @tsi148_master_set._entry, section ".printk_index", align 4
@tsi148_master_set._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 838, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Size must be non-zero for enabled windows\0A\00", [53 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.89 = internal global ptr @tsi148_master_set._entry.87, section ".printk_index", align 4
@tsi148_master_set._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate memory for resource\0A\00", [56 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.92 = internal global ptr @tsi148_master_set._entry.90, section ".printk_index", align 4
@tsi148_master_set._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.3, i32 881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid PCI base alignment\0A\00", [36 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.95 = internal global ptr @tsi148_master_set._entry.93, section ".printk_index", align 4
@tsi148_master_set._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.86, ptr @.str.3, i32 887, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid PCI bound alignment\0A\00", [35 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.98 = internal global ptr @tsi148_master_set._entry.96, section ".printk_index", align 4
@tsi148_master_set._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.86, ptr @.str.3, i32 894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid VME Offset alignment\0A\00", [34 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.101 = internal global ptr @tsi148_master_set._entry.99, section ".printk_index", align 4
@tsi148_master_set._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.86, ptr @.str.3, i32 941, ptr @.str.104, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Currently not setting Broadcast Select Registers\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.105 = internal global ptr @tsi148_master_set._entry.102, section ".printk_index", align 4
@tsi148_master_set._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.86, ptr @.str.3, i32 957, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid data width\0A\00", [44 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.108 = internal global ptr @tsi148_master_set._entry.106, section ".printk_index", align 4
@tsi148_master_set._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.86, ptr @.str.3, i32 994, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsi148_master_set._entry_ptr.110 = internal global ptr @tsi148_master_set._entry.109, section ".printk_index", align 4
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@pcibios_min_mem = external dso_local local_unnamed_addr global i32, align 4
@tsi148_alloc_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Failed to allocate mem resource for window %d size 0x%lx start 0x%lx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tsi148_alloc_resource\00", [42 x i8] zeroinitializer }, align 32
@tsi148_alloc_resource._entry_ptr = internal global ptr @tsi148_alloc_resource._entry, section ".printk_index", align 4
@tsi148_alloc_resource._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.3, i32 775, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to remap resource\0A\00", [38 x i8] zeroinitializer }, align 32
@tsi148_alloc_resource._entry_ptr.116 = internal global ptr @tsi148_alloc_resource._entry.114, section ".printk_index", align 4
@tsi148_master_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 1247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"First VME read error detected an at address 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tsi148_master_read\00", [45 x i8] zeroinitializer }, align 32
@tsi148_master_read._entry_ptr = internal global ptr @tsi148_master_read._entry, section ".printk_index", align 4
@tsi148_master_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 1345, ptr @.str.104, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"First VME write error detected an at address 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi148_master_write\00", [44 x i8] zeroinitializer }, align 32
@tsi148_master_write._entry_ptr = internal global ptr @tsi148_master_write._entry, section ".printk_index", align 4
@tsi148_dma_list_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 1644, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Descriptor not aligned to 8 byte boundary as required: %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tsi148_dma_list_add\00", [44 x i8] zeroinitializer }, align 32
@tsi148_dma_list_add._entry_ptr = internal global ptr @tsi148_dma_list_add._entry, section ".printk_index", align 4
@tsi148_dma_list_add._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 1697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid source type\0A\00", [43 x i8] zeroinitializer }, align 32
@tsi148_dma_list_add._entry_ptr.125 = internal global ptr @tsi148_dma_list_add._entry.123, section ".printk_index", align 4
@tsi148_dma_list_add._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.3, i32 1733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid destination type\0A\00", [38 x i8] zeroinitializer }, align 32
@tsi148_dma_list_add._entry_ptr.128 = internal global ptr @tsi148_dma_list_add._entry.126, section ".printk_index", align 4
@tsi148_dma_list_add._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.122, ptr @.str.3, i32 1749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@tsi148_dma_list_add._entry_ptr.131 = internal global ptr @tsi148_dma_list_add._entry.129, section ".printk_index", align 4
@tsi148_dma_set_vme_src_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.132, ptr @.str.3, i32 1455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tsi148_dma_set_vme_src_attributes\00", [62 x i8] zeroinitializer }, align 32
@tsi148_dma_set_vme_src_attributes._entry_ptr = internal global ptr @tsi148_dma_set_vme_src_attributes._entry, section ".printk_index", align 4
@tsi148_dma_set_vme_src_attributes._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.132, ptr @.str.3, i32 1468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsi148_dma_set_vme_src_attributes._entry_ptr.134 = internal global ptr @tsi148_dma_set_vme_src_attributes._entry.133, section ".printk_index", align 4
@tsi148_dma_set_vme_src_attributes._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.132, ptr @.str.3, i32 1502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsi148_dma_set_vme_src_attributes._entry_ptr.136 = internal global ptr @tsi148_dma_set_vme_src_attributes._entry.135, section ".printk_index", align 4
@tsi148_dma_set_vme_dest_attributes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.137, ptr @.str.3, i32 1554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tsi148_dma_set_vme_dest_attributes\00", [61 x i8] zeroinitializer }, align 32
@tsi148_dma_set_vme_dest_attributes._entry_ptr = internal global ptr @tsi148_dma_set_vme_dest_attributes._entry, section ".printk_index", align 4
@tsi148_dma_set_vme_dest_attributes._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.137, ptr @.str.3, i32 1567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsi148_dma_set_vme_dest_attributes._entry_ptr.139 = internal global ptr @tsi148_dma_set_vme_dest_attributes._entry.138, section ".printk_index", align 4
@tsi148_dma_set_vme_dest_attributes._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.137, ptr @.str.3, i32 1601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsi148_dma_set_vme_dest_attributes._entry_ptr.141 = internal global ptr @tsi148_dma_set_vme_dest_attributes._entry.140, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@TSI148_LCSR_DMA = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1280, i32 1408], [24 x i8] zeroinitializer }, align 32
@tsi148_dma_list_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.3, i32 1875, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA Error. DSTA=%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tsi148_dma_list_exec\00", [43 x i8] zeroinitializer }, align 32
@tsi148_dma_list_exec._entry_ptr = internal global ptr @tsi148_dma_list_exec._entry, section ".printk_index", align 4
@TSI148_LCSR_INTEN_IRQEN = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], [36 x i8] zeroinitializer }, align 32
@TSI148_LCSR_INTEO_IRQEO = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], [36 x i8] zeroinitializer }, align 32
@TSI148_LCSR_VICR_IRQL = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 256, i32 512, i32 768, i32 1024, i32 1280, i32 1536, i32 1792], [32 x i8] zeroinitializer }, align 32
@tsi148_lm_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 1939, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Location monitor callback attached, can't reset\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsi148_lm_set\00", [18 x i8] zeroinitializer }, align 32
@tsi148_lm_set._entry_ptr = internal global ptr @tsi148_lm_set._entry, section ".printk_index", align 4
@tsi148_lm_set._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.147, ptr @.str.3, i32 1959, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tsi148_lm_set._entry_ptr.149 = internal global ptr @tsi148_lm_set._entry.148, section ".printk_index", align 4
@tsi148_lm_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.3, i32 2055, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Location monitor not properly configured\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tsi148_lm_attach\00", [47 x i8] zeroinitializer }, align 32
@tsi148_lm_attach._entry_ptr = internal global ptr @tsi148_lm_attach._entry, section ".printk_index", align 4
@tsi148_lm_attach._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.3, i32 2062, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Existing callback attached\0A\00", [36 x i8] zeroinitializer }, align 32
@tsi148_lm_attach._entry_ptr.154 = internal global ptr @tsi148_lm_attach._entry.152, section ".printk_index", align 4
@TSI148_LCSR_INTEN_LMEN = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1048576, i32 2097152, i32 4194304, i32 8388608], [16 x i8] zeroinitializer }, align 32
@TSI148_LCSR_INTEO_LMEO = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1048576, i32 2097152, i32 4194304, i32 8388608], [16 x i8] zeroinitializer }, align 32
@tsi148_crcsr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.3, i32 2200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate memory for CR/CSR image\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tsi148_crcsr_init\00", [46 x i8] zeroinitializer }, align 32
@tsi148_crcsr_init._entry_ptr = internal global ptr @tsi148_crcsr_init._entry, section ".printk_index", align 4
@tsi148_crcsr_init._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.3, i32 2217, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Setting CR/CSR offset\0A\00", [41 x i8] zeroinitializer }, align 32
@tsi148_crcsr_init._entry_ptr.159 = internal global ptr @tsi148_crcsr_init._entry.157, section ".printk_index", align 4
@tsi148_crcsr_init._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.156, ptr @.str.3, i32 2220, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CR/CSR Offset: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@tsi148_crcsr_init._entry_ptr.162 = internal global ptr @tsi148_crcsr_init._entry.160, section ".printk_index", align 4
@tsi148_crcsr_init._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.156, ptr @.str.3, i32 2224, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CR/CSR already enabled\0A\00", [40 x i8] zeroinitializer }, align 32
@tsi148_crcsr_init._entry_ptr.165 = internal global ptr @tsi148_crcsr_init._entry.163, section ".printk_index", align 4
@tsi148_crcsr_init._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.156, ptr @.str.3, i32 2226, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enabling CR/CSR space\0A\00", [41 x i8] zeroinitializer }, align 32
@tsi148_crcsr_init._entry_ptr.168 = internal global ptr @tsi148_crcsr_init._entry.166, section ".printk_index", align 4
@tsi148_crcsr_init._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.156, ptr @.str.3, i32 2241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Configuring flush image failed\0A\00", [32 x i8] zeroinitializer }, align 32
@tsi148_crcsr_init._entry_ptr.171 = internal global ptr @tsi148_crcsr_init._entry.169, section ".printk_index", align 4
@tsi148_remove.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.3, ptr @.str.173, i8 2, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tsi148_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Driver is being unloaded.\0A\00", [37 x i8] zeroinitializer }, align 32
@switch.table.tsi148_slave_get = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 4, i32 1, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.tsi148_slave_get.174 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 4096, i32 65536, i32 16, i32 65536], [44 x i8] zeroinitializer }, align 32
@switch.table.tsi148_slave_set = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 16, i32 0, i32 32, i32 0, i32 0, i32 0, i32 64], [32 x i8] zeroinitializer }, align 32
@switch.table.tsi148_slave_set.175 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 4096, i32 16, i32 65536, i32 16, i32 16, i32 16, i32 65536], [32 x i8] zeroinitializer }, align 32
@switch.table.tsi148_lm_set = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 16, i32 0, i32 32, i32 0, i32 0, i32 0, i32 64], [32 x i8] zeroinitializer }, align 32
@switch.table.__tsi148_master_get = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1, i32 2, i32 4, i32 1, i32 8, i32 16, i32 1, i32 1, i32 32, i32 64, i32 128, i32 256], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.179 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.182 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.185 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@__sancov_gen_cov_switch_values.186 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.190 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.191 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.192 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 768, i64 1024, i64 1280]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 1280]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"tsi148_driver\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 51, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant [8 x i8] c"err_chk\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 39, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"geoid\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 40, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2652, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 42, i32 19 }
@___asan_gen_.211 = private unnamed_addr constant [11 x i8] c"tsi148_ids\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 44, i32 35 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2302, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2309, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2317, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2325, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2331, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2332, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2333, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2334, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2335, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2343, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2364, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2380, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2406, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2427, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2447, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2474, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2477, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2480, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2483, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2488, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2494, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 320, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"TSI148_LCSR_INTC_LMC\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1158, i32 18 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 128, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 146, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 152, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 184, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 191, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant [15 x i8] c"TSI148_LCSR_IT\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 355, i32 18 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 507, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 524, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 528, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 532, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant [15 x i8] c"TSI148_LCSR_OT\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 198, i32 18 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 830, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 837, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 852, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 881, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 887, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 893, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 940, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 957, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 994, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 754, i32 44 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 765, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 775, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1245, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1343, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1642, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1697, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1733, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1749, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1454, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1468, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1502, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1553, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1567, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1601, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 326, i32 6 }
@___asan_gen_.601 = private unnamed_addr constant [16 x i8] c"TSI148_LCSR_DMA\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 468, i32 18 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1875, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant [24 x i8] c"TSI148_LCSR_INTEN_IRQEN\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1053, i32 18 }
@___asan_gen_.616 = private unnamed_addr constant [24 x i8] c"TSI148_LCSR_INTEO_IRQEO\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1093, i32 18 }
@___asan_gen_.619 = private unnamed_addr constant [22 x i8] c"TSI148_LCSR_VICR_IRQL\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1014, i32 18 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1938, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1959, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2054, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2062, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant [23 x i8] c"TSI148_LCSR_INTEN_LMEN\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1048, i32 18 }
@___asan_gen_.652 = private unnamed_addr constant [23 x i8] c"TSI148_LCSR_INTEO_LMEO\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [36 x i8] c"../drivers/vme/bridges/vme_tsi148.h\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.653, i32 1088, i32 18 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2199, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2217, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2220, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2224, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2226, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2240, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.698 = private constant [36 x i8] c"../drivers/vme/bridges/vme_tsi148.c\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 2572, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant [30 x i8] c"switch.table.tsi148_slave_get\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [34 x i8] c"switch.table.tsi148_slave_get.174\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [30 x i8] c"switch.table.tsi148_slave_set\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [34 x i8] c"switch.table.tsi148_slave_set.175\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [27 x i8] c"switch.table.tsi148_lm_set\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [33 x i8] c"switch.table.__tsi148_master_get\00", align 1
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_err_chk238, ptr @__UNIQUE_ID_err_chktype239, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_geoid240, ptr @__UNIQUE_ID_geoidtype241, ptr @__UNIQUE_ID_license244, ptr @__exitcall_tsi148_driver_exit, ptr @__initcall__kmod_vme_tsi148__237_2652_tsi148_driver_init6, ptr @__param_err_chk, ptr @__param_geoid, ptr @tsi148_MB_irqhandler._entry, ptr @tsi148_MB_irqhandler._entry_ptr, ptr @tsi148_PERR_irqhandler._entry, ptr @tsi148_PERR_irqhandler._entry.66, ptr @tsi148_PERR_irqhandler._entry_ptr, ptr @tsi148_PERR_irqhandler._entry_ptr.68, ptr @tsi148_VERR_irqhandler._entry, ptr @tsi148_VERR_irqhandler._entry.71, ptr @tsi148_VERR_irqhandler._entry_ptr, ptr @tsi148_VERR_irqhandler._entry_ptr.73, ptr @tsi148_alloc_resource._entry, ptr @tsi148_alloc_resource._entry.114, ptr @tsi148_alloc_resource._entry_ptr, ptr @tsi148_alloc_resource._entry_ptr.116, ptr @tsi148_crcsr_init._entry, ptr @tsi148_crcsr_init._entry.157, ptr @tsi148_crcsr_init._entry.160, ptr @tsi148_crcsr_init._entry.163, ptr @tsi148_crcsr_init._entry.166, ptr @tsi148_crcsr_init._entry.169, ptr @tsi148_crcsr_init._entry_ptr, ptr @tsi148_crcsr_init._entry_ptr.159, ptr @tsi148_crcsr_init._entry_ptr.162, ptr @tsi148_crcsr_init._entry_ptr.165, ptr @tsi148_crcsr_init._entry_ptr.168, ptr @tsi148_crcsr_init._entry_ptr.171, ptr @tsi148_dma_list_add._entry, ptr @tsi148_dma_list_add._entry.123, ptr @tsi148_dma_list_add._entry.126, ptr @tsi148_dma_list_add._entry.129, ptr @tsi148_dma_list_add._entry_ptr, ptr @tsi148_dma_list_add._entry_ptr.125, ptr @tsi148_dma_list_add._entry_ptr.128, ptr @tsi148_dma_list_add._entry_ptr.131, ptr @tsi148_dma_list_exec._entry, ptr @tsi148_dma_list_exec._entry_ptr, ptr @tsi148_dma_set_vme_dest_attributes._entry, ptr @tsi148_dma_set_vme_dest_attributes._entry.138, ptr @tsi148_dma_set_vme_dest_attributes._entry.140, ptr @tsi148_dma_set_vme_dest_attributes._entry_ptr, ptr @tsi148_dma_set_vme_dest_attributes._entry_ptr.139, ptr @tsi148_dma_set_vme_dest_attributes._entry_ptr.141, ptr @tsi148_dma_set_vme_src_attributes._entry, ptr @tsi148_dma_set_vme_src_attributes._entry.133, ptr @tsi148_dma_set_vme_src_attributes._entry.135, ptr @tsi148_dma_set_vme_src_attributes._entry_ptr, ptr @tsi148_dma_set_vme_src_attributes._entry_ptr.134, ptr @tsi148_dma_set_vme_src_attributes._entry_ptr.136, ptr @tsi148_driver_exit, ptr @tsi148_irq_init._entry, ptr @tsi148_irq_init._entry_ptr, ptr @tsi148_lm_attach._entry, ptr @tsi148_lm_attach._entry.152, ptr @tsi148_lm_attach._entry_ptr, ptr @tsi148_lm_attach._entry_ptr.154, ptr @tsi148_lm_set._entry, ptr @tsi148_lm_set._entry.148, ptr @tsi148_lm_set._entry_ptr, ptr @tsi148_lm_set._entry_ptr.149, ptr @tsi148_master_read._entry, ptr @tsi148_master_read._entry_ptr, ptr @tsi148_master_set._entry, ptr @tsi148_master_set._entry.102, ptr @tsi148_master_set._entry.106, ptr @tsi148_master_set._entry.109, ptr @tsi148_master_set._entry.87, ptr @tsi148_master_set._entry.90, ptr @tsi148_master_set._entry.93, ptr @tsi148_master_set._entry.96, ptr @tsi148_master_set._entry.99, ptr @tsi148_master_set._entry_ptr, ptr @tsi148_master_set._entry_ptr.101, ptr @tsi148_master_set._entry_ptr.105, ptr @tsi148_master_set._entry_ptr.108, ptr @tsi148_master_set._entry_ptr.110, ptr @tsi148_master_set._entry_ptr.89, ptr @tsi148_master_set._entry_ptr.92, ptr @tsi148_master_set._entry_ptr.95, ptr @tsi148_master_set._entry_ptr.98, ptr @tsi148_master_write._entry, ptr @tsi148_master_write._entry_ptr, ptr @tsi148_probe._entry, ptr @tsi148_probe._entry.12, ptr @tsi148_probe._entry.24, ptr @tsi148_probe._entry.37, ptr @tsi148_probe._entry.43, ptr @tsi148_probe._entry.46, ptr @tsi148_probe._entry.49, ptr @tsi148_probe._entry.54, ptr @tsi148_probe._entry.57, ptr @tsi148_probe._entry.6, ptr @tsi148_probe._entry.9, ptr @tsi148_probe._entry_ptr, ptr @tsi148_probe._entry_ptr.11, ptr @tsi148_probe._entry_ptr.14, ptr @tsi148_probe._entry_ptr.26, ptr @tsi148_probe._entry_ptr.40, ptr @tsi148_probe._entry_ptr.45, ptr @tsi148_probe._entry_ptr.48, ptr @tsi148_probe._entry_ptr.51, ptr @tsi148_probe._entry_ptr.56, ptr @tsi148_probe._entry_ptr.59, ptr @tsi148_probe._entry_ptr.8, ptr @tsi148_slave_set._entry, ptr @tsi148_slave_set._entry.76, ptr @tsi148_slave_set._entry.79, ptr @tsi148_slave_set._entry.82, ptr @tsi148_slave_set._entry_ptr, ptr @tsi148_slave_set._entry_ptr.78, ptr @tsi148_slave_set._entry_ptr.81, ptr @tsi148_slave_set._entry_ptr.84, ptr @tsi148_driver, ptr @err_chk, ptr @geoid, ptr @.str, ptr @driver_name, ptr @tsi148_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @tsi148_probe.__key, ptr @.str.15, ptr @tsi148_probe.__key.16, ptr @.str.17, ptr @tsi148_probe.__key.18, ptr @.str.19, ptr @tsi148_probe.__key.20, ptr @.str.21, ptr @tsi148_probe.__key.22, ptr @.str.23, ptr @.str.25, ptr @tsi148_probe.__key.27, ptr @.str.28, ptr @tsi148_probe.__key.29, ptr @.str.30, ptr @tsi148_probe.__key.31, ptr @.str.32, ptr @tsi148_probe.__key.33, ptr @.str.34, ptr @tsi148_probe.__key.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @TSI148_LCSR_INTC_LMC, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @TSI148_LCSR_IT, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @TSI148_LCSR_OT, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.137, ptr @.str.142, ptr @.str.143, ptr @TSI148_LCSR_DMA, ptr @.str.144, ptr @.str.145, ptr @TSI148_LCSR_INTEN_IRQEN, ptr @TSI148_LCSR_INTEO_IRQEO, ptr @TSI148_LCSR_VICR_IRQL, ptr @.str.146, ptr @.str.147, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @TSI148_LCSR_INTEN_LMEN, ptr @TSI148_LCSR_INTEO_LMEO, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @switch.table.tsi148_slave_get, ptr @switch.table.tsi148_slave_get.174, ptr @switch.table.tsi148_slave_set, ptr @switch.table.tsi148_slave_set.175, ptr @switch.table.tsi148_lm_set, ptr @switch.table.__tsi148_master_get], section "llvm.metadata"
@0 = internal global [174 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @err_chk to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geoid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_INTC_LMC to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_MB_irqhandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_PERR_irqhandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_PERR_irqhandler._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_VERR_irqhandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_VERR_irqhandler._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_IT to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_slave_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_slave_set._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_slave_set._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_slave_set._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_OT to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_set._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_alloc_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_alloc_resource._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_master_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_list_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_list_add._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_list_add._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_list_add._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_set_vme_src_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_set_vme_src_attributes._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_set_vme_src_attributes._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_set_vme_dest_attributes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_set_vme_dest_attributes._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_set_vme_dest_attributes._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_DMA to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_dma_list_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_INTEN_IRQEN to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_INTEO_IRQEO to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_VICR_IRQL to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_lm_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_lm_set._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_lm_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_lm_attach._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_INTEN_LMEN to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSI148_LCSR_INTEO_LMEO to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_crcsr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_crcsr_init._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_crcsr_init._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_crcsr_init._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_crcsr_init._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tsi148_crcsr_init._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsi148_slave_get to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsi148_slave_get.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsi148_slave_set to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsi148_slave_set.175 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tsi148_lm_set to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__tsi148_master_get to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @tsi148_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tsi148_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @tsi148_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 14616, i32 noundef 3520, i32 noundef 2) #12
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @vme_init_bridge(ptr noundef nonnull %call1.i.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 388) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.err_driver_crit_edge, label %if.end6

if.end.err_driver_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_driver

if.end6:                                          ; preds = %if.end
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_priv, align 8
  %call7 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %err_enable

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @driver_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.7) #14
  br label %err_resource

if.end18:                                         ; preds = %if.end10
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  %call19 = tail call ptr @ioremap(i32 noundef %3, i32 noundef 4096) #9
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call19, ptr %call7.i.i, align 8
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.10) #14
  br label %err_remap

if.end27:                                         ; preds = %if.end18
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call19) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  %6 = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -485490688, i32 %6)
  %cmp.not = icmp eq i32 %6, -485490688
  br i1 %cmp.not, label %do.body36, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.13) #14
  br label %err_test

do.body36:                                        ; preds = %if.end27
  %dma_queue = getelementptr inbounds %struct.tsi148_driver, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %dma_queue, ptr noundef nonnull @.str.15, ptr noundef nonnull @tsi148_probe.__key) #9
  %arrayidx42 = getelementptr %struct.tsi148_driver, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %arrayidx42, ptr noundef nonnull @.str.17, ptr noundef nonnull @tsi148_probe.__key.16) #9
  %iack_queue = getelementptr inbounds %struct.tsi148_driver, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %iack_queue, ptr noundef nonnull @.str.19, ptr noundef nonnull @tsi148_probe.__key.18) #9
  %vme_int = getelementptr inbounds %struct.tsi148_driver, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %vme_int, ptr noundef nonnull @.str.21, ptr noundef nonnull @tsi148_probe.__key.20) #9
  %vme_rmw = getelementptr inbounds %struct.tsi148_driver, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %vme_rmw, ptr noundef nonnull @.str.23, ptr noundef nonnull @tsi148_probe.__key.22) #9
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev54, ptr %parent, align 4
  %8 = call ptr @memcpy(ptr %call1.i.i.i, ptr @driver_name, i32 11)
  %9 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_priv, align 8
  %irq.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @tsi148_irqhandler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @driver_name, ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end63, label %do.end61

do.end61:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 4
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.60, i32 noundef %16) #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.25) #14
  br label %err_test

if.end63:                                         ; preds = %do.body36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %add.ptr7.i = getelementptr i8, ptr %18, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 51328000) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 4
  %add.ptr12.i = getelementptr i8, ptr %20, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 51328000) #9, !srcloc !349
  %21 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool64.not = icmp eq i8 %21, 0
  br i1 %tobool64.not, label %if.end63.if.end82_crit_edge, label %if.then65

if.end63.if.end82_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then65:                                        ; preds = %if.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 112) #13
  %flush_image = getelementptr inbounds %struct.tsi148_driver, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %flush_image to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %flush_image, align 8
  %tobool68.not = icmp eq ptr %call7.i, null
  br i1 %tobool68.not, label %if.then65.err_master_crit_edge, label %if.end70

if.then65.err_master_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master

if.end70:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %parent72 = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 1
  %24 = ptrtoint ptr %parent72 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i.i.i, ptr %parent72, align 8
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @tsi148_probe.__key.27, i16 noundef signext 3) #9
  %25 = ptrtoint ptr %flush_image to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %flush_image, align 8
  %locked = getelementptr inbounds %struct.vme_master_resource, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %locked to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %locked, align 4
  %28 = load ptr, ptr %flush_image, align 8
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %number, align 4
  %30 = load ptr, ptr %flush_image, align 8
  %bus_resource = getelementptr inbounds %struct.vme_master_resource, ptr %30, i32 0, i32 8
  %31 = call ptr @memset(ptr %bus_resource, i32 0, i32 32)
  %32 = load ptr, ptr %flush_image, align 8
  %kern_base = getelementptr inbounds %struct.vme_master_resource, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %kern_base to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %kern_base, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end70, %if.end63.if.end82_crit_edge
  %master_num.0 = phi i32 [ 7, %if.end70 ], [ 8, %if.end63.if.end82_crit_edge ]
  %master_resources = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 2, i32 1
  br label %for.body

for.cond98.preheader:                             ; preds = %list_add_tail.exit
  %slave_resources = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 3
  %prev.i441 = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 3, i32 1
  br label %for.body100

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end82
  %i.0490 = phi i32 [ 0, %if.end82 ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i436 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 112) #13
  %tobool85.not = icmp eq ptr %call7.i436, null
  br i1 %tobool85.not, label %for.body.err_master_crit_edge, label %if.end87

for.body.err_master_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master

if.end87:                                         ; preds = %for.body
  %parent88 = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 1
  %35 = ptrtoint ptr %parent88 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call1.i.i.i, ptr %parent88, align 8
  %lock90 = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock90, ptr noundef nonnull @.str.30, ptr noundef nonnull @tsi148_probe.__key.29, i16 noundef signext 3) #9
  %locked94 = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 3
  %36 = ptrtoint ptr %locked94 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %locked94, align 8
  %number95 = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 4
  %37 = ptrtoint ptr %number95 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %i.0490, ptr %number95, align 4
  %address_attr = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 5
  %38 = ptrtoint ptr %address_attr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 511, ptr %address_attr, align 8
  %cycle_attr = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 6
  %39 = ptrtoint ptr %cycle_attr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 63295, ptr %cycle_attr, align 4
  %width_attr = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 7
  %40 = ptrtoint ptr %width_attr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %width_attr, align 8
  %bus_resource96 = getelementptr inbounds %struct.vme_master_resource, ptr %call7.i436, i32 0, i32 8
  %41 = call ptr @memset(ptr %bus_resource96, i32 0, i32 36)
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 8
  %call.i.i440 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i436, ptr noundef %43, ptr noundef %master_resources) #9
  br i1 %call.i.i440, label %if.end.i.i, label %if.end87.list_add_tail.exit_crit_edge

if.end87.list_add_tail.exit_crit_edge:            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i436, ptr %prev.i, align 8
  %45 = ptrtoint ptr %call7.i436 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %master_resources, ptr %call7.i436, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i436, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i436, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end87.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0490, 1
  %exitcond.not = icmp eq i32 %inc, %master_num.0
  br i1 %exitcond.not, label %for.cond98.preheader, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond117.preheader:                            ; preds = %list_add_tail.exit445
  %dma_resources = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 4
  %prev.i448 = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 4, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i438 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 132) #13
  %tobool121.not = icmp eq ptr %call7.i438, null
  br i1 %tobool121.not, label %for.cond117.preheader.err_dma_crit_edge, label %if.end123

for.cond117.preheader.err_dma_crit_edge:          ; preds = %for.cond117.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma

for.body100:                                      ; preds = %list_add_tail.exit445.for.body100_crit_edge, %for.cond98.preheader
  %i.1491 = phi i32 [ 0, %for.cond98.preheader ], [ %inc115, %list_add_tail.exit445.for.body100_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i437 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 120) #13
  %tobool102.not = icmp eq ptr %call7.i437, null
  br i1 %tobool102.not, label %for.body100.err_slave_crit_edge, label %if.end104

for.body100.err_slave_crit_edge:                  ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_slave

if.end104:                                        ; preds = %for.body100
  %parent105 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i437, i32 0, i32 1
  %50 = ptrtoint ptr %parent105 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call1.i.i.i, ptr %parent105, align 8
  %mtx = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i437, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx, ptr noundef nonnull @.str.32, ptr noundef nonnull @tsi148_probe.__key.31) #9
  %locked109 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i437, i32 0, i32 3
  %51 = ptrtoint ptr %locked109 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %locked109, align 8
  %number110 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i437, i32 0, i32 4
  %52 = ptrtoint ptr %number110 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %i.1491, ptr %number110, align 4
  %address_attr111 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i437, i32 0, i32 5
  %53 = ptrtoint ptr %address_attr111 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 15, ptr %address_attr111, align 8
  %cycle_attr112 = getelementptr inbounds %struct.vme_slave_resource, ptr %call7.i437, i32 0, i32 6
  %54 = ptrtoint ptr %cycle_attr112 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 63295, ptr %cycle_attr112, align 4
  %55 = ptrtoint ptr %prev.i441 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i441, align 32
  %call.i.i442 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i437, ptr noundef %56, ptr noundef %slave_resources) #9
  br i1 %call.i.i442, label %if.end.i.i444, label %if.end104.list_add_tail.exit445_crit_edge

if.end104.list_add_tail.exit445_crit_edge:        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit445

if.end.i.i444:                                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %prev.i441 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i437, ptr %prev.i441, align 32
  %58 = ptrtoint ptr %call7.i437 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %slave_resources, ptr %call7.i437, align 8
  %prev3.i.i443 = getelementptr inbounds %struct.list_head, ptr %call7.i437, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i443 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i443, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i437, ptr %56, align 4
  br label %list_add_tail.exit445

list_add_tail.exit445:                            ; preds = %if.end.i.i444, %if.end104.list_add_tail.exit445_crit_edge
  %inc115 = add nuw nsw i32 %i.1491, 1
  %exitcond516.not = icmp eq i32 %inc115, 8
  br i1 %exitcond516.not, label %for.cond117.preheader, label %list_add_tail.exit445.for.body100_crit_edge

list_add_tail.exit445.for.body100_crit_edge:      ; preds = %list_add_tail.exit445
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body100

if.end123:                                        ; preds = %for.cond117.preheader
  %parent124 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 1
  %61 = ptrtoint ptr %parent124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call1.i.i.i, ptr %parent124, align 8
  %mtx126 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx126, ptr noundef nonnull @.str.34, ptr noundef nonnull @tsi148_probe.__key.33) #9
  %locked129 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 3
  %62 = ptrtoint ptr %locked129 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %locked129, align 8
  %number130 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 4
  %63 = ptrtoint ptr %number130 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %number130, align 4
  %route_attr = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 7
  %64 = ptrtoint ptr %route_attr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 63, ptr %route_attr, align 8
  %pending = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 5
  %65 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %pending, ptr %pending, align 8
  %prev.i446 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %prev.i446 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %pending, ptr %prev.i446, align 4
  %running = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 6
  %67 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %running, ptr %running, align 8
  %prev.i447 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438, i32 0, i32 6, i32 1
  %68 = ptrtoint ptr %prev.i447 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %running, ptr %prev.i447, align 4
  %69 = ptrtoint ptr %prev.i448 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i448, align 8
  %call.i.i449 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i438, ptr noundef %70, ptr noundef %dma_resources) #9
  br i1 %call.i.i449, label %if.end.i.i451, label %if.end123.list_add_tail.exit452_crit_edge

if.end123.list_add_tail.exit452_crit_edge:        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit452

if.end.i.i451:                                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %prev.i448 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i438, ptr %prev.i448, align 8
  %72 = ptrtoint ptr %call7.i438 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %dma_resources, ptr %call7.i438, align 8
  %prev3.i.i450 = getelementptr inbounds %struct.list_head, ptr %call7.i438, i32 0, i32 1
  %73 = ptrtoint ptr %prev3.i.i450 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i450, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %call7.i438, ptr %70, align 4
  br label %list_add_tail.exit452

list_add_tail.exit452:                            ; preds = %if.end.i.i451, %if.end123.list_add_tail.exit452_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i438.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3264, i32 noundef 132) #13
  %tobool121.not.1 = icmp eq ptr %call7.i438.1, null
  br i1 %tobool121.not.1, label %list_add_tail.exit452.err_dma_crit_edge, label %if.end123.1

list_add_tail.exit452.err_dma_crit_edge:          ; preds = %list_add_tail.exit452
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma

if.end123.1:                                      ; preds = %list_add_tail.exit452
  %parent124.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 1
  %76 = ptrtoint ptr %parent124.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call1.i.i.i, ptr %parent124.1, align 8
  %mtx126.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx126.1, ptr noundef nonnull @.str.34, ptr noundef nonnull @tsi148_probe.__key.33) #9
  %locked129.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 3
  %77 = ptrtoint ptr %locked129.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %locked129.1, align 8
  %number130.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 4
  %78 = ptrtoint ptr %number130.1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %number130.1, align 4
  %route_attr.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 7
  %79 = ptrtoint ptr %route_attr.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 63, ptr %route_attr.1, align 8
  %pending.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 5
  %80 = ptrtoint ptr %pending.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %pending.1, ptr %pending.1, align 8
  %prev.i446.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 5, i32 1
  %81 = ptrtoint ptr %prev.i446.1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %pending.1, ptr %prev.i446.1, align 4
  %running.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 6
  %82 = ptrtoint ptr %running.1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %running.1, ptr %running.1, align 8
  %prev.i447.1 = getelementptr inbounds %struct.vme_dma_resource, ptr %call7.i438.1, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %prev.i447.1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %running.1, ptr %prev.i447.1, align 4
  %84 = ptrtoint ptr %prev.i448 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i448, align 8
  %call.i.i449.1 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i438.1, ptr noundef %85, ptr noundef %dma_resources) #9
  br i1 %call.i.i449.1, label %if.end.i.i451.1, label %if.end123.1.list_add_tail.exit452.1_crit_edge

if.end123.1.list_add_tail.exit452.1_crit_edge:    ; preds = %if.end123.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit452.1

if.end.i.i451.1:                                  ; preds = %if.end123.1
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %prev.i448 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i438.1, ptr %prev.i448, align 8
  %87 = ptrtoint ptr %call7.i438.1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %dma_resources, ptr %call7.i438.1, align 8
  %prev3.i.i450.1 = getelementptr inbounds %struct.list_head, ptr %call7.i438.1, i32 0, i32 1
  %88 = ptrtoint ptr %prev3.i.i450.1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev3.i.i450.1, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call7.i438.1, ptr %85, align 4
  br label %list_add_tail.exit452.1

list_add_tail.exit452.1:                          ; preds = %if.end.i.i451.1, %if.end123.1.list_add_tail.exit452.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i439 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3264, i32 noundef 116) #13
  %tobool136.not = icmp eq ptr %call7.i439, null
  br i1 %tobool136.not, label %list_add_tail.exit452.1.err_lm_crit_edge, label %if.end138

list_add_tail.exit452.1.err_lm_crit_edge:         ; preds = %list_add_tail.exit452.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_lm

if.end138:                                        ; preds = %list_add_tail.exit452.1
  %parent139 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i439, i32 0, i32 1
  %91 = ptrtoint ptr %parent139 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call1.i.i.i, ptr %parent139, align 8
  %mtx141 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i439, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mtx141, ptr noundef nonnull @.str.36, ptr noundef nonnull @tsi148_probe.__key.35) #9
  %locked144 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i439, i32 0, i32 3
  %92 = ptrtoint ptr %locked144 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %locked144, align 8
  %number145 = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i439, i32 0, i32 4
  %93 = ptrtoint ptr %number145 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %number145, align 4
  %monitors = getelementptr inbounds %struct.vme_lm_resource, ptr %call7.i439, i32 0, i32 5
  %94 = ptrtoint ptr %monitors to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 4, ptr %monitors, align 8
  %lm_resources = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 5
  %prev.i453 = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %prev.i453 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i453, align 16
  %call.i.i454 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i439, ptr noundef %96, ptr noundef %lm_resources) #9
  br i1 %call.i.i454, label %if.end.i.i456, label %if.end138.list_add_tail.exit457_crit_edge

if.end138.list_add_tail.exit457_crit_edge:        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit457

if.end.i.i456:                                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %prev.i453 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i439, ptr %prev.i453, align 16
  %98 = ptrtoint ptr %call7.i439 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %lm_resources, ptr %call7.i439, align 8
  %prev3.i.i455 = getelementptr inbounds %struct.list_head, ptr %call7.i439, i32 0, i32 1
  %99 = ptrtoint ptr %prev3.i.i455 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i455, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %call7.i439, ptr %96, align 4
  br label %list_add_tail.exit457

list_add_tail.exit457:                            ; preds = %if.end.i.i456, %if.end138.list_add_tail.exit457_crit_edge
  %slave_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 13
  %101 = ptrtoint ptr %slave_get to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @tsi148_slave_get, ptr %slave_get, align 4
  %slave_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 14
  %102 = ptrtoint ptr %slave_set to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @tsi148_slave_set, ptr %slave_set, align 16
  %master_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 15
  %103 = ptrtoint ptr %master_get to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @tsi148_master_get, ptr %master_get, align 4
  %master_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 16
  %104 = ptrtoint ptr %master_set to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @tsi148_master_set, ptr %master_set, align 8
  %master_read = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 17
  %105 = ptrtoint ptr %master_read to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @tsi148_master_read, ptr %master_read, align 4
  %master_write = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 18
  %106 = ptrtoint ptr %master_write to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @tsi148_master_write, ptr %master_write, align 32
  %master_rmw = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 19
  %107 = ptrtoint ptr %master_rmw to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @tsi148_master_rmw, ptr %master_rmw, align 4
  %dma_list_add = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 20
  %108 = ptrtoint ptr %dma_list_add to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @tsi148_dma_list_add, ptr %dma_list_add, align 8
  %dma_list_exec = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 21
  %109 = ptrtoint ptr %dma_list_exec to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @tsi148_dma_list_exec, ptr %dma_list_exec, align 4
  %dma_list_empty = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 22
  %110 = ptrtoint ptr %dma_list_empty to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @tsi148_dma_list_empty, ptr %dma_list_empty, align 16
  %irq_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 23
  %111 = ptrtoint ptr %irq_set to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @tsi148_irq_set, ptr %irq_set, align 4
  %irq_generate = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 24
  %112 = ptrtoint ptr %irq_generate to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @tsi148_irq_generate, ptr %irq_generate, align 8
  %lm_set = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 25
  %113 = ptrtoint ptr %lm_set to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @tsi148_lm_set, ptr %lm_set, align 4
  %lm_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 26
  %114 = ptrtoint ptr %lm_get to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @tsi148_lm_get, ptr %lm_get, align 256
  %lm_attach = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 27
  %115 = ptrtoint ptr %lm_attach to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @tsi148_lm_attach, ptr %lm_attach, align 4
  %lm_detach = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 28
  %116 = ptrtoint ptr %lm_detach to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @tsi148_lm_detach, ptr %lm_detach, align 8
  %slot_get = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 29
  %117 = ptrtoint ptr %slot_get to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @tsi148_slot_get, ptr %slot_get, align 4
  %alloc_consistent = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 30
  %118 = ptrtoint ptr %alloc_consistent to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @tsi148_alloc_consistent, ptr %alloc_consistent, align 16
  %free_consistent = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 31
  %119 = ptrtoint ptr %free_consistent to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @tsi148_free_consistent, ptr %free_consistent, align 4
  %120 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call7.i.i, align 8
  %add.ptr148 = getelementptr i8, ptr %121, i32 572
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  %and154 = and i32 %122, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  %cond = select i1 %tobool155.not, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond) #14
  %123 = load i32, ptr @geoid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool156.not = icmp eq i32 %123, 0
  br i1 %tobool156.not, label %do.end160, label %do.end165

do.end160:                                        ; preds = %list_add_tail.exit457
  call void @__sanitizer_cov_trace_pc() #11
  %and162 = and i32 %122, 31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.44, i32 noundef %and162) #14
  br label %do.end170

do.end165:                                        ; preds = %list_add_tail.exit457
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.47, i32 noundef %123) #14
  br label %do.end170

do.end170:                                        ; preds = %do.end165, %do.end160
  %124 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool172.not = icmp eq i8 %124, 0
  %cond173 = select i1 %tobool172.not, ptr @.str.53, ptr @.str.52
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev54, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond173) #14
  %call174 = tail call fastcc i32 @tsi148_crcsr_init(ptr noundef nonnull %call1.i.i.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end181, label %do.end179

do.end179:                                        ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.55) #14
  br label %err_lm

if.end181:                                        ; preds = %do.end170
  %call182 = tail call i32 @vme_register_bridge(ptr noundef nonnull %call1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183.not = icmp eq i32 %call182, 0
  br i1 %cmp183.not, label %if.end189, label %do.end187

do.end187:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.58) #14
  tail call fastcc void @tsi148_crcsr_exit(ptr noundef nonnull %call1.i.i.i, ptr noundef %pdev)
  br label %err_lm

if.end189:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %125 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %126 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call7.i.i, align 8
  %add.ptr192 = getelementptr i8, ptr %127, i32 572
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %and195 = and i32 %128, -49153
  %or = or i32 %and195, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  tail call void @arm_heavy_mb() #9
  %129 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call7.i.i, align 8
  %add.ptr200 = getelementptr i8, ptr %130, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr200, i32 %or) #9, !srcloc !349
  br label %cleanup

err_lm:                                           ; preds = %do.end187, %do.end179, %list_add_tail.exit452.1.err_lm_crit_edge
  %retval1.0 = phi i32 [ %call174, %do.end179 ], [ %call182, %do.end187 ], [ -12, %list_add_tail.exit452.1.err_lm_crit_edge ]
  %lm_resources201 = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 5
  %131 = ptrtoint ptr %lm_resources201 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %lm_resources201, align 4
  %cmp.i.not494 = icmp eq ptr %132, %lm_resources201
  br i1 %cmp.i.not494, label %err_lm.err_dma_crit_edge, label %err_lm.for.body207_crit_edge

err_lm.for.body207_crit_edge:                     ; preds = %err_lm
  br label %for.body207

err_lm.err_dma_crit_edge:                         ; preds = %err_lm
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma

for.body207:                                      ; preds = %list_del.exit.for.body207_crit_edge, %err_lm.for.body207_crit_edge
  %pos.0495 = phi ptr [ %n.0497, %list_del.exit.for.body207_crit_edge ], [ %132, %err_lm.for.body207_crit_edge ]
  %133 = ptrtoint ptr %pos.0495 to i32
  call void @__asan_load4_noabort(i32 %133)
  %n.0497 = load ptr, ptr %pos.0495, align 4
  %call.i.i458 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0495) #9
  br i1 %call.i.i458, label %if.end.i.i459, label %for.body207.list_del.exit_crit_edge

for.body207.list_del.exit_crit_edge:              ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i459:                                    ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0495, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i, align 4
  %136 = ptrtoint ptr %pos.0495 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pos.0495, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i459, %for.body207.list_del.exit_crit_edge
  %140 = ptrtoint ptr %pos.0495 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0495, align 4
  %prev.i460 = getelementptr inbounds %struct.list_head, ptr %pos.0495, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i460 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i460, align 4
  tail call void @kfree(ptr noundef %pos.0495) #9
  %cmp.i.not = icmp eq ptr %n.0497, %lm_resources201
  br i1 %cmp.i.not, label %list_del.exit.err_dma_crit_edge, label %list_del.exit.for.body207_crit_edge

list_del.exit.for.body207_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body207

list_del.exit.err_dma_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dma

err_dma:                                          ; preds = %list_del.exit.err_dma_crit_edge, %err_lm.err_dma_crit_edge, %list_add_tail.exit452.err_dma_crit_edge, %for.cond117.preheader.err_dma_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err_lm.err_dma_crit_edge ], [ -12, %list_add_tail.exit452.err_dma_crit_edge ], [ -12, %for.cond117.preheader.err_dma_crit_edge ], [ %retval1.0, %list_del.exit.err_dma_crit_edge ]
  %142 = ptrtoint ptr %dma_resources to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dma_resources, align 4
  %cmp.i461.not499 = icmp eq ptr %143, %dma_resources
  br i1 %cmp.i461.not499, label %err_dma.err_slave_crit_edge, label %err_dma.for.body221_crit_edge

err_dma.for.body221_crit_edge:                    ; preds = %err_dma
  br label %for.body221

err_dma.err_slave_crit_edge:                      ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_slave

for.body221:                                      ; preds = %list_del.exit468.for.body221_crit_edge, %err_dma.for.body221_crit_edge
  %pos.1500 = phi ptr [ %n.1502, %list_del.exit468.for.body221_crit_edge ], [ %143, %err_dma.for.body221_crit_edge ]
  %144 = ptrtoint ptr %pos.1500 to i32
  call void @__asan_load4_noabort(i32 %144)
  %n.1502 = load ptr, ptr %pos.1500, align 4
  %call.i.i463 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.1500) #9
  br i1 %call.i.i463, label %if.end.i.i466, label %for.body221.list_del.exit468_crit_edge

for.body221.list_del.exit468_crit_edge:           ; preds = %for.body221
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit468

if.end.i.i466:                                    ; preds = %for.body221
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i464 = getelementptr inbounds %struct.list_head, ptr %pos.1500, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i464 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i464, align 4
  %147 = ptrtoint ptr %pos.1500 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pos.1500, align 4
  %prev1.i.i.i465 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i465 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev1.i.i.i465, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %148, ptr %146, align 4
  br label %list_del.exit468

list_del.exit468:                                 ; preds = %if.end.i.i466, %for.body221.list_del.exit468_crit_edge
  %151 = ptrtoint ptr %pos.1500 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.1500, align 4
  %prev.i467 = getelementptr inbounds %struct.list_head, ptr %pos.1500, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i467 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i467, align 4
  tail call void @kfree(ptr noundef %pos.1500) #9
  %cmp.i461.not = icmp eq ptr %n.1502, %dma_resources
  br i1 %cmp.i461.not, label %list_del.exit468.err_slave_crit_edge, label %list_del.exit468.for.body221_crit_edge

list_del.exit468.for.body221_crit_edge:           ; preds = %list_del.exit468
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body221

list_del.exit468.err_slave_crit_edge:             ; preds = %list_del.exit468
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_slave

err_slave:                                        ; preds = %list_del.exit468.err_slave_crit_edge, %err_dma.err_slave_crit_edge, %for.body100.err_slave_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %err_dma.err_slave_crit_edge ], [ %retval1.1, %list_del.exit468.err_slave_crit_edge ], [ -12, %for.body100.err_slave_crit_edge ]
  %153 = ptrtoint ptr %slave_resources to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %slave_resources, align 4
  %cmp.i469.not504 = icmp eq ptr %154, %slave_resources
  br i1 %cmp.i469.not504, label %err_slave.err_master_crit_edge, label %err_slave.for.body236_crit_edge

err_slave.for.body236_crit_edge:                  ; preds = %err_slave
  br label %for.body236

err_slave.err_master_crit_edge:                   ; preds = %err_slave
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master

for.body236:                                      ; preds = %list_del.exit476.for.body236_crit_edge, %err_slave.for.body236_crit_edge
  %pos.2505 = phi ptr [ %n.2507, %list_del.exit476.for.body236_crit_edge ], [ %154, %err_slave.for.body236_crit_edge ]
  %155 = ptrtoint ptr %pos.2505 to i32
  call void @__asan_load4_noabort(i32 %155)
  %n.2507 = load ptr, ptr %pos.2505, align 4
  %call.i.i471 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.2505) #9
  br i1 %call.i.i471, label %if.end.i.i474, label %for.body236.list_del.exit476_crit_edge

for.body236.list_del.exit476_crit_edge:           ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit476

if.end.i.i474:                                    ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i472 = getelementptr inbounds %struct.list_head, ptr %pos.2505, i32 0, i32 1
  %156 = ptrtoint ptr %prev.i.i472 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prev.i.i472, align 4
  %158 = ptrtoint ptr %pos.2505 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pos.2505, align 4
  %prev1.i.i.i473 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %prev1.i.i.i473 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %157, ptr %prev1.i.i.i473, align 4
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %161)
  store volatile ptr %159, ptr %157, align 4
  br label %list_del.exit476

list_del.exit476:                                 ; preds = %if.end.i.i474, %for.body236.list_del.exit476_crit_edge
  %162 = ptrtoint ptr %pos.2505 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.2505, align 4
  %prev.i475 = getelementptr inbounds %struct.list_head, ptr %pos.2505, i32 0, i32 1
  %163 = ptrtoint ptr %prev.i475 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i475, align 4
  tail call void @kfree(ptr noundef %pos.2505) #9
  %cmp.i469.not = icmp eq ptr %n.2507, %slave_resources
  br i1 %cmp.i469.not, label %list_del.exit476.err_master_crit_edge, label %list_del.exit476.for.body236_crit_edge

list_del.exit476.for.body236_crit_edge:           ; preds = %list_del.exit476
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body236

list_del.exit476.err_master_crit_edge:            ; preds = %list_del.exit476
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_master

err_master:                                       ; preds = %list_del.exit476.err_master_crit_edge, %err_slave.err_master_crit_edge, %for.body.err_master_crit_edge, %if.then65.err_master_crit_edge
  %retval1.3 = phi i32 [ -12, %if.then65.err_master_crit_edge ], [ %retval1.2, %err_slave.err_master_crit_edge ], [ %retval1.2, %list_del.exit476.err_master_crit_edge ], [ -12, %for.body.err_master_crit_edge ]
  %master_resources243 = getelementptr inbounds %struct.vme_bridge, ptr %call1.i.i.i, i32 0, i32 2
  %164 = ptrtoint ptr %master_resources243 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %master_resources243, align 4
  %cmp.i477.not509 = icmp eq ptr %165, %master_resources243
  br i1 %cmp.i477.not509, label %err_master.for.end257_crit_edge, label %err_master.for.body251_crit_edge

err_master.for.body251_crit_edge:                 ; preds = %err_master
  br label %for.body251

err_master.for.end257_crit_edge:                  ; preds = %err_master
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end257

for.body251:                                      ; preds = %list_del.exit484.for.body251_crit_edge, %err_master.for.body251_crit_edge
  %pos.3510 = phi ptr [ %n.3512, %list_del.exit484.for.body251_crit_edge ], [ %165, %err_master.for.body251_crit_edge ]
  %166 = ptrtoint ptr %pos.3510 to i32
  call void @__asan_load4_noabort(i32 %166)
  %n.3512 = load ptr, ptr %pos.3510, align 4
  %call.i.i479 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.3510) #9
  br i1 %call.i.i479, label %if.end.i.i482, label %for.body251.list_del.exit484_crit_edge

for.body251.list_del.exit484_crit_edge:           ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit484

if.end.i.i482:                                    ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i480 = getelementptr inbounds %struct.list_head, ptr %pos.3510, i32 0, i32 1
  %167 = ptrtoint ptr %prev.i.i480 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i.i480, align 4
  %169 = ptrtoint ptr %pos.3510 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pos.3510, align 4
  %prev1.i.i.i481 = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %prev1.i.i.i481 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev1.i.i.i481, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %170, ptr %168, align 4
  br label %list_del.exit484

list_del.exit484:                                 ; preds = %if.end.i.i482, %for.body251.list_del.exit484_crit_edge
  %173 = ptrtoint ptr %pos.3510 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.3510, align 4
  %prev.i483 = getelementptr inbounds %struct.list_head, ptr %pos.3510, i32 0, i32 1
  %174 = ptrtoint ptr %prev.i483 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i483, align 4
  tail call void @kfree(ptr noundef %pos.3510) #9
  %cmp.i477.not = icmp eq ptr %n.3512, %master_resources243
  br i1 %cmp.i477.not, label %list_del.exit484.for.end257_crit_edge, label %list_del.exit484.for.body251_crit_edge

list_del.exit484.for.body251_crit_edge:           ; preds = %list_del.exit484
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body251

list_del.exit484.for.end257_crit_edge:            ; preds = %list_del.exit484
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end257

for.end257:                                       ; preds = %list_del.exit484.for.end257_crit_edge, %err_master.for.end257_crit_edge
  %175 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %driver_priv, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %add.ptr.i = getelementptr i8, ptr %178, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %179 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %176, align 4
  %add.ptr5.i = getelementptr i8, ptr %180, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %181 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %176, align 4
  %add.ptr10.i = getelementptr i8, ptr %182, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -1) #9, !srcloc !349
  %183 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %184, ptr noundef %call1.i.i.i) #9
  br label %err_test

err_test:                                         ; preds = %for.end257, %do.end61, %do.end33
  %retval1.4 = phi i32 [ -5, %do.end33 ], [ %call.i.i, %do.end61 ], [ %retval1.3, %for.end257 ]
  %185 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %call7.i.i, align 8
  tail call void @iounmap(ptr noundef %186) #9
  br label %err_remap

err_remap:                                        ; preds = %err_test, %do.end25
  %retval1.5 = phi i32 [ %retval1.4, %err_test ], [ -5, %do.end25 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_resource

err_resource:                                     ; preds = %err_remap, %do.end16
  %retval1.6 = phi i32 [ %call11, %do.end16 ], [ %retval1.5, %err_remap ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %err_enable

err_enable:                                       ; preds = %err_resource, %do.end
  %retval1.7 = phi i32 [ %call7, %do.end ], [ %retval1.6, %err_resource ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err_driver

err_driver:                                       ; preds = %err_enable, %if.end.err_driver_crit_edge
  %retval1.8 = phi i32 [ %retval1.7, %err_enable ], [ -12, %if.end.err_driver_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_driver, %if.end189, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end189 ], [ %retval1.8, %err_driver ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi148_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tsi148_remove.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tsi148_remove, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tsi148_remove.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.173) #9
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %if.then, %entry
  %i.0172 = phi i32 [ %inc, %do.body4.do.body4_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr [8 x i32], ptr @TSI148_LCSR_IT, i32 0, i32 %i.0172
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !360
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %arrayidx12 = getelementptr [8 x i32], ptr @TSI148_LCSR_OT, i32 0, i32 %i.0172
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 28
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #9, !srcloc !349
  %inc = add nuw nsw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.body15, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

do.body15:                                        ; preds = %do.body4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr29 = getelementptr i8, ptr %17, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 -1) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 -1) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 117442304) #9, !srcloc !349
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 1088
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %and = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %do.body15.do.body52_crit_edge, label %do.body46

do.body15.do.body52_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

do.body46:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr50 = getelementptr i8, ptr %26, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 32768) #9, !srcloc !349
  br label %do.body52

do.body52:                                        ; preds = %do.body46, %do.body15.do.body52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr56 = getelementptr i8, ptr %28, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr61 = getelementptr i8, ptr %30, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #9, !srcloc !349
  %31 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %add.ptr5.i = getelementptr i8, ptr %36, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 4
  %add.ptr10.i = getelementptr i8, ptr %38, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 -1) #9, !srcloc !349
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %40, ptr noundef %1) #9
  tail call void @vme_unregister_bridge(ptr noundef %1) #9
  %41 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_priv, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %add.ptr.i154 = getelementptr i8, ptr %44, i32 1056
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  tail call void @arm_heavy_mb() #9
  %and.i = and i32 %45, -129
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %42, align 4
  %add.ptr2.i = getelementptr i8, ptr %47, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %and.i) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %42, align 4
  %add.ptr7.i = getelementptr i8, ptr %49, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %42, align 4
  %add.ptr12.i = getelementptr i8, ptr %51, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #9, !srcloc !349
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %crcsr_kernel.i = getelementptr inbounds %struct.tsi148_driver, ptr %42, i32 0, i32 5
  %52 = ptrtoint ptr %crcsr_kernel.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %crcsr_kernel.i, align 4
  %crcsr_bus.i = getelementptr inbounds %struct.tsi148_driver, ptr %42, i32 0, i32 6
  %54 = ptrtoint ptr %crcsr_bus.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %crcsr_bus.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 520192, ptr noundef %53, i32 noundef %55, i32 noundef 0) #9
  %dma_resources = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %dma_resources to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_resources, align 4
  %cmp.i.not174 = icmp eq ptr %57, %dma_resources
  br i1 %cmp.i.not174, label %do.body52.for.end74_crit_edge, label %do.body52.for.body69_crit_edge

do.body52.for.body69_crit_edge:                   ; preds = %do.body52
  br label %for.body69

do.body52.for.end74_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end74

for.body69:                                       ; preds = %list_del.exit.for.body69_crit_edge, %do.body52.for.body69_crit_edge
  %pos.0175 = phi ptr [ %tmplist.0177, %list_del.exit.for.body69_crit_edge ], [ %57, %do.body52.for.body69_crit_edge ]
  %58 = ptrtoint ptr %pos.0175 to i32
  call void @__asan_load4_noabort(i32 %58)
  %tmplist.0177 = load ptr, ptr %pos.0175, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0175) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body69.list_del.exit_crit_edge

for.body69.list_del.exit_crit_edge:               ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0175, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %pos.0175 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pos.0175, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body69.list_del.exit_crit_edge
  %65 = ptrtoint ptr %pos.0175 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0175, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0175, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.0175) #9
  %cmp.i.not = icmp eq ptr %tmplist.0177, %dma_resources
  br i1 %cmp.i.not, label %list_del.exit.for.end74_crit_edge, label %list_del.exit.for.body69_crit_edge

list_del.exit.for.body69_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body69

list_del.exit.for.end74_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end74

for.end74:                                        ; preds = %list_del.exit.for.end74_crit_edge, %do.body52.for.end74_crit_edge
  %slave_resources = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 3
  %67 = ptrtoint ptr %slave_resources to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %slave_resources, align 4
  %cmp.i155.not179 = icmp eq ptr %68, %slave_resources
  br i1 %cmp.i155.not179, label %for.end74.for.end89_crit_edge, label %for.end74.for.body83_crit_edge

for.end74.for.body83_crit_edge:                   ; preds = %for.end74
  br label %for.body83

for.end74.for.end89_crit_edge:                    ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

for.body83:                                       ; preds = %list_del.exit162.for.body83_crit_edge, %for.end74.for.body83_crit_edge
  %pos.1180 = phi ptr [ %tmplist.1182, %list_del.exit162.for.body83_crit_edge ], [ %68, %for.end74.for.body83_crit_edge ]
  %69 = ptrtoint ptr %pos.1180 to i32
  call void @__asan_load4_noabort(i32 %69)
  %tmplist.1182 = load ptr, ptr %pos.1180, align 4
  %call.i.i157 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.1180) #9
  br i1 %call.i.i157, label %if.end.i.i160, label %for.body83.list_del.exit162_crit_edge

for.body83.list_del.exit162_crit_edge:            ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit162

if.end.i.i160:                                    ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i158 = getelementptr inbounds %struct.list_head, ptr %pos.1180, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i158 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i158, align 4
  %72 = ptrtoint ptr %pos.1180 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pos.1180, align 4
  %prev1.i.i.i159 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i159, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit162

list_del.exit162:                                 ; preds = %if.end.i.i160, %for.body83.list_del.exit162_crit_edge
  %76 = ptrtoint ptr %pos.1180 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.1180, align 4
  %prev.i161 = getelementptr inbounds %struct.list_head, ptr %pos.1180, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i161 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i161, align 4
  tail call void @kfree(ptr noundef %pos.1180) #9
  %cmp.i155.not = icmp eq ptr %tmplist.1182, %slave_resources
  br i1 %cmp.i155.not, label %list_del.exit162.for.end89_crit_edge, label %list_del.exit162.for.body83_crit_edge

list_del.exit162.for.body83_crit_edge:            ; preds = %list_del.exit162
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body83

list_del.exit162.for.end89_crit_edge:             ; preds = %list_del.exit162
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

for.end89:                                        ; preds = %list_del.exit162.for.end89_crit_edge, %for.end74.for.end89_crit_edge
  %master_resources = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 2
  %78 = ptrtoint ptr %master_resources to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %master_resources, align 4
  %cmp.i163.not184 = icmp eq ptr %79, %master_resources
  br i1 %cmp.i163.not184, label %for.end89.for.end104_crit_edge, label %for.end89.for.body98_crit_edge

for.end89.for.body98_crit_edge:                   ; preds = %for.end89
  br label %for.body98

for.end89.for.end104_crit_edge:                   ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end104

for.body98:                                       ; preds = %list_del.exit170.for.body98_crit_edge, %for.end89.for.body98_crit_edge
  %pos.2185 = phi ptr [ %tmplist.2187, %list_del.exit170.for.body98_crit_edge ], [ %79, %for.end89.for.body98_crit_edge ]
  %80 = ptrtoint ptr %pos.2185 to i32
  call void @__asan_load4_noabort(i32 %80)
  %tmplist.2187 = load ptr, ptr %pos.2185, align 4
  %call.i.i165 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.2185) #9
  br i1 %call.i.i165, label %if.end.i.i168, label %for.body98.list_del.exit170_crit_edge

for.body98.list_del.exit170_crit_edge:            ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit170

if.end.i.i168:                                    ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i166 = getelementptr inbounds %struct.list_head, ptr %pos.2185, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i.i166, align 4
  %83 = ptrtoint ptr %pos.2185 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pos.2185, align 4
  %prev1.i.i.i167 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev1.i.i.i167, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %84, ptr %82, align 4
  br label %list_del.exit170

list_del.exit170:                                 ; preds = %if.end.i.i168, %for.body98.list_del.exit170_crit_edge
  %87 = ptrtoint ptr %pos.2185 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.2185, align 4
  %prev.i169 = getelementptr inbounds %struct.list_head, ptr %pos.2185, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i169 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i169, align 4
  tail call void @kfree(ptr noundef %pos.2185) #9
  %cmp.i163.not = icmp eq ptr %tmplist.2187, %master_resources
  br i1 %cmp.i163.not, label %list_del.exit170.for.end104_crit_edge, label %list_del.exit170.for.body98_crit_edge

list_del.exit170.for.body98_crit_edge:            ; preds = %list_del.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body98

list_del.exit170.for.end104_crit_edge:            ; preds = %list_del.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end104

for.end104:                                       ; preds = %list_del.exit170.for.end104_crit_edge, %for.end89.for.end104_crit_edge
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %90) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %91 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %driver_priv, align 4
  tail call void @kfree(ptr noundef %92) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vme_init_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_slave_get(ptr nocapture noundef readonly %image, ptr nocapture noundef writeonly %enabled, ptr nocapture noundef %vme_base, ptr nocapture noundef writeonly %size, ptr nocapture noundef writeonly %pci_base, ptr nocapture noundef %aspace, ptr noundef %cycle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr [8 x i32], ptr @TSI148_LCSR_IT, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 %9
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr19 = getelementptr i8, ptr %18, i32 %9
  %add.ptr20 = getelementptr i8, ptr %add.ptr19, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 %9
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !378
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 %9
  %add.ptr34 = getelementptr i8, ptr %add.ptr33, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr40 = getelementptr i8, ptr %27, i32 %9
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %16 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %29 = ptrtoint ptr %vme_base to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.i, ptr %vme_base, align 8
  %conv.i179 = zext i32 %19 to i64
  %shl.i180 = shl nuw i64 %conv.i179, 32
  %conv1.i181 = zext i32 %22 to i64
  %or.i182 = or i64 %shl.i180, %conv1.i181
  %add = add i32 %28, %16
  %30 = ptrtoint ptr %pci_base to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %pci_base, align 4
  %31 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %enabled, align 4
  %32 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %aspace, align 4
  %33 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not = icmp sgt i32 %10, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and44 = lshr i32 %10, 4
  %35 = and i32 %and44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %36 = icmp ult i32 %35, 5
  br i1 %36, label %switch.hole_check, label %if.end.if.end65_crit_edge

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %35 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %37 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %switch.lobit.not = icmp eq i8 %37, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end65_crit_edge, label %switch.lookup

switch.hole_check.if.end65_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tsi148_slave_get, i32 0, i32 %35
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep195 = getelementptr inbounds [5 x i32], ptr @switch.table.tsi148_slave_get.174, i32 0, i32 %35
  %39 = ptrtoint ptr %switch.gep195 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load196 = load i32, ptr %switch.gep195, align 4
  %40 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aspace, align 4
  %or52 = or i32 %41, %switch.load
  store i32 %or52, ptr %aspace, align 4
  br label %if.end65

if.end65:                                         ; preds = %switch.lookup, %switch.hole_check.if.end65_crit_edge, %if.end.if.end65_crit_edge
  %granularity.3 = phi i32 [ 0, %if.end.if.end65_crit_edge ], [ %switch.load196, %switch.lookup ], [ 0, %switch.hole_check.if.end65_crit_edge ]
  %42 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %vme_base, align 8
  %sub = sub i64 %or.i182, %43
  %conv66 = zext i32 %granularity.3 to i64
  %add67 = add i64 %sub, %conv66
  %44 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %add67, ptr %size, align 8
  %and68 = and i32 %10, 28672
  %45 = zext i32 %and68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and68, label %if.end65.if.end85_crit_edge [
    i32 0, label %if.end65.if.end85.sink.split_crit_edge
    i32 4096, label %if.then77
    i32 8192, label %if.then83
  ]

if.end65.if.end85.sink.split_crit_edge:           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.sink.split

if.end65.if.end85_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then77:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.sink.split

if.then83:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %if.then83, %if.then77, %if.end65.if.end85.sink.split_crit_edge
  %.sink194 = phi i32 [ 512, %if.then77 ], [ 1024, %if.then83 ], [ 256, %if.end65.if.end85.sink.split_crit_edge ]
  %46 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cycle, align 4
  %or78 = or i32 %47, %.sink194
  store i32 %or78, ptr %cycle, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.end65.if.end85_crit_edge
  %and86 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end90_crit_edge, label %if.then88

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cycle, align 4
  %or89 = or i32 %49, 2
  store i32 %or89, ptr %cycle, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85.if.end90_crit_edge
  %and91 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end95_crit_edge, label %if.then93

if.end90.if.end95_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cycle, align 4
  %or94 = or i32 %51, 4
  store i32 %or94, ptr %cycle, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end90.if.end95_crit_edge
  %and96 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.if.end100_crit_edge, label %if.then98

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cycle, align 4
  %or99 = or i32 %53, 8
  store i32 %or99, ptr %cycle, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end95.if.end100_crit_edge
  %and101 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end105_crit_edge, label %if.then103

if.end100.if.end105_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cycle, align 4
  %or104 = or i32 %55, 16
  store i32 %or104, ptr %cycle, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end100.if.end105_crit_edge
  %and106 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end110_crit_edge, label %if.then108

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cycle, align 4
  %or109 = or i32 %57, 32
  store i32 %or109, ptr %cycle, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end105.if.end110_crit_edge
  %and111 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end115_crit_edge, label %if.then113

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cycle, align 4
  %or114 = or i32 %59, 4096
  store i32 %or114, ptr %cycle, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end110.if.end115_crit_edge
  %and116 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end120_crit_edge, label %if.then118

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cycle, align 4
  %or119 = or i32 %61, 8192
  store i32 %or119, ptr %cycle, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end115.if.end120_crit_edge
  %and121 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end125_crit_edge, label %if.then123

if.end120.if.end125_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cycle, align 4
  %or124 = or i32 %63, 16384
  store i32 %or124, ptr %cycle, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end120.if.end125_crit_edge
  %and126 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end130_crit_edge, label %if.then128

if.end125.if.end130_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cycle, align 4
  %or129 = or i32 %65, 32768
  store i32 %or129, ptr %cycle, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end125.if.end130_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_slave_set(ptr nocapture noundef readonly %image, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %pci_base, i32 noundef %aspace, i32 noundef %cycle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_slave_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %switch.tableidx = add i32 %aspace, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 8
  br i1 %6, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %parent7 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %parent7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.74) #14
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.tsi148_slave_set, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep244 = getelementptr inbounds [8 x i32], ptr @switch.table.tsi148_slave_set.175, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep244 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load245 = load i32, ptr %switch.gep244, align 4
  %conv.i = trunc i64 %vme_base to i32
  %shr.i = lshr i64 %vme_base, 32
  %conv1.i = trunc i64 %shr.i to i32
  %add = add i64 %size, %vme_base
  %conv = zext i32 %switch.load245 to i64
  %sub = sub i64 %add, %conv
  %conv.i235 = trunc i64 %sub to i32
  %shr.i236 = lshr i64 %sub, 32
  %conv1.i237 = trunc i64 %shr.i236 to i32
  %conv8 = zext i32 %pci_base to i64
  %sub9 = sub i64 %conv8, %vme_base
  %conv.i238 = trunc i64 %sub9 to i32
  %shr.i239 = lshr i64 %sub9, 32
  %conv1.i240 = trunc i64 %shr.i239 to i32
  %sub10 = add nsw i32 %switch.load245, -1
  %and = and i32 %sub10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end13

do.end13:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %parent14 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %parent14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.77) #14
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %and16 = and i32 %sub10, %conv.i235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent22 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %parent22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.80) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %and25 = and i32 %sub10, %conv.i238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %parent31 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %parent31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.83) #14
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr [8 x i32], ptr @TSI148_LCSR_IT, i32 0, i32 %5
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !381
  %and34 = and i32 %22, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr40 = getelementptr i8, ptr %24, i32 %21
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %and34) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr47 = getelementptr i8, ptr %26, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %conv1.i) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr54 = getelementptr i8, ptr %28, i32 %21
  %add.ptr55 = getelementptr i8, ptr %add.ptr54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %conv.i) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr61 = getelementptr i8, ptr %30, i32 %21
  %add.ptr62 = getelementptr i8, ptr %add.ptr61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %conv1.i237) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %add.ptr68 = getelementptr i8, ptr %32, i32 %21
  %add.ptr69 = getelementptr i8, ptr %add.ptr68, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %conv.i235) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %add.ptr75 = getelementptr i8, ptr %34, i32 %21
  %add.ptr76 = getelementptr i8, ptr %add.ptr75, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %conv1.i240) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add.ptr82 = getelementptr i8, ptr %36, i32 %21
  %add.ptr83 = getelementptr i8, ptr %add.ptr82, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %conv.i238) #9, !srcloc !349
  %and84 = and i32 %22, 2147454975
  %and85 = and i32 %cycle, 1792
  %37 = zext i32 %and85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %and85, label %if.end32.sw.epilog92_crit_edge [
    i32 1024, label %sw.bb90
    i32 512, label %sw.bb88
  ]

if.end32.sw.epilog92_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog92

sw.bb88:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %or89 = or i32 %and84, 4096
  br label %sw.epilog92

sw.bb90:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %or91 = or i32 %and84, 8192
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.bb90, %sw.bb88, %if.end32.sw.epilog92_crit_edge
  %temp_ctl.0 = phi i32 [ %or91, %sw.bb90 ], [ %or89, %sw.bb88 ], [ %and84, %if.end32.sw.epilog92_crit_edge ]
  %and93 = and i32 %temp_ctl.0, -4096
  %and94 = shl i32 %cycle, 6
  %and122 = lshr i32 %cycle, 9
  %38 = and i32 %and122, 8
  %and127 = lshr i32 %cycle, 11
  %39 = and i32 %and127, 4
  %and132 = lshr i32 %cycle, 13
  %40 = and i32 %and132, 2
  %and137 = lshr i32 %cycle, 15
  %41 = and i32 %and137, 1
  %42 = and i32 %and94, 3968
  %and119 = or i32 %42, %38
  %or120 = or i32 %and119, %39
  %43 = or i32 %or120, %40
  %44 = or i32 %43, %41
  %45 = or i32 %44, %switch.load
  %46 = or i32 %45, %and93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %add.ptr147 = getelementptr i8, ptr %48, i32 %21
  %add.ptr148 = getelementptr i8, ptr %add.ptr147, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %46) #9, !srcloc !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool149.not = icmp eq i32 %enabled, 0
  %or151 = or i32 %46, -2147483648
  %temp_ctl.10 = select i1 %tobool149.not, i32 %46, i32 %or151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %add.ptr158 = getelementptr i8, ptr %50, i32 %21
  %add.ptr159 = getelementptr i8, ptr %add.ptr158, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %temp_ctl.10) #9, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog92, %do.end30, %do.end21, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ -22, %do.end21 ], [ -22, %do.end30 ], [ 0, %sw.epilog92 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_master_get(ptr noundef %image, ptr nocapture noundef writeonly %enabled, ptr nocapture noundef writeonly %vme_base, ptr nocapture noundef writeonly %size, ptr nocapture noundef %aspace, ptr noundef %cycle, ptr nocapture noundef writeonly %dwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  tail call fastcc void @__tsi148_master_get(ptr noundef %image, ptr noundef %enabled, ptr noundef %vme_base, ptr noundef %size, ptr noundef %aspace, ptr noundef %cycle, ptr noundef %dwidth)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_master_set(ptr noundef %image, i32 noundef %enabled, i64 noundef %vme_base, i64 noundef %size, i32 noundef %aspace, i32 noundef %cycle, i32 noundef %dwidth) #2 align 64 {
entry:
  %region = alloca %struct.pci_bus_region, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %region) #9
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %region, align 4, !annotation !391
  %1 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !391
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_priv, align 4
  %parent2 = getelementptr inbounds %struct.vme_bridge, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent2, align 4
  %and = and i64 %vme_base, 65535
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.85) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp = icmp eq i64 %size, 0
  %cmp.not = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %cmp4.not = icmp eq i32 %enabled, 0
  %or.cond = or i1 %cmp4.not, %cmp.not
  br i1 %or.cond, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.88) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %parent2.i = getelementptr inbounds %struct.vme_bridge, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent2.i, align 4
  %bus_resource.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 8
  %end.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %15 = ptrtoint ptr %bus_resource.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_resource.i, align 4
  br i1 %cmp, label %if.end10.if.end.i_crit_edge, label %land.lhs.true.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end10
  %sub.i = sub i32 %14, %16
  %conv.i = zext i32 %sub.i to i64
  %sub5.i = add i64 %size, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub5.i, i64 %conv.i)
  %cmp6.i = icmp eq i64 %sub5.i, %conv.i
  br i1 %cmp6.i, label %land.lhs.true.i.if.end22_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end10.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp8.not.i = icmp eq i32 %14, %16
  br i1 %cmp8.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then10.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %kern_base.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 9
  %17 = ptrtoint ptr %kern_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kern_base.i, align 4
  tail call void @iounmap(ptr noundef %18) #9
  %19 = ptrtoint ptr %kern_base.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %kern_base.i, align 4
  %name.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %21) #9
  %call.i = tail call i32 @release_resource(ptr noundef %bus_resource.i) #9
  %22 = call ptr @memset(ptr %bus_resource.i, i32 0, i32 32)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i, %if.end.i.if.end15.i_crit_edge
  br i1 %cmp, label %if.end15.i.if.end49_crit_edge, label %if.end19.i

if.end15.i.if.end49_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end19.i:                                       ; preds = %if.end15.i
  %name21.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name21.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.then22.i, label %if.end19.i.if.end31.i_crit_edge

if.end19.i.if.end31.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 2592, i32 noundef 19) #13
  %26 = ptrtoint ptr %name21.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %name21.i, align 4
  %tobool28.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not.i, label %if.then22.i.if.then12_crit_edge, label %if.then22.i.if.end31.i_crit_edge

if.then22.i.if.end31.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then22.i.if.then12_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end31.i:                                       ; preds = %if.then22.i.if.end31.i_crit_edge, %if.end19.i.if.end31.i_crit_edge
  %27 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name21.i, align 4
  %number.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %29 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number.i, align 4
  %call35.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.111, ptr noundef %10, i32 noundef %30) #9
  %31 = ptrtoint ptr %bus_resource.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bus_resource.i, align 4
  %conv38.i = trunc i64 %size to i32
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv38.i, ptr %end.i, align 4
  %flags.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 8, i32 3
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 512, ptr %flags.i, align 4
  %bus.i = getelementptr i8, ptr %12, i32 -128
  %34 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pcibios_min_mem to i32))
  %36 = load i32, ptr @pcibios_min_mem, align 4
  %call44.i = tail call i32 @pci_bus_alloc_resource(ptr noundef %35, ptr noundef %bus_resource.i, i32 noundef %conv38.i, i32 noundef 65536, i32 noundef %36, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end52.i, label %do.end.i

do.end.i:                                         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent2.i, align 4
  %39 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %number.i, align 4
  %41 = ptrtoint ptr %bus_resource.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bus_resource.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.112, i32 noundef %40, i32 noundef %conv38.i, i32 noundef %42) #14
  br label %err_resource.i

if.end52.i:                                       ; preds = %if.end31.i
  %43 = ptrtoint ptr %bus_resource.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bus_resource.i, align 4
  %call56.i = tail call ptr @ioremap(i32 noundef %44, i32 noundef %conv38.i) #9
  %kern_base57.i = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 9
  %45 = ptrtoint ptr %kern_base57.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call56.i, ptr %kern_base57.i, align 4
  %tobool59.not.i = icmp eq ptr %call56.i, null
  br i1 %tobool59.not.i, label %do.end63.i, label %if.end52.i.if.end22_crit_edge

if.end52.i.if.end22_crit_edge:                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end63.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.115) #14
  %call67.i = tail call i32 @release_resource(ptr noundef %bus_resource.i) #9
  br label %err_resource.i

err_resource.i:                                   ; preds = %do.end63.i, %do.end.i
  %retval1.0.i = phi i32 [ %call44.i, %do.end.i ], [ -12, %do.end63.i ]
  %48 = ptrtoint ptr %name21.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name21.i, align 4
  tail call void @kfree(ptr noundef %49) #9
  %50 = call ptr @memset(ptr %bus_resource.i, i32 0, i32 32)
  br label %if.then12

if.then12:                                        ; preds = %err_resource.i, %if.then22.i.if.then12_crit_edge
  %retval.0.i = phi i32 [ %retval1.0.i, %err_resource.i ], [ -12, %if.then22.i.if.then12_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %51 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.91) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end52.i.if.end22_crit_edge, %land.lhs.true.i.if.end22_crit_edge
  %bus = getelementptr i8, ptr %8, i32 -128
  %53 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus, align 8
  call void @pcibios_resource_to_bus(ptr noundef %54, ptr noundef nonnull %region, ptr noundef %bus_resource.i) #9
  %55 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %region, align 4
  %conv = zext i32 %56 to i64
  %sub = add i64 %size, -65536
  %add = add i64 %sub, %conv
  %sub21 = sub i64 %vme_base, %conv
  %conv.i316 = trunc i64 %add to i32
  %shr.i317 = lshr i64 %add, 32
  %conv1.i318 = trunc i64 %shr.i317 to i32
  %conv.i319 = trunc i64 %sub21 to i32
  %shr.i320 = lshr i64 %sub21, 32
  %conv1.i321 = trunc i64 %shr.i320 to i32
  %and23 = and i32 %56, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end31, label %if.end22.err_gran_crit_edge

if.end22.err_gran_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gran

if.end31:                                         ; preds = %if.end22
  %and32 = and i32 %conv.i316, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end40, label %if.end31.err_gran_crit_edge

if.end31.err_gran_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gran

if.end40:                                         ; preds = %if.end31
  %and41 = and i32 %conv.i319, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end49_crit_edge, label %if.end40.err_gran_crit_edge

if.end40.err_gran_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gran

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end49:                                         ; preds = %if.end40.if.end49_crit_edge, %if.end15.i.if.end49_crit_edge
  %conv1.i321350359378 = phi i32 [ %conv1.i321, %if.end40.if.end49_crit_edge ], [ 0, %if.end15.i.if.end49_crit_edge ]
  %conv.i319349360377 = phi i32 [ %conv.i319, %if.end40.if.end49_crit_edge ], [ 0, %if.end15.i.if.end49_crit_edge ]
  %conv1.i318348361376 = phi i32 [ %conv1.i318, %if.end40.if.end49_crit_edge ], [ 0, %if.end15.i.if.end49_crit_edge ]
  %conv.i316347362375 = phi i32 [ %conv.i316, %if.end40.if.end49_crit_edge ], [ 0, %if.end15.i.if.end49_crit_edge ]
  %conv.i315345364373 = phi i32 [ %56, %if.end40.if.end49_crit_edge ], [ 0, %if.end15.i.if.end49_crit_edge ]
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %57 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %number, align 4
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr [8 x i32], ptr @TSI148_LCSR_OT, i32 0, i32 %58
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  %add.ptr50 = getelementptr i8, ptr %60, i32 %62
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i32 28
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  %and54 = and i32 %63, 2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %6, align 4
  %add.ptr60 = getelementptr i8, ptr %65, i32 %62
  %add.ptr61 = getelementptr i8, ptr %add.ptr60, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %and54) #9, !srcloc !349
  %and62 = and i32 %63, 2147469311
  %and63 = and i32 %cycle, 1792
  %66 = zext i32 %and63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %and63, label %if.end49.sw.epilog_crit_edge [
    i32 1024, label %sw.bb66
    i32 512, label %sw.bb64
  ]

if.end49.sw.epilog_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %or65 = or i32 %and62, 2048
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %or67 = or i32 %and62, 4096
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb64, %if.end49.sw.epilog_crit_edge
  %temp_ctl.0 = phi i32 [ %or67, %sw.bb66 ], [ %or65, %sw.bb64 ], [ %and62, %if.end49.sw.epilog_crit_edge ]
  %and68 = and i32 %cycle, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %and71 = and i32 %temp_ctl.0, -1793
  %or72 = or i32 %and71, 256
  %temp_ctl.1 = select i1 %tobool69.not, i32 %temp_ctl.0, i32 %or72
  %and74 = and i32 %cycle, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %or78 = or i32 %and71, 512
  %temp_ctl.2 = select i1 %tobool75.not, i32 %temp_ctl.1, i32 %or78
  %and80 = and i32 %cycle, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %and83 = and i32 %temp_ctl.2, -1793
  %or84 = or i32 %and83, 768
  %temp_ctl.3 = select i1 %tobool81.not, i32 %temp_ctl.2, i32 %or84
  %and86 = and i32 %cycle, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  %or90 = or i32 %and83, 1024
  %temp_ctl.4 = select i1 %tobool87.not, i32 %temp_ctl.3, i32 %or90
  %and92 = and i32 %cycle, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %sw.epilog.if.end101_crit_edge, label %do.end97

sw.epilog.if.end101_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.end97:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.103) #14
  %and99 = and i32 %temp_ctl.4, -1793
  %or100 = or i32 %and99, 1280
  br label %if.end101

if.end101:                                        ; preds = %do.end97, %sw.epilog.if.end101_crit_edge
  %temp_ctl.5 = phi i32 [ %or100, %do.end97 ], [ %temp_ctl.4, %sw.epilog.if.end101_crit_edge ]
  %and102 = and i32 %temp_ctl.5, -193
  %69 = zext i32 %dwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %dwidth, label %if.end101.err_gran_crit_edge [
    i32 2, label %if.end101.sw.epilog112_crit_edge
    i32 4, label %sw.bb105
  ]

if.end101.sw.epilog112_crit_edge:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog112

if.end101.err_gran_crit_edge:                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gran

sw.bb105:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %or106 = or i32 %and102, 64
  br label %sw.epilog112

sw.epilog112:                                     ; preds = %sw.bb105, %if.end101.sw.epilog112_crit_edge
  %temp_ctl.6 = phi i32 [ %or106, %sw.bb105 ], [ %and102, %if.end101.sw.epilog112_crit_edge ]
  %and113 = and i32 %temp_ctl.6, -16
  %70 = zext i32 %aspace to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %aspace, label %sw.epilog112.err_gran_crit_edge [
    i32 1, label %sw.epilog112.sw.epilog138_crit_edge
    i32 2, label %sw.bb116
    i32 4, label %sw.bb118
    i32 8, label %sw.bb120
    i32 16, label %sw.bb122
    i32 32, label %sw.bb124
    i32 64, label %sw.bb126
    i32 128, label %sw.bb128
    i32 256, label %sw.bb130
  ]

sw.epilog112.sw.epilog138_crit_edge:              ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog138

sw.epilog112.err_gran_crit_edge:                  ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gran

sw.bb116:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or117 = or i32 %and113, 1
  br label %sw.epilog138

sw.bb118:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or119 = or i32 %and113, 2
  br label %sw.epilog138

sw.bb120:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or121 = or i32 %and113, 4
  br label %sw.epilog138

sw.bb122:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or123 = or i32 %and113, 5
  br label %sw.epilog138

sw.bb124:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or125 = or i32 %and113, 8
  br label %sw.epilog138

sw.bb126:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or127 = or i32 %and113, 9
  br label %sw.epilog138

sw.bb128:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or129 = or i32 %and113, 10
  br label %sw.epilog138

sw.bb130:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #11
  %or131 = or i32 %and113, 11
  br label %sw.epilog138

sw.epilog138:                                     ; preds = %sw.bb130, %sw.bb128, %sw.bb126, %sw.bb124, %sw.bb122, %sw.bb120, %sw.bb118, %sw.bb116, %sw.epilog112.sw.epilog138_crit_edge
  %temp_ctl.7 = phi i32 [ %or131, %sw.bb130 ], [ %or129, %sw.bb128 ], [ %or127, %sw.bb126 ], [ %or125, %sw.bb124 ], [ %or123, %sw.bb122 ], [ %or121, %sw.bb120 ], [ %or119, %sw.bb118 ], [ %or117, %sw.bb116 ], [ %and113, %sw.epilog112.sw.epilog138_crit_edge ]
  %and139 = and i32 %temp_ctl.7, -49
  %and140 = lshr i32 %cycle, 7
  %71 = and i32 %and140, 32
  %and145 = lshr i32 %cycle, 10
  %72 = and i32 %and145, 16
  %73 = or i32 %72, %71
  %74 = or i32 %73, %and139
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %6, align 4
  %add.ptr155 = getelementptr i8, ptr %76, i32 %62
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 0) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %6, align 4
  %add.ptr162 = getelementptr i8, ptr %78, i32 %62
  %add.ptr163 = getelementptr i8, ptr %add.ptr162, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %conv.i315345364373) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %6, align 4
  %add.ptr169 = getelementptr i8, ptr %80, i32 %62
  %add.ptr170 = getelementptr i8, ptr %add.ptr169, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %conv1.i318348361376) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  call void @arm_heavy_mb() #9
  %81 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %6, align 4
  %add.ptr176 = getelementptr i8, ptr %82, i32 %62
  %add.ptr177 = getelementptr i8, ptr %add.ptr176, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %conv.i316347362375) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  call void @arm_heavy_mb() #9
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %6, align 4
  %add.ptr183 = getelementptr i8, ptr %84, i32 %62
  %add.ptr184 = getelementptr i8, ptr %add.ptr183, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 %conv1.i321350359378) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %6, align 4
  %add.ptr190 = getelementptr i8, ptr %86, i32 %62
  %add.ptr191 = getelementptr i8, ptr %add.ptr190, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %conv.i319349360377) #9, !srcloc !349
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %6, align 4
  %add.ptr197 = getelementptr i8, ptr %88, i32 %62
  %add.ptr198 = getelementptr i8, ptr %add.ptr197, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 %74) #9, !srcloc !349
  %or201 = or i32 %74, -2147483648
  %temp_ctl.10 = select i1 %cmp4.not, i32 %74, i32 %or201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %6, align 4
  %add.ptr208 = getelementptr i8, ptr %90, i32 %62
  %add.ptr209 = getelementptr i8, ptr %add.ptr208, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 %temp_ctl.10) #9, !srcloc !349
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

err_gran:                                         ; preds = %sw.epilog112.err_gran_crit_edge, %if.end101.err_gran_crit_edge, %if.end40.err_gran_crit_edge, %if.end31.err_gran_crit_edge, %if.end22.err_gran_crit_edge
  %.str.107.sink = phi ptr [ @.str.94, %if.end22.err_gran_crit_edge ], [ @.str.97, %if.end31.err_gran_crit_edge ], [ @.str.100, %if.end40.err_gran_crit_edge ], [ @.str.107, %if.end101.err_gran_crit_edge ], [ @.str.74, %sw.epilog112.err_gran_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  %91 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull %.str.107.sink) #14
  %kern_base.i322 = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 9
  %93 = ptrtoint ptr %kern_base.i322 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %kern_base.i322, align 4
  call void @iounmap(ptr noundef %94) #9
  %95 = ptrtoint ptr %kern_base.i322 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %kern_base.i322, align 4
  %call.i324 = call i32 @release_resource(ptr noundef %bus_resource.i) #9
  %name.i325 = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 8, i32 2
  %96 = ptrtoint ptr %name.i325 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name.i325, align 4
  call void @kfree(ptr noundef %97) #9
  %98 = call ptr @memset(ptr %bus_resource.i, i32 0, i32 32)
  br label %cleanup

cleanup:                                          ; preds = %err_gran, %sw.epilog138, %if.then12, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog138 ], [ -22, %do.end ], [ -22, %do.end8 ], [ %retval.0.i, %if.then12 ], [ -22, %err_gran ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %region) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_master_read(ptr noundef %image, ptr nocapture noundef writeonly %buf, i32 noundef %count, i64 noundef %offset) #2 align 64 {
entry:
  %enabled = alloca i32, align 4
  %vme_base = alloca i64, align 8
  %size = alloca i64, align 8
  %aspace = alloca i32, align 4
  %cycle = alloca i32, align 4
  %dwidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vme_base) #9
  %0 = ptrtoint ptr %vme_base to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vme_base, align 8, !annotation !391
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aspace) #9
  %1 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %aspace, align 4, !annotation !391
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cycle) #9
  %2 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cycle, align 4, !annotation !391
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwidth) #9
  %kern_base = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 9
  %3 = ptrtoint ptr %kern_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kern_base, align 4
  %idx.ext = trunc i64 %offset to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %idx.ext
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %7 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  call fastcc void @__tsi148_master_get(ptr noundef %image, ptr noundef nonnull %enabled, ptr noundef nonnull %vme_base, ptr noundef nonnull %size, ptr noundef nonnull %aspace, ptr noundef nonnull %cycle, ptr noundef nonnull %dwidth)
  %8 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aspace, align 4
  %10 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vme_base, align 8
  %add = add i64 %11, %offset
  %call2 = call ptr @vme_register_error_handler(ptr noundef %6, i32 noundef %9, i64 noundef %add, i32 noundef %count) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %handler.0 = phi ptr [ %call2, %if.then.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %if.then8

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8:                                         ; preds = %if.end6
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !402
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp eq i32 %count, 1
  br i1 %cmp, label %if.then8.out_crit_edge, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %done.0 = phi i32 [ 1, %if.then8.if.end13_crit_edge ], [ 0, %if.end6.if.end13_crit_edge ]
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %done.0
  %15 = ptrtoint ptr %add.ptr14 to i32
  %and15 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end29_crit_edge, label %if.then17

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then17:                                        ; preds = %if.end13
  %sub = sub i32 %count, %done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp18 = icmp ult i32 %sub, 2
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14) #9, !srcloc !402
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  br label %out.sink.split

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #9, !srcloc !404
  %18 = call i16 @llvm.bswap.i16(i16 %17) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %add.ptr26 = getelementptr i8, ptr %buf, i32 %done.0
  %19 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %add.ptr26, align 2
  %add27 = or i32 %done.0, 2
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end13.if.end29_crit_edge
  %done.1 = phi i32 [ %add27, %if.else ], [ %done.0, %if.end13.if.end29_crit_edge ]
  %sub30 = sub i32 %count, %done.1
  %and31 = and i32 %sub30, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %and31)
  %cmp32130 = icmp ult i32 %done.1, %and31
  br i1 %cmp32130, label %if.end29.while.body_crit_edge, label %if.end29.while.end_crit_edge

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end29.while.body_crit_edge
  %done.2131 = phi i32 [ %add36, %while.body.while.body_crit_edge ], [ %done.1, %if.end29.while.body_crit_edge ]
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 %done.2131
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !346
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %done.2131
  %22 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr35, align 4
  %add36 = add nuw i32 %done.2131, 4
  %cmp32 = icmp ult i32 %add36, %and31
  br i1 %cmp32, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = sub i32 %count, %add36
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end29.while.end_crit_edge
  %sub37.pre-phi = phi i32 [ %.pre, %while.end.loopexit ], [ %sub30, %if.end29.while.end_crit_edge ]
  %done.2.lcssa = phi i32 [ %add36, %while.end.loopexit ], [ %done.1, %if.end29.while.end_crit_edge ]
  %and38 = and i32 %sub37.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %while.end.if.end45_crit_edge, label %if.then40

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 %done.2.lcssa
  %23 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr41) #9, !srcloc !404
  %24 = call i16 @llvm.bswap.i16(i16 %23) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %add.ptr43 = getelementptr i8, ptr %buf, i32 %done.2.lcssa
  %25 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr43, align 2
  %add44 = add i32 %done.2.lcssa, 2
  %.pre132 = sub i32 %count, %add44
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %while.end.if.end45_crit_edge
  %sub46.pre-phi = phi i32 [ %.pre132, %if.then40 ], [ %sub37.pre-phi, %while.end.if.end45_crit_edge ]
  %done.3 = phi i32 [ %add44, %if.then40 ], [ %done.2.lcssa, %while.end.if.end45_crit_edge ]
  %and47 = and i32 %sub46.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.out_crit_edge, label %if.then49

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr50 = getelementptr i8, ptr %add.ptr, i32 %done.3
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr50) #9, !srcloc !402
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then49, %if.then19
  %done.3.sink = phi i32 [ %done.3, %if.then49 ], [ %done.0, %if.then19 ]
  %.sink = phi i8 [ %26, %if.then49 ], [ %16, %if.then19 ]
  %add.ptr52 = getelementptr i8, ptr %buf, i32 %done.3.sink
  %27 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.sink, ptr %add.ptr52, align 1
  br label %out

out:                                              ; preds = %out.sink.split, %if.end45.out_crit_edge, %if.then8.out_crit_edge
  %28 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool55.not = icmp eq i8 %28, 0
  br i1 %tobool55.not, label %out.cleanup_crit_edge, label %if.then56

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %out
  %num_errors = getelementptr inbounds %struct.vme_error_handler, ptr %handler.0, i32 0, i32 5
  %29 = ptrtoint ptr %num_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool57.not = icmp eq i32 %30, 0
  br i1 %tobool57.not, label %if.then56.if.end64_crit_edge, label %do.end

if.then56.if.end64_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end:                                           ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 4
  %parent60 = getelementptr inbounds %struct.vme_bridge, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %parent60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent60, align 4
  %first_error = getelementptr inbounds %struct.vme_error_handler, ptr %handler.0, i32 0, i32 3
  %35 = ptrtoint ptr %first_error to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %first_error, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.117, i64 noundef %36) #14
  %37 = ptrtoint ptr %first_error to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %first_error, align 8
  %39 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %vme_base, align 8
  %41 = add i64 %40, %offset
  %sub63 = sub i64 %38, %41
  %conv = trunc i64 %sub63 to i32
  br label %if.end64

if.end64:                                         ; preds = %do.end, %if.then56.if.end64_crit_edge
  %retval1.0 = phi i32 [ %conv, %do.end ], [ %count, %if.then56.if.end64_crit_edge ]
  call void @vme_unregister_error_handler(ptr noundef %handler.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %retval1.0, %if.end64 ], [ %count, %out.cleanup_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwidth) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cycle) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aspace) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vme_base) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_master_write(ptr noundef %image, ptr nocapture noundef readonly %buf, i32 noundef %count, i64 noundef %offset) #2 align 64 {
entry:
  %enabled = alloca i32, align 4
  %vme_base = alloca i64, align 8
  %size = alloca i64, align 8
  %aspace = alloca i32, align 4
  %cycle = alloca i32, align 4
  %dwidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vme_base) #9
  %0 = ptrtoint ptr %vme_base to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %vme_base, align 8, !annotation !391
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aspace) #9
  %1 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %aspace, align 4, !annotation !391
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cycle) #9
  %2 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cycle, align 4, !annotation !391
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwidth) #9
  %kern_base = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 9
  %3 = ptrtoint ptr %kern_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kern_base, align 4
  %idx.ext = trunc i64 %offset to i32
  %add.ptr = getelementptr i8, ptr %4, i32 %idx.ext
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_priv, align 4
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %9 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  call fastcc void @__tsi148_master_get(ptr noundef %image, ptr noundef nonnull %enabled, ptr noundef nonnull %vme_base, ptr noundef nonnull %size, ptr noundef nonnull %aspace, ptr noundef nonnull %cycle, ptr noundef nonnull %dwidth)
  %10 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aspace, align 4
  %12 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vme_base, align 8
  %add = add i64 %13, %offset
  %call2 = call ptr @vme_register_error_handler(ptr noundef %6, i32 noundef %11, i64 noundef %add, i32 noundef %count) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %handler.0 = phi ptr [ %call2, %if.then.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  %14 = ptrtoint ptr %add.ptr to i32
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %16) #9, !srcloc !407
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp eq i32 %count, 1
  br i1 %cmp, label %if.then8.out_crit_edge, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %done.0 = phi i32 [ 1, %if.then8.if.end12_crit_edge ], [ 0, %if.end6.if.end12_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %done.0
  %17 = ptrtoint ptr %add.ptr13 to i32
  %and14 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end26_crit_edge, label %if.then16

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then16:                                        ; preds = %if.end12
  %sub = sub i32 %count, %done.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp17 = icmp ult i32 %sub, 2
  %add.ptr19 = getelementptr i8, ptr %buf, i32 %done.0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr19, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 %19) #9, !srcloc !407
  br label %out

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr19, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  call void @arm_heavy_mb() #9
  %22 = call i16 @llvm.bswap.i16(i16 %21) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 %22) #9, !srcloc !409
  %add24 = or i32 %done.0, 2
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end12.if.end26_crit_edge
  %done.1 = phi i32 [ %add24, %if.else ], [ %done.0, %if.end12.if.end26_crit_edge ]
  %sub27 = sub i32 %count, %done.1
  %and28 = and i32 %sub27, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %and28)
  %cmp29128 = icmp ult i32 %done.1, %and28
  br i1 %cmp29128, label %if.end26.while.body_crit_edge, label %if.end26.while.end_crit_edge

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end26.while.body_crit_edge
  %done.2129 = phi i32 [ %add32, %while.body.while.body_crit_edge ], [ %done.1, %if.end26.while.body_crit_edge ]
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %done.2129
  %23 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr30, align 4
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %done.2129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !410
  call void @arm_heavy_mb() #9
  %25 = call i32 @llvm.bswap.i32(i32 %24) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %25) #9, !srcloc !349
  %add32 = add nuw i32 %done.2129, 4
  %cmp29 = icmp ult i32 %add32, %and28
  br i1 %cmp29, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = sub i32 %count, %add32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end26.while.end_crit_edge
  %sub33.pre-phi = phi i32 [ %.pre, %while.end.loopexit ], [ %sub27, %if.end26.while.end_crit_edge ]
  %done.2.lcssa = phi i32 [ %add32, %while.end.loopexit ], [ %done.1, %if.end26.while.end_crit_edge ]
  %and34 = and i32 %sub33.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %while.end.if.end40_crit_edge, label %if.then36

while.end.if.end40_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr37 = getelementptr i8, ptr %buf, i32 %done.2.lcssa
  %26 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr37, align 2
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %done.2.lcssa
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  call void @arm_heavy_mb() #9
  %28 = call i16 @llvm.bswap.i16(i16 %27) #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38, i16 %28) #9, !srcloc !409
  %add39 = add i32 %done.2.lcssa, 2
  %.pre130 = sub i32 %count, %add39
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %while.end.if.end40_crit_edge
  %sub41.pre-phi = phi i32 [ %.pre130, %if.then36 ], [ %sub33.pre-phi, %while.end.if.end40_crit_edge ]
  %done.3 = phi i32 [ %add39, %if.then36 ], [ %done.2.lcssa, %while.end.if.end40_crit_edge ]
  %and42 = and i32 %sub41.pre-phi, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.out_crit_edge, label %if.then44

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr45 = getelementptr i8, ptr %buf, i32 %done.3
  %29 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr45, align 1
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 %done.3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 %30) #9, !srcloc !407
  br label %out

out:                                              ; preds = %if.then44, %if.end40.out_crit_edge, %if.then18, %if.then8.out_crit_edge
  %31 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool49.not = icmp eq i8 %31, 0
  br i1 %tobool49.not, label %out.cleanup_crit_edge, label %if.then50

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then50:                                        ; preds = %out
  %flush_image = getelementptr inbounds %struct.tsi148_driver, ptr %8, i32 0, i32 7
  %32 = ptrtoint ptr %flush_image to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %flush_image, align 4
  %kern_base51 = getelementptr inbounds %struct.vme_master_resource, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %kern_base51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %kern_base51, align 4
  %add.ptr52 = getelementptr i8, ptr %35, i32 520192
  %36 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr52) #9, !srcloc !404
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %num_errors = getelementptr inbounds %struct.vme_error_handler, ptr %handler.0, i32 0, i32 5
  %37 = ptrtoint ptr %num_errors to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool54.not = icmp eq i32 %38, 0
  br i1 %tobool54.not, label %if.then50.if.end60_crit_edge, label %do.end

if.then50.if.end60_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end:                                           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %parent56 = getelementptr inbounds %struct.vme_bridge, ptr %6, i32 0, i32 8
  %39 = ptrtoint ptr %parent56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent56, align 4
  %first_error = getelementptr inbounds %struct.vme_error_handler, ptr %handler.0, i32 0, i32 3
  %41 = ptrtoint ptr %first_error to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %first_error, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.119, i64 noundef %42) #14
  %43 = ptrtoint ptr %first_error to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %first_error, align 8
  %45 = ptrtoint ptr %vme_base to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %vme_base, align 8
  %47 = add i64 %46, %offset
  %sub59 = sub i64 %44, %47
  %conv = trunc i64 %sub59 to i32
  br label %if.end60

if.end60:                                         ; preds = %do.end, %if.then50.if.end60_crit_edge
  %retval1.0 = phi i32 [ %conv, %do.end ], [ %count, %if.then50.if.end60_crit_edge ]
  call void @vme_unregister_error_handler(ptr noundef %handler.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %retval1.0, %if.end60 ], [ %count, %out.cleanup_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwidth) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cycle) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aspace) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vme_base) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_master_rmw(ptr noundef %image, i32 noundef %mask, i32 noundef %compare, i32 noundef %swap, i64 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %vme_rmw = getelementptr inbounds %struct.tsi148_driver, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %vme_rmw, i32 noundef 0) #9
  %lock = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr [8 x i32], ptr @TSI148_LCSR_OT, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !411
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 %9
  %add.ptr7 = getelementptr i8, ptr %add.ptr6, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !412
  %conv.i = zext i32 %10 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %13 to i64
  %or.i = add i64 %shl.i, %offset
  %add = add i64 %or.i, %conv1.i
  %conv.i79 = trunc i64 %add to i32
  %shr.i = lshr i64 %add, 32
  %conv1.i80 = trunc i64 %shr.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !413
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %mask) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %compare) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add.ptr21 = getelementptr i8, ptr %19, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %swap) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !416
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %conv1.i80) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !417
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %conv.i79) #9, !srcloc !349
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %add.ptr34 = getelementptr i8, ptr %25, i32 564
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %or = or i32 %26, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr41 = getelementptr i8, ptr %28, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %or) #9, !srcloc !349
  %kern_base = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 9
  %29 = ptrtoint ptr %kern_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kern_base, align 4
  %idx.ext = trunc i64 %offset to i32
  %add.ptr43 = getelementptr i8, ptr %30, i32 %idx.ext
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !420
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %add.ptr48 = getelementptr i8, ptr %33, i32 564
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  %and = and i32 %34, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add.ptr55 = getelementptr i8, ptr %36, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %and) #9, !srcloc !349
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  tail call void @mutex_unlock(ptr noundef %vme_rmw) #9
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_dma_list_add(ptr noundef %list, ptr nocapture noundef readonly %src, ptr nocapture noundef readonly %dest, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent3 = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 52) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i to i32
  %6 = call ptr @memset(ptr %call7.i, i32 0, i32 40)
  %7 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %8, label %do.end48 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb22
    i32 4, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %private = getelementptr inbounds %struct.vme_dma_attr, ptr %src, i32 0, i32 1
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %dsal = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %dsal to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dsal, align 4
  %type11 = getelementptr inbounds %struct.vme_dma_pattern, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type11, align 4
  %and12 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select = select i1 %tobool13.not, i32 536870912, i32 570425344
  %and17 = shl i32 %16, 22
  %17 = and i32 %and17, 16777216
  %18 = or i32 %spec.select, %17
  %19 = xor i32 %18, 16777216
  %dsat = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 4
  %20 = ptrtoint ptr %dsat to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dsat, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %private23 = getelementptr inbounds %struct.vme_dma_attr, ptr %src, i32 0, i32 1
  %21 = ptrtoint ptr %private23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private23, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %dsal26 = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %dsal26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dsal26, align 4
  %dsat28 = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 4
  %26 = ptrtoint ptr %dsat28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dsat28, align 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %private30 = getelementptr inbounds %struct.vme_dma_attr, ptr %src, i32 0, i32 1
  %27 = ptrtoint ptr %private30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private30, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  %conv.i = trunc i64 %30 to i32
  %shr.i184 = lshr i64 %30, 32
  %conv1.i185 = trunc i64 %shr.i184 to i32
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv1.i185, ptr %call7.i, align 8
  %dsal35 = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %dsal35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %dsal35, align 4
  %dsat37 = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 4
  %33 = ptrtoint ptr %dsat37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 268435456, ptr %dsat37, align 8
  %parent38 = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %parent38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent38, align 4
  %aspace = getelementptr inbounds %struct.vme_dma_vme, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %aspace, align 8
  %cycle = getelementptr inbounds %struct.vme_dma_vme, ptr %28, i32 0, i32 2
  %38 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cycle, align 4
  %dwidth = getelementptr inbounds %struct.vme_dma_vme, ptr %28, i32 0, i32 3
  %40 = ptrtoint ptr %dwidth to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dwidth, align 8
  %and.i = and i32 %39, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i)
  %switch.selectcmp = icmp eq i32 %and.i, 512
  %switch.select = select i1 %switch.selectcmp, i32 268437504, i32 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i)
  %switch.selectcmp256 = icmp eq i32 %and.i, 1024
  %switch.select257 = select i1 %switch.selectcmp256, i32 268439552, i32 %switch.select
  %and7.i = shl i32 %39, 7
  %42 = and i32 %and7.i, 768
  %and17.i = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %val.4.v.i = select i1 %tobool18.not.i, i32 %42, i32 768
  %val.4.i = or i32 %switch.select257, %val.4.v.i
  %and22.i = shl i32 %39, 6
  %43 = and i32 %and22.i, 1024
  %44 = or i32 %val.4.i, %43
  %and27.i = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %sw.bb29.if.end31.i_crit_edge, label %do.end.i

sw.bb29.if.end31.i_crit_edge:                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

do.end.i:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.103) #14
  %or30.i = or i32 %val.4.i, 1280
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end.i, %sw.bb29.if.end31.i_crit_edge
  %val.6.i = phi i32 [ %or30.i, %do.end.i ], [ %44, %sw.bb29.if.end31.i_crit_edge ]
  %45 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %41, label %do.end38.i [
    i32 2, label %if.end31.i.sw.epilog39.i_crit_edge
    i32 4, label %sw.bb34.i
  ]

if.end31.i.sw.epilog39.i_crit_edge:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog39.i

sw.bb34.i:                                        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %or35.i = or i32 %val.6.i, 64
  br label %sw.epilog39.i

do.end38.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.107) #14
  br label %err_align

sw.epilog39.i:                                    ; preds = %sw.bb34.i, %if.end31.i.sw.epilog39.i_crit_edge
  %val.7.i = phi i32 [ %or35.i, %sw.bb34.i ], [ %val.6.i, %if.end31.i.sw.epilog39.i_crit_edge ]
  %46 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %37, label %do.end61.i [
    i32 1, label %sw.epilog39.i.tsi148_dma_set_vme_src_attributes.exit_crit_edge
    i32 2, label %sw.bb42.i
    i32 4, label %sw.bb44.i
    i32 8, label %sw.bb46.i
    i32 16, label %sw.bb48.i
    i32 32, label %sw.bb50.i
    i32 64, label %sw.bb52.i
    i32 128, label %sw.bb54.i
    i32 256, label %sw.bb56.i
  ]

sw.epilog39.i.tsi148_dma_set_vme_src_attributes.exit_crit_edge: ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb42.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or43.i = or i32 %val.7.i, 1
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb44.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or45.i = or i32 %val.7.i, 2
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb46.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or47.i = or i32 %val.7.i, 4
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb48.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or49.i = or i32 %val.7.i, 5
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb50.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or51.i = or i32 %val.7.i, 8
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb52.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or53.i = or i32 %val.7.i, 9
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb54.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or55.i = or i32 %val.7.i, 10
  br label %tsi148_dma_set_vme_src_attributes.exit

sw.bb56.i:                                        ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  %or57.i = or i32 %val.7.i, 11
  br label %tsi148_dma_set_vme_src_attributes.exit

do.end61.i:                                       ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.74) #14
  br label %err_align

tsi148_dma_set_vme_src_attributes.exit:           ; preds = %sw.bb56.i, %sw.bb54.i, %sw.bb52.i, %sw.bb50.i, %sw.bb48.i, %sw.bb46.i, %sw.bb44.i, %sw.bb42.i, %sw.epilog39.i.tsi148_dma_set_vme_src_attributes.exit_crit_edge
  %val.8.i = phi i32 [ %or57.i, %sw.bb56.i ], [ %or55.i, %sw.bb54.i ], [ %or53.i, %sw.bb52.i ], [ %or51.i, %sw.bb50.i ], [ %or49.i, %sw.bb48.i ], [ %or47.i, %sw.bb46.i ], [ %or45.i, %sw.bb44.i ], [ %or43.i, %sw.bb42.i ], [ %val.7.i, %sw.epilog39.i.tsi148_dma_set_vme_src_attributes.exit_crit_edge ]
  %and63.i = lshr i32 %39, 7
  %47 = and i32 %and63.i, 32
  %and68.i = lshr i32 %39, 10
  %48 = and i32 %and68.i, 16
  %49 = or i32 %48, %47
  %50 = or i32 %49, %val.8.i
  %51 = ptrtoint ptr %dsat37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %dsat37, align 8
  br label %sw.epilog

do.end48:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent49 = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 8
  %52 = ptrtoint ptr %parent49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.124) #14
  br label %err_align

sw.epilog:                                        ; preds = %tsi148_dma_set_vme_src_attributes.exit, %sw.bb22, %sw.bb
  %dnlau = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 6
  %54 = ptrtoint ptr %dnlau to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %dnlau, align 8
  %dnlal = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 7
  %55 = ptrtoint ptr %dnlal to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %dnlal, align 4
  %56 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dest, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %57, label %do.end83 [
    i32 2, label %sw.bb53
    i32 4, label %sw.bb60
  ]

sw.bb53:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %private54 = getelementptr inbounds %struct.vme_dma_attr, ptr %dest, i32 0, i32 1
  %59 = ptrtoint ptr %private54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %private54, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %ddau = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 2
  %63 = ptrtoint ptr %ddau to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %ddau, align 8
  %ddal = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 3
  %64 = ptrtoint ptr %ddal to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %ddal, align 4
  %ddat = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 5
  %65 = ptrtoint ptr %ddat to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %ddat, align 4
  br label %sw.epilog85

sw.bb60:                                          ; preds = %sw.epilog
  %private61 = getelementptr inbounds %struct.vme_dma_attr, ptr %dest, i32 0, i32 1
  %66 = ptrtoint ptr %private61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %private61, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %67, align 8
  %conv.i188 = trunc i64 %69 to i32
  %shr.i189 = lshr i64 %69, 32
  %conv1.i190 = trunc i64 %shr.i189 to i32
  %ddau64 = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 2
  %70 = ptrtoint ptr %ddau64 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv1.i190, ptr %ddau64, align 8
  %ddal66 = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 3
  %71 = ptrtoint ptr %ddal66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv.i188, ptr %ddal66, align 4
  %ddat68 = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 5
  %72 = ptrtoint ptr %ddat68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 268435456, ptr %ddat68, align 4
  %parent69 = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 8
  %73 = ptrtoint ptr %parent69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent69, align 4
  %aspace72 = getelementptr inbounds %struct.vme_dma_vme, ptr %67, i32 0, i32 1
  %75 = ptrtoint ptr %aspace72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %aspace72, align 8
  %cycle73 = getelementptr inbounds %struct.vme_dma_vme, ptr %67, i32 0, i32 2
  %77 = ptrtoint ptr %cycle73 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cycle73, align 4
  %dwidth74 = getelementptr inbounds %struct.vme_dma_vme, ptr %67, i32 0, i32 3
  %79 = ptrtoint ptr %dwidth74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dwidth74, align 8
  %and.i191 = and i32 %78, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i191)
  %switch.selectcmp258 = icmp eq i32 %and.i191, 512
  %switch.select259 = select i1 %switch.selectcmp258, i32 268437504, i32 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i191)
  %switch.selectcmp260 = icmp eq i32 %and.i191, 1024
  %switch.select261 = select i1 %switch.selectcmp260, i32 268439552, i32 %switch.select259
  %and7.i197 = shl i32 %78, 7
  %81 = and i32 %and7.i197, 768
  %and17.i198 = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i198)
  %tobool18.not.i199 = icmp eq i32 %and17.i198, 0
  %val.4.v.i200 = select i1 %tobool18.not.i199, i32 %81, i32 768
  %val.4.i201 = or i32 %switch.select261, %val.4.v.i200
  %and22.i202 = shl i32 %78, 6
  %82 = and i32 %and22.i202, 1024
  %83 = or i32 %val.4.i201, %82
  %and27.i203 = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i203)
  %tobool28.not.i204 = icmp eq i32 %and27.i203, 0
  br i1 %tobool28.not.i204, label %sw.bb60.if.end31.i209_crit_edge, label %do.end.i207

sw.bb60.if.end31.i209_crit_edge:                  ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i209

do.end.i207:                                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.103) #14
  %or30.i206 = or i32 %val.4.i201, 1280
  br label %if.end31.i209

if.end31.i209:                                    ; preds = %do.end.i207, %sw.bb60.if.end31.i209_crit_edge
  %val.6.i208 = phi i32 [ %or30.i206, %do.end.i207 ], [ %83, %sw.bb60.if.end31.i209_crit_edge ]
  %84 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %80, label %do.end38.i212 [
    i32 2, label %if.end31.i209.sw.epilog39.i214_crit_edge
    i32 4, label %sw.bb34.i211
  ]

if.end31.i209.sw.epilog39.i214_crit_edge:         ; preds = %if.end31.i209
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog39.i214

sw.bb34.i211:                                     ; preds = %if.end31.i209
  call void @__sanitizer_cov_trace_pc() #11
  %or35.i210 = or i32 %val.6.i208, 64
  br label %sw.epilog39.i214

do.end38.i212:                                    ; preds = %if.end31.i209
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.107) #14
  br label %err_align

sw.epilog39.i214:                                 ; preds = %sw.bb34.i211, %if.end31.i209.sw.epilog39.i214_crit_edge
  %val.7.i213 = phi i32 [ %or35.i210, %sw.bb34.i211 ], [ %val.6.i208, %if.end31.i209.sw.epilog39.i214_crit_edge ]
  %85 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %76, label %do.end61.i231 [
    i32 1, label %sw.epilog39.i214.tsi148_dma_set_vme_dest_attributes.exit_crit_edge
    i32 2, label %sw.bb42.i216
    i32 4, label %sw.bb44.i218
    i32 8, label %sw.bb46.i220
    i32 16, label %sw.bb48.i222
    i32 32, label %sw.bb50.i224
    i32 64, label %sw.bb52.i226
    i32 128, label %sw.bb54.i228
    i32 256, label %sw.bb56.i230
  ]

sw.epilog39.i214.tsi148_dma_set_vme_dest_attributes.exit_crit_edge: ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb42.i216:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or43.i215 = or i32 %val.7.i213, 1
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb44.i218:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or45.i217 = or i32 %val.7.i213, 2
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb46.i220:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or47.i219 = or i32 %val.7.i213, 4
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb48.i222:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or49.i221 = or i32 %val.7.i213, 5
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb50.i224:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or51.i223 = or i32 %val.7.i213, 8
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb52.i226:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or53.i225 = or i32 %val.7.i213, 9
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb54.i228:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or55.i227 = or i32 %val.7.i213, 10
  br label %tsi148_dma_set_vme_dest_attributes.exit

sw.bb56.i230:                                     ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  %or57.i229 = or i32 %val.7.i213, 11
  br label %tsi148_dma_set_vme_dest_attributes.exit

do.end61.i231:                                    ; preds = %sw.epilog39.i214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.74) #14
  br label %err_align

tsi148_dma_set_vme_dest_attributes.exit:          ; preds = %sw.bb56.i230, %sw.bb54.i228, %sw.bb52.i226, %sw.bb50.i224, %sw.bb48.i222, %sw.bb46.i220, %sw.bb44.i218, %sw.bb42.i216, %sw.epilog39.i214.tsi148_dma_set_vme_dest_attributes.exit_crit_edge
  %val.8.i232 = phi i32 [ %or57.i229, %sw.bb56.i230 ], [ %or55.i227, %sw.bb54.i228 ], [ %or53.i225, %sw.bb52.i226 ], [ %or51.i223, %sw.bb50.i224 ], [ %or49.i221, %sw.bb48.i222 ], [ %or47.i219, %sw.bb46.i220 ], [ %or45.i217, %sw.bb44.i218 ], [ %or43.i215, %sw.bb42.i216 ], [ %val.7.i213, %sw.epilog39.i214.tsi148_dma_set_vme_dest_attributes.exit_crit_edge ]
  %and63.i233 = lshr i32 %78, 7
  %86 = and i32 %and63.i233, 32
  %and68.i234 = lshr i32 %78, 10
  %87 = and i32 %and68.i234, 16
  %88 = or i32 %87, %86
  %89 = or i32 %88, %val.8.i232
  %90 = ptrtoint ptr %ddat68 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %ddat68, align 4
  br label %sw.epilog85

do.end83:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %parent84 = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 8
  %91 = ptrtoint ptr %parent84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent84, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.127) #14
  br label %err_align

sw.epilog85:                                      ; preds = %tsi148_dma_set_vme_dest_attributes.exit, %sw.bb53
  %dcnt = getelementptr inbounds %struct.tsi148_dma_descriptor, ptr %call7.i, i32 0, i32 8
  %93 = ptrtoint ptr %dcnt to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %count, ptr %dcnt, align 8
  %list87 = getelementptr inbounds %struct.tsi148_dma_entry, ptr %call7.i, i32 0, i32 1
  %entries = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list87, ptr noundef %95, ptr noundef %entries) #9
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog85.list_add_tail.exit_crit_edge

sw.epilog85.list_add_tail.exit_crit_edge:         ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %list87, ptr %prev.i, align 4
  %97 = ptrtoint ptr %list87 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %entries, ptr %list87, align 8
  %prev3.i.i = getelementptr inbounds %struct.tsi148_dma_entry, ptr %call7.i, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %95, ptr %prev3.i.i, align 4
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %list87, ptr %95, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.epilog85.list_add_tail.exit_crit_edge
  %parent88 = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 8
  %100 = ptrtoint ptr %parent88 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %parent88, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %list_add_tail.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !423

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %101) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %103, null
  br i1 %tobool.not.i.i, label %if.end.i.i237, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i237:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i237, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %105, %if.end.i.i237 ], [ %103, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.142, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.143, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %101, ptr noundef nonnull %call7.i, i32 noundef 40) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %106 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %5, 1073741824
  %shr.i238 = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %106, i32 %shr.i238
  %and.i239 = and i32 %5, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %101, ptr noundef %add.ptr.i, i32 noundef %and.i239, i32 noundef 40, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i240 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_handle = getelementptr inbounds %struct.tsi148_dma_entry, ptr %call7.i, i32 0, i32 2
  %107 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i240, ptr %dma_handle, align 8
  %108 = ptrtoint ptr %parent88 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parent88, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %109, i32 noundef %retval.0.i240) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i240)
  %cmp.i = icmp eq i32 %retval.0.i240, -1
  br i1 %cmp.i, label %do.end98, label %if.end100

do.end98:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %parent88 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parent88, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.130) #14
  br label %err_align

if.end100:                                        ; preds = %dma_map_single_attrs.exit
  %prev102 = getelementptr inbounds %struct.tsi148_dma_entry, ptr %call7.i, i32 0, i32 1, i32 1
  %112 = ptrtoint ptr %prev102 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev102, align 4
  %cmp104.not = icmp eq ptr %113, %entries
  br i1 %cmp104.not, label %if.end100.cleanup_crit_edge, label %if.then106

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then106:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma_handle, align 8
  %dnlau112 = getelementptr i8, ptr %113, i32 -16
  %116 = ptrtoint ptr %dnlau112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %dnlau112, align 4
  %dnlal114 = getelementptr i8, ptr %113, i32 -12
  %117 = ptrtoint ptr %dnlal114 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %115, ptr %dnlal114, align 4
  br label %cleanup

err_align:                                        ; preds = %do.end98, %do.end83, %do.end61.i231, %do.end38.i212, %do.end48, %do.end61.i, %do.end38.i
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_align, %if.then106, %if.end100.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then106 ], [ 0, %if.end100.cleanup_crit_edge ], [ -22, %err_align ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_dma_list_exec(ptr noundef %list) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry78 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %parent3 = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent3, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %number = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %running = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %running, align 4
  %cmp.i.not = icmp eq ptr %9, %running
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup118

if.else:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %running, ptr noundef %running) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add.exit_crit_edge

if.else.list_add.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.vme_dma_resource, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %running, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %running, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %running, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.else.list_add.exit_crit_edge
  %entries = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 2
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entries, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  %dma_handle = getelementptr i8, ptr %15, i32 8
  %16 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_handle, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr [2 x i32], ptr @TSI148_LCSR_DMA, i32 0, i32 %7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add.ptr8 = getelementptr i8, ptr %19, i32 %21
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %add.ptr15 = getelementptr i8, ptr %23, i32 %21
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %17) #9, !srcloc !349
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %add.ptr19 = getelementptr i8, ptr %25, i32 %21
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  tail call void @arm_heavy_mb() #9
  %or = or i32 %26, 33554432
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %add.ptr28 = getelementptr i8, ptr %28, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %or) #9, !srcloc !349
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1855) #9
  %29 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent3, align 4
  %driver_priv.i = getelementptr inbounds %struct.vme_bridge, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_priv.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 %21
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool38.not.not = icmp eq i32 %36, 0
  br i1 %tobool38.not.not, label %list_add.exit.if.end100_crit_edge, label %if.then39

list_add.exit.if.end100_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then39:                                        ; preds = %list_add.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %37 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %arrayidx41 = getelementptr %struct.tsi148_driver, ptr %5, i32 0, i32 1, i32 %7
  %call42206 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx41, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %38 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent3, align 4
  %driver_priv.i171207 = getelementptr inbounds %struct.vme_bridge, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %driver_priv.i171207 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_priv.i171207, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %add.ptr.i173208 = getelementptr i8, ptr %43, i32 %21
  %add.ptr1.i174209 = getelementptr i8, ptr %add.ptr.i173208, i32 4
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i174209) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %45 = and i32 %44, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool45.not.not210 = icmp eq i32 %45, 0
  br i1 %tobool45.not.not210, label %if.then39.if.end54.thread200_crit_edge, label %if.then39.if.end47_crit_edge

if.then39.if.end47_crit_edge:                     ; preds = %if.then39
  br label %if.end47

if.then39.if.end54.thread200_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.thread200

if.end47:                                         ; preds = %cleanup.if.end47_crit_edge, %if.then39.if.end47_crit_edge
  %call42211 = phi i32 [ %call42, %cleanup.if.end47_crit_edge ], [ %call42206, %if.then39.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42211)
  %tobool48.not = icmp eq i32 %call42211, 0
  br i1 %tobool48.not, label %cleanup, label %do.body58

cleanup:                                          ; preds = %if.end47
  call void @schedule() #9
  %call42 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx41, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %46 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent3, align 4
  %driver_priv.i171 = getelementptr inbounds %struct.vme_bridge, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %driver_priv.i171 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_priv.i171, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %add.ptr.i173 = getelementptr i8, ptr %51, i32 %21
  %add.ptr1.i174 = getelementptr i8, ptr %add.ptr.i173, i32 4
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i174) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %53 = and i32 %52, 16777216
  %tobool45.not.not = icmp eq i32 %53, 0
  br i1 %tobool45.not.not, label %cleanup.if.end54.thread200_crit_edge, label %cleanup.if.end47_crit_edge

cleanup.if.end47_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

cleanup.if.end54.thread200_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.thread200

if.end54.thread200:                               ; preds = %cleanup.if.end54.thread200_crit_edge, %if.then39.if.end54.thread200_crit_edge
  call void @finish_wait(ptr noundef %arrayidx41, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end100

do.body58:                                        ; preds = %if.end47
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  call void @arm_heavy_mb() #9
  %or61 = or i32 %26, 134217728
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  %add.ptr64 = getelementptr i8, ptr %55, i32 %21
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %or61) #9, !srcloc !349
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1862) #9
  %56 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent3, align 4
  %driver_priv.i177 = getelementptr inbounds %struct.vme_bridge, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %driver_priv.i177 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_priv.i177, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %add.ptr.i179 = getelementptr i8, ptr %61, i32 %21
  %add.ptr1.i180 = getelementptr i8, ptr %add.ptr.i179, i32 4
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i180) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool75.not.not = icmp eq i32 %63, 0
  br i1 %tobool75.not.not, label %do.body58.exit_crit_edge, label %if.end77

do.body58.exit_crit_edge:                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end77:                                         ; preds = %do.body58
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry78) #9
  %64 = call ptr @memset(ptr %__wq_entry78, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry78, i32 noundef 0) #9
  %call84212 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx41, ptr noundef nonnull %__wq_entry78, i32 noundef 2) #9
  %65 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent3, align 4
  %driver_priv.i183213 = getelementptr inbounds %struct.vme_bridge, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %driver_priv.i183213 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_priv.i183213, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %add.ptr.i185214 = getelementptr i8, ptr %70, i32 %21
  %add.ptr1.i186215 = getelementptr i8, ptr %add.ptr.i185214, i32 4
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i186215) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %72 = and i32 %71, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool87.not.not216 = icmp eq i32 %72, 0
  br i1 %tobool87.not.not216, label %if.end77.for.end93_crit_edge, label %if.end77.cleanup90_crit_edge

if.end77.cleanup90_crit_edge:                     ; preds = %if.end77
  br label %cleanup90

if.end77.for.end93_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

cleanup90:                                        ; preds = %cleanup90.cleanup90_crit_edge, %if.end77.cleanup90_crit_edge
  call void @schedule() #9
  %call84 = call i32 @prepare_to_wait_event(ptr noundef %arrayidx41, ptr noundef nonnull %__wq_entry78, i32 noundef 2) #9
  %73 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent3, align 4
  %driver_priv.i183 = getelementptr inbounds %struct.vme_bridge, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %driver_priv.i183 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_priv.i183, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %add.ptr.i185 = getelementptr i8, ptr %78, i32 %21
  %add.ptr1.i186 = getelementptr i8, ptr %add.ptr.i185, i32 4
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i186) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  %80 = and i32 %79, 16777216
  %tobool87.not.not = icmp eq i32 %80, 0
  br i1 %tobool87.not.not, label %cleanup90.for.end93_crit_edge, label %cleanup90.cleanup90_crit_edge

cleanup90.cleanup90_crit_edge:                    ; preds = %cleanup90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup90

cleanup90.for.end93_crit_edge:                    ; preds = %cleanup90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.end93:                                        ; preds = %cleanup90.for.end93_crit_edge, %if.end77.for.end93_crit_edge
  call void @finish_wait(ptr noundef %arrayidx41, ptr noundef nonnull %__wq_entry78) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry78) #9
  br label %exit

if.end100:                                        ; preds = %if.end54.thread200, %list_add.exit.if.end100_crit_edge
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %5, align 4
  %add.ptr104 = getelementptr i8, ptr %82, i32 %21
  %add.ptr105 = getelementptr i8, ptr %add.ptr104, i32 4
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  %and = and i32 %83, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool108.not = icmp eq i32 %and, 0
  br i1 %tobool108.not, label %if.end100.exit_crit_edge, label %do.end112

if.end100.exit_crit_edge:                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.end112:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %parent113 = getelementptr inbounds %struct.vme_bridge, ptr %3, i32 0, i32 8
  %84 = ptrtoint ptr %parent113 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent113, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.144, i32 noundef %83) #14
  br label %exit

exit:                                             ; preds = %do.end112, %if.end100.exit_crit_edge, %for.end93, %do.body58.exit_crit_edge
  %retval1.0 = phi i32 [ -5, %do.end112 ], [ 0, %if.end100.exit_crit_edge ], [ -4, %do.body58.exit_crit_edge ], [ -4, %for.end93 ]
  call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %call.i.i189 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i189, label %if.end.i.i190, label %exit.list_del.exit_crit_edge

exit.list_del.exit_crit_edge:                     ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i190:                                    ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i, align 4
  %88 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i190, %exit.list_del.exit_crit_edge
  %92 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup118

cleanup118:                                       ; preds = %list_del.exit, %if.then
  %retval.0 = phi i32 [ %retval1.0, %list_del.exit ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_dma_list_empty(ptr noundef readonly %list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %cmp.i.not15 = icmp eq ptr %1, %entries
  br i1 %cmp.i.not15, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %parent = getelementptr inbounds %struct.vme_dma_list, ptr %list, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %parent2 = getelementptr inbounds %struct.vme_dma_resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent2, align 4
  %parent5 = getelementptr inbounds %struct.vme_bridge, ptr %5, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %pos.016 = phi ptr [ %1, %for.body.lr.ph ], [ %temp.018, %list_del.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %pos.016 to i32
  call void @__asan_load4_noabort(i32 %6)
  %temp.018 = load ptr, ptr %pos.016, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.016) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.016, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %pos.016 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pos.016, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %pos.016 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.016, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.016, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr = getelementptr i8, ptr %pos.016, i32 -40
  %15 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent5, align 4
  %dma_handle = getelementptr i8, ptr %pos.016, i32 8
  %17 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_handle, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %18, i32 noundef 40, i32 noundef 1, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  %cmp.i.not = icmp eq ptr %temp.018, %entries
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi148_irq_set(ptr nocapture noundef readonly %tsi148_bridge, i32 noundef %level, i32 noundef %state, i32 noundef %sync) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 9
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp = icmp eq i32 %state, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 1096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  %sub = add i32 %level, -1
  %arrayidx = getelementptr [7 x i32], ptr @TSI148_LCSR_INTEN_IRQEN, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %4, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !432
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #9, !srcloc !349
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 1100
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !433
  %arrayidx10 = getelementptr [7 x i32], ptr @TSI148_LCSR_INTEO_IRQEO, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %neg11 = xor i32 %13, -1
  %and12 = and i32 %11, %neg11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr17 = getelementptr i8, ptr %15, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %and12) #9, !srcloc !349
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %cmp18.not = icmp eq i32 %sync, 0
  br i1 %cmp18.not, label %if.then.if.end47_crit_edge, label %if.then19

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 8
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 4
  %irq = getelementptr i8, ptr %17, i32 932
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %19) #9
  br label %if.end47

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr24 = getelementptr i8, ptr %3, i32 1100
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  %sub27 = add i32 %level, -1
  %arrayidx28 = getelementptr [7 x i32], ptr @TSI148_LCSR_INTEO_IRQEO, i32 0, i32 %sub27
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %or = or i32 %22, %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %or) #9, !srcloc !349
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %add.ptr36 = getelementptr i8, ptr %26, i32 1096
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  %arrayidx40 = getelementptr [7 x i32], ptr @TSI148_LCSR_INTEN_IRQEN, i32 0, i32 %sub27
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40, align 4
  %or41 = or i32 %29, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr46 = getelementptr i8, ptr %31, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %or41) #9, !srcloc !349
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then19, %if.then.if.end47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_irq_generate(ptr nocapture noundef readonly %tsi148_bridge, i32 noundef %level, i32 noundef %statid) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 9
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %vme_int = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %vme_int, i32 noundef 0) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1088
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  %and = and i32 %4, -256
  %and2 = and i32 %statid, 255
  %or = or i32 %and, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #9, !srcloc !349
  %arrayidx = getelementptr [8 x i32], ptr @TSI148_LCSR_VICR_IRQL, i32 0, i32 %level
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %or5 = or i32 %8, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %or5) #9, !srcloc !349
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 461) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1088
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  %14 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.not = icmp eq i32 %14, 0
  br i1 %tobool.not.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %iack_queue = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 2
  %call1954 = call i32 @prepare_to_wait_event(ptr noundef %iack_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i4555 = getelementptr i8, ptr %17, i32 1088
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4555) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  %19 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not.not56 = icmp eq i32 %19, 0
  br i1 %tobool21.not.not56, label %if.then.for.end_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call1957 = phi i32 [ %call19, %cleanup.if.end_crit_edge ], [ %call1954, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1957)
  %tobool23.not = icmp eq i32 %call1957, 0
  br i1 %tobool23.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #9
  %call19 = call i32 @prepare_to_wait_event(ptr noundef %iack_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 1088
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #9, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  %23 = and i32 %22, 2048
  %tobool21.not.not = icmp eq i32 %23, 0
  br i1 %tobool21.not.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %iack_queue, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end28

if.end28:                                         ; preds = %__out, %entry.if.end28_crit_edge
  call void @mutex_unlock(ptr noundef %vme_int) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_lm_set(ptr noundef %lm, i64 noundef %lm_base, i32 noundef %aspace, i32 noundef %cycle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %monitors = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 5
  %4 = ptrtoint ptr %monitors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp75 = icmp sgt i32 %5, 0
  br i1 %cmp75, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.076 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tsi148_driver, ptr %3, i32 0, i32 3, i32 %i.076
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  %parent2 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.146) #14
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %switch.tableidx = add i32 %aspace, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 8
  br i1 %10, label %switch.hole_check, label %for.end.sw.default_crit_edge

for.end.sw.default_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %for.end.sw.default_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  %parent13 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %parent13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.74) #14
  br label %cleanup

switch.hole_check:                                ; preds = %for.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.tsi148_lm_set, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and = lshr i32 %cycle, 9
  %15 = and i32 %and, 8
  %and18 = lshr i32 %cycle, 11
  %16 = and i32 %and18, 4
  %and23 = lshr i32 %cycle, 13
  %17 = and i32 %and23, 2
  %and28 = lshr i32 %cycle, 15
  %18 = and i32 %and28, 1
  %19 = or i32 %16, %15
  %20 = or i32 %19, %17
  %21 = or i32 %20, %18
  %22 = or i32 %21, %switch.load
  %conv.i = trunc i64 %lm_base to i32
  %shr.i = lshr i64 %lm_base, 32
  %conv1.i = trunc i64 %shr.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv1.i) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %add.ptr40 = getelementptr i8, ptr %26, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %conv.i) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr45 = getelementptr i8, ptr %28, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %22) #9, !srcloc !349
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.default, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -22, %sw.default ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_lm_get(ptr noundef %lm, ptr nocapture noundef writeonly %lm_base, ptr nocapture noundef %aspace, ptr nocapture noundef %cycle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1060
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %add.ptr3 = getelementptr i8, ptr %8, i32 1064
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !447
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 1068
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !448
  %conv.i = zext i32 %6 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %9 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %13 = ptrtoint ptr %lm_base to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.i, ptr %lm_base, align 8
  %and11 = and i32 %12, 112
  %14 = lshr exact i32 %and11, 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %14, label %entry.if.end28_crit_edge [
    i32 0, label %if.then12
    i32 1, label %if.then16
    i32 2, label %if.then21
    i32 4, label %entry.if.then26_crit_edge
  ]

entry.if.then26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then12:                                        ; preds = %entry
  %16 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aspace, align 4
  %or = or i32 %17, 1
  store i32 %or, ptr %aspace, align 4
  %18 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %and11, label %if.then12.if.end28_crit_edge [
    i32 16, label %if.then12.if.end28.sink.split_crit_edge
    i32 32, label %if.then12.if.then21.thread_crit_edge
    i32 64, label %if.then12.if.then26_crit_edge
  ]

if.then12.if.then26_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then12.if.then21.thread_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.thread

if.then12.if.end28.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split

if.then12.if.end28_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then16:                                        ; preds = %entry
  %19 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %aspace, align 4
  %or17 = or i32 %20, 2
  store i32 %or17, ptr %aspace, align 4
  %21 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %and11, label %if.then16.if.end28_crit_edge [
    i32 32, label %if.then16.if.then21.thread_crit_edge
    i32 64, label %if.then16.if.then26_crit_edge
  ]

if.then16.if.then26_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then16.if.then21.thread_crit_edge:             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.thread

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then21.thread:                                 ; preds = %if.then16.if.then21.thread_crit_edge, %if.then12.if.then21.thread_crit_edge
  br label %if.end28.sink.split

if.then21:                                        ; preds = %entry
  %22 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aspace, align 4
  %or22 = or i32 %23, 4
  store i32 %or22, ptr %aspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and11)
  %cmp25 = icmp eq i32 %and11, 64
  br i1 %cmp25, label %if.then21.if.then26_crit_edge, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then21.if.then26_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %if.then21.if.then26_crit_edge, %if.then16.if.then26_crit_edge, %if.then12.if.then26_crit_edge, %entry.if.then26_crit_edge
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.then26, %if.then21.thread, %if.then12.if.end28.sink.split_crit_edge
  %.sink71 = phi i32 [ 4, %if.then21.thread ], [ 8, %if.then26 ], [ 2, %if.then12.if.end28.sink.split_crit_edge ]
  %24 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aspace, align 4
  %or2269 = or i32 %25, %.sink71
  store i32 %or2269, ptr %aspace, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.then21.if.end28_crit_edge, %if.then16.if.end28_crit_edge, %if.then12.if.end28_crit_edge, %entry.if.end28_crit_edge
  %and29 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end33_crit_edge, label %if.then31

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cycle, align 4
  %or32 = or i32 %27, 4096
  store i32 %or32, ptr %cycle, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  %and34 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cycle, align 4
  %or37 = or i32 %29, 8192
  store i32 %or37, ptr %cycle, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  %and39 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cycle, align 4
  %or42 = or i32 %31, 16384
  store i32 %or42, ptr %cycle, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  %and44 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end48_crit_edge, label %if.then46

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cycle, align 4
  %or47 = or i32 %33, 32768
  store i32 %or47, ptr %cycle, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end43.if.end48_crit_edge
  %and = lshr i32 %12, 7
  %and.lobit = and i32 %and, 1
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_lm_attach(ptr noundef %lm, i32 noundef %monitor, ptr noundef %callback, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1068
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  %parent3 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.150) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.tsi148_driver, ptr %3, i32 0, i32 3, i32 %monitor
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  %parent9 = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.153) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %callback, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.tsi148_driver, ptr %3, i32 0, i32 4, i32 %monitor
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data, ptr %arrayidx13, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr16 = getelementptr i8, ptr %16, i32 1096
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  %arrayidx19 = getelementptr [4 x i32], ptr @TSI148_LCSR_INTEN_LMEN, i32 0, i32 %monitor
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx19, align 4
  %or = or i32 %19, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !451
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr24 = getelementptr i8, ptr %21, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or) #9, !srcloc !349
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 1100
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !452
  %arrayidx30 = getelementptr [4 x i32], ptr @TSI148_LCSR_INTEO_LMEO, i32 0, i32 %monitor
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx30, align 4
  %or31 = or i32 %26, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr36 = getelementptr i8, ptr %28, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %or31) #9, !srcloc !349
  %and37 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then39, label %if.end10.if.end46_crit_edge

if.end10.if.end46_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then39:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %or40 = or i32 %6, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !454
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %add.ptr45 = getelementptr i8, ptr %30, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %or40) #9, !srcloc !349
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end10.if.end46_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -16, %if.then4 ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_lm_detach(ptr noundef %lm, i32 noundef %monitor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %mtx = getelementptr inbounds %struct.vme_lm_resource, ptr %lm, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1096
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !455
  %arrayidx = getelementptr [4 x i32], ptr @TSI148_LCSR_INTEN_LMEN, i32 0, i32 %monitor
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %8, -1
  %and = and i32 %6, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !456
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %and) #9, !srcloc !349
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 1100
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !457
  %arrayidx9 = getelementptr [4 x i32], ptr @TSI148_LCSR_INTEO_LMEO, i32 0, i32 %monitor
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %neg10 = xor i32 %15, -1
  %and11 = and i32 %13, %neg10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !458
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr16 = getelementptr i8, ptr %17, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %and11) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !459
  tail call void @arm_heavy_mb() #9
  %arrayidx20 = getelementptr [4 x i32], ptr @TSI148_LCSR_INTC_LMC, i32 0, i32 %monitor
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %19) #9, !srcloc !349
  %arrayidx23 = getelementptr %struct.tsi148_driver, ptr %3, i32 0, i32 3, i32 %monitor
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr %struct.tsi148_driver, ptr %3, i32 0, i32 4, i32 %monitor
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx24, align 4
  %and25 = and i32 %and, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp = icmp eq i32 %and25, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 1068
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !460
  %and31 = and i32 %26, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr36 = getelementptr i8, ptr %28, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %and31) #9, !srcloc !349
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_slot_get(ptr nocapture noundef readonly %tsi148_bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @geoid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 9
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_priv, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 572
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !462
  %and = and i32 %5, 31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %slot.0 = phi i32 [ %and, %if.then ], [ %0, %entry.if.end_crit_edge ]
  ret i32 %slot.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tsi148_alloc_consistent(ptr noundef %parent, i32 noundef %size, ptr noundef %dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %parent, i32 noundef %size, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #9
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tsi148_free_consistent(ptr noundef %parent, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dma_free_attrs(ptr noundef %parent, i32 noundef %size, ptr noundef %vaddr, i32 noundef %dma, i32 noundef 0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tsi148_crcsr_init(ptr nocapture noundef readonly %tsi148_bridge, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 9
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %crcsr_bus = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 520192, ptr noundef %crcsr_bus, i32 noundef 3264, i32 noundef 0) #9
  %crcsr_kernel = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %crcsr_kernel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %crcsr_kernel, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %crcsr_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %crcsr_bus, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !464
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %4) #9, !srcloc !349
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 4092
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !465
  %and = lshr i32 %11, 3
  %shr = and i32 %and, 31
  %12 = load i32, ptr @geoid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.tsi148_slot_get.exit_crit_edge

if.end.tsi148_slot_get.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi148_slot_get.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_priv, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 572
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !462
  %and.i = and i32 %17, 31
  br label %tsi148_slot_get.exit

tsi148_slot_get.exit:                             ; preds = %if.then.i, %if.end.tsi148_slot_get.exit_crit_edge
  %slot.0.i = phi i32 [ %and.i, %if.then.i ], [ %12, %if.end.tsi148_slot_get.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %slot.0.i)
  %cmp.not = icmp eq i32 %shr, %slot.0.i
  br i1 %cmp.not, label %tsi148_slot_get.exit.do.end30_crit_edge, label %if.then17

tsi148_slot_get.exit.do.end30_crit_edge:          ; preds = %tsi148_slot_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then17:                                        ; preds = %tsi148_slot_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  %parent21 = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 8
  %18 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.158) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  tail call void @arm_heavy_mb() #9
  %shl = shl i32 %slot.0.i, 3
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 4092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %shl) #9, !srcloc !349
  br label %do.end30

do.end30:                                         ; preds = %if.then17, %tsi148_slot_get.exit.do.end30_crit_edge
  %cbar.0 = phi i32 [ %slot.0.i, %if.then17 ], [ %shr, %tsi148_slot_get.exit.do.end30_crit_edge ]
  %parent31 = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 8
  %22 = ptrtoint ptr %parent31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent31, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.161, i32 noundef %cbar.0) #14
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr34 = getelementptr i8, ptr %25, i32 1056
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  %and37 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %27 = ptrtoint ptr %parent31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent31, align 4
  br i1 %tobool38.not, label %do.end46, label %do.end42

do.end42:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.164) #14
  br label %if.end53

do.end46:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.167) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  tail call void @arm_heavy_mb() #9
  %or = or i32 %26, 128
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %add.ptr52 = getelementptr i8, ptr %30, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %or) #9, !srcloc !349
  br label %if.end53

if.end53:                                         ; preds = %do.end46, %do.end42
  %31 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool54.not = icmp eq i8 %31, 0
  br i1 %tobool54.not, label %if.end53.cleanup_crit_edge, label %if.then55

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.end53
  %flush_image = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %flush_image to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %flush_image, align 4
  %mul = shl i32 %slot.0.i, 19
  %conv56 = zext i32 %mul to i64
  %call57 = tail call i32 @tsi148_master_set(ptr noundef %33, i32 noundef 1, i64 noundef %conv56, i64 noundef 524288, i32 noundef 16, i32 noundef 1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then55.cleanup_crit_edge, label %if.then55.cleanup.sink.split_crit_edge

if.then55.cleanup.sink.split_crit_edge:           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then55.cleanup.sink.split_crit_edge, %do.end
  %parent31.sink = phi ptr [ %parent, %do.end ], [ %parent31, %if.then55.cleanup.sink.split_crit_edge ]
  %.str.170.sink = phi ptr [ @.str.155, %do.end ], [ @.str.170, %if.then55.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %do.end ], [ 0, %if.then55.cleanup.sink.split_crit_edge ]
  %34 = ptrtoint ptr %parent31.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent31.sink, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull %.str.170.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then55.cleanup_crit_edge, %if.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then55.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vme_register_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tsi148_crcsr_exit(ptr nocapture noundef readonly %tsi148_bridge, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %tsi148_bridge, i32 0, i32 9
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1056
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  tail call void @arm_heavy_mb() #9
  %and = and i32 %4, -129
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %and) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #9, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #9, !srcloc !349
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %crcsr_kernel = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %crcsr_kernel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crcsr_kernel, align 4
  %crcsr_bus = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %crcsr_bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crcsr_bus, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 520192, ptr noundef %12, i32 noundef %14, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tsi148_irqhandler(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %ptr, i32 0, i32 9
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !469
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 1104
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  %and = and i32 %7, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !471

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and9 = and i32 %and, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end
  %and.i = and i32 %and, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then11.if.end.i_crit_edge, label %if.then.i

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %dma_queue.i = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %dma_queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then11.if.end.i_crit_edge
  %serviced.0.i = phi i32 [ 16777216, %if.then.i ], [ 0, %if.then11.if.end.i_crit_edge ]
  %and1.i = and i32 %and, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end13_crit_edge, label %if.then3.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx5.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 1, i32 1
  tail call void @__wake_up(ptr noundef %arrayidx5.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %or6.i = or i32 %serviced.0.i, 33554432
  br label %if.end13

if.end13:                                         ; preds = %if.then3.i, %if.end.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %serviced.0 = phi i32 [ 0, %if.end.if.end13_crit_edge ], [ %or6.i, %if.then3.i ], [ %serviced.0.i, %if.end.i.if.end13_crit_edge ]
  %and14 = and i32 %and, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  %and.i84 = and i32 %and, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %if.then16.for.inc.i_crit_edge, label %if.then.i86

if.then16.for.inc.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i86:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 3, i32 0
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.i, align 4
  tail call void %9(ptr noundef %11) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i86, %if.then16.for.inc.i_crit_edge
  %serviced.1.i87 = phi i32 [ 1048576, %if.then.i86 ], [ 0, %if.then16.for.inc.i_crit_edge ]
  %and.1.i = and i32 %and, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.1.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.1.i, align 4
  %arrayidx2.1.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.1.i, align 4
  tail call void %13(ptr noundef %15) #9
  %or.1.i = or i32 %serviced.1.i87, 2097152
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %serviced.1.1.i = phi i32 [ %or.1.i, %if.then.1.i ], [ %serviced.1.i87, %for.inc.i.for.inc.1.i_crit_edge ]
  %and.2.i = and i32 %and, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.2.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.2.i, align 4
  %arrayidx2.2.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.2.i, align 4
  tail call void %17(ptr noundef %19) #9
  %or.2.i = or i32 %serviced.1.1.i, 4194304
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %serviced.1.2.i = phi i32 [ %or.2.i, %if.then.2.i ], [ %serviced.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %and.3.i = and i32 %and, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.tsi148_LM_irqhandler.exit_crit_edge, label %if.then.3.i

for.inc.2.i.tsi148_LM_irqhandler.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi148_LM_irqhandler.exit

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.3.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1.3.i, align 4
  %arrayidx2.3.i = getelementptr %struct.tsi148_driver, ptr %1, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.3.i, align 4
  tail call void %21(ptr noundef %23) #9
  %or.3.i = or i32 %serviced.1.2.i, 8388608
  br label %tsi148_LM_irqhandler.exit

tsi148_LM_irqhandler.exit:                        ; preds = %if.then.3.i, %for.inc.2.i.tsi148_LM_irqhandler.exit_crit_edge
  %serviced.1.3.i = phi i32 [ %or.3.i, %if.then.3.i ], [ %serviced.1.2.i, %for.inc.2.i.tsi148_LM_irqhandler.exit_crit_edge ]
  %or18 = or i32 %serviced.1.3.i, %serviced.0
  br label %if.end19

if.end19:                                         ; preds = %tsi148_LM_irqhandler.exit, %if.end13.if.end19_crit_edge
  %serviced.1 = phi i32 [ %or18, %tsi148_LM_irqhandler.exit ], [ %serviced.0, %if.end13.if.end19_crit_edge ]
  %and20 = and i32 %and, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  %24 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_priv, align 4
  %parent.i = getelementptr inbounds %struct.vme_bridge, ptr %ptr, i32 0, i32 8
  %and.i88 = and i32 %and, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.not.i89 = icmp eq i32 %and.i88, 0
  br i1 %tobool.not.i89, label %if.then22.for.inc.i94_crit_edge, label %if.then.i90

if.then22.for.inc.i94_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i94

if.then.i90:                                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 1552
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !472
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.62, i32 noundef 0, i32 noundef %28) #14
  br label %for.inc.i94

for.inc.i94:                                      ; preds = %if.then.i90, %if.then22.for.inc.i94_crit_edge
  %serviced.1.i91 = phi i32 [ 65536, %if.then.i90 ], [ 0, %if.then22.for.inc.i94_crit_edge ]
  %and.1.i92 = and i32 %and, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i92)
  %tobool.not.1.i93 = icmp eq i32 %and.1.i92, 0
  br i1 %tobool.not.1.i93, label %for.inc.i94.for.inc.1.i100_crit_edge, label %if.then.1.i96

for.inc.i94.for.inc.1.i100_crit_edge:             ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i100

if.then.1.i96:                                    ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %25, align 4
  %add.ptr.1.i = getelementptr i8, ptr %32, i32 1556
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !472
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef %33) #14
  %or.1.i95 = or i32 %serviced.1.i91, 131072
  br label %for.inc.1.i100

for.inc.1.i100:                                   ; preds = %if.then.1.i96, %for.inc.i94.for.inc.1.i100_crit_edge
  %serviced.1.1.i97 = phi i32 [ %or.1.i95, %if.then.1.i96 ], [ %serviced.1.i91, %for.inc.i94.for.inc.1.i100_crit_edge ]
  %and.2.i98 = and i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i98)
  %tobool.not.2.i99 = icmp eq i32 %and.2.i98, 0
  br i1 %tobool.not.2.i99, label %for.inc.1.i100.for.inc.2.i106_crit_edge, label %if.then.2.i102

for.inc.1.i100.for.inc.2.i106_crit_edge:          ; preds = %for.inc.1.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i106

if.then.2.i102:                                   ; preds = %for.inc.1.i100
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %25, align 4
  %add.ptr.2.i = getelementptr i8, ptr %37, i32 1560
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !472
  %39 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.62, i32 noundef 2, i32 noundef %38) #14
  %or.2.i101 = or i32 %serviced.1.1.i97, 262144
  br label %for.inc.2.i106

for.inc.2.i106:                                   ; preds = %if.then.2.i102, %for.inc.1.i100.for.inc.2.i106_crit_edge
  %serviced.1.2.i103 = phi i32 [ %or.2.i101, %if.then.2.i102 ], [ %serviced.1.1.i97, %for.inc.1.i100.for.inc.2.i106_crit_edge ]
  %and.3.i104 = and i32 %and, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i104)
  %tobool.not.3.i105 = icmp eq i32 %and.3.i104, 0
  br i1 %tobool.not.3.i105, label %for.inc.2.i106.tsi148_MB_irqhandler.exit_crit_edge, label %if.then.3.i108

for.inc.2.i106.tsi148_MB_irqhandler.exit_crit_edge: ; preds = %for.inc.2.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi148_MB_irqhandler.exit

if.then.3.i108:                                   ; preds = %for.inc.2.i106
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %25, align 4
  %add.ptr.3.i = getelementptr i8, ptr %42, i32 1564
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !472
  %44 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.62, i32 noundef 3, i32 noundef %43) #14
  %or.3.i107 = or i32 %serviced.1.2.i103, 524288
  br label %tsi148_MB_irqhandler.exit

tsi148_MB_irqhandler.exit:                        ; preds = %if.then.3.i108, %for.inc.2.i106.tsi148_MB_irqhandler.exit_crit_edge
  %serviced.1.3.i109 = phi i32 [ %or.3.i107, %if.then.3.i108 ], [ %serviced.1.2.i103, %for.inc.2.i106.tsi148_MB_irqhandler.exit_crit_edge ]
  %or24 = or i32 %serviced.1.3.i109, %serviced.1
  br label %if.end25

if.end25:                                         ; preds = %tsi148_MB_irqhandler.exit, %if.end19.if.end25_crit_edge
  %serviced.2 = phi i32 [ %or24, %tsi148_MB_irqhandler.exit ], [ %serviced.1, %if.end19.if.end25_crit_edge ]
  %and26 = and i32 %and, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_priv, align 4
  %parent.i111 = getelementptr inbounds %struct.vme_bridge, ptr %ptr, i32 0, i32 8
  %48 = ptrtoint ptr %parent.i111 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i111, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %add.ptr.i112 = getelementptr i8, ptr %51, i32 624
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %47, align 4
  %add.ptr3.i = getelementptr i8, ptr %54, i32 628
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !474
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %47, align 4
  %add.ptr8.i = getelementptr i8, ptr %57, i32 640
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !475
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.64, i32 noundef %52, i32 noundef %55, i32 noundef %58) #14
  %59 = ptrtoint ptr %parent.i111 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i111, align 4
  %61 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %47, align 4
  %add.ptr17.i = getelementptr i8, ptr %62, i32 632
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !476
  %64 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %47, align 4
  %add.ptr22.i = getelementptr i8, ptr %65, i32 636
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !477
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.67, i32 noundef %63, i32 noundef %66) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %47, align 4
  %add.ptr29.i = getelementptr i8, ptr %68, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 536870912) #9, !srcloc !349
  %or30 = or i32 %serviced.2, 8192
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %serviced.3 = phi i32 [ %or30, %if.then28 ], [ %serviced.2, %if.end25.if.end31_crit_edge ]
  %and32 = and i32 %and, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  %69 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_priv, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %add.ptr.i114 = getelementptr i8, ptr %72, i32 608
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %70, align 4
  %add.ptr3.i115 = getelementptr i8, ptr %75, i32 612
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i115) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %70, align 4
  %add.ptr8.i116 = getelementptr i8, ptr %78, i32 616
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i116) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  %and.i117 = lshr i32 %79, 8
  %shr.i = and i32 %and.i117, 63
  %conv.i.i = zext i32 %73 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  %conv1.i.i = zext i32 %76 to i64
  %or.i.i = or i64 %shl.i.i, %conv1.i.i
  %and11.i = and i32 %79, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i118 = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i118, label %if.then34.if.end.i120_crit_edge, label %do.end.i

if.then34.if.end.i120_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i120

do.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i119 = getelementptr inbounds %struct.vme_bridge, ptr %ptr, i32 0, i32 8
  %80 = ptrtoint ptr %parent.i119 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent.i119, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.69) #14
  br label %if.end.i120

if.end.i120:                                      ; preds = %do.end.i, %if.then34.if.end.i120_crit_edge
  %82 = load i8, ptr @err_chk, align 1, !range !351
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool12.not.i = icmp eq i8 %82, 0
  br i1 %tobool12.not.i, label %do.end16.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vme_bus_error_handler(ptr noundef %ptr, i64 noundef %or.i.i, i32 noundef %shr.i) #9
  br label %tsi148_VERR_irqhandler.exit

do.end16.i:                                       ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  %parent17.i = getelementptr inbounds %struct.vme_bridge, ptr %ptr, i32 0, i32 8
  %83 = ptrtoint ptr %parent17.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %parent17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.72, i64 noundef %or.i.i, i32 noundef %79) #14
  br label %tsi148_VERR_irqhandler.exit

tsi148_VERR_irqhandler.exit:                      ; preds = %do.end16.i, %if.then13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !482
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %70, align 4
  %add.ptr23.i = getelementptr i8, ptr %86, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 536870912) #9, !srcloc !349
  %or36 = or i32 %serviced.3, 4096
  br label %if.end37

if.end37:                                         ; preds = %tsi148_VERR_irqhandler.exit, %if.end31.if.end37_crit_edge
  %serviced.4 = phi i32 [ %or36, %tsi148_VERR_irqhandler.exit ], [ %serviced.3, %if.end31.if.end37_crit_edge ]
  %and38 = and i32 %and, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %iack_queue.i = getelementptr inbounds %struct.tsi148_driver, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %iack_queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %or42 = or i32 %serviced.4, 1024
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %serviced.5 = phi i32 [ %or42, %if.then40 ], [ %serviced.4, %if.end37.if.end43_crit_edge ]
  %and44 = and i32 %and, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.do.body_crit_edge, label %if.then46

if.end43.do.body_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then46:                                        ; preds = %if.end43
  %87 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver_priv, align 4
  %and.i122 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i123, label %if.then46.for.inc.i128_crit_edge, label %if.then.i124

if.then46.for.inc.i128_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i128

if.then.i124:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %add.ptr1.i = getelementptr i8, ptr %90, i32 543
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #9, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %conv.i = zext i8 %91 to i32
  tail call void @vme_irq_handler(ptr noundef %ptr, i32 noundef 7, i32 noundef %conv.i) #9
  br label %for.inc.i128

for.inc.i128:                                     ; preds = %if.then.i124, %if.then46.for.inc.i128_crit_edge
  %serviced.1.i125 = phi i32 [ 128, %if.then.i124 ], [ 0, %if.then46.for.inc.i128_crit_edge ]
  %and.1.i126 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i126)
  %tobool.not.1.i127 = icmp eq i32 %and.1.i126, 0
  br i1 %tobool.not.1.i127, label %for.inc.i128.for.inc.1.i134_crit_edge, label %if.then.1.i130

for.inc.i128.for.inc.1.i134_crit_edge:            ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i134

if.then.1.i130:                                   ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %88, align 4
  %add.ptr1.1.i = getelementptr i8, ptr %93, i32 539
  %94 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.1.i) #9, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %conv.1.i = zext i8 %94 to i32
  tail call void @vme_irq_handler(ptr noundef %ptr, i32 noundef 6, i32 noundef %conv.1.i) #9
  %or.1.i129 = or i32 %serviced.1.i125, 64
  br label %for.inc.1.i134

for.inc.1.i134:                                   ; preds = %if.then.1.i130, %for.inc.i128.for.inc.1.i134_crit_edge
  %serviced.1.1.i131 = phi i32 [ %or.1.i129, %if.then.1.i130 ], [ %serviced.1.i125, %for.inc.i128.for.inc.1.i134_crit_edge ]
  %and.2.i132 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i132)
  %tobool.not.2.i133 = icmp eq i32 %and.2.i132, 0
  br i1 %tobool.not.2.i133, label %for.inc.1.i134.for.inc.2.i140_crit_edge, label %if.then.2.i136

for.inc.1.i134.for.inc.2.i140_crit_edge:          ; preds = %for.inc.1.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i140

if.then.2.i136:                                   ; preds = %for.inc.1.i134
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %88, align 4
  %add.ptr1.2.i = getelementptr i8, ptr %96, i32 535
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.2.i) #9, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %conv.2.i = zext i8 %97 to i32
  tail call void @vme_irq_handler(ptr noundef %ptr, i32 noundef 5, i32 noundef %conv.2.i) #9
  %or.2.i135 = or i32 %serviced.1.1.i131, 32
  br label %for.inc.2.i140

for.inc.2.i140:                                   ; preds = %if.then.2.i136, %for.inc.1.i134.for.inc.2.i140_crit_edge
  %serviced.1.2.i137 = phi i32 [ %or.2.i135, %if.then.2.i136 ], [ %serviced.1.1.i131, %for.inc.1.i134.for.inc.2.i140_crit_edge ]
  %and.3.i138 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i138)
  %tobool.not.3.i139 = icmp eq i32 %and.3.i138, 0
  br i1 %tobool.not.3.i139, label %for.inc.2.i140.for.inc.3.i_crit_edge, label %if.then.3.i142

for.inc.2.i140.for.inc.3.i_crit_edge:             ; preds = %for.inc.2.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.then.3.i142:                                   ; preds = %for.inc.2.i140
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %88, align 4
  %add.ptr1.3.i = getelementptr i8, ptr %99, i32 531
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.3.i) #9, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %conv.3.i = zext i8 %100 to i32
  tail call void @vme_irq_handler(ptr noundef %ptr, i32 noundef 4, i32 noundef %conv.3.i) #9
  %or.3.i141 = or i32 %serviced.1.2.i137, 16
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i142, %for.inc.2.i140.for.inc.3.i_crit_edge
  %serviced.1.3.i143 = phi i32 [ %or.3.i141, %if.then.3.i142 ], [ %serviced.1.2.i137, %for.inc.2.i140.for.inc.3.i_crit_edge ]
  %and.4.i = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %88, align 4
  %add.ptr1.4.i = getelementptr i8, ptr %102, i32 527
  %103 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.4.i) #9, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %conv.4.i = zext i8 %103 to i32
  tail call void @vme_irq_handler(ptr noundef %ptr, i32 noundef 3, i32 noundef %conv.4.i) #9
  %or.4.i = or i32 %serviced.1.3.i143, 8
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %serviced.1.4.i = phi i32 [ %or.4.i, %if.then.4.i ], [ %serviced.1.3.i143, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %and.5.i = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %88, align 4
  %add.ptr1.5.i = getelementptr i8, ptr %105, i32 523
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.5.i) #9, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %conv.5.i = zext i8 %106 to i32
  tail call void @vme_irq_handler(ptr noundef %ptr, i32 noundef 2, i32 noundef %conv.5.i) #9
  %or.5.i = or i32 %serviced.1.4.i, 4
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %serviced.1.5.i = phi i32 [ %or.5.i, %if.then.5.i ], [ %serviced.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %and.6.i = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.tsi148_VIRQ_irqhandler.exit_crit_edge, label %if.then.6.i

for.inc.5.i.tsi148_VIRQ_irqhandler.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tsi148_VIRQ_irqhandler.exit

if.then.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %88, align 4
  %add.ptr1.6.i = getelementptr i8, ptr %108, i32 519
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.6.i) #9, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %conv.6.i = zext i8 %109 to i32
  tail call void @vme_irq_handler(ptr noundef %ptr, i32 noundef 1, i32 noundef %conv.6.i) #9
  %or.6.i = or i32 %serviced.1.5.i, 2
  br label %tsi148_VIRQ_irqhandler.exit

tsi148_VIRQ_irqhandler.exit:                      ; preds = %if.then.6.i, %for.inc.5.i.tsi148_VIRQ_irqhandler.exit_crit_edge
  %serviced.1.6.i = phi i32 [ %or.6.i, %if.then.6.i ], [ %serviced.1.5.i, %for.inc.5.i.tsi148_VIRQ_irqhandler.exit_crit_edge ]
  %or48 = or i32 %serviced.1.6.i, %serviced.5
  br label %do.body

do.body:                                          ; preds = %tsi148_VIRQ_irqhandler.exit, %if.end43.do.body_crit_edge
  %serviced.6 = phi i32 [ %or48, %tsi148_VIRQ_irqhandler.exit ], [ %serviced.5, %if.end43.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !483
  tail call void @arm_heavy_mb() #9
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %add.ptr51 = getelementptr i8, ptr %111, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %serviced.6) #9, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_bus_error_handler(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_irq_handler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tsi148_master_get(ptr nocapture noundef readonly %image, ptr nocapture noundef writeonly %enabled, ptr nocapture noundef writeonly %vme_base, ptr nocapture noundef writeonly %size, ptr nocapture noundef %aspace, ptr noundef %cycle, ptr nocapture noundef writeonly %dwidth) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_priv = getelementptr inbounds %struct.vme_bridge, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %number = getelementptr inbounds %struct.vme_master_resource, ptr %image, i32 0, i32 4
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr [8 x i32], ptr @TSI148_LCSR_OT, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !484
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 %9
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr19 = getelementptr i8, ptr %18, i32 %9
  %add.ptr20 = getelementptr i8, ptr %add.ptr19, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !487
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 %9
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 %9
  %add.ptr34 = getelementptr i8, ptr %add.ptr33, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr40 = getelementptr i8, ptr %27, i32 %9
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !490
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %conv1.i = zext i32 %16 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %conv.i2 = zext i32 %19 to i64
  %shl.i3 = shl nuw i64 %conv.i2, 32
  %conv1.i4 = zext i32 %22 to i64
  %conv.i6 = zext i32 %25 to i64
  %shl.i7 = shl nuw i64 %conv.i6, 32
  %conv1.i8 = zext i32 %28 to i64
  %or.i9 = add i64 %shl.i7, %or.i
  %add = add i64 %or.i9, %conv1.i8
  %29 = ptrtoint ptr %vme_base to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add, ptr %vme_base, align 8
  %or.i5 = sub i64 65536, %or.i
  %sub = add i64 %or.i5, %shl.i3
  %add44 = add i64 %sub, %conv1.i4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add44, ptr %size, align 8
  %31 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %enabled, align 4
  %32 = ptrtoint ptr %aspace to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %aspace, align 4
  %33 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cycle, align 4
  %34 = ptrtoint ptr %dwidth to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not = icmp sgt i32 %10, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and45 = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and45)
  %36 = icmp ult i32 %and45, 12
  br i1 %36, label %switch.hole_check, label %if.end.if.end87_crit_edge

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %and45 to i16
  %switch.shifted = lshr i16 3895, %switch.maskindex
  %37 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %switch.lobit.not = icmp eq i16 %37, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end87_crit_edge, label %switch.lookup

switch.hole_check.if.end87_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.__tsi148_master_get, i32 0, i32 %and45
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %39 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %aspace, align 4
  %or81 = or i32 %40, %switch.load
  store i32 %or81, ptr %aspace, align 4
  br label %if.end87

if.end87:                                         ; preds = %switch.lookup, %switch.hole_check.if.end87_crit_edge, %if.end.if.end87_crit_edge
  %and88 = and i32 %10, 14336
  %41 = zext i32 %and88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %and88, label %if.end87.if.end102_crit_edge [
    i32 0, label %if.end87.if.end102.sink.split_crit_edge
    i32 2048, label %if.then95
    i32 4096, label %if.then100
  ]

if.end87.if.end102.sink.split_crit_edge:          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.sink.split

if.end87.if.end102_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.sink.split

if.then100:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %if.then100, %if.then95, %if.end87.if.end102.sink.split_crit_edge
  %.sink14 = phi i32 [ 512, %if.then95 ], [ 1024, %if.then100 ], [ 256, %if.end87.if.end102.sink.split_crit_edge ]
  %42 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cycle, align 4
  %or96 = or i32 %43, %.sink14
  store i32 %or96, ptr %cycle, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %if.end87.if.end102_crit_edge
  %and103 = and i32 %10, 1792
  %44 = lshr exact i32 %and103, 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %44, label %if.end102.if.end132_crit_edge [
    i32 0, label %if.then105
    i32 1, label %if.end102.if.then110_crit_edge
    i32 2, label %if.end102.if.then115_crit_edge
    i32 3, label %if.end102.if.then120_crit_edge
    i32 4, label %if.end102.if.then125_crit_edge
    i32 5, label %if.end102.if.then130_crit_edge
  ]

if.end102.if.then130_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.end102.if.then125_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then125

if.end102.if.then120_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then120

if.end102.if.then115_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

if.end102.if.then110_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

if.end102.if.end132_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then105:                                       ; preds = %if.end102
  %46 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cycle, align 4
  %or106 = or i32 %47, 1
  store i32 %or106, ptr %cycle, align 4
  %48 = add nsw i32 %and103, -256
  %49 = lshr exact i32 %48, 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %49, label %if.then105.if.end132_crit_edge [
    i32 0, label %if.then105.if.then110_crit_edge
    i32 1, label %if.then105.if.then115_crit_edge
    i32 2, label %if.then105.if.then120_crit_edge
    i32 3, label %if.then105.if.then125_crit_edge
    i32 4, label %if.then105.if.then130_crit_edge
  ]

if.then105.if.then130_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.then105.if.then125_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then125

if.then105.if.then120_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then120

if.then105.if.then115_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

if.then105.if.then110_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then110

if.then105.if.end132_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then110:                                       ; preds = %if.then105.if.then110_crit_edge, %if.end102.if.then110_crit_edge
  %51 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cycle, align 4
  %or111 = or i32 %52, 2
  store i32 %or111, ptr %cycle, align 4
  %53 = add nsw i32 %and103, -512
  %54 = lshr exact i32 %53, 8
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %54, label %if.then110.if.end132_crit_edge [
    i32 0, label %if.then110.if.then115_crit_edge
    i32 1, label %if.then110.if.then120_crit_edge
    i32 2, label %if.then110.if.then125_crit_edge
    i32 3, label %if.then110.if.then130_crit_edge
  ]

if.then110.if.then130_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.then110.if.then125_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then125

if.then110.if.then120_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then120

if.then110.if.then115_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

if.then110.if.end132_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then115:                                       ; preds = %if.then110.if.then115_crit_edge, %if.then105.if.then115_crit_edge, %if.end102.if.then115_crit_edge
  %56 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cycle, align 4
  %or116 = or i32 %57, 4
  store i32 %or116, ptr %cycle, align 4
  %58 = zext i32 %and103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %and103, label %if.then115.if.end132_crit_edge [
    i32 768, label %if.then115.if.end132.sink.split_crit_edge
    i32 1024, label %if.then115.if.then125.thread_crit_edge
    i32 1280, label %if.then115.if.then130_crit_edge
  ]

if.then115.if.then130_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.then115.if.then125.thread_crit_edge:           ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then125.thread

if.then115.if.end132.sink.split_crit_edge:        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132.sink.split

if.then115.if.end132_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then120:                                       ; preds = %if.then110.if.then120_crit_edge, %if.then105.if.then120_crit_edge, %if.end102.if.then120_crit_edge
  %59 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cycle, align 4
  %or121 = or i32 %60, 8
  store i32 %or121, ptr %cycle, align 4
  %61 = zext i32 %and103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %and103, label %if.then120.if.end132_crit_edge [
    i32 1024, label %if.then120.if.then125.thread_crit_edge
    i32 1280, label %if.then120.if.then130_crit_edge
  ]

if.then120.if.then130_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.then120.if.then125.thread_crit_edge:           ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then125.thread

if.then120.if.end132_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then125.thread:                                ; preds = %if.then120.if.then125.thread_crit_edge, %if.then115.if.then125.thread_crit_edge
  br label %if.end132.sink.split

if.then125:                                       ; preds = %if.then110.if.then125_crit_edge, %if.then105.if.then125_crit_edge, %if.end102.if.then125_crit_edge
  %62 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cycle, align 4
  %or126 = or i32 %63, 16
  store i32 %or126, ptr %cycle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %and103)
  %cmp129 = icmp eq i32 %and103, 1280
  br i1 %cmp129, label %if.then125.if.then130_crit_edge, label %if.then125.if.end132_crit_edge

if.then125.if.end132_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then125.if.then130_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then130

if.then130:                                       ; preds = %if.then125.if.then130_crit_edge, %if.then120.if.then130_crit_edge, %if.then115.if.then130_crit_edge, %if.then110.if.then130_crit_edge, %if.then105.if.then130_crit_edge, %if.end102.if.then130_crit_edge
  br label %if.end132.sink.split

if.end132.sink.split:                             ; preds = %if.then130, %if.then125.thread, %if.then115.if.end132.sink.split_crit_edge
  %.sink15 = phi i32 [ 16, %if.then125.thread ], [ 32, %if.then130 ], [ 8, %if.then115.if.end132.sink.split_crit_edge ]
  %64 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cycle, align 4
  %or12611 = or i32 %65, %.sink15
  store i32 %or12611, ptr %cycle, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.end132.sink.split, %if.then125.if.end132_crit_edge, %if.then120.if.end132_crit_edge, %if.then115.if.end132_crit_edge, %if.then110.if.end132_crit_edge, %if.then105.if.end132_crit_edge, %if.end102.if.end132_crit_edge
  %and133 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  %. = select i1 %tobool134.not, i32 8192, i32 4096
  %66 = ptrtoint ptr %cycle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cycle, align 4
  %or137 = or i32 %67, %.
  %and139 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  %storemerge1.v = select i1 %tobool140.not, i32 32768, i32 16384
  %storemerge1 = or i32 %or137, %storemerge1.v
  %68 = ptrtoint ptr %cycle to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %storemerge1, ptr %cycle, align 4
  %69 = trunc i32 %10 to i8
  %trunc = and i8 %69, -64
  %70 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.195)
  switch i8 %trunc, label %if.end132.if.end153_crit_edge [
    i8 0, label %if.end132.if.end153.sink.split_crit_edge
    i8 64, label %if.then152
  ]

if.end132.if.end153.sink.split_crit_edge:         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.sink.split

if.end132.if.end153_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then152:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.sink.split

if.end153.sink.split:                             ; preds = %if.then152, %if.end132.if.end153.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.then152 ], [ 2, %if.end132.if.end153.sink.split_crit_edge ]
  %71 = ptrtoint ptr %dwidth to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink, ptr %dwidth, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.end153.sink.split, %if.end132.if.end153_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_alloc_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vme_register_error_handler(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_unregister_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vme_unregister_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !123, !124, !125, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !257, !258, !260, !261, !262, !264, !265, !267, !268, !270, !271, !272, !274, !275, !276, !277, !279, !281, !283, !285, !287, !288, !289, !290, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !336}
!llvm.module.flags = !{!337, !338, !339, !340, !341, !342, !343, !344}
!llvm.ident = !{!345}

!0 = !{ptr @__initcall__kmod_vme_tsi148__237_2652_tsi148_driver_init6, !1, !"__initcall__kmod_vme_tsi148__237_2652_tsi148_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2652, i32 1}
!2 = !{ptr @__exitcall_tsi148_driver_exit, !1, !"__exitcall_tsi148_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_err_chk238, !4, !"__UNIQUE_ID_err_chk238", i1 false, i1 false}
!4 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2654, i32 1}
!5 = !{ptr @__param_err_chk, !6, !"__param_err_chk", i1 false, i1 false}
!6 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2655, i32 1}
!7 = !{ptr @__UNIQUE_ID_err_chktype239, !6, !"__UNIQUE_ID_err_chktype239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_geoid240, !9, !"__UNIQUE_ID_geoid240", i1 false, i1 false}
!9 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2657, i32 1}
!10 = !{ptr @__param_geoid, !11, !"__param_geoid", i1 false, i1 false}
!11 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2658, i32 1}
!12 = !{ptr @__UNIQUE_ID_geoidtype241, !11, !"__UNIQUE_ID_geoidtype241", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description242, !14, !"__UNIQUE_ID_description242", i1 false, i1 false}
!14 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2660, i32 1}
!15 = !{ptr @__UNIQUE_ID_file243, !16, !"__UNIQUE_ID_file243", i1 false, i1 false}
!16 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2661, i32 1}
!17 = !{ptr @__UNIQUE_ID_license244, !16, !"__UNIQUE_ID_license244", i1 false, i1 false}
!18 = !{ptr @err_chk, !19, !"err_chk", i1 false, i1 false}
!19 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 39, i32 13}
!20 = !{ptr @geoid, !21, !"geoid", i1 false, i1 false}
!21 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 40, i32 12}
!22 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tsi148_driver, !24, !"tsi148_driver", i1 false, i1 false}
!24 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 51, i32 26}
!25 = !{ptr @driver_name, !26, !"driver_name", i1 false, i1 false}
!26 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 42, i32 19}
!27 = !{ptr @tsi148_ids, !28, !"tsi148_ids", i1 false, i1 false}
!28 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 44, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2302, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tsi148_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @tsi148_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2309, i32 3}
!39 = !{ptr @tsi148_probe._entry.6, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tsi148_probe._entry_ptr.8, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2317, i32 3}
!43 = !{ptr @tsi148_probe._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tsi148_probe._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2325, i32 3}
!47 = !{ptr @tsi148_probe._entry.12, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tsi148_probe._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @tsi148_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2331, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tsi148_probe.__key.16, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2332, i32 2}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tsi148_probe.__key.18, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2333, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tsi148_probe.__key.20, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2334, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @tsi148_probe.__key.22, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2335, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2343, i32 3}
!66 = !{ptr @tsi148_probe._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tsi148_probe._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @tsi148_probe.__key.27, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2364, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tsi148_probe.__key.29, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2380, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tsi148_probe.__key.31, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2406, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tsi148_probe.__key.33, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2427, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tsi148_probe.__key.35, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2447, i32 2}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2474, i32 2}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tsi148_probe._entry.37, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @tsi148_probe._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2477, i32 3}
!92 = !{ptr @tsi148_probe._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tsi148_probe._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2480, i32 3}
!96 = !{ptr @tsi148_probe._entry.46, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tsi148_probe._entry_ptr.48, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2483, i32 2}
!100 = !{ptr @tsi148_probe._entry.49, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @tsi148_probe._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2488, i32 3}
!106 = !{ptr @tsi148_probe._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tsi148_probe._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2494, i32 3}
!110 = !{ptr @tsi148_probe._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tsi148_probe._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 320, i32 3}
!114 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @tsi148_irq_init._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @tsi148_irq_init._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"TSI148_LCSR_INTS_LMS", i1 false, i1 false}
!118 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1128, i32 18}
!119 = !{ptr @TSI148_LCSR_INTC_LMC, !120, !"TSI148_LCSR_INTC_LMC", i1 false, i1 false}
!120 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1158, i32 18}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 128, i32 4}
!123 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @tsi148_MB_irqhandler._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @tsi148_MB_irqhandler._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"TSI148_LCSR_INTS_MBS", i1 false, i1 false}
!127 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1133, i32 18}
!128 = distinct !{null, !129, !"TSI148_GCSR_MBOX", i1 false, i1 false}
!129 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 516, i32 18}
!130 = distinct !{null, !131, !"TSI148_LCSR_INTC_MBC", i1 false, i1 false}
!131 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1163, i32 18}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 146, i32 2}
!134 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @tsi148_PERR_irqhandler._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @tsi148_PERR_irqhandler._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 152, i32 2}
!139 = !{ptr @tsi148_PERR_irqhandler._entry.66, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @tsi148_PERR_irqhandler._entry_ptr.68, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 184, i32 3}
!143 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @tsi148_VERR_irqhandler._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @tsi148_VERR_irqhandler._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 191, i32 3}
!148 = !{ptr @tsi148_VERR_irqhandler._entry.71, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @tsi148_VERR_irqhandler._entry_ptr.73, !147, !"_entry_ptr", i1 false, i1 false}
!150 = distinct !{null, !151, !"TSI148_LCSR_VIACK", i1 false, i1 false}
!151 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 224, i32 18}
!152 = !{ptr @TSI148_LCSR_IT, !153, !"TSI148_LCSR_IT", i1 false, i1 false}
!153 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 355, i32 18}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 507, i32 3}
!156 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @tsi148_slave_set._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @tsi148_slave_set._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 524, i32 3}
!161 = !{ptr @tsi148_slave_set._entry.76, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @tsi148_slave_set._entry_ptr.78, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 528, i32 3}
!165 = !{ptr @tsi148_slave_set._entry.79, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @tsi148_slave_set._entry_ptr.81, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 532, i32 3}
!169 = !{ptr @tsi148_slave_set._entry.82, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @tsi148_slave_set._entry_ptr.84, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @TSI148_LCSR_OT, !172, !"TSI148_LCSR_OT", i1 false, i1 false}
!172 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 198, i32 18}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 830, i32 3}
!175 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @tsi148_master_set._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @tsi148_master_set._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 837, i32 3}
!180 = !{ptr @tsi148_master_set._entry.87, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tsi148_master_set._entry_ptr.89, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 852, i32 3}
!184 = !{ptr @tsi148_master_set._entry.90, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tsi148_master_set._entry_ptr.92, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 881, i32 3}
!188 = !{ptr @tsi148_master_set._entry.93, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @tsi148_master_set._entry_ptr.95, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 887, i32 3}
!192 = !{ptr @tsi148_master_set._entry.96, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @tsi148_master_set._entry_ptr.98, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 893, i32 3}
!196 = !{ptr @tsi148_master_set._entry.99, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @tsi148_master_set._entry_ptr.101, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 940, i32 3}
!200 = !{ptr @.str.104, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @tsi148_master_set._entry.102, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @tsi148_master_set._entry_ptr.105, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.107, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 957, i32 3}
!205 = !{ptr @tsi148_master_set._entry.106, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @tsi148_master_set._entry_ptr.108, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @tsi148_master_set._entry.109, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 994, i32 3}
!209 = !{ptr @tsi148_master_set._entry_ptr.110, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.111, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 754, i32 44}
!212 = !{ptr @.str.112, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 765, i32 3}
!214 = !{ptr @.str.113, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @tsi148_alloc_resource._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @tsi148_alloc_resource._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.115, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 775, i32 3}
!219 = !{ptr @tsi148_alloc_resource._entry.114, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @tsi148_alloc_resource._entry_ptr.116, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.117, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1245, i32 4}
!223 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @tsi148_master_read._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @tsi148_master_read._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1343, i32 4}
!228 = !{ptr @.str.120, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @tsi148_master_write._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @tsi148_master_write._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1642, i32 3}
!233 = !{ptr @.str.122, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @tsi148_dma_list_add._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @tsi148_dma_list_add._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.124, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1697, i32 3}
!238 = !{ptr @tsi148_dma_list_add._entry.123, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @tsi148_dma_list_add._entry_ptr.125, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1733, i32 3}
!242 = !{ptr @tsi148_dma_list_add._entry.126, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @tsi148_dma_list_add._entry_ptr.128, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.130, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1749, i32 3}
!246 = !{ptr @tsi148_dma_list_add._entry.129, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @tsi148_dma_list_add._entry_ptr.131, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.132, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1454, i32 3}
!250 = !{ptr @tsi148_dma_set_vme_src_attributes._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @tsi148_dma_set_vme_src_attributes._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @tsi148_dma_set_vme_src_attributes._entry.133, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1468, i32 3}
!254 = !{ptr @tsi148_dma_set_vme_src_attributes._entry_ptr.134, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @tsi148_dma_set_vme_src_attributes._entry.135, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1502, i32 3}
!257 = !{ptr @tsi148_dma_set_vme_src_attributes._entry_ptr.136, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.137, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1553, i32 3}
!260 = !{ptr @tsi148_dma_set_vme_dest_attributes._entry, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @tsi148_dma_set_vme_dest_attributes._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @tsi148_dma_set_vme_dest_attributes._entry.138, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1567, i32 3}
!264 = !{ptr @tsi148_dma_set_vme_dest_attributes._entry_ptr.139, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @tsi148_dma_set_vme_dest_attributes._entry.140, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1601, i32 3}
!267 = !{ptr @tsi148_dma_set_vme_dest_attributes._entry_ptr.141, !266, !"_entry_ptr", i1 false, i1 false}
!268 = distinct !{null, !269, !"__already_done", i1 false, i1 false}
!269 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!270 = !{ptr @.str.142, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.143, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.144, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1875, i32 3}
!274 = !{ptr @.str.145, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @tsi148_dma_list_exec._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @tsi148_dma_list_exec._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @TSI148_LCSR_DMA, !278, !"TSI148_LCSR_DMA", i1 false, i1 false}
!278 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 468, i32 18}
!279 = !{ptr @TSI148_LCSR_INTEN_IRQEN, !280, !"TSI148_LCSR_INTEN_IRQEN", i1 false, i1 false}
!280 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1053, i32 18}
!281 = !{ptr @TSI148_LCSR_INTEO_IRQEO, !282, !"TSI148_LCSR_INTEO_IRQEO", i1 false, i1 false}
!282 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1093, i32 18}
!283 = !{ptr @TSI148_LCSR_VICR_IRQL, !284, !"TSI148_LCSR_VICR_IRQL", i1 false, i1 false}
!284 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1014, i32 18}
!285 = !{ptr @.str.146, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1938, i32 4}
!287 = !{ptr @.str.147, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @tsi148_lm_set._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @tsi148_lm_set._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @tsi148_lm_set._entry.148, !291, !"_entry", i1 false, i1 false}
!291 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 1959, i32 3}
!292 = !{ptr @tsi148_lm_set._entry_ptr.149, !291, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.150, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2054, i32 3}
!295 = !{ptr @.str.151, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @tsi148_lm_attach._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @tsi148_lm_attach._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.153, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2062, i32 3}
!300 = !{ptr @tsi148_lm_attach._entry.152, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @tsi148_lm_attach._entry_ptr.154, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @TSI148_LCSR_INTEN_LMEN, !303, !"TSI148_LCSR_INTEN_LMEN", i1 false, i1 false}
!303 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1048, i32 18}
!304 = !{ptr @TSI148_LCSR_INTEO_LMEO, !305, !"TSI148_LCSR_INTEO_LMEO", i1 false, i1 false}
!305 = !{!"../drivers/vme/bridges/vme_tsi148.h", i32 1088, i32 18}
!306 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2199, i32 3}
!308 = !{ptr @.str.156, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @tsi148_crcsr_init._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @tsi148_crcsr_init._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.158, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2217, i32 3}
!313 = !{ptr @tsi148_crcsr_init._entry.157, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @tsi148_crcsr_init._entry_ptr.159, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.161, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2220, i32 2}
!317 = !{ptr @tsi148_crcsr_init._entry.160, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @tsi148_crcsr_init._entry_ptr.162, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.164, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2224, i32 3}
!321 = !{ptr @tsi148_crcsr_init._entry.163, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @tsi148_crcsr_init._entry_ptr.165, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.167, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2226, i32 3}
!325 = !{ptr @tsi148_crcsr_init._entry.166, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @tsi148_crcsr_init._entry_ptr.168, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.170, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2240, i32 4}
!329 = !{ptr @tsi148_crcsr_init._entry.169, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @tsi148_crcsr_init._entry_ptr.171, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.172, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/vme/bridges/vme_tsi148.c", i32 2572, i32 2}
!333 = !{ptr @.str.173, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @tsi148_remove.__UNIQUE_ID_ddebug236, !332, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!335 = !{ptr @__param_str_err_chk, !6, !"__param_str_err_chk", i1 false, i1 false}
!336 = !{ptr @__param_str_geoid, !11, !"__param_str_geoid", i1 false, i1 false}
!337 = !{i32 1, !"wchar_size", i32 2}
!338 = !{i32 1, !"min_enum_size", i32 4}
!339 = !{i32 8, !"branch-target-enforcement", i32 0}
!340 = !{i32 8, !"sign-return-address", i32 0}
!341 = !{i32 8, !"sign-return-address-all", i32 0}
!342 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!343 = !{i32 7, !"uwtable", i32 1}
!344 = !{i32 7, !"frame-pointer", i32 2}
!345 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!346 = !{i64 6465641}
!347 = !{i64 2154005990}
!348 = !{i64 2154597841}
!349 = !{i64 6465223}
!350 = !{i64 2154598151}
!351 = !{i8 0, i8 2}
!352 = !{i64 2154732624}
!353 = !{i64 2154743402}
!354 = !{i64 2154743676}
!355 = !{i64 2154598461}
!356 = !{i64 2154598771}
!357 = !{i64 2154599088}
!358 = !{i64 2149022333, i64 2149022338, i64 2149022351, i64 2149022395, i64 2149022429, i64 2149022450}
!359 = !{i64 2154752197}
!360 = !{i64 2154752521}
!361 = !{i64 2154752827}
!362 = !{i64 2154753133}
!363 = !{i64 2154753448}
!364 = !{i64 2154753772}
!365 = !{i64 2154754096}
!366 = !{i64 2154754475}
!367 = !{i64 2154754728}
!368 = !{i64 2154755041}
!369 = !{i64 2154755351}
!370 = !{i64 2154719662}
!371 = !{i64 2154719931}
!372 = !{i64 2154720251}
!373 = !{i64 2154720557}
!374 = !{i64 2154616441}
!375 = !{i64 2154616787}
!376 = !{i64 2154617133}
!377 = !{i64 2154617479}
!378 = !{i64 2154617825}
!379 = !{i64 2154618174}
!380 = !{i64 2154618523}
!381 = !{i64 2154612786}
!382 = !{i64 2154613067}
!383 = !{i64 2154613408}
!384 = !{i64 2154613753}
!385 = !{i64 2154614099}
!386 = !{i64 2154614446}
!387 = !{i64 2154614796}
!388 = !{i64 2154615147}
!389 = !{i64 2154615681}
!390 = !{i64 2154616027}
!391 = !{!"auto-init"}
!392 = !{i64 2154636500}
!393 = !{i64 2154636781}
!394 = !{i64 2154642576}
!395 = !{i64 2154642921}
!396 = !{i64 2154643267}
!397 = !{i64 2154643614}
!398 = !{i64 2154643964}
!399 = !{i64 2154644315}
!400 = !{i64 2154644659}
!401 = !{i64 2154645005}
!402 = !{i64 6465421}
!403 = !{i64 2154004766}
!404 = !{i64 6464803}
!405 = !{i64 2154005378}
!406 = !{i64 2154006371}
!407 = !{i64 6465026}
!408 = !{i64 2154006795}
!409 = !{i64 6464603}
!410 = !{i64 2154007345}
!411 = !{i64 2154652337}
!412 = !{i64 2154652683}
!413 = !{i64 2154652934}
!414 = !{i64 2154653249}
!415 = !{i64 2154653564}
!416 = !{i64 2154653885}
!417 = !{i64 2154654214}
!418 = !{i64 2154654595}
!419 = !{i64 2154654853}
!420 = !{i64 2154655229}
!421 = !{i64 2154655541}
!422 = !{i64 2154655799}
!423 = !{!"branch_weights", i32 2000, i32 1}
!424 = !{i64 2154682709}
!425 = !{i64 2154683065}
!426 = !{i64 2154683494}
!427 = !{i64 2154683791}
!428 = !{i64 2154680777}
!429 = !{i64 2154685626}
!430 = !{i64 2154687495}
!431 = !{i64 2154599787}
!432 = !{i64 2154600037}
!433 = !{i64 2154600409}
!434 = !{i64 2154600659}
!435 = !{i64 2154602399}
!436 = !{i64 2154602649}
!437 = !{i64 2154603021}
!438 = !{i64 2154603271}
!439 = !{i64 2154603687}
!440 = !{i64 2154603957}
!441 = !{i64 2154604267}
!442 = !{i64 2154599467}
!443 = !{i64 2154694650}
!444 = !{i64 2154694977}
!445 = !{i64 2154695298}
!446 = !{i64 2154695709}
!447 = !{i64 2154696021}
!448 = !{i64 2154696333}
!449 = !{i64 2154696816}
!450 = !{i64 2154700646}
!451 = !{i64 2154700896}
!452 = !{i64 2154701268}
!453 = !{i64 2154701518}
!454 = !{i64 2154701845}
!455 = !{i64 2154702256}
!456 = !{i64 2154702508}
!457 = !{i64 2154702882}
!458 = !{i64 2154703132}
!459 = !{i64 2154703468}
!460 = !{i64 2154703922}
!461 = !{i64 2154704179}
!462 = !{i64 2154704551}
!463 = !{i64 2154709431}
!464 = !{i64 2154709762}
!465 = !{i64 2154710144}
!466 = !{i64 2154712025}
!467 = !{i64 2154713992}
!468 = !{i64 2154717509}
!469 = !{i64 2154593482}
!470 = !{i64 2154593794}
!471 = !{!"branch_weights", i32 1, i32 2000}
!472 = !{i64 2154579936}
!473 = !{i64 2154584256}
!474 = !{i64 2154584568}
!475 = !{i64 2154584880}
!476 = !{i64 2154587378}
!477 = !{i64 2154587690}
!478 = !{i64 2154587952}
!479 = !{i64 2154588336}
!480 = !{i64 2154588648}
!481 = !{i64 2154588960}
!482 = !{i64 2154592957}
!483 = !{i64 2154594235}
!484 = !{i64 2154645419}
!485 = !{i64 2154645765}
!486 = !{i64 2154646111}
!487 = !{i64 2154646457}
!488 = !{i64 2154646803}
!489 = !{i64 2154647152}
!490 = !{i64 2154647501}
