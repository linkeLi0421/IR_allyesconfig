; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_si_pci.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_si_pci.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.si_sm_io = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, i32, ptr }
%union.ipmi_smi_info_union = type {}
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@__param_str_trypci = internal constant [15 x i8] c"ipmi_si.trypci\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@si_trypci = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_trypci = internal constant %struct.kernel_param { ptr @__param_str_trypci, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @si_trypci } }, section "__param", align 4
@__UNIQUE_ID_trypcitype236 = internal constant [29 x i8] c"ipmi_si.parmtype=trypci:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_trypci237 = internal constant [108 x i8] c"ipmi_si.parm=trypci:Setting this to zero will disable the default scan of the interfaces identified via pci\00", section ".modinfo", align 1
@ipmi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ipmi_pci_devices, ptr @ipmi_pci_probe, ptr @ipmi_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmi_si\00", [24 x i8] zeroinitializer }, align 32
@ipmi_si_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ipmi_pci: Unable to register PCI driver: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipmi_si_pci_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/ipmi/ipmi_si_pci.c\00", [32 x i8] zeroinitializer }, align 32
@ipmi_si_pci_init._entry_ptr = internal global ptr @ipmi_si_pci_init._entry, section ".printk_index", align 4
@pci_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ipmi_pci_devices = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4156, i32 4634, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 788224, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 788225, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 788226, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ipmi_pci_blacklist = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33132, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ipmi_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 73, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"probing via PCI\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipmi_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipmi_pci_probe._entry_ptr = internal global ptr @ipmi_pci_probe._entry, section ".printk_index", align 4
@ipmi_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 89, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown IPMI class: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@ipmi_pci_probe._entry_ptr.10 = internal global ptr @ipmi_pci_probe._entry.8, section ".printk_index", align 4
@ipmi_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.3, i32 95, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't enable PCI device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ipmi_pci_probe._entry_ptr.14 = internal global ptr @ipmi_pci_probe._entry.11, section ".printk_index", align 4
@ipmi_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.3, i32 119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%pR regsize %d spacing %d irq %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ipmi_pci_probe._entry_ptr.17 = internal global ptr @ipmi_pci_probe._entry.15, section ".printk_index", align 4
@ipmi_pci_probe_regspacing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 37, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not setup I/O space\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ipmi_pci_probe_regspacing\00", [38 x i8] zeroinitializer }, align 32
@ipmi_pci_probe_regspacing._entry_ptr = internal global ptr @ipmi_pci_probe_regspacing._entry, section ".printk_index", align 4
@switch.table.ipmi_pci_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"si_trypci\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 16, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"ipmi_pci_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 138, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 148, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 150, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"pci_registered\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"ipmi_pci_devices\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 129, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"ipmi_pci_blacklist\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 53, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 73, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 89, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 95, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 118, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [35 x i8] c"../drivers/char/ipmi/ipmi_si_pci.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 37, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"switch.table.ipmi_pci_probe\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_trypci237, ptr @__UNIQUE_ID_trypcitype236, ptr @__param_trypci, ptr @ipmi_pci_probe._entry, ptr @ipmi_pci_probe._entry.11, ptr @ipmi_pci_probe._entry.15, ptr @ipmi_pci_probe._entry.8, ptr @ipmi_pci_probe._entry_ptr, ptr @ipmi_pci_probe._entry_ptr.10, ptr @ipmi_pci_probe._entry_ptr.14, ptr @ipmi_pci_probe._entry_ptr.17, ptr @ipmi_pci_probe_regspacing._entry, ptr @ipmi_pci_probe_regspacing._entry_ptr, ptr @ipmi_si_pci_init._entry, ptr @ipmi_si_pci_init._entry_ptr, ptr @si_trypci, ptr @ipmi_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @pci_registered, ptr @ipmi_pci_devices, ptr @ipmi_pci_blacklist, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @switch.table.ipmi_pci_probe], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_trypci to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_si_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_devices to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_blacklist to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_pci_probe_regspacing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipmi_pci_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_si_pci_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @si_trypci, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ipmi_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #7
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @pci_registered, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.else, %do.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipmi_si_pci_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @pci_registered, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @ipmi_pci_driver) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %io = alloca %struct.si_sm_io, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %io) #4
  %call = tail call ptr @pci_match_id(ptr noundef nonnull @ipmi_pci_blacklist, ptr noundef %pdev) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %io, i32 0, i32 72)
  %addr_source = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 8
  %1 = ptrtoint ptr %addr_source to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %addr_source, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  %class = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  %switch.tableidx = add i32 %3, -788224
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %3) #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ipmi_pci_probe, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %si_type4 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 18
  %6 = ptrtoint ptr %si_type4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %si_type4, align 4
  %call10 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end17:                                         ; preds = %switch.lookup
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 8
  %9 = xor i32 %and.lobit, 1
  %spec.select58 = select i1 %tobool18.not, ptr @ipmi_si_mem_setup, ptr @ipmi_si_port_setup
  %10 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %10, align 4
  %12 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select58, ptr %12, align 4
  %14 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resource, align 8
  %addr_data = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 7
  %16 = ptrtoint ptr %addr_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %addr_data, align 4
  %dev26 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 19
  %17 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev26, align 4
  %si_type.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 18
  %18 = ptrtoint ptr %si_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %si_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %if.then.i, label %if.end17.ipmi_pci_probe_regspacing.exit_crit_edge

