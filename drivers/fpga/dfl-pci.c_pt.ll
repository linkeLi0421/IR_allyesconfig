; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-pci.c_pt.bc'
source_filename = "../drivers/fpga/dfl-pci.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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

@__initcall__kmod_dfl_pci__279_440_cci_pci_driver_init6 = internal global ptr @cci_pci_driver_init, section ".initcall6.init", align 4
@cci_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cci_pcie_id_tbl, ptr @cci_pci_probe, ptr @cci_pci_remove, ptr null, ptr null, ptr null, ptr @cci_pci_sriov_configure, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cci_pci_driver_exit = internal global ptr @cci_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description280 = internal constant [48 x i8] c"dfl_pci.description=FPGA DFL PCIe Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [33 x i8] c"dfl_pci.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file282 = internal constant [34 x i8] c"dfl_pci.file=drivers/fpga/dfl-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [23 x i8] c"dfl_pci.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_pci\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl-pci\00", [24 x i8] zeroinitializer }, align 32
@cci_pcie_id_tbl = internal global { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 48317, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 48319, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 48320, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 48321, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2500, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2501, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2864, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2859, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2860, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7212, i32 4096, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7212, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@cci_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable device %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cci_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/fpga/dfl-pci.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cci_pci_probe._entry_ptr = internal global ptr @cci_pci_probe._entry, section ".printk_index", align 4
@cci_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 353, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCIE AER unavailable %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cci_pci_probe._entry_ptr.10 = internal global ptr @cci_pci_probe._entry.7, section ".printk_index", align 4
@cci_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 367, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No suitable DMA support available.\0A\00", [60 x i8] zeroinitializer }, align 32
@cci_pci_probe._entry_ptr.13 = internal global ptr @cci_pci_probe._entry.11, section ".printk_index", align 4
@cci_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 373, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fail to init drvdata %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@cci_pci_probe._entry_ptr.16 = internal global ptr @cci_pci_probe._entry.14, section ".printk_index", align 4
@cci_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"enumeration failure %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@cci_pci_probe._entry_ptr.19 = internal global ptr @cci_pci_probe._entry.17, section ".printk_index", align 4
@cci_enumerate_feature_devs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to alloc irq %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cci_enumerate_feature_devs\00", [37 x i8] zeroinitializer }, align 32
@cci_enumerate_feature_devs._entry_ptr = internal global ptr @cci_enumerate_feature_devs._entry, section ".printk_index", align 4
@cci_enumerate_feature_devs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enumeration failure\0A\00", [43 x i8] zeroinitializer }, align 32
@cci_enumerate_feature_devs._entry_ptr.24 = internal global ptr @cci_enumerate_feature_devs._entry.22, section ".printk_index", align 4
@cci_pci_alloc_irq.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cci_pci_alloc_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fpga interrupt not supported\0A\00", [34 x i8] zeroinitializer }, align 32
@find_dfls_by_vsec.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"find_dfls_by_vsec\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s no DFL VSEC found\0A\00", [42 x i8] zeroinitializer }, align 32
@find_dfls_by_vsec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s too many DFLs %d > %d\0A\00", [38 x i8] zeroinitializer }, align 32
@find_dfls_by_vsec._entry_ptr = internal global ptr @find_dfls_by_vsec._entry, section ".printk_index", align 4
@find_dfls_by_vsec._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s DFL VSEC too big for PCIe config space\0A\00", [53 x i8] zeroinitializer }, align 32
@find_dfls_by_vsec._entry_ptr.32 = internal global ptr @find_dfls_by_vsec._entry.30, section ".printk_index", align 4
@find_dfls_by_vsec._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s bad bir number %d\0A\00", [42 x i8] zeroinitializer }, align 32
@find_dfls_by_vsec._entry_ptr.35 = internal global ptr @find_dfls_by_vsec._entry.33, section ".printk_index", align 4
@find_dfls_by_vsec._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s DFL for BAR %d already specified\0A\00", [59 x i8] zeroinitializer }, align 32
@find_dfls_by_vsec._entry_ptr.38 = internal global ptr @find_dfls_by_vsec._entry.36, section ".printk_index", align 4
@find_dfls_by_vsec._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.27, ptr @.str.4, i32 197, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s bad offset %u >= %pa\0A\00", [39 x i8] zeroinitializer }, align 32
@find_dfls_by_vsec._entry_ptr.41 = internal global ptr @find_dfls_by_vsec._entry.39, section ".printk_index", align 4
@find_dfls_by_vsec.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.42, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s BAR %d offset 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"cci_pci_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 432, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 440, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 433, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"cci_pcie_id_tbl\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 86, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 347, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 353, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 367, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 373, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 381, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 298, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 324, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 55, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 155, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 162, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 169, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 180, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 186, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 196, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [26 x i8] c"../drivers/fpga/dfl-pci.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 201, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__exitcall_cci_pci_driver_exit, ptr @__initcall__kmod_dfl_pci__279_440_cci_pci_driver_init6, ptr @cci_enumerate_feature_devs._entry, ptr @cci_enumerate_feature_devs._entry.22, ptr @cci_enumerate_feature_devs._entry_ptr, ptr @cci_enumerate_feature_devs._entry_ptr.24, ptr @cci_pci_driver_exit, ptr @cci_pci_probe._entry, ptr @cci_pci_probe._entry.11, ptr @cci_pci_probe._entry.14, ptr @cci_pci_probe._entry.17, ptr @cci_pci_probe._entry.7, ptr @cci_pci_probe._entry_ptr, ptr @cci_pci_probe._entry_ptr.10, ptr @cci_pci_probe._entry_ptr.13, ptr @cci_pci_probe._entry_ptr.16, ptr @cci_pci_probe._entry_ptr.19, ptr @find_dfls_by_vsec._entry, ptr @find_dfls_by_vsec._entry.30, ptr @find_dfls_by_vsec._entry.33, ptr @find_dfls_by_vsec._entry.36, ptr @find_dfls_by_vsec._entry.39, ptr @find_dfls_by_vsec._entry_ptr, ptr @find_dfls_by_vsec._entry_ptr.32, ptr @find_dfls_by_vsec._entry_ptr.35, ptr @find_dfls_by_vsec._entry_ptr.38, ptr @find_dfls_by_vsec._entry_ptr.41, ptr @cci_pci_driver, ptr @.str, ptr @.str.1, ptr @cci_pcie_id_tbl, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pcie_id_tbl to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_enumerate_feature_devs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_enumerate_feature_devs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_dfls_by_vsec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_dfls_by_vsec._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_dfls_by_vsec._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_dfls_by_vsec._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_dfls_by_vsec._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cci_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cci_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @cci_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pci_probe(ptr noundef %pcidev, ptr nocapture noundef readnone %pcidevid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcim_enable_device(ptr noundef %pcidev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pcidev) #7
  %0 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %do.end6 [
    i32 0, label %if.end.if.end8_crit_edge
    i32 -22, label %if.end.if.end8_crit_edge82
  ]

