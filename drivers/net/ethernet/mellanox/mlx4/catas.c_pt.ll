; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/catas.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/catas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.122, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.122 = type { ptr }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.112 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.112 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.mlx4_sense = type { ptr, [3 x i8], [3 x i8], %struct.delayed_work }
%struct.mlx4_msix_ctl = type { [4 x i32], %struct.mutex }
%struct.mlx4_port_map = type { i8, i8 }
%struct.mlx4_comm = type { i32, i32 }

@mlx4_internal_err_reset = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_internal_err_reset = internal constant [29 x i8] c"mlx4_core.internal_err_reset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_internal_err_reset = internal constant %struct.kernel_param { ptr @__param_str_internal_err_reset, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @mlx4_internal_err_reset } }, section "__param", align 4
@__UNIQUE_ID_internal_err_resettype345 = internal constant [42 x i8] c"mlx4_core.parmtype=internal_err_reset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_internal_err_reset346 = internal constant [90 x i8] c"mlx4_core.parm=internal_err_reset:Reset device on internal errors if non-zero (default 1)\00", section ".modinfo", align 1
@mlx4_enter_error_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"device is going to be reset\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx4_enter_error_state\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlx4/catas.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_enter_error_state._entry_ptr = internal global ptr @mlx4_enter_error_state._entry, section ".printk_index", align 4
@mlx4_enter_error_state._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"device was reset successfully\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx4_enter_error_state._entry_ptr.7 = internal global ptr @mlx4_enter_error_state._entry.5, section ".printk_index", align 4
@mlx4_start_catas_poll.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&priv->catas_err.timer)\00", [39 x i8] zeroinitializer }, align 32
@mlx4_start_catas_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 289, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to map internal error buffer at 0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx4_start_catas_poll\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx4_start_catas_poll._entry_ptr = internal global ptr @mlx4_start_catas_poll._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx4_catas_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&dev->persist->catas_work)\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx4_health\00", [20 x i8] zeroinitializer }, align 32
@mlx4_reset_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VF reset is not needed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx4_reset_slave\00", [47 x i8] zeroinitializer }, align 32
@mlx4_reset_slave._entry_ptr = internal global ptr @mlx4_reset_slave._entry, section ".printk_index", align 4
@mlx4_reset_slave._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VF reset is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx4_reset_slave._entry_ptr.19 = internal global ptr @mlx4_reset_slave._entry.17, section ".printk_index", align 4
@mlx4_reset_slave._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Communication channel isn't sync, fail to send reset\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx4_reset_slave._entry_ptr.22 = internal global ptr @mlx4_reset_slave._entry.20, section ".printk_index", align 4
@mlx4_reset_slave._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 128, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VF is sending reset request to Firmware\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx4_reset_slave._entry_ptr.25 = internal global ptr @mlx4_reset_slave._entry.23, section ".printk_index", align 4
@mlx4_reset_slave._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 148, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VF Reset succeed\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx4_reset_slave._entry_ptr.28 = internal global ptr @mlx4_reset_slave._entry.26, section ".printk_index", align 4
@mlx4_reset_slave._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Fail to send reset over the communication channel\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx4_reset_slave._entry_ptr.31 = internal global ptr @mlx4_reset_slave._entry.29, section ".printk_index", align 4
@mlx4_reset_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Fail to reset HCA\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx4_reset_master\00", [46 x i8] zeroinitializer }, align 32
@mlx4_reset_master._entry_ptr = internal global ptr @mlx4_reset_master._entry, section ".printk_index", align 4
@read_vendor_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read vendor ID, ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_vendor_id\00", [17 x i8] zeroinitializer }, align 32
@read_vendor_id._entry_ptr = internal global ptr @read_vendor_id._entry, section ".printk_index", align 4
@read_vendor_id._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI can't be accessed to read vendor id\0A\00", [55 x i8] zeroinitializer }, align 32
@read_vendor_id._entry_ptr.38 = internal global ptr @read_vendor_id._entry.36, section ".printk_index", align 4
@poll_catas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 241, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Internal error detected on the communication channel\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"poll_catas\00", [21 x i8] zeroinitializer }, align 32
@poll_catas._entry_ptr = internal global ptr @poll_catas._entry, section ".printk_index", align 4
@poll_catas._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 250, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Internal error mark was detected on device\0A\00", [52 x i8] zeroinitializer }, align 32
@poll_catas._entry_ptr.43 = internal global ptr @poll_catas._entry.41, section ".printk_index", align 4
@dump_err_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Internal error detected:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dump_err_buf\00", [19 x i8] zeroinitializer }, align 32
@dump_err_buf._entry_ptr = internal global ptr @dump_err_buf._entry, section ".printk_index", align 4
@dump_err_buf._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  buf[%02x]: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@dump_err_buf._entry_ptr.48 = internal global ptr @dump_err_buf._entry.46, section ".printk_index", align 4
@mlx4_handle_error_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 215, ptr @.str.51, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlx4_restart_one was ended, ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx4_handle_error_state\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx4_handle_error_state._entry_ptr = internal global ptr @mlx4_handle_error_state._entry, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"mlx4_internal_err_reset\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 45, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 176, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 185, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 278, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 288, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 316, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 317, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 109, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 114, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 123, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 128, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 148, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 153, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 86, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 57, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 62, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 241, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 250, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 226, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 228, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlx4/catas.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 214, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_internal_err_reset346, ptr @__UNIQUE_ID_internal_err_resettype345, ptr @__param_internal_err_reset, ptr @dump_err_buf._entry, ptr @dump_err_buf._entry.46, ptr @dump_err_buf._entry_ptr, ptr @dump_err_buf._entry_ptr.48, ptr @mlx4_enter_error_state._entry, ptr @mlx4_enter_error_state._entry.5, ptr @mlx4_enter_error_state._entry_ptr, ptr @mlx4_enter_error_state._entry_ptr.7, ptr @mlx4_handle_error_state._entry, ptr @mlx4_handle_error_state._entry_ptr, ptr @mlx4_reset_master._entry, ptr @mlx4_reset_master._entry_ptr, ptr @mlx4_reset_slave._entry, ptr @mlx4_reset_slave._entry.17, ptr @mlx4_reset_slave._entry.20, ptr @mlx4_reset_slave._entry.23, ptr @mlx4_reset_slave._entry.26, ptr @mlx4_reset_slave._entry.29, ptr @mlx4_reset_slave._entry_ptr, ptr @mlx4_reset_slave._entry_ptr.19, ptr @mlx4_reset_slave._entry_ptr.22, ptr @mlx4_reset_slave._entry_ptr.25, ptr @mlx4_reset_slave._entry_ptr.28, ptr @mlx4_reset_slave._entry_ptr.31, ptr @mlx4_start_catas_poll._entry, ptr @mlx4_start_catas_poll._entry_ptr, ptr @poll_catas._entry, ptr @poll_catas._entry.41, ptr @poll_catas._entry_ptr, ptr @poll_catas._entry_ptr.43, ptr @read_vendor_id._entry, ptr @read_vendor_id._entry.36, ptr @read_vendor_id._entry_ptr, ptr @read_vendor_id._entry_ptr.38, ptr @mlx4_internal_err_reset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mlx4_start_catas_poll.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mlx4_catas_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_internal_err_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_enter_error_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_enter_error_state._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_start_catas_poll.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_start_catas_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_catas_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset_slave._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset_slave._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset_slave._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset_slave._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset_slave._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_vendor_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_vendor_id._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_catas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_catas._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_err_buf._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_handle_error_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx4_comm_internal_err(i32 noundef %slave_read) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %slave_read, 17
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_enter_error_state(ptr noundef %persist) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mlx4_internal_err_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %device_state_mutex = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %persist, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %device_state_mutex, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %persist, i32 0, i32 9
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state, align 4
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %out