if.end17.ipmi_pci_probe_regspacing.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipmi_pci_probe_regspacing.exit

if.then.i:                                        ; preds = %if.end17
  %regsize.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 4
  %20 = ptrtoint ptr %regsize.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %regsize.i, align 4
  %regshift.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 5
  %21 = ptrtoint ptr %regshift.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %regshift.i, align 4
  %regspacing2.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %outputb.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 1
  %io_cleanup.i = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 11
  %22 = ptrtoint ptr %regspacing2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %regspacing2.i, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %12, align 4
  %call.i = call i32 %24(ptr noundef nonnull %io) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.end7.1.i.do.end.i_crit_edge, %if.end7.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %25 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18) #7
  br label %ipmi_pci_probe_regspacing.exit

if.end.i:                                         ; preds = %if.then.i
  %27 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %outputb.i, align 4
  call void %28(ptr noundef nonnull %io, i32 noundef 1, i8 noundef zeroext 16) #4
  %29 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io, align 4
  %call4.i = call zeroext i8 %30(ptr noundef nonnull %io, i32 noundef 1) #4
  %31 = ptrtoint ptr %io_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_cleanup.i, align 4
  call void %32(ptr noundef nonnull %io) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool5.not.i = icmp eq i8 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.ipmi_pci_probe_regspacing.exit_crit_edge

if.end.i.ipmi_pci_probe_regspacing.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipmi_pci_probe_regspacing.exit

if.end7.i:                                        ; preds = %if.end.i
  %33 = ptrtoint ptr %regspacing2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %regspacing2.i, align 4
  %34 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %12, align 4
  %call.1.i = call i32 %35(ptr noundef nonnull %io) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end7.i.do.end.i_crit_edge

if.end7.i.do.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.1.i:                                       ; preds = %if.end7.i
  %36 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %outputb.i, align 4
  call void %37(ptr noundef nonnull %io, i32 noundef 1, i8 noundef zeroext 16) #4
  %38 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io, align 4
  %call4.1.i = call zeroext i8 %39(ptr noundef nonnull %io, i32 noundef 1) #4
  %40 = ptrtoint ptr %io_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_cleanup.i, align 4
  call void %41(ptr noundef nonnull %io) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.1.i)
  %tobool5.not.1.i = icmp eq i8 %call4.1.i, 0
  br i1 %tobool5.not.1.i, label %if.end7.1.i, label %if.end.1.i.ipmi_pci_probe_regspacing.exit_crit_edge

if.end.1.i.ipmi_pci_probe_regspacing.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipmi_pci_probe_regspacing.exit

if.end7.1.i:                                      ; preds = %if.end.1.i
  %42 = ptrtoint ptr %regspacing2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %regspacing2.i, align 4
  %43 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %12, align 4
  %call.2.i = call i32 %44(ptr noundef nonnull %io) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end7.1.i.do.end.i_crit_edge