if.end.if.end8_crit_edge82:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.8, i32 noundef %call1) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %if.end.if.end8_crit_edge, %if.end.if.end8_crit_edge82
  tail call void @pci_set_master(ptr noundef %pcidev) #7
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %call.i75 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1.i, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool13.not = icmp eq i32 %call.i75, 0
  br i1 %tobool13.not, label %if.then11.if.end29_crit_edge, label %if.then11.disable_error_report_exit_crit_edge

if.then11.disable_error_report_exit_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_error_report_exit

if.then11.if.end29_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else:                                          ; preds = %if.end8
  %call.i77 = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool17.not = icmp eq i32 %call.i77, 0
  br i1 %tobool17.not, label %if.then18, label %if.else23

if.then18:                                        ; preds = %if.else
  %call.i79 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool20.not = icmp eq i32 %call.i79, 0
  br i1 %tobool20.not, label %if.then18.if.end29_crit_edge, label %if.then18.disable_error_report_exit_crit_edge

if.then18.disable_error_report_exit_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_error_report_exit

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.12) #10
  br label %disable_error_report_exit

if.end29:                                         ; preds = %if.then18.if.end29_crit_edge, %if.then11.if.end29_crit_edge
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 4, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.15, i32 noundef -12) #10
  br label %disable_error_report_exit

