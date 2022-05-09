; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/aer_inject.c_pt.bc'
source_filename = "../drivers/pci/pcie/aer_inject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_bus_ops = type { %struct.list_head, ptr, ptr }
%struct.aer_error_inj = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.aer_error = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_aer_mask_override = internal constant [29 x i8] c"aer_inject.aer_mask_override\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@aer_mask_override = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_aer_mask_override = internal constant %struct.kernel_param { ptr @__param_str_aer_mask_override, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @aer_mask_override } }, section "__param", align 4
@__UNIQUE_ID_aer_mask_overridetype236 = internal constant [43 x i8] c"aer_inject.parmtype=aer_mask_override:bool\00", section ".modinfo", align 1
@aer_inject_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str, ptr @aer_inject_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@inject_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@einjected = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @einjected, ptr @einjected }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_aer_inject__238_544_aer_inject_init6 = internal global ptr @aer_inject_init, section ".initcall6.init", align 4
@__exitcall_aer_inject_exit = internal global ptr @aer_inject_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [56 x i8] c"aer_inject.description=PCIe AER software error injector\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [44 x i8] c"aer_inject.file=drivers/pci/pcie/aer_inject\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [23 x i8] c"aer_inject.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aer_inject\00", [21 x i8] zeroinitializer }, align 32
@aer_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @aer_inject_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@aer_inject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str, ptr @.str.5, i32 340, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"aer_inject: Neither Root Port nor RCEC found\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/pci/pcie/aer_inject.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr = internal global ptr @aer_inject._entry, section ".printk_index", align 4
@aer_inject._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str, ptr @.str.5, i32 347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"aer_inject: Device doesn't support AER\0A\00", [56 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr.10 = internal global ptr @aer_inject._entry.8, section ".printk_index", align 4
@aer_inject._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str, ptr @.str.5, i32 358, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"aer_inject: Root port doesn't support AER\0A\00", [53 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr.13 = internal global ptr @aer_inject._entry.11, section ".printk_index", align 4
@aer_inject._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str, ptr @.str.5, i32 406, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"aer_inject: The correctable error(s) is masked by device\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr.17 = internal global ptr @aer_inject._entry.14, section ".printk_index", align 4
@aer_inject._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str, ptr @.str.5, i32 413, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"aer_inject: The uncorrectable error(s) is masked by device\0A\00", [36 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr.20 = internal global ptr @aer_inject._entry.18, section ".printk_index", align 4
@aer_inject._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str, ptr @.str.5, i32 468, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"aer_inject: AER service is not initialized\0A\00", [52 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr.23 = internal global ptr @aer_inject._entry.21, section ".printk_index", align 4
@aer_inject._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str, ptr @.str.5, i32 473, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"aer_inject: Injecting errors %08x/%08x into device %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr.27 = internal global ptr @aer_inject._entry.24, section ".printk_index", align 4
@aer_inject._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str, ptr @.str.5, i32 476, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"aer_inject: AER device not found\0A\00", [62 x i8] zeroinitializer }, align 32
@aer_inject._entry_ptr.30 = internal global ptr @aer_inject._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aer_inj_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @aer_inj_read_config, ptr @aer_inj_write_config }, [44 x i8] zeroinitializer }, align 32
@pci_bus_ops_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pci_bus_ops_list, ptr @pci_bus_ops_list }, [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 3, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.32 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 3, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"aer_mask_override\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 31, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"aer_inject_device\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 512, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"inject_lock\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"einjected\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 70, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 514, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"aer_inject_fops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 506, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 156, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 340, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 347, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 358, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 406, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 413, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 468, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 472, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 476, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"aer_inj_pci_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 283, i32 23 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"pci_bus_ops_list\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 72, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [33 x i8] c"../drivers/pci/pcie/aer_inject.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 75, i32 8 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_aer_mask_overridetype236, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_aer_inject_exit, ptr @__initcall__kmod_aer_inject__238_544_aer_inject_init6, ptr @__param_aer_mask_override, ptr @aer_inject._entry, ptr @aer_inject._entry.11, ptr @aer_inject._entry.14, ptr @aer_inject._entry.18, ptr @aer_inject._entry.21, ptr @aer_inject._entry.24, ptr @aer_inject._entry.28, ptr @aer_inject._entry.8, ptr @aer_inject._entry_ptr, ptr @aer_inject._entry_ptr.10, ptr @aer_inject._entry_ptr.13, ptr @aer_inject._entry_ptr.17, ptr @aer_inject._entry_ptr.20, ptr @aer_inject._entry_ptr.23, ptr @aer_inject._entry_ptr.27, ptr @aer_inject._entry_ptr.30, ptr @aer_inject_exit, ptr @aer_mask_override, ptr @aer_inject_device, ptr @inject_lock, ptr @einjected, ptr @.str, ptr @aer_inject_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @aer_inj_pci_ops, ptr @pci_bus_ops_list, ptr @.str.31], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_mask_override to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inject_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @einjected to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inject._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aer_inj_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_ops_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aer_inject_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @misc_deregister(ptr noundef nonnull @aer_inject_device) #8
  %call2.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @inject_lock) #8
  %0 = load volatile ptr, ptr @pci_bus_ops_list, align 4
  %cmp10.not.i29 = icmp eq ptr %0, @pci_bus_ops_list
  %tobool.not.i2730 = icmp eq ptr %0, null
  %tobool.not.i31 = or i1 %cmp10.not.i29, %tobool.not.i2730
  br i1 %tobool.not.i31, label %entry.do.body2_crit_edge, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  br label %if.then.i

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %1 = phi ptr [ %14, %while.body.if.then.i_crit_edge ], [ %0, %entry.if.then.i_crit_edge ]
  %call2.i32 = phi i32 [ %call2.i, %while.body.if.then.i_crit_edge ], [ %call2.i28, %entry.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.i.i.i, %if.then.i.while.body_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call2.i32) #8
  %bus = getelementptr inbounds %struct.pci_bus_ops, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %ops = getelementptr inbounds %struct.pci_bus_ops, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %call1 = tail call ptr @pci_bus_set_ops(ptr noundef %11, ptr noundef %13) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @inject_lock) #8
  %14 = load volatile ptr, ptr @pci_bus_ops_list, align 4
  %cmp10.not.i = icmp eq ptr %14, @pci_bus_ops_list
  %tobool.not.i27 = icmp eq ptr %14, null
  %tobool.not.i = or i1 %cmp10.not.i, %tobool.not.i27
  br i1 %tobool.not.i, label %while.body.do.body2_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

while.body.do.body2_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2:                                         ; preds = %while.body.do.body2_crit_edge, %entry.do.body2_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i28, %entry.do.body2_crit_edge ], [ %call2.i, %while.body.do.body2_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call2.i.lcssa) #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @inject_lock) #8
  %15 = load ptr, ptr @einjected, align 4
  %cmp12.not33 = icmp eq ptr %15, @einjected
  br i1 %cmp12.not33, label %do.body2.for.end_crit_edge, label %do.body2.for.body_crit_edge

do.body2.for.body_crit_edge:                      ; preds = %do.body2
  br label %for.body

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.body2.for.body_crit_edge
  %err.034 = phi ptr [ %err_next.0, %list_del.exit.for.body_crit_edge ], [ %15, %do.body2.for.body_crit_edge ]
  %16 = ptrtoint ptr %err.034 to i32
  call void @__asan_load4_noabort(i32 %16)
  %err_next.0 = load ptr, ptr %err.034, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %err.034) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i26 = getelementptr inbounds %struct.list_head, ptr %err.034, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i26, align 4
  %19 = ptrtoint ptr %err.034 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %err.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %23 = ptrtoint ptr %err.034 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %err.034, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %err.034, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %err.034) #8
  %cmp12.not = icmp eq ptr %err_next.0, @einjected
  br i1 %cmp12.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.body2.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_set_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_inject_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @aer_inject_device) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_inject_write(ptr nocapture noundef readnone %filp, ptr noundef %ubuf, i32 noundef %usize, ptr nocapture noundef readnone %off) #3 align 64 {
