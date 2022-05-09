; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/profile.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/profile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.mlx4_resource = type { i64, i64, i32, i32, i32 }
%struct.mlx4_profile = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_dev_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.mlx4_rate_limit_caps, i32, [3 x %struct.mlx4_port_cap], [3 x i8], i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_port_cap = type { i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i64, i16, i32, i32, i16, i64, i8 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
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
%struct.mlx4_init_hca_param = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i16, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i64, i16, i16, i8, i8 }
%struct.mlx4_priv = type { %struct.mlx4_dev, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, %struct.list_head, %struct.mutex, %struct.mlx4_fw, %struct.mlx4_cmd, %struct.mlx4_mfunc, %struct.mlx4_bitmap, %struct.mlx4_bitmap, %struct.mlx4_uar_table, %struct.mlx4_mr_table, %struct.mlx4_cq_table, %struct.mlx4_eq_table, %struct.mlx4_srq_table, %struct.mlx4_qp_table, %struct.mlx4_mcg_table, %struct.mlx4_bitmap, [2 x i32], %struct.mlx4_catas_err, ptr, %struct.mlx4_uar, ptr, [3 x %struct.mlx4_port_info], %struct.mlx4_sense, %struct.mutex, %struct.mlx4_msix_ctl, ptr, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, [128 x [2 x [128 x i8]]], %struct.mlx4_port_map, %struct.mutex, [128 x i64], %struct.atomic_t, %struct.work_struct }
%struct.mlx4_fw = type { i64, i64, i64, i64, ptr, ptr, i32, i16, i8, i8, i8, i8 }
%struct.mlx4_cmd = type { ptr, ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, %struct.rw_semaphore, i32, %struct.spinlock, i32, ptr, i16, i8, i8, i8, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_mfunc = type { ptr, ptr, i32, %struct.mlx4_mfunc_master_ctx }
%struct.mlx4_mfunc_master_ctx = type { ptr, ptr, ptr, [3 x %struct.mlx4_master_qp0_state], [3 x i32], [3 x i16], [3 x i16], i8, i8, [3 x i32], %struct.mlx4_resource_tracker, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.spinlock, [4 x i32], %struct.mlx4_eqe, %struct.mlx4_slave_event_eq, [128 x %struct.mutex], [3 x %struct.mlx4_qos_manager], i32 }
%struct.mlx4_master_qp0_state = type { i32, i32, i32 }
%struct.mlx4_resource_tracker = type { %struct.spinlock, [12 x %struct.rb_root], ptr, [12 x %struct.resource_allocator] }
%struct.rb_root = type { ptr }
%struct.resource_allocator = type { %struct.spinlock, %union.anon.123, %union.anon.124, ptr, ptr, ptr }
%union.anon.123 = type { [2 x i32] }
%union.anon.124 = type { [2 x i32] }
%struct.mlx4_eqe = type { i8, i8, i8, i8, %union.anon.125, i8, [2 x i8], i8 }
%union.anon.125 = type { [6 x i32] }
%struct.mlx4_slave_event_eq = type { i32, i32, i32, %struct.spinlock, [128 x %struct.mlx4_eqe] }
%struct.mlx4_qos_manager = type { i32, [1 x i32] }
%struct.mlx4_uar_table = type { %struct.mlx4_bitmap }
%struct.mlx4_mr_table = type { %struct.mlx4_bitmap, %struct.mlx4_buddy, i64, i64, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.mlx4_icm_table = type { i64, i32, i32, i32, i32, i32, %struct.mutex, ptr }
%struct.mlx4_cq_table = type { %struct.mlx4_bitmap, %struct.spinlock, %struct.xarray, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_eq_table = type { %struct.mlx4_bitmap, ptr, ptr, ptr, i32, ptr, %struct.mlx4_icm_table, %struct.mlx4_icm_table, i32, i8 }
%struct.mlx4_srq_table = type { %struct.mlx4_bitmap, %struct.spinlock, %struct.xarray, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_qp_table = type { ptr, ptr, [3 x i32], i32, i32, %struct.spinlock, %struct.mlx4_icm_table, %struct.mlx4_icm_table, %struct.mlx4_icm_table, %struct.mlx4_icm_table, %struct.mlx4_icm_table }
%struct.mlx4_mcg_table = type { %struct.mutex, %struct.mlx4_bitmap, %struct.mlx4_icm_table }
%struct.mlx4_bitmap = type { i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mlx4_catas_err = type { ptr, %struct.timer_list, %struct.list_head }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_port_info = type { ptr, i32, [16 x i8], %struct.device_attribute, i32, [16 x i8], %struct.device_attribute, %struct.mlx4_mac_table, %struct.mlx4_vlan_table, %struct.mlx4_roce_gid_table, i32, ptr, %struct.devlink_port }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx4_mac_table = type { [128 x i64], [128 x i32], [128 x i8], %struct.mutex, i32, i32 }
%struct.mlx4_vlan_table = type { [128 x i32], [128 x i32], [128 x i32], %struct.mutex, i32, i32 }
%struct.mlx4_roce_gid_table = type { [128 x %struct.mlx4_roce_gid_entry], %struct.mutex }
%struct.mlx4_roce_gid_entry = type { [16 x i8] }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.113 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.113 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.mlx4_sense = type { ptr, [3 x i8], [3 x i8], %struct.delayed_work }
%struct.mlx4_msix_ctl = type { [4 x i32], %struct.mutex }
%struct.mlx4_port_map = type { i8, i8 }

@log_mtts_per_seg = external dso_local local_unnamed_addr global i32, align 4
@mlx4_make_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Profile requires 0x%llx bytes; won't fit in 0x%llx bytes of context memory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx4_make_profile\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mellanox/mlx4/profile.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_make_profile._entry_ptr = internal global ptr @mlx4_make_profile._entry, section ".printk_index", align 4
@mlx4_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mlx4_make_profile._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 175, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"  profile[%2d] (%6s): 2^%02d entries @ 0x%10llx, size 0x%10llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mlx4_make_profile._entry_ptr.8 = internal global ptr @mlx4_make_profile._entry.5, section ".printk_index", align 4
@res_name = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [52 x i8] zeroinitializer }, align 32
@mlx4_make_profile._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HCA context memory: reserving %d KB\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx4_make_profile._entry_ptr.11 = internal global ptr @mlx4_make_profile._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"QP\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RDMARC\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ALTC\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXC\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SRQ\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CQ\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EQ\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMPT\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CMPT\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MTT\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCG\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 163, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 171, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"res_name\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 55, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 178, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 56, i32 19 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 57, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 58, i32 21 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 59, i32 21 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 60, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 61, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 62, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 63, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 64, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 65, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlx4/profile.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 66, i32 20 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @mlx4_make_profile._entry, ptr @mlx4_make_profile._entry.5, ptr @mlx4_make_profile._entry.9, ptr @mlx4_make_profile._entry_ptr, ptr @mlx4_make_profile._entry_ptr.11, ptr @mlx4_make_profile._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @res_name, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_make_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_make_profile._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_name to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_make_profile._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @mlx4_make_profile(ptr noundef %dev, ptr nocapture noundef %request, ptr nocapture noundef readonly %dev_cap, ptr noundef writeonly %init_hca) local_unnamed_addr #0 align 64 {
entry:
  %si = alloca %struct.sysinfo, align 4
  %__tmp = alloca %struct.mlx4_resource, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %si) #6
  %0 = call ptr @memset(ptr %si, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 352) #9
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @si_meminfo(ptr noundef nonnull %si) #6
  %num_mtt = getelementptr inbounds %struct.mlx4_profile, ptr %request, i32 0, i32 6
  %2 = ptrtoint ptr %num_mtt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_mtt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @log_mtts_per_seg to i32))
  %4 = load i32, ptr @log_mtts_per_seg, align 4
  %shl = lshr i32 -2147483648, %4
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %si, i32 0, i32 2
  %5 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %totalram, align 4
  %shl2 = shl i32 %6, 1
  %shr = lshr i32 %shl2, %4
  %7 = call i32 @llvm.umin.i32(i32 %shl, i32 %shr)
  %8 = call i32 @llvm.umax.i32(i32 %3, i32 %7)
  %sub.i1021 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1021)
  %tobool.not.i.i.i = icmp eq i32 %sub.i1021, 0
  %9 = call i32 @llvm.ctlz.i32(i32 %sub.i1021, i1 true) #6, !range !50
  %sub.i.i.i = sub nuw nsw i32 32, %9
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %10 = ptrtoint ptr %num_mtt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shl.i, ptr %num_mtt, align 4
  %qpc_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 42
  %11 = ptrtoint ptr %qpc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qpc_entry_sz, align 8
  %conv172 = sext i32 %12 to i64
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv172, ptr %call7.i.i.i, align 8
  %rdmarc_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 43
  %14 = ptrtoint ptr %rdmarc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rdmarc_entry_sz, align 4
  %conv173 = sext i32 %15 to i64
  %arrayidx174 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 1
  %16 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv173, ptr %arrayidx174, align 8
  %altc_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 44
  %17 = ptrtoint ptr %altc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %altc_entry_sz, align 8
  %conv176 = sext i32 %18 to i64
  %arrayidx177 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 2
  %19 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv176, ptr %arrayidx177, align 8
  %aux_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 45
  %20 = ptrtoint ptr %aux_entry_sz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aux_entry_sz, align 4
  %conv179 = sext i32 %21 to i64
  %arrayidx180 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 3
  %22 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv179, ptr %arrayidx180, align 8
  %srq_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 46
  %23 = ptrtoint ptr %srq_entry_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %srq_entry_sz, align 8
  %conv182 = sext i32 %24 to i64
  %arrayidx183 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 4
  %25 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv182, ptr %arrayidx183, align 8
  %cqc_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 47
  %26 = ptrtoint ptr %cqc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cqc_entry_sz, align 4
  %conv185 = sext i32 %27 to i64
  %arrayidx186 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 5
  %28 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv185, ptr %arrayidx186, align 8
  %eqc_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 48
  %29 = ptrtoint ptr %eqc_entry_sz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %eqc_entry_sz, align 8
  %conv188 = sext i32 %30 to i64
  %arrayidx189 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 6
  %31 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv188, ptr %arrayidx189, align 8
  %dmpt_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 49
  %32 = ptrtoint ptr %dmpt_entry_sz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dmpt_entry_sz, align 4
  %conv191 = sext i32 %33 to i64
  %arrayidx192 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 7
  %34 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv191, ptr %arrayidx192, align 8
  %cmpt_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 50
  %35 = ptrtoint ptr %cmpt_entry_sz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmpt_entry_sz, align 8
  %conv194 = sext i32 %36 to i64
  %arrayidx195 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 8
  %37 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv194, ptr %arrayidx195, align 8
  %mtt_entry_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 51
  %38 = ptrtoint ptr %mtt_entry_sz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mtt_entry_sz, align 4
  %conv197 = sext i32 %39 to i64
  %arrayidx198 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 9
  %40 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv197, ptr %arrayidx198, align 8
  %call200 = call i32 @mlx4_get_mgm_entry_size(ptr noundef %dev) #6
  %conv201 = sext i32 %call200 to i64
  %arrayidx202 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 10
  %41 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv201, ptr %arrayidx202, align 8
  %42 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %request, align 4
  %num = getelementptr inbounds %struct.mlx4_resource, ptr %call7.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %num, align 4
  %rdmarc_per_qp = getelementptr inbounds %struct.mlx4_profile, ptr %request, i32 0, i32 1
  %45 = ptrtoint ptr %rdmarc_per_qp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rdmarc_per_qp, align 4
  %mul = mul i32 %46, %43
  %num207 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 1, i32 3
  %47 = ptrtoint ptr %num207 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul, ptr %num207, align 4
  %num210 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 2, i32 3
  %48 = ptrtoint ptr %num210 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %num210, align 4
  %num213 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 3, i32 3
  %49 = ptrtoint ptr %num213 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %43, ptr %num213, align 4
  %num_srq = getelementptr inbounds %struct.mlx4_profile, ptr %request, i32 0, i32 2
  %50 = ptrtoint ptr %num_srq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_srq, align 4
  %num215 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 4, i32 3
  %52 = ptrtoint ptr %num215 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %num215, align 4
  %num_cq = getelementptr inbounds %struct.mlx4_profile, ptr %request, i32 0, i32 3
  %53 = ptrtoint ptr %num_cq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_cq, align 4
  %num217 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 5, i32 3
  %55 = ptrtoint ptr %num217 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %num217, align 4
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %57, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool219.not = icmp eq i32 %and.i, 0
  br i1 %tobool219.not, label %cond.false221, label %cond.true220