if.end37:                                         ; preds = %if.end29
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %call38 = tail call fastcc i32 @cci_enumerate_feature_devs(ptr noundef %pcidev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %do.end44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, i32 noundef %call38) #10
  br label %disable_error_report_exit

disable_error_report_exit:                        ; preds = %do.end44, %do.end35, %if.else23, %if.then18.disable_error_report_exit_crit_edge, %if.then11.disable_error_report_exit_crit_edge
  %ret.0 = phi i32 [ -5, %if.else23 ], [ %call.i79, %if.then18.disable_error_report_exit_crit_edge ], [ -12, %do.end35 ], [ %call38, %do.end44 ], [ %call.i75, %if.then11.disable_error_report_exit_crit_edge ]
  %call46 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pcidev) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_error_report_exit, %if.end37.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %disable_error_report_exit ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cci_pci_remove(ptr noundef %pcidev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %1, @pci_bus_type
  br i1 %cmp, label %cond.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.true:                                        ; preds = %entry
  %is_physfn = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 49
  %2 = ptrtoint ptr %is_physfn to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %is_physfn, align 1
  %3 = and i40 %bf.load, 131072
  %tobool.not = icmp eq i40 %3, 0
  br i1 %tobool.not, label %cond.true.if.end_crit_edge, label %if.then

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @pci_disable_sriov(ptr noundef %pcidev) #7
  tail call void @dfl_fpga_cdev_config_ports_pf(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.true.if.end_crit_edge, %entry.if.end_crit_edge
  %driver_data.i.i.i7 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @dfl_fpga_feature_devs_remove(ptr noundef %11) #7
  tail call void @pci_free_irq_vectors(ptr noundef %pcidev) #7
  %call2 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pcidev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_pci_sriov_configure(ptr noundef %pcidev, i32 noundef %num_vfs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %tobool.not = icmp eq i32 %num_vfs, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_disable_sriov(ptr noundef %pcidev) #7
  br label %cleanup10.sink.split

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @dfl_fpga_cdev_config_ports_vf(ptr noundef %3, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.else.cleanup10_crit_edge

if.else.cleanup10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end:                                           ; preds = %if.else
  %call5 = tail call i32 @pci_enable_sriov(ptr noundef %pcidev, i32 noundef %num_vfs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup10_crit_edge, label %if.end.cleanup10.sink.split_crit_edge

if.end.cleanup10.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10.sink.split

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

cleanup10.sink.split:                             ; preds = %if.end.cleanup10.sink.split_crit_edge, %if.then
  %retval.1.ph = phi i32 [ 0, %if.then ], [ %call5, %if.end.cleanup10.sink.split_crit_edge ]
  tail call void @dfl_fpga_cdev_config_ports_pf(ptr noundef %3) #7
  br label %cleanup10

cleanup10:                                        ; preds = %cleanup10.sink.split, %if.end.cleanup10_crit_edge, %if.else.cleanup10_crit_edge
  %retval.1 = phi i32 [ %num_vfs, %if.end.cleanup10_crit_edge ], [ %call2, %if.else.cleanup10_crit_edge ], [ %retval.1.ph, %cleanup10.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cci_enumerate_feature_devs(ptr noundef %pcidev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  %call1 = tail call ptr @dfl_fpga_enum_info_alloc(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @pci_msix_vec_count(ptr noundef %pcidev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cci_pci_alloc_irq.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cci_enumerate_feature_devs, %if.else.thread)) #7
          to label %if.end16 [label %if.else.thread], !srcloc !91

if.else.thread:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cci_pci_alloc_irq.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.26) #7
  br label %if.end16

if.end5.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pcidev, i32 noundef %call.i, i32 noundef %call.i, i32 noundef 4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp7.i, label %do.end, label %if.then6

do.end:                                           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call.i.i) #10
  br label %enum_info_free_exit

if.then6:                                         ; preds = %if.end5.i
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #7
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.then6.if.then36_crit_edge, label %if.end7.i.i.i, !prof !92

if.then6.if.then36_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end7.i.i.i:                                    ; preds = %if.then6
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #11
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.if.then36_crit_edge, label %if.end7.i.i.i.for.body.i_crit_edge

if.end7.i.i.i.for.body.i_crit_edge:               ; preds = %if.end7.i.i.i
  br label %for.body.i

if.end7.i.i.i.if.then36_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.i.i.i.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.i.i.for.body.i_crit_edge ]
  %call1.i = tail call i32 @pci_irq_vector(ptr noundef %pcidev, i32 noundef %i.014.i) #7
  %arrayidx.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.014.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %if.end10, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end10:                                         ; preds = %for.body.i
  %call11 = tail call i32 @dfl_fpga_enum_info_add_irq(ptr noundef nonnull %call1, i32 noundef %call.i, ptr noundef nonnull %call8.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.end10.if.then36_crit_edge

if.end10.if.then36_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.else.thread, %do.body.i
  %call17 = tail call fastcc i32 @find_dfls_by_vsec(ptr noundef %pcidev, ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -19
  br i1 %cmp18, label %if.then19, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  %call.i.i69 = tail call i32 @pcim_iomap_regions(ptr noundef %pcidev, i32 noundef 1, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69)
  %tobool.not.i.i = icmp eq i32 %call.i.i69, 0
  br i1 %tobool.not.i.i, label %cci_pci_ioremap_bar0.exit.i, label %if.then19.if.then36_crit_edge

if.then19.if.then36_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

cci_pci_ioremap_bar0.exit.i:                      ; preds = %if.then19
  %call1.i.i = tail call ptr @pcim_iomap_table(ptr noundef %pcidev) #7
  %6 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call1.i.i, align 4
  %tobool.not.i70 = icmp eq ptr %7, null
  br i1 %tobool.not.i70, label %cci_pci_ioremap_bar0.exit.i.if.then36_crit_edge, label %if.end.i

cci_pci_ioremap_bar0.exit.i.if.then36_crit_edge:  ; preds = %cci_pci_ioremap_bar0.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end.i:                                         ; preds = %cci_pci_ioremap_bar0.exit.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %add.ptr.i.i.i = getelementptr i32, ptr %7, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = and i64 %13, -67835469387267856
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %14)
  %15 = icmp eq i64 %14, 64
  br i1 %15, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %16 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 0, i32 1
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i71 = icmp eq i32 %19, 0
  %sub.i = sub i32 1, %17
  %add.i = add i32 %sub.i, %19
  %cond.i = select i1 %cmp.i71, i32 0, i32 %add.i
  %call12.i = tail call i32 @dfl_fpga_enum_info_add_dfl(ptr noundef nonnull %call1, i32 noundef %17, i32 noundef %cond.i) #7
  %add.ptr.i = getelementptr i8, ptr %7, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %22 = lshr i32 %20, 9
  %conv.i = and i32 %22, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv.i)
  %cmp26.i = icmp ugt i32 %conv.i, 4
  br i1 %cmp26.i, label %if.end45.thread.i, label %if.end45.i, !prof !92

if.end45.thread.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 246, i32 noundef 9, ptr noundef null) #7
  br label %for.body.i72.preheader

if.end45.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp53199.not.i = icmp eq i32 %conv.i, 0
  br i1 %cmp53199.not.i, label %if.end45.i.if.end148.i_crit_edge, label %if.end45.i.for.body.i72.preheader_crit_edge

if.end45.i.for.body.i72.preheader_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i72.preheader

if.end45.i.if.end148.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

for.body.i72.preheader:                           ; preds = %if.end45.i.for.body.i72.preheader_crit_edge, %if.end45.thread.i
  br label %for.body.i72

for.body.i72:                                     ; preds = %for.inc.i.for.body.i72_crit_edge, %for.body.i72.preheader
  %i.0200.i = phi i32 [ %inc.i73, %for.inc.i.for.body.i72_crit_edge ], [ 0, %for.body.i72.preheader ]
  %mul.i = shl i32 %i.0200.i, 3
  %add55.i = add nuw nsw i32 %mul.i, 56
  %add.ptr56.i = getelementptr i8, ptr %7, i32 %add55.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %add.ptr.i193.i = getelementptr i32, ptr %add.ptr56.i, i32 1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %25 = zext i32 %24 to i64
  %26 = zext i32 %23 to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %29 = tail call i64 @llvm.bswap.i64(i64 %28) #7
  %and58.i = and i64 %29, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and58.i)
  %tobool59.not.i = icmp eq i64 %and58.i, 0
  br i1 %tobool59.not.i, label %for.body.i72.for.inc.i_crit_edge, label %do.end76.i

for.body.i72.for.inc.i_crit_edge:                 ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end76.i:                                       ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #9
  %and78.i = lshr i64 %29, 32
  %30 = trunc i64 %and78.i to i32
  %conv80.i = and i32 %30, 7
  %31 = trunc i64 %29 to i32
  %conv99.i = and i32 %31, 16777215
  %arrayidx101.i = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 %conv80.i
  %32 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx101.i, align 8
  %add103.i = add i32 %33, %conv99.i
  %end106.i = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 %conv80.i, i32 1
  %34 = ptrtoint ptr %end106.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp107.i = icmp eq i32 %35, 0
  %sub117.i = sub i32 1, %33
  %add118.i = add i32 %sub117.i, %35
  %cond120.i = select i1 %cmp107.i, i32 0, i32 %add118.i
  %sub121.i = sub i32 %cond120.i, %conv99.i
  %call122.i = tail call i32 @dfl_fpga_enum_info_add_dfl(ptr noundef nonnull %call1, i32 noundef %add103.i, i32 noundef %sub121.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end76.i, %for.body.i72.for.inc.i_crit_edge
  %inc.i73 = add nuw nsw i32 %i.0200.i, 1
  %exitcond.not.i74 = icmp eq i32 %inc.i73, %conv.i
  br i1 %exitcond.not.i74, label %for.inc.i.if.end148.i_crit_edge, label %for.inc.i.for.body.i72_crit_edge

for.inc.i.for.body.i72_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i72

for.inc.i.if.end148.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.else.i:                                        ; preds = %if.end.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %38 = zext i32 %37 to i64
  %39 = zext i32 %36 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or i64 %40, %38
  %42 = and i64 %41, -67835469387267856
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037928000, i64 %42)
  %43 = icmp eq i64 %42, 72057594037928000
  br i1 %43, label %if.then124.i, label %if.else.i.if.end148.i_crit_edge

if.else.i.if.end148.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.then124.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %resource125.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47
  %44 = ptrtoint ptr %resource125.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resource125.i, align 8
  %end130.i = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 0, i32 1
  %46 = ptrtoint ptr %end130.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %end130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp131.i = icmp eq i32 %47, 0
  %sub141.i = sub i32 1, %45
  %add142.i = add i32 %sub141.i, %47
  %cond144.i = select i1 %cmp131.i, i32 0, i32 %add142.i
  %call145.i = tail call i32 @dfl_fpga_enum_info_add_dfl(ptr noundef nonnull %call1, i32 noundef %45, i32 noundef %cond144.i) #7
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then124.i, %if.else.i.if.end148.i_crit_edge, %for.inc.i.if.end148.i_crit_edge, %if.end45.i.if.end148.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then124.i ], [ -19, %if.else.i.if.end148.i_crit_edge ], [ 0, %if.end45.i.if.end148.i_crit_edge ], [ 0, %for.inc.i.if.end148.i_crit_edge ]
  tail call void @pcim_iounmap_regions(ptr noundef %pcidev, i32 noundef 1) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end148.i, %if.end16.if.end21_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end16.if.end21_crit_edge ], [ %ret.0.i, %if.end148.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.if.then36_crit_edge

if.end21.if.then36_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end24:                                         ; preds = %if.end21
  %call25 = tail call ptr @dfl_fpga_feature_devs_enumerate(ptr noundef nonnull %call1) #7
  %cmp.i76 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %irq_free_exit, label %irq_free_exit.thread91

irq_free_exit.thread91:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call25, ptr %1, align 4
  br label %enum_info_free_exit

irq_free_exit:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %49 = ptrtoint ptr %call25 to i32
  br label %if.then36

if.then36:                                        ; preds = %irq_free_exit, %if.end21.if.then36_crit_edge, %cci_pci_ioremap_bar0.exit.i.if.then36_crit_edge, %if.then19.if.then36_crit_edge, %if.end10.if.then36_crit_edge, %if.end7.i.i.i.if.then36_crit_edge, %if.then6.if.then36_crit_edge
  %ret.190 = phi i32 [ %49, %irq_free_exit ], [ %ret.0, %if.end21.if.then36_crit_edge ], [ %call11, %if.end10.if.then36_crit_edge ], [ -12, %if.end7.i.i.i.if.then36_crit_edge ], [ -12, %if.then6.if.then36_crit_edge ], [ -12, %cci_pci_ioremap_bar0.exit.i.if.then36_crit_edge ], [ -12, %if.then19.if.then36_crit_edge ]
  tail call void @pci_free_irq_vectors(ptr noundef %pcidev) #7
  br label %enum_info_free_exit

enum_info_free_exit:                              ; preds = %if.then36, %irq_free_exit.thread91, %do.end
  %ret.2 = phi i32 [ %call.i.i, %do.end ], [ %ret.190, %if.then36 ], [ 0, %irq_free_exit.thread91 ]
  tail call void @dfl_fpga_enum_info_free(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %enum_info_free_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %enum_info_free_exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dfl_fpga_enum_info_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_enum_info_add_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_dfls_by_vsec(ptr noundef %pcidev, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %vndr_hdr = alloca i32, align 4
  %dfl_cnt = alloca i32, align 4
  %dfl_res = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vndr_hdr) #7
  %0 = ptrtoint ptr %vndr_hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vndr_hdr, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dfl_cnt) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dfl_res) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %call162 = call zeroext i16 @pci_find_next_ext_capability(ptr noundef %pcidev, i16 noundef zeroext 0, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call162)
  %tobool.not164 = icmp eq i16 %call162, 0
  br i1 %tobool.not164, label %entry.do.body.critedge_crit_edge, label %while.body.lr.ph

