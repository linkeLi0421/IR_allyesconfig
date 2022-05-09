; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/intf.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/intf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mlx4_register_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_register_interface\09\09\09\09"
module asm "\09.long\09__crc_mlx4_register_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_register_interface\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_register_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_unregister_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_unregister_interface\09\09\09\09"
module asm "\09.long\09__crc_mlx4_unregister_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_unregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_unregister_interface\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_unregister_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_get_protocol_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_get_protocol_dev\09\09\09\09"
module asm "\09.long\09__crc_mlx4_get_protocol_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_get_protocol_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_get_protocol_dev\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_get_protocol_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx4_get_devlink_port\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx4_get_devlink_port\09\09\09\09"
module asm "\09.long\09__crc_mlx4_get_devlink_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx4_get_devlink_port:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx4_get_devlink_port\22\09\09\09\09\09"
module asm "__kstrtabns_mlx4_get_devlink_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mlx4_interface = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.mlx4_device_context = type { %struct.list_head, %struct.list_head, ptr, ptr }
%struct.mlx4_priv = type { %struct.mlx4_dev, %struct.list_head, %struct.list_head, %struct.spinlock, i32, i32, %struct.list_head, %struct.mutex, %struct.mlx4_fw, %struct.mlx4_cmd, %struct.mlx4_mfunc, %struct.mlx4_bitmap, %struct.mlx4_bitmap, %struct.mlx4_uar_table, %struct.mlx4_mr_table, %struct.mlx4_cq_table, %struct.mlx4_eq_table, %struct.mlx4_srq_table, %struct.mlx4_qp_table, %struct.mlx4_mcg_table, %struct.mlx4_bitmap, [2 x i32], %struct.mlx4_catas_err, ptr, %struct.mlx4_uar, ptr, [3 x %struct.mlx4_port_info], %struct.mlx4_sense, %struct.mutex, %struct.mlx4_msix_ctl, ptr, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, [128 x [2 x [128 x i8]]], %struct.mlx4_port_map, %struct.mutex, [128 x i64], %struct.atomic_t, %struct.work_struct }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.mlx4_comm = type { i32, i32 }