cond.true220:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %num_phys_eqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %num_phys_eqs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_phys_eqs, align 8
  br label %cond.end229

cond.false221:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_eqs = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 11
  %60 = ptrtoint ptr %max_eqs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_eqs, align 4
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 128)
  br label %cond.end229

cond.end229:                                      ; preds = %cond.false221, %cond.true220
  %cond230 = phi i32 [ %59, %cond.true220 ], [ %62, %cond.false221 ]
  %num232 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 6, i32 3
  %63 = ptrtoint ptr %num232 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond230, ptr %num232, align 4
  %num_mpt = getelementptr inbounds %struct.mlx4_profile, ptr %request, i32 0, i32 5
  %64 = ptrtoint ptr %num_mpt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_mpt, align 4
  %num234 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 7, i32 3
  %66 = ptrtoint ptr %num234 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %num234, align 4
  %num236 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 8, i32 3
  %67 = ptrtoint ptr %num236 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 67108864, ptr %num236, align 4
  %68 = ptrtoint ptr %num_mtt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_mtt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @log_mtts_per_seg to i32))
  %70 = load i32, ptr @log_mtts_per_seg, align 4
  %mul239 = shl i32 %69, %70
  %num241 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 9, i32 3
  %71 = ptrtoint ptr %num241 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul239, ptr %num241, align 4
  %num_mcg = getelementptr inbounds %struct.mlx4_profile, ptr %request, i32 0, i32 4
  %72 = ptrtoint ptr %num_mcg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_mcg, align 4
  %num243 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 10, i32 3
  %74 = ptrtoint ptr %num243 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %num243, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end229
  %i.01047 = phi i32 [ 0, %cond.end229 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx246 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.01047
  %type = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.01047, i32 2
  %75 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %i.01047, ptr %type, align 8
  %num248 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.01047, i32 3
  %76 = ptrtoint ptr %num248 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num248, align 4
  %sub.i1025 = add i32 %77, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1025)
  %tobool.not.i.i.i1026 = icmp eq i32 %sub.i1025, 0
  %78 = call i32 @llvm.ctlz.i32(i32 %sub.i1025, i1 true) #6, !range !50
  %sub.i.i.i1027 = sub nuw nsw i32 32, %78
  %sub.i.i.op.i1028 = shl nuw i32 1, %sub.i.i.i1027
  %shl.i1029 = select i1 %tobool.not.i.i.i1026, i32 1, i32 %sub.i.i.op.i1028
  %79 = ptrtoint ptr %num248 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %shl.i1029, ptr %num248, align 4
  %80 = call i32 @llvm.ctlz.i32(i32 %shl.i1029, i1 true) #6, !range !50
  %sub.i.op.i1030 = xor i32 %80, 31
  %log_num = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.01047, i32 4
  %81 = ptrtoint ptr %log_num to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i.op.i1030, ptr %log_num, align 8
  %conv319 = zext i32 %shl.i1029 to i64
  %82 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx246, align 8
  %mul322 = mul i64 %83, %conv319
  %84 = call i64 @llvm.umax.i64(i64 %mul322, i64 4096)
  %85 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %arrayidx246, align 8
  %inc = add nuw nsw i32 %i.01047, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.body.for.cond338.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond338.preheader_crit_edge:         ; preds = %for.body
  br label %for.cond338.preheader