entry:
  %sever.i = alloca i32, align 4
  %cor_mask.i = alloca i32, align 4
  %uncor_mask.i = alloca i32, align 4
  %einj = alloca %struct.aer_error_inj, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %einj) #8
  %call = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %usize, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %0)
  %1 = icmp ult i32 %0, -5
  br i1 %1, label %if.end.cleanup_crit_edge, label %if.end59.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  %2 = call ptr @memset(ptr %einj, i32 0, i32 32)
  call void @__check_object_size(ptr noundef nonnull %einj, i32 noundef %usize, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %usize, i32 -1226833920) #11, !srcloc !84
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !85

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %einj, i32 noundef %usize) #8
  %4 = call i32 @llvm.read_register.i32(metadata !74) #8
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !86
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !87
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %einj, ptr noundef %ubuf, i32 noundef %usize) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #8, !srcloc !87
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !85

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i20 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %usize, %if.end59.i.i.if.then11.i.i_crit_edge ], [ %usize, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %usize, %res.0.i.i20
  %add.ptr.i.i = getelementptr i8, ptr %einj, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i20)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %dev1.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dev1.i, align 1
  %10 = shl i8 %9, 3
  %fn.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 2
  %11 = ptrtoint ptr %fn.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fn.i, align 2
  %13 = and i8 %12, 7
  %or340.i = or i8 %13, %10
  %or.i = zext i8 %or340.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sever.i) #8
  %14 = ptrtoint ptr %sever.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %sever.i, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cor_mask.i) #8
  %15 = ptrtoint ptr %cor_mask.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %cor_mask.i, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uncor_mask.i) #8
  %16 = ptrtoint ptr %uncor_mask.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %uncor_mask.i, align 4, !annotation !89
  %domain.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 9
  %17 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %domain.i, align 4
  %19 = ptrtoint ptr %einj to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %einj, align 4
  %conv4.i = zext i8 %20 to i32
  %call.i = call ptr @pci_get_domain_bus_and_slot(i32 noundef %18, i32 noundef %conv4.i, i32 noundef %or.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %aer_inject.exit.thread, label %if.end6.while.body.i.i_crit_edge

if.end6.while.body.i.i_crit_edge:                 ; preds = %if.end6
  br label %while.body.i.i

aer_inject.exit.thread:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uncor_mask.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cor_mask.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sever.i) #8
  br label %cleanup

while.body.i.i:                                   ; preds = %pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge, %if.end6.while.body.i.i_crit_edge
  %dev.addr.08.i.i = phi ptr [ %36, %pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge ], [ %call.i, %if.end6.while.body.i.i_crit_edge ]
  %pcie_cap.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %pcie_cap.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pcie_cap.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.i.not.i.i, label %while.body.i.i.if.end.i.i16_crit_edge, label %land.lhs.true.i.i15

while.body.i.i.if.end.i.i16_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i16

land.lhs.true.i.i15:                              ; preds = %while.body.i.i
  %pcie_flags_reg.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 25
  %23 = ptrtoint ptr %pcie_flags_reg.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pcie_flags_reg.i.i.i.i, align 2
  %25 = and i16 %24, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %25)
  %cmp.i.i14 = icmp eq i16 %25, 64
  br i1 %cmp.i.i14, label %land.lhs.true.i.i15.if.end12.i_crit_edge, label %land.lhs.true.i.i15.if.end.i.i16_crit_edge

land.lhs.true.i.i15.if.end.i.i16_crit_edge:       ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i16

land.lhs.true.i.i15.if.end12.i_crit_edge:         ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end.i.i16:                                     ; preds = %land.lhs.true.i.i15.if.end.i.i16_crit_edge, %while.body.i.i.if.end.i.i16_crit_edge
  %is_virtfn.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 49
  %26 = ptrtoint ptr %is_virtfn.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 5)
  %bf.load.i.i.i.i = load i40, ptr %is_virtfn.i.i.i.i, align 1
  %27 = and i40 %bf.load.i.i.i.i, 65536
  %tobool.not.i.i.i.i = icmp eq i40 %27, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i16.pci_physfn.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i16.pci_physfn.exit.i.i.i_crit_edge:     ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_physfn.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i16
  call void @__sanitizer_cov_trace_pc() #10
  %28 = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.08.i.i, i32 0, i32 66
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  br label %pci_physfn.exit.i.i.i

pci_physfn.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.end.i.i16.pci_physfn.exit.i.i.i_crit_edge
  %dev.addr.0.i.i.i.i = phi ptr [ %30, %if.then.i.i.i.i ], [ %dev.addr.08.i.i, %if.end.i.i16.pci_physfn.exit.i.i.i_crit_edge ]
  %bus.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i.i.i, align 8
  %parent.i.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i.i.i.i, align 8
  %tobool.not.i5.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i5.i.i.i, label %pci_physfn.exit.i.i.i.if.end8.i_crit_edge, label %pci_upstream_bridge.exit.i.i

pci_physfn.exit.i.i.i.if.end8.i_crit_edge:        ; preds = %pci_physfn.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

pci_upstream_bridge.exit.i.i:                     ; preds = %pci_physfn.exit.i.i.i
  %self.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %self.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %self.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %pci_upstream_bridge.exit.i.i.if.end8.i_crit_edge, label %pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge

pci_upstream_bridge.exit.i.i.while.body.i.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

pci_upstream_bridge.exit.i.i.if.end8.i_crit_edge: ; preds = %pci_upstream_bridge.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %pci_upstream_bridge.exit.i.i.if.end8.i_crit_edge, %pci_physfn.exit.i.i.i.if.end8.i_crit_edge
  %rcec.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 17
  %37 = ptrtoint ptr %rcec.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rcec.i, align 8
  %tobool9.not.i = icmp eq ptr %38, null
  br i1 %tobool9.not.i, label %do.end.i, label %if.end8.i.if.end12.i_crit_edge

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.4) #12
  br label %aer_inject.exit

if.end12.i:                                       ; preds = %if.end8.i.if.end12.i_crit_edge, %land.lhs.true.i.i15.if.end12.i_crit_edge
  %rpdev.0383.i = phi ptr [ %38, %if.end8.i.if.end12.i_crit_edge ], [ %dev.addr.08.i.i, %land.lhs.true.i.i15.if.end12.i_crit_edge ]
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 14
  %39 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %aer_cap.i, align 2
  %conv13.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool14.not.i = icmp eq i16 %40, 0
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end20.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.9) #12
  br label %aer_inject.exit

if.end20.i:                                       ; preds = %if.end12.i
  %add.i = add nuw nsw i32 %conv13.i, 12
  %call21.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i, i32 noundef %add.i, ptr noundef nonnull %sever.i) #8
  %add22.i = add nuw nsw i32 %conv13.i, 20
  %call23.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i, i32 noundef %add22.i, ptr noundef nonnull %cor_mask.i) #8
  %add24.i = add nuw nsw i32 %conv13.i, 8
  %call25.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i, i32 noundef %add24.i, ptr noundef nonnull %uncor_mask.i) #8
  %aer_cap26.i = getelementptr inbounds %struct.pci_dev, ptr %rpdev.0383.i, i32 0, i32 14
  %41 = ptrtoint ptr %aer_cap26.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %aer_cap26.i, align 2
  %conv27.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool28.not.i = icmp eq i16 %42, 0
  br i1 %tobool28.not.i, label %do.end32.i, label %if.end34.i

do.end32.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %rpdev.0383.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.12) #12
  br label %aer_inject.exit

if.end34.i:                                       ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 56) #13
  %tobool36.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool36.not.i, label %if.end34.i.aer_inject.exit_crit_edge, label %if.end38.i

if.end34.i.aer_inject.exit_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aer_inject.exit

if.end38.i:                                       ; preds = %if.end34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i341.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 56) #13
  %tobool40.not.i = icmp eq ptr %call7.i.i341.i, null
  br i1 %tobool40.not.i, label %if.end38.i.aer_inject.exit_crit_edge, label %if.end42.i

if.end38.i.aer_inject.exit_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aer_inject.exit

if.end42.i:                                       ; preds = %if.end38.i
  %45 = load i8, ptr @aer_mask_override, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool43.not.i = icmp eq i8 %45, 0
  br i1 %tobool43.not.i, label %if.end42.i.do.body57.i_crit_edge, label %if.then44.i