entry.do.body.critedge_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.critedge

while.body.lr.ph:                                 ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call165 = phi i16 [ %call162, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %conv1166 = zext i16 %call165 to i32
  %1 = ptrtoint ptr %vndr_hdr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vndr_hdr, align 4
  %add = add nuw nsw i32 %conv1166, 4
  %call2 = call i32 @pci_read_config_dword(ptr noundef %pcidev, i32 noundef %add, ptr noundef nonnull %vndr_hdr) #7
  %2 = ptrtoint ptr %vndr_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vndr_hdr, align 4
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %and)
  %cmp = icmp eq i32 %and, 67
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %5)
  %cmp5 = icmp eq i16 %5, -32634
  br i1 %cmp5, label %if.end15, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %call = call zeroext i16 @pci_find_next_ext_capability(ptr noundef %pcidev, i16 noundef zeroext %call165, i32 noundef 11) #7
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %if.end.do.body.critedge_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.do.body.critedge_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.critedge

do.body.critedge:                                 ; preds = %if.end.do.body.critedge_crit_edge, %entry.do.body.critedge_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_dfls_by_vsec.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_dfls_by_vsec, %if.then13)) #7
          to label %cleanup [label %if.then13], !srcloc !91

if.then13:                                        ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @find_dfls_by_vsec.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %dfl_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dfl_cnt, align 4
  %add16 = add nuw nsw i32 %conv1166, 8
  %call17 = call i32 @pci_read_config_dword(ptr noundef %pcidev, i32 noundef %add16, ptr noundef nonnull %dfl_cnt) #7
  %7 = ptrtoint ptr %dfl_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dfl_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp18 = icmp ugt i32 %8, 6
  br i1 %cmp18, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %8, i32 noundef 6) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %add26 = add nuw nsw i32 %conv1166, 12
  %mul = shl nuw nsw i32 %8, 2
  %add27 = add nuw nsw i32 %mul, %add26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add27)
  %cmp28 = icmp ugt i32 %add27, 4096
  br i1 %cmp28, label %do.end33, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end25
  %9 = ptrtoint ptr %dfl_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dfl_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp36167.not = icmp eq i32 %10, 0
  br i1 %cmp36167.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  br label %for.body

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %pcidev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27) #10
  br label %cleanup