for.cond338.preheader:                            ; preds = %for.inc360.for.cond338.preheader_crit_edge, %for.body.for.cond338.preheader_crit_edge
  %i.11050 = phi i32 [ %dec, %for.inc360.for.cond338.preheader_crit_edge ], [ 11, %for.body.for.cond338.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.11050)
  %cmp3391048 = icmp ugt i32 %i.11050, 1
  br i1 %cmp3391048, label %for.cond338.preheader.for.body341_crit_edge, label %for.cond338.preheader.for.cond362.preheader_crit_edge

for.cond338.preheader.for.cond362.preheader_crit_edge: ; preds = %for.cond338.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond362.preheader

for.cond338.preheader.for.body341_crit_edge:      ; preds = %for.cond338.preheader
  br label %for.body341

for.cond362.preheader:                            ; preds = %for.inc360.for.cond362.preheader_crit_edge, %for.cond338.preheader.for.cond362.preheader_crit_edge
  %max_icm_sz = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 55
  br label %for.body365

for.body341:                                      ; preds = %for.inc357.for.body341_crit_edge, %for.cond338.preheader.for.body341_crit_edge
  %j.01049 = phi i32 [ %inc358, %for.inc357.for.body341_crit_edge ], [ 1, %for.cond338.preheader.for.body341_crit_edge ]
  %arrayidx342 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %j.01049
  %86 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx342, align 8
  %sub344 = add nsw i32 %j.01049, -1
  %arrayidx345 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %sub344
  %88 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx345, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %89)
  %cmp347 = icmp ugt i64 %87, %89
  br i1 %cmp347, label %do.body, label %for.body341.for.inc357_crit_edge