if.end42.i.do.body57.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %cor_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cor_mask.i, align 4
  %cor_status.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 4
  %48 = ptrtoint ptr %cor_status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cor_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool45.not.i = icmp eq i32 %49, 0
  %lnot.ext.i = zext i1 %tobool45.not.i to i32
  %and46.i = and i32 %47, %lnot.ext.i
  %50 = ptrtoint ptr %cor_mask.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and46.i, ptr %cor_mask.i, align 4
  %call48.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call.i, i32 noundef %add22.i, i32 noundef %and46.i) #8
  %51 = ptrtoint ptr %uncor_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %uncor_mask.i, align 4
  %uncor_status.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 3
  %53 = ptrtoint ptr %uncor_status.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %uncor_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool49.not.i = icmp eq i32 %54, 0
  %lnot.ext51.i = zext i1 %tobool49.not.i to i32
  %and52.i = and i32 %52, %lnot.ext51.i
  %55 = ptrtoint ptr %uncor_mask.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and52.i, ptr %uncor_mask.i, align 4
  %call54.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call.i, i32 noundef %add24.i, i32 noundef %and52.i) #8
  br label %do.body57.i

do.body57.i:                                      ; preds = %if.then44.i, %if.end42.i.do.body57.i_crit_edge
  %cor_mask_orig.0.i = phi i32 [ %47, %if.then44.i ], [ 0, %if.end42.i.do.body57.i_crit_edge ]
  %uncor_mask_orig.0.i = phi i32 [ %52, %if.then44.i ], [ 0, %if.end42.i.do.body57.i_crit_edge ]
  %call60.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @inject_lock) #8
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 1
  %56 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i.i, align 8
  %domain_nr.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %domain_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %domain_nr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i342.i = icmp slt i32 %59, 0
  br i1 %cmp.i342.i, label %do.body57.i.if.then67.i_crit_edge, label %if.end.i343.i

do.body57.i.if.then67.i_crit_edge:                ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67.i

if.end.i343.i:                                    ; preds = %do.body57.i
  %number.i.i = getelementptr inbounds %struct.pci_bus, ptr %57, i32 0, i32 12
  %60 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %number.i.i, align 4
  %conv.i.i = zext i8 %61 to i32
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 6
  %62 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %devfn.i.i, align 4
  %err.017.i.i.i = load ptr, ptr @einjected, align 4
  %cmp.not18.i.i.i = icmp eq ptr %err.017.i.i.i, @einjected
  br i1 %cmp.not18.i.i.i, label %if.end.i343.i.if.then67.i_crit_edge, label %if.end.i343.i.for.body.i.i.i_crit_edge

if.end.i343.i.for.body.i.i.i_crit_edge:           ; preds = %if.end.i343.i
  br label %for.body.i.i.i

if.end.i343.i.if.then67.i_crit_edge:              ; preds = %if.end.i343.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.i343.i.for.body.i.i.i_crit_edge
  %err.019.i.i.i = phi ptr [ %err.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %err.017.i.i.i, %if.end.i343.i.for.body.i.i.i_crit_edge ]
  %domain1.i.i.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %domain1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %domain1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %59)
  %cmp2.i.i.i = icmp eq i32 %65, %59
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %bus3.i.i.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %bus3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bus3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv.i.i)
  %cmp4.i.i.i = icmp eq i32 %67, %conv.i.i
  br i1 %cmp4.i.i.i, label %land.lhs.true5.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %devfn6.i.i.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %devfn6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %devfn6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %63)
  %cmp7.i.i.i = icmp eq i32 %69, %63
  br i1 %cmp7.i.i.i, label %__find_aer_error_by_dev.exit.i, label %land.lhs.true5.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true5.i.i.i.for.inc.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %70 = ptrtoint ptr %err.019.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %err.0.i.i.i = load ptr, ptr %err.019.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %err.0.i.i.i, @einjected
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.if.then67.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.if.then67.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67.i

__find_aer_error_by_dev.exit.i:                   ; preds = %land.lhs.true5.i.i.i
  %tobool66.not.i = icmp eq ptr %err.019.i.i.i, null
  br i1 %tobool66.not.i, label %__find_aer_error_by_dev.exit.i.if.then67.i_crit_edge, label %__find_aer_error_by_dev.exit.i.if.end71.i_crit_edge

__find_aer_error_by_dev.exit.i.if.end71.i_crit_edge: ; preds = %__find_aer_error_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

__find_aer_error_by_dev.exit.i.if.then67.i_crit_edge: ; preds = %__find_aer_error_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then67.i

if.then67.i:                                      ; preds = %__find_aer_error_by_dev.exit.i.if.then67.i_crit_edge, %for.inc.i.i.i.if.then67.i_crit_edge, %if.end.i343.i.if.then67.i_crit_edge, %do.body57.i.if.then67.i_crit_edge
  %71 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %domain.i, align 4
  %73 = ptrtoint ptr %einj to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %einj, align 4
  %conv70.i = zext i8 %74 to i32
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i.i, ptr %prev.i.i.i, align 4
  %domain1.i.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %domain1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %72, ptr %domain1.i.i, align 8
  %bus2.i.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %bus2.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv70.i, ptr %bus2.i.i, align 4
  %devfn3.i.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %devfn3.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i, ptr %devfn3.i.i, align 8
  %pos_cap_err4.i.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i.i, i32 0, i32 4
  %80 = ptrtoint ptr %pos_cap_err4.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv13.i, ptr %pos_cap_err4.i.i, align 4
  %81 = load ptr, ptr @einjected, align 4
  %call.i.i.i17 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @einjected, ptr noundef %81) #8
  br i1 %call.i.i.i17, label %if.end.i.i.i, label %if.then67.i.if.end71.i_crit_edge

if.then67.i.if.end71.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.i

if.end.i.i.i:                                     ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %83 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %81, ptr %call7.i.i.i, align 8
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @einjected, ptr %prev.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @einjected, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end.i.i.i, %if.then67.i.if.end71.i_crit_edge, %__find_aer_error_by_dev.exit.i.if.end71.i_crit_edge
  %err_alloc.0.i = phi ptr [ %call7.i.i.i, %__find_aer_error_by_dev.exit.i.if.end71.i_crit_edge ], [ null, %if.then67.i.if.end71.i_crit_edge ], [ null, %if.end.i.i.i ]
  %err.0.i = phi ptr [ %err.019.i.i.i, %__find_aer_error_by_dev.exit.i.if.end71.i_crit_edge ], [ %call7.i.i.i, %if.then67.i.if.end71.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ]
  %uncor_status72.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 3
  %85 = ptrtoint ptr %uncor_status72.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %uncor_status72.i, align 4
  %uncor_status73.i = getelementptr inbounds %struct.aer_error, ptr %err.0.i, i32 0, i32 5
  %87 = ptrtoint ptr %uncor_status73.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %uncor_status73.i, align 4
  %or74.i = or i32 %88, %86
  store i32 %or74.i, ptr %uncor_status73.i, align 4
  %cor_status75.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 4
  %89 = ptrtoint ptr %cor_status75.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cor_status75.i, align 4
  %cor_status76.i = getelementptr inbounds %struct.aer_error, ptr %err.0.i, i32 0, i32 6
  %91 = ptrtoint ptr %cor_status76.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cor_status76.i, align 4
  %or77.i = or i32 %92, %90
  store i32 %or77.i, ptr %cor_status76.i, align 4
  %header_log0.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 5
  %93 = ptrtoint ptr %header_log0.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %header_log0.i, align 4
  %header_log078.i = getelementptr inbounds %struct.aer_error, ptr %err.0.i, i32 0, i32 7
  %95 = ptrtoint ptr %header_log078.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %header_log078.i, align 4
  %header_log1.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 6
  %96 = ptrtoint ptr %header_log1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %header_log1.i, align 4
  %header_log179.i = getelementptr inbounds %struct.aer_error, ptr %err.0.i, i32 0, i32 8
  %98 = ptrtoint ptr %header_log179.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %header_log179.i, align 4
  %header_log2.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 7
  %99 = ptrtoint ptr %header_log2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %header_log2.i, align 4
  %header_log280.i = getelementptr inbounds %struct.aer_error, ptr %err.0.i, i32 0, i32 9
  %101 = ptrtoint ptr %header_log280.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %header_log280.i, align 4
  %header_log3.i = getelementptr inbounds %struct.aer_error_inj, ptr %einj, i32 0, i32 8
  %102 = ptrtoint ptr %header_log3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %header_log3.i, align 4
  %header_log381.i = getelementptr inbounds %struct.aer_error, ptr %err.0.i, i32 0, i32 10
  %104 = ptrtoint ptr %header_log381.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %header_log381.i, align 4
  %105 = load i8, ptr @aer_mask_override, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool82.not.i = icmp eq i8 %105, 0
  br i1 %tobool82.not.i, label %land.lhs.true.i, label %if.end71.i.if.end109.i_crit_edge

