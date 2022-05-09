; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/sysfs.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mlx4_ib_sriov = type { [2 x %struct.mlx4_ib_demux_ctx], [2 x ptr], %struct.spinlock, i32, %struct.mlx4_sriov_alias_guid, %struct.xarray, i32, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.xarray }
%struct.mlx4_ib_demux_ctx = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.atomic64_t, [128 x i64], ptr, %struct.mutex, %struct.rb_root, %struct.list_head, ptr, ptr, %struct.atomic_t, i32 }
%struct.mlx4_sriov_alias_guid = type { [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], %struct.spinlock, ptr }
%struct.mlx4_sriov_alias_guid_port_rec_det = type { [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr, %struct.delayed_work, i32, i32, ptr, %struct.list_head }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { [64 x i8], i64, i32, [8 x i32], i64 }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_ib_iboe = type { %struct.spinlock, [2 x ptr], [2 x %struct.atomic64_t], %struct.notifier_block, [2 x %struct.mlx4_port_gid_table], [2 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_port_gid_table = type { [128 x %struct.gid_entry] }
%struct.gid_entry = type { %union.ib_gid, i32, ptr, i16 }
%union.ib_gid = type { %struct.anon.159 }
%struct.anon.159 = type { i64, i64 }
%struct.mlx4_ib_counters = type { %struct.list_head, %struct.mutex, i32 }
%struct.mlx4_ib_iov_port = type { [100 x i8], i8, ptr, %struct.list_head, ptr, %struct.ib_port_attr, ptr, ptr, ptr, ptr, ptr, %struct.mlx4_ib_iov_sysfs_attr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mlx4_ib_iov_sysfs_attr = type { ptr, ptr, i32, i32, [15 x i8], %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pkey_mgt = type { [128 x [2 x [128 x i8]]], [2 x [128 x i16]], [128 x %struct.list_head], [128 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_ib_diag_counters = type { ptr, ptr, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.173, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.173 = type { ptr }
%struct.mlx4_port = type { %struct.kobject, ptr, %struct.attribute_group, %struct.attribute_group, %struct.device_attribute, %struct.device_attribute, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.port_table_attribute = type { %struct.port_attribute, [8 x i8], i32 }
%struct.port_attribute = type { %struct.attribute, ptr, ptr }

@add_sysfs_port_mcg_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013<mlx4_ib> %s: failed to create %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"add_sysfs_port_mcg_attr\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/hw/mlx4/sysfs.c\00", [61 x i8] zeroinitializer }, align 32
@add_sysfs_port_mcg_attr._entry_ptr = internal global ptr @add_sysfs_port_mcg_attr._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iov\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@mlx4_ib_device_register_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013<mlx4_ib> %s: mlx4_ib_device_register_sysfs error (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx4_ib_device_register_sysfs\00", [34 x i8] zeroinitializer }, align 32
@mlx4_ib_device_register_sysfs._entry_ptr = internal global ptr @mlx4_ib_device_register_sysfs._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"admin_guids\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gids\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkeys\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mcgs\00", [27 x i8] zeroinitializer }, align 32
@add_port_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013<mlx4_ib> %s: add_port_entries FAILED: for port:%d, error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"add_port_entries\00", [47 x i8] zeroinitializer }, align 32
@add_port_entries._entry_ptr = internal global ptr @add_port_entries._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@create_sysfs_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@create_sysfs_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"create_sysfs_entry\00", [45 x i8] zeroinitializer }, align 32
@create_sysfs_entry._entry_ptr = internal global ptr @create_sysfs_entry._entry, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llx\0A\00", [26 x i8] zeroinitializer }, align 32
@store_admin_alias_guid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013<mlx4_ib> %s: GUID 0 block 0 is RO\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"store_admin_alias_guid\00", [41 x i8] zeroinitializer }, align 32
@store_admin_alias_guid._entry_ptr = internal global ptr @store_admin_alias_guid._entry, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llx\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%04x:%04x:%04x:%04x:%04x:%04x:%04x:%04x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%.8s%.2d.%d\00", [20 x i8] zeroinitializer }, align 32
@port_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @mlx4_port_release, ptr @port_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pkey_idx\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gid_idx\00", [24 x i8] zeroinitializer }, align 32
@port_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @port_attr_show, ptr @port_attr_store }, [24 x i8] zeroinitializer }, align 32
@alloc_group_attrs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%i\00", [29 x i8] zeroinitializer }, align 32
@store_port_pkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013<mlx4_ib> %s: mlx4_gen_pkey_eqe failed for slave %d, port %d, index %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"store_port_pkey\00", [16 x i8] zeroinitializer }, align 32
@store_port_pkey._entry_ptr = internal global ptr @store_port_pkey._entry, section ".printk_index", align 4
@add_vf_smi_entries.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smi_enabled\00", [20 x i8] zeroinitializer }, align 32
@add_vf_smi_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013<mlx4_ib> %s: failed to create smi_enabled\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add_vf_smi_entries\00", [45 x i8] zeroinitializer }, align 32
@add_vf_smi_entries._entry_ptr = internal global ptr @add_vf_smi_entries._entry, section ".printk_index", align 4
@add_vf_smi_entries.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enable_smi_admin\00", [47 x i8] zeroinitializer }, align 32
@add_vf_smi_entries._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013<mlx4_ib> %s: failed to create enable_smi_admin\0A\00", [45 x i8] zeroinitializer }, align 32
@add_vf_smi_entries._entry_ptr.38 = internal global ptr @add_vf_smi_entries._entry.36, section ".printk_index", align 4
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 210, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 807, i32 43 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 813, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 837, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 253, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 261, i32 52 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 278, i32 45 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 298, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 317, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 351, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 180, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 184, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 194, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 59, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 84, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 88, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 129, i32 25 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 156, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 362, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"port_type\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 430, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 647, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 661, i32 23 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"port_sysfs_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 425, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 517, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 450, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 451, i32 25 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 466, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 468, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 479, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 588, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 591, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 595, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 599, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 602, i32 34 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [38 x i8] c"../drivers/infiniband/hw/mlx4/sysfs.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 606, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @add_port_entries._entry, ptr @add_port_entries._entry_ptr, ptr @add_sysfs_port_mcg_attr._entry, ptr @add_sysfs_port_mcg_attr._entry_ptr, ptr @add_vf_smi_entries._entry, ptr @add_vf_smi_entries._entry.36, ptr @add_vf_smi_entries._entry_ptr, ptr @add_vf_smi_entries._entry_ptr.38, ptr @create_sysfs_entry._entry, ptr @create_sysfs_entry._entry_ptr, ptr @mlx4_ib_device_register_sysfs._entry, ptr @mlx4_ib_device_register_sysfs._entry_ptr, ptr @store_admin_alias_guid._entry, ptr @store_admin_alias_guid._entry_ptr, ptr @store_port_pkey._entry, ptr @store_port_pkey._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @create_sysfs_entry.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @port_type, ptr @.str.23, ptr @.str.24, ptr @port_sysfs_ops, ptr @alloc_group_attrs.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @add_vf_smi_entries.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @add_vf_smi_entries.__key.34, ptr @.str.35, ptr @.str.37], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_sysfs_port_mcg_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_device_register_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_port_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sysfs_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sysfs_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_admin_alias_guid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_group_attrs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_port_pkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_vf_smi_entries.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_vf_smi_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_vf_smi_entries.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_vf_smi_entries._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_sysfs_port_mcg_attr(ptr nocapture noundef readonly %device, i32 noundef %port_num, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %port_num, -1
  %mcgs_parent = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %sub, i32 10
  %0 = ptrtoint ptr %mcgs_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcgs_parent, align 8
  %call.i = tail call i32 @sysfs_create_file_ns(ptr noundef %1, ptr noundef %attr, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %3) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @del_sysfs_port_mcg_attr(ptr nocapture noundef readonly %device, i32 noundef %port_num, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %port_num, -1
  %mcgs_parent = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %sub, i32 10
  %0 = ptrtoint ptr %mcgs_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcgs_parent, align 8
  tail call void @sysfs_remove_file_ns(ptr noundef %1, ptr noundef %attr, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_device_register_sysfs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %name.i.i49 = alloca [32 x i8], align 1
  %actv_ports.sroa.0.i.i = alloca i32, align 4
  %buff.i = alloca [11 x i8], align 1
  %attr.i = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %call2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.3, ptr noundef %4) #9
  %iov_parent = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %iov_parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %iov_parent, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %if.end6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end6:                                          ; preds = %if.end
  %call8 = tail call ptr @kobject_get(ptr noundef nonnull %call2) #9
  %call9 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.4, ptr noundef %call8) #9
  %ports_parent = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %ports_parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %ports_parent, align 8
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end6.err_ports_crit_edge, label %if.end13

if.end6.err_ports_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ports

if.end13:                                         ; preds = %if.end6
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %8 = xor i8 %bf.load.i.i, -1
  %9 = lshr i8 %8, 7
  %.not.i = zext i8 %9 to i32
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 21
  %gid_tbl_len.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr.i, i32 0, i32 5
  %pkey_tbl_len.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr.i, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %bf.load.i.i48 = phi i8 [ %bf.load.i.i48.pr, %for.inc ], [ %bf.load.i.i, %if.end13 ]
  %i.0 = phi i32 [ %inc, %for.inc ], [ %.not.i, %if.end13 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i48)
  %tobool.i.i = icmp slt i8 %bf.load.i.i48, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %11, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %cond.i)
  %cmp.not = icmp ugt i32 %i.0, %cond.i
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %rdma_end_port.exit
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buff.i) #9
  %12 = call ptr @memset(ptr %buff.i, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr.i) #9
  %13 = call ptr @memset(ptr %attr.i, i32 0, i32 72)
  %call.i = call i32 @__mlx4_ib_query_port(ptr noundef %dev, i32 noundef %i.0, ptr noundef nonnull %attr.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.err_add_entries_crit_edge

for.body.err_add_entries_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_add_entries

if.end.i:                                         ; preds = %for.body
  %sub.i = add i32 %i.0, -1
  %arrayidx.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i
  %dev.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev.i, align 8
  %conv.i = trunc i32 %i.0 to i8
  %num.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 1
  %15 = ptrtoint ptr %num.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %num.i, align 4
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 24640, i32 noundef 3520, i32 noundef 3) #13
  %dentr_ar.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 4
  %16 = ptrtoint ptr %dentr_ar.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i.i.i, ptr %dentr_ar.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.err_add_entries_crit_edge, label %if.end5.i