for.body341.for.inc357_crit_edge:                 ; preds = %for.body341
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc357

do.body:                                          ; preds = %for.body341
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__tmp)
  %90 = call ptr @memcpy(ptr %__tmp, ptr %arrayidx342, i32 32)
  %91 = call ptr @memcpy(ptr %arrayidx342, ptr %arrayidx345, i32 32)
  %92 = call ptr @memcpy(ptr %arrayidx345, ptr %__tmp, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__tmp)
  br label %for.inc357

for.inc357:                                       ; preds = %do.body, %for.body341.for.inc357_crit_edge
  %inc358 = add nuw nsw i32 %j.01049, 1
  %exitcond1059.not = icmp eq i32 %inc358, %i.11050
  br i1 %exitcond1059.not, label %for.inc360, label %for.inc357.for.body341_crit_edge

for.inc357.for.body341_crit_edge:                 ; preds = %for.inc357
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body341

for.inc360:                                       ; preds = %for.inc357
  %dec = add nsw i32 %i.11050, -1
  br i1 %cmp3391048, label %for.inc360.for.cond338.preheader_crit_edge, label %for.inc360.for.cond362.preheader_crit_edge

for.inc360.for.cond362.preheader_crit_edge:       ; preds = %for.inc360
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond362.preheader