if.end71.i.if.end109.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

land.lhs.true.i:                                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool84.not.i = icmp eq i32 %90, 0
  br i1 %tobool84.not.i, label %land.lhs.true.i.land.lhs.true96.i_crit_edge, label %land.lhs.true85.i

land.lhs.true.i.land.lhs.true96.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true96.i

land.lhs.true85.i:                                ; preds = %land.lhs.true.i
  %106 = ptrtoint ptr %cor_mask.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cor_mask.i, align 4
  %neg.i = xor i32 %107, -1
  %and87.i = and i32 %90, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.then89.i, label %land.lhs.true85.i.land.lhs.true96.i_crit_edge

land.lhs.true85.i.land.lhs.true96.i_crit_edge:    ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true96.i

if.then89.i:                                      ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev93.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev93.i, ptr noundef nonnull @.str.15) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call60.i) #8
  br label %aer_inject.exit

land.lhs.true96.i:                                ; preds = %land.lhs.true85.i.land.lhs.true96.i_crit_edge, %land.lhs.true.i.land.lhs.true96.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool98.not.i = icmp eq i32 %86, 0
  br i1 %tobool98.not.i, label %land.lhs.true96.i.if.end109.i_crit_edge, label %land.lhs.true99.i

land.lhs.true96.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

land.lhs.true99.i:                                ; preds = %land.lhs.true96.i
  %108 = ptrtoint ptr %uncor_mask.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %uncor_mask.i, align 4
  %neg101.i = xor i32 %109, -1
  %and102.i = and i32 %86, %neg101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.then104.i, label %land.lhs.true99.i.if.end109.i_crit_edge

land.lhs.true99.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109.i

if.then104.i:                                     ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev108.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev108.i, ptr noundef nonnull @.str.19) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call60.i) #8
  br label %aer_inject.exit

if.end109.i:                                      ; preds = %land.lhs.true99.i.if.end109.i_crit_edge, %land.lhs.true96.i.if.end109.i_crit_edge, %if.end71.i.if.end109.i_crit_edge
  %bus.i344.i = getelementptr inbounds %struct.pci_dev, ptr %rpdev.0383.i, i32 0, i32 1
  %110 = ptrtoint ptr %bus.i344.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus.i344.i, align 8
  %domain_nr.i.i345.i = getelementptr inbounds %struct.pci_bus, ptr %111, i32 0, i32 16
  %112 = ptrtoint ptr %domain_nr.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %domain_nr.i.i345.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i346.i = icmp slt i32 %113, 0
  br i1 %cmp.i346.i, label %if.end109.i.if.then112.i_crit_edge, label %if.end.i352.i

if.end109.i.if.then112.i_crit_edge:               ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

if.end.i352.i:                                    ; preds = %if.end109.i
  %number.i347.i = getelementptr inbounds %struct.pci_bus, ptr %111, i32 0, i32 12
  %114 = ptrtoint ptr %number.i347.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %number.i347.i, align 4
  %conv.i348.i = zext i8 %115 to i32
  %devfn.i349.i = getelementptr inbounds %struct.pci_dev, ptr %rpdev.0383.i, i32 0, i32 6
  %116 = ptrtoint ptr %devfn.i349.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %devfn.i349.i, align 4
  %err.017.i.i350.i = load ptr, ptr @einjected, align 4
  %cmp.not18.i.i351.i = icmp eq ptr %err.017.i.i350.i, @einjected
  br i1 %cmp.not18.i.i351.i, label %if.end.i352.i.if.then112.i_crit_edge, label %if.end.i352.i.for.body.i.i356.i_crit_edge

if.end.i352.i.for.body.i.i356.i_crit_edge:        ; preds = %if.end.i352.i
  br label %for.body.i.i356.i

if.end.i352.i.if.then112.i_crit_edge:             ; preds = %if.end.i352.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

for.body.i.i356.i:                                ; preds = %for.inc.i.i365.i.for.body.i.i356.i_crit_edge, %if.end.i352.i.for.body.i.i356.i_crit_edge
  %err.019.i.i353.i = phi ptr [ %err.0.i.i363.i, %for.inc.i.i365.i.for.body.i.i356.i_crit_edge ], [ %err.017.i.i350.i, %if.end.i352.i.for.body.i.i356.i_crit_edge ]
  %domain1.i.i354.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i.i353.i, i32 0, i32 1
  %118 = ptrtoint ptr %domain1.i.i354.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %domain1.i.i354.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %113)
  %cmp2.i.i355.i = icmp eq i32 %119, %113
  br i1 %cmp2.i.i355.i, label %land.lhs.true.i.i359.i, label %for.body.i.i356.i.for.inc.i.i365.i_crit_edge

for.body.i.i356.i.for.inc.i.i365.i_crit_edge:     ; preds = %for.body.i.i356.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i365.i

land.lhs.true.i.i359.i:                           ; preds = %for.body.i.i356.i
  %bus3.i.i357.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i.i353.i, i32 0, i32 2
  %120 = ptrtoint ptr %bus3.i.i357.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bus3.i.i357.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %conv.i348.i)
  %cmp4.i.i358.i = icmp eq i32 %121, %conv.i348.i
  br i1 %cmp4.i.i358.i, label %land.lhs.true5.i.i362.i, label %land.lhs.true.i.i359.i.for.inc.i.i365.i_crit_edge

land.lhs.true.i.i359.i.for.inc.i.i365.i_crit_edge: ; preds = %land.lhs.true.i.i359.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i365.i

land.lhs.true5.i.i362.i:                          ; preds = %land.lhs.true.i.i359.i
  %devfn6.i.i360.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i.i353.i, i32 0, i32 3
  %122 = ptrtoint ptr %devfn6.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %devfn6.i.i360.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %117)
  %cmp7.i.i361.i = icmp eq i32 %123, %117
  br i1 %cmp7.i.i361.i, label %__find_aer_error_by_dev.exit367.i, label %land.lhs.true5.i.i362.i.for.inc.i.i365.i_crit_edge

land.lhs.true5.i.i362.i.for.inc.i.i365.i_crit_edge: ; preds = %land.lhs.true5.i.i362.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i365.i

for.inc.i.i365.i:                                 ; preds = %land.lhs.true5.i.i362.i.for.inc.i.i365.i_crit_edge, %land.lhs.true.i.i359.i.for.inc.i.i365.i_crit_edge, %for.body.i.i356.i.for.inc.i.i365.i_crit_edge
  %124 = ptrtoint ptr %err.019.i.i353.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %err.0.i.i363.i = load ptr, ptr %err.019.i.i353.i, align 4
  %cmp.not.i.i364.i = icmp eq ptr %err.0.i.i363.i, @einjected
  br i1 %cmp.not.i.i364.i, label %for.inc.i.i365.i.if.then112.i_crit_edge, label %for.inc.i.i365.i.for.body.i.i356.i_crit_edge

for.inc.i.i365.i.for.body.i.i356.i_crit_edge:     ; preds = %for.inc.i.i365.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i356.i

for.inc.i.i365.i.if.then112.i_crit_edge:          ; preds = %for.inc.i.i365.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

__find_aer_error_by_dev.exit367.i:                ; preds = %land.lhs.true5.i.i362.i
  %tobool111.not.i = icmp eq ptr %err.019.i.i353.i, null
  br i1 %tobool111.not.i, label %__find_aer_error_by_dev.exit367.i.if.then112.i_crit_edge, label %__find_aer_error_by_dev.exit367.i.if.end119.i_crit_edge

__find_aer_error_by_dev.exit367.i.if.end119.i_crit_edge: ; preds = %__find_aer_error_by_dev.exit367.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119.i

__find_aer_error_by_dev.exit367.i.if.then112.i_crit_edge: ; preds = %__find_aer_error_by_dev.exit367.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112.i