if.end.i.err_add_entries_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_add_entries

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.7, i32 noundef %i.0) #9
  %17 = ptrtoint ptr %ports_parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ports_parent, align 8
  %call8.i = call ptr @kobject_get(ptr noundef %18) #9
  %call9.i = call ptr @kobject_create_and_add(ptr noundef nonnull %buff.i, ptr noundef %call8.i) #9
  %cur_port.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 6
  %19 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i, ptr %cur_port.i, align 8
  %tobool11.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool11.not.i, label %if.end5.i.kobj_create_err.i_crit_edge, label %if.end13.i

if.end5.i.kobj_create_err.i_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kobj_create_err.i

if.end13.i:                                       ; preds = %if.end5.i
  %call15.i = call ptr @kobject_get(ptr noundef nonnull %call9.i) #9
  %call16.i = call ptr @kobject_create_and_add(ptr noundef nonnull @.str.8, ptr noundef %call15.i) #9
  %admin_alias_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 7
  %20 = ptrtoint ptr %admin_alias_parent.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call16.i, ptr %admin_alias_parent.i, align 4
  %tobool18.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool18.not.i, label %if.end13.i.err_admin_guids.i_crit_edge, label %for.cond.preheader.i

if.end13.i.err_admin_guids.i_crit_edge:           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_admin_guids.i

for.cond.preheader.i:                             ; preds = %if.end13.i
  %21 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gid_tbl_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp232.i = icmp sgt i32 %22, 0
  br i1 %cmp232.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end28.i.i
  %inc.i = add nuw nsw i32 %i.0233.i, 1
  %23 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gid_tbl_len.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %24
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0233.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call23.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.7, i32 noundef %i.0233.i) #9
  %25 = ptrtoint ptr %dentr_ar.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentr_ar.i, align 4
  %entry_num.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %26, i32 0, i32 %i.0233.i, i32 3
  %27 = ptrtoint ptr %entry_num.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0233.i, ptr %entry_num.i, align 4
  %28 = load ptr, ptr %dentr_ar.i, align 4
  %arrayidx28.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i
  %29 = ptrtoint ptr %admin_alias_parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %admin_alias_parent.i, align 4
  %31 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i, ptr %arrayidx28.i, align 4
  %dentry.i.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i, i32 5
  %show1.i.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i, i32 5, i32 1
  %32 = ptrtoint ptr %show1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @show_admin_alias_guid, ptr %show1.i.i, align 4
  %store3.i.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i, i32 5, i32 2
  %33 = ptrtoint ptr %store3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @store_admin_alias_guid, ptr %store3.i.i, align 4
  %key.i.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i, i32 5, i32 0, i32 3
  %34 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @create_sysfs_entry.__key, ptr %key.i.i, align 4
  %name.i.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i, i32 4
  %35 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %name.i.i, ptr %dentry.i.i, align 4
  %mode.i.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %mode.i.i, align 4
  %kobj.i.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %28, i32 0, i32 %i.0233.i, i32 1
  %37 = ptrtoint ptr %kobj.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %30, ptr %kobj.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 15, ptr noundef nonnull @.str.14, ptr noundef nonnull %buff.i) #9
  %38 = ptrtoint ptr %store3.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %store3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mode.i.i, align 4
  %42 = or i16 %41, 128
  store i16 %42, ptr %mode.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  %43 = ptrtoint ptr %show1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %show1.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %44, null
  br i1 %tobool20.not.i.i, label %if.end.i.i.if.end28.i.i_crit_edge, label %if.then21.i.i

if.end.i.i.if.end28.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mode.i.i, align 4
  %47 = or i16 %46, 292
  store i16 %47, ptr %mode.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then21.i.i, %if.end.i.i.if.end28.i.i_crit_edge
  %48 = ptrtoint ptr %kobj.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %kobj.i.i, align 4
  %call.i.i.i = call i32 @sysfs_create_file_ns(ptr noundef %49, ptr noundef %dentry.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool33.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool33.not.i.i, label %for.cond.i, label %create_sysfs_entry.exit.i

create_sysfs_entry.exit.i:                        ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dentry.i.i, align 4
  %call41.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef %51) #12
  %52 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx28.i, align 4
  br label %err_admin_alias_parent.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %53 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_port.i, align 8
  %call36.i = call ptr @kobject_get(ptr noundef %54) #9
  %call37.i = call ptr @kobject_create_and_add(ptr noundef nonnull @.str.9, ptr noundef %call36.i) #9
  %gids_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 8
  %55 = ptrtoint ptr %gids_parent.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call37.i, ptr %gids_parent.i, align 8
  %tobool39.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool39.not.i, label %for.end.i.err_gids.i_crit_edge, label %for.cond42.preheader.i

for.end.i.err_gids.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gids.i

for.cond42.preheader.i:                           ; preds = %for.end.i
  %56 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %gid_tbl_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp44234.i = icmp sgt i32 %57, 0
  br i1 %cmp44234.i, label %for.cond42.preheader.i.for.body46.i_crit_edge, label %for.cond42.preheader.i.for.end67.i_crit_edge

for.cond42.preheader.i.for.end67.i_crit_edge:     ; preds = %for.cond42.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end67.i

for.cond42.preheader.i.for.body46.i_crit_edge:    ; preds = %for.cond42.preheader.i
  br label %for.body46.i

for.cond42.i:                                     ; preds = %if.end28.i208.i
  %inc66.i = add nuw nsw i32 %i.1235.i, 1
  %58 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gid_tbl_len.i, align 8
  %cmp44.i = icmp slt i32 %inc66.i, %59
  br i1 %cmp44.i, label %for.cond42.i.for.body46.i_crit_edge, label %for.cond42.i.for.end67.i_crit_edge

for.cond42.i.for.end67.i_crit_edge:               ; preds = %for.cond42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end67.i

for.cond42.i.for.body46.i_crit_edge:              ; preds = %for.cond42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.cond42.i.for.body46.i_crit_edge, %for.cond42.preheader.i.for.body46.i_crit_edge
  %i.1235.i = phi i32 [ %inc66.i, %for.cond42.i.for.body46.i_crit_edge ], [ 0, %for.cond42.preheader.i.for.body46.i_crit_edge ]
  %call48.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.7, i32 noundef %i.1235.i) #9
  %60 = ptrtoint ptr %dentr_ar.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dentr_ar.i, align 4
  %62 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gid_tbl_len.i, align 8
  %add.i = add i32 %63, %i.1235.i
  %entry_num53.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %61, i32 0, i32 %add.i, i32 3
  %64 = ptrtoint ptr %entry_num53.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.1235.i, ptr %entry_num53.i, align 4
  %65 = load ptr, ptr %dentr_ar.i, align 4
  %66 = load i32, ptr %gid_tbl_len.i, align 8
  %add57.i = add i32 %66, %i.1235.i
  %arrayidx58.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i
  %67 = ptrtoint ptr %gids_parent.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %gids_parent.i, align 8
  %69 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.i, ptr %arrayidx58.i, align 4
  %dentry.i193.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i, i32 5
  %show1.i194.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i, i32 5, i32 1
  %70 = ptrtoint ptr %show1.i194.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @show_port_gid, ptr %show1.i194.i, align 4
  %store3.i195.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i, i32 5, i32 2
  %71 = ptrtoint ptr %store3.i195.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %store3.i195.i, align 4
  %key.i196.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i, i32 5, i32 0, i32 3
  %72 = ptrtoint ptr %key.i196.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @create_sysfs_entry.__key, ptr %key.i196.i, align 4
  %name.i197.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i, i32 4
  %73 = ptrtoint ptr %dentry.i193.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %name.i197.i, ptr %dentry.i193.i, align 4
  %mode.i198.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i, i32 5, i32 0, i32 1
  %74 = ptrtoint ptr %mode.i198.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %mode.i198.i, align 4
  %kobj.i199.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %65, i32 0, i32 %add57.i, i32 1
  %75 = ptrtoint ptr %kobj.i199.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %68, ptr %kobj.i199.i, align 4
  %call.i200.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i197.i, i32 noundef 15, ptr noundef nonnull @.str.14, ptr noundef nonnull %buff.i) #9
  %76 = ptrtoint ptr %store3.i195.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %store3.i195.i, align 4
  %tobool.not.i201.i = icmp eq ptr %77, null
  br i1 %tobool.not.i201.i, label %for.body46.i.if.end.i204.i_crit_edge, label %if.then.i202.i

for.body46.i.if.end.i204.i_crit_edge:             ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i204.i

if.then.i202.i:                                   ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %mode.i198.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mode.i198.i, align 4
  %80 = or i16 %79, 128
  store i16 %80, ptr %mode.i198.i, align 4
  br label %if.end.i204.i

if.end.i204.i:                                    ; preds = %if.then.i202.i, %for.body46.i.if.end.i204.i_crit_edge
  %81 = ptrtoint ptr %show1.i194.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %show1.i194.i, align 4
  %tobool20.not.i203.i = icmp eq ptr %82, null
  br i1 %tobool20.not.i203.i, label %if.end.i204.i.if.end28.i208.i_crit_edge, label %if.then21.i205.i

if.end.i204.i.if.end28.i208.i_crit_edge:          ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i208.i

if.then21.i205.i:                                 ; preds = %if.end.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %mode.i198.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %mode.i198.i, align 4
  %85 = or i16 %84, 292
  store i16 %85, ptr %mode.i198.i, align 4
  br label %if.end28.i208.i

if.end28.i208.i:                                  ; preds = %if.then21.i205.i, %if.end.i204.i.if.end28.i208.i_crit_edge
  %86 = ptrtoint ptr %kobj.i199.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %kobj.i199.i, align 4
  %call.i.i206.i = call i32 @sysfs_create_file_ns(ptr noundef %87, ptr noundef %dentry.i193.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i206.i)
  %tobool33.not.i207.i = icmp eq i32 %call.i.i206.i, 0
  br i1 %tobool33.not.i207.i, label %for.cond42.i, label %create_sysfs_entry.exit211.i

create_sysfs_entry.exit211.i:                     ; preds = %if.end28.i208.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %dentry.i193.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dentry.i193.i, align 4
  %call41.i209.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef %89) #12
  %90 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %arrayidx58.i, align 4
  br label %err_gids_parent.i

for.end67.i:                                      ; preds = %for.cond42.i.for.end67.i_crit_edge, %for.cond42.preheader.i.for.end67.i_crit_edge
  %91 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur_port.i, align 8
  %call69.i = call ptr @kobject_get(ptr noundef %92) #9
  %call70.i = call ptr @kobject_create_and_add(ptr noundef nonnull @.str.10, ptr noundef %call69.i) #9
  %pkeys_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 9
  %93 = ptrtoint ptr %pkeys_parent.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call70.i, ptr %pkeys_parent.i, align 4
  %tobool72.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool72.not.i, label %for.end67.i.err_pkeys.i_crit_edge, label %for.cond75.preheader.i

for.end67.i.err_pkeys.i_crit_edge:                ; preds = %for.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pkeys.i