for.inc360.for.cond338.preheader_crit_edge:       ; preds = %for.inc360
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond338.preheader

for.body365:                                      ; preds = %for.inc410.for.body365_crit_edge, %for.cond362.preheader
  %total_size.01054 = phi i64 [ 0, %for.cond362.preheader ], [ %total_size.1, %for.inc410.for.body365_crit_edge ]
  %i.21051 = phi i32 [ 0, %for.cond362.preheader ], [ %inc411, %for.inc410.for.body365_crit_edge ]
  %arrayidx366 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.21051
  %93 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx366, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %tobool368.not = icmp eq i64 %94, 0
  br i1 %tobool368.not, label %for.body365.if.end374_crit_edge, label %if.then369

for.body365.if.end374_crit_edge:                  ; preds = %for.body365
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end374

if.then369:                                       ; preds = %for.body365
  call void @__sanitizer_cov_trace_pc() #8
  %start = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.21051, i32 1
  %95 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %total_size.01054, ptr %start, align 8
  %add373 = add i64 %94, %total_size.01054
  br label %if.end374

if.end374:                                        ; preds = %if.then369, %for.body365.if.end374_crit_edge
  %total_size.1 = phi i64 [ %add373, %if.then369 ], [ %total_size.01054, %for.body365.if.end374_crit_edge ]
  %96 = ptrtoint ptr %max_icm_sz to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %max_icm_sz, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %total_size.1, i64 %97)
  %cmp375 = icmp ugt i64 %total_size.1, %97
  br i1 %cmp375, label %do.end380, label %if.end383

do.end380:                                        ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %dev381 = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev381, ptr noundef nonnull @.str, i64 noundef %total_size.1, i64 noundef %97) #10
  br label %cleanup.sink.split

if.end383:                                        ; preds = %if.end374
  %102 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx366, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %103)
  %tobool386.not = icmp eq i64 %103, 0
  br i1 %tobool386.not, label %if.end383.for.inc410_crit_edge, label %do.body388

if.end383.for.inc410_crit_edge:                   ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc410

do.body388:                                       ; preds = %if.end383
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_debug_level to i32))
  %104 = load i32, ptr @mlx4_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool389.not = icmp eq i32 %104, 0
  br i1 %tobool389.not, label %do.body388.for.inc410_crit_edge, label %do.end393

do.body388.for.inc410_crit_edge:                  ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc410

do.end393:                                        ; preds = %do.body388
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %dev396 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %type398 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.21051, i32 2
  %109 = ptrtoint ptr %type398 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %type398, align 8
  %arrayidx399 = getelementptr [11 x ptr], ptr @res_name, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx399 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx399, align 4
  %log_num401 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.21051, i32 4
  %113 = ptrtoint ptr %log_num401 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %log_num401, align 8
  %start403 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.21051, i32 1
  %115 = ptrtoint ptr %start403 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %start403, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev396, ptr noundef nonnull @.str.6, i32 noundef %i.21051, ptr noundef %112, i32 noundef %114, i64 noundef %116, i64 noundef %103) #10
  br label %for.inc410

for.inc410:                                       ; preds = %do.end393, %do.body388.for.inc410_crit_edge, %if.end383.for.inc410_crit_edge
  %inc411 = add nuw nsw i32 %i.21051, 1
  %exitcond1060.not = icmp eq i32 %inc411, 11
  br i1 %exitcond1060.not, label %do.body413, label %for.inc410.for.body365_crit_edge

for.inc410.for.body365_crit_edge:                 ; preds = %for.inc410
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body365

do.body413:                                       ; preds = %for.inc410
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_debug_level to i32))
  %117 = load i32, ptr @mlx4_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool414.not = icmp eq i32 %117, 0
  br i1 %tobool414.not, label %do.body413.do.end426_crit_edge, label %do.end418

do.body413.do.end426_crit_edge:                   ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end426

do.end418:                                        ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %dev421 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %shr422 = lshr i64 %total_size.1, 10
  %conv423 = trunc i64 %shr422 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.7, ptr noundef %dev421, ptr noundef nonnull @.str.10, i32 noundef %conv423) #10
  br label %do.end426