if.then112.i:                                     ; preds = %__find_aer_error_by_dev.exit367.i.if.then112.i_crit_edge, %for.inc.i.i365.i.if.then112.i_crit_edge, %if.end.i352.i.if.then112.i_crit_edge, %if.end109.i.if.then112.i_crit_edge
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %111, i32 0, i32 12
  %125 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %number.i, align 4
  %conv116.i = zext i8 %126 to i32
  %devfn117.i = getelementptr inbounds %struct.pci_dev, ptr %rpdev.0383.i, i32 0, i32 6
  %127 = ptrtoint ptr %devfn117.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %devfn117.i, align 4
  %129 = ptrtoint ptr %call7.i.i341.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %call7.i.i341.i, ptr %call7.i.i341.i, align 8
  %prev.i.i368.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i341.i, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i.i368.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i341.i, ptr %prev.i.i368.i, align 4
  %domain1.i369.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i341.i, i32 0, i32 1
  %131 = ptrtoint ptr %domain1.i369.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %113, ptr %domain1.i369.i, align 8
  %bus2.i370.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i341.i, i32 0, i32 2
  %132 = ptrtoint ptr %bus2.i370.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv116.i, ptr %bus2.i370.i, align 4
  %devfn3.i371.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i341.i, i32 0, i32 3
  %133 = ptrtoint ptr %devfn3.i371.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %128, ptr %devfn3.i371.i, align 8
  %pos_cap_err4.i372.i = getelementptr inbounds %struct.aer_error, ptr %call7.i.i341.i, i32 0, i32 4
  %134 = ptrtoint ptr %pos_cap_err4.i372.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv27.i, ptr %pos_cap_err4.i372.i, align 4
  %135 = load ptr, ptr @einjected, align 4
  %call.i.i373.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i341.i, ptr noundef nonnull @einjected, ptr noundef %135) #8
  br i1 %call.i.i373.i, label %if.end.i.i376.i, label %if.then112.i.if.end119.i_crit_edge

if.then112.i.if.end119.i_crit_edge:               ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119.i

if.end.i.i376.i:                                  ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i374.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i374.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call7.i.i341.i, ptr %prev1.i.i374.i, align 4
  %137 = ptrtoint ptr %call7.i.i341.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %call7.i.i341.i, align 8
  %138 = ptrtoint ptr %prev.i.i368.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @einjected, ptr %prev.i.i368.i, align 4
  store volatile ptr %call7.i.i341.i, ptr @einjected, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.end.i.i376.i, %if.then112.i.if.end119.i_crit_edge, %__find_aer_error_by_dev.exit367.i.if.end119.i_crit_edge
  %rperr_alloc.0.i = phi ptr [ %call7.i.i341.i, %__find_aer_error_by_dev.exit367.i.if.end119.i_crit_edge ], [ null, %if.then112.i.if.end119.i_crit_edge ], [ null, %if.end.i.i376.i ]
  %rperr.0.i = phi ptr [ %err.019.i.i353.i, %__find_aer_error_by_dev.exit367.i.if.end119.i_crit_edge ], [ %call7.i.i341.i, %if.then112.i.if.end119.i_crit_edge ], [ %call7.i.i341.i, %if.end.i.i376.i ]
  %139 = ptrtoint ptr %cor_status75.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cor_status75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool121.not.i = icmp eq i32 %140, 0
  br i1 %tobool121.not.i, label %if.end119.i.if.end138.i_crit_edge, label %if.then122.i

if.end119.i.if.end138.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138.i

if.then122.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  %root_status.i = getelementptr inbounds %struct.aer_error, ptr %rperr.0.i, i32 0, i32 11
  %141 = ptrtoint ptr %root_status.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %root_status.i, align 4
  %and123.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  %storemerge.v.i = select i1 %tobool124.not.i, i32 1, i32 2
  %storemerge.i = or i32 %storemerge.v.i, %142
  %143 = ptrtoint ptr %root_status.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %storemerge.i, ptr %root_status.i, align 4
  %source_id.i = getelementptr inbounds %struct.aer_error, ptr %rperr.0.i, i32 0, i32 12
  %144 = ptrtoint ptr %source_id.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %source_id.i, align 4
  %and131.i = and i32 %145, -65536
  %146 = ptrtoint ptr %einj to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %einj, align 4
  %conv133.i = zext i8 %147 to i32
  %shl134.i = shl nuw nsw i32 %conv133.i, 8
  %or135.i = or i32 %shl134.i, %or.i
  %or137.i = or i32 %or135.i, %and131.i
  store i32 %or137.i, ptr %source_id.i, align 4
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.then122.i, %if.end119.i.if.end138.i_crit_edge
  %148 = ptrtoint ptr %uncor_status72.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %uncor_status72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool140.not.i = icmp eq i32 %149, 0
  br i1 %tobool140.not.i, label %if.end138.i.if.end177.i_crit_edge, label %if.then141.i

if.end138.i.if.end177.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

if.then141.i:                                     ; preds = %if.end138.i
  %root_status142.i = getelementptr inbounds %struct.aer_error, ptr %rperr.0.i, i32 0, i32 11
  %150 = ptrtoint ptr %root_status142.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %root_status142.i, align 4
  %and143.i = and i32 %151, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i)
  %tobool144.not.i = icmp eq i32 %and143.i, 0
  br i1 %tobool144.not.i, label %if.then141.i.if.end148.i_crit_edge, label %if.then145.i

if.then141.i.if.end148.i_crit_edge:               ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

if.then145.i:                                     ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #10
  %or147.i = or i32 %151, 8
  %152 = ptrtoint ptr %root_status142.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or147.i, ptr %root_status142.i, align 4
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then145.i, %if.then141.i.if.end148.i_crit_edge
  %153 = ptrtoint ptr %sever.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %sever.i, align 4
  %and150.i = and i32 %154, %149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  %155 = ptrtoint ptr %root_status142.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %root_status142.i, align 4
  br i1 %tobool151.not.i, label %if.end148.i.if.end165.sink.split.i_crit_edge, label %if.then152.i

if.end148.i.if.end165.sink.split.i_crit_edge:     ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165.sink.split.i

if.then152.i:                                     ; preds = %if.end148.i
  %and156.i = and i32 %156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %if.then152.i.if.end165.sink.split.i_crit_edge, label %if.then152.i.if.end165.i_crit_edge

if.then152.i.if.end165.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165.i

if.then152.i.if.end165.sink.split.i_crit_edge:    ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165.sink.split.i

if.end165.sink.split.i:                           ; preds = %if.then152.i.if.end165.sink.split.i_crit_edge, %if.end148.i.if.end165.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 80, %if.then152.i.if.end165.sink.split.i_crit_edge ], [ 32, %if.end148.i.if.end165.sink.split.i_crit_edge ]
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.end165.sink.split.i, %if.then152.i.if.end165.i_crit_edge
  %.sink.pn.i = phi i32 [ %.sink.i, %if.end165.sink.split.i ], [ 64, %if.then152.i.if.end165.i_crit_edge ]
  %storemerge398.i = or i32 %156, %.sink.pn.i
  %or167.i = or i32 %storemerge398.i, 4
  %157 = ptrtoint ptr %root_status142.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or167.i, ptr %root_status142.i, align 4
  %source_id168.i = getelementptr inbounds %struct.aer_error, ptr %rperr.0.i, i32 0, i32 12
  %158 = ptrtoint ptr %source_id168.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %source_id168.i, align 4
  %and169.i = and i32 %159, 65535
  %160 = ptrtoint ptr %einj to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %einj, align 4
  %conv171.i = zext i8 %161 to i32
  %162 = shl nuw i32 %conv171.i, 24
  %163 = shl nuw nsw i32 %or.i, 16
  %shl174.i = or i32 %162, %163
  %or176.i = or i32 %shl174.i, %and169.i
  store i32 %or176.i, ptr %source_id168.i, align 4
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.end165.i, %if.end138.i.if.end177.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call60.i) #8
  %164 = load i8, ptr @aer_mask_override, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool178.not.i = icmp eq i8 %164, 0
  br i1 %tobool178.not.i, label %if.end177.i.if.end184.i_crit_edge, label %if.then179.i

if.end177.i.if.end184.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184.i