for.cond75.preheader.i:                           ; preds = %for.end67.i
  %94 = ptrtoint ptr %pkey_tbl_len.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %pkey_tbl_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp77237.not.i = icmp eq i16 %95, 0
  br i1 %cmp77237.not.i, label %for.cond75.preheader.i.for.end102.i_crit_edge, label %for.cond75.preheader.i.for.body79.i_crit_edge

for.cond75.preheader.i.for.body79.i_crit_edge:    ; preds = %for.cond75.preheader.i
  br label %for.body79.i

for.cond75.preheader.i.for.end102.i_crit_edge:    ; preds = %for.cond75.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end102.i

for.cond75.i:                                     ; preds = %if.end28.i227.i
  %inc101.i = add nuw nsw i32 %i.2238.i, 1
  %96 = ptrtoint ptr %pkey_tbl_len.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %pkey_tbl_len.i, align 8
  %conv76.i = zext i16 %97 to i32
  %cmp77.i = icmp ult i32 %inc101.i, %conv76.i
  br i1 %cmp77.i, label %for.cond75.i.for.body79.i_crit_edge, label %for.cond75.i.for.end102.i_crit_edge

for.cond75.i.for.end102.i_crit_edge:              ; preds = %for.cond75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end102.i

for.cond75.i.for.body79.i_crit_edge:              ; preds = %for.cond75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79.i

for.body79.i:                                     ; preds = %for.cond75.i.for.body79.i_crit_edge, %for.cond75.preheader.i.for.body79.i_crit_edge
  %i.2238.i = phi i32 [ %inc101.i, %for.cond75.i.for.body79.i_crit_edge ], [ 0, %for.cond75.preheader.i.for.body79.i_crit_edge ]
  %call81.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buff.i, ptr noundef nonnull @.str.7, i32 noundef %i.2238.i) #9
  %98 = ptrtoint ptr %dentr_ar.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dentr_ar.i, align 4
  %100 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %gid_tbl_len.i, align 8
  %mul.i = shl i32 %101, 1
  %add85.i = add i32 %mul.i, %i.2238.i
  %entry_num87.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %99, i32 0, i32 %add85.i, i32 3
  %102 = ptrtoint ptr %entry_num87.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %i.2238.i, ptr %entry_num87.i, align 4
  %103 = load ptr, ptr %dentr_ar.i, align 4
  %104 = load i32, ptr %gid_tbl_len.i, align 8
  %mul91.i = shl i32 %104, 1
  %add92.i = add i32 %mul91.i, %i.2238.i
  %arrayidx93.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i
  %105 = ptrtoint ptr %pkeys_parent.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pkeys_parent.i, align 4
  %107 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx.i, ptr %arrayidx93.i, align 4
  %dentry.i212.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i, i32 5
  %show1.i213.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i, i32 5, i32 1
  %108 = ptrtoint ptr %show1.i213.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @show_phys_port_pkey, ptr %show1.i213.i, align 4
  %store3.i214.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i, i32 5, i32 2
  %109 = ptrtoint ptr %store3.i214.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %store3.i214.i, align 4
  %key.i215.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i, i32 5, i32 0, i32 3
  %110 = ptrtoint ptr %key.i215.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @create_sysfs_entry.__key, ptr %key.i215.i, align 4
  %name.i216.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i, i32 4
  %111 = ptrtoint ptr %dentry.i212.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %name.i216.i, ptr %dentry.i212.i, align 4
  %mode.i217.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i, i32 5, i32 0, i32 1
  %112 = ptrtoint ptr %mode.i217.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %mode.i217.i, align 4
  %kobj.i218.i = getelementptr [385 x %struct.mlx4_ib_iov_sysfs_attr], ptr %103, i32 0, i32 %add92.i, i32 1
  %113 = ptrtoint ptr %kobj.i218.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %106, ptr %kobj.i218.i, align 4
  %call.i219.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i216.i, i32 noundef 15, ptr noundef nonnull @.str.14, ptr noundef nonnull %buff.i) #9
  %114 = ptrtoint ptr %store3.i214.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %store3.i214.i, align 4
  %tobool.not.i220.i = icmp eq ptr %115, null
  br i1 %tobool.not.i220.i, label %for.body79.i.if.end.i223.i_crit_edge, label %if.then.i221.i

for.body79.i.if.end.i223.i_crit_edge:             ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i223.i

if.then.i221.i:                                   ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %mode.i217.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %mode.i217.i, align 4
  %118 = or i16 %117, 128
  store i16 %118, ptr %mode.i217.i, align 4
  br label %if.end.i223.i

if.end.i223.i:                                    ; preds = %if.then.i221.i, %for.body79.i.if.end.i223.i_crit_edge
  %119 = ptrtoint ptr %show1.i213.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %show1.i213.i, align 4
  %tobool20.not.i222.i = icmp eq ptr %120, null
  br i1 %tobool20.not.i222.i, label %if.end.i223.i.if.end28.i227.i_crit_edge, label %if.then21.i224.i

if.end.i223.i.if.end28.i227.i_crit_edge:          ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i227.i

if.then21.i224.i:                                 ; preds = %if.end.i223.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %mode.i217.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %mode.i217.i, align 4
  %123 = or i16 %122, 292
  store i16 %123, ptr %mode.i217.i, align 4
  br label %if.end28.i227.i

if.end28.i227.i:                                  ; preds = %if.then21.i224.i, %if.end.i223.i.if.end28.i227.i_crit_edge
  %124 = ptrtoint ptr %kobj.i218.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %kobj.i218.i, align 4
  %call.i.i225.i = call i32 @sysfs_create_file_ns(ptr noundef %125, ptr noundef %dentry.i212.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i225.i)
  %tobool33.not.i226.i = icmp eq i32 %call.i.i225.i, 0
  br i1 %tobool33.not.i226.i, label %for.cond75.i, label %create_sysfs_entry.exit230.i

create_sysfs_entry.exit230.i:                     ; preds = %if.end28.i227.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %dentry.i212.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dentry.i212.i, align 4
  %call41.i228.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef %127) #12
  %128 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %arrayidx93.i, align 4
  br label %err_pkeys_parent.i

for.end102.i:                                     ; preds = %for.cond75.i.for.end102.i_crit_edge, %for.cond75.preheader.i.for.end102.i_crit_edge
  %129 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur_port.i, align 8
  %call104.i = call ptr @kobject_get(ptr noundef %130) #9
  %call105.i = call ptr @kobject_create_and_add(ptr noundef nonnull @.str.11, ptr noundef %call104.i) #9
  %mcgs_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 20, i32 %sub.i, i32 10
  %131 = ptrtoint ptr %mcgs_parent.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call105.i, ptr %mcgs_parent.i, align 8
  %tobool107.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool107.not.i, label %if.then108.i, label %for.inc

if.then108.i:                                     ; preds = %for.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur_port.i, align 8
  call void @kobject_put(ptr noundef %133) #9
  br label %err_pkeys_parent.i

err_pkeys_parent.i:                               ; preds = %if.then108.i, %create_sysfs_entry.exit230.i
  %ret.0.i = phi i32 [ %call.i.i225.i, %create_sysfs_entry.exit230.i ], [ -12, %if.then108.i ]
  %134 = ptrtoint ptr %pkeys_parent.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pkeys_parent.i, align 4
  call void @kobject_put(ptr noundef %135) #9
  br label %err_pkeys.i

err_pkeys.i:                                      ; preds = %err_pkeys_parent.i, %for.end67.i.err_pkeys.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %err_pkeys_parent.i ], [ -12, %for.end67.i.err_pkeys.i_crit_edge ]
  %136 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur_port.i, align 8
  call void @kobject_put(ptr noundef %137) #9
  br label %err_gids_parent.i

err_gids_parent.i:                                ; preds = %err_pkeys.i, %create_sysfs_entry.exit211.i
  %ret.2.i = phi i32 [ %call.i.i206.i, %create_sysfs_entry.exit211.i ], [ %ret.1.i, %err_pkeys.i ]
  %138 = ptrtoint ptr %gids_parent.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %gids_parent.i, align 8
  call void @kobject_put(ptr noundef %139) #9
  br label %err_gids.i

err_gids.i:                                       ; preds = %err_gids_parent.i, %for.end.i.err_gids.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %err_gids_parent.i ], [ -12, %for.end.i.err_gids.i_crit_edge ]
  %140 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cur_port.i, align 8
  call void @kobject_put(ptr noundef %141) #9
  br label %err_admin_alias_parent.i

err_admin_alias_parent.i:                         ; preds = %err_gids.i, %create_sysfs_entry.exit.i
  %ret.4.i = phi i32 [ %call.i.i.i, %create_sysfs_entry.exit.i ], [ %ret.3.i, %err_gids.i ]
  %142 = ptrtoint ptr %admin_alias_parent.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %admin_alias_parent.i, align 4
  call void @kobject_put(ptr noundef %143) #9
  br label %err_admin_guids.i

err_admin_guids.i:                                ; preds = %err_admin_alias_parent.i, %if.end13.i.err_admin_guids.i_crit_edge
  %ret.5.i = phi i32 [ %ret.4.i, %err_admin_alias_parent.i ], [ -12, %if.end13.i.err_admin_guids.i_crit_edge ]
  %144 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur_port.i, align 8
  call void @kobject_put(ptr noundef %145) #9
  %146 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cur_port.i, align 8
  call void @kobject_put(ptr noundef %147) #9
  br label %kobj_create_err.i

kobj_create_err.i:                                ; preds = %err_admin_guids.i, %if.end5.i.kobj_create_err.i_crit_edge
  %ret.6.i = phi i32 [ %ret.5.i, %err_admin_guids.i ], [ -12, %if.end5.i.kobj_create_err.i_crit_edge ]
  %148 = ptrtoint ptr %ports_parent to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ports_parent, align 8
  call void @kobject_put(ptr noundef %149) #9
  %150 = ptrtoint ptr %dentr_ar.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dentr_ar.i, align 4
  call void @kfree(ptr noundef %151) #9
  br label %err_add_entries

for.inc:                                          ; preds = %for.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr.i) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buff.i) #9
  %inc = add i32 %i.0, 1
  %152 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i.i48.pr = load i8, ptr %is_switch.i.i, align 4
  br label %for.cond

for.end:                                          ; preds = %rdma_end_port.exit
  %153 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev1, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i51 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i51, label %for.end.cleanup_crit_edge, label %for.cond.preheader.i52

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i52:                           ; preds = %for.end
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %154, align 8
  %num_vfs1.i = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %num_vfs1.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_vfs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.not2.i = icmp slt i32 %160, 0
  br i1 %cmp.not2.i, label %for.cond.preheader.i52.cleanup_crit_edge, label %for.cond.preheader.i52.for.body.i53_crit_edge