@intf_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @intf_mutex, i64 52), ptr getelementptr (i8, ptr @intf_mutex, i64 52) }, ptr @intf_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@intf_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @intf_list, ptr @intf_list }, [24 x i8] zeroinitializer }, align 32
@dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dev_list, ptr @dev_list }, [24 x i8] zeroinitializer }, align 32
@mlx4_debug_level = external dso_local local_unnamed_addr global i32, align 4
@mlx4_register_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SRIOV, disabling HA mode for intf proto %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx4_register_interface\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/mellanox/mlx4/intf.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_register_interface._entry_ptr = internal global ptr @mlx4_register_interface._entry, section ".printk_index", align 4
@__kstrtab_mlx4_register_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_register_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_register_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_register_interface to i32), ptr @__kstrtab_mlx4_register_interface, ptr @__kstrtabns_mlx4_register_interface }, section "___ksymtab_gpl+mlx4_register_interface", align 4
@__kstrtab_mlx4_unregister_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_unregister_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_unregister_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_unregister_interface to i32), ptr @__kstrtab_mlx4_unregister_interface, ptr @__kstrtabns_mlx4_unregister_interface }, section "___ksymtab_gpl+mlx4_unregister_interface", align 4
@mlx4_do_bond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 144, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fail to %s rx port check\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mlx4_do_bond\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx4_do_bond._entry_ptr = internal global ptr @mlx4_do_bond._entry, section ".printk_index", align 4
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@mlx4_do_bond._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 152, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Fail to reset port map\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx4_do_bond._entry_ptr.12 = internal global ptr @mlx4_do_bond._entry.10, section ".printk_index", align 4
@mlx4_do_bond._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Interface for protocol %d restarted with bonded mode %s\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx4_do_bond._entry_ptr.15 = internal global ptr @mlx4_do_bond._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@mlx4_unregister_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: comm channel is down, entering error state.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx4_unregister_device\00", [41 x i8] zeroinitializer }, align 32
@mlx4_unregister_device._entry_ptr = internal global ptr @mlx4_unregister_device._entry, section ".printk_index", align 4
@__kstrtab_mlx4_get_protocol_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_get_protocol_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_get_protocol_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_get_protocol_dev to i32), ptr @__kstrtab_mlx4_get_protocol_dev, ptr @__kstrtabns_mlx4_get_protocol_dev }, section "___ksymtab_gpl+mlx4_get_protocol_dev", align 4
@__kstrtab_mlx4_get_devlink_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx4_get_devlink_port = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx4_get_devlink_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx4_get_devlink_port to i32), ptr @__kstrtab_mlx4_get_devlink_port, ptr @__kstrtabns_mlx4_get_devlink_port }, section "___ksymtab_gpl+mlx4_get_devlink_port", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intf_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intf_mutex\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"intf_mutex\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"intf_list\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 48, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"dev_list\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 49, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 102, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 143, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 152, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 175, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 232, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlx4/intf.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 50, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab_mlx4_get_devlink_port, ptr @__ksymtab_mlx4_get_protocol_dev, ptr @__ksymtab_mlx4_register_interface, ptr @__ksymtab_mlx4_unregister_interface, ptr @mlx4_do_bond._entry, ptr @mlx4_do_bond._entry.10, ptr @mlx4_do_bond._entry.13, ptr @mlx4_do_bond._entry_ptr, ptr @mlx4_do_bond._entry_ptr.12, ptr @mlx4_do_bond._entry_ptr.15, ptr @mlx4_register_interface._entry, ptr @mlx4_register_interface._entry_ptr, ptr @mlx4_unregister_device._entry, ptr @mlx4_unregister_device._entry_ptr, ptr @intf_mutex, ptr @intf_list, ptr @dev_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_register_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_do_bond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_do_bond._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_do_bond._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_unregister_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_register_interface(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %remove = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @intf_mutex, i32 noundef 0) #6
  %list = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 5
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @intf_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %4, ptr noundef nonnull @intf_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @intf_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @intf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %.pn30 = load ptr, ptr @dev_list, align 4
  %cmp.not32 = icmp eq ptr %.pn30, @dev_list
  br i1 %cmp.not32, label %list_add_tail.exit.for.end_crit_edge, label %for.body.lr.ph

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_add_tail.exit
  %flags = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 7
  %protocol = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %.pn33 = phi ptr [ %.pn30, %for.body.lr.ph ], [ %.pn, %if.end15.for.body_crit_edge ]
  %priv.034 = getelementptr i8, ptr %.pn33, i32 -880
  %flags.i = getelementptr i8, ptr %.pn33, i32 -876
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %for.body.if.end15_crit_edge, label %land.lhs.true

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end15_crit_edge, label %do.body

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_debug_level to i32))
  %12 = load i32, ptr @mlx4_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  br i1 %tobool5.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %priv.034 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.034, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %protocol, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev9, ptr noundef nonnull @.str, i32 noundef %18) #9
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and14 = and i32 %20, -2
  store i32 %and14, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %land.lhs.true.if.end15_crit_edge, %for.body.if.end15_crit_edge
  tail call fastcc void @mlx4_add_device(ptr noundef %intf, ptr noundef %priv.034)
  %21 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, @dev_list
  br i1 %cmp.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @intf_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_add_device(ptr noundef %intf, ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %intf1 = getelementptr inbounds %struct.mlx4_device_context, ptr %call7.i, i32 0, i32 2
  %1 = ptrtoint ptr %intf1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %intf, ptr %intf1, align 8
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %call2 = tail call ptr %3(ptr noundef %priv) #6
  %context = getelementptr inbounds %struct.mlx4_device_context, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %context, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %ctx_lock = getelementptr inbounds %struct.mlx4_priv, ptr %priv, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %ctx_lock) #6
  %ctx_list = getelementptr inbounds %struct.mlx4_priv, ptr %priv, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mlx4_priv, ptr %priv, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %6, ptr noundef %ctx_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.list_add_tail.exit_crit_edge

