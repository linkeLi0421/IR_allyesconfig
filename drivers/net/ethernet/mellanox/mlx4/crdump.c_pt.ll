; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/crdump.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/crdump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devlink_region_ops = type { ptr, ptr, ptr, ptr }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
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
%union.anon.99 = type { ptr }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }

@mlx4_crdump_collect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"crdump: FW doesn't support health buffer access, skipping\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx4_crdump_collect\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/mellanox/mlx4/crdump.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect._entry_ptr = internal global ptr @mlx4_crdump_collect._entry, section ".printk_index", align 4
@mlx4_crdump_collect._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"crdump: devlink snapshot disabled, skipping\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect._entry_ptr.7 = internal global ptr @mlx4_crdump_collect._entry.5, section ".printk_index", align 4
@mlx4_crdump_collect._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 192, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"crdump: Failed to map pci cr region\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect._entry_ptr.11 = internal global ptr @mlx4_crdump_collect._entry.8, section ".printk_index", align 4
@mlx4_crdump_collect._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 199, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"crdump: devlink get snapshot id err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect._entry_ptr.14 = internal global ptr @mlx4_crdump_collect._entry.12, section ".printk_index", align 4
@region_cr_space_ops = internal constant { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.18, ptr @kvfree, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mlx4_crdump_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 236, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"crdump: create devlink region %s err %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx4_crdump_init\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx4_crdump_init._entry_ptr = internal global ptr @mlx4_crdump_init._entry, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cr-space\00", [23 x i8] zeroinitializer }, align 32
@region_fw_health_ops = internal constant { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.21, ptr @kvfree, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mlx4_crdump_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 247, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx4_crdump_init._entry_ptr.20 = internal global ptr @mlx4_crdump_init._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fw-health\00", [22 x i8] zeroinitializer }, align 32
@crdump_enbale_bit_set = internal global { i8, [31 x i8] } zeroinitializer, align 32
@mlx4_crdump_collect_crspace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 102, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"crdump: cr-space region is NULL\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx4_crdump_collect_crspace\00", [36 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_crspace._entry_ptr = internal global ptr @mlx4_crdump_collect_crspace._entry, section ".printk_index", align 4
@mlx4_crdump_collect_crspace._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 119, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"crdump: devlink create %s snapshot id %d err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_crspace._entry_ptr.26 = internal global ptr @mlx4_crdump_collect_crspace._entry.24, section ".printk_index", align 4
@mlx4_crdump_collect_crspace._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"crdump: added snapshot %d to devlink region %s\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_crspace._entry_ptr.29 = internal global ptr @mlx4_crdump_collect_crspace._entry.27, section ".printk_index", align 4
@mlx4_crdump_collect_crspace._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 125, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"crdump: Failed to allocate crspace buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_crspace._entry_ptr.32 = internal global ptr @mlx4_crdump_collect_crspace._entry.30, section ".printk_index", align 4
@mlx4_crdump_collect_fw_health._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 139, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"crdump: fw-health region is NULL\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx4_crdump_collect_fw_health\00", [34 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_fw_health._entry_ptr = internal global ptr @mlx4_crdump_collect_fw_health._entry, section ".printk_index", align 4
@mlx4_crdump_collect_fw_health._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.34, ptr @.str.2, i32 158, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_fw_health._entry_ptr.36 = internal global ptr @mlx4_crdump_collect_fw_health._entry.35, section ".printk_index", align 4
@mlx4_crdump_collect_fw_health._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.34, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_fw_health._entry_ptr.38 = internal global ptr @mlx4_crdump_collect_fw_health._entry.37, section ".printk_index", align 4
@mlx4_crdump_collect_fw_health._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.2, i32 164, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"crdump: Failed to allocate health buffer\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx4_crdump_collect_fw_health._entry_ptr.41 = internal global ptr @mlx4_crdump_collect_fw_health._entry.39, section ".printk_index", align 4
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 179, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 184, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 192, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 199, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"region_cr_space_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 47, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 234, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 44, i32 49 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"region_fw_health_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 52, i32 40 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 245, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 45, i32 50 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"crdump_enbale_bit_set\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 58, i32 13 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 102, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 118, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 121, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 125, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 139, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 157, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 160, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [47 x i8] c"../drivers/net/ethernet/mellanox/mlx4/crdump.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 164, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @mlx4_crdump_collect._entry, ptr @mlx4_crdump_collect._entry.12, ptr @mlx4_crdump_collect._entry.5, ptr @mlx4_crdump_collect._entry.8, ptr @mlx4_crdump_collect._entry_ptr, ptr @mlx4_crdump_collect._entry_ptr.11, ptr @mlx4_crdump_collect._entry_ptr.14, ptr @mlx4_crdump_collect._entry_ptr.7, ptr @mlx4_crdump_collect_crspace._entry, ptr @mlx4_crdump_collect_crspace._entry.24, ptr @mlx4_crdump_collect_crspace._entry.27, ptr @mlx4_crdump_collect_crspace._entry.30, ptr @mlx4_crdump_collect_crspace._entry_ptr, ptr @mlx4_crdump_collect_crspace._entry_ptr.26, ptr @mlx4_crdump_collect_crspace._entry_ptr.29, ptr @mlx4_crdump_collect_crspace._entry_ptr.32, ptr @mlx4_crdump_collect_fw_health._entry, ptr @mlx4_crdump_collect_fw_health._entry.35, ptr @mlx4_crdump_collect_fw_health._entry.37, ptr @mlx4_crdump_collect_fw_health._entry.39, ptr @mlx4_crdump_collect_fw_health._entry_ptr, ptr @mlx4_crdump_collect_fw_health._entry_ptr.36, ptr @mlx4_crdump_collect_fw_health._entry_ptr.38, ptr @mlx4_crdump_collect_fw_health._entry_ptr.41, ptr @mlx4_crdump_init._entry, ptr @mlx4_crdump_init._entry.19, ptr @mlx4_crdump_init._entry_ptr, ptr @mlx4_crdump_init._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @region_cr_space_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @region_fw_health_ops, ptr @.str.21, ptr @crdump_enbale_bit_set, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.40], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @region_cr_space_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @region_fw_health_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crdump_enbale_bit_set to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_crspace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_crspace._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_crspace._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_crspace._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_fw_health._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_fw_health._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_fw_health._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_crdump_collect_fw_health._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_crdump_collect(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @priv_to_devlink(ptr noundef %dev) #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id, align 4, !annotation !81
  %health_buffer_addrs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 98
  %5 = ptrtoint ptr %health_buffer_addrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %health_buffer_addrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %crdump2 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %crdump2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %crdump2, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.end16.cond.end_crit_edge, label %cond.false

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource, align 8
  %sub = add i32 %14, 1
  %add = sub i32 %sub, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end16.cond.end_crit_edge ]
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource, align 8
  %call25 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %cond) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end34

do.end30:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end34:                                         ; preds = %cond.end
  %call35 = call i32 @devlink_region_snapshot_id_get(ptr noundef %call1, ptr noundef nonnull %id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end44, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.13, i32 noundef %call35) #9
  call void @iounmap(ptr noundef nonnull %call25) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %add.ptr.i = getelementptr i8, ptr %call25, i32 999172
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  %.lobit.i = lshr exact i32 %28, 6
  %29 = trunc i32 %.lobit.i to i8
  store i8 %29, ptr @crdump_enbale_bit_set, align 1
  br i1 %tobool.not.i, label %if.end44.crdump_enable_crspace_access.exit_crit_edge, label %do.body.i

if.end44.crdump_enable_crspace_access.exit_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %crdump_enable_crspace_access.exit

do.body.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @arm_heavy_mb() #6
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %31 = and i32 %30, -65
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #6, !srcloc !87
  br label %crdump_enable_crspace_access.exit

crdump_enable_crspace_access.exit:                ; preds = %do.body.i, %if.end44.crdump_enable_crspace_access.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %health_buffer_addrs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %health_buffer_addrs, align 8
  %add.ptr13.i = getelementptr i8, ptr %call25, i32 %33
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 1) #6, !srcloc !87
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %region_crspace.i = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %37, i32 0, i32 14, i32 1
  %40 = ptrtoint ptr %region_crspace.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %region_crspace.i, align 4
  %tobool.not.i74 = icmp eq ptr %41, null
  br i1 %tobool.not.i74, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %crdump_enable_crspace_access.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.22) #9
  br label %mlx4_crdump_collect_crspace.exit