for.cond.preheader.i52.for.body.i53_crit_edge:    ; preds = %for.cond.preheader.i52
  br label %for.body.i53

for.cond.preheader.i52.cleanup_crit_edge:         ; preds = %for.cond.preheader.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i53:                                     ; preds = %register_one_pkey_tree.exit.i.for.body.i53_crit_edge, %for.cond.preheader.i52.for.body.i53_crit_edge
  %161 = phi ptr [ %291, %register_one_pkey_tree.exit.i.for.body.i53_crit_edge ], [ %154, %for.cond.preheader.i52.for.body.i53_crit_edge ]
  %i.03.i = phi i32 [ %inc.i58, %register_one_pkey_tree.exit.i.for.body.i53_crit_edge ], [ 0, %for.cond.preheader.i52.for.body.i53_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i49) #9
  %162 = call ptr @memset(ptr %name.i.i49, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actv_ports.sroa.0.i.i)
  %163 = ptrtoint ptr %actv_ports.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %actv_ports.sroa.0.i.i, align 4
  %164 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %161, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44, i32 3
  %168 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %169, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i53.get_name.exit.i.i_crit_edge

for.body.i53.get_name.exit.i.i_crit_edge:         ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_name.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44
  %170 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev.i.i.i.i, align 4
  br label %get_name.exit.i.i

get_name.exit.i.i:                                ; preds = %if.end.i.i.i.i.i, %for.body.i53.get_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %171, %if.end.i.i.i.i.i ], [ %169, %for.body.i53.get_name.exit.i.i_crit_edge ]
  %i.03.i.frozen = freeze i32 %i.03.i
  %div.i.i.i = sdiv i32 %i.03.i.frozen, 8
  %172 = mul i32 %div.i.i.i, 8
  %rem.i.i.i.decomposed = sub i32 %i.03.i.frozen, %172
  %call2.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i49, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i.i.i.i, i32 noundef %div.i.i.i, i32 noundef %rem.i.i.i.decomposed) #9
  %173 = ptrtoint ptr %iov_parent to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %iov_parent, align 4
  %call.i.i54 = call ptr @kobject_get(ptr noundef %174) #9
  %call2.i.i = call ptr @kobject_create_and_add(ptr noundef nonnull %name.i.i49, ptr noundef %call.i.i54) #9
  %arrayidx.i.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21, i32 3, i32 %i.03.i
  %175 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call2.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i55 = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i55, label %get_name.exit.i.i.fail_dev.i.i_crit_edge, label %if.end.i.i56

get_name.exit.i.i.fail_dev.i.i_crit_edge:         ; preds = %get_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_dev.i.i

if.end.i.i56:                                     ; preds = %get_name.exit.i.i
  %arrayidx7.i.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21, i32 2, i32 %i.03.i
  %176 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %arrayidx7.i.i, ptr %arrayidx7.i.i, align 4
  %prev.i.i.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 21, i32 2, i32 %i.03.i, i32 1
  %177 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %arrayidx7.i.i, ptr %prev.i.i.i, align 4
  %178 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i.i, align 4
  %call11.i.i = call ptr @kobject_get(ptr noundef %179) #9
  %call12.i.i = call ptr @kobject_create_and_add(ptr noundef nonnull @.str.4, ptr noundef %call11.i.i) #9
  %arrayidx13.i.i = getelementptr %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 19, i32 %i.03.i
  %180 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call12.i.i, ptr %arrayidx13.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool16.not.i.i, label %if.end.i.i56.err_ports.i.i_crit_edge, label %if.end18.i.i

if.end.i.i56.err_ports.i.i_crit_edge:             ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ports.i.i

if.end18.i.i:                                     ; preds = %if.end.i.i56
  %181 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev1, align 8
  %call20.i.i = call i32 @mlx4_get_active_ports(ptr noundef %182, i32 noundef %i.03.i) #9
  %183 = ptrtoint ptr %actv_ports.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %call20.i.i, ptr %actv_ports.sroa.0.i.i, align 4
  %184 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev1, align 8
  %num_ports30.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %185, i32 0, i32 3, i32 2
  %186 = ptrtoint ptr %num_ports30.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_ports30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %187)
  %cmp.not31.i.i = icmp slt i32 %187, 1
  br i1 %cmp.not31.i.i, label %if.end18.i.i.register_one_pkey_tree.exit.i_crit_edge, label %if.end18.i.i.for.body.i.i_crit_edge

if.end18.i.i.for.body.i.i_crit_edge:              ; preds = %if.end18.i.i
  br label %for.body.i.i

if.end18.i.i.register_one_pkey_tree.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %register_one_pkey_tree.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end18.i.i.for.body.i.i_crit_edge
  %port.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.end18.i.i.for.body.i.i_crit_edge ]
  %sub.i.i = add i32 %port.032.i.i, 31
  %188 = ptrtoint ptr %actv_ports.sroa.0.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %actv_ports.sroa.0.i.i.0.actv_ports.sroa.0.i.i.0.actv_ports.sroa.0.i.0.actv_ports.sroa.0.i.0.actv_ports.sroa.0.0.actv_ports.sroa.0.0..i.i = load volatile i32, ptr %actv_ports.sroa.0.i.i, align 4
  %and.i.i.i = and i32 %sub.i.i, 31
  %189 = shl nuw i32 1, %and.i.i.i
  %190 = and i32 %189, %actv_ports.sroa.0.i.i.0.actv_ports.sroa.0.i.i.0.actv_ports.sroa.0.i.0.actv_ports.sroa.0.i.0.actv_ports.sroa.0.0.actv_ports.sroa.0.0..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool24.not.i.i = icmp eq i32 %190, 0
  br i1 %tobool24.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end26.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end26.i.i:                                     ; preds = %for.body.i.i
  %call.i.i.i57 = call i32 @rdma_port_get_link_layer(ptr noundef %dev, i32 noundef %port.032.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i57)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i57, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %191 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %191, i32 noundef 3520, i32 noundef 244) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end26.i.i.err_add.i.i_crit_edge, label %if.end.i.i.i

if.end26.i.i.err_add.i.i_crit_edge:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_add.i.i

if.end.i.i.i:                                     ; preds = %if.end26.i.i
  %dev2.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %dev, ptr %dev2.i.i.i, align 8
  %conv3.i.i.i = trunc i32 %port.032.i.i to i8
  %port_num4.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 7
  %193 = ptrtoint ptr %port_num4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %conv3.i.i.i, ptr %port_num4.i.i.i, align 8
  %slave5.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %194 = ptrtoint ptr %slave5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %i.03.i, ptr %slave5.i.i.i, align 4
  %195 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx13.i.i, align 4
  %call6.i.i.i = call ptr @kobject_get(ptr noundef %196) #9
  %call7.i.i.i = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @port_type, ptr noundef %call6.i.i.i, ptr noundef nonnull @.str.7, i32 noundef %port.032.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end10.i.i.i, label %if.end.i.i.i.add_port.exit.i.i_crit_edge

if.end.i.i.i.add_port.exit.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_port.exit.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %pkey_group.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %197 = ptrtoint ptr %pkey_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @.str.23, ptr %pkey_group.i.i.i, align 4
  %cond.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr @store_port_pkey
  %198 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev1, align 8
  %arrayidx13.i.i.i = getelementptr %struct.mlx4_dev, ptr %199, i32 0, i32 3, i32 9, i32 %port.032.i.i
  %200 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx13.i.i.i, align 4
  %call14.i.i.i = call fastcc ptr @alloc_group_attrs(ptr noundef nonnull @show_port_pkey, ptr noundef %cond.i.i.i, i32 noundef %201) #9
  %attrs.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 3
  %202 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call14.i.i.i, ptr %attrs.i.i.i, align 8
  %tobool18.not.i.i.i = icmp eq ptr %call14.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %if.end10.i.i.i.add_port.exit.i.i_crit_edge, label %if.end20.i.i.i

if.end10.i.i.i.add_port.exit.i.i_crit_edge:       ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_port.exit.i.i

if.end20.i.i.i:                                   ; preds = %if.end10.i.i.i
  %call23.i.i.i = call i32 @sysfs_create_group(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %pkey_group.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.end26.i.i.i, label %if.end20.i.i.i.err_free_pkey.i.i.i_crit_edge

if.end20.i.i.i.err_free_pkey.i.i.i_crit_edge:     ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_pkey.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end20.i.i.i
  %gid_group.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %203 = ptrtoint ptr %gid_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @.str.24, ptr %gid_group.i.i.i, align 8
  %call28.i.i.i = call fastcc ptr @alloc_group_attrs(ptr noundef nonnull @show_port_gid_idx, ptr noundef null, i32 noundef 1) #9
  %attrs30.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 3, i32 3
  %204 = ptrtoint ptr %attrs30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call28.i.i.i, ptr %attrs30.i.i.i, align 4
  %tobool33.not.i.i.i = icmp eq ptr %call28.i.i.i, null
  br i1 %tobool33.not.i.i.i, label %if.end26.i.i.i.err_free_pkey.i.i.i_crit_edge, label %if.end35.i.i.i

if.end26.i.i.i.err_free_pkey.i.i.i_crit_edge:     ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_pkey.i.i.i

if.end35.i.i.i:                                   ; preds = %if.end26.i.i.i
  %call38.i.i.i = call i32 @sysfs_create_group(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %gid_group.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i.i)
  %tobool39.not.i.i.i = icmp eq i32 %call38.i.i.i, 0
  br i1 %tobool39.not.i.i.i, label %if.end41.i.i.i, label %if.end35.i.i.i.err_free_gid.i.i.i_crit_edge

if.end35.i.i.i.err_free_gid.i.i.i_crit_edge:      ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_gid.i.i.i

if.end41.i.i.i:                                   ; preds = %if.end35.i.i.i
  %205 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev2.i.i.i, align 8
  %207 = ptrtoint ptr %port_num4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %port_num4.i.i.i, align 8
  %conv.i11.i.i = zext i8 %208 to i32
  %call.i12.i.i = call i32 @rdma_port_get_link_layer(ptr noundef %206, i32 noundef %conv.i11.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i12.i.i)
  %cmp.i13.i.i = icmp eq i32 %call.i12.i.i, 2
  br i1 %cmp.i13.i.i, label %if.end41.i.i.i.if.end45.i.i.i_crit_edge, label %lor.lhs.false.i18.i.i

if.end41.i.i.i.if.end45.i.i.i_crit_edge:          ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i.i

lor.lhs.false.i18.i.i:                            ; preds = %if.end41.i.i.i
  %209 = ptrtoint ptr %slave5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %slave5.i.i.i, align 4
  %211 = ptrtoint ptr %dev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev2.i.i.i, align 8
  %dev3.i15.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %dev3.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev3.i15.i.i, align 8
  %function.i.i16.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %214, i32 0, i32 3, i32 1
  %215 = ptrtoint ptr %function.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %function.i.i16.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %216)
  %cmp5.i17.i.i = icmp eq i32 %210, %216
  br i1 %cmp5.i17.i.i, label %lor.lhs.false.i18.i.i.if.end45.i.i.i_crit_edge, label %do.body.i.i.i