if.then179.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #10
  %call181.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call.i, i32 noundef %add22.i, i32 noundef %cor_mask_orig.0.i) #8
  %call183.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call.i, i32 noundef %add24.i, i32 noundef %uncor_mask_orig.0.i) #8
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then179.i, %if.end177.i.if.end184.i_crit_edge
  %165 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bus.i.i, align 8
  %call186.i = call fastcc i32 @pci_bus_set_aer_ops(ptr noundef %166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %tobool187.not.i = icmp eq i32 %call186.i, 0
  br i1 %tobool187.not.i, label %if.end189.i, label %if.end184.i.aer_inject.exit_crit_edge

if.end184.i.aer_inject.exit_crit_edge:            ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aer_inject.exit

if.end189.i:                                      ; preds = %if.end184.i
  %167 = ptrtoint ptr %bus.i344.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bus.i344.i, align 8
  %call191.i = call fastcc i32 @pci_bus_set_aer_ops(ptr noundef %168) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191.i)
  %tobool192.not.i = icmp eq i32 %call191.i, 0
  br i1 %tobool192.not.i, label %if.end194.i, label %if.end189.i.aer_inject.exit_crit_edge

if.end189.i.aer_inject.exit_crit_edge:            ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aer_inject.exit

if.end194.i:                                      ; preds = %if.end189.i
  %call195.i = call ptr @pcie_port_find_device(ptr noundef nonnull %rpdev.0383.i, i32 noundef 2) #8
  %tobool196.not.i = icmp eq ptr %call195.i, null
  br i1 %tobool196.not.i, label %do.end219.i, label %if.then197.i

if.then197.i:                                     ; preds = %if.end194.i
  %add.ptr.i = getelementptr i8, ptr %call195.i, i32 -16
  %priv_data.i.i = getelementptr i8, ptr %call195.i, i32 -4
  %169 = ptrtoint ptr %priv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %priv_data.i.i, align 4
  %tobool200.not.i = icmp eq ptr %170, null
  %port.i = getelementptr i8, ptr %call195.i, i32 -12
  %171 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %port.i, align 4
  %dev205.i = getelementptr inbounds %struct.pci_dev, ptr %172, i32 0, i32 44
  br i1 %tobool200.not.i, label %do.end204.i, label %do.end209.i

do.end204.i:                                      ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev205.i, ptr noundef nonnull @.str.22) #12
  br label %aer_inject.exit

do.end209.i:                                      ; preds = %if.then197.i
  %173 = ptrtoint ptr %cor_status75.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cor_status75.i, align 4
  %175 = ptrtoint ptr %uncor_status72.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %uncor_status72.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44, i32 3
  %177 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %178, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i378.i, label %do.end209.i.pci_name.exit.i_crit_edge

do.end209.i.pci_name.exit.i_crit_edge:            ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit.i

if.end.i.i378.i:                                  ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %179 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i378.i, %do.end209.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %180, %if.end.i.i378.i ], [ %178, %do.end209.i.pci_name.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev205.i, ptr noundef nonnull @.str.25, i32 noundef %174, i32 noundef %176, ptr noundef %retval.0.i.i.i) #12
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr.i, align 8
  %call215.i = call i32 @irq_inject_interrupt(i32 noundef %182) #8
  br label %aer_inject.exit

do.end219.i:                                      ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev220.i = getelementptr inbounds %struct.pci_dev, ptr %rpdev.0383.i, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev220.i, ptr noundef nonnull @.str.29) #12
  br label %aer_inject.exit

aer_inject.exit:                                  ; preds = %do.end219.i, %pci_name.exit.i, %do.end204.i, %if.end189.i.aer_inject.exit_crit_edge, %if.end184.i.aer_inject.exit_crit_edge, %if.then104.i, %if.then89.i, %if.end38.i.aer_inject.exit_crit_edge, %if.end34.i.aer_inject.exit_crit_edge, %do.end32.i, %do.end18.i, %do.end.i
  %err_alloc.1.i = phi ptr [ %err_alloc.0.i, %if.end184.i.aer_inject.exit_crit_edge ], [ %err_alloc.0.i, %if.end189.i.aer_inject.exit_crit_edge ], [ %err_alloc.0.i, %pci_name.exit.i ], [ %err_alloc.0.i, %do.end204.i ], [ %err_alloc.0.i, %do.end219.i ], [ %err_alloc.0.i, %if.then104.i ], [ %err_alloc.0.i, %if.then89.i ], [ null, %do.end32.i ], [ null, %do.end18.i ], [ null, %do.end.i ], [ null, %if.end34.i.aer_inject.exit_crit_edge ], [ %call7.i.i.i, %if.end38.i.aer_inject.exit_crit_edge ]
  %rperr_alloc.1.i = phi ptr [ %rperr_alloc.0.i, %if.end184.i.aer_inject.exit_crit_edge ], [ %rperr_alloc.0.i, %if.end189.i.aer_inject.exit_crit_edge ], [ %rperr_alloc.0.i, %pci_name.exit.i ], [ %rperr_alloc.0.i, %do.end204.i ], [ %rperr_alloc.0.i, %do.end219.i ], [ %call7.i.i341.i, %if.then104.i ], [ %call7.i.i341.i, %if.then89.i ], [ null, %do.end32.i ], [ null, %do.end18.i ], [ null, %do.end.i ], [ null, %if.end34.i.aer_inject.exit_crit_edge ], [ null, %if.end38.i.aer_inject.exit_crit_edge ]
  %ret.0.i = phi i32 [ %call186.i, %if.end184.i.aer_inject.exit_crit_edge ], [ %call191.i, %if.end189.i.aer_inject.exit_crit_edge ], [ %call215.i, %pci_name.exit.i ], [ -93, %do.end204.i ], [ -19, %do.end219.i ], [ -22, %if.then104.i ], [ -22, %if.then89.i ], [ -93, %do.end32.i ], [ -93, %do.end18.i ], [ -19, %do.end.i ], [ -12, %if.end34.i.aer_inject.exit_crit_edge ], [ -12, %if.end38.i.aer_inject.exit_crit_edge ]
  call void @kfree(ptr noundef %err_alloc.1.i) #8
  call void @kfree(ptr noundef %rperr_alloc.1.i) #8
  call void @pci_dev_put(ptr noundef nonnull %call.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uncor_mask.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cor_mask.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sever.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool8.not = icmp eq i32 %ret.0.i, 0
  %spec.select = select i1 %tobool8.not, i32 %usize, i32 %ret.0.i
  br label %cleanup

cleanup:                                          ; preds = %aer_inject.exit, %aer_inject.exit.thread, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %aer_inject.exit.thread ], [ -14, %if.then11.i.i ], [ %spec.select, %aer_inject.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %einj) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_bus_set_aer_ops(ptr noundef %bus) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @pci_bus_set_ops(ptr noundef %bus, ptr noundef nonnull @aer_inj_pci_ops) #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @inject_lock) #8
  %cmp7 = icmp eq ptr %call1, @aer_inj_pci_ops
  br i1 %cmp7, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i.i, align 4
  %bus1.i = getelementptr inbounds %struct.pci_bus_ops, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %bus1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bus, ptr %bus1.i, align 8
  %ops2.i = getelementptr inbounds %struct.pci_bus_ops, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %ops2.i, align 4
  %5 = load ptr, ptr @pci_bus_ops_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull @pci_bus_ops_list, ptr noundef %5) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call7.i, align 8
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pci_bus_ops_list, ptr %prev.i.i, align 4
  store volatile ptr %call7.i, ptr @pci_bus_ops_list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end10.out_crit_edge, %if.end.out_crit_edge
  %bus_ops.0 = phi ptr [ %call7.i, %if.end.out_crit_edge ], [ null, %if.end10.out_crit_edge ], [ null, %if.end.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call4) #8
  tail call void @kfree(ptr noundef %bus_ops.0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcie_port_find_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_inject_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_inj_read_config(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @inject_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp5.not = icmp eq i32 %size, 4
  br i1 %cmp5.not, label %if.end, label %entry.for.cond.i.i.preheader_crit_edge

entry.for.cond.i.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %find_pci_config_dword.exit.for.cond.i.i.preheader_crit_edge, %if.end.i.for.cond.i.i.preheader_crit_edge, %if.end15.for.cond.i.i.preheader_crit_edge, %__find_aer_error.exit.for.cond.i.i.preheader_crit_edge, %for.inc.i.for.cond.i.i.preheader_crit_edge, %if.end11.for.cond.i.i.preheader_crit_edge, %if.end.for.cond.i.i.preheader_crit_edge, %entry.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

if.end:                                           ; preds = %entry
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 16
  %0 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %domain_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp slt i32 %1, 0
  br i1 %cmp8, label %if.end.for.cond.i.i.preheader_crit_edge, label %if.end11

if.end.for.cond.i.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.end11:                                         ; preds = %if.end
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv12 = zext i8 %3 to i32
  %err.017.i = load ptr, ptr @einjected, align 4
  %cmp.not18.i = icmp eq ptr %err.017.i, @einjected
  br i1 %cmp.not18.i, label %if.end11.for.cond.i.i.preheader_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %err.019.i = phi ptr [ %err.0.i, %for.inc.i.for.body.i_crit_edge ], [ %err.017.i, %if.end11.for.body.i_crit_edge ]
  %domain1.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 1
  %4 = ptrtoint ptr %domain1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp2.i = icmp eq i32 %5, %1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bus3.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 2
  %6 = ptrtoint ptr %bus3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv12)
  %cmp4.i = icmp eq i32 %7, %conv12
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %devfn6.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 3
  %8 = ptrtoint ptr %devfn6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %devfn)
  %cmp7.i = icmp eq i32 %9, %devfn
  br i1 %cmp7.i, label %__find_aer_error.exit, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %err.019.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %err.0.i = load ptr, ptr %err.019.i, align 4
  %cmp.not.i = icmp eq ptr %err.0.i, @einjected
  br i1 %cmp.not.i, label %for.inc.i.for.cond.i.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.cond.i.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

