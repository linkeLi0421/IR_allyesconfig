; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/sense.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/sense.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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

@mlx4_SENSE_PORT._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sense command failed for port: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx4_SENSE_PORT\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlx4/sense.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_SENSE_PORT._entry_ptr = internal global ptr @mlx4_SENSE_PORT._entry, section ".printk_index", align 4
@mlx4_SENSE_PORT._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Sense returned illegal value: 0x%llx\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx4_SENSE_PORT._entry_ptr.7 = internal global ptr @mlx4_SENSE_PORT._entry.5, section ".printk_index", align 4
@mlx4_wq = external dso_local local_unnamed_addr global ptr, align 4
@mlx4_sense_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&sense->sense_poll)->work)\00", [49 x i8] zeroinitializer }, align 32
@mlx4_sense_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&sense->sense_poll)->timer\00", [35 x i8] zeroinitializer }, align 32
@mlx4_sense_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to change port_types\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx4_sense_port\00", [16 x i8] zeroinitializer }, align 32
@mlx4_sense_port._entry_ptr = internal global ptr @mlx4_sense_port._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 51, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 56, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 142, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlx4/sense.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 107, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @mlx4_SENSE_PORT._entry, ptr @mlx4_SENSE_PORT._entry.5, ptr @mlx4_SENSE_PORT._entry_ptr, ptr @mlx4_SENSE_PORT._entry_ptr.7, ptr @mlx4_sense_port._entry, ptr @mlx4_sense_port._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mlx4_sense_init.__key, ptr @.str.8, ptr @mlx4_sense_init.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_SENSE_PORT._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_SENSE_PORT._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_sense_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_sense_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_sense_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_SENSE_PORT(ptr noundef %dev, i32 noundef %port, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  %out_param = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param) #4
  %0 = ptrtoint ptr %out_param to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %out_param, align 8, !annotation !31
  %call.i = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param, i32 noundef 1, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 77, i32 noundef 60000, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %port) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %out_param to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %out_param, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %6)
  %cmp = icmp ugt i64 %6, 2
  br i1 %cmp, label %do.end5, label %if.end9

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.6, i64 noundef %6) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i64 %6 to i32
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end5, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end5 ], [ 0, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_do_sense_ports(ptr noundef %dev, ptr nocapture noundef %stype, ptr nocapture noundef readonly %defaults) local_unnamed_addr #0 align 64 {
entry:
  %out_param.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not71 = icmp slt i32 %1, 1
  br i1 %cmp.not71, label %entry.for.end38_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end38

for.cond25.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2876 = icmp sgt i32 %28, 0
  br i1 %cmp2876, label %for.cond25.preheader.for.body30_crit_edge, label %for.cond25.preheader.for.end38_crit_edge

for.cond25.preheader.for.end38_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end38

for.cond25.preheader.for.body30_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %sub = add i32 %i.072, -1
  %arrayidx = getelementptr i32, ptr %stype, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 1, i32 %i.072
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.else_crit_edge, label %land.lhs.true

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %arrayidx3 = getelementptr %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 2, i32 %i.072
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 78, i32 %i.072
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp9 = icmp eq i32 %8, 3
  br i1 %cmp9, label %if.then, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.i) #4
  %9 = ptrtoint ptr %out_param.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %out_param.i, align 8, !annotation !31
  %call.i.i = call i32 @__mlx4_cmd(ptr noundef %dev, i64 noundef 0, ptr noundef nonnull %out_param.i, i32 noundef 1, i32 noundef %i.072, i8 noundef zeroext 0, i16 noundef zeroext 77, i32 noundef 60000, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str, i32 noundef %i.072) #7
  br label %if.then15

if.end.i:                                         ; preds = %if.then
  %14 = ptrtoint ptr %out_param.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %out_param.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %15)
  %cmp.i = icmp ugt i64 %15, 2
  br i1 %cmp.i, label %do.end5.i, label %mlx4_SENSE_PORT.exit

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.6, i64 noundef %15) #7
  br label %if.then15

mlx4_SENSE_PORT.exit:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i64 %15 to i32
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %arrayidx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #4
  br label %for.inc