if.end3:                                          ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %persist, i32 0, i32 1
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str) #8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end3
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 43
  %16 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 1
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then8.do.end17_crit_edge

if.then8.do.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

if.end.i:                                         ; preds = %if.then8
  %mfunc.i = getelementptr inbounds %struct.mlx4_priv, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %mfunc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mfunc.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i = icmp eq i32 %20, -1
  br i1 %cmp.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.15) #8
  br label %do.end17

if.end8.i:                                        ; preds = %if.end.i
  %vf_caps.i = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 95
  %25 = ptrtoint ptr %vf_caps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vf_caps.i, align 4
  %and.i58 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool9.not.i = icmp eq i32 %and.i58, 0
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %dev16.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.18) #8
  br label %if.else21

if.end17.i:                                       ; preds = %if.end8.i
  %and18.i = lshr i32 %20, 16
  %shr.i = and i32 %and18.i, 1
  %and19.i = lshr i32 %20, 8
  %shr20.i = and i32 %and19.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr20.i)
  %cmp21.not.i = icmp eq i32 %shr.i, %shr20.i
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  br i1 %cmp21.not.i, label %if.end29.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35.i, ptr noundef nonnull @.str.21) #8
  br label %if.else21

if.end29.i:                                       ; preds = %if.end17.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35.i, ptr noundef nonnull @.str.24) #8
  %xor.i = shl nuw nsw i32 %shr.i, 16
  %shl.i = xor i32 %xor.i, 65536
  %35 = ptrtoint ptr %mfunc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mfunc.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %shl.i) #5, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -1000, %37
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub93.i = add i32 %add.neg.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub93.i)
  %cmp4094.i = icmp slt i32 %sub93.i, 0
  br i1 %cmp4094.i, label %if.end29.i.while.body.i_crit_edge, label %if.end29.i.do.end66.i_crit_edge