for.body:                                         ; preds = %do.end91.for.body_crit_edge, %for.body.lr.ph
  %dfl_res_off.0170 = phi i32 [ %add26, %for.body.lr.ph ], [ %add98, %do.end91.for.body_crit_edge ]
  %bars.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %do.end91.for.body_crit_edge ]
  %i.0168 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end91.for.body_crit_edge ]
  %11 = ptrtoint ptr %dfl_res to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %dfl_res, align 4
  %call38 = call i32 @pci_read_config_dword(ptr noundef %pcidev, i32 noundef %dfl_res_off.0170, ptr noundef nonnull %dfl_res) #7
  %12 = ptrtoint ptr %dfl_res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dfl_res, align 4
  %and39 = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and39)
  %cmp40 = icmp ugt i32 %and39, 5
  br i1 %cmp40, label %do.end45, label %if.end47

do.end45:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, i32 noundef %and39) #10
  br label %cleanup

if.end47:                                         ; preds = %for.body
  %shl = shl nuw nsw i32 1, %and39
  %and48 = and i32 %shl, %bars.0169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef %and39) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %or = or i32 %shl, %bars.0169
  %arrayidx = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 %and39
  %end = getelementptr %struct.pci_dev, ptr %pcidev, i32 0, i32 47, i32 %and39, i32 1
  %14 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp57 = icmp eq i32 %15, 0
  br i1 %cmp57, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %len, align 4
  %and66151 = and i32 %13, -8
  br label %do.end72

