; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_pci_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon }
%struct.anon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pci = type { ptr, %struct.nvkm_subdev, ptr, i32, %struct.anon.135, %struct.anon.136, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.135 = type { ptr, i32, i64, i64, i32, i8, i8 }
%struct.anon.136 = type { i32, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.133, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.133 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.134, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.134 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@nvkm_pcie_oneinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: pcie max speed: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_pcie_oneinit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_pcie_oneinit._entry_ptr = internal global ptr @nvkm_pcie_oneinit._entry, section ".printk_index", align 4
@nvkm_pcie_speeds = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30], [20 x i8] zeroinitializer }, align 32
@nvkm_pcie_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 102, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: couldn't raise version: %i\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvkm_pcie_init\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_pcie_init._entry_ptr = internal global ptr @nvkm_pcie_init._entry, section ".printk_index", align 4
@nvkm_pcie_set_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: requested %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvkm_pcie_set_link\00", [45 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_link._entry_ptr = internal global ptr @nvkm_pcie_set_link._entry, section ".printk_index", align 4
@nvkm_pcie_set_link._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 132, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: setting link failed due to low version\0A\00", [52 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_link._entry_ptr.12 = internal global ptr @nvkm_pcie_set_link._entry.10, section ".printk_index", align 4
@nvkm_pcie_set_link._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: current speed: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_link._entry_ptr.15 = internal global ptr @nvkm_pcie_set_link._entry.13, section ".printk_index", align 4
@nvkm_pcie_set_link._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: %s not supported by bus or card, droppingrequested speed to %s\00", [61 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_link._entry_ptr.18 = internal global ptr @nvkm_pcie_set_link._entry.16, section ".printk_index", align 4
@nvkm_pcie_set_link._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: requested matches current speed\0A\00", [59 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_link._entry_ptr.21 = internal global ptr @nvkm_pcie_set_link._entry.19, section ".printk_index", align 4
@nvkm_pcie_set_link._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: set link to %s x%i\0A\00", [40 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_link._entry_ptr.24 = internal global ptr @nvkm_pcie_set_link._entry.22, section ".printk_index", align 4
@nvkm_pcie_set_link._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 162, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: setting link failed: %i\0A\00", [35 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_link._entry_ptr.27 = internal global ptr @nvkm_pcie_set_link._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.5GT/s\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.0GT/s\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.0GT/s\00", [24 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: set to version %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_pcie_set_version\00", [42 x i8] zeroinitializer }, align 32
@nvkm_pcie_set_version._entry_ptr = internal global ptr @nvkm_pcie_set_version._entry, section ".printk_index", align 4
@switch.table.nvkm_pcie_set_link = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 83, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"nvkm_pcie_speeds\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 26, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 102, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 129, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 132, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 140, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 143, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 153, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 157, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 162, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 27, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 28, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 29, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 74, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [32 x i8] c"switch.table.nvkm_pcie_set_link\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @nvkm_pcie_init._entry, ptr @nvkm_pcie_init._entry_ptr, ptr @nvkm_pcie_oneinit._entry, ptr @nvkm_pcie_oneinit._entry_ptr, ptr @nvkm_pcie_set_link._entry, ptr @nvkm_pcie_set_link._entry.10, ptr @nvkm_pcie_set_link._entry.13, ptr @nvkm_pcie_set_link._entry.16, ptr @nvkm_pcie_set_link._entry.19, ptr @nvkm_pcie_set_link._entry.22, ptr @nvkm_pcie_set_link._entry.25, ptr @nvkm_pcie_set_link._entry_ptr, ptr @nvkm_pcie_set_link._entry_ptr.12, ptr @nvkm_pcie_set_link._entry_ptr.15, ptr @nvkm_pcie_set_link._entry_ptr.18, ptr @nvkm_pcie_set_link._entry_ptr.21, ptr @nvkm_pcie_set_link._entry_ptr.24, ptr @nvkm_pcie_set_link._entry_ptr.27, ptr @nvkm_pcie_set_version._entry, ptr @nvkm_pcie_set_version._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nvkm_pcie_speeds, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.nvkm_pcie_set_link], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_oneinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_speeds to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_link._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_link._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_link._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_link._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_link._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_link._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_pcie_set_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_pcie_set_link to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_pcie_oneinit(ptr noundef %pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %max_speed = getelementptr inbounds %struct.nvkm_pci_func, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max_speed, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %do.end, label %do.body.if.end8_crit_edge

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  %call = tail call i32 %3(ptr noundef %pci) #3
  %arrayidx = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %call
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %11) #6
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_pcie_init(ptr noundef %pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %version.i = getelementptr inbounds %struct.nvkm_pci_func, ptr %1, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %version.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end16_crit_edge, label %nvkm_pcie_get_version.exit

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

nvkm_pcie_get_version.exit:                       ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %pci) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %nvkm_pcie_get_version.exit.if.end16_crit_edge