if.end29.i.do.end66.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66.i

if.end29.i.while.body.i_crit_edge:                ; preds = %if.end29.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end61.i.while.body.i_crit_edge, %if.end29.i.while.body.i_crit_edge
  %39 = ptrtoint ptr %mfunc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mfunc.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %40, i32 12
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  %and49.i = lshr i32 %41, 8
  %and51.i = lshr i32 %41, 16
  %42 = xor i32 %and49.i, %and51.i
  %43 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp53.i = icmp eq i32 %43, 0
  br i1 %cmp53.i, label %do.end57.i, label %if.end61.i

do.end57.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %dev60.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev60.i, ptr noundef nonnull @.str.27) #8
  br label %do.end17

if.end61.i:                                       ; preds = %while.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 151, i32 noundef 0) #5
  %call.i.i = tail call i32 @__cond_resched() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %48, %add.neg.i
  %cmp40.i = icmp slt i32 %sub.i, 0
  br i1 %cmp40.i, label %if.end61.i.while.body.i_crit_edge, label %if.end61.i.do.end66.i_crit_edge

if.end61.i.do.end66.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66.i

if.end61.i.while.body.i_crit_edge:                ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

do.end66.i:                                       ; preds = %if.end61.i.do.end66.i_crit_edge, %if.end29.i.do.end66.i_crit_edge
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69.i, ptr noundef nonnull @.str.30) #8
  br label %if.else21

if.end12:                                         ; preds = %if.end3
  %call10 = tail call i32 @mlx4_crdump_collect(ptr noundef %5) #5
  %call11 = tail call fastcc i32 @mlx4_reset_master(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end12.do.end17_crit_edge, label %if.end12.if.else21_crit_edge

if.end12.if.else21_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else21

if.end12.do.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.end17:                                         ; preds = %if.end12.do.end17_crit_edge, %do.end57.i, %do.end.i, %if.then8.do.end17_crit_edge
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %5, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.6) #8
  br label %if.end37