do.end426:                                        ; preds = %do.end418, %do.body413.do.end426_crit_edge
  %mc_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 7
  %log_mc_entry_sz = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 12
  %log_mc_table_sz = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 21
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 50
  %log_mc_hash_sz = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 13
  %num_mgms678 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 46
  %num_amgms = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 47
  %num_mtts = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 41
  %mtt_base = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 14, i32 2
  %mtt_base652 = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 10
  %cmpt_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 9
  %num_mpts = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 40
  %mpt_base = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 14, i32 3
  %dmpt_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 8
  %log_mpt_sz = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 22
  %flags2 = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 25
  %log_num_eqs = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 18
  %eqc_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 6
  %num_sys_eqs = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 12
  %num_sys_eqs500 = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 19
  %max_eqs501 = getelementptr inbounds %struct.mlx4_dev_cap, ptr %dev_cap, i32 0, i32 11
  %num_eqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 37
  %num_cqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 33
  %cqc_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 5
  %log_num_cqs = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 17
  %num_srqs = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 29
  %srqc_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 4
  %log_num_srqs = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 16
  %auxc_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 2
  %altc_base = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 3
  %rdmarc_shift = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 18, i32 4
  %max_qp_dest_rdma = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 26
  %rdmarc_base = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 18, i32 3
  %rdmarc_base466 = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 1
  %log_rd_per_qp = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 20
  %num_qps = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 21
  %log_num_qps = getelementptr inbounds %struct.mlx4_init_hca_param, ptr %init_hca, i32 0, i32 15
  br label %for.body430

for.body430:                                      ; preds = %for.inc684.for.body430_crit_edge, %do.end426
  %i.31055 = phi i32 [ 0, %do.end426 ], [ %inc685, %for.inc684.for.body430_crit_edge ]
  %type432 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 2
  %122 = ptrtoint ptr %type432 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type432, align 8
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i32 %123, label %for.body430.for.inc684_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb440
    i32 2, label %sw.bb470
    i32 3, label %sw.bb473
    i32 4, label %sw.bb476
    i32 5, label %sw.bb485
    i32 6, label %sw.bb494
    i32 7, label %sw.bb629
    i32 8, label %sw.bb640
    i32 9, label %sw.bb643
    i32 10, label %sw.bb653
  ]

for.body430.for.inc684_crit_edge:                 ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc684

sw.bb:                                            ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %num434 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %125 = ptrtoint ptr %num434 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %num434, align 4
  %127 = ptrtoint ptr %num_qps to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %num_qps, align 4
  %start436 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %128 = ptrtoint ptr %start436 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %start436, align 8
  %130 = ptrtoint ptr %init_hca to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %init_hca, align 8
  %log_num438 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 4
  %131 = ptrtoint ptr %log_num438 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %log_num438, align 8
  %conv439 = trunc i32 %132 to i8
  %133 = ptrtoint ptr %log_num_qps to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv439, ptr %log_num_qps, align 4
  br label %for.inc684

sw.bb440:                                         ; preds = %for.body430
  %num447 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %134 = ptrtoint ptr %num447 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num447, align 4
  br label %for.cond441

for.cond441:                                      ; preds = %for.cond441.for.cond441_crit_edge, %sw.bb440
  %storemerge = phi i32 [ 0, %sw.bb440 ], [ %inc454, %for.cond441.for.cond441_crit_edge ]
  %136 = ptrtoint ptr %rdmarc_shift to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %storemerge, ptr %rdmarc_shift, align 8
  %137 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %request, align 4
  %shl445 = shl i32 %138, %storemerge
  %cmp448 = icmp ult i32 %shl445, %135
  %inc454 = add i32 %storemerge, 1
  br i1 %cmp448, label %for.cond441.for.cond441_crit_edge, label %for.end455

for.cond441.for.cond441_crit_edge:                ; preds = %for.cond441
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond441

for.end455:                                       ; preds = %for.cond441
  call void @__sanitizer_cov_trace_pc() #8
  %shl458 = shl nuw i32 1, %storemerge
  %139 = ptrtoint ptr %max_qp_dest_rdma to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %shl458, ptr %max_qp_dest_rdma, align 8
  %start461 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %140 = ptrtoint ptr %start461 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %start461, align 8
  %conv462 = trunc i64 %141 to i32
  %142 = ptrtoint ptr %rdmarc_base to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv462, ptr %rdmarc_base, align 4
  %143 = ptrtoint ptr %rdmarc_base466 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %141, ptr %rdmarc_base466, align 8
  %144 = ptrtoint ptr %rdmarc_shift to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rdmarc_shift, align 8
  %conv469 = trunc i32 %145 to i8
  %146 = ptrtoint ptr %log_rd_per_qp to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv469, ptr %log_rd_per_qp, align 2
  br label %for.inc684

sw.bb470:                                         ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %start472 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %147 = ptrtoint ptr %start472 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %start472, align 8
  %149 = ptrtoint ptr %altc_base to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %altc_base, align 8
  br label %for.inc684

sw.bb473:                                         ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %start475 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %150 = ptrtoint ptr %start475 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %start475, align 8
  %152 = ptrtoint ptr %auxc_base to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %auxc_base, align 8
  br label %for.inc684