nvkm_pcie_get_version.exit.if.end16_crit_edge:    ; preds = %nvkm_pcie_get_version.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then:                                          ; preds = %nvkm_pcie_get_version.exit
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 8
  %version_supported.i = getelementptr inbounds %struct.nvkm_pci_func, ptr %5, i32 0, i32 5, i32 6
  %6 = ptrtoint ptr %version_supported.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %version_supported.i, align 4
  %tobool.not.i50 = icmp eq ptr %7, null
  br i1 %tobool.not.i50, label %if.then.if.end16_crit_edge, label %nvkm_pcie_get_max_version.exit

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

nvkm_pcie_get_max_version.exit:                   ; preds = %if.then
  %call.i51 = tail call i32 %7(ptr noundef %pci) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp3 = icmp sgt i32 %call.i51, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i51, i32 %call.i)
  %cmp4 = icmp sgt i32 %call.i51, %call.i
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then5, label %nvkm_pcie_get_max_version.exit.if.end_crit_edge

nvkm_pcie_get_max_version.exit.if.end_crit_edge:  ; preds = %nvkm_pcie_get_max_version.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then5:                                         ; preds = %nvkm_pcie_get_max_version.exit
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 8
  %set_version.i = getelementptr inbounds %struct.nvkm_pci_func, ptr %9, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %set_version.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_version.i, align 4
  %tobool.not.i54 = icmp eq ptr %11, null
  br i1 %tobool.not.i54, label %if.then5.if.end_crit_edge, label %do.body.i

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body.i:                                        ; preds = %if.then5
  %debug.i = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i = icmp ugt i32 %13, 4
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.end3.i_crit_edge

do.body.i.if.end3.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %device.i = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 4
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.31, ptr noundef %name.i, i32 noundef %call.i51) #6
  br label %if.end3.i

if.end3.i:                                        ; preds = %do.end.i, %do.body.i.if.end3.i_crit_edge
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 8
  %set_version8.i = getelementptr inbounds %struct.nvkm_pci_func, ptr %19, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %set_version8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_version8.i, align 4
  %conv.i = trunc i32 %call.i51 to i8
  tail call void %21(ptr noundef %pci, i8 noundef zeroext %conv.i) #3
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 8
  %version.i.i = getelementptr inbounds %struct.nvkm_pci_func, ptr %23, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %version.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end3.i.if.end_crit_edge, label %if.end.i.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = tail call i32 %25(ptr noundef %pci) #3
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.end3.i.if.end_crit_edge, %if.then5.if.end_crit_edge, %nvkm_pcie_get_max_version.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %nvkm_pcie_get_max_version.exit.if.end_crit_edge ], [ -38, %if.then5.if.end_crit_edge ], [ %call.i.i, %if.end.i.i ], [ -38, %if.end3.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %call.i51)
  %cmp7 = icmp slt i32 %ret.0, %call.i51
  br i1 %cmp7, label %do.body, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9.not = icmp eq i32 %27, 0
  br i1 %cmp9.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %ret.0) #6
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %if.end.if.end16_crit_edge, %if.then.if.end16_crit_edge, %nvkm_pcie_get_version.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  %32 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci, align 8
  %pcie = getelementptr inbounds %struct.nvkm_pci_func, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcie, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %if.end16.if.end22_crit_edge, label %if.then17

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  %call21 = tail call i32 %35(ptr noundef %pci) #3
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end16.if.end22_crit_edge
  %pcie23 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 5
  %36 = ptrtoint ptr %pcie23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcie23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp24.not = icmp eq i32 %37, -1
  br i1 %cmp24.not, label %if.end22.if.end30_crit_edge, label %if.then25

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  %width = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %width, align 4
  %call29 = tail call i32 @nvkm_pcie_set_link(ptr noundef %pci, i32 noundef %37, i8 noundef zeroext %39)
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_pcie_set_link(ptr noundef %pci, i32 noundef %speed, i8 noundef zeroext %width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pci, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pdev = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %set_link = getelementptr inbounds %struct.nvkm_pci_func, ptr %7, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_link, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %if.end
  %debug = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp ugt i32 %11, 4
  br i1 %cmp, label %do.end, label %do.body.if.end8_crit_edge

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  %arrayidx = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %speed
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %17) #6
  br label %if.end8