if.else21:                                        ; preds = %if.end12.if.else21_crit_edge, %do.end66.i, %do.end25.i, %do.end13.i
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %5, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 43
  %61 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i59.not = icmp eq i32 %62, 1
  br i1 %cmp.i59.not, label %do.body28, label %if.else21.if.end37_crit_edge

if.else21.if.end37_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body28:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/mellanox/mlx4/catas.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #5, !srcloc !111
  unreachable

if.end37:                                         ; preds = %if.else21.if.end37_crit_edge, %do.end17
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 8
  %state39 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %state39 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %state39, align 4
  %67 = or i8 %66, 2
  store i8 %67, ptr %state39, align 4
  tail call void @mutex_unlock(ptr noundef %device_state_mutex) #5
  tail call void @mlx4_dispatch_event(ptr noundef %5, i32 noundef 0, i32 noundef 0) #5
  tail call void @mlx4_cmd_wake_completions(ptr noundef %5) #5
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %device_state_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end37, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_crdump_collect(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_reset_master(ptr noundef %dev) unnamed_addr #1 align 64 {
entry:
  %vendor_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlx4_report_internal_err_comm_event(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 1
  br i1 %cmp.i.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor_id.i) #5
  %8 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %vendor_id.i, align 2
  %call.i = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %vendor_id.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.34, i32 noundef %call.i) #8
  br label %read_vendor_id.exit.thread

if.end.i:                                         ; preds = %if.then3
  %13 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vendor_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %14)
  %cmp.i23 = icmp eq i16 %14, -1
  br i1 %cmp.i23, label %do.end8.i, label %if.end7

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.37) #8
  br label %read_vendor_id.exit.thread

read_vendor_id.exit.thread:                       ; preds = %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor_id.i) #5
  %call8 = call i32 @mlx4_reset(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.end

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.32) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %read_vendor_id.exit.thread, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call8, %do.end ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %read_vendor_id.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_dispatch_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_cmd_wake_completions(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_start_catas_poll(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %catas_err = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 22
  %list = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 22, i32 2
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 22, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %timer = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 22, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @poll_catas, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlx4_start_catas_poll.__key) #5
  %2 = ptrtoint ptr %catas_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %catas_err, align 4
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %catas_bar = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 8, i32 9
  %9 = ptrtoint ptr %catas_bar to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %catas_bar, align 1
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %catas_offset = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %catas_offset to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %catas_offset, align 8
  %15 = trunc i64 %14 to i32
  %conv5 = add i32 %12, %15
  %catas_size = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 8, i32 6
  %16 = ptrtoint ptr %catas_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %catas_size, align 8
  %mul = shl i32 %17, 2
  %call7 = tail call ptr @ioremap(i32 noundef %conv5, i32 noundef %mul) #5
  %18 = ptrtoint ptr %catas_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %catas_err, align 4
  %tobool12.not = icmp eq ptr %call7, null
  br i1 %tobool12.not, label %do.end16, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %conv20 = zext i32 %conv5 to i64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.9, i64 noundef %conv20) #8
  br label %cleanup

if.end21:                                         ; preds = %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add22 = add i32 %23, 500
  %call23 = tail call i32 @round_jiffies(i32 noundef %add22) #5
  %expires = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 22, i32 1, i32 1
  %24 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call23, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @poll_catas(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -21680
  %flags.i = getelementptr i8, ptr %t, i32 -21676
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mfunc = getelementptr i8, ptr %t, i32 -20204
  %2 = ptrtoint ptr %mfunc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfunc, align 4
  %slave_read2 = getelementptr inbounds %struct.mlx4_comm, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %slave_read2) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %5 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.then.if.end18_crit_edge, label %do.end

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  br label %internal_err.sink.split

if.else:                                          ; preds = %entry
  %catas_err = getelementptr i8, ptr %t, i32 -4
  %8 = ptrtoint ptr %catas_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %catas_err, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not = icmp eq i32 %10, 0
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.then16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %if.else
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.44) #8
  %catas_size.i = getelementptr i8, ptr %t, i32 -20592
  %15 = ptrtoint ptr %catas_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %catas_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.not.i = icmp eq i32 %16, 0
  br i1 %cmp16.not.i, label %if.then16.internal_err_crit_edge, label %if.then16.do.end4.i_crit_edge