lor.lhs.false.i18.i.i.if.end45.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i.i

do.body.i.i.i:                                    ; preds = %lor.lhs.false.i18.i.i
  %smi_enabled.i19.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %key.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 0, i32 3
  %217 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @add_vf_smi_entries.__key, ptr %key.i.i.i, align 8
  %show.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 1
  %218 = ptrtoint ptr %show.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @sysfs_show_smi_enabled, ptr %show.i.i.i, align 4
  %store.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 2
  %219 = ptrtoint ptr %store.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %store.i.i.i, align 8
  %220 = ptrtoint ptr %smi_enabled.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.31, ptr %smi_enabled.i19.i.i, align 8
  %mode.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 5, i32 0, i32 1
  %221 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 292, ptr %mode.i.i.i, align 4
  %call.i.i20.i.i = call i32 @sysfs_create_file_ns(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %smi_enabled.i19.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call.i.i20.i.i, 0
  br i1 %tobool16.not.i.i.i, label %do.body23.i.i.i, label %do.end20.i.i.i

do.end20.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call21.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #12
  br label %err_free_gid.i.i.i

do.body23.i.i.i:                                  ; preds = %do.body.i.i.i
  %enable_smi_admin.i21.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %key25.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 3
  %222 = ptrtoint ptr %key25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr @add_vf_smi_entries.__key.34, ptr %key25.i.i.i, align 4
  %show29.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 1
  %223 = ptrtoint ptr %show29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @sysfs_show_enable_smi_admin, ptr %show29.i.i.i, align 8
  %store31.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 2
  %224 = ptrtoint ptr %store31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @sysfs_store_enable_smi_admin, ptr %store31.i.i.i, align 4
  %225 = ptrtoint ptr %enable_smi_admin.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @.str.35, ptr %enable_smi_admin.i21.i.i, align 4
  %mode37.i.i.i = getelementptr inbounds %struct.mlx4_port, ptr %call7.i.i.i.i.i, i32 0, i32 4, i32 0, i32 1
  %226 = ptrtoint ptr %mode37.i.i.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 420, ptr %mode37.i.i.i, align 8
  %call.i76.i.i.i = call i32 @sysfs_create_file_ns(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %enable_smi_admin.i21.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i.i.i)
  %tobool42.not.i.i.i = icmp eq i32 %call.i76.i.i.i, 0
  br i1 %tobool42.not.i.i.i, label %do.body23.i.i.i.if.end45.i.i.i_crit_edge, label %do.end46.i.i.i

do.body23.i.i.i.if.end45.i.i.i_crit_edge:         ; preds = %do.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i.i

do.end46.i.i.i:                                   ; preds = %do.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call48.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33) #12
  call void @sysfs_remove_file_ns(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %smi_enabled.i19.i.i, ptr noundef null) #9
  br label %err_free_gid.i.i.i

if.end45.i.i.i:                                   ; preds = %do.body23.i.i.i.if.end45.i.i.i_crit_edge, %lor.lhs.false.i18.i.i.if.end45.i.i.i_crit_edge, %if.end41.i.i.i.if.end45.i.i.i_crit_edge
  %entry47.i.i.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %227 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry47.i.i.i, ptr noundef %228, ptr noundef %arrayidx7.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i3.i.i, label %if.end45.i.i.i.for.inc.i.i_crit_edge

if.end45.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i.i3.i.i:                                ; preds = %if.end45.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %229 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %entry47.i.i.i, ptr %prev.i.i.i, align 4
  %230 = ptrtoint ptr %entry47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %arrayidx7.i.i, ptr %entry47.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %231 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %228, ptr %prev3.i.i.i.i.i, align 8
  %232 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %232)
  store volatile ptr %entry47.i.i.i, ptr %228, align 4
  br label %for.inc.i.i

err_free_gid.i.i.i:                               ; preds = %do.end46.i.i.i, %do.end20.i.i.i, %if.end35.i.i.i.err_free_gid.i.i.i_crit_edge
  %ret.0.i.i.i = phi i32 [ %call38.i.i.i, %if.end35.i.i.i.err_free_gid.i.i.i_crit_edge ], [ %call.i.i20.i.i, %do.end20.i.i.i ], [ %call.i76.i.i.i, %do.end46.i.i.i ]
  %233 = ptrtoint ptr %attrs30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %attrs30.i.i.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %234, align 4
  call void @kfree(ptr noundef %236) #9
  %237 = ptrtoint ptr %attrs30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %attrs30.i.i.i, align 4
  call void @kfree(ptr noundef %238) #9
  br label %err_free_pkey.i.i.i

err_free_pkey.i.i.i:                              ; preds = %err_free_gid.i.i.i, %if.end26.i.i.i.err_free_pkey.i.i.i_crit_edge, %if.end20.i.i.i.err_free_pkey.i.i.i_crit_edge
  %ret.1.i.i.i = phi i32 [ %call23.i.i.i, %if.end20.i.i.i.err_free_pkey.i.i.i_crit_edge ], [ %ret.0.i.i.i, %err_free_gid.i.i.i ], [ -12, %if.end26.i.i.i.err_free_pkey.i.i.i_crit_edge ]
  %239 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev1, align 8
  %arrayidx57110.i.i.i = getelementptr %struct.mlx4_dev, ptr %240, i32 0, i32 3, i32 9, i32 %port.032.i.i
  %241 = ptrtoint ptr %arrayidx57110.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx57110.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %cmp58111.i.i.i = icmp sgt i32 %242, 0
  br i1 %cmp58111.i.i.i, label %err_free_pkey.i.i.i.for.body.i.i.i_crit_edge, label %err_free_pkey.i.i.i.for.end.i.i.i_crit_edge

err_free_pkey.i.i.i.for.end.i.i.i_crit_edge:      ; preds = %err_free_pkey.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

err_free_pkey.i.i.i.for.body.i.i.i_crit_edge:     ; preds = %err_free_pkey.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %err_free_pkey.i.i.i.for.body.i.i.i_crit_edge
  %i.0112.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %err_free_pkey.i.i.i.for.body.i.i.i_crit_edge ]
  %243 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %attrs.i.i.i, align 8
  %arrayidx62.i.i.i = getelementptr ptr, ptr %244, i32 %i.0112.i.i.i
  %245 = ptrtoint ptr %arrayidx62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx62.i.i.i, align 4
  call void @kfree(ptr noundef %246) #9
  %inc.i.i.i = add nuw nsw i32 %i.0112.i.i.i, 1
  %247 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev1, align 8
  %arrayidx57.i.i.i = getelementptr %struct.mlx4_dev, ptr %248, i32 0, i32 3, i32 9, i32 %port.032.i.i
  %249 = ptrtoint ptr %arrayidx57.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx57.i.i.i, align 4
  %cmp58.i.i.i = icmp slt i32 %inc.i.i.i, %250
  br i1 %cmp58.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.end.i.i.i_crit_edge

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %err_free_pkey.i.i.i.for.end.i.i.i_crit_edge
  %251 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %attrs.i.i.i, align 8
  call void @kfree(ptr noundef %252) #9
  br label %add_port.exit.i.i

add_port.exit.i.i:                                ; preds = %for.end.i.i.i, %if.end10.i.i.i.add_port.exit.i.i_crit_edge, %if.end.i.i.i.add_port.exit.i.i_crit_edge
  %ret.2.i.i.i = phi i32 [ %call7.i.i.i, %if.end.i.i.i.add_port.exit.i.i_crit_edge ], [ %ret.1.i.i.i, %for.end.i.i.i ], [ -12, %if.end10.i.i.i.add_port.exit.i.i_crit_edge ]
  %253 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx13.i.i, align 4
  call void @kobject_put(ptr noundef %254) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %ret.2.i.i.i, 0
  br i1 %tobool28.not.i.i, label %add_port.exit.i.i.for.inc.i.i_crit_edge, label %add_port.exit.i.i.err_add.i.i_crit_edge

add_port.exit.i.i.err_add.i.i_crit_edge:          ; preds = %add_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_add.i.i

add_port.exit.i.i.for.inc.i.i_crit_edge:          ; preds = %add_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %add_port.exit.i.i.for.inc.i.i_crit_edge, %if.end.i.i.i3.i.i, %if.end45.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add i32 %port.032.i.i, 1
  %255 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev1, align 8
  %num_ports.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %256, i32 0, i32 3, i32 2
  %257 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %num_ports.i.i, align 4
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %258
  br i1 %cmp.not.i.i, label %for.inc.i.i.register_one_pkey_tree.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.register_one_pkey_tree.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %register_one_pkey_tree.exit.i

err_add.i.i:                                      ; preds = %add_port.exit.i.i.err_add.i.i_crit_edge, %if.end26.i.i.err_add.i.i_crit_edge
  %259 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx7.i.i, align 8
  %cmp45.not37.i.i = icmp eq ptr %260, %arrayidx7.i.i
  br i1 %cmp45.not37.i.i, label %err_add.i.i.for.end57.i.i_crit_edge, label %err_add.i.i.for.body46.i.i_crit_edge

err_add.i.i.for.body46.i.i_crit_edge:             ; preds = %err_add.i.i
  br label %for.body46.i.i

err_add.i.i.for.end57.i.i_crit_edge:              ; preds = %err_add.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57.i.i

for.body46.i.i:                                   ; preds = %remove_vf_smi_entries.exit.i.i.for.body46.i.i_crit_edge, %err_add.i.i.for.body46.i.i_crit_edge
  %.pn.in38.i.i = phi ptr [ %.pn.i.i, %remove_vf_smi_entries.exit.i.i.for.body46.i.i_crit_edge ], [ %260, %err_add.i.i.for.body46.i.i_crit_edge ]
  %p.0.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 -4
  %261 = ptrtoint ptr %.pn.in38.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %.pn.i.i = load ptr, ptr %.pn.in38.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body46.i.i.list_del.exit.i.i_crit_edge