if.end.i:                                         ; preds = %crdump_enable_crspace_access.exit
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 47, i32 0, i32 1
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i = icmp eq i32 %43, 0
  br i1 %cmp.i, label %cond.end.thread.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.end.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 47
  %44 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %43, 1
  %add.i = sub i32 %sub.i, %45
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add.i, i32 noundef 3264, i32 noundef -1) #10
  %tobool12.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not.i, label %cond.end.i.do.end39.i_crit_edge, label %for.cond.preheader.i

cond.end.i.do.end39.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39.i

cond.end.thread.i:                                ; preds = %if.end.i
  %call.i70.i = call noalias ptr @kvmalloc_node(i32 noundef 0, i32 noundef 3264, i32 noundef -1) #10
  %tobool12.not71.i = icmp eq ptr %call.i70.i, null
  br i1 %tobool12.not71.i, label %cond.end.thread.i.do.end39.i_crit_edge, label %cond.end.thread.i.for.end.i_crit_edge

cond.end.thread.i.for.end.i_crit_edge:            ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

cond.end.thread.i.do.end39.i_crit_edge:           ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39.i

for.cond.preheader.i:                             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %45)
  %cmp1467.not.i = icmp eq i32 %sub.i, %45
  br i1 %cmp1467.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %offset.068.i = phi i32 [ %add18.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr.i75 = getelementptr i8, ptr %call25, i32 %offset.068.i
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #6, !srcloc !83
  %47 = call i32 @llvm.bswap.i32(i32 %46) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %add.ptr17.i = getelementptr i8, ptr %call.i.i, i32 %offset.068.i
  %48 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %add.ptr17.i, align 4
  %add18.i = add i32 %offset.068.i, 4
  %cmp14.i = icmp ult i32 %add18.i, %add.i
  br i1 %cmp14.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge, %cond.end.thread.i.for.end.i_crit_edge
  %call.i7377.i = phi ptr [ %call.i.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %call.i70.i, %cond.end.thread.i.for.end.i_crit_edge ], [ %call.i.i, %for.body.i.for.end.i_crit_edge ]
  %49 = ptrtoint ptr %region_crspace.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %region_crspace.i, align 4
  %call20.i = call i32 @devlink_region_snapshot_create(ptr noundef %50, ptr noundef nonnull %call.i7377.i, i32 noundef %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.end31.i, label %if.then22.i

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i7377.i) #6
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev28.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18, i32 noundef %35, i32 noundef %call20.i) #9
  br label %mlx4_crdump_collect_crspace.exit