if.then16.do.end4.i_crit_edge:                    ; preds = %if.then16
  br label %do.end4.i

if.then16.internal_err_crit_edge:                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %internal_err

do.end4.i:                                        ; preds = %do.end4.i.do.end4.i_crit_edge, %if.then16.do.end4.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %do.end4.i.do.end4.i_crit_edge ], [ 0, %if.then16.do.end4.i_crit_edge ]
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %catas_err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %catas_err, align 4
  %add.ptr.i = getelementptr i32, ptr %22, i32 %i.017.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.47, i32 noundef %i.017.i, i32 noundef %23) #8
  %inc.i = add nuw i32 %i.017.i, 1
  %24 = ptrtoint ptr %catas_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %catas_size.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %do.end4.i.do.end4.i_crit_edge, label %do.end4.i.internal_err_crit_edge

do.end4.i.internal_err_crit_edge:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %internal_err

do.end4.i.do.end4.i_crit_edge:                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then.if.end18_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %state = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %state, align 4
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool20.not = icmp eq i8 %30, 0
  br i1 %tobool20.not, label %if.end28, label %if.end18.internal_err.sink.split_crit_edge

if.end18.internal_err.sink.split_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %internal_err.sink.split

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 500
  %call30 = tail call i32 @round_jiffies(i32 noundef %add) #5
  %call31 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call30) #5
  br label %cleanup

internal_err.sink.split:                          ; preds = %if.end18.internal_err.sink.split_crit_edge, %do.end
  %.sink50 = phi ptr [ %7, %do.end ], [ %27, %if.end18.internal_err.sink.split_crit_edge ]
  %.str.42.sink = phi ptr [ @.str.39, %do.end ], [ @.str.42, %if.end18.internal_err.sink.split_crit_edge ]
  %32 = ptrtoint ptr %.sink50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %.sink50, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull %.str.42.sink) #8
  br label %internal_err

internal_err:                                     ; preds = %internal_err.sink.split, %do.end4.i.internal_err_crit_edge, %if.then16.internal_err_crit_edge
  %34 = load i32, ptr @mlx4_internal_err_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool32.not = icmp eq i32 %34, 0
  br i1 %tobool32.not, label %internal_err.cleanup_crit_edge, label %if.then33