__find_aer_error.exit:                            ; preds = %land.lhs.true5.i
  %tobool.not = icmp eq ptr %err.019.i, null
  br i1 %tobool.not, label %__find_aer_error.exit.for.cond.i.i.preheader_crit_edge, label %if.end15

__find_aer_error.exit.for.cond.i.i.preheader_crit_edge: ; preds = %__find_aer_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.end15:                                         ; preds = %__find_aer_error.exit
  %pos_cap_err.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 4
  %11 = ptrtoint ptr %pos_cap_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos_cap_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp eq i32 %12, -1
  br i1 %cmp.i, label %if.end15.for.cond.i.i.preheader_crit_edge, label %if.end.i

if.end15.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.end.i:                                         ; preds = %if.end15
  %sub.i = sub i32 %where, %12
  %13 = add i32 %sub.i, -4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 30) #8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end.i.for.cond.i.i.preheader_crit_edge [
    i32 0, label %sw.bb.i
    i32 3, label %sw.bb2.i
    i32 6, label %sw.bb3.i
    i32 7, label %sw.bb4.i
    i32 8, label %sw.bb5.i
    i32 9, label %sw.bb6.i
    i32 11, label %sw.bb7.i
    i32 12, label %sw.bb8.i
  ]

if.end.i.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %uncor_status.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 5
  br label %find_pci_config_dword.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cor_status.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 6
  br label %find_pci_config_dword.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log0.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 7
  br label %find_pci_config_dword.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log1.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 8
  br label %find_pci_config_dword.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log2.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 9
  br label %find_pci_config_dword.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log3.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 10
  br label %find_pci_config_dword.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %root_status.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 11
  br label %find_pci_config_dword.exit

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %source_id.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 12
  br label %find_pci_config_dword.exit

find_pci_config_dword.exit:                       ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  %retval.0.i35 = phi ptr [ %source_id.i, %sw.bb8.i ], [ %root_status.i, %sw.bb7.i ], [ %header_log3.i, %sw.bb6.i ], [ %header_log2.i, %sw.bb5.i ], [ %header_log1.i, %sw.bb4.i ], [ %header_log0.i, %sw.bb3.i ], [ %cor_status.i, %sw.bb2.i ], [ %uncor_status.i, %sw.bb.i ]
  %tobool17.not = icmp eq ptr %retval.0.i35, null
  br i1 %tobool17.not, label %find_pci_config_dword.exit.for.cond.i.i.preheader_crit_edge, label %if.then18

find_pci_config_dword.exit.for.cond.i.i.preheader_crit_edge: ; preds = %find_pci_config_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.then18:                                        ; preds = %find_pci_config_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %retval.0.i35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i35, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %cleanup

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %bus_ops.0.in.i.i = phi ptr [ %bus_ops.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @pci_bus_ops_list, %for.cond.i.i.preheader ]
  %19 = ptrtoint ptr %bus_ops.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bus_ops.0.i.i = load ptr, ptr %bus_ops.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %bus_ops.0.i.i, @pci_bus_ops_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bus1.i.i = getelementptr inbounds %struct.pci_bus_ops, ptr %bus_ops.0.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %21, %bus
  br i1 %cmp2.i.i, label %__find_pci_bus_ops.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

__find_pci_bus_ops.exit.i:                        ; preds = %for.body.i.i
  %ops.i.i = getelementptr inbounds %struct.pci_bus_ops, ptr %bus_ops.0.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %__find_pci_bus_ops.exit.i.cleanup_crit_edge, label %if.end.i36

__find_pci_bus_ops.exit.i.cleanup_crit_edge:      ; preds = %__find_pci_bus_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i36:                                       ; preds = %__find_pci_bus_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops1.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %24 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops1.i, align 8
  store ptr %23, ptr %ops1.i, align 8
  %read.i = getelementptr inbounds %struct.pci_ops, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i, align 4
  %call3.i = tail call i32 %27(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #8
  %28 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %ops1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i36, %__find_pci_bus_ops.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ %call3.i, %if.end.i36 ], [ -1, %__find_pci_bus_ops.exit.i.cleanup_crit_edge ], [ -1, %for.cond.i.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call2) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aer_inj_write_config(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @inject_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp5.not = icmp eq i32 %size, 4
  br i1 %cmp5.not, label %if.end, label %entry.for.cond.i.i.preheader_crit_edge

entry.for.cond.i.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %find_pci_config_dword.exit.for.cond.i.i.preheader_crit_edge, %if.end.i.for.cond.i.i.preheader_crit_edge, %if.end15.for.cond.i.i.preheader_crit_edge, %__find_aer_error.exit.for.cond.i.i.preheader_crit_edge, %for.inc.i.for.cond.i.i.preheader_crit_edge, %if.end11.for.cond.i.i.preheader_crit_edge, %if.end.for.cond.i.i.preheader_crit_edge, %entry.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

if.end:                                           ; preds = %entry
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 16
  %0 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %domain_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp slt i32 %1, 0
  br i1 %cmp8, label %if.end.for.cond.i.i.preheader_crit_edge, label %if.end11

if.end.for.cond.i.i.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.end11:                                         ; preds = %if.end
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv12 = zext i8 %3 to i32
  %err.017.i = load ptr, ptr @einjected, align 4
  %cmp.not18.i = icmp eq ptr %err.017.i, @einjected
  br i1 %cmp.not18.i, label %if.end11.for.cond.i.i.preheader_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %err.019.i = phi ptr [ %err.0.i, %for.inc.i.for.body.i_crit_edge ], [ %err.017.i, %if.end11.for.body.i_crit_edge ]
  %domain1.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 1
  %4 = ptrtoint ptr %domain1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp2.i = icmp eq i32 %5, %1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %bus3.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 2
  %6 = ptrtoint ptr %bus3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv12)
  %cmp4.i = icmp eq i32 %7, %conv12
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %devfn6.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 3
  %8 = ptrtoint ptr %devfn6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %devfn)
  %cmp7.i = icmp eq i32 %9, %devfn
  br i1 %cmp7.i, label %__find_aer_error.exit, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %err.019.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %err.0.i = load ptr, ptr %err.019.i, align 4
  %cmp.not.i = icmp eq ptr %err.0.i, @einjected
  br i1 %cmp.not.i, label %for.inc.i.for.cond.i.i.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.cond.i.i.preheader_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

__find_aer_error.exit:                            ; preds = %land.lhs.true5.i
  %tobool.not = icmp eq ptr %err.019.i, null
  br i1 %tobool.not, label %__find_aer_error.exit.for.cond.i.i.preheader_crit_edge, label %if.end15

__find_aer_error.exit.for.cond.i.i.preheader_crit_edge: ; preds = %__find_aer_error.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.end15:                                         ; preds = %__find_aer_error.exit
  %pos_cap_err.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 4
  %11 = ptrtoint ptr %pos_cap_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos_cap_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i = icmp eq i32 %12, -1
  br i1 %cmp.i, label %if.end15.for.cond.i.i.preheader_crit_edge, label %if.end.i

