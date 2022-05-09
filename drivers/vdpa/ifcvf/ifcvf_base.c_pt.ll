; ModuleID = '/llk/IR_all_yes/drivers/vdpa/ifcvf/ifcvf_base.c_pt.bc'
source_filename = "../drivers/vdpa/ifcvf/ifcvf_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.virtio_pci_cap = type { i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.ifcvf_hw = type { ptr, ptr, i16, i8, ptr, i32, i32, i64, i64, i32, ptr, ptr, [17 x %struct.vring_info], ptr, [256 x i8], %struct.vdpa_callback, i32, i32 }
%struct.vring_info = type { i64, i64, i64, i16, i16, i8, ptr, i32, i32, %struct.vdpa_callback, [256 x i8] }
%struct.vdpa_callback = type { ptr, ptr }
%struct.virtio_pci_common_cfg = type { i32, i32, i32, i32, i16, i16, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ifcvf_lm_cfg = type { [32 x i8], [17 x %struct.ifcvf_vring_lm_cfg] }
%struct.ifcvf_vring_lm_cfg = type { [2 x i32], [56 x i8] }

@ifcvf_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read PCI capability list\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifcvf_init_hw\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/vdpa/ifcvf/ifcvf_base.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ifcvf_init_hw._entry_ptr = internal global ptr @ifcvf_init_hw._entry, section ".printk_index", align 4
@ifcvf_init_hw._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get PCI capability at %x\0A\00", [60 x i8] zeroinitializer }, align 32
@ifcvf_init_hw._entry_ptr.7 = internal global ptr @ifcvf_init_hw._entry.5, section ".printk_index", align 4
@ifcvf_init_hw.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ifcvf\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hw->common_cfg = %p\0A\00", [43 x i8] zeroinitializer }, align 32
@ifcvf_init_hw.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hw->notify_base = %p\0A\00", [42 x i8] zeroinitializer }, align 32
@ifcvf_init_hw.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hw->isr = %p\0A\00", [18 x i8] zeroinitializer }, align 32
@ifcvf_init_hw.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw->dev_cfg = %p\0A\00", [46 x i8] zeroinitializer }, align 32
@ifcvf_init_hw._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Incomplete PCI capabilities\0A\00", [35 x i8] zeroinitializer }, align 32
@ifcvf_init_hw._entry_ptr.15 = internal global ptr @ifcvf_init_hw._entry.13, section ".printk_index", align 4
@ifcvf_init_hw.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"PCI capability mapping: common cfg: %p, notify base: %p\0A, isr cfg: %p, device cfg: %p, multiplier: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@ifcvf_verify_min_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"VIRTIO_F_ACCESS_PLATFORM is not negotiated\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ifcvf_verify_min_features\00", [38 x i8] zeroinitializer }, align 32
@ifcvf_verify_min_features._entry_ptr = internal global ptr @ifcvf_verify_min_features._entry, section ".printk_index", align 4
@ifcvf_get_config_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VIRTIO ID %u not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ifcvf_get_config_size\00", [42 x i8] zeroinitializer }, align 32
@ifcvf_get_config_size._entry_ptr = internal global ptr @ifcvf_get_config_size._entry, section ".printk_index", align 4
@get_cap_addr.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_cap_addr\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid bar number %u to get capabilities\0A\00", [53 x i8] zeroinitializer }, align 32
@get_cap_addr.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"offset(%u) + len(%u) overflows bar%u's capability\0A\00", [45 x i8] zeroinitializer }, align 32
@ifcvf_config_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 315, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set FEATURES_OK status\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ifcvf_config_features\00", [42 x i8] zeroinitializer }, align 32
@ifcvf_config_features._entry_ptr = internal global ptr @ifcvf_config_features._entry, section ".printk_index", align 4
@ifcvf_hw_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No msix vector for device config\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ifcvf_hw_enable\00", [16 x i8] zeroinitializer }, align 32
@ifcvf_hw_enable._entry_ptr = internal global ptr @ifcvf_hw_enable._entry, section ".printk_index", align 4
@ifcvf_hw_enable._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No msix vector for queue %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ifcvf_hw_enable._entry_ptr.30 = internal global ptr @ifcvf_hw_enable._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 109, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 117, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 128, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 138, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 143, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 147, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 157, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 174, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 238, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 260, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 70, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 76, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 315, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 363, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [35 x i8] c"../drivers/vdpa/ifcvf/ifcvf_base.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 383, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @ifcvf_config_features._entry, ptr @ifcvf_config_features._entry_ptr, ptr @ifcvf_get_config_size._entry, ptr @ifcvf_get_config_size._entry_ptr, ptr @ifcvf_hw_enable._entry, ptr @ifcvf_hw_enable._entry.28, ptr @ifcvf_hw_enable._entry_ptr, ptr @ifcvf_hw_enable._entry_ptr.30, ptr @ifcvf_init_hw._entry, ptr @ifcvf_init_hw._entry.13, ptr @ifcvf_init_hw._entry.5, ptr @ifcvf_init_hw._entry_ptr, ptr @ifcvf_init_hw._entry_ptr.15, ptr @ifcvf_init_hw._entry_ptr.7, ptr @ifcvf_verify_min_features._entry, ptr @ifcvf_verify_min_features._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_init_hw._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_init_hw._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_verify_min_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_get_config_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_config_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_hw_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_hw_enable._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vf_to_adapter(ptr noundef readnone %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -1056
  ret ptr %add.ptr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ifcvf_init_hw(ptr noundef %hw, ptr noundef %pdev) local_unnamed_addr #2 align 64 {