sw.bb476:                                         ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %num478 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %153 = ptrtoint ptr %num478 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num478, align 4
  %155 = ptrtoint ptr %num_srqs to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %num_srqs, align 4
  %start481 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %156 = ptrtoint ptr %start481 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %start481, align 8
  %158 = ptrtoint ptr %srqc_base to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %srqc_base, align 8
  %log_num483 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 4
  %159 = ptrtoint ptr %log_num483 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %log_num483, align 8
  %conv484 = trunc i32 %160 to i8
  %161 = ptrtoint ptr %log_num_srqs to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv484, ptr %log_num_srqs, align 1
  br label %for.inc684

sw.bb485:                                         ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %num487 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %162 = ptrtoint ptr %num487 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num487, align 4
  %164 = ptrtoint ptr %num_cqs to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %num_cqs, align 4
  %start490 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %165 = ptrtoint ptr %start490 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %start490, align 8
  %167 = ptrtoint ptr %cqc_base to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %cqc_base, align 8
  %log_num492 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 4
  %168 = ptrtoint ptr %log_num492 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %log_num492, align 8
  %conv493 = trunc i32 %169 to i8
  %170 = ptrtoint ptr %log_num_cqs to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv493, ptr %log_num_cqs, align 2
  br label %for.inc684

sw.bb494:                                         ; preds = %for.body430
  %171 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %flags2, align 8
  %and = and i64 %172, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool495.not = icmp eq i64 %and, 0
  br i1 %tobool495.not, label %cond.end598, label %if.then496

if.then496:                                       ; preds = %sw.bb494
  call void @__sanitizer_cov_trace_pc() #8
  %173 = ptrtoint ptr %log_num_eqs to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 31, ptr %log_num_eqs, align 1
  %start498 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %174 = ptrtoint ptr %start498 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %start498, align 8
  %176 = ptrtoint ptr %eqc_base to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %eqc_base, align 8
  %177 = ptrtoint ptr %num_sys_eqs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_sys_eqs, align 8
  %conv499 = trunc i32 %178 to i16
  %179 = ptrtoint ptr %num_sys_eqs500 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv499, ptr %num_sys_eqs500, align 8
  br label %for.inc684

cond.end598:                                      ; preds = %sw.bb494
  call void @__sanitizer_cov_trace_pc() #8
  %180 = ptrtoint ptr %max_eqs501 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_eqs501, align 4
  %182 = call i32 @llvm.umin.i32(i32 %181, i32 128)
  %sub.i1034 = add nsw i32 %182, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1034)
  %tobool.not.i.i.i1035 = icmp eq i32 %sub.i1034, 0
  %183 = call i32 @llvm.ctlz.i32(i32 %sub.i1034, i1 true) #6, !range !50
  %sub.i.i.i1036 = sub nuw nsw i32 32, %183
  %sub.i.i.op.i1037 = shl nuw i32 1, %sub.i.i.i1036
  %shl.i1038 = select i1 %tobool.not.i.i.i1035, i32 1, i32 %sub.i.i.op.i1037
  %184 = ptrtoint ptr %num_eqs to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %shl.i1038, ptr %num_eqs, align 4
  %start602 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %185 = ptrtoint ptr %start602 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %start602, align 8
  %187 = ptrtoint ptr %eqc_base to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %eqc_base, align 8
  %188 = load i32, ptr %num_eqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i.i1039 = icmp eq i32 %188, 0
  %189 = call i32 @llvm.ctlz.i32(i32 %188, i1 true) #6, !range !50
  %190 = trunc i32 %189 to i8
  %191 = xor i8 %190, 31
  %conv626 = select i1 %tobool.not.i.i1039, i8 -1, i8 %191
  %192 = ptrtoint ptr %log_num_eqs to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv626, ptr %log_num_eqs, align 1
  br label %for.inc684

sw.bb629:                                         ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %num631 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %193 = ptrtoint ptr %num631 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num631, align 4
  %195 = ptrtoint ptr %num_mpts to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %num_mpts, align 8
  %start634 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %196 = ptrtoint ptr %start634 to i32
  call void @__asan_load8_noabort(i32 %196)
  %197 = load i64, ptr %start634, align 8
  %198 = ptrtoint ptr %mpt_base to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %197, ptr %mpt_base, align 8
  %199 = ptrtoint ptr %dmpt_base to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %197, ptr %dmpt_base, align 8
  %log_num638 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 4
  %200 = ptrtoint ptr %log_num638 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %log_num638, align 8
  %conv639 = trunc i32 %201 to i8
  %202 = ptrtoint ptr %log_mpt_sz to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv639, ptr %log_mpt_sz, align 4
  br label %for.inc684