cond.end:                                         ; preds = %if.end55
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %15, %18
  %add65 = add i32 %sub, 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add65, ptr %len, align 4
  %and66 = and i32 %13, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and66, i32 %add65)
  %cmp67.not = icmp ult i32 %and66, %add65
  br i1 %cmp67.not, label %do.body75, label %cond.end.do.end72_crit_edge

cond.end.do.end72_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

do.end72:                                         ; preds = %cond.end.do.end72_crit_edge, %cond.end.thread
  %and66153 = phi i32 [ %and66151, %cond.end.thread ], [ %and66, %cond.end.do.end72_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.27, i32 noundef %and66153, ptr noundef nonnull %len) #10
  br label %cleanup

do.body75:                                        ; preds = %cond.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_dfls_by_vsec.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_dfls_by_vsec, %if.then87)) #7
          to label %do.end91 [label %if.then87], !srcloc !91

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @find_dfls_by_vsec.__UNIQUE_ID_ddebug263, ptr noundef %dev88, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.27, i32 noundef %and39, i32 noundef %and66) #7
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body75
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %sub92 = sub i32 %21, %and66
  store i32 %sub92, ptr %len, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 8
  %add96 = add i32 %23, %and66
  %call97 = call i32 @dfl_fpga_enum_info_add_dfl(ptr noundef %info, i32 noundef %add96, i32 noundef %sub92) #7
  %inc = add nuw i32 %i.0168, 1
  %add98 = add i32 %dfl_res_off.0170, 4
  %24 = ptrtoint ptr %dfl_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dfl_cnt, align 4
  %cmp36 = icmp ult i32 %inc, %25
  br i1 %cmp36, label %do.end91.for.body_crit_edge, label %do.end91.cleanup_crit_edge

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end91.for.body_crit_edge:                      ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %do.end91.cleanup_crit_edge, %do.end72, %do.end53, %do.end45, %do.end33, %for.cond.preheader.cleanup_crit_edge, %do.end23, %if.then13, %do.body.critedge
  %retval.0 = phi i32 [ -22, %do.end23 ], [ -22, %do.end33 ], [ -22, %do.end45 ], [ -22, %do.end53 ], [ -22, %do.end72 ], [ -19, %if.then13 ], [ -19, %do.body.critedge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %do.end91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dfl_res) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dfl_cnt) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vndr_hdr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dfl_fpga_feature_devs_enumerate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_enum_info_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msix_vec_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_next_ext_capability(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_enum_info_add_dfl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_iounmap_regions(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_feature_devs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_sriov(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_cdev_config_ports_pf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_cdev_config_ports_vf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_sriov(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_dfl_pci__279_440_cci_pci_driver_init6, !1, !"__initcall__kmod_dfl_pci__279_440_cci_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-pci.c", i32 440, i32 1}
!2 = !{ptr @__exitcall_cci_pci_driver_exit, !1, !"__exitcall_cci_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description280, !4, !"__UNIQUE_ID_description280", i1 false, i1 false}
!4 = !{!"../drivers/fpga/dfl-pci.c", i32 442, i32 1}
!5 = !{ptr @__UNIQUE_ID_author281, !6, !"__UNIQUE_ID_author281", i1 false, i1 false}
!6 = !{!"../drivers/fpga/dfl-pci.c", i32 443, i32 1}
!7 = !{ptr @__UNIQUE_ID_file282, !8, !"__UNIQUE_ID_file282", i1 false, i1 false}
!8 = !{!"../drivers/fpga/dfl-pci.c", i32 444, i32 1}
!9 = !{ptr @__UNIQUE_ID_license283, !8, !"__UNIQUE_ID_license283", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/fpga/dfl-pci.c", i32 433, i32 10}
!13 = !{ptr @cci_pci_driver, !14, !"cci_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/fpga/dfl-pci.c", i32 432, i32 26}
!15 = !{ptr @cci_pcie_id_tbl, !16, !"cci_pcie_id_tbl", i1 false, i1 false}
!16 = !{!"../drivers/fpga/dfl-pci.c", i32 86, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/fpga/dfl-pci.c", i32 347, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cci_pci_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cci_pci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/fpga/dfl-pci.c", i32 353, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cci_pci_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @cci_pci_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/fpga/dfl-pci.c", i32 367, i32 3}
!32 = !{ptr @cci_pci_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cci_pci_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/fpga/dfl-pci.c", i32 373, i32 3}
!36 = !{ptr @cci_pci_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cci_pci_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/fpga/dfl-pci.c", i32 381, i32 2}
!40 = !{ptr @cci_pci_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cci_pci_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/fpga/dfl-pci.c", i32 298, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cci_enumerate_feature_devs._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cci_enumerate_feature_devs._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/fpga/dfl-pci.c", i32 324, i32 3}
!49 = !{ptr @cci_enumerate_feature_devs._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cci_enumerate_feature_devs._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/fpga/dfl-pci.c", i32 55, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cci_pci_alloc_irq.__UNIQUE_ID_ddebug261, !52, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/fpga/dfl-pci.c", i32 155, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @find_dfls_by_vsec.__UNIQUE_ID_ddebug262, !56, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/fpga/dfl-pci.c", i32 162, i32 3}
!61 = !{ptr @find_dfls_by_vsec._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @find_dfls_by_vsec._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/fpga/dfl-pci.c", i32 169, i32 3}
!65 = !{ptr @find_dfls_by_vsec._entry.30, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @find_dfls_by_vsec._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/fpga/dfl-pci.c", i32 180, i32 4}
!69 = !{ptr @find_dfls_by_vsec._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @find_dfls_by_vsec._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/fpga/dfl-pci.c", i32 186, i32 4}
!73 = !{ptr @find_dfls_by_vsec._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @find_dfls_by_vsec._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/fpga/dfl-pci.c", i32 196, i32 4}
!77 = !{ptr @find_dfls_by_vsec._entry.39, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @find_dfls_by_vsec._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/fpga/dfl-pci.c", i32 201, i32 3}
!81 = !{ptr @find_dfls_by_vsec.__UNIQUE_ID_ddebug263, !80, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148494553, i64 2148494558, i64 2148494571, i64 2148494615, i64 2148494649, i64 2148494670}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 4989568}
!94 = !{i64 2154495013}
!95 = !{i64 2154495451}
!96 = !{!"auto-init"}