entry:
  %cap = alloca %struct.virtio_pci_cap, align 4
  %pos = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cap) #7
  %0 = getelementptr inbounds %struct.virtio_pci_cap, ptr %cap, i32 0, i32 1
  %1 = getelementptr inbounds %struct.virtio_pci_cap, ptr %cap, i32 0, i32 3
  %2 = getelementptr inbounds %struct.virtio_pci_cap, ptr %cap, i32 0, i32 4
  %3 = getelementptr inbounds %struct.virtio_pci_cap, ptr %cap, i32 0, i32 7
  %4 = getelementptr inbounds %struct.virtio_pci_cap, ptr %cap, i32 0, i32 8
  %5 = call ptr @memset(ptr %cap, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pos) #7
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %pos, align 1, !annotation !72
  %call = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 52, ptr noundef nonnull %pos) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %while.condthread-pre-split

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

while.condthread-pre-split:                       ; preds = %entry
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not326 = icmp eq i8 %.pr, 0
  br i1 %tobool.not326, label %while.condthread-pre-split.while.end_crit_edge, label %while.body.lr.ph

while.condthread-pre-split.while.end_crit_edge:   ; preds = %while.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.condthread-pre-split
  %pdev4.i290 = getelementptr i8, ptr %hw, i32 -8
  %base.i310 = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 13
  %dev_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 11
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %notify_off_multiplier = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 6
  %notify_bar = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 3
  %notify_base = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 4
  %notify_base_pa = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 5
  %common_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %next.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i8 [ %.pr, %while.body.lr.ph ], [ %112, %next.while.body_crit_edge ]
  %conv = zext i8 %8 to i32
  %call.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %conv, ptr noundef nonnull %cap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %while.body.do.end7_crit_edge, label %for.cond.i

while.body.do.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

for.cond.i:                                       ; preds = %while.body
  %add.1.i = add nuw nsw i32 %conv, 4
  %call.1.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.1.i, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %for.cond.i.do.end7_crit_edge, label %for.cond.1.i

for.cond.i.do.end7_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

for.cond.1.i:                                     ; preds = %for.cond.i
  %add.2.i = add nuw nsw i32 %conv, 8
  %call.2.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.2.i, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %for.cond.1.i.do.end7_crit_edge, label %ifcvf_read_config_range.exit

for.cond.1.i.do.end7_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

ifcvf_read_config_range.exit:                     ; preds = %for.cond.1.i
  %add.3.i = add nuw nsw i32 %conv, 12
  %call.3.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.3.i, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2 = icmp slt i32 %call.3.i, 0
  br i1 %cmp2, label %ifcvf_read_config_range.exit.do.end7_crit_edge, label %if.end10

ifcvf_read_config_range.exit.do.end7_crit_edge:   ; preds = %ifcvf_read_config_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end7:                                          ; preds = %ifcvf_read_config_range.exit.do.end7_crit_edge, %for.cond.1.i.do.end7_crit_edge, %for.cond.i.do.end7_crit_edge, %while.body.do.end7_crit_edge
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pos, align 1
  %conv9 = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.6, i32 noundef %conv9) #10
  br label %while.end

if.end10:                                         ; preds = %ifcvf_read_config_range.exit
  %11 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %12)
  %cmp12.not = icmp eq i8 %12, 9
  br i1 %cmp12.not, label %if.end15, label %if.end10.next_crit_edge

if.end10.next_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %next

if.end15:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.end15.next_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb29
    i8 3, label %sw.bb53
    i8 4, label %sw.bb73
  ]

if.end15.next_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %next

sw.bb:                                            ; preds = %if.end15
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #7
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 4
  %24 = ptrtoint ptr %pdev4.i290 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev4.i290, align 8
  %conv.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %23)
  %cmp.i = icmp ugt i8 %23, 5
  br i1 %cmp.i, label %do.body.i, label %if.end11.i

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then9.i)) #7
          to label %get_cap_addr.exit [label %if.then9.i], !srcloc !73

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug363, ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %conv.i) #7
  br label %get_cap_addr.exit

if.end11.i:                                       ; preds = %sw.bb
  %add.i = add i32 %21, %18
  %end.i = getelementptr %struct.pci_dev, ptr %25, i32 0, i32 47, i32 %conv.i, i32 1
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp12.i = icmp eq i32 %27, 0
  br i1 %cmp12.i, label %if.end11.i.cond.end.i_crit_edge, label %cond.false.i

if.end11.i.cond.end.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %25, i32 0, i32 47, i32 %conv.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 8
  %sub.i = add i32 %27, 1
  %add21.i = sub i32 %sub.i, %29
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end11.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add21.i, %cond.false.i ], [ 0, %if.end11.i.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cond.i)
  %cmp22.i = icmp ugt i32 %add.i, %cond.i
  br i1 %cmp22.i, label %do.body25.i, label %if.end43.i

do.body25.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then37.i)) #7
          to label %get_cap_addr.exit [label %if.then37.i], !srcloc !73

if.then37.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev38.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug364, ptr noundef %dev38.i, ptr noundef nonnull @.str.23, i32 noundef %21, i32 noundef %18, i32 noundef %conv.i) #7
  br label %get_cap_addr.exit

if.end43.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %base.i310 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i310, align 8
  %arrayidx45.i = getelementptr ptr, ptr %31, i32 %conv.i
  %32 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx45.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %21
  br label %get_cap_addr.exit

get_cap_addr.exit:                                ; preds = %if.end43.i, %if.then37.i, %do.body25.i, %if.then9.i, %do.body.i
  %retval.0.i228 = phi ptr [ %add.ptr.i, %if.end43.i ], [ null, %if.then9.i ], [ null, %if.then37.i ], [ null, %do.body.i ], [ null, %do.body25.i ]
  %34 = ptrtoint ptr %common_cfg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i228, ptr %common_cfg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then23)) #7
          to label %next [label %if.then23], !srcloc !73

if.then23:                                        ; preds = %get_cap_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %common_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %common_cfg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ifcvf_init_hw.__UNIQUE_ID_ddebug365, ptr noundef %dev88, ptr noundef nonnull @.str.9, ptr noundef %36) #7
  br label %next