if.then15:                                        ; preds = %do.end5.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.i) #4
  %arrayidx17 = getelementptr i32, ptr %defaults, i32 %sub
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17, align 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %arrayidx21 = getelementptr i32, ptr %defaults, i32 %sub
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then15, %mlx4_SENSE_PORT.exit
  %inc = add i32 %i.072, 1
  %27 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %28
  br i1 %cmp.not, label %for.cond25.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body30:                                       ; preds = %cond.end.for.body30_crit_edge, %for.cond25.preheader.for.body30_crit_edge
  %i.177 = phi i32 [ %inc37, %cond.end.for.body30_crit_edge ], [ 0, %for.cond25.preheader.for.body30_crit_edge ]
  %arrayidx31 = getelementptr i32, ptr %stype, i32 %i.177
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool32.not = icmp eq i32 %30, 0
  br i1 %tobool32.not, label %cond.false, label %for.body30.cond.end_crit_edge

for.body30.cond.end_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx34 = getelementptr i32, ptr %defaults, i32 %i.177
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx34, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body30.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.false ], [ %30, %for.body30.cond.end_crit_edge ]
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %arrayidx31, align 4
  %inc37 = add nuw nsw i32 %i.177, 1
  %34 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_ports, align 4
  %cmp28 = icmp slt i32 %inc37, %35
  br i1 %cmp28, label %cond.end.for.body30_crit_edge, label %cond.end.for.end38_crit_edge

cond.end.for.end38_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end38

cond.end.for.body30_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body30

for.end38:                                        ; preds = %cond.end.for.end38_crit_edge, %for.cond25.preheader.for.end38_crit_edge, %entry.for.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_start_sense(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 60
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags, align 8
  %and = and i64 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_wq to i32))
  %2 = load ptr, ptr @mlx4_wq, align 4
  %sense_poll = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3
  %call2 = tail call i32 @round_jiffies_relative(i32 noundef 300) #4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %sense_poll, i32 noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_stop_sense(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sense_poll = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sense_poll) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_sense_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sense1 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %sense1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %sense1, align 4
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not30 = icmp slt i32 %2, 1
  br i1 %cmp.not30, label %entry.do.body3_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %port.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 1, i32 %port.031
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx, align 1
  %inc = add i32 %port.031, 1
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %5
  br i1 %cmp.not, label %for.body.do.body3_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.do.body3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

do.body3:                                         ; preds = %for.body.do.body3_crit_edge, %entry.do.body3_crit_edge
  %sense_poll = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3
  tail call void @__init_work(ptr noundef %sense_poll, i32 noundef 0) #4
  %6 = ptrtoint ptr %sense_poll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %sense_poll, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlx4_sense_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry10 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlx4_sense_port, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 27, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlx4_sense_init.__key.9) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_sense_port(ptr noundef %work) #0 align 64 {
entry:
  %stype = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stype) #4
  %2 = ptrtoint ptr %stype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %stype, align 4, !annotation !31
  %3 = getelementptr inbounds [2 x i32], ptr %stype, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !31
  %port_mutex = getelementptr inbounds %struct.mlx4_priv, ptr %1, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %port_mutex, i32 noundef 0) #4
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 73, i32 1
  call void @mlx4_do_sense_ports(ptr noundef %1, ptr noundef nonnull %stype, ptr noundef %arrayidx)
  %call4 = call i32 @mlx4_check_port_params(ptr noundef %1, ptr noundef nonnull %stype) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.sense_again_crit_edge

entry.sense_again_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sense_again

if.end:                                           ; preds = %entry
  %call6 = call i32 @mlx4_change_port_types(ptr noundef %1, ptr noundef nonnull %stype) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.sense_again_crit_edge, label %do.end

if.end.sense_again_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sense_again

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.11) #7
  br label %sense_again

sense_again:                                      ; preds = %do.end, %if.end.sense_again_crit_edge, %entry.sense_again_crit_edge
  call void @mutex_unlock(ptr noundef %port_mutex) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_wq to i32))
  %9 = load ptr, ptr @mlx4_wq, align 4
  %call12 = call i32 @round_jiffies_relative(i32 noundef 300) #4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef %call12) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stype) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_check_port_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_change_port_types(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/sense.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_SENSE_PORT._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_SENSE_PORT._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/sense.c", i32 56, i32 3}
!10 = !{ptr @mlx4_SENSE_PORT._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx4_SENSE_PORT._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @mlx4_sense_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/sense.c", i32 142, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx4_sense_init.__key.9, !13, !"__key", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx4/sense.c", i32 107, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mlx4_sense_port._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx4_sense_port._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