if.then5.list_add_tail.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %prev.i, align 4
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctx_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then5.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctx_lock) #6
  %activate = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 4
  %11 = ptrtoint ptr %activate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %activate, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.then8

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  tail call void %12(ptr noundef %priv, ptr noundef %14) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %list_add_tail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_unregister_interface(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @intf_mutex, i32 noundef 0) #6
  %.pn11 = load ptr, ptr @dev_list, align 4
  %cmp.not12 = icmp eq ptr %.pn11, @dev_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %remove.i = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %mlx4_remove_device.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn13 = phi ptr [ %.pn11, %for.body.lr.ph ], [ %.pn, %mlx4_remove_device.exit.for.body_crit_edge ]
  %priv.0 = getelementptr i8, ptr %.pn13, i32 -880
  %ctx_list.i = getelementptr i8, ptr %.pn13, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %dev_ctx.0.in.i = phi ptr [ %ctx_list.i, %for.body ], [ %dev_ctx.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %dev_ctx.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev_ctx.0.i = load ptr, ptr %dev_ctx.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev_ctx.0.i, %ctx_list.i
  br i1 %cmp.not.i, label %for.cond.i.mlx4_remove_device.exit_crit_edge, label %for.body.i

for.cond.i.mlx4_remove_device.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx4_remove_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %intf2.i = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.0.i, i32 0, i32 2
  %1 = ptrtoint ptr %intf2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf2.i, align 4
  %cmp3.i = icmp eq ptr %2, %intf
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %ctx_lock.i = getelementptr i8, ptr %.pn13, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %ctx_lock.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_ctx.0.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev_ctx.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %dev_ctx.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_ctx.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %dev_ctx.0.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_ctx.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_ctx.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctx_lock.i) #6
  %11 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remove.i, align 4
  %context.i = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context.i, align 4
  tail call void %12(ptr noundef %priv.0, ptr noundef %14) #6
  tail call void @kfree(ptr noundef %dev_ctx.0.i) #6
  br label %mlx4_remove_device.exit

mlx4_remove_device.exit:                          ; preds = %list_del.exit.i, %for.cond.i.mlx4_remove_device.exit_crit_edge
  %15 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, @dev_list
  br i1 %cmp.not, label %mlx4_remove_device.exit.for.end_crit_edge, label %mlx4_remove_device.exit.for.body_crit_edge

mlx4_remove_device.exit.for.body_crit_edge:       ; preds = %mlx4_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

mlx4_remove_device.exit.for.end_crit_edge:        ; preds = %mlx4_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %mlx4_remove_device.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %list = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i8 = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i8, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_interface, ptr %intf, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @intf_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_do_bond(ptr noundef %dev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %bond_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bond_list) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %bond_list, i32 0, i32 1
  %1 = ptrtoint ptr %bond_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bond_list, ptr %bond_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bond_list, ptr %0, align 4
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 61
  %3 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags2, align 8
  %and = and i64 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @mlx4_disable_rx_port_check(ptr noundef %dev, i1 noundef zeroext %enable) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %cond = select i1 %enable, ptr @.str.8, ptr @.str.9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %enable, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %flags10 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags10, align 4
  %or = or i32 %10, 128
  store i32 %or, ptr %flags10, align 4
  br label %do.body25

if.else:                                          ; preds = %if.end7
  %call11 = call i32 @mlx4_virt2phy_port_map(ptr noundef %dev, i32 noundef 1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end20, label %do.end16

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %flags21 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags21, align 4
  %and22 = and i32 %16, -129
  store i32 %and22, ptr %flags21, align 4
  br label %do.body25

do.body25:                                        ; preds = %if.end20, %if.then9
  %ctx_lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 3
  %call27 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #6
  %ctx_list = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx_list, align 8
  %cmp40.not159 = icmp eq ptr %18, %ctx_list
  br i1 %cmp40.not159, label %do.body25.for.end_crit_edge, label %do.body25.for.body_crit_edge

do.body25.for.body_crit_edge:                     ; preds = %do.body25
  br label %for.body

do.body25.for.end_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body25.for.body_crit_edge
  %dev_ctx.0160 = phi ptr [ %temp_dev_ctx.0163, %for.inc.for.body_crit_edge ], [ %18, %do.body25.for.body_crit_edge ]
  %19 = ptrtoint ptr %dev_ctx.0160 to i32
  call void @__asan_load4_noabort(i32 %19)
  %temp_dev_ctx.0163 = load ptr, ptr %dev_ctx.0160, align 4
  %intf = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.0160, i32 0, i32 2
  %20 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf, align 4
  %flags42 = getelementptr inbounds %struct.mlx4_interface, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags42, align 4
  %and43 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %for.body.for.inc_crit_edge, label %if.then45

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then45:                                        ; preds = %for.body
  %bond_list46 = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.0160, i32 0, i32 1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %bond_list46, ptr noundef %25, ptr noundef nonnull %bond_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then45.list_add_tail.exit_crit_edge

if.then45.list_add_tail.exit_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bond_list46, ptr %0, align 4
  %27 = ptrtoint ptr %bond_list46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bond_list, ptr %bond_list46, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.0160, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %bond_list46, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then45.list_add_tail.exit_crit_edge
  %call.i.i150 = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_ctx.0160) #6
  br i1 %call.i.i150, label %if.end.i.i151, label %list_add_tail.exit.list_del.exit_crit_edge