for.body46.i.i.list_del.exit.i.i_crit_edge:       ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i4.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38.i.i, i32 0, i32 1
  %262 = ptrtoint ptr %prev.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %prev.i.i4.i.i, align 4
  %264 = ptrtoint ptr %.pn.in38.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %.pn.in38.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %263, ptr %prev1.i.i.i.i.i, align 4
  %267 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %267)
  store volatile ptr %265, ptr %263, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body46.i.i.list_del.exit.i.i_crit_edge
  %268 = ptrtoint ptr %.pn.in38.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in38.i.i, align 4
  %prev.i5.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in38.i.i, i32 0, i32 1
  %269 = ptrtoint ptr %prev.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i5.i.i, align 4
  %pkey_group.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 136
  call void @sysfs_remove_group(ptr noundef %p.0.i.i, ptr noundef %pkey_group.i.i) #9
  %gid_group.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 156
  call void @sysfs_remove_group(ptr noundef %p.0.i.i, ptr noundef %gid_group.i.i) #9
  %dev.i.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 132
  %270 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev.i.i.i, align 4
  %port_num.i.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 236
  %272 = ptrtoint ptr %port_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %port_num.i.i.i, align 4
  %conv.i.i.i = zext i8 %273 to i32
  %call.i6.i.i = call i32 @rdma_port_get_link_layer(ptr noundef %271, i32 noundef %conv.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i6.i.i)
  %cmp.i7.i.i = icmp eq i32 %call.i6.i.i, 2
  br i1 %cmp.i7.i.i, label %list_del.exit.i.i.remove_vf_smi_entries.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

list_del.exit.i.i.remove_vf_smi_entries.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_vf_smi_entries.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %list_del.exit.i.i
  %slave.i.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 232
  %274 = ptrtoint ptr %slave.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %slave.i.i.i, align 4
  %276 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev.i.i.i, align 4
  %dev3.i.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %dev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev3.i.i.i, align 8
  %function.i.i.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %279, i32 0, i32 3, i32 1
  %280 = ptrtoint ptr %function.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %function.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %281)
  %cmp5.i.i.i = icmp eq i32 %275, %281
  br i1 %cmp5.i.i.i, label %lor.lhs.false.i.i.i.remove_vf_smi_entries.exit.i.i_crit_edge, label %if.end.i8.i.i

lor.lhs.false.i.i.i.remove_vf_smi_entries.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_vf_smi_entries.exit.i.i

if.end.i8.i.i:                                    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %smi_enabled.i.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 204
  call void @sysfs_remove_file_ns(ptr noundef %p.0.i.i, ptr noundef %smi_enabled.i.i.i, ptr noundef null) #9
  %enable_smi_admin.i.i.i = getelementptr i8, ptr %.pn.in38.i.i, i32 176
  call void @sysfs_remove_file_ns(ptr noundef %p.0.i.i, ptr noundef %enable_smi_admin.i.i.i, ptr noundef null) #9
  br label %remove_vf_smi_entries.exit.i.i

remove_vf_smi_entries.exit.i.i:                   ; preds = %if.end.i8.i.i, %lor.lhs.false.i.i.i.remove_vf_smi_entries.exit.i.i_crit_edge, %list_del.exit.i.i.remove_vf_smi_entries.exit.i.i_crit_edge
  call void @kobject_put(ptr noundef %p.0.i.i) #9
  %cmp45.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx7.i.i
  br i1 %cmp45.not.i.i, label %remove_vf_smi_entries.exit.i.i.for.end57.i.i_crit_edge, label %remove_vf_smi_entries.exit.i.i.for.body46.i.i_crit_edge

remove_vf_smi_entries.exit.i.i.for.body46.i.i_crit_edge: ; preds = %remove_vf_smi_entries.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46.i.i

remove_vf_smi_entries.exit.i.i.for.end57.i.i_crit_edge: ; preds = %remove_vf_smi_entries.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end57.i.i

for.end57.i.i:                                    ; preds = %remove_vf_smi_entries.exit.i.i.for.end57.i.i_crit_edge, %err_add.i.i.for.end57.i.i_crit_edge
  %282 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx13.i.i, align 4
  call void @kobject_put(ptr noundef %283) #9
  br label %err_ports.i.i

err_ports.i.i:                                    ; preds = %for.end57.i.i, %if.end.i.i56.err_ports.i.i_crit_edge
  %284 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx.i.i, align 4
  call void @kobject_put(ptr noundef %285) #9
  %286 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i.i, align 4
  call void @kobject_put(ptr noundef %287) #9
  br label %fail_dev.i.i

fail_dev.i.i:                                     ; preds = %err_ports.i.i, %get_name.exit.i.i.fail_dev.i.i_crit_edge
  %288 = ptrtoint ptr %iov_parent to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %iov_parent, align 4
  call void @kobject_put(ptr noundef %289) #9
  br label %register_one_pkey_tree.exit.i

register_one_pkey_tree.exit.i:                    ; preds = %fail_dev.i.i, %for.inc.i.i.register_one_pkey_tree.exit.i_crit_edge, %if.end18.i.i.register_one_pkey_tree.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actv_ports.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i49) #9
  %inc.i58 = add i32 %i.03.i, 1
  %290 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev1, align 8
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %291, align 8
  %num_vfs.i = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %293, i32 0, i32 3
  %294 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %num_vfs.i, align 4
  %cmp.not.i = icmp sgt i32 %inc.i58, %295
  br i1 %cmp.not.i, label %register_one_pkey_tree.exit.i.cleanup_crit_edge, label %register_one_pkey_tree.exit.i.for.body.i53_crit_edge

register_one_pkey_tree.exit.i.for.body.i53_crit_edge: ; preds = %register_one_pkey_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i53

register_one_pkey_tree.exit.i.cleanup_crit_edge:  ; preds = %register_one_pkey_tree.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_add_entries:                                  ; preds = %kobj_create_err.i, %if.end.i.err_add_entries_crit_edge, %for.body.err_add_entries_crit_edge
  %ret.7.i = phi i32 [ %ret.6.i, %kobj_create_err.i ], [ %call.i, %for.body.err_add_entries_crit_edge ], [ -12, %if.end.i.err_add_entries_crit_edge ]
  %call120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %i.0, i32 noundef %ret.7.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr.i) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buff.i) #9
  %296 = ptrtoint ptr %ports_parent to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ports_parent, align 8
  call void @kobject_put(ptr noundef %297) #9
  br label %err_ports

err_ports:                                        ; preds = %err_add_entries, %if.end6.err_ports_crit_edge
  %ret.1 = phi i32 [ %ret.7.i, %err_add_entries ], [ -12, %if.end6.err_ports_crit_edge ]
  %298 = ptrtoint ptr %iov_parent to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %iov_parent, align 4
  call void @kobject_put(ptr noundef %299) #9
  br label %do.end