sw.bb29:                                          ; preds = %if.end15
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pos, align 1
  %conv30 = zext i8 %38 to i32
  %add = add nuw nsw i32 %conv30, 16
  %call31 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add, ptr noundef %notify_off_multiplier) #7
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 4
  %41 = ptrtoint ptr %notify_bar to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %notify_bar, align 2
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %4, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #7
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #7
  %48 = ptrtoint ptr %pdev4.i290 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev4.i290, align 8
  %conv.i233 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %40)
  %cmp.i234 = icmp ugt i8 %40, 5
  br i1 %cmp.i234, label %do.body.i235, label %if.end11.i241

do.body.i235:                                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then9.i237)) #7
          to label %get_cap_addr.exit257 [label %if.then9.i237], !srcloc !73

if.then9.i237:                                    ; preds = %do.body.i235
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i236 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug363, ptr noundef %dev.i236, ptr noundef nonnull @.str.22, i32 noundef %conv.i233) #7
  br label %get_cap_addr.exit257

if.end11.i241:                                    ; preds = %sw.bb29
  %add.i238 = add i32 %47, %44
  %end.i239 = getelementptr %struct.pci_dev, ptr %49, i32 0, i32 47, i32 %conv.i233, i32 1
  %50 = ptrtoint ptr %end.i239 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %end.i239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp12.i240 = icmp eq i32 %51, 0
  br i1 %cmp12.i240, label %if.end11.i241.cond.end.i248_crit_edge, label %cond.false.i245

if.end11.i241.cond.end.i248_crit_edge:            ; preds = %if.end11.i241
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i248

cond.false.i245:                                  ; preds = %if.end11.i241
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i242 = getelementptr %struct.pci_dev, ptr %49, i32 0, i32 47, i32 %conv.i233
  %52 = ptrtoint ptr %arrayidx.i242 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i242, align 8
  %sub.i243 = add i32 %51, 1
  %add21.i244 = sub i32 %sub.i243, %53
  br label %cond.end.i248

cond.end.i248:                                    ; preds = %cond.false.i245, %if.end11.i241.cond.end.i248_crit_edge
  %cond.i246 = phi i32 [ %add21.i244, %cond.false.i245 ], [ 0, %if.end11.i241.cond.end.i248_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i238, i32 %cond.i246)
  %cmp22.i247 = icmp ugt i32 %add.i238, %cond.i246
  br i1 %cmp22.i247, label %do.body25.i249, label %if.end43.i255

do.body25.i249:                                   ; preds = %cond.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then37.i251)) #7
          to label %get_cap_addr.exit257 [label %if.then37.i251], !srcloc !73

if.then37.i251:                                   ; preds = %do.body25.i249
  call void @__sanitizer_cov_trace_pc() #9
  %dev38.i250 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug364, ptr noundef %dev38.i250, ptr noundef nonnull @.str.23, i32 noundef %47, i32 noundef %44, i32 noundef %conv.i233) #7
  br label %get_cap_addr.exit257

if.end43.i255:                                    ; preds = %cond.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %base.i310 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i310, align 8
  %arrayidx45.i253 = getelementptr ptr, ptr %55, i32 %conv.i233
  %56 = ptrtoint ptr %arrayidx45.i253 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx45.i253, align 4
  %add.ptr.i254 = getelementptr i8, ptr %57, i32 %47
  br label %get_cap_addr.exit257

get_cap_addr.exit257:                             ; preds = %if.end43.i255, %if.then37.i251, %do.body25.i249, %if.then9.i237, %do.body.i235
  %retval.0.i256 = phi ptr [ %add.ptr.i254, %if.end43.i255 ], [ null, %if.then9.i237 ], [ null, %if.then37.i251 ], [ null, %do.body.i235 ], [ null, %do.body25.i249 ]
  %58 = ptrtoint ptr %notify_base to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %retval.0.i256, ptr %notify_base, align 4
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %2, align 4
  %idxprom = zext i8 %60 to i32
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %idxprom
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 8
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %3, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  %add34 = add i32 %65, %62
  %66 = ptrtoint ptr %notify_base_pa to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add34, ptr %notify_base_pa, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then47)) #7
          to label %next [label %if.then47], !srcloc !73

if.then47:                                        ; preds = %get_cap_addr.exit257
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %notify_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %notify_base, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ifcvf_init_hw.__UNIQUE_ID_ddebug366, ptr noundef %dev88, ptr noundef nonnull @.str.10, ptr noundef %68) #7
  br label %next

sw.bb53:                                          ; preds = %if.end15
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %4, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #7
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %3, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #7
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %2, align 4
  %77 = ptrtoint ptr %pdev4.i290 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdev4.i290, align 8
  %conv.i262 = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %76)
  %cmp.i263 = icmp ugt i8 %76, 5
  br i1 %cmp.i263, label %do.body.i264, label %if.end11.i270

do.body.i264:                                     ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then9.i266)) #7
          to label %get_cap_addr.exit286 [label %if.then9.i266], !srcloc !73

if.then9.i266:                                    ; preds = %do.body.i264
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i265 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug363, ptr noundef %dev.i265, ptr noundef nonnull @.str.22, i32 noundef %conv.i262) #7
  br label %get_cap_addr.exit286

if.end11.i270:                                    ; preds = %sw.bb53
  %add.i267 = add i32 %74, %71
  %end.i268 = getelementptr %struct.pci_dev, ptr %78, i32 0, i32 47, i32 %conv.i262, i32 1
  %79 = ptrtoint ptr %end.i268 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %end.i268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp12.i269 = icmp eq i32 %80, 0
  br i1 %cmp12.i269, label %if.end11.i270.cond.end.i277_crit_edge, label %cond.false.i274

if.end11.i270.cond.end.i277_crit_edge:            ; preds = %if.end11.i270
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i277

cond.false.i274:                                  ; preds = %if.end11.i270
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i271 = getelementptr %struct.pci_dev, ptr %78, i32 0, i32 47, i32 %conv.i262
  %81 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i271, align 8
  %sub.i272 = add i32 %80, 1
  %add21.i273 = sub i32 %sub.i272, %82
  br label %cond.end.i277