if.end8:                                          ; preds = %do.end, %do.body.if.end8_crit_edge
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 8
  %version = getelementptr inbounds %struct.nvkm_pci_func, ptr %19, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %version, align 4
  %call13 = tail call i32 %21(ptr noundef nonnull %pci) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 2
  br i1 %cmp14, label %do.body16, label %if.end31

do.body16:                                        ; preds = %if.end8
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19.not = icmp eq i32 %23, 0
  br i1 %cmp19.not, label %do.body16.cleanup_crit_edge, label %do.end23

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end23:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  %device24 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %device24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device24, align 4
  %dev25 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev25, align 8
  %name26 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.11, ptr noundef %name26) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end8
  %28 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci, align 8
  %cur_speed34 = getelementptr inbounds %struct.nvkm_pci_func, ptr %29, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %cur_speed34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur_speed34, align 4
  %call35 = tail call i32 %31(ptr noundef nonnull %pci) #3
  %max_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 14
  %32 = ptrtoint ptr %max_bus_speed to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_bus_speed, align 2
  %switch.tableidx = add i8 %33, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %34 = icmp ult i8 %switch.tableidx, 4
  br i1 %34, label %switch.lookup, label %if.end31.nvkm_pcie_speed.exit_crit_edge

if.end31.nvkm_pcie_speed.exit_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %nvkm_pcie_speed.exit

switch.lookup:                                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  %35 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nvkm_pcie_set_link, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nvkm_pcie_speed.exit

nvkm_pcie_speed.exit:                             ; preds = %switch.lookup, %if.end31.nvkm_pcie_speed.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %if.end31.nvkm_pcie_speed.exit_crit_edge ]
  %37 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci, align 8
  %max_speed39 = getelementptr inbounds %struct.nvkm_pci_func, ptr %38, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %max_speed39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %max_speed39, align 4
  %call40 = tail call i32 %40(ptr noundef nonnull %pci) #3
  %41 = tail call i32 @llvm.umin.i32(i32 %retval.0.i, i32 %call40)
  %42 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp46 = icmp ugt i32 %43, 4
  br i1 %cmp46, label %do.end51, label %nvkm_pcie_speed.exit.if.end57_crit_edge

nvkm_pcie_speed.exit.if.end57_crit_edge:          ; preds = %nvkm_pcie_speed.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

do.end51:                                         ; preds = %nvkm_pcie_speed.exit
  call void @__sanitizer_cov_trace_pc() #5
  %device52 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %device52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device52, align 4
  %dev53 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev53, align 8
  %name54 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  %arrayidx56 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %call35
  %48 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx56, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.14, ptr noundef %name54, ptr noundef %49) #6
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %nvkm_pcie_speed.exit.if.end57_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %speed)
  %cmp60 = icmp ult i32 %41, %speed
  br i1 %cmp60, label %do.body63, label %if.end57.if.end81_crit_edge

if.end57.if.end81_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

do.body63:                                        ; preds = %if.end57
  %50 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp66 = icmp ugt i32 %51, 3
  br i1 %cmp66, label %do.end71, label %do.body63.if.end81_crit_edge

do.body63.if.end81_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

do.end71:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #5
  %device72 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %device72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device72, align 4
  %dev73 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev73, align 8
  %name74 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  %arrayidx76 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %speed
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx76, align 4
  %arrayidx77 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %41
  %58 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx77, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.17, ptr noundef %name74, ptr noundef %57, ptr noundef %59) #6
  br label %if.end81