do.end:                                           ; preds = %err_ports, %if.end.do.end_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_ports ], [ -12, %if.end.do.end_crit_edge ]
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %ret.2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %register_one_pkey_tree.exit.i.cleanup_crit_edge, %for.cond.preheader.i52.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.i52.cleanup_crit_edge ], [ 0, %register_one_pkey_tree.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_device_unregister_sysfs(ptr noundef readonly %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.unregister_alias_guid_tree.exit_crit_edge, label %for.cond.preheader.i

entry.unregister_alias_guid_tree.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister_alias_guid_tree.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_ports22.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %num_ports22.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.i = icmp sgt i32 %5, 0
  br i1 %cmp23.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.unregister_alias_guid_tree.exit_crit_edge

for.cond.preheader.i.unregister_alias_guid_tree.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister_alias_guid_tree.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %admin_alias_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %i.024.i, i32 7
  %6 = ptrtoint ptr %admin_alias_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %admin_alias_parent.i, align 4
  tail call void @kobject_put(ptr noundef %7) #9
  %gids_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %i.024.i, i32 8
  %8 = ptrtoint ptr %gids_parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gids_parent.i, align 8
  tail call void @kobject_put(ptr noundef %9) #9
  %pkeys_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %i.024.i, i32 9
  %10 = ptrtoint ptr %pkeys_parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pkeys_parent.i, align 4
  tail call void @kobject_put(ptr noundef %11) #9
  %mcgs_parent.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %i.024.i, i32 10
  %12 = ptrtoint ptr %mcgs_parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcgs_parent.i, align 8
  tail call void @kobject_put(ptr noundef %13) #9
  %cur_port.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %i.024.i, i32 6
  %14 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_port.i, align 8
  tail call void @kobject_put(ptr noundef %15) #9
  %16 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_port.i, align 8
  tail call void @kobject_put(ptr noundef %17) #9
  %18 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_port.i, align 8
  tail call void @kobject_put(ptr noundef %19) #9
  %20 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_port.i, align 8
  tail call void @kobject_put(ptr noundef %21) #9
  %22 = ptrtoint ptr %cur_port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_port.i, align 8
  tail call void @kobject_put(ptr noundef %23) #9
  %dev6.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %i.024.i, i32 2
  %24 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev6.i, align 8
  %ports_parent.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %25, i32 0, i32 18
  %26 = ptrtoint ptr %ports_parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports_parent.i, align 8
  tail call void @kobject_put(ptr noundef %27) #9
  %dentr_ar.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 20, i32 %i.024.i, i32 4
  %28 = ptrtoint ptr %dentr_ar.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dentr_ar.i, align 4
  tail call void @kfree(ptr noundef %29) #9
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %num_ports.i = getelementptr inbounds %struct.mlx4_dev, ptr %31, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_ports.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.unregister_alias_guid_tree.exit_crit_edge

for.body.i.unregister_alias_guid_tree.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister_alias_guid_tree.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

unregister_alias_guid_tree.exit:                  ; preds = %for.body.i.unregister_alias_guid_tree.exit_crit_edge, %for.cond.preheader.i.unregister_alias_guid_tree.exit_crit_edge, %entry.unregister_alias_guid_tree.exit_crit_edge
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  %flags.i.i7 = getelementptr inbounds %struct.mlx4_dev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i.i7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i7, align 4
  %and.i.i8 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i8)
  %tobool.not.i9 = icmp eq i32 %and.i.i8, 0
  br i1 %tobool.not.i9, label %unregister_alias_guid_tree.exit.unregister_pkey_tree.exit_crit_edge, label %if.end.i

unregister_alias_guid_tree.exit.unregister_pkey_tree.exit_crit_edge: ; preds = %unregister_alias_guid_tree.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister_pkey_tree.exit

if.end.i:                                         ; preds = %unregister_alias_guid_tree.exit
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 8
  %num_vfs.i = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp63.i = icmp sgt i32 %41, -1
  br i1 %cmp63.i, label %for.body.lr.ph.i, label %if.end.i.unregister_pkey_tree.exit_crit_edge

if.end.i.unregister_pkey_tree.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister_pkey_tree.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %iov_parent.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %device, i32 0, i32 17
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.end.i.for.body.i10_crit_edge, %for.body.lr.ph.i
  %slave.064.i = phi i32 [ %41, %for.body.lr.ph.i ], [ %dec.i, %for.end.i.for.body.i10_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 21, i32 2, i32 %slave.064.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 8
  %cmp12.not61.i = icmp eq ptr %43, %arrayidx.i
  br i1 %cmp12.not61.i, label %for.body.i10.for.end.i_crit_edge, label %for.body13.lr.ph.i

for.body.i10.for.end.i_crit_edge:                 ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body13.lr.ph.i:                               ; preds = %for.body.i10
  %arrayidx18.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 19, i32 %slave.064.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %remove_vf_smi_entries.exit.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %.pn.in62.i = phi ptr [ %43, %for.body13.lr.ph.i ], [ %.pn.i, %remove_vf_smi_entries.exit.i.for.body13.i_crit_edge ]
  %p.0.i = getelementptr i8, ptr %.pn.in62.i, i32 -4
  %44 = ptrtoint ptr %.pn.in62.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn.in62.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in62.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body13.i.list_del.exit.i_crit_edge

for.body13.i.list_del.exit.i_crit_edge:           ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %.pn.in62.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn.in62.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body13.i.list_del.exit.i_crit_edge
  %51 = ptrtoint ptr %.pn.in62.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in62.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pkey_group.i = getelementptr i8, ptr %.pn.in62.i, i32 136
  tail call void @sysfs_remove_group(ptr noundef %p.0.i, ptr noundef %pkey_group.i) #9
  %gid_group.i = getelementptr i8, ptr %.pn.in62.i, i32 156
  tail call void @sysfs_remove_group(ptr noundef %p.0.i, ptr noundef %gid_group.i) #9
  %dev.i.i = getelementptr i8, ptr %.pn.in62.i, i32 132
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %port_num.i.i = getelementptr i8, ptr %.pn.in62.i, i32 236
  %55 = ptrtoint ptr %port_num.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %port_num.i.i, align 4
  %conv.i.i = zext i8 %56 to i32
  %call.i.i = tail call i32 @rdma_port_get_link_layer(ptr noundef %54, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.i.i, label %list_del.exit.i.remove_vf_smi_entries.exit.i_crit_edge, label %lor.lhs.false.i.i

list_del.exit.i.remove_vf_smi_entries.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_vf_smi_entries.exit.i

lor.lhs.false.i.i:                                ; preds = %list_del.exit.i
  %slave.i.i = getelementptr i8, ptr %.pn.in62.i, i32 232
  %57 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %slave.i.i, align 4
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev3.i.i, align 8
  %function.i.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %62, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %function.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %function.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %64)
  %cmp5.i.i = icmp eq i32 %58, %64
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.remove_vf_smi_entries.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.remove_vf_smi_entries.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_vf_smi_entries.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %smi_enabled.i.i = getelementptr i8, ptr %.pn.in62.i, i32 204
  tail call void @sysfs_remove_file_ns(ptr noundef %p.0.i, ptr noundef %smi_enabled.i.i, ptr noundef null) #9
  %enable_smi_admin.i.i = getelementptr i8, ptr %.pn.in62.i, i32 176
  tail call void @sysfs_remove_file_ns(ptr noundef %p.0.i, ptr noundef %enable_smi_admin.i.i, ptr noundef null) #9
  br label %remove_vf_smi_entries.exit.i

remove_vf_smi_entries.exit.i:                     ; preds = %if.end.i.i, %lor.lhs.false.i.i.remove_vf_smi_entries.exit.i_crit_edge, %list_del.exit.i.remove_vf_smi_entries.exit.i_crit_edge
  tail call void @kobject_put(ptr noundef %p.0.i) #9
  %65 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx18.i, align 4
  tail call void @kobject_put(ptr noundef %66) #9
  %cmp12.not.i = icmp eq ptr %.pn.i, %arrayidx.i
  br i1 %cmp12.not.i, label %remove_vf_smi_entries.exit.i.for.end.i_crit_edge, label %remove_vf_smi_entries.exit.i.for.body13.i_crit_edge

remove_vf_smi_entries.exit.i.for.body13.i_crit_edge: ; preds = %remove_vf_smi_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13.i

remove_vf_smi_entries.exit.i.for.end.i_crit_edge: ; preds = %remove_vf_smi_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %remove_vf_smi_entries.exit.i.for.end.i_crit_edge, %for.body.i10.for.end.i_crit_edge
  %arrayidx25.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 19, i32 %slave.064.i
  %67 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx25.i, align 4
  tail call void @kobject_put(ptr noundef %68) #9
  %arrayidx27.i = getelementptr %struct.mlx4_ib_dev, ptr %device, i32 0, i32 21, i32 3, i32 %slave.064.i
  %69 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx27.i, align 4
  tail call void @kobject_put(ptr noundef %70) #9
  %71 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx27.i, align 4
  tail call void @kobject_put(ptr noundef %72) #9
  %73 = ptrtoint ptr %iov_parent.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iov_parent.i, align 4
  tail call void @kobject_put(ptr noundef %74) #9
  %dec.i = add nsw i32 %slave.064.i, -1
  %cmp.i11 = icmp sgt i32 %slave.064.i, 0
  br i1 %cmp.i11, label %for.end.i.for.body.i10_crit_edge, label %for.end.i.unregister_pkey_tree.exit_crit_edge

for.end.i.unregister_pkey_tree.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unregister_pkey_tree.exit

for.end.i.for.body.i10_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i10

unregister_pkey_tree.exit:                        ; preds = %for.end.i.unregister_pkey_tree.exit_crit_edge, %if.end.i.unregister_pkey_tree.exit_crit_edge, %unregister_alias_guid_tree.exit.unregister_pkey_tree.exit_crit_edge
  %ports_parent = getelementptr inbounds %struct.mlx4_ib_dev, ptr %device, i32 0, i32 18
  %75 = ptrtoint ptr %ports_parent to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ports_parent, align 8
  tail call void @kobject_put(ptr noundef %76) #9
  %iov_parent = getelementptr inbounds %struct.mlx4_ib_dev, ptr %device, i32 0, i32 17
  %77 = ptrtoint ptr %iov_parent to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iov_parent, align 4
  tail call void @kobject_put(ptr noundef %78) #9
  %79 = ptrtoint ptr %iov_parent to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iov_parent, align 4
  tail call void @kobject_put(ptr noundef %80) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_ib_query_port(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_admin_alias_guid(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %entry_num = getelementptr i8, ptr %attr, i32 -20
  %6 = ptrtoint ptr %entry_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_num, align 4
  %num = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num, align 4
  %conv = zext i8 %9 to i32
  %call = tail call i64 @mlx4_get_admin_guid(ptr noundef %5, i32 noundef %7, i32 noundef %conv) #9
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i64 noundef %call) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_admin_alias_guid(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #0 align 64 {
entry:
  %sysadmin_ag_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sysadmin_ag_val) #9
  %4 = ptrtoint ptr %sysadmin_ag_val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %sysadmin_ag_val, align 8, !annotation !102
  %entry_num = getelementptr i8, ptr %attr, i32 -20
  %5 = ptrtoint ptr %entry_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %entry_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %do.end, label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rem = and i32 %6, 7
  %div76 = lshr i32 %6, 3
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 11, i32 4
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 11, i32 4, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #9
  %call15 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef nonnull %sysadmin_ag_val)
  %8 = ptrtoint ptr %sysadmin_ag_val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sysadmin_ag_val, align 8
  %num = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num, align 4
  %conv18 = zext i8 %11 to i32
  %sub = add nsw i32 %conv18, -1
  %arrayidx = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub
  %arrayidx19 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %div76
  %mul = shl nuw nsw i32 %rem, 3
  %arrayidx20 = getelementptr [64 x i8], ptr %arrayidx19, i32 0, i32 %mul
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %9, ptr %arrayidx20, align 1
  %13 = load i8, ptr %num, align 4
  %conv25 = zext i8 %13 to i32
  %sub26 = add nsw i32 %conv25, -1
  %arrayidx27 = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub26
  %status = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx27, i32 0, i32 %div76, i32 2
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %status, align 8
  %dev30 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev30, align 8
  %17 = load i64, ptr %sysadmin_ag_val, align 8
  %18 = ptrtoint ptr %entry_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %entry_num, align 4
  %20 = load i8, ptr %num, align 4
  %conv33 = zext i8 %20 to i32
  call void @mlx4_set_admin_guid(ptr noundef %16, i64 noundef %17, i32 noundef %19, i32 noundef %conv33) #9
  %call34 = call i64 @mlx4_ib_get_aguid_comp_mask_from_ix(i32 noundef %rem) #9
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num, align 4
  %conv39 = zext i8 %22 to i32
  %sub40 = add nsw i32 %conv39, -1
  %arrayidx41 = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub40
  %guid_indexes = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx41, i32 0, i32 %div76, i32 1
  %23 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %guid_indexes, align 8
  %or = or i64 %24, %call34
  store i64 %or, ptr %guid_indexes, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call10) #9
  %25 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num, align 4
  %conv48 = zext i8 %26 to i32
  %sub49 = add nsw i32 %conv48, -1
  call void @mlx4_ib_init_alias_guid_work(ptr noundef %3, i32 noundef %sub49) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sysadmin_ag_val) #9
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_gid(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %gid = alloca %union.ib_gid, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid) #9
  %num = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %gid, i32 255, i32 16)
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num, align 4
  %conv = zext i8 %6 to i32
  %entry_num = getelementptr i8, ptr %attr, i32 -20
  %7 = ptrtoint ptr %entry_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entry_num, align 4
  %call = call i32 @__mlx4_ib_query_gid(ptr noundef %3, i32 noundef %conv, i32 noundef %8, ptr noundef nonnull %gid, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = getelementptr inbounds %struct.anon.159, ptr %gid, i32 0, i32 1
  %10 = ptrtoint ptr %gid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gid, align 8
  %conv2 = zext i16 %11 to i32
  %arrayidx3 = getelementptr inbounds i16, ptr %gid, i32 1
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %13 to i32
  %arrayidx5 = getelementptr inbounds i16, ptr %gid, i32 2
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx5, align 4
  %conv6 = zext i16 %15 to i32
  %arrayidx7 = getelementptr inbounds i16, ptr %gid, i32 3
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %17 to i32
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %9, align 8
  %conv10 = zext i16 %19 to i32
  %arrayidx11 = getelementptr inbounds i16, ptr %gid, i32 5
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx11, align 2
  %conv12 = zext i16 %21 to i32
  %arrayidx13 = getelementptr inbounds i16, ptr %gid, i32 6
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx13, align 4
  %conv14 = zext i16 %23 to i32
  %arrayidx15 = getelementptr inbounds i16, ptr %gid, i32 7
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx15, align 2
  %conv16 = zext i16 %25 to i32
  %call17 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_phys_port_pkey(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %pkey = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey) #9
  %4 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %pkey, align 2, !annotation !102
  %num = getelementptr inbounds %struct.mlx4_ib_iov_port, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num, align 4
  %conv = zext i8 %6 to i32
  %entry_num = getelementptr i8, ptr %attr, i32 -20
  %7 = ptrtoint ptr %entry_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entry_num, align 4
  %conv2 = trunc i32 %8 to i16
  %call = call i32 @__mlx4_ib_query_pkey(ptr noundef %3, i32 noundef %conv, i16 noundef zeroext %conv2, ptr noundef nonnull %pkey, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pkey, align 2
  %conv3 = zext i16 %10 to i32
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_get_admin_guid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_set_admin_guid(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_ib_get_aguid_comp_mask_from_ix(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_init_alias_guid_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_ib_query_gid(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_ib_query_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_active_ports(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_group_attrs(ptr noundef %show, ptr noundef %store, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 1
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #9
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !103

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp64 = icmp sgt i32 %len, 0
  br i1 %cmp64, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool15.not = icmp eq ptr %store, null
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end24.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %for.body.err_crit_edge, label %if.end4

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end4:                                          ; preds = %for.body
  %name = getelementptr inbounds %struct.port_table_attribute, ptr %call7.i.i, i32 0, i32 1
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 8, ptr noundef nonnull @.str.7, i32 noundef %i.065)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call5)
  %cmp6 = icmp ugt i32 %call5, 7
  br i1 %cmp6, label %if.then7, label %do.body

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %err

do.body:                                          ; preds = %if.end4
  %key = getelementptr inbounds %struct.attribute, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @alloc_group_attrs.__key, ptr %key, align 8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %call7.i.i, align 8
  br i1 %tobool15.not, label %do.body.if.end24_crit_edge, label %if.then16

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %store20 = getelementptr inbounds %struct.port_attribute, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %store20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %store, ptr %store20, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %do.body.if.end24_crit_edge
  %.sink = phi i16 [ 420, %if.then16 ], [ 292, %do.body.if.end24_crit_edge ]
  %7 = getelementptr inbounds %struct.attribute, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink, ptr %7, align 4
  %show26 = getelementptr inbounds %struct.port_attribute, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %show26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %show, ptr %show26, align 4
  %index = getelementptr inbounds %struct.port_table_attribute, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.065, ptr %index, align 4
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.065
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %if.end24.cleanup_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %if.then7, %for.body.err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp2967.not = icmp eq i32 %i.065, 0
  br i1 %cmp2967.not, label %err.while.end_crit_edge, label %err.while.body_crit_edge

err.while.body_crit_edge:                         ; preds = %err
  br label %while.body

err.while.end_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err.while.body_crit_edge
  %dec68.in = phi i32 [ %dec68, %while.body.while.body_crit_edge ], [ %i.065, %err.while.body_crit_edge ]
  %dec68 = add nsw i32 %dec68.in, -1
  %arrayidx30 = getelementptr ptr, ptr %call8.i.i, i32 %dec68
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx30, align 4
  tail call void @kfree(ptr noundef %13) #9
  %cmp29 = icmp sgt i32 %dec68.in, 1
  br i1 %cmp29, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end24.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call8.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call8.i.i, %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_pkey(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 21
  %slave = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slave, align 4
  %port_num = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_num, align 4
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -1
  %index = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %arrayidx2 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %3, i32 %sub, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %9 to i32
  %dev5 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 8
  %arrayidx7 = getelementptr %struct.mlx4_dev, ptr %11, i32 0, i32 3, i32 9, i32 %conv
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv3)
  %cmp.not = icmp sgt i32 %13, %conv3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_port_pkey(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idx, align 4, !annotation !102
  %slave = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 6
  %1 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %slave, align 4
  %dev = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %6, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp = icmp eq i32 %2, %8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %port_num = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 7
  %9 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_num, align 4
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %6, i32 0, i32 4, i32 1, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %12, -1
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %idx, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end
  %call6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 1
  br i1 %cmp7.not, label %lor.lhs.false, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9, align 8
  %port_num10 = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 7
  %20 = ptrtoint ptr %port_num10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_num10, align 4
  %idxprom11 = zext i8 %21 to i32
  %arrayidx12 = getelementptr %struct.mlx4_dev, ptr %19, i32 0, i32 3, i32 9, i32 %idxprom11
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %23)
  %cmp13.not = icmp sge i32 %15, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15 = icmp slt i32 %15, 0
  %or.cond = or i1 %cmp15, %cmp13.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %if.then3
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 4
  %conv = trunc i32 %25 to i8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slave, align 4
  %port_num22 = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 7
  %30 = ptrtoint ptr %port_num22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_num22, align 4
  %conv23 = zext i8 %31 to i32
  %sub24 = add nsw i32 %conv23, -1
  %index = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 2
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %arrayidx26 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %29, i32 %sub24, i32 %33
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %arrayidx26, align 1
  %35 = load ptr, ptr %dev, align 4
  %dev28 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev28, align 8
  %38 = load i32, ptr %slave, align 4
  %39 = load i8, ptr %port_num22, align 4
  %conv31 = zext i8 %39 to i32
  %40 = load i32, ptr %index, align 4
  %41 = load i32, ptr %idx, align 4
  call void @mlx4_sync_pkey_table(ptr noundef %37, i32 noundef %38, i32 noundef %conv31, i32 noundef %40, i32 noundef %41) #9
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %dev34 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev34, align 8
  %46 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %slave, align 4
  %48 = ptrtoint ptr %port_num22 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port_num22, align 4
  %call37 = call i32 @mlx4_gen_pkey_eqe(ptr noundef %45, i32 noundef %47, i8 noundef zeroext %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end18.cleanup_crit_edge, label %do.end

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %slave, align 4
  %52 = ptrtoint ptr %port_num22 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %port_num22, align 4
  %conv43 = zext i8 %53 to i32
  %54 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %idx, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %51, i32 noundef %conv43, i32 noundef %55) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %count, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_gid_idx(ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave = getelementptr inbounds %struct.mlx4_port, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slave, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_port_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.mlx4_port, ptr %kobj, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not23 = icmp eq ptr %3, null
  br i1 %tobool.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %8, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %4) #9
  %inc = add i32 %i.024, 1
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %inc
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa22 = phi ptr [ %1, %entry.for.end_crit_edge ], [ %6, %for.body.for.end_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa22) #9
  %attrs4 = getelementptr inbounds %struct.mlx4_port, ptr %kobj, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %attrs4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attrs4, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool6.not25 = icmp eq ptr %12, null
  br i1 %tobool6.not25, label %for.end.for.end10_crit_edge, label %for.end.for.body7_crit_edge

for.end.for.body7_crit_edge:                      ; preds = %for.end
  br label %for.body7

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end.for.body7_crit_edge
  %13 = phi ptr [ %17, %for.body7.for.body7_crit_edge ], [ %12, %for.end.for.body7_crit_edge ]
  %i.126 = phi i32 [ %inc9, %for.body7.for.body7_crit_edge ], [ 0, %for.end.for.body7_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %13) #9
  %inc9 = add i32 %i.126, 1
  %14 = ptrtoint ptr %attrs4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attrs4, align 4
  %arrayidx5 = getelementptr ptr, ptr %15, i32 %inc9
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %for.body7.for.end10_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.body7.for.end10_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end10

for.end10:                                        ; preds = %for.body7.for.end10_crit_edge, %for.end.for.end10_crit_edge
  %.lcssa = phi ptr [ %10, %for.end.for.end10_crit_edge ], [ %15, %for.body7.for.end10_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #9
  tail call void @kfree(ptr noundef %kobj) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.port_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.port_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %size) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_sync_pkey_table(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_gen_pkey_eqe(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_show_smi_enabled(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %attr, i32 -72
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %slave = getelementptr i8, ptr %attr, i32 28
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slave, align 4
  %port_num = getelementptr i8, ptr %attr, i32 32
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 4
  %conv = zext i8 %7 to i32
  %call = tail call i32 @mlx4_vf_smi_enabled(ptr noundef %3, i32 noundef %5, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %lnot.ext) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_show_enable_smi_admin(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %attr, i32 -44
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %slave = getelementptr i8, ptr %attr, i32 56
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slave, align 4
  %port_num = getelementptr i8, ptr %attr, i32 60
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 4
  %conv = zext i8 %7 to i32
  %call = tail call i32 @mlx4_vf_get_enable_smi_admin(ptr noundef %3, i32 noundef %5, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %lnot.ext = zext i1 %tobool to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %lnot.ext) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_store_enable_smi_admin(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #9
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enable, align 4, !annotation !102
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef nonnull %enable)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr i8, ptr %attr, i32 -44
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %dev5 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 8
  %slave = getelementptr i8, ptr %attr, i32 56
  %8 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slave, align 4
  %port_num = getelementptr i8, ptr %attr, i32 60
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_num, align 4
  %conv = zext i8 %11 to i32
  %call6 = call i32 @mlx4_vf_set_enable_smi_admin(ptr noundef %7, i32 noundef %9, i32 noundef %conv, i32 noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  %count. = select i1 %tobool.not, i32 %count, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %count., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_vf_smi_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_vf_get_enable_smi_admin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_vf_set_enable_smi_admin(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83, !84, !85, !87, !89, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 210, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @add_sysfs_port_mcg_attr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @add_sysfs_port_mcg_attr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 807, i32 43}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 813, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 837, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlx4_ib_device_register_sysfs._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx4_ib_device_register_sysfs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 253, i32 16}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 261, i32 52}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 278, i32 45}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 298, i32 26}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 317, i32 26}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 351, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @add_port_entries._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @add_port_entries._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @create_sysfs_entry.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 180, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 184, i32 30}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 194, i32 3}
!36 = !{ptr @create_sysfs_entry._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @create_sysfs_entry._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 59, i32 25}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 84, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @store_admin_alias_guid._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @store_admin_alias_guid._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 88, i32 14}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 129, i32 25}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 156, i32 25}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 362, i32 22}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 647, i32 24}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 661, i32 23}
!57 = !{ptr @port_type, !58, !"port_type", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 430, i32 25}
!59 = !{ptr @port_sysfs_ops, !60, !"port_sysfs_ops", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 425, i32 31}
!61 = !{ptr @alloc_group_attrs.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 517, i32 3}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 450, i32 26}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 451, i32 25}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 466, i32 24}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 468, i32 23}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 479, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @store_port_pkey._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @store_port_pkey._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @add_vf_smi_entries.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 588, i32 2}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 591, i32 29}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 595, i32 3}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @add_vf_smi_entries._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @add_vf_smi_entries._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @add_vf_smi_entries.__key.34, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 599, i32 2}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 602, i32 34}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/mlx4/sysfs.c", i32 606, i32 3}
!91 = !{ptr @add_vf_smi_entries._entry.36, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @add_vf_smi_entries._entry_ptr.38, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{!"branch_weights", i32 1, i32 2000}