cond.end.i277:                                    ; preds = %cond.false.i274, %if.end11.i270.cond.end.i277_crit_edge
  %cond.i275 = phi i32 [ %add21.i273, %cond.false.i274 ], [ 0, %if.end11.i270.cond.end.i277_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i267, i32 %cond.i275)
  %cmp22.i276 = icmp ugt i32 %add.i267, %cond.i275
  br i1 %cmp22.i276, label %do.body25.i278, label %if.end43.i284

do.body25.i278:                                   ; preds = %cond.end.i277
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then37.i280)) #7
          to label %get_cap_addr.exit286 [label %if.then37.i280], !srcloc !73

if.then37.i280:                                   ; preds = %do.body25.i278
  call void @__sanitizer_cov_trace_pc() #9
  %dev38.i279 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug364, ptr noundef %dev38.i279, ptr noundef nonnull @.str.23, i32 noundef %74, i32 noundef %71, i32 noundef %conv.i262) #7
  br label %get_cap_addr.exit286

if.end43.i284:                                    ; preds = %cond.end.i277
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %base.i310 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i310, align 8
  %arrayidx45.i282 = getelementptr ptr, ptr %84, i32 %conv.i262
  %85 = ptrtoint ptr %arrayidx45.i282 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx45.i282, align 4
  %add.ptr.i283 = getelementptr i8, ptr %86, i32 %74
  br label %get_cap_addr.exit286

get_cap_addr.exit286:                             ; preds = %if.end43.i284, %if.then37.i280, %do.body25.i278, %if.then9.i266, %do.body.i264
  %retval.0.i285 = phi ptr [ %add.ptr.i283, %if.end43.i284 ], [ null, %if.then9.i266 ], [ null, %if.then37.i280 ], [ null, %do.body.i264 ], [ null, %do.body25.i278 ]
  %87 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %retval.0.i285, ptr %hw, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then67)) #7
          to label %next [label %if.then67], !srcloc !73

if.then67:                                        ; preds = %get_cap_addr.exit286
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ifcvf_init_hw.__UNIQUE_ID_ddebug367, ptr noundef %dev88, ptr noundef nonnull @.str.11, ptr noundef %89) #7
  br label %next

sw.bb73:                                          ; preds = %if.end15
  %90 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %4, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #7
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %3, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94) #7
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %2, align 4
  %98 = ptrtoint ptr %pdev4.i290 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev4.i290, align 8
  %conv.i291 = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %97)
  %cmp.i292 = icmp ugt i8 %97, 5
  br i1 %cmp.i292, label %do.body.i293, label %if.end11.i299

do.body.i293:                                     ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then9.i295)) #7
          to label %get_cap_addr.exit315 [label %if.then9.i295], !srcloc !73

if.then9.i295:                                    ; preds = %do.body.i293
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i294 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug363, ptr noundef %dev.i294, ptr noundef nonnull @.str.22, i32 noundef %conv.i291) #7
  br label %get_cap_addr.exit315

if.end11.i299:                                    ; preds = %sw.bb73
  %add.i296 = add i32 %95, %92
  %end.i297 = getelementptr %struct.pci_dev, ptr %99, i32 0, i32 47, i32 %conv.i291, i32 1
  %100 = ptrtoint ptr %end.i297 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %end.i297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp12.i298 = icmp eq i32 %101, 0
  br i1 %cmp12.i298, label %if.end11.i299.cond.end.i306_crit_edge, label %cond.false.i303

if.end11.i299.cond.end.i306_crit_edge:            ; preds = %if.end11.i299
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i306

cond.false.i303:                                  ; preds = %if.end11.i299
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i300 = getelementptr %struct.pci_dev, ptr %99, i32 0, i32 47, i32 %conv.i291
  %102 = ptrtoint ptr %arrayidx.i300 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i300, align 8
  %sub.i301 = add i32 %101, 1
  %add21.i302 = sub i32 %sub.i301, %103
  br label %cond.end.i306

cond.end.i306:                                    ; preds = %cond.false.i303, %if.end11.i299.cond.end.i306_crit_edge
  %cond.i304 = phi i32 [ %add21.i302, %cond.false.i303 ], [ 0, %if.end11.i299.cond.end.i306_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i296, i32 %cond.i304)
  %cmp22.i305 = icmp ugt i32 %add.i296, %cond.i304
  br i1 %cmp22.i305, label %do.body25.i307, label %if.end43.i313

do.body25.i307:                                   ; preds = %cond.end.i306
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_cap_addr.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then37.i309)) #7
          to label %get_cap_addr.exit315 [label %if.then37.i309], !srcloc !73

if.then37.i309:                                   ; preds = %do.body25.i307
  call void @__sanitizer_cov_trace_pc() #9
  %dev38.i308 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_cap_addr.__UNIQUE_ID_ddebug364, ptr noundef %dev38.i308, ptr noundef nonnull @.str.23, i32 noundef %95, i32 noundef %92, i32 noundef %conv.i291) #7
  br label %get_cap_addr.exit315

if.end43.i313:                                    ; preds = %cond.end.i306
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %base.i310 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i310, align 8
  %arrayidx45.i311 = getelementptr ptr, ptr %105, i32 %conv.i291
  %106 = ptrtoint ptr %arrayidx45.i311 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx45.i311, align 4
  %add.ptr.i312 = getelementptr i8, ptr %107, i32 %95
  br label %get_cap_addr.exit315

get_cap_addr.exit315:                             ; preds = %if.end43.i313, %if.then37.i309, %do.body25.i307, %if.then9.i295, %do.body.i293
  %retval.0.i314 = phi ptr [ %add.ptr.i312, %if.end43.i313 ], [ null, %if.then9.i295 ], [ null, %if.then37.i309 ], [ null, %do.body.i293 ], [ null, %do.body25.i307 ]
  %108 = ptrtoint ptr %dev_cfg to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %retval.0.i314, ptr %dev_cfg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then87)) #7
          to label %next [label %if.then87], !srcloc !73