list_add_tail.exit.list_del.exit_crit_edge:       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i151:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_ctx.0160, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %dev_ctx.0160 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_ctx.0160, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i151, %list_add_tail.exit.list_del.exit_crit_edge
  %36 = ptrtoint ptr %dev_ctx.0160 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_ctx.0160, align 4
  %prev.i152 = getelementptr inbounds %struct.list_head, ptr %dev_ctx.0160, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i152, align 4
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp40.not = icmp eq ptr %temp_dev_ctx.0163, %ctx_list
  br i1 %cmp40.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body25.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call27) #6
  %38 = ptrtoint ptr %bond_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn164 = load ptr, ptr %bond_list, align 4
  %cmp61.not165 = icmp eq ptr %.pn164, %bond_list
  br i1 %cmp61.not165, label %for.end.cleanup_crit_edge, label %for.body64.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body64.lr.ph:                                 ; preds = %for.end
  %prev.i153 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 2, i32 1
  %cond98 = select i1 %enable, ptr @.str.16, ptr @.str.17
  br label %for.body64

for.body64:                                       ; preds = %for.inc102.for.body64_crit_edge, %for.body64.lr.ph
  %.pn166 = phi ptr [ %.pn164, %for.body64.lr.ph ], [ %.pn, %for.inc102.for.body64_crit_edge ]
  %dev_ctx.1 = getelementptr i8, ptr %.pn166, i32 -8
  %intf65 = getelementptr i8, ptr %.pn166, i32 8
  %39 = ptrtoint ptr %intf65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf65, align 4
  %remove = getelementptr inbounds %struct.mlx4_interface, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %remove, align 4
  %context = getelementptr i8, ptr %.pn166, i32 12
  %43 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %context, align 4
  call void %42(ptr noundef %dev, ptr noundef %44) #6
  %45 = ptrtoint ptr %intf65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %intf65, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call67 = call ptr %48(ptr noundef %dev) #6
  %49 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call67, ptr %context, align 4
  %call78 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #6
  %50 = ptrtoint ptr %prev.i153 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i153, align 4
  %call.i.i154 = call zeroext i1 @__list_add_valid(ptr noundef %dev_ctx.1, ptr noundef %51, ptr noundef %ctx_list) #6
  br i1 %call.i.i154, label %if.end.i.i156, label %for.body64.list_add_tail.exit157_crit_edge

for.body64.list_add_tail.exit157_crit_edge:       ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit157

if.end.i.i156:                                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %prev.i153 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev_ctx.1, ptr %prev.i153, align 4
  %53 = ptrtoint ptr %dev_ctx.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ctx_list, ptr %dev_ctx.1, align 4
  %prev3.i.i155 = getelementptr i8, ptr %.pn166, i32 -4
  %54 = ptrtoint ptr %prev3.i.i155 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i155, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %dev_ctx.1, ptr %51, align 4
  br label %list_add_tail.exit157

list_add_tail.exit157:                            ; preds = %if.end.i.i156, %for.body64.list_add_tail.exit157_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call78) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_debug_level to i32))
  %56 = load i32, ptr @mlx4_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool87.not = icmp eq i32 %56, 0
  br i1 %tobool87.not, label %list_add_tail.exit157.for.inc102_crit_edge, label %do.end91

list_add_tail.exit157.for.inc102_crit_edge:       ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102

do.end91:                                         ; preds = %list_add_tail.exit157
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %intf65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %intf65, align 4
  %protocol = getelementptr inbounds %struct.mlx4_interface, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %protocol, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev94, ptr noundef nonnull @.str.14, i32 noundef %64, ptr noundef nonnull %cond98) #9
  br label %for.inc102

for.inc102:                                       ; preds = %do.end91, %list_add_tail.exit157.for.inc102_crit_edge
  %65 = ptrtoint ptr %.pn166 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load ptr, ptr %.pn166, align 4
  %cmp61.not = icmp eq ptr %.pn, %bond_list
  br i1 %cmp61.not, label %for.inc102.cleanup_crit_edge, label %for.inc102.for.body64_crit_edge

for.inc102.for.body64_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64