if.end81:                                         ; preds = %do.end71, %do.body63.if.end81_crit_edge, %if.end57.if.end81_crit_edge
  %speed.addr.0 = phi i32 [ %speed, %if.end57.if.end81_crit_edge ], [ %41, %do.end71 ], [ %41, %do.body63.if.end81_crit_edge ]
  %pcie82 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 5
  %60 = ptrtoint ptr %pcie82 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %speed.addr.0, ptr %pcie82, align 8
  %width85 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %width85 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %width, ptr %width85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %speed.addr.0, i32 %call35)
  %cmp86 = icmp eq i32 %speed.addr.0, %call35
  %62 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp92 = icmp ugt i32 %63, 3
  br i1 %cmp86, label %do.body89, label %do.body106

do.body89:                                        ; preds = %if.end81
  br i1 %cmp92, label %do.end97, label %do.body89.cleanup_crit_edge

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end97:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #5
  %device98 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %device98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %device98, align 4
  %dev99 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev99, align 8
  %name100 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.20, ptr noundef %name100) #6
  br label %cleanup

do.body106:                                       ; preds = %if.end81
  br i1 %cmp92, label %do.end114, label %do.body106.if.end121_crit_edge

do.body106.if.end121_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

do.end114:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #5
  %device115 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %device115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %device115, align 4
  %dev116 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev116, align 8
  %name117 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  %arrayidx119 = getelementptr [3 x ptr], ptr @nvkm_pcie_speeds, i32 0, i32 %speed.addr.0
  %72 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx119, align 4
  %conv120 = zext i8 %width to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.23, ptr noundef %name117, ptr noundef %73, i32 noundef %conv120) #6
  br label %if.end121

if.end121:                                        ; preds = %do.end114, %do.body106.if.end121_crit_edge
  %74 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pci, align 8
  %set_link126 = getelementptr inbounds %struct.nvkm_pci_func, ptr %75, i32 0, i32 5, i32 1
  %76 = ptrtoint ptr %set_link126 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_link126, align 4
  %call127 = tail call i32 %77(ptr noundef nonnull %pci, i32 noundef %speed.addr.0, i8 noundef zeroext %width) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %do.body131, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body131:                                       ; preds = %if.end121
  %78 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp134.not = icmp eq i32 %79, 0
  br i1 %cmp134.not, label %do.body131.cleanup_crit_edge, label %do.end139

do.body131.cleanup_crit_edge:                     ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end139:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #5
  %device140 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %device140 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device140, align 4
  %dev141 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev141, align 8
  %name142 = getelementptr inbounds %struct.nvkm_pci, ptr %pci, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.26, ptr noundef %name142, i32 noundef %call127) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end139, %do.body131.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %do.end97, %do.body89.cleanup_crit_edge, %do.end23, %do.body16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ], [ -19, %do.end23 ], [ -19, %do.body16.cleanup_crit_edge ], [ %call35, %do.end97 ], [ %call35, %do.body89.cleanup_crit_edge ], [ %call127, %do.body131.cleanup_crit_edge ], [ %call127, %do.end139 ], [ %call127, %if.end121.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_pcie_oneinit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_pcie_oneinit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 102, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nvkm_pcie_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_pcie_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 129, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvkm_pcie_set_link._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvkm_pcie_set_link._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 132, i32 3}
!21 = !{ptr @nvkm_pcie_set_link._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_pcie_set_link._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 140, i32 2}
!25 = !{ptr @nvkm_pcie_set_link._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nvkm_pcie_set_link._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 143, i32 3}
!29 = !{ptr @nvkm_pcie_set_link._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvkm_pcie_set_link._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 153, i32 3}
!33 = !{ptr @nvkm_pcie_set_link._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nvkm_pcie_set_link._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 157, i32 2}
!37 = !{ptr @nvkm_pcie_set_link._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nvkm_pcie_set_link._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 162, i32 3}
!41 = !{ptr @nvkm_pcie_set_link._entry.25, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nvkm_pcie_set_link._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 27, i32 2}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 28, i32 2}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 29, i32 2}
!49 = !{ptr @nvkm_pcie_speeds, !50, !"nvkm_pcie_speeds", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 26, i32 14}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pci/pcie.c", i32 74, i32 2}
!53 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nvkm_pcie_set_version._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @nvkm_pcie_set_version._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