if.then87:                                        ; preds = %get_cap_addr.exit315
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %dev_cfg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_cfg, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ifcvf_init_hw.__UNIQUE_ID_ddebug368, ptr noundef %dev88, ptr noundef nonnull @.str.12, ptr noundef %110) #7
  br label %next

next:                                             ; preds = %if.then87, %get_cap_addr.exit315, %if.then67, %get_cap_addr.exit286, %if.then47, %get_cap_addr.exit257, %if.then23, %get_cap_addr.exit, %if.end15.next_crit_edge, %if.end10.next_crit_edge
  %111 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %0, align 1
  %113 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %pos, align 1
  %tobool.not = icmp eq i8 %112, 0
  br i1 %tobool.not, label %next.while.end_crit_edge, label %next.while.body_crit_edge

next.while.body_crit_edge:                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

next.while.end_crit_edge:                         ; preds = %next
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %next.while.end_crit_edge, %do.end7, %while.condthread-pre-split.while.end_crit_edge
  %common_cfg93 = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  %114 = ptrtoint ptr %common_cfg93 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %common_cfg93, align 4
  %cmp94 = icmp eq ptr %115, null
  br i1 %cmp94, label %while.end.do.end110_crit_edge, label %lor.lhs.false

while.end.do.end110_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

lor.lhs.false:                                    ; preds = %while.end
  %notify_base96 = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 4
  %116 = ptrtoint ptr %notify_base96 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %notify_base96, align 4
  %cmp97 = icmp eq ptr %117, null
  br i1 %cmp97, label %lor.lhs.false.do.end110_crit_edge, label %lor.lhs.false99

lor.lhs.false.do.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

lor.lhs.false99:                                  ; preds = %lor.lhs.false
  %118 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw, align 8
  %cmp101 = icmp eq ptr %119, null
  br i1 %cmp101, label %lor.lhs.false99.do.end110_crit_edge, label %lor.lhs.false103

lor.lhs.false99.do.end110_crit_edge:              ; preds = %lor.lhs.false99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

lor.lhs.false103:                                 ; preds = %lor.lhs.false99
  %dev_cfg104 = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 11
  %120 = ptrtoint ptr %dev_cfg104 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_cfg104, align 8
  %cmp105 = icmp eq ptr %121, null
  br i1 %cmp105, label %lor.lhs.false103.do.end110_crit_edge, label %if.end112

lor.lhs.false103.do.end110_crit_edge:             ; preds = %lor.lhs.false103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

do.end110:                                        ; preds = %lor.lhs.false103.do.end110_crit_edge, %lor.lhs.false99.do.end110_crit_edge, %lor.lhs.false.do.end110_crit_edge, %while.end.do.end110_crit_edge
  %dev111 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end112:                                        ; preds = %lor.lhs.false103
  %num_queues = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %115, i32 0, i32 5
  %122 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %num_queues) #7, !srcloc !74
  %123 = call i16 @llvm.bswap.i16(i16 %122) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %nr_vring = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 2
  %124 = ptrtoint ptr %nr_vring to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %nr_vring, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %cmp117328.not = icmp eq i16 %122, 0
  br i1 %cmp117328.not, label %if.end112.for.end_crit_edge, label %for.body.lr.ph

if.end112.for.end_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end112
  %notify_off_multiplier125 = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 6
  %notify_base_pa127 = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0329 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv119 = trunc i32 %i.0329 to i16
  %125 = ptrtoint ptr %common_cfg93 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %common_cfg93, align 4
  %queue_select = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %126, i32 0, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void @arm_heavy_mb() #7
  %127 = call i16 @llvm.bswap.i16(i16 %conv119) #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %queue_select, i16 %127) #7, !srcloc !77
  %128 = ptrtoint ptr %common_cfg93 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %common_cfg93, align 4
  %queue_notify_off = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %129, i32 0, i32 12
  %130 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %queue_notify_off) #7, !srcloc !74
  %131 = call i16 @llvm.bswap.i16(i16 %130) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %132 = ptrtoint ptr %notify_base96 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %notify_base96, align 4
  %conv124 = zext i16 %131 to i32
  %134 = ptrtoint ptr %notify_off_multiplier125 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %notify_off_multiplier125, align 4
  %mul = mul i32 %135, %conv124
  %add.ptr = getelementptr i8, ptr %133, i32 %mul
  %notify_addr = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.0329, i32 6
  %136 = ptrtoint ptr %notify_addr to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %add.ptr, ptr %notify_addr, align 8
  %137 = ptrtoint ptr %notify_base_pa127 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %notify_base_pa127, align 8
  %add131 = add i32 %138, %mul
  %notify_pa = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.0329, i32 7
  %139 = ptrtoint ptr %notify_pa to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add131, ptr %notify_pa, align 4
  %inc = add nuw nsw i32 %i.0329, 1
  %140 = ptrtoint ptr %nr_vring to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %nr_vring, align 8
  %conv116 = zext i16 %141 to i32
  %cmp117 = icmp ult i32 %inc, %conv116
  br i1 %cmp117, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end112.for.end_crit_edge
  %base = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 13
  %142 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base, align 8
  %arrayidx134 = getelementptr ptr, ptr %143, i32 4
  %144 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx134, align 4
  %lm_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 1
  %146 = ptrtoint ptr %lm_cfg to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %lm_cfg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ifcvf_init_hw, %if.then147)) #7
          to label %cleanup [label %if.then147], !srcloc !73