sw.bb640:                                         ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %start642 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %203 = ptrtoint ptr %start642 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %start642, align 8
  %205 = ptrtoint ptr %cmpt_base to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %cmpt_base, align 8
  br label %for.inc684

sw.bb643:                                         ; preds = %for.body430
  call void @__sanitizer_cov_trace_pc() #8
  %num645 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %206 = ptrtoint ptr %num645 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %num645, align 4
  %208 = ptrtoint ptr %num_mtts to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %num_mtts, align 4
  %start648 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %209 = ptrtoint ptr %start648 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %start648, align 8
  %211 = ptrtoint ptr %mtt_base to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %210, ptr %mtt_base, align 8
  %212 = ptrtoint ptr %mtt_base652 to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %210, ptr %mtt_base652, align 8
  br label %for.inc684

sw.bb653:                                         ; preds = %for.body430
  %start655 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 1
  %213 = ptrtoint ptr %start655 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %start655, align 8
  %215 = ptrtoint ptr %mc_base to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %214, ptr %mc_base, align 8
  %call656 = call i32 @mlx4_get_mgm_entry_size(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call656)
  %tobool.not.i.i1042 = icmp eq i32 %call656, 0
  %216 = call i32 @llvm.ctlz.i32(i32 %call656, i1 true) #6, !range !50
  %217 = trunc i32 %216 to i8
  %218 = xor i8 %217, 31
  %conv658 = select i1 %tobool.not.i.i1042, i8 -1, i8 %218
  %219 = ptrtoint ptr %log_mc_entry_sz to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv658, ptr %log_mc_entry_sz, align 8
  %log_num660 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 4
  %220 = ptrtoint ptr %log_num660 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %log_num660, align 8
  %conv661 = trunc i32 %221 to i8
  %222 = ptrtoint ptr %log_mc_table_sz to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv661, ptr %log_mc_table_sz, align 1
  %223 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %224)
  %cmp663 = icmp eq i32 %224, 2
  br i1 %cmp663, label %if.then665, label %if.else669

if.then665:                                       ; preds = %sw.bb653
  call void @__sanitizer_cov_trace_pc() #8
  %num667 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %225 = ptrtoint ptr %num667 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %num667, align 4
  %227 = ptrtoint ptr %num_mgms678 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %num_mgms678, align 8
  br label %for.inc684

if.else669:                                       ; preds = %sw.bb653
  call void @__sanitizer_cov_trace_pc() #8
  %conv673 = add i8 %conv661, -1
  %228 = ptrtoint ptr %log_mc_hash_sz to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv673, ptr %log_mc_hash_sz, align 1
  %num675 = getelementptr %struct.mlx4_resource, ptr %call7.i.i.i, i32 %i.31055, i32 3
  %229 = ptrtoint ptr %num675 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %num675, align 4
  %shr676 = lshr i32 %230, 1
  %231 = ptrtoint ptr %num_mgms678 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %shr676, ptr %num_mgms678, align 8
  %232 = ptrtoint ptr %num_amgms to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %shr676, ptr %num_amgms, align 4
  br label %for.inc684

for.inc684:                                       ; preds = %if.else669, %if.then665, %sw.bb643, %sw.bb640, %sw.bb629, %cond.end598, %if.then496, %sw.bb485, %sw.bb476, %sw.bb473, %sw.bb470, %for.end455, %sw.bb, %for.body430.for.inc684_crit_edge
  %inc685 = add nuw nsw i32 %i.31055, 1
  %exitcond1061.not = icmp eq i32 %inc685, 11
  br i1 %exitcond1061.not, label %for.end686, label %for.inc684.for.body430_crit_edge

for.inc684.for.body430_crit_edge:                 ; preds = %for.inc684
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body430

for.end686:                                       ; preds = %for.inc684
  call void @__sanitizer_cov_trace_pc() #8
  %num_pds = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 53
  %233 = ptrtoint ptr %num_pds to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 32768, ptr %num_pds, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end686, %do.end380
  %retval.0.ph = phi i64 [ %total_size.1, %for.end686 ], [ -12, %do.end380 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %si) #6
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_mgm_entry_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 163, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_make_profile._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_make_profile._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 171, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx4_make_profile._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mlx4_make_profile._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 178, i32 2}
!15 = !{ptr @mlx4_make_profile._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx4_make_profile._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 56, i32 19}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 57, i32 22}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 58, i32 21}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 59, i32 21}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 60, i32 20}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 61, i32 19}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 62, i32 19}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 63, i32 21}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 64, i32 21}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 65, i32 20}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 66, i32 20}
!39 = !{ptr @res_name, !40, !"res_name", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx4/profile.c", i32 55, i32 20}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i32 0, i32 33}