do.end31.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34.i, ptr noundef nonnull @.str.28, i32 noundef %35, ptr noundef nonnull @.str.18) #9
  br label %mlx4_crdump_collect_crspace.exit

do.end39.i:                                       ; preds = %cond.end.thread.i.do.end39.i_crit_edge, %cond.end.i.do.end39.i_crit_edge
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %dev42.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42.i, ptr noundef nonnull @.str.31) #9
  br label %mlx4_crdump_collect_crspace.exit

mlx4_crdump_collect_crspace.exit:                 ; preds = %do.end39.i, %do.end31.i, %if.then22.i, %do.end.i
  %63 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id, align 4
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  %region_fw_health.i = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %66, i32 0, i32 14, i32 2
  %67 = ptrtoint ptr %region_fw_health.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %region_fw_health.i, align 4
  %tobool.not.i76 = icmp eq ptr %68, null
  br i1 %tobool.not.i76, label %do.end.i77, label %if.end.i79

do.end.i77:                                       ; preds = %mlx4_crdump_collect_crspace.exit
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.33) #9
  br label %mlx4_crdump_collect_fw_health.exit

if.end.i79:                                       ; preds = %mlx4_crdump_collect_crspace.exit
  %call.i.i78 = call noalias ptr @kvmalloc_node(i32 noundef 64, i32 noundef 3264, i32 noundef -1) #10
  %tobool4.not.i = icmp eq ptr %call.i.i78, null
  br i1 %tobool4.not.i, label %do.end30.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i79
  %71 = ptrtoint ptr %health_buffer_addrs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %health_buffer_addrs, align 8
  %add.ptr.i81 = getelementptr i8, ptr %call25, i32 %72
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #6, !srcloc !83
  %74 = call i32 @llvm.bswap.i32(i32 %73) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %75 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %call.i.i78, align 4
  %add.ptr6.1.i = getelementptr i8, ptr %add.ptr.i81, i32 4
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.1.i) #6, !srcloc !83
  %77 = call i32 @llvm.bswap.i32(i32 %76) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.1.i = getelementptr i8, ptr %call.i.i78, i32 4
  %78 = ptrtoint ptr %add.ptr9.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %add.ptr9.1.i, align 4
  %add.ptr6.2.i = getelementptr i8, ptr %add.ptr.i81, i32 8
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.2.i) #6, !srcloc !83
  %80 = call i32 @llvm.bswap.i32(i32 %79) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.2.i = getelementptr i8, ptr %call.i.i78, i32 8
  %81 = ptrtoint ptr %add.ptr9.2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %add.ptr9.2.i, align 4
  %add.ptr6.3.i = getelementptr i8, ptr %add.ptr.i81, i32 12
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.3.i) #6, !srcloc !83
  %83 = call i32 @llvm.bswap.i32(i32 %82) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.3.i = getelementptr i8, ptr %call.i.i78, i32 12
  %84 = ptrtoint ptr %add.ptr9.3.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %add.ptr9.3.i, align 4
  %add.ptr6.4.i = getelementptr i8, ptr %add.ptr.i81, i32 16
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.4.i) #6, !srcloc !83
  %86 = call i32 @llvm.bswap.i32(i32 %85) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.4.i = getelementptr i8, ptr %call.i.i78, i32 16
  %87 = ptrtoint ptr %add.ptr9.4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %add.ptr9.4.i, align 4
  %add.ptr6.5.i = getelementptr i8, ptr %add.ptr.i81, i32 20
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.5.i) #6, !srcloc !83
  %89 = call i32 @llvm.bswap.i32(i32 %88) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.5.i = getelementptr i8, ptr %call.i.i78, i32 20
  %90 = ptrtoint ptr %add.ptr9.5.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %add.ptr9.5.i, align 4
  %add.ptr6.6.i = getelementptr i8, ptr %add.ptr.i81, i32 24
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.6.i) #6, !srcloc !83
  %92 = call i32 @llvm.bswap.i32(i32 %91) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.6.i = getelementptr i8, ptr %call.i.i78, i32 24
  %93 = ptrtoint ptr %add.ptr9.6.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %add.ptr9.6.i, align 4
  %add.ptr6.7.i = getelementptr i8, ptr %add.ptr.i81, i32 28
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.7.i) #6, !srcloc !83
  %95 = call i32 @llvm.bswap.i32(i32 %94) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.7.i = getelementptr i8, ptr %call.i.i78, i32 28
  %96 = ptrtoint ptr %add.ptr9.7.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %add.ptr9.7.i, align 4
  %add.ptr6.8.i = getelementptr i8, ptr %add.ptr.i81, i32 32
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.8.i) #6, !srcloc !83
  %98 = call i32 @llvm.bswap.i32(i32 %97) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.8.i = getelementptr i8, ptr %call.i.i78, i32 32
  %99 = ptrtoint ptr %add.ptr9.8.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %add.ptr9.8.i, align 4
  %add.ptr6.9.i = getelementptr i8, ptr %add.ptr.i81, i32 36
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.9.i) #6, !srcloc !83
  %101 = call i32 @llvm.bswap.i32(i32 %100) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.9.i = getelementptr i8, ptr %call.i.i78, i32 36
  %102 = ptrtoint ptr %add.ptr9.9.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %add.ptr9.9.i, align 4
  %add.ptr6.10.i = getelementptr i8, ptr %add.ptr.i81, i32 40
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.10.i) #6, !srcloc !83
  %104 = call i32 @llvm.bswap.i32(i32 %103) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.10.i = getelementptr i8, ptr %call.i.i78, i32 40
  %105 = ptrtoint ptr %add.ptr9.10.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %add.ptr9.10.i, align 4
  %add.ptr6.11.i = getelementptr i8, ptr %add.ptr.i81, i32 44
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.11.i) #6, !srcloc !83
  %107 = call i32 @llvm.bswap.i32(i32 %106) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.11.i = getelementptr i8, ptr %call.i.i78, i32 44
  %108 = ptrtoint ptr %add.ptr9.11.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %add.ptr9.11.i, align 4
  %add.ptr6.12.i = getelementptr i8, ptr %add.ptr.i81, i32 48
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.12.i) #6, !srcloc !83
  %110 = call i32 @llvm.bswap.i32(i32 %109) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.12.i = getelementptr i8, ptr %call.i.i78, i32 48
  %111 = ptrtoint ptr %add.ptr9.12.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %add.ptr9.12.i, align 4
  %add.ptr6.13.i = getelementptr i8, ptr %add.ptr.i81, i32 52
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.13.i) #6, !srcloc !83
  %113 = call i32 @llvm.bswap.i32(i32 %112) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.13.i = getelementptr i8, ptr %call.i.i78, i32 52
  %114 = ptrtoint ptr %add.ptr9.13.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %add.ptr9.13.i, align 4
  %add.ptr6.14.i = getelementptr i8, ptr %add.ptr.i81, i32 56
  %115 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.14.i) #6, !srcloc !83
  %116 = call i32 @llvm.bswap.i32(i32 %115) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.14.i = getelementptr i8, ptr %call.i.i78, i32 56
  %117 = ptrtoint ptr %add.ptr9.14.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %add.ptr9.14.i, align 4
  %add.ptr6.15.i = getelementptr i8, ptr %add.ptr.i81, i32 60
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.15.i) #6, !srcloc !83
  %119 = call i32 @llvm.bswap.i32(i32 %118) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %add.ptr9.15.i = getelementptr i8, ptr %call.i.i78, i32 60
  %120 = ptrtoint ptr %add.ptr9.15.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %add.ptr9.15.i, align 4
  %121 = ptrtoint ptr %region_fw_health.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %region_fw_health.i, align 4
  %call11.i = call i32 @devlink_region_snapshot_create(ptr noundef %122, ptr noundef nonnull %call.i.i78, i32 noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i82 = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i82, label %do.end22.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i.i78) #6
  %123 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 4
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %126, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef %64, i32 noundef %call11.i) #9
  br label %mlx4_crdump_collect_fw_health.exit