if.then147:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev148 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %147 = ptrtoint ptr %common_cfg93 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %common_cfg93, align 4
  %149 = ptrtoint ptr %notify_base96 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %notify_base96, align 4
  %151 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw, align 8
  %153 = ptrtoint ptr %dev_cfg104 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev_cfg104, align 8
  %notify_off_multiplier153 = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 6
  %155 = ptrtoint ptr %notify_off_multiplier153 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %notify_off_multiplier153, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ifcvf_init_hw.__UNIQUE_ID_ddebug369, ptr noundef %dev148, ptr noundef nonnull @.str.16, ptr noundef %148, ptr noundef %150, ptr noundef %152, ptr noundef %154, i32 noundef %156) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then147, %for.end, %do.end110, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end110 ], [ 0, %if.then147 ], [ 0, %for.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pos) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cap) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ifcvf_get_status(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %common_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %common_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_cfg, align 4
  %device_status = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 6
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ifcvf_set_status(ptr nocapture noundef readonly %hw, i8 noundef zeroext %status) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %common_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %common_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_cfg, align 4
  %device_status = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status, i8 %status) #7, !srcloc !81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ifcvf_reset(ptr nocapture noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config_cb = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 15
  %0 = ptrtoint ptr %config_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %config_cb, align 4
  %private = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %private, align 4
  %common_cfg.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %common_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common_cfg.i, align 4
  %device_status.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status.i, i8 0) #7, !srcloc !81
  %4 = ptrtoint ptr %common_cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common_cfg.i, align 4
  %device_status.i6 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 6
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i6) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ifcvf_get_hw_features(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %common_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %common_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_cfg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #7, !srcloc !83
  %device_feature = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %device_feature) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #7, !srcloc !83
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %device_feature) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  ret i64 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ifcvf_get_features(ptr nocapture noundef readonly %hw) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_features = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 8
  %0 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hw_features, align 8
  ret i64 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ifcvf_verify_min_features(ptr nocapture noundef readonly %hw, i64 noundef %features) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp ne i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %features)
  %tobool1.not = icmp eq i64 %features, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ifcvf_get_config_size(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr i8, ptr %hw, i32 -8
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %1) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge
  %config_size.0 = phi i32 [ 0, %sw.default ], [ 60, %sw.bb1 ], [ 24, %entry.sw.epilog_crit_edge ]
  ret i32 %config_size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ifcvf_read_dev_config(ptr nocapture noundef readonly %hw, i64 noundef %offset, ptr nocapture noundef writeonly %dst, i32 noundef %length) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %length to i64
  %add = add i64 %conv, %offset
  %config_size = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 17
  %0 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_size, align 8
  %conv1 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv1)
  %cmp = icmp ugt i64 %add, %conv1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %common_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp2243 = icmp sgt i32 %length, 0
  %dev_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 11
  %idx.ext = trunc i64 %offset to i32
  br label %do.body21

do.body21:                                        ; preds = %for.end.do.body21_crit_edge, %if.end
  %2 = ptrtoint ptr %common_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common_cfg, align 4
  %config_generation = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 7
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %config_generation) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  br i1 %cmp2243, label %do.body21.for.body_crit_edge, label %do.body21.for.end_crit_edge

do.body21.for.end_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body21.for.body_crit_edge:                     ; preds = %do.body21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body21.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body21.for.body_crit_edge ]
  %p.044 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %dst, %do.body21.for.body_crit_edge ]
  %5 = ptrtoint ptr %dev_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_cfg, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 %idx.ext
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i32 %i.045
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %incdec.ptr = getelementptr i8, ptr %p.044, i32 1
  %8 = ptrtoint ptr %p.044 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %p.044, align 1
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body21.for.end_crit_edge
  %9 = ptrtoint ptr %common_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common_cfg, align 4
  %config_generation27 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %10, i32 0, i32 7
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %config_generation27) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %cmp32.not = icmp eq i8 %4, %11
  br i1 %cmp32.not, label %do.end34, label %for.end.do.body21_crit_edge

for.end.do.body21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ifcvf_write_dev_config(ptr nocapture noundef readonly %hw, i64 noundef %offset, ptr nocapture noundef readonly %src, i32 noundef %length) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %length to i64
  %add = add i64 %conv, %offset
  %config_size = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 17
  %0 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_size, align 8
  %conv1 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv1)
  %cmp = icmp ugt i64 %add, %conv1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 290, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp2130 = icmp sgt i32 %length, 0
  br i1 %cmp2130, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %dev_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 11
  %idx.ext = trunc i64 %offset to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.032 = phi ptr [ %src, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.032, i32 1
  %2 = ptrtoint ptr %p.032 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.032, align 1
  %4 = ptrtoint ptr %dev_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_cfg, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.ext
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %i.031
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 %3) #7, !srcloc !81
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ifcvf_get_vq_state(ptr nocapture noundef readonly %hw, i16 noundef zeroext %qid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lm_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lm_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm_cfg, align 4
  %nr_vring = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %nr_vring to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_vring, align 8
  %4 = udiv i16 %qid, %3
  %div = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.ifcvf_lm_cfg, ptr %1, i32 0, i32 1, i32 %div
  %5 = and i16 %qid, 1
  %rem = zext i16 %5 to i32
  %arrayidx3 = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 %rem
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx3) #7, !srcloc !74
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ifcvf_set_vq_state(ptr nocapture noundef %hw, i16 noundef zeroext %qid, i16 noundef zeroext %num) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lm_cfg = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %lm_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm_cfg, align 4
  %conv = zext i16 %qid to i32
  %nr_vring = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %nr_vring to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_vring, align 8
  %4 = udiv i16 %qid, %3
  %div = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.ifcvf_lm_cfg, ptr %1, i32 0, i32 1, i32 %div
  %rem = and i32 %conv, 1
  %arrayidx3 = getelementptr [2 x i32], ptr %arrayidx, i32 0, i32 %rem
  %last_avail_idx = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %conv, i32 4
  %5 = ptrtoint ptr %last_avail_idx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %num, ptr %last_avail_idx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %6 = tail call i16 @llvm.bswap.i16(i16 %num) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx3, i16 %6) #7, !srcloc !77
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ifcvf_start_hw(ptr nocapture noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config_cb.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 15
  %0 = ptrtoint ptr %config_cb.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %config_cb.i, align 4
  %private.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %private.i, align 4
  %common_cfg.i.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status.i.i, i8 0) #7, !srcloc !81
  %4 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i6.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 6
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i6.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %7 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i.i11 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %8, i32 0, i32 6
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i.i11) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %or10.i = or i8 %9, 1
  %10 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i12.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status.i12.i, i8 %or10.i) #7, !srcloc !81
  %12 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i14.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %13, i32 0, i32 6
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i14.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %15 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i.i13 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %16, i32 0, i32 6
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i.i13) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %or10.i14 = or i8 %17, 2
  %18 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i12.i15 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %19, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status.i12.i15, i8 %or10.i14) #7, !srcloc !81
  %20 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i14.i16 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %21, i32 0, i32 6
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i14.i16) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %req_features.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 7
  %23 = ptrtoint ptr %req_features.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %req_features.i, align 8
  %25 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common_cfg.i.i, align 4
  %guest_feature_select.i.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %26, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %guest_feature_select.i.i, i32 0) #7, !srcloc !83
  %conv.i.i = trunc i64 %24 to i32
  %guest_feature.i.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %26, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %guest_feature.i.i, i32 %27) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %guest_feature_select.i.i, i32 16777216) #7, !srcloc !83
  %shr.i.i = lshr i64 %24, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv2.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %guest_feature.i.i, i32 %28) #7, !srcloc !83
  %29 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i.i.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %30, i32 0, i32 6
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i.i.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %or10.i.i = or i8 %31, 8
  %32 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i12.i.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %33, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status.i12.i.i, i8 %or10.i.i) #7, !srcloc !81
  %34 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i14.i.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %35, i32 0, i32 6
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i14.i.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %37 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i.i18 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %38, i32 0, i32 6
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i.i18) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %40 = and i8 %39, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %ifcvf_config_features.exit.thread, label %if.end