internal_err.cleanup_crit_edge:                   ; preds = %internal_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then33:                                        ; preds = %internal_err
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %catas_wq = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %catas_wq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %catas_wq, align 4
  %catas_work = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %36, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %catas_work) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %internal_err.cleanup_crit_edge, %if.end28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_stop_catas_poll(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %catas_err = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 22
  %timer = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 22, i32 1
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  %0 = ptrtoint ptr %catas_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %catas_err, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %catas_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %catas_err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %interface_state = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %interface_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %interface_state, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %catas_wq = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %catas_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %catas_wq, align 4
  tail call void @flush_workqueue(ptr noundef %9) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_catas_init(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %catas_work = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 6
  tail call void @__init_work(ptr noundef %catas_work, i32 noundef 0) #5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %catas_work2 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %catas_work2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %catas_work2, align 4
  %5 = load ptr, ptr %dev, align 8
  %lockdep_map = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %5, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @mlx4_catas_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %entry7 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %7, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %7, i32 0, i32 6, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry7, ptr %prev.i, align 4
  %10 = load ptr, ptr %dev, align 8
  %func = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %10, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @catas_reset, ptr %func, align 4
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.14) #5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %catas_wq = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %catas_wq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %catas_wq, align 4
  %15 = load ptr, ptr %dev, align 8
  %catas_wq12 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %catas_wq12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %catas_wq12, align 4
  %tobool.not = icmp eq ptr %17, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @catas_reset(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  tail call void @mlx4_enter_error_state(ptr noundef %add.ptr) #5
  %interface_state_mutex.i = getelementptr i8, ptr %work, i32 144
  tail call void @mutex_lock_nested(ptr noundef %interface_state_mutex.i, i32 noundef 0) #5
  %interface_state.i = getelementptr i8, ptr %work, i32 236
  %0 = ptrtoint ptr %interface_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interface_state.i, align 4
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %3 = icmp eq i8 %2, 1
  br i1 %3, label %if.then.i, label %entry.mlx4_handle_error_state.exit_crit_edge

entry.mlx4_handle_error_state.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx4_handle_error_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @mlx4_restart_one(ptr noundef %5) #5
  %dev.i = getelementptr i8, ptr %work, i32 -44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7.i, ptr noundef nonnull @.str.49, i32 noundef %call.i) #8
  br label %mlx4_handle_error_state.exit

mlx4_handle_error_state.exit:                     ; preds = %if.then.i, %entry.mlx4_handle_error_state.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %interface_state_mutex.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_catas_end(ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %catas_wq = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %catas_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %catas_wq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %catas_wq4 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %catas_wq4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %catas_wq4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_report_internal_err_comm_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_restart_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @mlx4_internal_err_reset, !1, !"mlx4_internal_err_reset", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 45, i32 5}
!2 = !{ptr @__param_internal_err_reset, !3, !"__param_internal_err_reset", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_internal_err_resettype345, !3, !"__UNIQUE_ID_internal_err_resettype345", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_internal_err_reset346, !6, !"__UNIQUE_ID_internal_err_reset346", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 47, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 176, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mlx4_enter_error_state._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @mlx4_enter_error_state._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 185, i32 3}
!17 = !{ptr @mlx4_enter_error_state._entry.5, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mlx4_enter_error_state._entry_ptr.7, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mlx4_start_catas_poll.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 278, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 288, i32 4}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mlx4_start_catas_poll._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlx4_start_catas_poll._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mlx4_catas_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 316, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 317, i32 27}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__param_str_internal_err_reset, !3, !"__param_str_internal_err_reset", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 109, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mlx4_reset_slave._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlx4_reset_slave._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 114, i32 3}
!42 = !{ptr @mlx4_reset_slave._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlx4_reset_slave._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 123, i32 3}
!46 = !{ptr @mlx4_reset_slave._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mlx4_reset_slave._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 128, i32 2}
!50 = !{ptr @mlx4_reset_slave._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx4_reset_slave._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 148, i32 4}
!54 = !{ptr @mlx4_reset_slave._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mlx4_reset_slave._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 153, i32 2}
!58 = !{ptr @mlx4_reset_slave._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mlx4_reset_slave._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 86, i32 4}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mlx4_reset_master._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mlx4_reset_master._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 57, i32 3}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @read_vendor_id._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @read_vendor_id._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 62, i32 3}
!72 = !{ptr @read_vendor_id._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @read_vendor_id._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 241, i32 4}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @poll_catas._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @poll_catas._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 250, i32 3}
!81 = !{ptr @poll_catas._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @poll_catas._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 226, i32 2}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dump_err_buf._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @dump_err_buf._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 228, i32 3}
!90 = !{ptr @dump_err_buf._entry.46, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @dump_err_buf._entry_ptr.48, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx4/catas.c", i32 214, i32 3}
!94 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mlx4_handle_error_state._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @mlx4_handle_error_state._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 4668834}
!108 = !{i64 2156607073}
!109 = !{i64 4668416}
!110 = !{i64 2156615998}
!111 = !{i64 2156623877, i64 2156624384, i64 2156623914, i64 2156623970, i64 2156624004, i64 2156624028, i64 2156624069, i64 2156624090, i64 2156624118, i64 2156624152}
!112 = !{i64 2156633588}
!113 = !{i64 2156636136}
!114 = !{i64 2156631473}