if.end15.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.end.i:                                         ; preds = %if.end15
  %sub.i = sub i32 %where, %12
  %13 = add i32 %sub.i, -4
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 30) #8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %14, label %if.end.i.for.cond.i.i.preheader_crit_edge [
    i32 0, label %sw.bb.i
    i32 3, label %sw.bb2.i
    i32 6, label %sw.bb3.i
    i32 7, label %sw.bb4.i
    i32 8, label %sw.bb5.i
    i32 9, label %sw.bb6.i
    i32 11, label %sw.bb7.i
    i32 12, label %sw.bb8.i
  ]

if.end.i.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %uncor_status.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 5
  br label %find_pci_config_dword.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cor_status.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 6
  br label %find_pci_config_dword.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log0.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 7
  br label %find_pci_config_dword.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log1.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 8
  br label %find_pci_config_dword.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log2.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 9
  br label %find_pci_config_dword.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %header_log3.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 10
  br label %find_pci_config_dword.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %root_status.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 11
  br label %find_pci_config_dword.exit

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %source_id.i = getelementptr inbounds %struct.aer_error, ptr %err.019.i, i32 0, i32 12
  br label %find_pci_config_dword.exit

find_pci_config_dword.exit:                       ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  %tobool19.not = phi i1 [ false, %sw.bb.i ], [ false, %sw.bb2.i ], [ true, %sw.bb3.i ], [ true, %sw.bb4.i ], [ true, %sw.bb5.i ], [ true, %sw.bb6.i ], [ false, %sw.bb7.i ], [ true, %sw.bb8.i ]
  %retval.0.i41 = phi ptr [ %uncor_status.i, %sw.bb.i ], [ %cor_status.i, %sw.bb2.i ], [ %header_log0.i, %sw.bb3.i ], [ %header_log1.i, %sw.bb4.i ], [ %header_log2.i, %sw.bb5.i ], [ %header_log3.i, %sw.bb6.i ], [ %root_status.i, %sw.bb7.i ], [ %source_id.i, %sw.bb8.i ]
  %tobool17.not = icmp eq ptr %retval.0.i41, null
  br i1 %tobool17.not, label %find_pci_config_dword.exit.for.cond.i.i.preheader_crit_edge, label %if.then18

find_pci_config_dword.exit.for.cond.i.i.preheader_crit_edge: ; preds = %find_pci_config_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.preheader

if.then18:                                        ; preds = %find_pci_config_dword.exit
  br i1 %tobool19.not, label %if.then18.if.end21_crit_edge, label %if.then20

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %retval.0.i41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i41, align 4
  %xor = xor i32 %17, %val
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18.if.end21_crit_edge
  %storemerge = phi i32 [ %xor, %if.then20 ], [ %val, %if.then18.if.end21_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %retval.0.i41, align 4
  br label %cleanup

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %bus_ops.0.in.i.i = phi ptr [ %bus_ops.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @pci_bus_ops_list, %for.cond.i.i.preheader ]
  %19 = ptrtoint ptr %bus_ops.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bus_ops.0.i.i = load ptr, ptr %bus_ops.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %bus_ops.0.i.i, @pci_bus_ops_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %bus1.i.i = getelementptr inbounds %struct.pci_bus_ops, ptr %bus_ops.0.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %bus1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %21, %bus
  br i1 %cmp2.i.i, label %__find_pci_bus_ops.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

__find_pci_bus_ops.exit.i:                        ; preds = %for.body.i.i
  %ops.i.i = getelementptr inbounds %struct.pci_bus_ops, ptr %bus_ops.0.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %__find_pci_bus_ops.exit.i.cleanup_crit_edge, label %if.end.i42

__find_pci_bus_ops.exit.i.cleanup_crit_edge:      ; preds = %__find_pci_bus_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i42:                                       ; preds = %__find_pci_bus_ops.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops1.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 9
  %24 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops1.i, align 8
  store ptr %23, ptr %ops1.i, align 8
  %write.i = getelementptr inbounds %struct.pci_ops, ptr %23, i32 0, i32 4
  %26 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i, align 4
  %call3.i = tail call i32 %27(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #8
  %28 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %ops1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i42, %__find_pci_bus_ops.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end21
  %retval.0 = phi i32 [ 0, %if.end21 ], [ %call3.i, %if.end.i42 ], [ -1, %__find_pci_bus_ops.exit.i.cleanup_crit_edge ], [ -1, %for.cond.i.i.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @inject_lock, i32 noundef %call2) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !72}
!llvm.named.register.sp = !{!74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_aer_mask_override, !1, !"__param_aer_mask_override", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/aer_inject.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_aer_mask_overridetype236, !1, !"__UNIQUE_ID_aer_mask_overridetype236", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_aer_inject__238_544_aer_inject_init6, !4, !"__initcall__kmod_aer_inject__238_544_aer_inject_init6", i1 false, i1 false}
!4 = !{!"../drivers/pci/pcie/aer_inject.c", i32 544, i32 1}
!5 = !{ptr @__exitcall_aer_inject_exit, !6, !"__exitcall_aer_inject_exit", i1 false, i1 false}
!6 = !{!"../drivers/pci/pcie/aer_inject.c", i32 545, i32 1}
!7 = !{ptr @__UNIQUE_ID_description239, !8, !"__UNIQUE_ID_description239", i1 false, i1 false}
!8 = !{!"../drivers/pci/pcie/aer_inject.c", i32 547, i32 1}
!9 = !{ptr @__UNIQUE_ID_file240, !10, !"__UNIQUE_ID_file240", i1 false, i1 false}
!10 = !{!"../drivers/pci/pcie/aer_inject.c", i32 548, i32 1}
!11 = !{ptr @__UNIQUE_ID_license241, !10, !"__UNIQUE_ID_license241", i1 false, i1 false}
!12 = !{ptr @aer_mask_override, !13, !"aer_mask_override", i1 false, i1 false}
!13 = !{!"../drivers/pci/pcie/aer_inject.c", i32 31, i32 13}
!14 = !{ptr @__param_str_aer_mask_override, !1, !"__param_str_aer_mask_override", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/pcie/aer_inject.c", i32 514, i32 10}
!17 = !{ptr @aer_inject_device, !18, !"aer_inject_device", i1 false, i1 false}
!18 = !{!"../drivers/pci/pcie/aer_inject.c", i32 512, i32 26}
!19 = !{ptr @aer_inject_fops, !20, !"aer_inject_fops", i1 false, i1 false}
!20 = !{!"../drivers/pci/pcie/aer_inject.c", i32 506, i32 37}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/pcie/aer_inject.c", i32 340, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @aer_inject._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @aer_inject._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/pcie/aer_inject.c", i32 347, i32 3}
!37 = !{ptr @aer_inject._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @aer_inject._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/pcie/aer_inject.c", i32 358, i32 3}
!41 = !{ptr @aer_inject._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @aer_inject._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/pcie/aer_inject.c", i32 406, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @aer_inject._entry.14, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @aer_inject._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/pcie/aer_inject.c", i32 413, i32 3}
!50 = !{ptr @aer_inject._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @aer_inject._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/pcie/aer_inject.c", i32 468, i32 4}
!54 = !{ptr @aer_inject._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @aer_inject._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/pcie/aer_inject.c", i32 472, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @aer_inject._entry.24, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @aer_inject._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/pcie/aer_inject.c", i32 476, i32 3}
!63 = !{ptr @aer_inject._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @aer_inject._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @aer_inj_pci_ops, !66, !"aer_inj_pci_ops", i1 false, i1 false}
!66 = !{!"../drivers/pci/pcie/aer_inject.c", i32 283, i32 23}
!67 = !{ptr @pci_bus_ops_list, !68, !"pci_bus_ops_list", i1 false, i1 false}
!68 = !{!"../drivers/pci/pcie/aer_inject.c", i32 72, i32 8}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/pcie/aer_inject.c", i32 75, i32 8}
!71 = !{ptr @inject_lock, !70, !"inject_lock", i1 false, i1 false}
!72 = !{ptr @einjected, !73, !"einjected", i1 false, i1 false}
!73 = !{!"../drivers/pci/pcie/aer_inject.c", i32 70, i32 8}
!74 = !{!"sp"}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2153895244, i64 2153895269}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 6390799}
!87 = !{i64 6390996}
!88 = !{i64 2153876229}
!89 = !{!"auto-init"}
!90 = !{i8 0, i8 2}