ifcvf_config_features.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr i8, ptr %hw, i32 -8
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #10
  br label %return

if.end:                                           ; preds = %entry
  %43 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %common_cfg.i.i, align 4
  %msix_config.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %msix_config.i, i16 0) #7, !srcloc !77
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %msix_config.i) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %cmp.i = icmp eq i16 %45, -1
  br i1 %cmp.i, label %do.end.i21, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %nr_vring.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 2
  %46 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nr_vring.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp579.not.i = icmp eq i16 %47, 0
  br i1 %cmp579.not.i, label %for.cond.preheader.i.if.end4_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end4_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %queue_select.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 8
  %queue_desc_lo.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 13
  %queue_desc_hi.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 14
  %queue_avail_lo.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 15
  %queue_avail_hi.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 16
  %queue_used_lo.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 17
  %queue_used_hi.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 18
  %queue_size.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 9
  %queue_msix_vector.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 10
  %lm_cfg.i.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 1
  %queue_enable.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %44, i32 0, i32 11
  br label %for.body.i

do.end.i21:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i19 = getelementptr i8, ptr %hw, i32 -8
  %48 = ptrtoint ptr %pdev.i19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i19, align 8
  %dev.i20 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i20, ptr noundef nonnull @.str.26) #10
  br label %return

for.body.i:                                       ; preds = %if.end30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.080.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %if.end30.i.for.body.i_crit_edge ]
  %ready.i = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.080.i, i32 5
  %50 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ready.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i22 = icmp eq i8 %51, 0
  br i1 %tobool.not.i22, label %for.body.i.if.end4_crit_edge, label %if.end8.i

for.body.i.if.end4_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end8.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.080.i
  %conv9.i = trunc i32 %i.080.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %queue_select.i, i16 %52) #7, !srcloc !77
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx.i, align 8
  %conv.i.i23 = trunc i64 %54 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i23) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_desc_lo.i, i32 %55) #7, !srcloc !83
  %shr.i.i24 = lshr i64 %54, 32
  %conv1.i.i = trunc i64 %shr.i.i24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %conv1.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_desc_hi.i, i32 %56) #7, !srcloc !83
  %avail.i = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.080.i, i32 1
  %57 = ptrtoint ptr %avail.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %avail.i, align 8
  %conv.i70.i = trunc i64 %58 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %conv.i70.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_avail_lo.i, i32 %59) #7, !srcloc !83
  %shr.i71.i = lshr i64 %58, 32
  %conv1.i72.i = trunc i64 %shr.i71.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv1.i72.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_avail_hi.i, i32 %60) #7, !srcloc !83
  %used.i = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.080.i, i32 2
  %61 = ptrtoint ptr %used.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %used.i, align 8
  %conv.i73.i = trunc i64 %62 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv.i73.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_used_lo.i, i32 %63) #7, !srcloc !83
  %shr.i74.i = lshr i64 %62, 32
  %conv1.i75.i = trunc i64 %shr.i74.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv1.i75.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %queue_used_hi.i, i32 %64) #7, !srcloc !83
  %size.i = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.080.i, i32 3
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %size.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %queue_size.i, i16 %67) #7, !srcloc !77
  %add.i = add nuw nsw i32 %i.080.i, 1
  %conv18.i = trunc i32 %add.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %queue_msix_vector.i, i16 %68) #7, !srcloc !77
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %queue_msix_vector.i) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %69)
  %cmp22.i = icmp eq i16 %69, -1
  br i1 %cmp22.i, label %do.end27.i, label %if.end30.i

do.end27.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev28.i = getelementptr i8, ptr %hw, i32 -8
  %70 = ptrtoint ptr %pdev28.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev28.i, align 8
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.29, i32 noundef %i.080.i) #10
  br label %return