if.end7.1.i.do.end.i_crit_edge:                   ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.2.i:                                       ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %outputb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %outputb.i, align 4
  call void %46(ptr noundef nonnull %io, i32 noundef 1, i8 noundef zeroext 16) #4
  %47 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io, align 4
  %call4.2.i = call zeroext i8 %48(ptr noundef nonnull %io, i32 noundef 1) #4
  %49 = ptrtoint ptr %io_cleanup.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_cleanup.i, align 4
  call void %50(ptr noundef nonnull %io) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.2.i)
  %tobool5.not.2.i = icmp eq i8 %call4.2.i, 0
  %spec.select.i = select i1 %tobool5.not.2.i, i32 1, i32 16
  br label %ipmi_pci_probe_regspacing.exit

ipmi_pci_probe_regspacing.exit:                   ; preds = %if.end.2.i, %if.end.1.i.ipmi_pci_probe_regspacing.exit_crit_edge, %if.end.i.ipmi_pci_probe_regspacing.exit_crit_edge, %do.end.i, %if.end17.ipmi_pci_probe_regspacing.exit_crit_edge
  %retval.1.i = phi i32 [ 1, %if.end17.ipmi_pci_probe_regspacing.exit_crit_edge ], [ 1, %do.end.i ], [ 1, %if.end.i.ipmi_pci_probe_regspacing.exit_crit_edge ], [ 4, %if.end.1.i.ipmi_pci_probe_regspacing.exit_crit_edge ], [ %spec.select.i, %if.end.2.i ]
  %regspacing = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 3
  %51 = ptrtoint ptr %regspacing to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.1.i, ptr %regspacing, align 4
  %regsize = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 4
  %52 = ptrtoint ptr %regsize to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %regsize, align 4
  %regshift = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 5
  %53 = ptrtoint ptr %regshift to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %regshift, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %irq28 = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 13
  %56 = ptrtoint ptr %irq28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %irq28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool30.not = icmp eq i32 %55, 0
  br i1 %tobool30.not, label %ipmi_pci_probe_regspacing.exit.do.end35_crit_edge, label %if.then31

ipmi_pci_probe_regspacing.exit.do.end35_crit_edge: ; preds = %ipmi_pci_probe_regspacing.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end35

if.then31:                                        ; preds = %ipmi_pci_probe_regspacing.exit
  call void @__sanitizer_cov_trace_pc() #6
  %irq_setup = getelementptr inbounds %struct.si_sm_io, ptr %io, i32 0, i32 14
  %57 = ptrtoint ptr %irq_setup to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ipmi_std_irq_setup, ptr %irq_setup, align 4
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %ipmi_pci_probe_regspacing.exit.do.end35_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %resource, i32 noundef 1, i32 noundef %retval.1.i, i32 noundef %55) #7
  %call42 = call i32 @ipmi_si_add_smi(ptr noundef nonnull %io) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end15, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end7 ], [ %call10, %do.end15 ], [ %call42, %do.end35 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %io) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ipmi_si_remove_by_dev(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_si_port_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_si_mem_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_std_irq_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_si_add_smi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_si_remove_by_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__param_trypci, !1, !"__param_trypci", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_trypcitype236, !1, !"__UNIQUE_ID_trypcitype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_trypci237, !4, !"__UNIQUE_ID_trypci237", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 19, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 148, i32 12}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 150, i32 4}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ipmi_si_pci_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @ipmi_si_pci_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = distinct !{null, !14, !"pci_registered", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 14, i32 13}
!15 = !{ptr @__param_str_trypci, !1, !"__param_str_trypci", i1 false, i1 false}
!16 = !{ptr @si_trypci, !17, !"si_trypci", i1 false, i1 false}
!17 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 16, i32 13}
!18 = !{ptr @ipmi_pci_driver, !19, !"ipmi_pci_driver", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 138, i32 26}
!20 = !{ptr @ipmi_pci_devices, !21, !"ipmi_pci_devices", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 129, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 73, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ipmi_pci_probe._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @ipmi_pci_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 89, i32 3}
!31 = !{ptr @ipmi_pci_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ipmi_pci_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 95, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ipmi_pci_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ipmi_pci_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 118, i32 2}
!40 = !{ptr @ipmi_pci_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ipmi_pci_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ipmi_pci_blacklist, !43, !"ipmi_pci_blacklist", i1 false, i1 false}
!43 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 53, i32 29}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_si_pci.c", i32 37, i32 5}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ipmi_pci_probe_regspacing._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ipmi_pci_probe_regspacing._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