do.end22.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25.i, ptr noundef nonnull @.str.28, i32 noundef %64, ptr noundef nonnull @.str.21) #9
  br label %mlx4_crdump_collect_fw_health.exit

do.end30.i:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev, align 8
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.40) #9
  br label %mlx4_crdump_collect_fw_health.exit

mlx4_crdump_collect_fw_health.exit:               ; preds = %do.end30.i, %do.end22.i, %if.then13.i, %do.end.i77
  %135 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %id, align 4
  call void @devlink_region_snapshot_id_put(ptr noundef %call1, i32 noundef %136) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %health_buffer_addrs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %health_buffer_addrs, align 8
  %add.ptr.i84 = getelementptr i8, ptr %call25, i32 %138
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i84, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #6, !srcloc !87
  %139 = load i8, ptr @crdump_enbale_bit_set, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i85 = icmp eq i8 %139, 0
  br i1 %tobool.not.i85, label %mlx4_crdump_collect_fw_health.exit.crdump_disable_crspace_access.exit_crit_edge, label %do.body2.i

mlx4_crdump_collect_fw_health.exit.crdump_disable_crspace_access.exit_crit_edge: ; preds = %mlx4_crdump_collect_fw_health.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %crdump_disable_crspace_access.exit

do.body2.i:                                       ; preds = %mlx4_crdump_collect_fw_health.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @arm_heavy_mb() #6
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %141 = or i32 %140, 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %141) #6, !srcloc !87
  br label %crdump_disable_crspace_access.exit