if.end30.i:                                       ; preds = %if.end8.i
  %last_avail_idx.i = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %i.080.i, i32 4
  %72 = ptrtoint ptr %last_avail_idx.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %last_avail_idx.i, align 2
  %74 = ptrtoint ptr %lm_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lm_cfg.i.i, align 4
  %76 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %nr_vring.i, align 8
  %78 = udiv i16 %conv9.i, %77
  %div.i.i = zext i16 %78 to i32
  %arrayidx.i.i = getelementptr %struct.ifcvf_lm_cfg, ptr %75, i32 0, i32 1, i32 %div.i.i
  %rem.i.i = and i32 %i.080.i, 1
  %arrayidx3.i.i = getelementptr [2 x i32], ptr %arrayidx.i.i, i32 0, i32 %rem.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %79 = tail call i16 @llvm.bswap.i16(i16 %73) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx3.i.i, i16 %79) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %queue_enable.i, i16 256) #7, !srcloc !77
  %80 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %nr_vring.i, align 8
  %conv4.i = zext i16 %81 to i32
  %cmp5.i = icmp ult i32 %add.i, %conv4.i
  br i1 %cmp5.i, label %if.end30.i.for.body.i_crit_edge, label %if.end30.i.if.end4_crit_edge

if.end30.i.if.end4_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end4:                                          ; preds = %if.end30.i.if.end4_crit_edge, %for.body.i.if.end4_crit_edge, %for.cond.preheader.i.if.end4_crit_edge
  %82 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i.i27 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %83, i32 0, i32 6
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i.i27) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %or10.i28 = or i8 %84, 4
  %85 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i12.i29 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %86, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status.i12.i29, i8 %or10.i28) #7, !srcloc !81
  %87 = ptrtoint ptr %common_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %common_cfg.i.i, align 4
  %device_status.i14.i30 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %88, i32 0, i32 6
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i14.i30) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  br label %return

return:                                           ; preds = %if.end4, %do.end27.i, %do.end.i21, %ifcvf_config_features.exit.thread
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %ifcvf_config_features.exit.thread ], [ -22, %do.end.i21 ], [ -22, %do.end27.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ifcvf_stop_hw(ptr nocapture noundef %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %common_cfg.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %common_cfg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_cfg.i, align 4
  %msix_config.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %msix_config.i, i16 -1) #7, !srcloc !77
  %nr_vring.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nr_vring.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp11.not.i = icmp eq i16 %3, 0
  br i1 %cmp11.not.i, label %entry.ifcvf_hw_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.ifcvf_hw_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ifcvf_hw_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %queue_select.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 8
  %queue_msix_vector.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv2.i = trunc i32 %i.012.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %queue_select.i, i16 %4) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %queue_msix_vector.i, i16 -1) #7, !srcloc !77
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %5 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nr_vring.i, align 8
  %conv.i = zext i16 %6 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ifcvf_hw_disable.exit_crit_edge

for.body.i.ifcvf_hw_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ifcvf_hw_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ifcvf_hw_disable.exit:                            ; preds = %for.body.i.ifcvf_hw_disable.exit_crit_edge, %entry.ifcvf_hw_disable.exit_crit_edge
  %queue_msix_vector3.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 10
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %queue_msix_vector3.i) #7, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %config_cb.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 15
  %8 = ptrtoint ptr %config_cb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %config_cb.i, align 4
  %private.i = getelementptr inbounds %struct.ifcvf_hw, ptr %hw, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %private.i, align 4
  %10 = ptrtoint ptr %common_cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common_cfg.i, align 4
  %device_status.i.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %device_status.i.i, i8 0) #7, !srcloc !81
  %12 = ptrtoint ptr %common_cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common_cfg.i, align 4
  %device_status.i6.i = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %13, i32 0, i32 6
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %device_status.i6.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ifcvf_notify_queue(ptr nocapture noundef readonly %hw, i16 noundef zeroext %qid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %qid to i32
  %notify_addr = getelementptr %struct.ifcvf_hw, ptr %hw, i32 0, i32 12, i32 %idxprom, i32 6
  %0 = ptrtoint ptr %notify_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %2 = tail call i16 @llvm.bswap.i16(i16 %qid) #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %2) #7, !srcloc !77
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 109, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ifcvf_init_hw._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ifcvf_init_hw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 117, i32 4}
!10 = !{ptr @ifcvf_init_hw._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ifcvf_init_hw._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 128, i32 4}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug365, !13, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 138, i32 4}
!18 = !{ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug366, !17, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 143, i32 4}
!21 = !{ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug367, !20, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 147, i32 4}
!24 = !{ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug368, !23, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 157, i32 3}
!27 = !{ptr @ifcvf_init_hw._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ifcvf_init_hw._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 174, i32 2}
!31 = !{ptr @ifcvf_init_hw.__UNIQUE_ID_ddebug369, !30, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 238, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ifcvf_verify_min_features._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ifcvf_verify_min_features._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 260, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ifcvf_get_config_size._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @ifcvf_get_config_size._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 70, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @get_cap_addr.__UNIQUE_ID_ddebug363, !43, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 76, i32 3}
!48 = !{ptr @get_cap_addr.__UNIQUE_ID_ddebug364, !47, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 315, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ifcvf_config_features._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ifcvf_config_features._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 363, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ifcvf_hw_enable._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ifcvf_hw_enable._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/vdpa/ifcvf/ifcvf_base.c", i32 383, i32 4}
!61 = !{ptr @ifcvf_hw_enable._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ifcvf_hw_enable._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{i64 2148497076, i64 2148497081, i64 2148497094, i64 2148497138, i64 2148497172, i64 2148497193}
!74 = !{i64 4991253}
!75 = !{i64 2152531828}
!76 = !{i64 2152533245}
!77 = !{i64 4991053}
!78 = !{i64 4991871}
!79 = !{i64 2152531216}
!80 = !{i64 2152532821}
!81 = !{i64 4991476}
!82 = !{i64 2152533795}
!83 = !{i64 4991673}
!84 = !{i64 4992091}
!85 = !{i64 2152532440}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i8 0, i8 2}