for.inc102.cleanup_crit_edge:                     ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc102.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call11, %do.end16 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc102.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bond_list) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_disable_rx_port_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_virt2phy_port_map(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_dispatch_event(ptr noundef %dev, i32 noundef %type, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #6
  %ctx_list = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev_ctx.026 = load ptr, ptr %ctx_list, align 4
  %cmp8.not27 = icmp eq ptr %dev_ctx.026, %ctx_list
  br i1 %cmp8.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev_ctx.028 = phi ptr [ %dev_ctx.0, %for.inc.for.body_crit_edge ], [ %dev_ctx.026, %entry.for.body_crit_edge ]
  %intf = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.028, i32 0, i32 2
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %event = getelementptr inbounds %struct.mlx4_interface, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %context = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.028, i32 0, i32 3
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  tail call void %4(ptr noundef %dev, ptr noundef %6, i32 noundef %type, i32 noundef %param) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %dev_ctx.028 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dev_ctx.0 = load ptr, ptr %dev_ctx.028, align 4
  %cmp8.not = icmp eq ptr %dev_ctx.0, %ctx_list
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_register_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @intf_mutex, i32 noundef 0) #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %interface_state = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %interface_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interface_state, align 4
  %4 = or i8 %3, 1
  store i8 %4, ptr %interface_state, align 4
  %dev_list = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 1
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_list, ptr noundef %5, ptr noundef nonnull @dev_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %dev_list, ptr getelementptr inbounds (%struct.list_head, ptr @dev_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %dev_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dev_list, ptr %dev_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %dev_list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %.pn12 = load ptr, ptr @intf_list, align 4
  %cmp.not13 = icmp eq ptr %.pn12, @intf_list
  br i1 %cmp.not13, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_add_tail.exit.for.body_crit_edge
  %.pn14 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn12, %list_add_tail.exit.for.body_crit_edge ]
  %intf.0 = getelementptr i8, ptr %.pn14, i32 -20
  tail call fastcc void @mlx4_add_device(ptr noundef %intf.0, ptr noundef %dev)
  %9 = ptrtoint ptr %.pn14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn14, align 4
  %cmp.not = icmp eq ptr %.pn, @intf_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @intf_mutex) #6
  tail call void @mlx4_start_catas_poll(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_start_catas_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_unregister_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %interface_state = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %interface_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interface_state, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mlx4_stop_catas_poll(ptr noundef %dev) #6
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %interface_state2 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %interface_state2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %interface_state2, align 4
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end26_crit_edge, label %if.then8

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then8:                                         ; preds = %land.lhs.true
  %mfunc = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 10
  %12 = ptrtoint ptr %mfunc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mfunc, align 4
  %slave_read10 = getelementptr inbounds %struct.mlx4_comm, ptr %13, i32 0, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %slave_read10) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %call13 = tail call i32 @mlx4_comm_internal_err(i32 noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then8.if.end26_crit_edge, label %do.body

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body:                                          ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_debug_level to i32))
  %15 = load i32, ptr @mlx4_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %do.body.do.end23_crit_edge, label %do.end

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev20, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #9
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void @mlx4_enter_error_state(ptr noundef %21) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.then8.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @intf_mutex, i32 noundef 0) #6
  %.pn53 = load ptr, ptr @intf_list, align 4
  %cmp.not54 = icmp eq ptr %.pn53, @intf_list
  br i1 %cmp.not54, label %if.end26.for.end_crit_edge, label %for.body.lr.ph

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end26
  %ctx_list.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 2
  %ctx_lock.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %mlx4_remove_device.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn55 = phi ptr [ %.pn53, %for.body.lr.ph ], [ %.pn, %mlx4_remove_device.exit.for.body_crit_edge ]
  %intf.0 = getelementptr i8, ptr %.pn55, i32 -20
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %dev_ctx.0.in.i = phi ptr [ %ctx_list.i, %for.body ], [ %dev_ctx.0.i, %for.body.i.for.cond.i_crit_edge ]
  %22 = ptrtoint ptr %dev_ctx.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %dev_ctx.0.i = load ptr, ptr %dev_ctx.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %dev_ctx.0.i, %ctx_list.i
  br i1 %cmp.not.i, label %for.cond.i.mlx4_remove_device.exit_crit_edge, label %for.body.i

for.cond.i.mlx4_remove_device.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx4_remove_device.exit

for.body.i:                                       ; preds = %for.cond.i
  %intf2.i = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.0.i, i32 0, i32 2
  %23 = ptrtoint ptr %intf2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf2.i, align 4
  %cmp3.i = icmp eq ptr %24, %intf.0
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @_raw_spin_lock_irq(ptr noundef %ctx_lock.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_ctx.0.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dev_ctx.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %dev_ctx.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_ctx.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %dev_ctx.0.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_ctx.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dev_ctx.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctx_lock.i) #6
  %remove.i = getelementptr i8, ptr %.pn55, i32 -16
  %33 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remove.i, align 4
  %context.i = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.0.i, i32 0, i32 3
  %35 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context.i, align 4
  tail call void %34(ptr noundef %dev, ptr noundef %36) #6
  tail call void @kfree(ptr noundef %dev_ctx.0.i) #6
  br label %mlx4_remove_device.exit