crdump_disable_crspace_access.exit:               ; preds = %do.body2.i, %mlx4_crdump_collect_fw_health.exit.crdump_disable_crspace_access.exit_crit_edge
  call void @iounmap(ptr noundef nonnull %call25) #6
  br label %cleanup

cleanup:                                          ; preds = %crdump_disable_crspace_access.exit, %do.end40, %do.end30, %do.end12, %do.end
  %retval.0 = phi i32 [ %call35, %do.end40 ], [ 0, %crdump_disable_crspace_access.exit ], [ -19, %do.end30 ], [ 0, %do.end12 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_region_snapshot_id_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_region_snapshot_id_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_crdump_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @priv_to_devlink(ptr noundef %dev) #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %crdump2 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %crdump2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %crdump2, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %sub = add i32 %6, 1
  %add = sub i32 %sub, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  %call10 = tail call ptr @devlink_region_create(ptr noundef %call1, ptr noundef nonnull @region_cr_space_ops, i32 noundef 8, i64 noundef %conv) #6
  %region_crspace = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %region_crspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %region_crspace, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, i32 noundef %14) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end.if.end_crit_edge
  %call18 = tail call ptr @devlink_region_create(ptr noundef %call1, ptr noundef nonnull @region_fw_health_ops, i32 noundef 8, i64 noundef 64) #6
  %region_fw_health = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 14, i32 2
  %15 = ptrtoint ptr %region_fw_health to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18, ptr %region_fw_health, align 4
  %cmp.i44 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %do.end24, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.21, i32 noundef %20) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %if.end.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_crdump_end(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %region_fw_health = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %region_fw_health to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region_fw_health, align 4
  tail call void @devlink_region_destroy(ptr noundef %3) #6
  %region_crspace = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %region_crspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region_crspace, align 4
  tail call void @devlink_region_destroy(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_region_snapshot_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !29, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 179, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_crdump_collect._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_crdump_collect._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 184, i32 3}
!10 = !{ptr @mlx4_crdump_collect._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx4_crdump_collect._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 192, i32 3}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx4_crdump_collect._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx4_crdump_collect._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 199, i32 3}
!19 = !{ptr @mlx4_crdump_collect._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlx4_crdump_collect._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 234, i32 3}
!23 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.17, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx4_crdump_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx4_crdump_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 44, i32 49}
!29 = !{ptr @mlx4_crdump_init._entry.19, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 245, i32 3}
!31 = !{ptr @mlx4_crdump_init._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 45, i32 50}
!34 = !{ptr @crdump_enbale_bit_set, !35, !"crdump_enbale_bit_set", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 58, i32 13}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 102, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mlx4_crdump_collect_crspace._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mlx4_crdump_collect_crspace._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 118, i32 4}
!43 = !{ptr @mlx4_crdump_collect_crspace._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mlx4_crdump_collect_crspace._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 121, i32 4}
!47 = !{ptr @mlx4_crdump_collect_crspace._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx4_crdump_collect_crspace._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 125, i32 3}
!51 = !{ptr @mlx4_crdump_collect_crspace._entry.30, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mlx4_crdump_collect_crspace._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 139, i32 3}
!55 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mlx4_crdump_collect_fw_health._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mlx4_crdump_collect_fw_health._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mlx4_crdump_collect_fw_health._entry.35, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 157, i32 4}
!60 = !{ptr @mlx4_crdump_collect_fw_health._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mlx4_crdump_collect_fw_health._entry.37, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 160, i32 4}
!63 = !{ptr @mlx4_crdump_collect_fw_health._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 164, i32 3}
!66 = !{ptr @mlx4_crdump_collect_fw_health._entry.39, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlx4_crdump_collect_fw_health._entry_ptr.41, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @region_cr_space_ops, !69, !"region_cr_space_ops", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 47, i32 40}
!70 = !{ptr @region_fw_health_ops, !71, !"region_fw_health_ops", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx4/crdump.c", i32 52, i32 40}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i8 0, i8 2}
!83 = !{i64 4417556}
!84 = !{i64 2156595663}
!85 = !{i64 2156597026}
!86 = !{i64 2156598063}
!87 = !{i64 4417138}
!88 = !{i64 2156598476}
!89 = !{i64 2156604328}
!90 = !{i64 2156612939}
!91 = !{i64 2156599033}
!92 = !{i64 2156600429}
!93 = !{i64 2156601462}