mlx4_remove_device.exit:                          ; preds = %list_del.exit.i, %for.cond.i.mlx4_remove_device.exit_crit_edge
  %37 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, @intf_list
  br i1 %cmp.not, label %mlx4_remove_device.exit.for.end_crit_edge, label %mlx4_remove_device.exit.for.body_crit_edge

mlx4_remove_device.exit.for.body_crit_edge:       ; preds = %mlx4_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

mlx4_remove_device.exit.for.end_crit_edge:        ; preds = %mlx4_remove_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %mlx4_remove_device.exit.for.end_crit_edge, %if.end26.for.end_crit_edge
  %dev_list = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i50 = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i50, align 4
  %40 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %44 = ptrtoint ptr %dev_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %interface_state34 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %interface_state34 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %interface_state34, align 4
  %50 = and i8 %49, -2
  store i8 %50, ptr %interface_state34, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @intf_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_stop_catas_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_comm_internal_err(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_enter_error_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx4_get_protocol_dev(ptr noundef %dev, i32 noundef %proto, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_lock = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctx_lock) #6
  %ctx_list = getelementptr inbounds %struct.mlx4_priv, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %dev_ctx.033 = load ptr, ptr %ctx_list, align 4
  %cmp8.not34 = icmp eq ptr %dev_ctx.033, %ctx_list
  br i1 %cmp8.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev_ctx.035 = phi ptr [ %dev_ctx.0, %for.inc.for.body_crit_edge ], [ %dev_ctx.033, %entry.for.body_crit_edge ]
  %intf = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.035, i32 0, i32 2
  %1 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intf, align 4
  %protocol = getelementptr inbounds %struct.mlx4_interface, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %proto)
  %cmp10 = icmp eq i32 %4, %proto
  br i1 %cmp10, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %get_dev = getelementptr inbounds %struct.mlx4_interface, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %get_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_dev, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %context = getelementptr inbounds %struct.mlx4_device_context, ptr %dev_ctx.035, i32 0, i32 3
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  %conv15 = trunc i32 %port to i8
  %call16 = tail call ptr %6(ptr noundef %dev, ptr noundef %8, i8 noundef zeroext %conv15) #6
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %dev_ctx.035 to i32
  call void @__asan_load4_noabort(i32 %9)
  %dev_ctx.0 = load ptr, ptr %dev_ctx.035, align 4
  %cmp8.not = icmp eq ptr %dev_ctx.0, %ctx_list
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  %result.0 = phi ptr [ %call16, %if.then ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctx_lock, i32 noundef %call3) #6
  ret ptr %result.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx4_get_devlink_port(ptr noundef readnone %dev, i32 noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink_port = getelementptr %struct.mlx4_priv, ptr %dev, i32 0, i32 26, i32 %port, i32 12
  ret ptr %devlink_port
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 102, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_register_interface._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_register_interface._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mlx4_register_interface, !9, !"__ksymtab_mlx4_register_interface", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 113, i32 1}
!10 = !{ptr @__ksymtab_mlx4_unregister_interface, !11, !"__ksymtab_mlx4_unregister_interface", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 128, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 143, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx4_do_bond._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx4_do_bond._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 152, i32 4}
!22 = !{ptr @mlx4_do_bond._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx4_do_bond._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 175, i32 3}
!26 = !{ptr @mlx4_do_bond._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlx4_do_bond._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 232, i32 4}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mlx4_unregister_device._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mlx4_unregister_device._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_mlx4_get_protocol_dev, !36, !"__ksymtab_mlx4_get_protocol_dev", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 267, i32 1}
!37 = !{ptr @__ksymtab_mlx4_get_devlink_port, !38, !"__ksymtab_mlx4_get_devlink_port", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 275, i32 1}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 50, i32 8}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @intf_mutex, !40, !"intf_mutex", i1 false, i1 false}
!43 = !{ptr @intf_list, !44, !"intf_list", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 48, i32 8}
!45 = !{ptr @dev_list, !46, !"dev_list", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx4/intf.c", i32 49, i32 8}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 7023410}
!57 = !{i64 2156638825}
