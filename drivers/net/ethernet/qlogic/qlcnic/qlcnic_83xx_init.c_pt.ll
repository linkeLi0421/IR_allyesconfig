; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qlcnic_hardware_context = type { ptr, ptr, i32, %struct.rwlock_t, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, [3 x i32], i32, i32, i32, i32, ptr, %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_fw_dump, %struct.qlcnic_fdt, %struct.qlc_83xx_reset, %struct.qlc_83xx_idc, ptr, ptr, ptr, ptr, ptr, [5 x i32], [4 x i32], ptr, i8, [6 x i8], i8, ptr, i32, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.qlcnic_nic_intr_coalesce = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.qlcnic_fw_dump = type { i8, i8, i32, i32, ptr, ptr, i32, ptr, i8, i32, i32, i32, i32 }
%struct.qlcnic_fdt = type { i32, i16, i16, i16, i16, [16 x i8], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i16, i8, [65 x i8] }
%struct.qlc_83xx_reset = type { ptr, i32, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, i8, i8 }
%struct.qlc_83xx_idc = type { ptr, i64, i64, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr }
%struct.qlcnic_adapter = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i8, i8, i8, [6 x i8], i64, i8, i8, i8, [128 x i32], i8, ptr, ptr, ptr, %struct.qlcnic_adapter_stats, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.qlcnic_filter_hash, %struct.qlcnic_filter_hash, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, ptr }
%struct.qlcnic_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.qlcnic_nic_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_dcb = type { ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i32 }
%struct.qlcnic_dcb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qlcnic_info = type { i16, i16, i16, i16, i32, i8, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16 }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.qlcnic_cmd_args = type { %struct.completion, %struct.list_head, %struct._cdrp_cmd, %struct._cdrp_cmd, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct._cdrp_cmd = type { i32, ptr }
%struct.qlcnic_mailbox = type { ptr, ptr, ptr, %struct.work_struct, %struct.completion, %struct.list_head, i32, %struct.spinlock, %struct.spinlock, i32, i32 }
%struct.qlc_83xx_reset_hdr = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.qlc_83xx_fw_info = type { ptr, [20 x i8] }
%struct.qlcnic_intrpt_config = type { i8, i8, i16, i32 }
%struct.qlc_83xx_entry_hdr = type { i16, i16, i16, i16 }
%struct.qlc_83xx_entry = type { i32, i32 }
%struct.qlc_83xx_quad_entry = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@qlcnic_83xx_idc_vnic_pf_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 717, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vNIC mode disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_83xx_idc_vnic_pf_entry\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_vnic_pf_entry._entry_ptr = internal global ptr @qlcnic_83xx_idc_vnic_pf_entry._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_vnic_pf_entry._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 732, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vNIC mode enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_vnic_pf_entry._entry_ptr.7 = internal global ptr @qlcnic_83xx_idc_vnic_pf_entry._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set VXLAN port %d in adapter\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to %s VXLAN parsing for port %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s VXLAN parsing for port %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1265, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: wait for lock recovery.. %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_83xx_idc_exit\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_exit._entry_ptr = internal global ptr @qlcnic_83xx_idc_exit._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_request_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1290, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s:failed, please retry\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_83xx_idc_request_reset\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_request_reset._entry_ptr = internal global ptr @qlcnic_83xx_idc_request_reset._entry, section ".printk_index", align 4
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Auto firmware recovery is disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_83xx_configure_opmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 2311, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid opmode %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_83xx_configure_opmode\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_83xx_configure_opmode._entry_ptr = internal global ptr @qlcnic_83xx_configure_opmode._entry, section ".printk_index", align 4
@qlcnic_use_msi_x = external dso_local local_unnamed_addr global i32, align 4
@qlcnic_load_fw_file = external dso_local local_unnamed_addr global i32, align 4
@qlcnic_83xx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 2478, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed reading flash mfg id\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qlcnic_83xx_init\00", [47 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init._entry_ptr = internal global ptr @qlcnic_83xx_init._entry, section ".printk_index", align 4
@qlcnic_83xx_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 2497, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to setup interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init._entry_ptr.27 = internal global ptr @qlcnic_83xx_init._entry.25, section ".printk_index", align 4
@qlcnic_83xx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&adapter->idc_aen_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&adapter->idc_aen_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_enter_failed_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 455, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device will enter failed state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qlcnic_83xx_idc_enter_failed_state\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_enter_failed_state._entry_ptr = internal global ptr @qlcnic_83xx_idc_enter_failed_state._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_check_state_validity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 993, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: curr %d, prev %d, next state %d is  invalid\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qlcnic_83xx_idc_check_state_validity\00", [59 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_state_validity._entry_ptr = internal global ptr @qlcnic_83xx_idc_check_state_validity._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_check_state_validity._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1003, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed, cur %d prev %d next %d\0A\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_state_validity._entry_ptr.37 = internal global ptr @qlcnic_83xx_idc_check_state_validity._entry.35, section ".printk_index", align 4
@qlcnic_83xx_idc_check_state_validity._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1014, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_state_validity._entry_ptr.39 = internal global ptr @qlcnic_83xx_idc_check_state_validity._entry.38, section ".printk_index", align 4
@qlcnic_83xx_idc_log_state_history._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"current state  = %s,  prev state = %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qlcnic_83xx_idc_log_state_history\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_log_state_history._entry_ptr = internal global ptr @qlcnic_83xx_idc_log_state_history._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_ready_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 834, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error: device temperature %d above limits\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_83xx_idc_ready_state\00", [36 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_ready_state._entry_ptr = internal global ptr @qlcnic_83xx_idc_ready_state._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_check_fan_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 598, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"peg halt status1=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qlcnic_83xx_idc_check_fan_failure\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_fan_failure._entry_ptr = internal global ptr @qlcnic_83xx_idc_check_fan_failure._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_check_fan_failure._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 602, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"On board active cooling fan failed. Device has been halted.\0A\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_fan_failure._entry_ptr.48 = internal global ptr @qlcnic_83xx_idc_check_fan_failure._entry.46, section ".printk_index", align 4
@qlcnic_83xx_idc_check_fan_failure._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 604, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Replace the adapter.\0A\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_fan_failure._entry_ptr.51 = internal global ptr @qlcnic_83xx_idc_check_fan_failure._entry.49, section ".printk_index", align 4
@qlcnic_83xx_check_heartbeat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1572, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware hang detected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qlcnic_83xx_check_heartbeat\00", [36 x i8] zeroinitializer }, align 32
@qlcnic_83xx_check_heartbeat._entry_ptr = internal global ptr @qlcnic_83xx_check_heartbeat._entry, section ".printk_index", align 4
@qlcnic_83xx_check_heartbeat._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1587, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [172 x i8], [52 x i8] } { [172 x i8] c"Dumping HW/FW registers\0APEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0APEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\0APEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\0APEG_NET_4_PC: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@qlcnic_83xx_check_heartbeat._entry_ptr.56 = internal global ptr @qlcnic_83xx_check_heartbeat._entry.54, section ".printk_index", align 4
@qlcnic_83xx_check_heartbeat._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 1591, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Device is being reset err code 0x00006700.\0A\00", [52 x i8] zeroinitializer }, align 32
@qlcnic_83xx_check_heartbeat._entry_ptr.59 = internal global ptr @qlcnic_83xx_check_heartbeat._entry.57, section ".printk_index", align 4
@qlcnic_83xx_disable_pause_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1505, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:failed to acquire driver lock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_83xx_disable_pause_frames\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_disable_pause_frames._entry_ptr = internal global ptr @qlcnic_83xx_disable_pause_frames._entry, section ".printk_index", align 4
@qlcnic_83xx_disable_pause_frames._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 1535, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Disabled pause frames successfully on all ports\0A\00", [47 x i8] zeroinitializer }, align 32
@qlcnic_83xx_disable_pause_frames._entry_ptr.64 = internal global ptr @qlcnic_83xx_disable_pause_frames._entry.62, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1423, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SRE-Shim Ctrl:0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qlcnic_83xx_dump_pause_control_regs\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 1428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Port 0 RxB Pause Threshold Regs[TC7..TC0]:\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.69 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.67, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 1432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Port 1 RxB Pause Threshold Regs[TC7..TC0]:\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.72 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.70, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 1439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%x  \00", [25 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.75 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.73, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.2, i32 1441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.78 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.76, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.66, ptr @.str.2, i32 1447, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Port 0 RxB TC Max Cell Registers[4..1]:\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.81 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.79, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.66, ptr @.str.2, i32 1451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Port 1 RxB TC Max Cell Registers[4..1]:\00", [56 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.84 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.82, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 1458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.86 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.85, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.2, i32 1460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.88 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.87, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.66, ptr @.str.2, i32 1466, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Port 0 RxB Rx TC Stats[TC7..TC0]:\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.91 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.89, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.66, ptr @.str.2, i32 1470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Port 1 RxB Rx TC Stats[TC7..TC0]:\00", [62 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.94 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.92, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 1482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.96 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.95, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.2, i32 1484, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.98 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.97, section ".printk_index", align 4
@qlcnic_83xx_dump_pause_control_regs._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.66, ptr @.str.2, i32 1495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@qlcnic_83xx_dump_pause_control_regs._entry_ptr.101 = internal global ptr @qlcnic_83xx_dump_pause_control_regs._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: soft reset complete.\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.qlcnic_83xx_idc_tx_soft_reset = private unnamed_addr constant [30 x i8] c"qlcnic_83xx_idc_tx_soft_reset\00", align 1
@qlcnic_83xx_idc_need_reset_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 911, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Wait for diag completion\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_83xx_idc_need_reset_state\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_need_reset_state._entry_ptr = internal global ptr @qlcnic_83xx_idc_need_reset_state._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_need_reset_state._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 922, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_need_reset_state._entry_ptr.106 = internal global ptr @qlcnic_83xx_idc_need_reset_state._entry.105, section ".printk_index", align 4
@qlcnic_83xx_idc_need_reset_state._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.104, ptr @.str.2, i32 935, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Waiting for reset ACK\0A\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_need_reset_state._entry_ptr.109 = internal global ptr @qlcnic_83xx_idc_need_reset_state._entry.107, section ".printk_index", align 4
@qlcnic_83xx_idc_check_reset_ack_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: ack = 0x%x, presence = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qlcnic_83xx_idc_check_reset_ack_reg\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr = internal global ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_check_reset_ack_reg._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: ACK wait exceeds time limit\0A\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.114 = internal global ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.112, section ".printk_index", align 4
@qlcnic_83xx_idc_check_reset_ack_reg._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: updated drv presence reg = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.117 = internal global ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.115, section ".printk_index", align 4
@qlcnic_83xx_idc_check_reset_ack_reg._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.111, ptr @.str.2, i32 358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Reset ACK received from all functions\0A\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.120 = internal global ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.118, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qlcnic_83xx_idc_need_quiesce_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 948, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: TBD\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qlcnic_83xx_idc_need_quiesce_state\00", [61 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_need_quiesce_state._entry_ptr = internal global ptr @qlcnic_83xx_idc_need_quiesce_state._entry, section ".printk_index", align 4
@.str.123 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Reboot will be required to recover the adapter!!\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.qlcnic_83xx_idc_failed_state = private unnamed_addr constant [29 x i8] c"qlcnic_83xx_idc_failed_state\00", align 1
@qlcnic_83xx_stop_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 2037, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: failed\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qlcnic_83xx_stop_hw\00", [44 x i8] zeroinitializer }, align 32
@qlcnic_83xx_stop_hw._entry_ptr = internal global ptr @qlcnic_83xx_stop_hw._entry, section ".printk_index", align 4
@qlcnic_83xx_exec_template_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 2022, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Unknown opcode 0x%04x in template %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_83xx_exec_template_cmd\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_83xx_exec_template_cmd._entry_ptr = internal global ptr @qlcnic_83xx_exec_template_cmd._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qlcnic_83xx_poll_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1657, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Timeout Err, entry_num = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_83xx_poll_reg\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_83xx_poll_reg._entry_ptr = internal global ptr @qlcnic_83xx_poll_reg._entry, section ".printk_index", align 4
@qlcnic_83xx_poll_reg._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 1660, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08x 0x%08x 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_83xx_poll_reg._entry_ptr.132 = internal global ptr @qlcnic_83xx_poll_reg._entry.130, section ".printk_index", align 4
@qlcnic_83xx_template_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1954, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW restart process completed successfully.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_83xx_template_end\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_83xx_template_end._entry_ptr = internal global ptr @qlcnic_83xx_template_end._entry, section ".printk_index", align 4
@qlcnic_83xx_template_end._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 1957, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"HW restart completed with timeout errors.\0A\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_83xx_template_end._entry_ptr.137 = internal global ptr @qlcnic_83xx_template_end._entry.135, section ".printk_index", align 4
@qlcnic_83xx_idc_quiesce_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.138, ptr @.str.2, i32 976, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_83xx_idc_quiesce_state\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_quiesce_state._entry_ptr = internal global ptr @qlcnic_83xx_idc_quiesce_state._entry, section ".printk_index", align 4
@qlcnic_83xx_idc_unknown_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 743, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Device in unknown state\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qlcnic_83xx_idc_unknown_state\00", [34 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_unknown_state._entry_ptr = internal global ptr @qlcnic_83xx_idc_unknown_state._entry, section ".printk_index", align 4
@qlcnic_83xx_setup_idc_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 1159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:failed to get IDC params from flash\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_83xx_setup_idc_parameters\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_setup_idc_parameters._entry_ptr = internal global ptr @qlcnic_83xx_setup_idc_parameters._entry, section ".printk_index", align 4
@qlc_83xx_idc_states = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150], [32 x i8] zeroinitializer }, align 32
@qlcnic_auto_fw_reset = external dso_local local_unnamed_addr global i32, align 4
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Cold\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Init\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ready\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Need Reset\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Need Quiesce\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Quiesce\00", [24 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_major_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 253, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:mismatch. version 0x%x, expected version 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qlcnic_83xx_idc_check_major_version\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_idc_check_major_version._entry_ptr = internal global ptr @qlcnic_83xx_idc_check_major_version._entry, section ".printk_index", align 4
@qlcnic_83xx_get_reset_instruction_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 1712, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: flash read failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"qlcnic_83xx_get_reset_instruction_template\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_83xx_get_reset_instruction_template._entry_ptr = internal global ptr @qlcnic_83xx_get_reset_instruction_template._entry, section ".printk_index", align 4
@qlcnic_83xx_get_reset_instruction_template._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.2, i32 1722, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_get_reset_instruction_template._entry_ptr.156 = internal global ptr @qlcnic_83xx_get_reset_instruction_template._entry.155, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qlcnic_83xx_reset_template_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.157, ptr @.str.2, i32 1681, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qlcnic_83xx_reset_template_checksum\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_reset_template_checksum._entry_ptr = internal global ptr @qlcnic_83xx_reset_template_checksum._entry, section ".printk_index", align 4
@qlcnic_83xx_init_default_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.2, i32 2354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HAL Version: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qlcnic_83xx_init_default_driver\00", [32 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init_default_driver._entry_ptr = internal global ptr @qlcnic_83xx_init_default_driver._entry, section ".printk_index", align 4
@qlcnic_83xx_check_cmd_peg_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 1609, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed, state = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_83xx_check_cmd_peg_status\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_check_cmd_peg_status._entry_ptr = internal global ptr @qlcnic_83xx_check_cmd_peg_status._entry, section ".printk_index", align 4
@qlcnic_83xx_get_fw_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 2408, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid device id\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qlcnic_83xx_get_fw_info\00", [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_get_fw_info._entry_ptr = internal global ptr @qlcnic_83xx_get_fw_info._entry, section ".printk_index", align 4
@qlcnic_83xx_clear_function_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 2379, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to clean up the function resources\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qlcnic_83xx_clear_function_resources\00", [59 x i8] zeroinitializer }, align 32
@qlcnic_83xx_clear_function_resources._entry_ptr = internal global ptr @qlcnic_83xx_clear_function_resources._entry, section ".printk_index", align 4
@__func__.qlcnic_83xx_restart_hw = private unnamed_addr constant [23 x i8] c"qlcnic_83xx_restart_hw\00", align 1
@qlcnic_83xx_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.168, ptr @.str.2, i32 2051, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qlcnic_83xx_init_hw\00", [44 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init_hw._entry_ptr = internal global ptr @qlcnic_83xx_init_hw._entry, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 2100, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"POST firmware can not be loaded, skipping POST\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_83xx_run_post\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr = internal global ptr @qlcnic_83xx_run_post._entry, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.2, i32 2131, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"POST timed out, signature = 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr.174 = internal global ptr @qlcnic_83xx_run_post._entry.172, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.171, ptr @.str.2, i32 2137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"POST passed, Signature = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr.177 = internal global ptr @qlcnic_83xx_run_post._entry.175, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.171, ptr @.str.2, i32 2141, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"POST failed, Test case : ASIC STRESS TEST, Signature = 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr.180 = internal global ptr @qlcnic_83xx_run_post._entry.178, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.171, ptr @.str.2, i32 2146, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"POST failed, Test case : DDT TEST, Signature = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr.183 = internal global ptr @qlcnic_83xx_run_post._entry.181, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.171, ptr @.str.2, i32 2151, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"POST failed, Test case : ASIC MEMORY TEST, Signature = 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr.186 = internal global ptr @qlcnic_83xx_run_post._entry.184, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.171, ptr @.str.2, i32 2156, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"POST failed, Test case : FLASH TEST, Signature = 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr.189 = internal global ptr @qlcnic_83xx_run_post._entry.187, section ".printk_index", align 4
@qlcnic_83xx_run_post._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.171, ptr @.str.2, i32 2161, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"POST failed, Test case : INVALID, Signature = 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@qlcnic_83xx_run_post._entry_ptr.192 = internal global ptr @qlcnic_83xx_run_post._entry.190, section ".printk_index", align 4
@qlcnic_83xx_copy_fw_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1386, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MS memory write failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qlcnic_83xx_copy_fw_file\00", [39 x i8] zeroinitializer }, align 32
@qlcnic_83xx_copy_fw_file._entry_ptr = internal global ptr @qlcnic_83xx_copy_fw_file._entry, section ".printk_index", align 4
@qlcnic_83xx_copy_fw_file._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1401, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@qlcnic_83xx_copy_fw_file._entry_ptr.196 = internal global ptr @qlcnic_83xx_copy_fw_file._entry.195, section ".printk_index", align 4
@qlcnic_83xx_load_fw_image_from_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 2177, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No file FW image, loading flash FW image.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qlcnic_83xx_load_fw_image_from_host\00", [60 x i8] zeroinitializer }, align 32
@qlcnic_83xx_load_fw_image_from_host._entry_ptr = internal global ptr @qlcnic_83xx_load_fw_image_from_host._entry, section ".printk_index", align 4
@qlcnic_83xx_start_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.199, ptr @.str.2, i32 2044, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qlcnic_83xx_start_hw\00", [43 x i8] zeroinitializer }, align 32
@qlcnic_83xx_start_hw._entry_ptr = internal global ptr @qlcnic_83xx_start_hw._entry, section ".printk_index", align 4
@str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"84xx_fw.bin\00\00\00\00\00\00\00\00\00\00", [43 x i8] zeroinitializer }, align 32
@str.200 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"83xx_fw.bin\00\00\00\00\00\00\00\00\00\00", [43 x i8] zeroinitializer }, align 32
@str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"83xx_post_fw.bin\00\00\00\00\00", [43 x i8] zeroinitializer }, align 32
@switch.table.qlcnic_83xx_restart_hw = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2690, i32 4930, i32 9500], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.202 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.207 = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 3735936685, i64 3735944941]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 16, i64 33840, i64 33856, i64 35888]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 16, i64 32816, i64 32832, i64 34864]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.213 = internal global [7 x i64] [i64 5, i64 32, i64 4294967280, i64 4294967288, i64 4294967292, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.215 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256]
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 717, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 732, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1050, i32 7 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1076, i32 7 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1077, i32 14 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1077, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1080, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1081, i32 15 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1081, i32 27 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1264, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1289, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1296, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2310, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2478, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2497, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2501, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 455, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 991, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1001, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1012, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 149, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 832, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 597, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 600, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 603, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1572, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1577, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1590, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1504, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1534, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1423, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1427, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1431, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1439, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1441, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1446, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1450, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1458, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1460, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1465, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1469, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1482, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1484, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1493, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 385, i32 31 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 910, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 921, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 934, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 334, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 339, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 346, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 356, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 948, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 966, i32 31 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2037, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2020, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1655, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1658, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1953, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1956, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 976, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 742, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1158, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant [20 x i8] c"qlc_83xx_idc_states\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 120, i32 26 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 121, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 122, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 123, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 124, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 125, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 126, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 127, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 128, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 251, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1712, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1722, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1681, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2353, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1609, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2407, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2378, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2051, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2100, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2131, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2137, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2140, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2145, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2150, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2155, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2160, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1386, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1400, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2176, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.802 = private constant [57 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 2044, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [8 x i8] c"str.200\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [8 x i8] c"str.201\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [36 x i8] c"switch.table.qlcnic_83xx_restart_hw\00", align 1
@llvm.compiler.used = appending global [273 x ptr] [ptr @qlcnic_83xx_check_cmd_peg_status._entry, ptr @qlcnic_83xx_check_cmd_peg_status._entry_ptr, ptr @qlcnic_83xx_check_heartbeat._entry, ptr @qlcnic_83xx_check_heartbeat._entry.54, ptr @qlcnic_83xx_check_heartbeat._entry.57, ptr @qlcnic_83xx_check_heartbeat._entry_ptr, ptr @qlcnic_83xx_check_heartbeat._entry_ptr.56, ptr @qlcnic_83xx_check_heartbeat._entry_ptr.59, ptr @qlcnic_83xx_clear_function_resources._entry, ptr @qlcnic_83xx_clear_function_resources._entry_ptr, ptr @qlcnic_83xx_configure_opmode._entry, ptr @qlcnic_83xx_configure_opmode._entry_ptr, ptr @qlcnic_83xx_copy_fw_file._entry, ptr @qlcnic_83xx_copy_fw_file._entry.195, ptr @qlcnic_83xx_copy_fw_file._entry_ptr, ptr @qlcnic_83xx_copy_fw_file._entry_ptr.196, ptr @qlcnic_83xx_disable_pause_frames._entry, ptr @qlcnic_83xx_disable_pause_frames._entry.62, ptr @qlcnic_83xx_disable_pause_frames._entry_ptr, ptr @qlcnic_83xx_disable_pause_frames._entry_ptr.64, ptr @qlcnic_83xx_dump_pause_control_regs._entry, ptr @qlcnic_83xx_dump_pause_control_regs._entry.67, ptr @qlcnic_83xx_dump_pause_control_regs._entry.70, ptr @qlcnic_83xx_dump_pause_control_regs._entry.73, ptr @qlcnic_83xx_dump_pause_control_regs._entry.76, ptr @qlcnic_83xx_dump_pause_control_regs._entry.79, ptr @qlcnic_83xx_dump_pause_control_regs._entry.82, ptr @qlcnic_83xx_dump_pause_control_regs._entry.85, ptr @qlcnic_83xx_dump_pause_control_regs._entry.87, ptr @qlcnic_83xx_dump_pause_control_regs._entry.89, ptr @qlcnic_83xx_dump_pause_control_regs._entry.92, ptr @qlcnic_83xx_dump_pause_control_regs._entry.95, ptr @qlcnic_83xx_dump_pause_control_regs._entry.97, ptr @qlcnic_83xx_dump_pause_control_regs._entry.99, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.101, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.69, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.72, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.75, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.78, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.81, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.84, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.86, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.88, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.91, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.94, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.96, ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.98, ptr @qlcnic_83xx_exec_template_cmd._entry, ptr @qlcnic_83xx_exec_template_cmd._entry_ptr, ptr @qlcnic_83xx_get_fw_info._entry, ptr @qlcnic_83xx_get_fw_info._entry_ptr, ptr @qlcnic_83xx_get_reset_instruction_template._entry, ptr @qlcnic_83xx_get_reset_instruction_template._entry.155, ptr @qlcnic_83xx_get_reset_instruction_template._entry_ptr, ptr @qlcnic_83xx_get_reset_instruction_template._entry_ptr.156, ptr @qlcnic_83xx_idc_check_fan_failure._entry, ptr @qlcnic_83xx_idc_check_fan_failure._entry.46, ptr @qlcnic_83xx_idc_check_fan_failure._entry.49, ptr @qlcnic_83xx_idc_check_fan_failure._entry_ptr, ptr @qlcnic_83xx_idc_check_fan_failure._entry_ptr.48, ptr @qlcnic_83xx_idc_check_fan_failure._entry_ptr.51, ptr @qlcnic_83xx_idc_check_major_version._entry, ptr @qlcnic_83xx_idc_check_major_version._entry_ptr, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.112, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.115, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.118, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.114, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.117, ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.120, ptr @qlcnic_83xx_idc_check_state_validity._entry, ptr @qlcnic_83xx_idc_check_state_validity._entry.35, ptr @qlcnic_83xx_idc_check_state_validity._entry.38, ptr @qlcnic_83xx_idc_check_state_validity._entry_ptr, ptr @qlcnic_83xx_idc_check_state_validity._entry_ptr.37, ptr @qlcnic_83xx_idc_check_state_validity._entry_ptr.39, ptr @qlcnic_83xx_idc_enter_failed_state._entry, ptr @qlcnic_83xx_idc_enter_failed_state._entry_ptr, ptr @qlcnic_83xx_idc_exit._entry, ptr @qlcnic_83xx_idc_exit._entry_ptr, ptr @qlcnic_83xx_idc_log_state_history._entry, ptr @qlcnic_83xx_idc_log_state_history._entry_ptr, ptr @qlcnic_83xx_idc_need_quiesce_state._entry, ptr @qlcnic_83xx_idc_need_quiesce_state._entry_ptr, ptr @qlcnic_83xx_idc_need_reset_state._entry, ptr @qlcnic_83xx_idc_need_reset_state._entry.105, ptr @qlcnic_83xx_idc_need_reset_state._entry.107, ptr @qlcnic_83xx_idc_need_reset_state._entry_ptr, ptr @qlcnic_83xx_idc_need_reset_state._entry_ptr.106, ptr @qlcnic_83xx_idc_need_reset_state._entry_ptr.109, ptr @qlcnic_83xx_idc_quiesce_state._entry, ptr @qlcnic_83xx_idc_quiesce_state._entry_ptr, ptr @qlcnic_83xx_idc_ready_state._entry, ptr @qlcnic_83xx_idc_ready_state._entry_ptr, ptr @qlcnic_83xx_idc_request_reset._entry, ptr @qlcnic_83xx_idc_request_reset._entry_ptr, ptr @qlcnic_83xx_idc_unknown_state._entry, ptr @qlcnic_83xx_idc_unknown_state._entry_ptr, ptr @qlcnic_83xx_idc_vnic_pf_entry._entry, ptr @qlcnic_83xx_idc_vnic_pf_entry._entry.5, ptr @qlcnic_83xx_idc_vnic_pf_entry._entry_ptr, ptr @qlcnic_83xx_idc_vnic_pf_entry._entry_ptr.7, ptr @qlcnic_83xx_init._entry, ptr @qlcnic_83xx_init._entry.25, ptr @qlcnic_83xx_init._entry_ptr, ptr @qlcnic_83xx_init._entry_ptr.27, ptr @qlcnic_83xx_init_default_driver._entry, ptr @qlcnic_83xx_init_default_driver._entry_ptr, ptr @qlcnic_83xx_init_hw._entry, ptr @qlcnic_83xx_init_hw._entry_ptr, ptr @qlcnic_83xx_load_fw_image_from_host._entry, ptr @qlcnic_83xx_load_fw_image_from_host._entry_ptr, ptr @qlcnic_83xx_poll_reg._entry, ptr @qlcnic_83xx_poll_reg._entry.130, ptr @qlcnic_83xx_poll_reg._entry_ptr, ptr @qlcnic_83xx_poll_reg._entry_ptr.132, ptr @qlcnic_83xx_reset_template_checksum._entry, ptr @qlcnic_83xx_reset_template_checksum._entry_ptr, ptr @qlcnic_83xx_run_post._entry, ptr @qlcnic_83xx_run_post._entry.172, ptr @qlcnic_83xx_run_post._entry.175, ptr @qlcnic_83xx_run_post._entry.178, ptr @qlcnic_83xx_run_post._entry.181, ptr @qlcnic_83xx_run_post._entry.184, ptr @qlcnic_83xx_run_post._entry.187, ptr @qlcnic_83xx_run_post._entry.190, ptr @qlcnic_83xx_run_post._entry_ptr, ptr @qlcnic_83xx_run_post._entry_ptr.174, ptr @qlcnic_83xx_run_post._entry_ptr.177, ptr @qlcnic_83xx_run_post._entry_ptr.180, ptr @qlcnic_83xx_run_post._entry_ptr.183, ptr @qlcnic_83xx_run_post._entry_ptr.186, ptr @qlcnic_83xx_run_post._entry_ptr.189, ptr @qlcnic_83xx_run_post._entry_ptr.192, ptr @qlcnic_83xx_setup_idc_parameters._entry, ptr @qlcnic_83xx_setup_idc_parameters._entry_ptr, ptr @qlcnic_83xx_start_hw._entry, ptr @qlcnic_83xx_start_hw._entry_ptr, ptr @qlcnic_83xx_stop_hw._entry, ptr @qlcnic_83xx_stop_hw._entry_ptr, ptr @qlcnic_83xx_template_end._entry, ptr @qlcnic_83xx_template_end._entry.135, ptr @qlcnic_83xx_template_end._entry_ptr, ptr @qlcnic_83xx_template_end._entry_ptr.137, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @qlcnic_83xx_init.__key, ptr @.str.28, ptr @qlcnic_83xx_init.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.90, ptr @.str.93, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @qlc_83xx_idc_states, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.193, ptr @.str.194, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @str, ptr @str.200, ptr @str.201, ptr @switch.table.qlcnic_83xx_restart_hw], section "llvm.metadata"
@0 = internal global [200 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_vnic_pf_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_vnic_pf_entry._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_request_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_configure_opmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_enter_failed_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_state_validity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_state_validity._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_state_validity._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_log_state_history._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_ready_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_fan_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_fan_failure._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_fan_failure._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_check_heartbeat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_check_heartbeat._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_check_heartbeat._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_disable_pause_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_disable_pause_frames._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_dump_pause_control_regs._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_need_reset_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_need_reset_state._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_need_reset_state._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_need_quiesce_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_stop_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_exec_template_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_poll_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_poll_reg._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_template_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_template_end._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_quiesce_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_unknown_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_setup_idc_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlc_83xx_idc_states to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_idc_check_major_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_get_reset_instruction_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_get_reset_instruction_template._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_reset_template_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init_default_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_check_cmd_peg_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_get_fw_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_clear_function_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_run_post._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_copy_fw_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_copy_fw_file._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_load_fw_image_from_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_start_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.200 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlcnic_83xx_restart_hw to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_idc_reattach_driver(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %mailbox = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mailbox, align 8
  tail call void @qlcnic_83xx_reinit_mbx_work(ptr noundef %3) #8
  tail call void @qlcnic_83xx_enable_mbx_interrupt(ptr noundef %adapter) #8
  tail call void @qlcnic_83xx_initialize_nic(ptr noundef %adapter, i32 noundef 1) #8
  %call = tail call i32 @qlcnic_sriov_pf_reinit(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @qlcnic_83xx_enable_mbx_interrupt(ptr noundef %adapter) #8
  %call1 = tail call i32 @qlcnic_83xx_configure_opmode(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef 1)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nic_ops = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 43
  %4 = ptrtoint ptr %nic_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nic_ops, align 8
  %init_driver = getelementptr inbounds %struct.qlcnic_nic_template, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_driver, align 4
  %call6 = tail call i32 %7(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef 1)
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %8 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_set_drv_version(ptr noundef %adapter) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %dcb = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 55
  %10 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dcb, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end13.qlcnic_dcb_get_info.exit_crit_edge, label %land.lhs.true.i

if.end13.qlcnic_dcb_get_info.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_dcb_get_info.exit

land.lhs.true.i:                                  ; preds = %if.end13
  %ops.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %get_info.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %get_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_info.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.qlcnic_dcb_get_info.exit_crit_edge, label %if.then.i

land.lhs.true.i.qlcnic_dcb_get_info.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_dcb_get_info.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef nonnull %11) #8
  br label %qlcnic_dcb_get_info.exit

qlcnic_dcb_get_info.exit:                         ; preds = %if.then.i, %land.lhs.true.i.qlcnic_dcb_get_info.exit_crit_edge, %if.end13.qlcnic_dcb_get_info.exit_crit_edge
  %netdev1.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %16 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev1.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %qlcnic_dcb_get_info.exit.qlcnic_83xx_idc_attach_driver.exit_crit_edge, label %if.then.i29

qlcnic_dcb_get_info.exit.qlcnic_83xx_idc_attach_driver.exit_crit_edge: ; preds = %qlcnic_dcb_get_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_attach_driver.exit

if.then.i29:                                      ; preds = %qlcnic_dcb_get_info.exit
  %call2.i = tail call i32 @qlcnic_up(ptr noundef %adapter, ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i28 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i28, label %if.end.i, label %if.then.i29.qlcnic_83xx_idc_attach_driver.exit_crit_edge

if.then.i29.qlcnic_83xx_idc_attach_driver.exit_crit_edge: ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_attach_driver.exit

if.end.i:                                         ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_restore_indev_addr(ptr noundef %17, i32 noundef 1) #8
  br label %qlcnic_83xx_idc_attach_driver.exit

qlcnic_83xx_idc_attach_driver.exit:               ; preds = %if.end.i, %if.then.i29.qlcnic_83xx_idc_attach_driver.exit_crit_edge, %qlcnic_dcb_get_info.exit.qlcnic_83xx_idc_attach_driver.exit_crit_edge
  tail call void @netif_device_attach(ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_83xx_idc_attach_driver.exit, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then3 ], [ -5, %if.then8 ], [ 0, %qlcnic_83xx_idc_attach_driver.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_reinit_mbx_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_enable_mbx_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_initialize_nic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_sriov_pf_reinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_configure_opmode(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %nic_info.i = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nic_info.i) #8
  %2 = call ptr @memset(ptr %nic_info.i, i32 0, i32 72)
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pci_func.i, align 1
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_ops.i.i, align 4
  %get_nic_info.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %get_nic_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_nic_info.i.i, align 4
  %call.i.i = call i32 %8(ptr noundef %adapter, ptr noundef nonnull %nic_info.i, i8 noundef zeroext %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %qlcnic_83xx_get_nic_configuration.exit.thread54

qlcnic_83xx_get_nic_configuration.exit.thread54:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %phys_port.i = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info.i, i32 0, i32 2
  %9 = ptrtoint ptr %phys_port.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %phys_port.i, align 4
  %conv.i = trunc i16 %10 to i8
  %physical_port.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %physical_port.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %physical_port.i, align 1
  %switch_mode.i = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info.i, i32 0, i32 3
  %12 = ptrtoint ptr %switch_mode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %switch_mode.i, align 2
  %switch_mode2.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 31
  %14 = ptrtoint ptr %switch_mode2.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %switch_mode2.i, align 4
  %max_tx_ques.i = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info.i, i32 0, i32 7
  %15 = ptrtoint ptr %max_tx_ques.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_tx_ques.i, align 4
  %max_tx_ques3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %max_tx_ques3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %max_tx_ques3.i, align 2
  %max_rx_ques.i = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info.i, i32 0, i32 8
  %18 = ptrtoint ptr %max_rx_ques.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_rx_ques.i, align 2
  %max_rx_ques4.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 33
  %20 = ptrtoint ptr %max_rx_ques4.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %max_rx_ques4.i, align 8
  %capabilities.i = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info.i, i32 0, i32 4
  %21 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capabilities.i, align 4
  %capabilities5.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 40
  %23 = ptrtoint ptr %capabilities5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %capabilities5.i, align 4
  %max_mac_filters.i = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info.i, i32 0, i32 5
  %24 = ptrtoint ptr %max_mac_filters.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_mac_filters.i, align 4
  %max_mac_filters6.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %max_mac_filters6.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %max_mac_filters6.i, align 2
  %max_mtu.i = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info.i, i32 0, i32 6
  %27 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_mtu.i, align 2
  %max_mtu7.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 34
  %29 = ptrtoint ptr %max_mtu7.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %max_mtu7.i, align 2
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i, align 4
  %32 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool9.not.i = icmp ne i32 %32, 0
  %and.i = and i32 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  %or.cond = select i1 %tobool9.not.i, i1 true, i1 %tobool13.not.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info.i) #8
  %nic_mode9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 20
  br i1 %or.cond, label %if.then8, label %if.then3

if.then3:                                         ; preds = %if.end.i
  %33 = ptrtoint ptr %nic_mode9 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %nic_mode9, align 1
  %call4 = call i32 @qlcnic_83xx_config_vnic_opmode(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then3.if.end12_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %nic_mode9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %nic_mode9, align 1
  %nic_ops = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 43
  %35 = ptrtoint ptr %nic_ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nic_ops, align 8
  %init_driver = getelementptr inbounds %struct.qlcnic_nic_template, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_driver to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @qlcnic_83xx_init_default_driver, ptr %init_driver, align 4
  %idc = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51
  %38 = ptrtoint ptr %idc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @qlcnic_83xx_idc_ready_state_entry, ptr %idc, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then3.if.end12_crit_edge
  %max_tx_rings.0 = phi i32 [ 8, %if.then8 ], [ 4, %if.then3.if.end12_crit_edge ]
  %39 = ptrtoint ptr %max_rx_ques4.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_rx_ques4.i, align 8
  %conv = zext i16 %40 to i32
  %41 = call i32 @llvm.umin.i32(i32 %max_tx_rings.0, i32 %conv)
  %conv18 = trunc i32 %41 to i8
  %max_sds_rings19 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 13
  %42 = ptrtoint ptr %max_sds_rings19 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv18, ptr %max_sds_rings19, align 1
  %43 = ptrtoint ptr %max_tx_ques3.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %max_tx_ques3.i, align 2
  %conv21 = zext i16 %44 to i32
  %45 = call i32 @llvm.umin.i32(i32 %max_tx_rings.0, i32 %conv21)
  %conv31 = trunc i32 %45 to i8
  %max_tx_rings32 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 14
  %46 = ptrtoint ptr %max_tx_rings32 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv31, ptr %max_tx_rings32, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then3.cleanup_crit_edge, %qlcnic_83xx_get_nic_configuration.exit.thread54
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -5, %if.then3.cleanup_crit_edge ], [ -5, %qlcnic_83xx_get_nic_configuration.exit.thread54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !383
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %5, i32 14
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !384
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ext_reg_tbl8.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 56
  %12 = ptrtoint ptr %ext_reg_tbl8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_reg_tbl8.i, align 8
  %arrayidx9.i = getelementptr i32, ptr %13, i32 15
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  %17 = and i32 %16, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %ext_reg_tbl19.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 56
  %22 = ptrtoint ptr %ext_reg_tbl19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ext_reg_tbl19.i, align 8
  %arrayidx20.i = getelementptr i32, ptr %23, i32 15
  %24 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %21, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %17) #8, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 56
  %30 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %31, i32 12
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 100663296) #8, !srcloc !384
  br i1 %tobool.not, label %if.end3.if.end8_crit_edge, label %if.then7

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3.if.end8_crit_edge
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %curr_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 51, i32 6
  %36 = ptrtoint ptr %curr_state.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %curr_state.i, align 4
  %conv.i = zext i8 %37 to i32
  %prev_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 51, i32 7
  %38 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %prev_state.i, align 1
  %conv3.i = zext i8 %39 to i32
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %40 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %name.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 51, i32 12
  %42 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i, align 4
  %arrayidx.i1 = getelementptr ptr, ptr %43, i32 %conv.i
  %44 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i1, align 4
  %arrayidx9.i2 = getelementptr ptr, ptr %43, i32 %conv3.i
  %46 = ptrtoint ptr %arrayidx9.i2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx9.i2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef %45, ptr noundef %47) #11
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  br label %return

return:                                           ; preds = %if.end8, %if.then.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_drv_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_idc_ready_state_entry(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %prev_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %2 = ptrtoint ptr %prev_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prev_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.not = icmp eq i8 %3, 3
  br i1 %cmp.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  tail call fastcc void @qlcnic_83xx_idc_update_drv_presence_reg(ptr noundef %adapter, i32 noundef 1) #8
  tail call fastcc void @qlcnic_83xx_idc_update_audit_reg(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 1) #8
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %status.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 51, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #8
  %quiesce_req.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 10
  %6 = ptrtoint ptr %quiesce_req.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %quiesce_req.i, align 8
  %delay.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 2
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 100, ptr %delay.i, align 8
  %err_code.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 4
  %8 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %err_code.i, align 4
  %collect_dump.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 5
  %9 = ptrtoint ptr %collect_dump.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %collect_dump.i, align 8
  %reset_context.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %reset_context.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reset_context.i, align 4
  %tx_timeo_cnt.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 23
  %11 = ptrtoint ptr %tx_timeo_cnt.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_timeo_cnt.i, align 1
  %delay_reset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 11
  %12 = ptrtoint ptr %delay_reset.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %delay_reset.i, align 1
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #8
  %13 = ptrtoint ptr %prev_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %prev_state, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.then.if.end16_crit_edge [
    i8 4, label %if.then.if.then13_crit_edge
    i8 2, label %if.then.if.then13_crit_edge21
  ]

if.then.if.then13_crit_edge21:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then.if.then13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.then.if.then13_crit_edge, %if.then.if.then13_crit_edge21
  %call = tail call i32 @qlcnic_83xx_idc_reattach_driver(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then13.if.end16_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.then13.if.end16_crit_edge, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -5, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_idc_vnic_pf_entry(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 38
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !389
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %cmp.not = icmp eq i32 %8, 16777216
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vnic_wait_limit = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 9
  %9 = ptrtoint ptr %vnic_wait_limit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vnic_wait_limit, align 1
  %dec = add i8 %10, -1
  store i8 %dec, ptr %vnic_wait_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then5, label %do.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef 1)
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str) #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %vnic_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 8
  %13 = ptrtoint ptr %vnic_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vnic_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp8.not = icmp eq i8 %14, 1
  br i1 %cmp8.not, label %if.else.cleanup_crit_edge, label %if.then10

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.else
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  tail call fastcc void @qlcnic_83xx_idc_update_drv_presence_reg(ptr noundef %adapter, i32 noundef 1) #8
  tail call fastcc void @qlcnic_83xx_idc_update_audit_reg(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 1) #8
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %status.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 51, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #8
  %quiesce_req.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 51, i32 10
  %19 = ptrtoint ptr %quiesce_req.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %quiesce_req.i, align 8
  %delay.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 51, i32 2
  %20 = ptrtoint ptr %delay.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 100, ptr %delay.i, align 8
  %err_code.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 51, i32 4
  %21 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %err_code.i, align 4
  %collect_dump.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 51, i32 5
  %22 = ptrtoint ptr %collect_dump.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %collect_dump.i, align 8
  %reset_context.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 13
  %23 = ptrtoint ptr %reset_context.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %reset_context.i, align 4
  %tx_timeo_cnt.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 23
  %24 = ptrtoint ptr %tx_timeo_cnt.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %tx_timeo_cnt.i, align 1
  %delay_reset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 51, i32 11
  %25 = ptrtoint ptr %delay_reset.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %delay_reset.i, align 1
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #8
  %prev_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %26 = ptrtoint ptr %prev_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %prev_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp13.not = icmp eq i8 %27, 0
  br i1 %cmp13.not, label %if.then10.if.end20_crit_edge, label %if.then15

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.then10
  %call16 = tail call i32 @qlcnic_83xx_idc_reattach_driver(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end20_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then15.if.end20_crit_edge, %if.then10.if.end20_crit_edge
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %vnic_state23 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %29, i32 0, i32 51, i32 8
  %30 = ptrtoint ptr %vnic_state23 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %vnic_state23, align 2
  %pdev27 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %31 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev27, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end, %if.then5
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then5 ], [ -5, %if.then15.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_set_vxlan_port(ptr noundef %adapter, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 536870912, ptr %arrayidx, align 4
  %conv = zext i16 %port to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, 10
  %10 = load ptr, ptr %arg, align 4
  %arrayidx3 = getelementptr i32, ptr %10, i32 2
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %arrayidx3, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %hw_ops.i16 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %hw_ops.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_ops.i16, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %qlcnic_issue_cmd.exit

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i17 = call i32 %17(ptr noundef %adapter, ptr noundef nonnull %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool5.not = icmp eq i32 %call.i17, 0
  br i1 %tobool5.not, label %qlcnic_issue_cmd.exit.if.end8_crit_edge, label %qlcnic_issue_cmd.exit.if.then6_crit_edge

qlcnic_issue_cmd.exit.if.then6_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

qlcnic_issue_cmd.exit.if.end8_crit_edge:          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %qlcnic_issue_cmd.exit.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %retval.0.i20 = phi i32 [ %call.i17, %qlcnic_issue_cmd.exit.if.then6_crit_edge ], [ -5, %if.end.if.then6_crit_edge ]
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.8, i32 noundef %conv) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %qlcnic_issue_cmd.exit.if.end8_crit_edge
  %retval.0.i21 = phi i32 [ %retval.0.i20, %if.then6 ], [ 0, %qlcnic_issue_cmd.exit.if.end8_crit_edge ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_free_mbx_args(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_set_vxlan_parsing(ptr noundef %adapter, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %6(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %port to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port)
  %tobool1.not = icmp eq i16 %port, 0
  %not.tobool1.not = xor i1 %tobool1.not, true
  %cond = zext i1 %not.tobool1.not to i32
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %hw_ops.i26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %hw_ops.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_ops.i26, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %qlcnic_issue_cmd.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i27 = call i32 %15(ptr noundef %adapter, ptr noundef nonnull %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool3.not = icmp eq i32 %call.i27, 0
  br i1 %tobool3.not, label %if.else, label %qlcnic_issue_cmd.exit.if.then4_crit_edge

qlcnic_issue_cmd.exit.if.then4_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %qlcnic_issue_cmd.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i31 = phi i32 [ %call.i27, %qlcnic_issue_cmd.exit.if.then4_crit_edge ], [ -5, %if.end.if.then4_crit_edge ]
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %cond7 = select i1 %tobool1.not, ptr @.str.11, ptr @.str.10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond7, i32 noundef %conv) #11
  br label %if.end14

if.else:                                          ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %netdev9 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %18 = ptrtoint ptr %netdev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev9, align 4
  %cond12 = select i1 %tobool1.not, ptr @.str.14, ptr @.str.13
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond12, i32 noundef %conv) #11
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4
  %retval.0.i30 = phi i32 [ 0, %if.else ], [ %retval.0.i31, %if.then4 ]
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i30, %if.end14 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_idc_poll_dev_state(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -840
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !385
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !390
  %call5 = tail call fastcc i32 @qlcnic_83xx_idc_check_state_validity(ptr noundef %add.ptr, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 8
  %curr_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 51, i32 6
  %12 = ptrtoint ptr %curr_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %curr_state.i, align 4
  %conv.i = zext i8 %13 to i32
  %prev_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 51, i32 7
  %14 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %prev_state.i, align 1
  %conv3.i = zext i8 %15 to i32
  %pdev.i = getelementptr i8, ptr %work, i32 -824
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %name.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 51, i32 12
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %conv.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %19, i32 %conv3.i
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef %21, ptr noundef %23) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %9 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv.sink = phi i8 [ %conv, %if.else ], [ 0, %if.then ]
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %curr_state9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 51, i32 6
  %26 = ptrtoint ptr %curr_state9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.sink, ptr %curr_state9, align 4
  %27 = load ptr, ptr %add.ptr, align 8
  %curr_state12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 51, i32 6
  %28 = ptrtoint ptr %curr_state12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %curr_state12, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.202)
  switch i8 %29, label %sw.default [
    i8 3, label %sw.bb
    i8 4, label %sw.bb15
    i8 5, label %sw.bb17
    i8 6, label %sw.bb19
    i8 2, label %sw.bb20
    i8 7, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end
  %mailbox.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 59
  %31 = ptrtoint ptr %mailbox.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mailbox.i, align 8
  %idc.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 51
  %33 = ptrtoint ptr %idc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %idc.i, align 8
  %call.i = tail call i32 %34(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %call2.i = tail call i32 @qlcnic_check_temp(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then4.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then4.i:                                       ; preds = %if.end.i
  %temp.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 42
  %35 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %temp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.i = icmp eq i32 %36, 3
  br i1 %cmp.i, label %if.then5.i, label %if.then4.i.if.end11.i_crit_edge

if.then4.i.if.end11.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qlcnic_83xx_idc_check_fan_failure(ptr noundef %add.ptr) #8
  %pdev.i60 = getelementptr i8, ptr %work, i32 -824
  %37 = ptrtoint ptr %pdev.i60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i60, align 8
  %dev.i61 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %temp8.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %40, i32 0, i32 42
  %41 = ptrtoint ptr %temp8.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %temp8.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i61, ptr noundef nonnull @.str.42, i32 noundef %42) #11
  %status.i = getelementptr inbounds %struct.qlcnic_mailbox, ptr %32, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status.i) #8
  %state.i = getelementptr i8, ptr %work, i32 -820
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #8
  tail call fastcc void @qlcnic_83xx_idc_detach_driver(ptr noundef %add.ptr) #8
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %add.ptr, i32 noundef 1) #8
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.then4.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 56
  %47 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i62 = getelementptr i32, ptr %48, i32 15
  %49 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i62, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 %50
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !385
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !391
  %call16.i = tail call fastcc i32 @qlcnic_83xx_check_heartbeat(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end26.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end11.i
  %flags.i = getelementptr i8, ptr %work, i32 -816
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %54, 16384
  store i32 %or.i, ptr %flags.i, align 8
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.then18.i
  %status21.i = getelementptr inbounds %struct.qlcnic_mailbox, ptr %32, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status21.i) #8
  %state22.i = getelementptr i8, ptr %work, i32 -820
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state22.i) #8
  %call.i.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i, label %if.then20.i.sw.epilog_crit_edge

if.then20.i.sw.epilog_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body.i.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !392
  tail call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %ext_reg_tbl.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %56, i32 0, i32 56
  %59 = ptrtoint ptr %ext_reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ext_reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %60, i32 12
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %58, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #8, !srcloc !384
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %add.ptr) #8
  br label %sw.epilog

if.else.i:                                        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  %netdev.i = getelementptr i8, ptr %work, i32 -828
  %63 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %64, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.43) #11
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %add.ptr, i32 noundef 1) #8
  br label %sw.epilog

if.end26.i:                                       ; preds = %if.end11.i
  %and27.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i, label %if.end26.i.if.then31.i_crit_edge

if.end26.i.if.then31.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

lor.lhs.false.i:                                  ; preds = %if.end26.i
  %collect_dump.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 51, i32 5
  %65 = ptrtoint ptr %collect_dump.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %collect_dump.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool30.not.i = icmp eq i32 %66, 0
  br i1 %tobool30.not.i, label %if.end34.i, label %lor.lhs.false.i.if.then31.i_crit_edge

lor.lhs.false.i.if.then31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i

if.then31.i:                                      ; preds = %lor.lhs.false.i.if.then31.i_crit_edge, %if.end26.i.if.then31.i_crit_edge
  %status32.i = getelementptr inbounds %struct.qlcnic_mailbox, ptr %32, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status32.i) #8
  %call.i1.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool1.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool1.not.i2.i, label %do.body.i6.i, label %if.then31.i.sw.epilog_crit_edge

if.then31.i.sw.epilog_crit_edge:                  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body.i6.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !392
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %ext_reg_tbl.i3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %68, i32 0, i32 56
  %71 = ptrtoint ptr %ext_reg_tbl.i3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ext_reg_tbl.i3.i, align 8
  %arrayidx.i4.i = getelementptr i32, ptr %72, i32 12
  %73 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %70, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 67108864) #8, !srcloc !384
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %add.ptr) #8
  br label %sw.epilog

if.end34.i:                                       ; preds = %lor.lhs.false.i
  %reset_context.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 13
  %75 = ptrtoint ptr %reset_context.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %reset_context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool35.not.i = icmp ne i8 %76, 0
  %and36.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  %or.cond.i = select i1 %tobool35.not.i, i1 %tobool37.not.i, i1 false
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 8
  br i1 %or.cond.i, label %if.then38.i, label %if.end42.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %reset_context40.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %78, i32 0, i32 13
  %79 = ptrtoint ptr %reset_context40.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %reset_context40.i, align 4
  tail call fastcc void @qlcnic_83xx_idc_tx_soft_reset(ptr noundef %add.ptr) #8
  br label %sw.epilog

if.end42.i:                                       ; preds = %if.end34.i
  %quiesce_req.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %78, i32 0, i32 51, i32 10
  %80 = ptrtoint ptr %quiesce_req.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %quiesce_req.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool45.not.i = icmp eq i8 %81, 0
  br i1 %tobool45.not.i, label %if.end42.i.sw.epilog_crit_edge, label %if.then46.i

if.end42.i.sw.epilog_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qlcnic_83xx_idc_enter_need_quiesce(ptr noundef %add.ptr) #8
  tail call fastcc void @qlcnic_83xx_idc_update_audit_reg(ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 1) #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %prev_state.i63 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 51, i32 7
  %82 = ptrtoint ptr %prev_state.i63 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %prev_state.i63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %83)
  %cmp.not.i = icmp eq i8 %83, 4
  br i1 %cmp.not.i, label %sw.bb15.if.end15.i_crit_edge, label %if.then.i

sw.bb15.if.end15.i_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %sw.bb15
  %mailbox.i64 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 59
  %84 = ptrtoint ptr %mailbox.i64 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mailbox.i64, align 8
  tail call fastcc void @qlcnic_83xx_idc_update_audit_reg(ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 1) #8
  %state.i65 = getelementptr i8, ptr %work, i32 -820
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i65) #8
  %status.i66 = getelementptr inbounds %struct.qlcnic_mailbox, ptr %85, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status.i66) #8
  %86 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr, align 8
  %nic_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %87, i32 0, i32 20
  %88 = ptrtoint ptr %nic_mode.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %nic_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %89)
  %cmp5.i = icmp eq i8 %89, -1
  br i1 %cmp5.i, label %if.then7.i, label %if.then.i.if.end.i68_crit_edge

if.then.i.if.end.i68_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i68

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @qlcnic_83xx_disable_vnic_mode(ptr noundef %add.ptr, i32 noundef 1) #8
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then7.i, %if.then.i.if.end.i68_crit_edge
  %90 = ptrtoint ptr %state.i65 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %state.i65, align 4
  %92 = and i32 %91, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i67 = icmp eq i32 %92, 0
  br i1 %tobool.not.i67, label %if.else.i73, label %do.end.i

do.end.i:                                         ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i69 = getelementptr i8, ptr %work, i32 -824
  %93 = ptrtoint ptr %pdev.i69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev.i69, align 8
  %dev.i70 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i70, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #11
  %95 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr, align 8
  %delay_reset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %96, i32 0, i32 51, i32 11
  %97 = ptrtoint ptr %delay_reset.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %delay_reset.i, align 1
  br label %sw.epilog

if.else.i73:                                      ; preds = %if.end.i68
  %call.i.i71 = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool1.not.i.i72 = icmp eq i32 %call.i.i71, 0
  br i1 %tobool1.not.i.i72, label %if.end3.i.i, label %if.else.i73.qlcnic_83xx_idc_update_drv_ack_reg.exit.i_crit_edge

if.else.i73.qlcnic_83xx_idc_update_drv_ack_reg.exit.i_crit_edge: ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_update_drv_ack_reg.exit.i

if.end3.i.i:                                      ; preds = %if.else.i73
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %ext_reg_tbl.i.i74 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %99, i32 0, i32 56
  %102 = ptrtoint ptr %ext_reg_tbl.i.i74 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ext_reg_tbl.i.i74, align 8
  %arrayidx.i.i75 = getelementptr i32, ptr %103, i32 14
  %104 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i75, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %101, i32 %105
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #8
  %portnum.i.i = getelementptr i8, ptr %work, i32 -794
  %108 = ptrtoint ptr %portnum.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %portnum.i.i, align 2
  %conv.i.i = zext i8 %109 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %or.i.i = or i32 %shl.i.i, %107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  tail call void @arm_heavy_mb() #8
  %110 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  %111 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %ext_reg_tbl16.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %112, i32 0, i32 56
  %115 = ptrtoint ptr %ext_reg_tbl16.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ext_reg_tbl16.i.i, align 8
  %arrayidx17.i.i = getelementptr i32, ptr %116, i32 14
  %117 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx17.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %114, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %110) #8, !srcloc !384
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %add.ptr) #8
  br label %qlcnic_83xx_idc_update_drv_ack_reg.exit.i

qlcnic_83xx_idc_update_drv_ack_reg.exit.i:        ; preds = %if.end3.i.i, %if.else.i73.qlcnic_83xx_idc_update_drv_ack_reg.exit.i_crit_edge
  tail call fastcc void @qlcnic_83xx_idc_detach_driver(ptr noundef %add.ptr) #8
  br label %if.end15.i

if.end15.i:                                       ; preds = %qlcnic_83xx_idc_update_drv_ack_reg.exit.i, %sw.bb15.if.end15.i_crit_edge
  %state.i1.i = getelementptr i8, ptr %work, i32 -820
  %119 = ptrtoint ptr %state.i1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %state.i1.i, align 4
  %121 = and i32 %120, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool17.not.i77 = icmp eq i32 %121, 0
  br i1 %tobool17.not.i77, label %if.else24.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev22.i = getelementptr i8, ptr %work, i32 -824
  %122 = ptrtoint ptr %pdev22.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev22.i, align 8
  %dev23.i = getelementptr inbounds %struct.pci_dev, ptr %123, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23.i, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104) #11
  br label %sw.epilog

if.else24.i:                                      ; preds = %if.end15.i
  %124 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr, align 8
  %delay_reset27.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %125, i32 0, i32 51, i32 11
  %126 = ptrtoint ptr %delay_reset27.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %delay_reset27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool28.not.i78 = icmp eq i8 %127, 0
  br i1 %tobool28.not.i78, label %if.else24.i.if.end34.i79_crit_edge, label %if.then29.i

if.else24.i.if.end34.i79_crit_edge:               ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i79

if.then29.i:                                      ; preds = %if.else24.i
  %call.i4.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool1.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool1.not.i5.i, label %if.end3.i16.i, label %if.then29.i.qlcnic_83xx_idc_update_drv_ack_reg.exit17.i_crit_edge

if.then29.i.qlcnic_83xx_idc_update_drv_ack_reg.exit17.i_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_update_drv_ack_reg.exit17.i

if.end3.i16.i:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr, align 8
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 8
  %ext_reg_tbl.i6.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %129, i32 0, i32 56
  %132 = ptrtoint ptr %ext_reg_tbl.i6.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ext_reg_tbl.i6.i, align 8
  %arrayidx.i7.i = getelementptr i32, ptr %133, i32 14
  %134 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %131, i32 %135
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #8
  %portnum.i9.i = getelementptr i8, ptr %work, i32 -794
  %138 = ptrtoint ptr %portnum.i9.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %portnum.i9.i, align 2
  %conv.i10.i = zext i8 %139 to i32
  %shl.i11.i = shl nuw i32 1, %conv.i10.i
  %or.i12.i = or i32 %shl.i11.i, %137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  tail call void @arm_heavy_mb() #8
  %140 = tail call i32 @llvm.bswap.i32(i32 %or.i12.i) #8
  %141 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %ext_reg_tbl16.i13.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %142, i32 0, i32 56
  %145 = ptrtoint ptr %ext_reg_tbl16.i13.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ext_reg_tbl16.i13.i, align 8
  %arrayidx17.i14.i = getelementptr i32, ptr %146, i32 14
  %147 = ptrtoint ptr %arrayidx17.i14.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx17.i14.i, align 4
  %add.ptr18.i15.i = getelementptr i8, ptr %144, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i15.i, i32 %140) #8, !srcloc !384
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %add.ptr) #8
  br label %qlcnic_83xx_idc_update_drv_ack_reg.exit17.i

qlcnic_83xx_idc_update_drv_ack_reg.exit17.i:      ; preds = %if.end3.i16.i, %if.then29.i.qlcnic_83xx_idc_update_drv_ack_reg.exit17.i_crit_edge
  tail call fastcc void @qlcnic_83xx_idc_detach_driver(ptr noundef %add.ptr) #8
  %149 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr, align 8
  %delay_reset33.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %150, i32 0, i32 51, i32 11
  %151 = ptrtoint ptr %delay_reset33.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %delay_reset33.i, align 1
  br label %if.end34.i79

if.end34.i79:                                     ; preds = %qlcnic_83xx_idc_update_drv_ack_reg.exit17.i, %if.else24.i.if.end34.i79_crit_edge
  %152 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %ext_reg_tbl.i18.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %153, i32 0, i32 56
  %156 = ptrtoint ptr %ext_reg_tbl.i18.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ext_reg_tbl.i18.i, align 8
  %arrayidx.i19.i = getelementptr i32, ptr %157, i32 14
  %158 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx.i19.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %155, i32 %159
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #8, !srcloc !385
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !395
  %162 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr, align 8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 8
  %ext_reg_tbl8.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %163, i32 0, i32 56
  %166 = ptrtoint ptr %ext_reg_tbl8.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ext_reg_tbl8.i.i, align 8
  %arrayidx9.i.i = getelementptr i32, ptr %167, i32 13
  %168 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx9.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %165, i32 %169
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #8, !srcloc !385
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !396
  %pdev.i.i = getelementptr i8, ptr %work, i32 -824
  %172 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %173, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef %161, i32 noundef %171) #11
  %and.i.i = and i32 %171, %161
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %171)
  %cmp.i.i = icmp eq i32 %and.i.i, %171
  br i1 %cmp.i.i, label %do.end53.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end34.i79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %174 = load volatile i32, ptr @jiffies, align 128
  %div.i.i.i = udiv i32 %174, 100
  %conv.i.i.i = zext i32 %div.i.i.i to i64
  %175 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %add.ptr, align 8
  %sec_counter.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %176, i32 0, i32 51, i32 1
  %177 = ptrtoint ptr %sec_counter.i.i.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %sec_counter.i.i.i, align 8
  %sub.i.i.i = sub i64 %conv.i.i.i, %178
  call void @__sanitizer_cov_trace_const_cmp8(i64 11, i64 %sub.i.i.i)
  %cmp.not.i.i.i = icmp ult i64 %sub.i.i.i, 11
  br i1 %cmp.not.i.i.i, label %if.then.i.i.do.end40.i_crit_edge, label %do.end18.i.i

if.then.i.i.do.end40.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

do.end18.i.i:                                     ; preds = %if.then.i.i
  %179 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pdev.i.i, align 8
  %dev20.i.i = getelementptr inbounds %struct.pci_dev, ptr %180, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20.i.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111) #11
  %181 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr, align 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 8
  %ext_reg_tbl26.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %182, i32 0, i32 56
  %185 = ptrtoint ptr %ext_reg_tbl26.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ext_reg_tbl26.i.i, align 8
  %arrayidx27.i.i = getelementptr i32, ptr %186, i32 13
  %187 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx27.i.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %184, i32 %188
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !397
  %call33.i.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %do.body36.i.i, label %do.end18.i.i.do.end40.i_crit_edge

do.end18.i.i.do.end40.i_crit_edge:                ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

do.body36.i.i:                                    ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #8
  %191 = xor i32 %161, %171
  %neg.i.i = xor i32 %191, -1
  %and32.i.i = and i32 %190, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !398
  tail call void @arm_heavy_mb() #8
  %192 = tail call i32 @llvm.bswap.i32(i32 %and32.i.i) #8
  %193 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %add.ptr, align 8
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %194, align 8
  %ext_reg_tbl42.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %194, i32 0, i32 56
  %197 = ptrtoint ptr %ext_reg_tbl42.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ext_reg_tbl42.i.i, align 8
  %arrayidx43.i.i = getelementptr i32, ptr %198, i32 13
  %199 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx43.i.i, align 4
  %add.ptr44.i.i = getelementptr i8, ptr %196, i32 %200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i.i, i32 %192) #8, !srcloc !384
  %201 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pdev.i.i, align 8
  %dev49.i.i = getelementptr inbounds %struct.pci_dev, ptr %202, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49.i.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.111, i32 noundef %and32.i.i) #11
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %add.ptr) #8
  br label %if.end44.i

do.end53.i.i:                                     ; preds = %if.end34.i79
  call void @__sanitizer_cov_trace_pc() #10
  %203 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev.i.i, align 8
  %dev55.i.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55.i.i, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.111) #11
  br label %if.end44.i

do.end40.i:                                       ; preds = %do.end18.i.i.do.end40.i_crit_edge, %if.then.i.i.do.end40.i_crit_edge
  %205 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pdev.i.i, align 8
  %dev42.i = getelementptr inbounds %struct.pci_dev, ptr %206, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.104) #11
  br label %sw.epilog

if.end44.i:                                       ; preds = %do.end53.i.i, %do.body36.i.i
  %call.i21.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool1.not.i22.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool1.not.i22.i, label %do.body.i.i80, label %if.end44.i.sw.epilog_crit_edge

if.end44.i.sw.epilog_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body.i.i80:                                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !399
  tail call void @arm_heavy_mb() #8
  %207 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %add.ptr, align 8
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 8
  %ext_reg_tbl.i23.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %208, i32 0, i32 56
  %211 = ptrtoint ptr %ext_reg_tbl.i23.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ext_reg_tbl.i23.i, align 8
  %arrayidx.i24.i = getelementptr i32, ptr %212, i32 12
  %213 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i24.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %210, i32 %214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 33554432) #8, !srcloc !384
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %add.ptr) #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i81 = getelementptr i8, ptr %work, i32 -824
  %215 = ptrtoint ptr %pdev.i81 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %pdev.i81, align 8
  %dev.i82 = getelementptr inbounds %struct.pci_dev, ptr %216, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122) #11
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  %217 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %27, align 8
  %ext_reg_tbl.i83 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 56
  %219 = ptrtoint ptr %ext_reg_tbl.i83 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ext_reg_tbl.i83, align 8
  %arrayidx.i84 = getelementptr i32, ptr %220, i32 15
  %221 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %218, i32 %222
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %224 = and i32 %223, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i86 = icmp eq i32 %224, 0
  br i1 %tobool.not.i86, label %sw.bb19.qlcnic_83xx_idc_failed_state.exit_crit_edge, label %if.then.i93

sw.bb19.qlcnic_83xx_idc_failed_state.exit_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_failed_state.exit

if.then.i93:                                      ; preds = %sw.bb19
  %225 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %add.ptr, align 8
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 8
  %ext_reg_tbl.i.i87 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %226, i32 0, i32 56
  %229 = ptrtoint ptr %ext_reg_tbl.i.i87 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ext_reg_tbl.i.i87, align 8
  %arrayidx.i.i88 = getelementptr i32, ptr %230, i32 35
  %231 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i.i88, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %228, i32 %232
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89) #8, !srcloc !385
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  %235 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %add.ptr, align 8
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %236, align 8
  %ext_reg_tbl8.i.i90 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %236, i32 0, i32 56
  %239 = ptrtoint ptr %ext_reg_tbl8.i.i90 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ext_reg_tbl8.i.i90, align 8
  %arrayidx9.i.i91 = getelementptr i32, ptr %240, i32 36
  %241 = ptrtoint ptr %arrayidx9.i.i91 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx9.i.i91, align 4
  %add.ptr10.i.i92 = getelementptr i8, ptr %238, i32 %242
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i92) #8, !srcloc !385
  %244 = tail call i32 @llvm.bswap.i32(i32 %243) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  br label %do.body.i.i97

do.body.i.i97:                                    ; preds = %do.cond.i.i.do.body.i.i97_crit_edge, %if.then.i93
  %owner.0.i.i = phi i32 [ 1, %if.then.i93 ], [ %owner.2.i.i, %do.cond.i.i.do.body.i.i97_crit_edge ]
  %j.0.i.i = phi i32 [ 0, %if.then.i93 ], [ %j.2.i.i, %do.cond.i.i.do.body.i.i97_crit_edge ]
  %i.0.i.i = phi i32 [ 0, %if.then.i93 ], [ %inc33.i.i, %do.cond.i.i.do.body.i.i97_crit_edge ]
  %reg.0.i.i = phi i32 [ %234, %if.then.i93 ], [ %reg.2.i.i, %do.cond.i.i.do.body.i.i97_crit_edge ]
  %mul.i.i = shl i32 %j.0.i.i, 2
  %shl.i.i94 = shl i32 15, %mul.i.i
  %and.i.i95 = and i32 %reg.0.i.i, %shl.i.i94
  %shr.i.i = lshr i32 %and.i.i95, %mul.i.i
  %and15.i.i = and i32 %shr.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i, i32 %owner.0.i.i)
  %cmp.i.i96 = icmp eq i32 %and15.i.i, %owner.0.i.i
  br i1 %cmp.i.i96, label %do.body.i.i97.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge, label %if.end.i.i

do.body.i.i97.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge: ; preds = %do.body.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit.i

if.end.i.i:                                       ; preds = %do.body.i.i97
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i.i)
  %cmp16.i.i = icmp eq i32 %i.0.i.i, 7
  %inc.i.i = add i32 %j.0.i.i, 1
  %j.1.i.i = select i1 %cmp16.i.i, i32 0, i32 %inc.i.i
  %reg.1.i.i = select i1 %cmp16.i.i, i32 %244, i32 %reg.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0.i.i)
  %cmp19.i.i = icmp eq i32 %i.0.i.i, 15
  br i1 %cmp19.i.i, label %if.then20.i.i, label %if.end.i.i.do.cond.i.i_crit_edge

if.end.i.i.do.cond.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  %245 = zext i32 %owner.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %245, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %owner.0.i.i, label %if.then20.i.i.qlcnic_83xx_idc_failed_state.exit_crit_edge [
    i32 1, label %if.then20.i.i.do.cond.i.i_crit_edge
    i32 3, label %if.then25.i.i
  ]

if.then20.i.i.do.cond.i.i_crit_edge:              ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i

if.then20.i.i.qlcnic_83xx_idc_failed_state.exit_crit_edge: ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_failed_state.exit

if.then25.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.then25.i.i, %if.then20.i.i.do.cond.i.i_crit_edge, %if.end.i.i.do.cond.i.i_crit_edge
  %owner.2.i.i = phi i32 [ %owner.0.i.i, %if.end.i.i.do.cond.i.i_crit_edge ], [ 2, %if.then25.i.i ], [ 3, %if.then20.i.i.do.cond.i.i_crit_edge ]
  %j.2.i.i = phi i32 [ %j.1.i.i, %if.end.i.i.do.cond.i.i_crit_edge ], [ 0, %if.then25.i.i ], [ 0, %if.then20.i.i.do.cond.i.i_crit_edge ]
  %i.1.i.i = phi i32 [ %i.0.i.i, %if.end.i.i.do.cond.i.i_crit_edge ], [ 0, %if.then25.i.i ], [ 0, %if.then20.i.i.do.cond.i.i_crit_edge ]
  %reg.2.i.i = phi i32 [ %reg.1.i.i, %if.end.i.i.do.cond.i.i_crit_edge ], [ %234, %if.then25.i.i ], [ %234, %if.then20.i.i.do.cond.i.i_crit_edge ]
  %inc33.i.i = add i32 %i.1.i.i, 1
  %cmp34.i.i = icmp ult i32 %i.1.i.i, 16
  br i1 %cmp34.i.i, label %do.cond.i.i.do.body.i.i97_crit_edge, label %do.cond.i.i.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge

do.cond.i.i.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit.i

do.cond.i.i.do.body.i.i97_crit_edge:              ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i97

qlcnic_83xx_idc_find_reset_owner_id.exit.i:       ; preds = %do.cond.i.i.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge, %do.body.i.i97.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %i.0.i.i, %do.body.i.i97.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge ], [ %inc33.i.i, %do.cond.i.i.qlcnic_83xx_idc_find_reset_owner_id.exit.i_crit_edge ]
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 6
  %246 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %pci_func.i, align 1
  %conv.i98 = zext i8 %247 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv.i98)
  %cmp.i99 = icmp eq i32 %retval.0.i.i, %conv.i98
  br i1 %cmp.i99, label %if.then7.i100, label %qlcnic_83xx_idc_find_reset_owner_id.exit.i.qlcnic_83xx_idc_failed_state.exit_crit_edge

qlcnic_83xx_idc_find_reset_owner_id.exit.i.qlcnic_83xx_idc_failed_state.exit_crit_edge: ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_failed_state.exit

if.then7.i100:                                    ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit.i
  %248 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %add.ptr, align 8
  %seq_index.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %249, i32 0, i32 50, i32 1
  %250 = ptrtoint ptr %seq_index.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %seq_index.i.i, align 4
  %251 = load ptr, ptr %add.ptr, align 8
  %stop_offset.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %251, i32 0, i32 50, i32 6
  %252 = ptrtoint ptr %stop_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %stop_offset.i.i, align 4
  tail call fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %add.ptr, ptr noundef %253) #8
  %254 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %add.ptr, align 8
  %seq_end.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %255, i32 0, i32 50, i32 9
  %256 = ptrtoint ptr %seq_end.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %seq_end.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %257)
  %cmp.not.i.i = icmp eq i8 %257, 1
  br i1 %cmp.not.i.i, label %if.then7.i100.qlcnic_83xx_stop_hw.exit.i_crit_edge, label %do.end.i.i

if.then7.i100.qlcnic_83xx_stop_hw.exit.i_crit_edge: ; preds = %if.then7.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_stop_hw.exit.i

do.end.i.i:                                       ; preds = %if.then7.i100
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i.i101 = getelementptr i8, ptr %work, i32 -824
  %258 = ptrtoint ptr %pdev.i.i101 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pdev.i.i101, align 8
  %dev.i.i102 = getelementptr inbounds %struct.pci_dev, ptr %259, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i102, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #11
  br label %qlcnic_83xx_stop_hw.exit.i

qlcnic_83xx_stop_hw.exit.i:                       ; preds = %do.end.i.i, %if.then7.i100.qlcnic_83xx_stop_hw.exit.i_crit_edge
  %call8.i103 = tail call i32 @qlcnic_dump_fw(ptr noundef %add.ptr) #8
  br label %qlcnic_83xx_idc_failed_state.exit

qlcnic_83xx_idc_failed_state.exit:                ; preds = %qlcnic_83xx_stop_hw.exit.i, %qlcnic_83xx_idc_find_reset_owner_id.exit.i.qlcnic_83xx_idc_failed_state.exit_crit_edge, %if.then20.i.i.qlcnic_83xx_idc_failed_state.exit_crit_edge, %sw.bb19.qlcnic_83xx_idc_failed_state.exit_crit_edge
  %netdev.i104 = getelementptr i8, ptr %work, i32 -828
  %260 = ptrtoint ptr %netdev.i104 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %netdev.i104, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %261, ptr noundef nonnull @.str.123, ptr noundef nonnull @__func__.qlcnic_83xx_idc_failed_state) #11
  %state.i105 = getelementptr i8, ptr %work, i32 -820
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i105) #8
  %err_code.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 51, i32 4
  %262 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 -5, ptr %err_code.i, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %prev_state.i106 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 51, i32 7
  %263 = ptrtoint ptr %prev_state.i106 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %prev_state.i106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %264)
  %cmp.i107 = icmp eq i8 %264, 4
  br i1 %cmp.i107, label %if.then.i114, label %if.else.i145

if.then.i114:                                     ; preds = %sw.bb20
  %265 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %27, align 8
  %ext_reg_tbl.i.i108 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 56
  %267 = ptrtoint ptr %ext_reg_tbl.i.i108 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ext_reg_tbl.i.i108, align 8
  %arrayidx.i.i109 = getelementptr i32, ptr %268, i32 35
  %269 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx.i.i109, align 4
  %add.ptr.i.i110 = getelementptr i8, ptr %266, i32 %270
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i110) #8, !srcloc !385
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  %273 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %add.ptr, align 8
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %274, align 8
  %ext_reg_tbl8.i.i111 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %274, i32 0, i32 56
  %277 = ptrtoint ptr %ext_reg_tbl8.i.i111 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %ext_reg_tbl8.i.i111, align 8
  %arrayidx9.i.i112 = getelementptr i32, ptr %278, i32 36
  %279 = ptrtoint ptr %arrayidx9.i.i112 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx9.i.i112, align 4
  %add.ptr10.i.i113 = getelementptr i8, ptr %276, i32 %280
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i113) #8, !srcloc !385
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  br label %do.body.i.i125

do.body.i.i125:                                   ; preds = %do.cond.i.i140.do.body.i.i125_crit_edge, %if.then.i114
  %owner.0.i.i115 = phi i32 [ 1, %if.then.i114 ], [ %owner.2.i.i134, %do.cond.i.i140.do.body.i.i125_crit_edge ]
  %j.0.i.i116 = phi i32 [ 0, %if.then.i114 ], [ %j.2.i.i135, %do.cond.i.i140.do.body.i.i125_crit_edge ]
  %i.0.i.i117 = phi i32 [ 0, %if.then.i114 ], [ %inc33.i.i138, %do.cond.i.i140.do.body.i.i125_crit_edge ]
  %reg.0.i.i118 = phi i32 [ %272, %if.then.i114 ], [ %reg.2.i.i137, %do.cond.i.i140.do.body.i.i125_crit_edge ]
  %mul.i.i119 = shl i32 %j.0.i.i116, 2
  %shl.i.i120 = shl i32 15, %mul.i.i119
  %and.i.i121 = and i32 %reg.0.i.i118, %shl.i.i120
  %shr.i.i122 = lshr i32 %and.i.i121, %mul.i.i119
  %and15.i.i123 = and i32 %shr.i.i122, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i123, i32 %owner.0.i.i115)
  %cmp.i.i124 = icmp eq i32 %and15.i.i123, %owner.0.i.i115
  br i1 %cmp.i.i124, label %do.body.i.i125.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge, label %if.end.i.i131

do.body.i.i125.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge: ; preds = %do.body.i.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit.i144

if.end.i.i131:                                    ; preds = %do.body.i.i125
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i.i117)
  %cmp16.i.i126 = icmp eq i32 %i.0.i.i117, 7
  %inc.i.i127 = add i32 %j.0.i.i116, 1
  %j.1.i.i128 = select i1 %cmp16.i.i126, i32 0, i32 %inc.i.i127
  %reg.1.i.i129 = select i1 %cmp16.i.i126, i32 %282, i32 %reg.0.i.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0.i.i117)
  %cmp19.i.i130 = icmp eq i32 %i.0.i.i117, 15
  br i1 %cmp19.i.i130, label %if.then20.i.i132, label %if.end.i.i131.do.cond.i.i140_crit_edge

if.end.i.i131.do.cond.i.i140_crit_edge:           ; preds = %if.end.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i140

if.then20.i.i132:                                 ; preds = %if.end.i.i131
  %283 = zext i32 %owner.0.i.i115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %owner.0.i.i115, label %if.then20.i.i132.sw.epilog_crit_edge [
    i32 1, label %if.then20.i.i132.do.cond.i.i140_crit_edge
    i32 3, label %if.then25.i.i133
  ]

if.then20.i.i132.do.cond.i.i140_crit_edge:        ; preds = %if.then20.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i140

if.then20.i.i132.sw.epilog_crit_edge:             ; preds = %if.then20.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then25.i.i133:                                 ; preds = %if.then20.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i.i140

do.cond.i.i140:                                   ; preds = %if.then25.i.i133, %if.then20.i.i132.do.cond.i.i140_crit_edge, %if.end.i.i131.do.cond.i.i140_crit_edge
  %owner.2.i.i134 = phi i32 [ %owner.0.i.i115, %if.end.i.i131.do.cond.i.i140_crit_edge ], [ 2, %if.then25.i.i133 ], [ 3, %if.then20.i.i132.do.cond.i.i140_crit_edge ]
  %j.2.i.i135 = phi i32 [ %j.1.i.i128, %if.end.i.i131.do.cond.i.i140_crit_edge ], [ 0, %if.then25.i.i133 ], [ 0, %if.then20.i.i132.do.cond.i.i140_crit_edge ]
  %i.1.i.i136 = phi i32 [ %i.0.i.i117, %if.end.i.i131.do.cond.i.i140_crit_edge ], [ 0, %if.then25.i.i133 ], [ 0, %if.then20.i.i132.do.cond.i.i140_crit_edge ]
  %reg.2.i.i137 = phi i32 [ %reg.1.i.i129, %if.end.i.i131.do.cond.i.i140_crit_edge ], [ %272, %if.then25.i.i133 ], [ %272, %if.then20.i.i132.do.cond.i.i140_crit_edge ]
  %inc33.i.i138 = add i32 %i.1.i.i136, 1
  %cmp34.i.i139 = icmp ult i32 %i.1.i.i136, 16
  br i1 %cmp34.i.i139, label %do.cond.i.i140.do.body.i.i125_crit_edge, label %do.cond.i.i140.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge

do.cond.i.i140.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge: ; preds = %do.cond.i.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit.i144

do.cond.i.i140.do.body.i.i125_crit_edge:          ; preds = %do.cond.i.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i125

qlcnic_83xx_idc_find_reset_owner_id.exit.i144:    ; preds = %do.cond.i.i140.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge, %do.body.i.i125.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge
  %retval.0.i.i141 = phi i32 [ %i.0.i.i117, %do.body.i.i125.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge ], [ %inc33.i.i138, %do.cond.i.i140.qlcnic_83xx_idc_find_reset_owner_id.exit.i144_crit_edge ]
  %284 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %add.ptr, align 8
  %pci_func.i142 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %285, i32 0, i32 6
  %286 = ptrtoint ptr %pci_func.i142 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %pci_func.i142, align 1
  %conv3.i143 = zext i8 %287 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i141, i32 %conv3.i143)
  %cmp4.i = icmp eq i32 %retval.0.i.i141, %conv3.i143
  br i1 %cmp4.i, label %if.then6.i, label %qlcnic_83xx_idc_find_reset_owner_id.exit.i144.sw.epilog_crit_edge

qlcnic_83xx_idc_find_reset_owner_id.exit.i144.sw.epilog_crit_edge: ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6.i:                                       ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit.i144
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call fastcc i32 @qlcnic_83xx_idc_restart_hw(ptr noundef %add.ptr, i32 noundef 1) #8
  br label %sw.epilog

if.else.i145:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %288 = load volatile i32, ptr @jiffies, align 128
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i146 = getelementptr i8, ptr %work, i32 -824
  %289 = ptrtoint ptr %pdev.i146 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %pdev.i146, align 8
  %dev.i147 = getelementptr inbounds %struct.pci_dev, ptr %290, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i147, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.138) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %err_code.i148 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 51, i32 4
  %291 = ptrtoint ptr %err_code.i148 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 -5, ptr %err_code.i148, align 4
  %pdev.i149 = getelementptr i8, ptr %work, i32 -824
  %292 = ptrtoint ptr %pdev.i149 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %pdev.i149, align 8
  %dev.i150 = getelementptr inbounds %struct.pci_dev, ptr %293, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i150, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140) #11
  %state.i151 = getelementptr i8, ptr %work, i32 -820
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i151) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb22, %if.else.i145, %if.then6.i, %qlcnic_83xx_idc_find_reset_owner_id.exit.i144.sw.epilog_crit_edge, %if.then20.i.i132.sw.epilog_crit_edge, %sw.bb17, %do.body.i.i80, %if.end44.i.sw.epilog_crit_edge, %do.end40.i, %do.end21.i, %do.end.i, %if.then46.i, %if.end42.i.sw.epilog_crit_edge, %if.then38.i, %do.body.i6.i, %if.then31.i.sw.epilog_crit_edge, %if.else.i, %do.body.i.i, %if.then20.i.sw.epilog_crit_edge, %if.then5.i, %sw.bb.sw.epilog_crit_edge
  %294 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %add.ptr, align 8
  %curr_state27 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %295, i32 0, i32 51, i32 6
  %296 = ptrtoint ptr %curr_state27 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %curr_state27, align 4
  %prev_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %295, i32 0, i32 51, i32 7
  %298 = ptrtoint ptr %prev_state to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %297, ptr %prev_state, align 1
  %fnum.i = getelementptr i8, ptr %work, i32 308
  %299 = ptrtoint ptr %fnum.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %fnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool.not.i152 = icmp eq i8 %300, 0
  br i1 %tobool.not.i152, label %sw.epilog.qlcnic_83xx_periodic_tasks.exit_crit_edge, label %if.then.i153

sw.epilog.qlcnic_83xx_periodic_tasks.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_periodic_tasks.exit

if.then.i153:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_prune_lb_filters(ptr noundef %add.ptr) #8
  br label %qlcnic_83xx_periodic_tasks.exit

qlcnic_83xx_periodic_tasks.exit:                  ; preds = %if.then.i153, %sw.epilog.qlcnic_83xx_periodic_tasks.exit_crit_edge
  %301 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %add.ptr, align 8
  %status = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %302, i32 0, i32 51, i32 3
  %303 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load volatile i32, ptr %status, align 4
  %305 = and i32 %304, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool33.not = icmp eq i32 %305, 0
  br i1 %tobool33.not, label %qlcnic_83xx_periodic_tasks.exit.cleanup_crit_edge, label %if.then34

qlcnic_83xx_periodic_tasks.exit.cleanup_crit_edge: ; preds = %qlcnic_83xx_periodic_tasks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %qlcnic_83xx_periodic_tasks.exit
  call void @__sanitizer_cov_trace_pc() #10
  %delay = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %302, i32 0, i32 51, i32 2
  %306 = ptrtoint ptr %delay to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %delay, align 8
  %conv37 = trunc i64 %307 to i32
  tail call void @qlcnic_schedule_work(ptr noundef %add.ptr, ptr noundef nonnull @qlcnic_83xx_idc_poll_dev_state, i32 noundef %conv37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %qlcnic_83xx_periodic_tasks.exit.cleanup_crit_edge, %sw.default, %qlcnic_83xx_idc_failed_state.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_idc_check_state_validity(ptr nocapture noundef readonly %adapter, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %curr_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 6
  %2 = ptrtoint ptr %curr_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_state, align 4
  %conv = zext i8 %3 to i32
  %prev_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %4 = ptrtoint ptr %prev_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %prev_state, align 1
  %conv3 = zext i8 %5 to i32
  %6 = add i32 %state, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %6)
  %7 = icmp ult i32 %6, -7
  br i1 %7, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %conv, i32 noundef %conv3, i32 noundef %state) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7 = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9 = icmp ne i8 %5, 0
  %or.cond66 = select i1 %cmp7, i1 true, i1 %cmp9
  %10 = freeze i1 %or.cond66
  br i1 %10, label %if.end24, label %switch.early.test

switch.early.test:                                ; preds = %if.end
  %11 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %state, label %do.end20 [
    i32 1, label %switch.early.test.cleanup_crit_edge
    i32 3, label %switch.early.test.cleanup_crit_edge73
  ]

switch.early.test.cleanup_crit_edge73:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  %pdev21 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %12 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev21, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 0, i32 noundef 0, i32 noundef %state) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp25.not = icmp eq i32 %state, 2
  br i1 %cmp25.not, label %switch.early.test72, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test72:                              ; preds = %if.end24
  %14 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.206)
  switch i8 %5, label %do.end39 [
    i8 4, label %switch.early.test72.cleanup_crit_edge
    i8 2, label %switch.early.test72.cleanup_crit_edge74
    i8 1, label %switch.early.test72.cleanup_crit_edge75
  ]

switch.early.test72.cleanup_crit_edge75:          ; preds = %switch.early.test72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test72.cleanup_crit_edge74:          ; preds = %switch.early.test72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.early.test72.cleanup_crit_edge:            ; preds = %switch.early.test72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %switch.early.test72
  call void @__sanitizer_cov_trace_pc() #10
  %pdev40 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %15 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev40, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %conv, i32 noundef %conv3, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %switch.early.test72.cleanup_crit_edge, %switch.early.test72.cleanup_crit_edge74, %switch.early.test72.cleanup_crit_edge75, %if.end24.cleanup_crit_edge, %do.end20, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge73, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %do.end20 ], [ 1, %do.end39 ], [ 0, %switch.early.test72.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %switch.early.test72.cleanup_crit_edge74 ], [ 0, %switch.early.test72.cleanup_crit_edge75 ], [ 0, %switch.early.test.cleanup_crit_edge ], [ 0, %switch.early.test.cleanup_crit_edge73 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_schedule_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_idc_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %idc_params.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idc_params.i) #8
  %0 = ptrtoint ptr %idc_params.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idc_params.i, align 4, !annotation !403
  %call.i = call i32 @qlcnic_83xx_flash_read32(ptr noundef %adapter, i32 noundef 4096032, ptr noundef nonnull %idc_params.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142) #11
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %idc_params.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idc_params.i, align 4
  %conv.i = trunc i32 %4 to i8
  %shr.i = lshr i32 %4, 16
  %conv3.i = trunc i32 %shr.i to i8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end.i
  %.sink51.i = phi i8 [ %conv.i, %if.else.i ], [ 30, %do.end.i ]
  %.sink.i = phi i8 [ %conv3.i, %if.else.i ], [ 10, %do.end.i ]
  %5 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 33
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink51.i, ptr %5, align 2
  %7 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink.i, ptr %7, align 1
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter, align 8
  %curr_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 51, i32 6
  %11 = ptrtoint ptr %curr_state.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %curr_state.i, align 4
  %12 = load ptr, ptr %adapter, align 8
  %prev_state.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 51, i32 7
  %13 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %prev_state.i, align 1
  %14 = load ptr, ptr %adapter, align 8
  %delay.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 51, i32 2
  %15 = ptrtoint ptr %delay.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 100, ptr %delay.i, align 8
  %16 = load ptr, ptr %adapter, align 8
  %err_code.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 51, i32 4
  %17 = ptrtoint ptr %err_code.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %err_code.i, align 4
  %18 = load ptr, ptr %adapter, align 8
  %collect_dump.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 51, i32 5
  %19 = ptrtoint ptr %collect_dump.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %collect_dump.i, align 8
  %20 = load ptr, ptr %adapter, align 8
  %name.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %20, i32 0, i32 51, i32 12
  %21 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @qlc_83xx_idc_states, ptr %name.i, align 4
  %state.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #8
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %status.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 51, i32 3
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_auto_fw_reset to i32))
  %24 = load i32, ptr @qlcnic_auto_fw_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not.i = icmp eq i32 %24, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end.i.qlcnic_83xx_setup_idc_parameters.exit_crit_edge

if.end.i.qlcnic_83xx_setup_idc_parameters.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_setup_idc_parameters.exit

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %26, i32 0, i32 56
  %29 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %30, i32 15
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %32
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !404
  %34 = or i32 %33, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !405
  call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %ext_reg_tbl29.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %36, i32 0, i32 56
  %39 = ptrtoint ptr %ext_reg_tbl29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ext_reg_tbl29.i, align 8
  %arrayidx30.i = getelementptr i32, ptr %40, i32 15
  %41 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx30.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %38, i32 %42
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %34) #8, !srcloc !384
  br label %qlcnic_83xx_setup_idc_parameters.exit

qlcnic_83xx_setup_idc_parameters.exit:            ; preds = %if.then18.i, %if.end.i.qlcnic_83xx_setup_idc_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idc_params.i) #8
  %43 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter, align 8
  %reset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 50
  %buff.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 50, i32 5
  %45 = ptrtoint ptr %buff.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buff.i, align 8
  %cmp.not.i = icmp eq ptr %46, null
  br i1 %cmp.not.i, label %qlcnic_83xx_setup_idc_parameters.exit.if.end6.i_crit_edge, label %if.then.i

qlcnic_83xx_setup_idc_parameters.exit.if.end6.i_crit_edge: ; preds = %qlcnic_83xx_setup_idc_parameters.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %qlcnic_83xx_setup_idc_parameters.exit
  %fw_version.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 62
  %47 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fw_version.i, align 4
  %call.i19 = call i32 @qlcnic_83xx_get_fw_version(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i19, i32 %48)
  %cmp2.i = icmp ugt i32 %call.i19, %48
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %buff.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buff.i, align 8
  call void @kfree(ptr noundef %50) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %qlcnic_83xx_setup_idc_parameters.exit.if.end6.i_crit_edge
  %seq_error.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 50, i32 2
  %51 = ptrtoint ptr %seq_error.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %seq_error.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 8192) #12
  %53 = ptrtoint ptr %buff.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i.i, ptr %buff.i, align 8
  %cmp13.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp13.i, label %if.end6.i.cleanup_crit_edge, label %if.end15.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.i:                                       ; preds = %if.end6.i
  %54 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter, align 8
  %buff18.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %55, i32 0, i32 50, i32 5
  %56 = ptrtoint ptr %buff18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buff18.i, align 8
  %call19.i = call i32 @qlcnic_83xx_flash_read32(ptr noundef %adapter, i32 noundef 5177344, ptr noundef %57, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i20 = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i20, label %if.end21.i, label %do.end.i23

do.end.i23:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i21 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %58 = ptrtoint ptr %pdev.i21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev.i21, align 8
  %dev.i22 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154) #11
  br label %cleanup

if.end21.i:                                       ; preds = %if.end15.i
  %60 = ptrtoint ptr %buff.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buff.i, align 8
  %62 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %reset.i, align 8
  %hdr_size.i = getelementptr inbounds %struct.qlc_83xx_reset_hdr, ptr %61, i32 0, i32 5
  %63 = ptrtoint ptr %hdr_size.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %hdr_size.i, align 1
  %conv.i24 = zext i16 %64 to i32
  %add.i = or i32 %conv.i24, 5177344
  %add.ptr.i25 = getelementptr i8, ptr %61, i32 %conv.i24
  %size.i = getelementptr inbounds %struct.qlc_83xx_reset_hdr, ptr %61, i32 0, i32 3
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %size.i, align 1
  %conv35.i = zext i16 %66 to i32
  %sub.i = sub nsw i32 %conv35.i, %conv.i24
  %div113.i = lshr i32 %sub.i, 2
  %call40.i = call i32 @qlcnic_83xx_flash_read32(ptr noundef %adapter, i32 noundef %add.i, ptr noundef %add.ptr.i25, i32 noundef %div113.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end48.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdev46.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %67 = ptrtoint ptr %pdev46.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev46.i, align 8
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154) #11
  br label %cleanup

if.end48.i:                                       ; preds = %if.end21.i
  %69 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter, align 8
  %reset.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %70, i32 0, i32 50
  %71 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reset.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.qlc_83xx_reset_hdr, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %size.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %size.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %74)
  %cmp20.not.i.i = icmp ult i16 %74, 2
  br i1 %cmp20.not.i.i, label %if.end48.i.if.end52.i_crit_edge, label %while.body.preheader.i.i

if.end48.i.if.end52.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

while.body.preheader.i.i:                         ; preds = %if.end48.i
  %75 = lshr i16 %74, 1
  %div.i.i = zext i16 %75 to i32
  %buff1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %70, i32 0, i32 50, i32 5
  %76 = ptrtoint ptr %buff1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buff1.i.i, align 8
  br label %while.body.i.i

while.cond6.preheader.i.i:                        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i.i)
  %tobool.not24.i.i = icmp ult i32 %add.i.i, 65536
  br i1 %tobool.not24.i.i, label %while.cond6.preheader.i.i.if.end52.i_crit_edge, label %while.cond6.preheader.i.i.while.body7.i.i_crit_edge

while.cond6.preheader.i.i.while.body7.i.i_crit_edge: ; preds = %while.cond6.preheader.i.i
  br label %while.body7.i.i

while.cond6.preheader.i.i.if.end52.i_crit_edge:   ; preds = %while.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %count.023.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %div.i.i, %while.body.preheader.i.i ]
  %buff.022.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %77, %while.body.preheader.i.i ]
  %sum.021.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %dec.i.i = add nsw i32 %count.023.i.i, -1
  %incdec.ptr.i.i = getelementptr i16, ptr %buff.022.i.i, i32 1
  %78 = ptrtoint ptr %buff.022.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %buff.022.i.i, align 2
  %conv5.i.i = zext i16 %79 to i32
  %add.i.i = add i32 %sum.021.i.i, %conv5.i.i
  %cmp.i.i = icmp ugt i32 %count.023.i.i, 1
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.cond6.preheader.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body7.i.i:                                  ; preds = %while.body7.i.i.while.body7.i.i_crit_edge, %while.cond6.preheader.i.i.while.body7.i.i_crit_edge
  %sum.125.i.i = phi i32 [ %add9.i.i, %while.body7.i.i.while.body7.i.i_crit_edge ], [ %add.i.i, %while.cond6.preheader.i.i.while.body7.i.i_crit_edge ]
  %shr.i.i = lshr i32 %sum.125.i.i, 16
  %and.i.i = and i32 %sum.125.i.i, 65535
  %add9.i.i = add nuw nsw i32 %and.i.i, %shr.i.i
  %tobool.not.i.i = icmp ult i32 %add9.i.i, 65536
  br i1 %tobool.not.i.i, label %while.body7.i.i.if.end52.i_crit_edge, label %while.body7.i.i.while.body7.i.i_crit_edge

while.body7.i.i.while.body7.i.i_crit_edge:        ; preds = %while.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body7.i.i

while.body7.i.i.if.end52.i_crit_edge:             ; preds = %while.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %while.body7.i.i.if.end52.i_crit_edge, %while.cond6.preheader.i.i.if.end52.i_crit_edge, %if.end48.i.if.end52.i_crit_edge
  %80 = ptrtoint ptr %buff.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buff.i, align 8
  %82 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reset.i, align 8
  %init_offset.i = getelementptr inbounds %struct.qlc_83xx_reset_hdr, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %init_offset.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %init_offset.i, align 1
  %conv57.i = zext i16 %85 to i32
  %add.ptr58.i = getelementptr i8, ptr %81, i32 %conv57.i
  %init_offset60.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 50, i32 8
  %86 = ptrtoint ptr %init_offset60.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr58.i, ptr %init_offset60.i, align 4
  %start_offset.i = getelementptr inbounds %struct.qlc_83xx_reset_hdr, ptr %83, i32 0, i32 6
  %87 = ptrtoint ptr %start_offset.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %start_offset.i, align 1
  %conv65.i = zext i16 %88 to i32
  %add.ptr66.i = getelementptr i8, ptr %81, i32 %conv65.i
  %start_offset68.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 50, i32 7
  %89 = ptrtoint ptr %start_offset68.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr66.i, ptr %start_offset68.i, align 8
  %hdr_size73.i = getelementptr inbounds %struct.qlc_83xx_reset_hdr, ptr %83, i32 0, i32 5
  %90 = ptrtoint ptr %hdr_size73.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %hdr_size73.i, align 1
  %conv74.i = zext i16 %91 to i32
  %add.ptr75.i = getelementptr i8, ptr %81, i32 %conv74.i
  %stop_offset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 50, i32 6
  %92 = ptrtoint ptr %stop_offset.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr75.i, ptr %stop_offset.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end52.i, %if.then.i.if.end_crit_edge
  %93 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adapter, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  %ext_reg_tbl.i26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %94, i32 0, i32 56
  %97 = ptrtoint ptr %ext_reg_tbl.i26 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ext_reg_tbl.i26, align 8
  %arrayidx.i27 = getelementptr i32, ptr %98, i32 13
  %99 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i27, align 4
  %add.ptr.i28 = getelementptr i8, ptr %96, i32 %100
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !406
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %101)
  %tobool.not.i29 = icmp ult i32 %101, 65536
  br i1 %tobool.not.i29, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call.i30 = call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %do.body.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.then3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !407
  call void @arm_heavy_mb() #8
  %102 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %ext_reg_tbl.i32 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %103, i32 0, i32 56
  %106 = ptrtoint ptr %ext_reg_tbl.i32 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ext_reg_tbl.i32, align 8
  %arrayidx.i33 = getelementptr i32, ptr %107, i32 18
  %108 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %105, i32 %109
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 0) #8, !srcloc !384
  %110 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 8
  %ext_reg_tbl.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %111, i32 0, i32 56
  %114 = ptrtoint ptr %ext_reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ext_reg_tbl.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %115, i32 11
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %113, i32 %117
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !408
  %119 = and i32 %118, 16777215
  %120 = or i32 %119, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %adapter, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 8
  %ext_reg_tbl10.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %122, i32 0, i32 56
  %125 = ptrtoint ptr %ext_reg_tbl10.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ext_reg_tbl10.i.i, align 8
  %arrayidx11.i.i = getelementptr i32, ptr %126, i32 11
  %127 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx11.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %124, i32 %128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %120) #8, !srcloc !384
  %129 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %adapter, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 8
  %ext_reg_tbl9.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %130, i32 0, i32 56
  %133 = ptrtoint ptr %ext_reg_tbl9.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ext_reg_tbl9.i, align 8
  %arrayidx10.i = getelementptr i32, ptr %134, i32 12
  %135 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %132, i32 %136
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !385
  %138 = call i32 @llvm.bswap.i32(i32 %137) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !410
  %call14.i = call fastcc i32 @qlcnic_83xx_idc_check_state_validity(ptr noundef %adapter, i32 noundef %138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %qlcnic_83xx_idc_first_to_load_function_handler.exit

if.end17.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %137)
  %cmp.not.i35 = icmp eq i32 %137, 16777216
  br i1 %cmp.not.i35, label %if.end17.i.if.then33.i_crit_edge, label %land.lhs.true.i

if.end17.i.if.then33.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33.i

land.lhs.true.i:                                  ; preds = %if.end17.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_load_fw_file to i32))
  %139 = load i32, ptr @qlcnic_load_fw_file, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool18.not.i = icmp eq i32 %139, 0
  br i1 %tobool18.not.i, label %if.end29.i, label %do.body20.i

do.body20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !411
  call void @arm_heavy_mb() #8
  %140 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %adapter, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 8
  %ext_reg_tbl26.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %141, i32 0, i32 56
  %144 = ptrtoint ptr %ext_reg_tbl26.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ext_reg_tbl26.i, align 8
  %arrayidx27.i = getelementptr i32, ptr %145, i32 12
  %146 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx27.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %143, i32 %147
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 16777216) #8, !srcloc !384
  br label %if.then33.i

if.end29.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i36 = trunc i32 %138 to i8
  %148 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %adapter, align 8
  %curr_state.i37 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %149, i32 0, i32 51, i32 6
  %150 = ptrtoint ptr %curr_state.i37 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv.i36, ptr %curr_state.i37, align 4
  br label %if.end35.i

if.then33.i:                                      ; preds = %do.body20.i, %if.end17.i.if.then33.i_crit_edge
  %151 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %adapter, align 8
  %curr_state83.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %152, i32 0, i32 51, i32 6
  %153 = ptrtoint ptr %curr_state83.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %curr_state83.i, align 4
  %154 = load ptr, ptr %adapter, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 8
  %ext_reg_tbl.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %154, i32 0, i32 56
  %157 = ptrtoint ptr %ext_reg_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ext_reg_tbl.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i32, ptr %158, i32 13
  %159 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %156, i32 %160
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !412
  %162 = call i32 @llvm.bswap.i32(i32 %161) #8
  %portnum.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %163 = ptrtoint ptr %portnum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %portnum.i.i.i, align 2
  %conv.i.i.i = zext i8 %164 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %or.i.i.i = or i32 %shl.i.i.i, %162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !413
  call void @arm_heavy_mb() #8
  %165 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  %166 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %adapter, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 8
  %ext_reg_tbl16.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %167, i32 0, i32 56
  %170 = ptrtoint ptr %ext_reg_tbl16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ext_reg_tbl16.i.i.i, align 8
  %arrayidx17.i.i.i = getelementptr i32, ptr %171, i32 13
  %172 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx17.i.i.i, align 4
  %add.ptr18.i.i.i = getelementptr i8, ptr %169, i32 %173
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i.i, i32 %165) #8, !srcloc !384
  %174 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adapter, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 8
  %ext_reg_tbl.i.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %175, i32 0, i32 56
  %178 = ptrtoint ptr %ext_reg_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ext_reg_tbl.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr i32, ptr %179, i32 17
  %180 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %177, i32 %181
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !385
  %183 = call i32 @llvm.bswap.i32(i32 %182) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  %184 = ptrtoint ptr %portnum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %portnum.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %185 to i32
  %mul.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 1
  %shl.i.i.i.i = shl i32 3, %mul.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %and.i.i.i.i = and i32 %183, %neg.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  call void @arm_heavy_mb() #8
  %186 = call i32 @llvm.bswap.i32(i32 %and.i.i.i.i) #8
  %187 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %adapter, align 8
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 8
  %ext_reg_tbl10.i.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %188, i32 0, i32 56
  %191 = ptrtoint ptr %ext_reg_tbl10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ext_reg_tbl10.i.i.i.i, align 8
  %arrayidx11.i.i.i.i = getelementptr i32, ptr %192, i32 17
  %193 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx11.i.i.i.i, align 4
  %add.ptr12.i.i.i.i = getelementptr i8, ptr %190, i32 %194
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i.i.i, i32 %186) #8, !srcloc !384
  %195 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %adapter, align 8
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 8
  %ext_reg_tbl.i1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %196, i32 0, i32 56
  %199 = ptrtoint ptr %ext_reg_tbl.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ext_reg_tbl.i1.i.i, align 8
  %arrayidx.i2.i.i = getelementptr i32, ptr %200, i32 16
  %201 = ptrtoint ptr %arrayidx.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i2.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %198, i32 %202
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i.i) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !416
  %204 = ptrtoint ptr %portnum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %portnum.i.i.i, align 2
  %206 = and i8 %205, 15
  %and.i.i.i = zext i8 %206 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %207 = load volatile i32, ptr @jiffies, align 128
  %div14.i.i.i = udiv i32 %207, 100
  %208 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %adapter, align 8
  %sec_counter.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %209, i32 0, i32 51, i32 1
  %210 = ptrtoint ptr %sec_counter.i.i.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %sec_counter.i.i.i, align 8
  %212 = trunc i64 %211 to i32
  %conv13.i.i.i = sub i32 %div14.i.i.i, %212
  %shl16.i.i.i = shl i32 %conv13.i.i.i, 8
  %213 = or i32 %203, -2147483648
  %214 = call i32 @llvm.bswap.i32(i32 %213) #8
  %or8.i.i.i = or i32 %214, %and.i.i.i
  %or17.i.i.i = or i32 %or8.i.i.i, %shl16.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  call void @arm_heavy_mb() #8
  %215 = call i32 @llvm.bswap.i32(i32 %or17.i.i.i) #8
  %216 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %adapter, align 8
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 8
  %ext_reg_tbl21.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %217, i32 0, i32 56
  %220 = ptrtoint ptr %ext_reg_tbl21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ext_reg_tbl21.i.i.i, align 8
  %arrayidx22.i.i.i = getelementptr i32, ptr %221, i32 16
  %222 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx22.i.i.i, align 4
  %add.ptr23.i.i.i = getelementptr i8, ptr %219, i32 %223
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i.i, i32 %215) #8, !srcloc !384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %224 = load volatile i32, ptr @jiffies, align 128
  %div24.i.i.i = udiv i32 %224, 100
  %conv25.i.i.i = zext i32 %div24.i.i.i to i64
  %225 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %adapter, align 8
  %sec_counter28.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %226, i32 0, i32 51, i32 1
  %227 = ptrtoint ptr %sec_counter28.i.i.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %conv25.i.i.i, ptr %sec_counter28.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_load_fw_file to i32))
  %228 = load i32, ptr @qlcnic_load_fw_file, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i.i38 = icmp eq i32 %228, 0
  br i1 %tobool.not.i.i38, label %if.then33.i.do.body.i.i.i.i_crit_edge, label %if.then.i.i

if.then33.i.do.body.i.i.i.i_crit_edge:            ; preds = %if.then33.i
  br label %do.body.i.i.i.i

if.then.i.i:                                      ; preds = %if.then33.i
  %call.i.i.i = call fastcc i32 @qlcnic_83xx_restart_hw(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef 0) #8
  br label %if.end35.i

if.else.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !383
  call void @arm_heavy_mb() #8
  %229 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %adapter, align 8
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 8
  %ext_reg_tbl.i9.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %230, i32 0, i32 56
  %233 = ptrtoint ptr %ext_reg_tbl.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ext_reg_tbl.i9.i.i, align 8
  %arrayidx.i10.i.i = getelementptr i32, ptr %234, i32 14
  %235 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i10.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %232, i32 %236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i.i, i32 0) #8, !srcloc !384
  %237 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %adapter, align 8
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %238, align 8
  %ext_reg_tbl8.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %238, i32 0, i32 56
  %241 = ptrtoint ptr %ext_reg_tbl8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ext_reg_tbl8.i.i.i, align 8
  %arrayidx9.i.i.i = getelementptr i32, ptr %242, i32 15
  %243 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx9.i.i.i, align 4
  %add.ptr10.i.i.i = getelementptr i8, ptr %240, i32 %244
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i.i) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  %246 = and i32 %245, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  call void @arm_heavy_mb() #8
  %247 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %adapter, align 8
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 8
  %ext_reg_tbl19.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %248, i32 0, i32 56
  %251 = ptrtoint ptr %ext_reg_tbl19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ext_reg_tbl19.i.i.i, align 8
  %arrayidx20.i.i.i = getelementptr i32, ptr %252, i32 15
  %253 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx20.i.i.i, align 4
  %add.ptr21.i.i.i = getelementptr i8, ptr %250, i32 %254
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i.i, i32 %246) #8, !srcloc !384
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  call void @arm_heavy_mb() #8
  %255 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %adapter, align 8
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 8
  %ext_reg_tbl.c.i.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %256, i32 0, i32 56
  %259 = ptrtoint ptr %ext_reg_tbl.c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %ext_reg_tbl.c.i.i.i.i, align 8
  %arrayidx.c.i.i.i.i = getelementptr i32, ptr %260, i32 12
  %261 = ptrtoint ptr %arrayidx.c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx.c.i.i.i.i, align 4
  %add.ptr.c.i.i.i.i = getelementptr i8, ptr %258, i32 %262
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c.i.i.i.i, i32 50331648) #8, !srcloc !384
  br label %if.end35.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then33.i.do.body.i.i.i.i_crit_edge
  %retries.0.i.i.i.i = phi i32 [ %dec.i.i.i.i, %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ 60, %if.then33.i.do.body.i.i.i.i_crit_edge ]
  %263 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %adapter, align 8
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %264, align 8
  %reg_tbl.i.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %264, i32 0, i32 55
  %267 = ptrtoint ptr %reg_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %reg_tbl.i.i.i.i, align 4
  %arrayidx.i.i6.i.i = getelementptr i32, ptr %268, i32 16
  %269 = ptrtoint ptr %arrayidx.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx.i.i6.i.i, align 4
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %266, i32 %270
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i.i) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  call void @__sanitizer_cov_trace_const_cmp4(i32 33488896, i32 %271)
  %cmp.i.i.i.i = icmp eq i32 %271, 33488896
  br i1 %cmp.i.i.i.i, label %qlcnic_83xx_check_hw_status.exit.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @msleep(i32 noundef 500) #8
  %dec.i.i.i.i = add nsw i32 %retries.0.i.i.i.i, -1
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %qlcnic_83xx_check_hw_status.exit.thread.i.i, label %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge

if.end.i.i.i.i.do.body.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

qlcnic_83xx_check_hw_status.exit.thread.i.i:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %272 = call i32 @llvm.bswap.i32(i32 %271) #8
  %pdev.i.i.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %273 = ptrtoint ptr %pdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pdev.i.i.i.i, align 8
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %274, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, i32 noundef %272) #11
  br label %if.then5.i.i

qlcnic_83xx_check_hw_status.exit.i.i:             ; preds = %do.body.i.i.i.i
  %call1.i.i.i = call fastcc i32 @qlcnic_83xx_check_heartbeat(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.else7.i.i, label %qlcnic_83xx_check_hw_status.exit.i.i.if.then5.i.i_crit_edge

qlcnic_83xx_check_hw_status.exit.i.i.if.then5.i.i_crit_edge: ; preds = %qlcnic_83xx_check_hw_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %qlcnic_83xx_check_hw_status.exit.i.i.if.then5.i.i_crit_edge, %qlcnic_83xx_check_hw_status.exit.thread.i.i
  call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef 0) #8
  br label %if.end35.i

if.else7.i.i:                                     ; preds = %qlcnic_83xx_check_hw_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  call void @arm_heavy_mb() #8
  %275 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %adapter, align 8
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 8
  %ext_reg_tbl.c.i.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %276, i32 0, i32 56
  %279 = ptrtoint ptr %ext_reg_tbl.c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ext_reg_tbl.c.i.i.i, align 8
  %arrayidx.c.i.i.i = getelementptr i32, ptr %280, i32 12
  %281 = ptrtoint ptr %arrayidx.c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx.c.i.i.i, align 4
  %add.ptr.c.i.i.i = getelementptr i8, ptr %278, i32 %282
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c.i.i.i, i32 50331648) #8, !srcloc !384
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.else7.i.i, %if.then5.i.i, %if.else.i.i.i, %if.then.i.i.i, %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_auto_fw_reset to i32))
  %283 = load i32, ptr @qlcnic_auto_fw_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool36.not.i = icmp eq i32 %283, 0
  br i1 %tobool36.not.i, label %if.end35.i.qlcnic_83xx_idc_first_to_load_function_handler.exit.thread52_crit_edge, label %if.then37.i

if.end35.i.qlcnic_83xx_idc_first_to_load_function_handler.exit.thread52_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_first_to_load_function_handler.exit.thread52

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %284 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %adapter, align 8
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 8
  %ext_reg_tbl43.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %285, i32 0, i32 56
  %288 = ptrtoint ptr %ext_reg_tbl43.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %ext_reg_tbl43.i, align 8
  %arrayidx44.i = getelementptr i32, ptr %289, i32 15
  %290 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx44.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %287, i32 %291
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #8, !srcloc !385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !420
  %293 = and i32 %292, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !421
  call void @arm_heavy_mb() #8
  %294 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %adapter, align 8
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 8
  %ext_reg_tbl55.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %295, i32 0, i32 56
  %298 = ptrtoint ptr %ext_reg_tbl55.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ext_reg_tbl55.i, align 8
  %arrayidx56.i = getelementptr i32, ptr %299, i32 15
  %300 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx56.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %297, i32 %301
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %293) #8, !srcloc !384
  br label %qlcnic_83xx_idc_first_to_load_function_handler.exit.thread52

qlcnic_83xx_idc_first_to_load_function_handler.exit.thread52: ; preds = %if.then37.i, %if.end35.i.qlcnic_83xx_idc_first_to_load_function_handler.exit.thread52_crit_edge
  call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %if.end12

qlcnic_83xx_idc_first_to_load_function_handler.exit: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %302 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %adapter, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %303, align 8
  %ext_reg_tbl.i40 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %303, i32 0, i32 56
  %306 = ptrtoint ptr %ext_reg_tbl.i40 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %ext_reg_tbl.i40, align 8
  %arrayidx.i41 = getelementptr i32, ptr %307, i32 11
  %308 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %arrayidx.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %305, i32 %309
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #8, !srcloc !385
  %311 = lshr i32 %310, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %311)
  %cmp.not.i43 = icmp eq i32 %311, 1
  br i1 %cmp.not.i43, label %if.else.if.end12_crit_edge, label %qlcnic_83xx_idc_check_major_version.exit

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

qlcnic_83xx_idc_check_major_version.exit:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i44 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %312 = ptrtoint ptr %pdev.i44 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pdev.i44, align 8
  %dev.i45 = getelementptr inbounds %struct.pci_dev, ptr %313, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i45, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, i32 noundef %311, i32 noundef 1) #11
  br label %cleanup

if.end12:                                         ; preds = %if.else.if.end12_crit_edge, %qlcnic_83xx_idc_first_to_load_function_handler.exit.thread52
  call fastcc void @qlcnic_83xx_idc_update_audit_reg(ptr noundef %adapter, i8 noundef zeroext 0, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %qlcnic_83xx_idc_check_major_version.exit, %qlcnic_83xx_idc_first_to_load_function_handler.exit, %if.then3.cleanup_crit_edge, %do.end45.i, %do.end.i23, %if.end6.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -5, %qlcnic_83xx_idc_first_to_load_function_handler.exit ], [ -5, %qlcnic_83xx_idc_check_major_version.exit ], [ -5, %do.end.i23 ], [ -5, %do.end45.i ], [ -5, %if.end6.i.cleanup_crit_edge ], [ -5, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_update_audit_reg(ptr noundef %adapter, i8 noundef zeroext %mode, i32 noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !416
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %10 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %portnum, align 2
  %12 = and i8 %11, 15
  %and = zext i8 %12 to i32
  %conv7 = zext i8 %mode to i32
  %shl = shl nuw nsw i32 %conv7, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %tobool9.not = icmp eq i8 %mode, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %div14 = udiv i32 %13, 100
  br i1 %tobool9.not, label %if.end3.if.end15_crit_edge, label %if.then10

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %sec_counter = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 51, i32 1
  %16 = ptrtoint ptr %sec_counter to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sec_counter, align 8
  %18 = trunc i64 %17 to i32
  %conv13 = sub i32 %div14, %18
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end3.if.end15_crit_edge
  %seconds.0 = phi i32 [ %conv13, %if.then10 ], [ %div14, %if.end3.if.end15_crit_edge ]
  %shl16 = shl i32 %seconds.0, 8
  %or = or i32 %9, %shl
  %or8 = or i32 %or, %and
  %or17 = or i32 %or8, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ext_reg_tbl21 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 56
  %24 = ptrtoint ptr %ext_reg_tbl21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext_reg_tbl21, align 8
  %arrayidx22 = getelementptr i32, ptr %25, i32 16
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %19) #8, !srcloc !384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %div24 = udiv i32 %28, 100
  %conv25 = zext i32 %div24 to i64
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %sec_counter28 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %30, i32 0, i32 51, i32 1
  %31 = ptrtoint ptr %sec_counter28 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv25, ptr %sec_counter28, align 8
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.then30

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end15.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_idc_exit(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %call61 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool.not62 = icmp eq i32 %call61, 0
  br i1 %tobool.not62, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #8
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 41
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !423
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %10 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %portnum, align 2
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp eq i32 %9, %conv
  br i1 %cmp, label %do.end, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %9) #11
  tail call void @msleep(i32 noundef 20) #8
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %ext_reg_tbl10 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 56
  %18 = ptrtoint ptr %ext_reg_tbl10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext_reg_tbl10, align 8
  %arrayidx11 = getelementptr i32, ptr %19, i32 41
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11, align 4
  %add.ptr12 = getelementptr i8, ptr %17, i32 %21
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !424
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end.if.end_crit_edge
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %ext_reg_tbl22 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 56
  %27 = ptrtoint ptr %ext_reg_tbl22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ext_reg_tbl22, align 8
  %arrayidx23 = getelementptr i32, ptr %28, i32 13
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx23, align 4
  %add.ptr24 = getelementptr i8, ptr %26, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !385
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !425
  %33 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %portnum, align 2
  %conv29 = zext i8 %34 to i32
  %shl = shl nuw i32 1, %conv29
  %neg = xor i32 %shl, -1
  %and30 = and i32 %32, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !426
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %and30)
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %ext_reg_tbl37 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %37, i32 0, i32 56
  %40 = ptrtoint ptr %ext_reg_tbl37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ext_reg_tbl37, align 8
  %arrayidx38 = getelementptr i32, ptr %41, i32 13
  %42 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx38, align 4
  %add.ptr39 = getelementptr i8, ptr %39, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %35) #8, !srcloc !384
  %44 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter, align 8
  %status = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %45, i32 0, i32 51, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #8
  %fw_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 52
  %call42 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fw_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_idc_request_reset(ptr noundef %adapter, i32 noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device1.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.207)
  switch i16 %3, label %if.end [
    i16 -31696, label %entry.cleanup_crit_edge
    i16 -31680, label %entry.cleanup_crit_edge53
    i16 -29648, label %entry.cleanup_crit_edge54
  ]

entry.cleanup_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %8, i32 0, i32 56
  %11 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %12, i32 15
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !427
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #11
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef 0)
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %19 = zext i32 %key to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %key, label %if.end10.if.end36_crit_edge [
    i32 -559030611, label %if.then11
    i32 -559022355, label %if.then33
  ]

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ext_reg_tbl17 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 56
  %24 = ptrtoint ptr %ext_reg_tbl17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext_reg_tbl17, align 8
  %arrayidx18 = getelementptr i32, ptr %25, i32 15
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18, align 4
  %add.ptr19 = getelementptr i8, ptr %23, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !428
  %29 = or i32 %28, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !429
  tail call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %ext_reg_tbl29 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %31, i32 0, i32 56
  %34 = ptrtoint ptr %ext_reg_tbl29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ext_reg_tbl29, align 8
  %arrayidx30 = getelementptr i32, ptr %35, i32 15
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx30, align 4
  %add.ptr31 = getelementptr i8, ptr %33, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %29) #8, !srcloc !384
  br label %if.end36

if.then33:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %collect_dump = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 51, i32 5
  %40 = ptrtoint ptr %collect_dump to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %collect_dump, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then11, %if.end10.if.end36_crit_edge
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then8, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge53, %entry.cleanup_crit_edge54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lock_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_unlock_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_config_vnic_opmode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_init_default_driver(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qlcnic_83xx_get_minidump_template(ptr noundef %adapter) #8
  %call = tail call i32 @qlcnic_83xx_get_port_info(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %port_type.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_type.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.209)
  switch i16 %3, label %if.end.qlcnic_83xx_config_buff_descriptors.exit_crit_edge [
    i16 2, label %if.then.i
    i16 1, label %if.then7.i
  ]

if.end.qlcnic_83xx_config_buff_descriptors.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_config_buff_descriptors.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %5 = ptrtoint ptr %num_rxd.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4096, ptr %num_rxd.i, align 2
  %max_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 10
  %6 = ptrtoint ptr %max_rxd.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8192, ptr %max_rxd.i, align 2
  %num_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %7 = ptrtoint ptr %num_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1024, ptr %num_jumbo_rxd.i, align 8
  %max_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 11
  %8 = ptrtoint ptr %max_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1024, ptr %max_jumbo_rxd.i, align 4
  br label %qlcnic_83xx_config_buff_descriptors.exit

if.then7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %num_rxd8.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %9 = ptrtoint ptr %num_rxd8.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2048, ptr %num_rxd8.i, align 2
  %num_jumbo_rxd9.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %10 = ptrtoint ptr %num_jumbo_rxd9.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 512, ptr %num_jumbo_rxd9.i, align 8
  %max_jumbo_rxd10.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 11
  %11 = ptrtoint ptr %max_jumbo_rxd10.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 512, ptr %max_jumbo_rxd10.i, align 4
  %max_rxd11.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 10
  %12 = ptrtoint ptr %max_rxd11.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4096, ptr %max_rxd11.i, align 2
  br label %qlcnic_83xx_config_buff_descriptors.exit

qlcnic_83xx_config_buff_descriptors.exit:         ; preds = %if.then7.i, %if.then.i, %if.end.qlcnic_83xx_config_buff_descriptors.exit_crit_edge
  %num_txd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 7
  %13 = ptrtoint ptr %num_txd.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1024, ptr %num_txd.i, align 4
  %max_rds_rings.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %14 = ptrtoint ptr %max_rds_rings.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %max_rds_rings.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_use_msi_x to i32))
  %15 = load i32, ptr @qlcnic_use_msi_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1 = icmp ne i32 %15, 0
  %conv = zext i1 %tobool1 to i8
  %msix_supported = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %msix_supported to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %msix_supported, align 1
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %or = or i32 %18, 128
  store i32 %or, ptr %flags, align 8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %fw_hal_version = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %fw_hal_version to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_hal_version, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.158, i32 noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_83xx_config_buff_descriptors.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qlcnic_83xx_config_buff_descriptors.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %rx_mac_learn = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 38
  %2 = ptrtoint ptr %rx_mac_learn to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rx_mac_learn, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_use_msi_x to i32))
  %3 = load i32, ptr @qlcnic_use_msi_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %conv = zext i1 %tobool to i8
  %msix_supported = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %msix_supported to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %msix_supported, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_load_fw_file to i32))
  %5 = load i32, ptr @qlcnic_load_fw_file, align 4
  %switch.tableidx = add i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %sw.epilog.sink.split, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %post_mode7 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 64
  %7 = ptrtoint ptr %post_mode7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.tableidx, ptr %post_mode7, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.epilog.sink.split ]
  %run_post9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 65
  %8 = ptrtoint ptr %run_post9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %run_post9, align 4
  %max_tx_rings.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 14
  %9 = ptrtoint ptr %max_tx_rings.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %max_tx_rings.i, align 8
  %max_sds_rings.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 13
  %10 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %max_sds_rings.i, align 1
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %msix_supported.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %msix_supported.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msix_supported.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %spec.select.i = select i1 %tobool.not.i, i8 1, i8 4
  tail call void @qlcnic_set_tx_ring_count(ptr noundef %adapter, i8 noundef zeroext %spec.select.i) #8
  tail call void @qlcnic_set_sds_ring_count(ptr noundef %adapter, i8 noundef zeroext %spec.select.i) #8
  %call = tail call i32 @qlcnic_83xx_init_mailbox_work(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 8
  %device1.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %device1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device1.i, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.210)
  switch i16 %18, label %if.end16 [
    i16 -31696, label %if.end.if.then12_crit_edge
    i16 -31680, label %if.end.if.then12_crit_edge144
    i16 -29648, label %if.end.if.then12_crit_edge145
  ]

if.end.if.then12_crit_edge145:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end.if.then12_crit_edge144:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %if.end.if.then12_crit_edge144, %if.end.if.then12_crit_edge145
  %call13 = tail call i32 @qlcnic_sriov_vf_init(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.then12.detach_mbx_crit_edge

if.then12.detach_mbx_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %detach_mbx

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call i32 @qlcnic_83xx_read_flash_descriptor_table(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.do.end_crit_edge

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end16
  %call19 = tail call i32 @qlcnic_83xx_read_flash_mfg_id(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false.do.body.i.i_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.do.body.i.i_crit_edge:              ; preds = %lor.lhs.false
  br label %do.body.i.i

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end16.do.end_crit_edge
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %detach_mbx

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %lor.lhs.false.do.body.i.i_crit_edge
  %retries.0.i.i = phi i32 [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ], [ 60, %lor.lhs.false.do.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %reg_tbl.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 55
  %26 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_tbl.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %27, i32 16
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  call void @__sanitizer_cov_trace_const_cmp4(i32 33488896, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 33488896
  br i1 %cmp.i.i, label %qlcnic_83xx_check_hw_status.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  tail call void @msleep(i32 noundef 500) #8
  %dec.i.i = add nsw i32 %retries.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %qlcnic_83xx_check_hw_status.exit.thread, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

qlcnic_83xx_check_hw_status.exit.thread:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, i32 noundef %31) #11
  br label %detach_mbx

qlcnic_83xx_check_hw_status.exit:                 ; preds = %do.body.i.i
  %call1.i = tail call fastcc i32 @qlcnic_83xx_check_heartbeat(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool24.not = icmp eq i32 %call1.i, 0
  br i1 %tobool24.not, label %if.end26, label %qlcnic_83xx_check_hw_status.exit.detach_mbx_crit_edge

qlcnic_83xx_check_hw_status.exit.detach_mbx_crit_edge: ; preds = %qlcnic_83xx_check_hw_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %detach_mbx

if.end26:                                         ; preds = %qlcnic_83xx_check_hw_status.exit
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %36 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 24) #12
  %fw_info3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 52
  %39 = ptrtoint ptr %fw_info3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i, ptr %fw_info3.i, align 8
  %tobool.not.i129 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i129, label %if.end26.detach_mbx_crit_edge, label %if.else.i

if.end26.detach_mbx_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %detach_mbx

if.else.i:                                        ; preds = %if.end26
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 8
  %40 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device.i, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.211)
  switch i16 %41, label %do.end.i [
    i16 -32720, label %if.else.i.sw.bb.i_crit_edge
    i16 -30672, label %if.else.i.sw.bb.i_crit_edge146
    i16 -32704, label %sw.bb7.i
  ]

if.else.i.sw.bb.i_crit_edge146:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.else.i.sw.bb.i_crit_edge, %if.else.i.sw.bb.i_crit_edge146
  %fw_file_name.i = getelementptr inbounds %struct.qlc_83xx_fw_info, ptr %call7.i.i.i, i32 0, i32 1
  %43 = call ptr @memcpy(ptr %fw_file_name.i, ptr @str.200, i32 20)
  br label %if.end30

sw.bb7.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %fw_file_name8.i = getelementptr inbounds %struct.qlc_83xx_fw_info, ptr %call7.i.i.i, i32 0, i32 1
  %44 = call ptr @memcpy(ptr %fw_file_name8.i, ptr @str, i32 20)
  br label %if.end30

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165) #11
  br label %detach_mbx

if.end30:                                         ; preds = %sw.bb7.i, %sw.bb.i
  %call31 = tail call i32 @qlcnic_83xx_idc_init(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.detach_mbx_crit_edge

if.end30.detach_mbx_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %detach_mbx

if.end34:                                         ; preds = %if.end30
  %45 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %46, i32 0, i32 46
  %47 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_ops.i, align 4
  %setup_intr.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %setup_intr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %setup_intr.i, align 4
  %call.i = tail call i32 %50(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %do.body45, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i, align 8
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.26) #11
  br label %disable_intr

do.body45:                                        ; preds = %if.end34
  %idc_aen_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53
  tail call void @__init_work(ptr noundef %idc_aen_work, i32 noundef 0) #8
  %53 = ptrtoint ptr %idc_aen_work to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %idc_aen_work, align 4
  %lockdep_map = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @qlcnic_83xx_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry52 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 1
  %54 = ptrtoint ptr %entry52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry52, ptr %entry52, align 4
  %prev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry52, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 0, i32 2
  %56 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @qlcnic_83xx_idc_aen_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.30, ptr noundef nonnull @qlcnic_83xx_init.__key.29) #8
  %call63 = tail call i32 @qlcnic_83xx_setup_mbx_intr(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %do.body45.disable_mbx_intr_crit_edge

do.body45.disable_mbx_intr_crit_edge:             ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_mbx_intr

if.end66:                                         ; preds = %do.body45
  tail call fastcc void @qlcnic_83xx_clear_function_resources(ptr noundef %adapter)
  %dcb = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 55
  %57 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dcb, align 4
  tail call fastcc void @qlcnic_dcb_enable(ptr noundef %58)
  tail call void @qlcnic_83xx_initialize_nic(ptr noundef %adapter, i32 noundef 1) #8
  %59 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dcb, align 4
  %tobool.not.i131 = icmp eq ptr %60, null
  br i1 %tobool.not.i131, label %if.end66.qlcnic_dcb_get_info.exit_crit_edge, label %land.lhs.true.i

if.end66.qlcnic_dcb_get_info.exit_crit_edge:      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_dcb_get_info.exit

land.lhs.true.i:                                  ; preds = %if.end66
  %ops.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i, align 4
  %get_info.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %get_info.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %get_info.i, align 4
  %tobool1.not.i = icmp eq ptr %64, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.qlcnic_dcb_get_info.exit_crit_edge, label %if.then.i

land.lhs.true.i.qlcnic_dcb_get_info.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_dcb_get_info.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %64(ptr noundef nonnull %60) #8
  br label %qlcnic_dcb_get_info.exit

qlcnic_dcb_get_info.exit:                         ; preds = %if.then.i, %land.lhs.true.i.qlcnic_dcb_get_info.exit_crit_edge, %if.end66.qlcnic_dcb_get_info.exit_crit_edge
  %call68 = tail call i32 @qlcnic_83xx_configure_opmode(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %qlcnic_dcb_get_info.exit.disable_mbx_intr_crit_edge

qlcnic_dcb_get_info.exit.disable_mbx_intr_crit_edge: ; preds = %qlcnic_dcb_get_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_mbx_intr

if.end71:                                         ; preds = %qlcnic_dcb_get_info.exit
  %nic_ops = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 43
  %65 = ptrtoint ptr %nic_ops to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nic_ops, align 8
  %init_driver = getelementptr inbounds %struct.qlcnic_nic_template, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %init_driver to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_driver, align 4
  %call72 = tail call i32 %68(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end71.disable_mbx_intr_crit_edge

if.end71.disable_mbx_intr_crit_edge:              ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_mbx_intr

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %fw_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 52
  tail call void @qlcnic_83xx_idc_poll_dev_state(ptr noundef %fw_work)
  br label %cleanup

disable_mbx_intr:                                 ; preds = %if.end71.disable_mbx_intr_crit_edge, %qlcnic_dcb_get_info.exit.disable_mbx_intr_crit_edge, %do.body45.disable_mbx_intr_crit_edge
  %err.0 = phi i32 [ %call63, %do.body45.disable_mbx_intr_crit_edge ], [ %call68, %qlcnic_dcb_get_info.exit.disable_mbx_intr_crit_edge ], [ %call72, %if.end71.disable_mbx_intr_crit_edge ]
  tail call void @qlcnic_83xx_free_mbx_intr(ptr noundef %adapter) #8
  br label %disable_intr

disable_intr:                                     ; preds = %disable_mbx_intr, %do.end40
  %err.1 = phi i32 [ %call.i, %do.end40 ], [ %err.0, %disable_mbx_intr ]
  tail call void @qlcnic_teardown_intr(ptr noundef %adapter) #8
  br label %detach_mbx

detach_mbx:                                       ; preds = %disable_intr, %if.end30.detach_mbx_crit_edge, %do.end.i, %if.end26.detach_mbx_crit_edge, %qlcnic_83xx_check_hw_status.exit.detach_mbx_crit_edge, %qlcnic_83xx_check_hw_status.exit.thread, %do.end, %if.then12.detach_mbx_crit_edge
  %err.2 = phi i32 [ %call13, %if.then12.detach_mbx_crit_edge ], [ -131, %do.end ], [ %call1.i, %qlcnic_83xx_check_hw_status.exit.detach_mbx_crit_edge ], [ %call31, %if.end30.detach_mbx_crit_edge ], [ %err.1, %disable_intr ], [ -5, %qlcnic_83xx_check_hw_status.exit.thread ], [ -22, %do.end.i ], [ -12, %if.end26.detach_mbx_crit_edge ]
  tail call void @qlcnic_83xx_detach_mailbox_work(ptr noundef %adapter) #8
  %mailbox = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 59
  %69 = ptrtoint ptr %mailbox to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mailbox, align 8
  tail call void @qlcnic_83xx_free_mailbox(ptr noundef %70) #8
  %71 = ptrtoint ptr %mailbox to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %mailbox, align 8
  br label %cleanup

cleanup:                                          ; preds = %detach_mbx, %if.end75, %if.then12.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end75 ], [ 0, %if.then12.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ], [ %err.2, %detach_mbx ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_init_mailbox_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_sriov_vf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_read_flash_descriptor_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_read_flash_mfg_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_idc_aen_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_setup_mbx_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_clear_function_resources(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.qlcnic_cmd_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 120)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 56
  %5 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %6, i32 13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !430
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %ext_reg_tbl8 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %12, i32 0, i32 56
  %15 = ptrtoint ptr %ext_reg_tbl8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ext_reg_tbl8, align 8
  %arrayidx9 = getelementptr i32, ptr %16, i32 16
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !431
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %20 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %portnum, align 2
  %conv = zext i8 %21 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %22 = and i32 %19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  %or.cond = select i1 %tobool.not, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %24, i32 0, i32 46
  %25 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_ops.i, align 4
  %alloc_mbx_args.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %alloc_mbx_args.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %alloc_mbx_args.i, align 4
  %call.i = call i32 %28(ptr noundef nonnull %cmd, ptr noundef %adapter, i32 noundef 97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arg = getelementptr inbounds %struct.qlcnic_cmd_args, ptr %cmd, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arg, align 4
  %arrayidx19 = getelementptr i32, ptr %30, i32 1
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -2147483648, ptr %arrayidx19, align 4
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 8
  %hw_ops.i36 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %hw_ops.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_ops.i36, align 4
  %mbx_cmd.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %mbx_cmd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mbx_cmd.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %qlcnic_issue_cmd.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

qlcnic_issue_cmd.exit:                            ; preds = %if.end
  %call.i37 = call i32 %37(ptr noundef %adapter, ptr noundef nonnull %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool21.not = icmp eq i32 %call.i37, 0
  br i1 %tobool21.not, label %qlcnic_issue_cmd.exit.if.end23_crit_edge, label %qlcnic_issue_cmd.exit.do.end_crit_edge

qlcnic_issue_cmd.exit.do.end_crit_edge:           ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

qlcnic_issue_cmd.exit.if.end23_crit_edge:         ; preds = %qlcnic_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %qlcnic_issue_cmd.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.166) #11
  br label %if.end23

if.end23:                                         ; preds = %do.end, %qlcnic_issue_cmd.exit.if.end23_crit_edge
  call void @qlcnic_free_mbx_args(ptr noundef nonnull %cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_dcb_enable(ptr noundef %dcb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %dcb, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.qlcnic_dcb, ptr %dcb, i32 0, i32 4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %attach.i = getelementptr inbounds %struct.qlcnic_dcb_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %attach.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %qlcnic_dcb_attach.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

qlcnic_dcb_attach.exit:                           ; preds = %land.lhs.true.i
  %call.i = tail call i32 %3(ptr noundef nonnull %dcb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %qlcnic_dcb_attach.exit.if.end_crit_edge, label %if.then

qlcnic_dcb_attach.exit.if.end_crit_edge:          ; preds = %qlcnic_dcb_attach.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %qlcnic_dcb_attach.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %dcb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %qlcnic_dcb_attach.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_free_mbx_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_teardown_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_detach_mailbox_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_free_mailbox(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_aer_stop_poll_work(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %status = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 3
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %status) #8
  %fw_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 52
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fw_work) #8
  %nic_mode = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %nic_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nic_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @qlcnic_83xx_disable_vnic_mode(ptr noundef %adapter, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @qlcnic_83xx_idc_detach_driver(ptr noundef %adapter)
  tail call void @qlcnic_83xx_initialize_nic(ptr noundef %adapter, i32 noundef 0) #8
  %idc_aen_work = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 53
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %idc_aen_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_disable_vnic_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_detach_driver(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  tail call void @netif_device_detach(ptr noundef %1) #8
  tail call void @qlcnic_83xx_detach_mailbox_work(ptr noundef %adapter) #8
  tail call void @qlcnic_83xx_disable_mbx_intr(ptr noundef %adapter) #8
  tail call void @qlcnic_down(ptr noundef %adapter, ptr noundef %1) #8
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %num_msix26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %num_msix26 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_msix26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp28.not = icmp eq i8 %5, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %19, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv3 = trunc i32 %i.029 to i16
  %intr_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %6, i32 0, i32 53
  %7 = ptrtoint ptr %intr_tbl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intr_tbl, align 4
  %id = getelementptr %struct.qlcnic_intrpt_config, ptr %8, i32 %i.029, i32 2
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3, ptr %id, align 2
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %intr_tbl6 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %intr_tbl6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intr_tbl6, align 4
  %enabled = getelementptr %struct.qlcnic_intrpt_config, ptr %13, i32 %i.029, i32 1
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled, align 1
  %15 = load ptr, ptr %adapter, align 8
  %intr_tbl9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %intr_tbl9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intr_tbl9, align 4
  %src = getelementptr %struct.qlcnic_intrpt_config, ptr %17, i32 %i.029, i32 3
  %18 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %src, align 4
  %inc = add nuw nsw i32 %i.029, 1
  %19 = load ptr, ptr %adapter, align 8
  %num_msix = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %num_msix to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_msix, align 2
  %conv = zext i8 %21 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %19, %for.body.for.end_crit_edge ]
  %op_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %.lcssa, i32 0, i32 30
  %22 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %op_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %23)
  %cmp.i = icmp eq i16 %23, 3
  br i1 %cmp.i, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_sriov_pf_reset(ptr noundef %adapter) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_aer_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %idc2 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51
  %prev_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %2 = ptrtoint ptr %prev_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %prev_state, align 1
  %3 = load ptr, ptr %adapter, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 56
  %6 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %7, i32 35
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !385
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ext_reg_tbl8.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %ext_reg_tbl8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext_reg_tbl8.i, align 8
  %arrayidx9.i = getelementptr i32, ptr %17, i32 36
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %15, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !385
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %owner.0.i = phi i32 [ 1, %entry ], [ %owner.2.i, %do.cond.i.do.body.i_crit_edge ]
  %j.0.i = phi i32 [ 0, %entry ], [ %j.2.i, %do.cond.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %entry ], [ %inc33.i, %do.cond.i.do.body.i_crit_edge ]
  %reg.0.i = phi i32 [ %11, %entry ], [ %reg.2.i, %do.cond.i.do.body.i_crit_edge ]
  %mul.i = shl i32 %j.0.i, 2
  %shl.i = shl i32 15, %mul.i
  %and.i = and i32 %reg.0.i, %shl.i
  %shr.i = lshr i32 %and.i, %mul.i
  %and15.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %owner.0.i)
  %cmp.i = icmp eq i32 %and15.i, %owner.0.i
  br i1 %cmp.i, label %do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge, label %if.end.i

do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i)
  %cmp16.i = icmp eq i32 %i.0.i, 7
  %inc.i = add i32 %j.0.i, 1
  %j.1.i = select i1 %cmp16.i, i32 0, i32 %inc.i
  %reg.1.i = select i1 %cmp16.i, i32 %21, i32 %reg.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0.i)
  %cmp19.i = icmp eq i32 %i.0.i, 15
  br i1 %cmp19.i, label %if.then20.i, label %if.end.i.do.cond.i_crit_edge

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then20.i:                                      ; preds = %if.end.i
  %22 = zext i32 %owner.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %owner.0.i, label %if.then20.i.if.end9_crit_edge [
    i32 1, label %if.then20.i.do.cond.i_crit_edge
    i32 3, label %if.then25.i
  ]

if.then20.i.do.cond.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then20.i.if.end9_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then25.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then25.i, %if.then20.i.do.cond.i_crit_edge, %if.end.i.do.cond.i_crit_edge
  %owner.2.i = phi i32 [ %owner.0.i, %if.end.i.do.cond.i_crit_edge ], [ 2, %if.then25.i ], [ 3, %if.then20.i.do.cond.i_crit_edge ]
  %j.2.i = phi i32 [ %j.1.i, %if.end.i.do.cond.i_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.then20.i.do.cond.i_crit_edge ]
  %i.1.i = phi i32 [ %i.0.i, %if.end.i.do.cond.i_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.then20.i.do.cond.i_crit_edge ]
  %reg.2.i = phi i32 [ %reg.1.i, %if.end.i.do.cond.i_crit_edge ], [ %11, %if.then25.i ], [ %11, %if.then20.i.do.cond.i_crit_edge ]
  %inc33.i = add i32 %i.1.i, 1
  %cmp34.i = icmp ult i32 %i.1.i, 16
  br i1 %cmp34.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge

do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

qlcnic_83xx_idc_find_reset_owner_id.exit:         ; preds = %do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge, %do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge
  %retval.0.i = phi i32 [ %i.0.i, %do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge ], [ %inc33.i, %do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge ]
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pci_func, align 1
  %conv = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv)
  %cmp = icmp eq i32 %retval.0.i, %conv
  br i1 %cmp, label %if.then, label %qlcnic_83xx_idc_find_reset_owner_id.exit.if.end9_crit_edge

qlcnic_83xx_idc_find_reset_owner_id.exit.if.end9_crit_edge: ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit
  %call4 = tail call fastcc i32 @qlcnic_83xx_restart_hw(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !383
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %ext_reg_tbl.i22 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %26, i32 0, i32 56
  %29 = ptrtoint ptr %ext_reg_tbl.i22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ext_reg_tbl.i22, align 8
  %arrayidx.i23 = getelementptr i32, ptr %30, i32 14
  %31 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #8, !srcloc !384
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %ext_reg_tbl8.i25 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %34, i32 0, i32 56
  %37 = ptrtoint ptr %ext_reg_tbl8.i25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext_reg_tbl8.i25, align 8
  %arrayidx9.i26 = getelementptr i32, ptr %38, i32 15
  %39 = ptrtoint ptr %arrayidx9.i26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx9.i26, align 4
  %add.ptr10.i27 = getelementptr i8, ptr %36, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i27) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  %42 = and i32 %41, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %ext_reg_tbl19.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %44, i32 0, i32 56
  %47 = ptrtoint ptr %ext_reg_tbl19.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ext_reg_tbl19.i, align 8
  %arrayidx20.i = getelementptr i32, ptr %48, i32 15
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx20.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %46, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %42) #8, !srcloc !384
  br label %if.end9

if.end9:                                          ; preds = %if.end, %qlcnic_83xx_idc_find_reset_owner_id.exit.if.end9_crit_edge, %if.then20.i.if.end9_crit_edge
  %51 = ptrtoint ptr %idc2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %idc2, align 8
  %call10 = tail call i32 %52(ptr noundef %adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_restart_hw(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %seq_index.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 50, i32 1
  %2 = ptrtoint ptr %seq_index.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %seq_index.i, align 4
  %3 = load ptr, ptr %adapter, align 8
  %stop_offset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 50, i32 6
  %4 = ptrtoint ptr %stop_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop_offset.i, align 4
  tail call fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %adapter, ptr noundef %5) #8
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %seq_end.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %7, i32 0, i32 50, i32 9
  %8 = ptrtoint ptr %seq_end.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %seq_end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 1
  br i1 %cmp.not.i, label %entry.qlcnic_83xx_stop_hw.exit_crit_edge, label %do.end.i

entry.qlcnic_83xx_stop_hw.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_stop_hw.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #11
  br label %qlcnic_83xx_stop_hw.exit

qlcnic_83xx_stop_hw.exit:                         ; preds = %do.end.i, %entry.qlcnic_83xx_stop_hw.exit_crit_edge
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %17, i32 15
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !432
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %qlcnic_83xx_stop_hw.exit.if.end_crit_edge

qlcnic_83xx_stop_hw.exit.if.end_crit_edge:        ; preds = %qlcnic_83xx_stop_hw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %qlcnic_83xx_stop_hw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @qlcnic_dump_fw(ptr noundef %adapter) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %qlcnic_83xx_stop_hw.exit.if.end_crit_edge
  %and4 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.qlcnic_83xx_restart_hw) #11
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef 1)
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %init_offset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %25, i32 0, i32 50, i32 8
  %26 = ptrtoint ptr %init_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_offset.i, align 4
  tail call fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %adapter, ptr noundef %27) #8
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %seq_end.i69 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %29, i32 0, i32 50, i32 9
  %30 = ptrtoint ptr %seq_end.i69 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %seq_end.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp.not.i70 = icmp eq i8 %31, 1
  br i1 %cmp.not.i70, label %if.end8.qlcnic_83xx_init_hw.exit_crit_edge, label %do.end.i73

if.end8.qlcnic_83xx_init_hw.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_init_hw.exit

do.end.i73:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i71 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %32 = ptrtoint ptr %pdev.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i71, align 8
  %dev.i72 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i72, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.168) #11
  br label %qlcnic_83xx_init_hw.exit

qlcnic_83xx_init_hw.exit:                         ; preds = %do.end.i73, %if.end8.qlcnic_83xx_init_hw.exit_crit_edge
  %call9 = tail call fastcc i32 @qlcnic_83xx_copy_bootloader(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %qlcnic_83xx_init_hw.exit.cleanup_crit_edge

qlcnic_83xx_init_hw.exit.cleanup_crit_edge:       ; preds = %qlcnic_83xx_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %qlcnic_83xx_init_hw.exit
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %run_post = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 65
  %36 = ptrtoint ptr %run_post to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %run_post, align 4, !range !433
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool14.not = icmp eq i8 %37, 0
  br i1 %tobool14.not, label %if.end12.if.end26_crit_edge, label %if.then15

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then15:                                        ; preds = %if.end12
  %pdev.i74 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %38 = ptrtoint ptr %pdev.i74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev.i74, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %post_mode.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 64
  %40 = ptrtoint ptr %post_mode.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %post_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %42 = icmp ult i32 %41, 3
  br i1 %42, label %switch.lookup, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.then15
  %fw_info1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 52
  %43 = ptrtoint ptr %fw_info1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw_info1.i, align 8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.qlcnic_83xx_restart_hw, i32 0, i32 %41
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  %fw_file_name.i = getelementptr inbounds %struct.qlc_83xx_fw_info, ptr %44, i32 0, i32 1
  %46 = call ptr @memcpy(ptr %fw_file_name.i, ptr @str.201, i32 20)
  %call8.i = tail call i32 @request_firmware(ptr noundef %44, ptr noundef %fw_file_name.i, ptr noundef %dev2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i75

do.end.i75:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.170) #11
  br label %if.end19

if.end.i:                                         ; preds = %switch.lookup
  %call9.i = tail call fastcc i32 @qlcnic_83xx_copy_fw_file(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef 1096818708, i32 noundef 0) #8
  %47 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter, align 8
  %post_mode15.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %48, i32 0, i32 64
  %49 = ptrtoint ptr %post_mode15.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %post_mode15.i, align 8
  %call16.i = tail call i32 @qlcnic_ind_wr(ptr noundef %adapter, i32 noundef 1096818712, i32 noundef %50) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !434
  tail call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %52, i32 0, i32 55
  %55 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_tbl.i, align 4
  %arrayidx.i = getelementptr i32, ptr %56, i32 15
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2018915346) #8, !srcloc !384
  %59 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adapter, align 8
  %start_offset.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %60, i32 0, i32 50, i32 7
  %61 = ptrtoint ptr %start_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %start_offset.i.i, align 8
  tail call fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %adapter, ptr noundef %62) #8
  %63 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter, align 8
  %template_end.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %64, i32 0, i32 50, i32 10
  %65 = ptrtoint ptr %template_end.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %template_end.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %66)
  %cmp.not.i.i = icmp eq i8 %66, 1
  br i1 %cmp.not.i.i, label %if.end12.i.do.body22.i.preheader_crit_edge, label %do.end.i.i

if.end12.i.do.body22.i.preheader_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22.i.preheader

do.end.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %pdev.i74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev.i74, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.199) #11
  br label %do.body22.i.preheader

do.body22.i.preheader:                            ; preds = %do.end.i.i, %if.end12.i.do.body22.i.preheader_crit_edge
  br label %do.body22.i

do.body22.i:                                      ; preds = %do.body22.i.do.body22.i_crit_edge, %do.body22.i.preheader
  %count.0.i = phi i32 [ %add.i, %do.body22.i.do.body22.i_crit_edge ], [ 0, %do.body22.i.preheader ]
  tail call void @msleep(i32 noundef 100) #8
  %add.i = add nuw nsw i32 %count.0.i, 100
  %call23.i = tail call i32 @qlcnic_ind_rd(ptr noundef %adapter, i32 noundef 1096818708) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call23.i)
  %cmp.i = icmp ne i32 %call23.i, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %add.i)
  %cmp27.i = icmp ugt i32 %switch.load, %add.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp27.i, i1 false
  br i1 %or.cond.i, label %do.body22.i.do.body22.i_crit_edge, label %do.end28.i

do.body22.i.do.body22.i_crit_edge:                ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22.i

do.end28.i:                                       ; preds = %do.body22.i
  br i1 %cmp27.i, label %if.end34.i, label %do.end33.i

do.end33.i:                                       ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.173, i32 noundef %call23.i) #11
  br label %cleanup

if.end34.i:                                       ; preds = %do.end28.i
  %69 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %call23.i, label %do.end58.i [
    i32 -16, label %do.end38.i
    i32 -1, label %do.end42.i
    i32 -2, label %do.end46.i
    i32 -4, label %do.end50.i
    i32 -8, label %do.end54.i
  ]

do.end38.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.176, i32 noundef -16) #11
  br label %if.end19

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.179, i32 noundef -1) #11
  br label %cleanup

do.end46.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.182, i32 noundef -2) #11
  br label %cleanup

do.end50.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.185, i32 noundef -4) #11
  br label %cleanup

do.end54.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.188, i32 noundef -8) #11
  br label %cleanup

do.end58.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.191, i32 noundef %call23.i) #11
  br label %cleanup

if.end19:                                         ; preds = %do.end38.i, %do.end.i75
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 8
  %run_post21 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %71, i32 0, i32 65
  %72 = ptrtoint ptr %run_post21 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %run_post21, align 4
  %73 = load ptr, ptr %adapter, align 8
  %seq_index.i76 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %73, i32 0, i32 50, i32 1
  %74 = ptrtoint ptr %seq_index.i76 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %seq_index.i76, align 4
  %75 = load ptr, ptr %adapter, align 8
  %stop_offset.i77 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %75, i32 0, i32 50, i32 6
  %76 = ptrtoint ptr %stop_offset.i77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stop_offset.i77, align 4
  tail call fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %adapter, ptr noundef %77) #8
  %78 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adapter, align 8
  %seq_end.i78 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %79, i32 0, i32 50, i32 9
  %80 = ptrtoint ptr %seq_end.i78 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %seq_end.i78, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %81)
  %cmp.not.i79 = icmp eq i8 %81, 1
  br i1 %cmp.not.i79, label %if.end19.qlcnic_83xx_stop_hw.exit84_crit_edge, label %do.end.i82

if.end19.qlcnic_83xx_stop_hw.exit84_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_stop_hw.exit84

do.end.i82:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %pdev.i74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev.i74, align 8
  %dev.i81 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i81, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #11
  br label %qlcnic_83xx_stop_hw.exit84

qlcnic_83xx_stop_hw.exit84:                       ; preds = %do.end.i82, %if.end19.qlcnic_83xx_stop_hw.exit84_crit_edge
  %84 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter, align 8
  %init_offset.i85 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %85, i32 0, i32 50, i32 8
  %86 = ptrtoint ptr %init_offset.i85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_offset.i85, align 4
  tail call fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %adapter, ptr noundef %87) #8
  %88 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter, align 8
  %seq_end.i86 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %89, i32 0, i32 50, i32 9
  %90 = ptrtoint ptr %seq_end.i86 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %seq_end.i86, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %91)
  %cmp.not.i87 = icmp eq i8 %91, 1
  br i1 %cmp.not.i87, label %qlcnic_83xx_stop_hw.exit84.qlcnic_83xx_init_hw.exit92_crit_edge, label %do.end.i90

qlcnic_83xx_stop_hw.exit84.qlcnic_83xx_init_hw.exit92_crit_edge: ; preds = %qlcnic_83xx_stop_hw.exit84
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_init_hw.exit92

do.end.i90:                                       ; preds = %qlcnic_83xx_stop_hw.exit84
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %pdev.i74 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdev.i74, align 8
  %dev.i89 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i89, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.168) #11
  br label %qlcnic_83xx_init_hw.exit92

qlcnic_83xx_init_hw.exit92:                       ; preds = %do.end.i90, %qlcnic_83xx_stop_hw.exit84.qlcnic_83xx_init_hw.exit92_crit_edge
  %call22 = tail call fastcc i32 @qlcnic_83xx_copy_bootloader(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %qlcnic_83xx_init_hw.exit92.if.end26_crit_edge, label %qlcnic_83xx_init_hw.exit92.cleanup_crit_edge

qlcnic_83xx_init_hw.exit92.cleanup_crit_edge:     ; preds = %qlcnic_83xx_init_hw.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

qlcnic_83xx_init_hw.exit92.if.end26_crit_edge:    ; preds = %qlcnic_83xx_init_hw.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %qlcnic_83xx_init_hw.exit92.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_load_fw_file to i32))
  %94 = load i32, ptr @qlcnic_load_fw_file, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp = icmp eq i32 %94, 1
  br i1 %cmp, label %if.then27, label %do.body

if.then27:                                        ; preds = %if.end26
  %95 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter, align 8
  %fw_info1.i93 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %96, i32 0, i32 52
  %97 = ptrtoint ptr %fw_info1.i93 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fw_info1.i93, align 8
  %fw_file_name.i94 = getelementptr inbounds %struct.qlc_83xx_fw_info, ptr %98, i32 0, i32 1
  %pdev.i95 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %99 = ptrtoint ptr %pdev.i95 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev.i95, align 8
  %dev.i96 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %call.i = tail call i32 @request_firmware(ptr noundef %98, ptr noundef %fw_file_name.i94, ptr noundef %dev.i96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i97 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i97, label %if.else.i, label %do.end.i101

do.end.i101:                                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %pdev.i95 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i95, align 8
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.197) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !435
  tail call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %adapter, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %reg_tbl.i98 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %104, i32 0, i32 55
  %107 = ptrtoint ptr %reg_tbl.i98 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_tbl.i98, align 4
  %arrayidx.i99 = getelementptr i32, ptr %108, i32 15
  %109 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.i99, align 4
  %add.ptr.i100 = getelementptr i8, ptr %106, i32 %110
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 0) #8, !srcloc !384
  br label %if.end37

if.else.i:                                        ; preds = %if.then27
  %call9.i102 = tail call fastcc i32 @qlcnic_83xx_copy_fw_file(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i102)
  %tobool10.not.i103 = icmp eq i32 %call9.i102, 0
  br i1 %tobool10.not.i103, label %do.body12.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !436
  tail call void @arm_heavy_mb() #8
  %111 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %adapter, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %reg_tbl18.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %112, i32 0, i32 55
  %115 = ptrtoint ptr %reg_tbl18.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_tbl18.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %116, i32 15
  %117 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %114, i32 %118
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 2018915346) #8, !srcloc !384
  br label %if.end37

do.body:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !437
  tail call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %120, i32 0, i32 55
  %123 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_tbl, align 4
  %arrayidx35 = getelementptr i32, ptr %124, i32 15
  %125 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx35, align 4
  %add.ptr36 = getelementptr i8, ptr %122, i32 %126
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #8, !srcloc !384
  br label %if.end37

if.end37:                                         ; preds = %do.body, %do.body12.i, %do.end.i101
  %127 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adapter, align 8
  %start_offset.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %128, i32 0, i32 50, i32 7
  %129 = ptrtoint ptr %start_offset.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %start_offset.i, align 8
  tail call fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %adapter, ptr noundef %130) #8
  %131 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %adapter, align 8
  %template_end.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %132, i32 0, i32 50, i32 10
  %133 = ptrtoint ptr %template_end.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %template_end.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %134)
  %cmp.not.i105 = icmp eq i8 %134, 1
  br i1 %cmp.not.i105, label %if.end37.do.body.i.i.preheader_crit_edge, label %do.end.i108

if.end37.do.body.i.i.preheader_crit_edge:         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.preheader

do.end.i108:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %pdev.i106 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %135 = ptrtoint ptr %pdev.i106 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pdev.i106, align 8
  %dev.i107 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i107, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.199) #11
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %do.end.i108, %if.end37.do.body.i.i.preheader_crit_edge
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %retries.0.i.i = phi i32 [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ], [ 60, %do.body.i.i.preheader ]
  %137 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %adapter, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  %reg_tbl.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %138, i32 0, i32 55
  %141 = ptrtoint ptr %reg_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_tbl.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %142, i32 16
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %140, i32 %144
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  call void @__sanitizer_cov_trace_const_cmp4(i32 33488896, i32 %145)
  %cmp.i.i = icmp eq i32 %145, 33488896
  br i1 %cmp.i.i, label %qlcnic_83xx_check_hw_status.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  tail call void @msleep(i32 noundef 500) #8
  %dec.i.i = add nsw i32 %retries.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %qlcnic_83xx_check_hw_status.exit.thread, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

qlcnic_83xx_check_hw_status.exit.thread:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #8
  %pdev.i.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %147 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i110 = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i110, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, i32 noundef %146) #11
  br label %cleanup

qlcnic_83xx_check_hw_status.exit:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @qlcnic_83xx_check_heartbeat(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool39.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool39.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_83xx_check_hw_status.exit, %qlcnic_83xx_check_hw_status.exit.thread, %if.else.i.cleanup_crit_edge, %qlcnic_83xx_init_hw.exit92.cleanup_crit_edge, %do.end58.i, %do.end54.i, %do.end50.i, %do.end46.i, %do.end42.i, %do.end33.i, %if.end.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %qlcnic_83xx_init_hw.exit.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ -5, %if.then6 ], [ -5, %qlcnic_83xx_init_hw.exit.cleanup_crit_edge ], [ %call22, %qlcnic_83xx_init_hw.exit92.cleanup_crit_edge ], [ -5, %if.else.i.cleanup_crit_edge ], [ -5, %qlcnic_83xx_check_hw_status.exit.thread ], [ -5, %do.end42.i ], [ -5, %do.end46.i ], [ -5, %do.end50.i ], [ -5, %do.end54.i ], [ -5, %do.end58.i ], [ %call9.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -5, %do.end33.i ], [ %spec.select, %qlcnic_83xx_check_hw_status.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_clear_registers(ptr noundef %adapter, i32 noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.do.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !383
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !384
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ext_reg_tbl8 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 56
  %12 = ptrtoint ptr %ext_reg_tbl8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_reg_tbl8, align 8
  %arrayidx9 = getelementptr i32, ptr %13, i32 15
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  %17 = and i32 %16, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %ext_reg_tbl19 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %19, i32 0, i32 56
  %22 = ptrtoint ptr %ext_reg_tbl19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ext_reg_tbl19, align 8
  %arrayidx20 = getelementptr i32, ptr %23, i32 15
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %17) #8, !srcloc !384
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then23

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qlcnic_83xx_aer_start_poll_work(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %prev_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 7
  %2 = ptrtoint ptr %prev_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %prev_state, align 1
  %3 = load ptr, ptr %adapter, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 56
  %6 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %7, i32 35
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !385
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ext_reg_tbl8.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 56
  %16 = ptrtoint ptr %ext_reg_tbl8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext_reg_tbl8.i, align 8
  %arrayidx9.i = getelementptr i32, ptr %17, i32 36
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %15, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !385
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %owner.0.i = phi i32 [ 1, %entry ], [ %owner.2.i, %do.cond.i.do.body.i_crit_edge ]
  %j.0.i = phi i32 [ 0, %entry ], [ %j.2.i, %do.cond.i.do.body.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %entry ], [ %inc33.i, %do.cond.i.do.body.i_crit_edge ]
  %reg.0.i = phi i32 [ %11, %entry ], [ %reg.2.i, %do.cond.i.do.body.i_crit_edge ]
  %mul.i = shl i32 %j.0.i, 2
  %shl.i = shl i32 15, %mul.i
  %and.i = and i32 %reg.0.i, %shl.i
  %shr.i = lshr i32 %and.i, %mul.i
  %and15.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i, i32 %owner.0.i)
  %cmp.i = icmp eq i32 %and15.i, %owner.0.i
  br i1 %cmp.i, label %do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge, label %if.end.i

do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0.i)
  %cmp16.i = icmp eq i32 %i.0.i, 7
  %inc.i = add i32 %j.0.i, 1
  %j.1.i = select i1 %cmp16.i, i32 0, i32 %inc.i
  %reg.1.i = select i1 %cmp16.i, i32 %21, i32 %reg.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0.i)
  %cmp19.i = icmp eq i32 %i.0.i, 15
  br i1 %cmp19.i, label %if.then20.i, label %if.end.i.do.cond.i_crit_edge

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then20.i:                                      ; preds = %if.end.i
  %22 = zext i32 %owner.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %owner.0.i, label %if.then20.i.if.end_crit_edge [
    i32 1, label %if.then20.i.do.cond.i_crit_edge
    i32 3, label %if.then25.i
  ]

if.then20.i.do.cond.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

if.then20.i.if.end_crit_edge:                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then25.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then25.i, %if.then20.i.do.cond.i_crit_edge, %if.end.i.do.cond.i_crit_edge
  %owner.2.i = phi i32 [ %owner.0.i, %if.end.i.do.cond.i_crit_edge ], [ 2, %if.then25.i ], [ 3, %if.then20.i.do.cond.i_crit_edge ]
  %j.2.i = phi i32 [ %j.1.i, %if.end.i.do.cond.i_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.then20.i.do.cond.i_crit_edge ]
  %i.1.i = phi i32 [ %i.0.i, %if.end.i.do.cond.i_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.then20.i.do.cond.i_crit_edge ]
  %reg.2.i = phi i32 [ %reg.1.i, %if.end.i.do.cond.i_crit_edge ], [ %11, %if.then25.i ], [ %11, %if.then20.i.do.cond.i_crit_edge ]
  %inc33.i = add i32 %i.1.i, 1
  %cmp34.i = icmp ult i32 %i.1.i, 16
  br i1 %cmp34.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge

do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge: ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_idc_find_reset_owner_id.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

qlcnic_83xx_idc_find_reset_owner_id.exit:         ; preds = %do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge, %do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge
  %retval.0.i = phi i32 [ %i.0.i, %do.body.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge ], [ %inc33.i, %do.cond.i.qlcnic_83xx_idc_find_reset_owner_id.exit_crit_edge ]
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pci_func, align 1
  %conv = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv)
  %cmp = icmp eq i32 %retval.0.i, %conv
  br i1 %cmp, label %if.then, label %qlcnic_83xx_idc_find_reset_owner_id.exit.if.end_crit_edge

qlcnic_83xx_idc_find_reset_owner_id.exit.if.end_crit_edge: ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %qlcnic_83xx_idc_find_reset_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %ext_reg_tbl.c.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %26, i32 0, i32 56
  %29 = ptrtoint ptr %ext_reg_tbl.c.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ext_reg_tbl.c.i, align 8
  %arrayidx.c.i = getelementptr i32, ptr %30, i32 12
  %31 = ptrtoint ptr %arrayidx.c.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.c.i, align 4
  %add.ptr.c.i = getelementptr i8, ptr %28, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c.i, i32 50331648) #8, !srcloc !384
  br label %if.end

if.end:                                           ; preds = %if.then, %qlcnic_83xx_idc_find_reset_owner_id.exit.if.end_crit_edge, %if.then20.i.if.end_crit_edge
  tail call void @qlcnic_schedule_work(ptr noundef %adapter, ptr noundef nonnull @qlcnic_83xx_idc_poll_dev_state, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_restore_indev_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_update_drv_presence_reg(ptr noundef %adapter, i32 noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !412
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %portnum = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 20
  %10 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %portnum, align 2
  %conv = zext i8 %11 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !413
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %ext_reg_tbl16 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 56
  %17 = ptrtoint ptr %ext_reg_tbl16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ext_reg_tbl16, align 8
  %arrayidx17 = getelementptr i32, ptr %18, i32 13
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %12) #8, !srcloc !384
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %22, i32 0, i32 56
  %25 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %26, i32 17
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !385
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  %31 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %portnum, align 2
  %conv.i = zext i8 %32 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %30, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %ext_reg_tbl10.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %35, i32 0, i32 56
  %38 = ptrtoint ptr %ext_reg_tbl10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ext_reg_tbl10.i, align 8
  %arrayidx11.i = getelementptr i32, ptr %39, i32 17
  %40 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %33) #8, !srcloc !384
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then20

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_check_temp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_check_fan_failure(ptr nocapture noundef readonly %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_tbl, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !438
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %9) #11
  %12 = and i32 %9, 536870656
  call void @__sanitizer_cov_trace_const_cmp4(i32 5632, i32 %12)
  %cmp = icmp eq i32 %12, 5632
  br i1 %cmp, label %do.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.47) #11
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.50) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_check_heartbeat(ptr noundef %p_dev) unnamed_addr #0 align 64 {
entry:
  %err.i.i = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_dev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 55
  %5 = ptrtoint ptr %reg_tbl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_tbl, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !439
  %heartbeat3 = getelementptr inbounds %struct.qlcnic_adapter, ptr %p_dev, i32 0, i32 30
  %11 = ptrtoint ptr %heartbeat3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %heartbeat3, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %retries.0 = phi i32 [ 10, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 200) #8
  %12 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p_dev, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %reg_tbl9 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %13, i32 0, i32 55
  %16 = ptrtoint ptr %reg_tbl9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_tbl9, align 4
  %arrayidx10 = getelementptr i32, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !385
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !440
  %22 = ptrtoint ptr %heartbeat3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %heartbeat3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not = icmp eq i32 %21, %23
  br i1 %cmp.not, label %do.cond, label %do.body.if.end74_crit_edge

do.body.if.end74_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.cond:                                          ; preds = %do.body
  %dec = add nsw i32 %retries.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end20, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end20:                                         ; preds = %do.cond
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %p_dev, i32 0, i32 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #11
  %26 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p_dev, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw_ops.i, align 4
  %write_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_reg.i, align 4
  %call.i = tail call i32 %31(ptr noundef %p_dev, i32 noundef 671632992, i32 noundef 0) #8
  %32 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p_dev, align 8
  %hw_ops2.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %hw_ops2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw_ops2.i, align 4
  %write_reg3.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %write_reg3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_reg3.i, align 4
  %call4.i = tail call i32 %37(ptr noundef %p_dev, i32 noundef 671633008, i32 noundef 0) #8
  %38 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p_dev, align 8
  %hw_ops6.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %39, i32 0, i32 46
  %40 = ptrtoint ptr %hw_ops6.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw_ops6.i, align 4
  %write_reg7.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %write_reg7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg7.i, align 4
  %call8.i = tail call i32 %43(ptr noundef %p_dev, i32 noundef 671633024, i32 noundef 0) #8
  %44 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %p_dev, align 8
  %hw_ops10.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %45, i32 0, i32 46
  %46 = ptrtoint ptr %hw_ops10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_ops10.i, align 4
  %write_reg11.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %write_reg11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg11.i, align 4
  %call12.i = tail call i32 %49(ptr noundef %p_dev, i32 noundef 671633040, i32 noundef 0) #8
  %50 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p_dev, align 8
  %hw_ops14.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %hw_ops14.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_ops14.i, align 4
  %write_reg15.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %write_reg15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_reg15.i, align 4
  %call16.i = tail call i32 %55(ptr noundef %p_dev, i32 noundef 671633056, i32 noundef 0) #8
  %56 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p_dev, align 8
  %hw_ops18.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %hw_ops18.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw_ops18.i, align 4
  %write_reg19.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %write_reg19.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_reg19.i, align 4
  %call20.i = tail call i32 %61(ptr noundef %p_dev, i32 noundef 671633072, i32 noundef 0) #8
  %62 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p_dev, align 8
  %hw_ops22.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %63, i32 0, i32 46
  %64 = ptrtoint ptr %hw_ops22.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw_ops22.i, align 4
  %write_reg23.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %write_reg23.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write_reg23.i, align 4
  %call24.i = tail call i32 %67(ptr noundef %p_dev, i32 noundef 671633088, i32 noundef 0) #8
  %68 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %p_dev, align 8
  %hw_ops26.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %69, i32 0, i32 46
  %70 = ptrtoint ptr %hw_ops26.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw_ops26.i, align 4
  %write_reg27.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %write_reg27.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_reg27.i, align 4
  %call28.i = tail call i32 %73(ptr noundef %p_dev, i32 noundef 671633104, i32 noundef 0) #8
  %74 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p_dev, align 8
  %hw_ops30.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %hw_ops30.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_ops30.i, align 4
  %write_reg31.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %write_reg31.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_reg31.i, align 4
  %call32.i = tail call i32 %79(ptr noundef %p_dev, i32 noundef 671632976, i32 noundef 1) #8
  %call.i101 = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %p_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #11
  br label %qlcnic_83xx_disable_pause_frames.exit

if.end.i:                                         ; preds = %do.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i.i) #8
  %82 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %err.i.i, align 4
  %83 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %p_dev, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %84, i32 0, i32 46
  %85 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_ops.i.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %88(ptr noundef %p_dev, i32 noundef 220201604, ptr noundef nonnull %err.i.i) #8
  %89 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %90)
  %cmp.i.i = icmp eq i32 %90, -5
  br i1 %cmp.i.i, label %if.end.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end.i.i

if.end.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  %91 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.65, i32 noundef %call.i.i) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end30.7.i.i.for.body.i.i_crit_edge, %do.end.i.i
  %j.0229.i.i = phi i32 [ 0, %do.end.i.i ], [ %inc39.i.i, %do.end30.7.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0229.i.i)
  %cmp2.i.i = icmp eq i32 %j.0229.i.i, 0
  %93 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev, align 8
  %dev8.i.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %.str.68..str.71.i.i = select i1 %cmp2.i.i, ptr @.str.68, ptr @.str.71
  %..i.i = select i1 %cmp2.i.i, i32 186647460, i32 186651556
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8.i.i, ptr noundef nonnull %.str.68..str.71.i.i) #11
  %95 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %p_dev, align 8
  %hw_ops22.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %96, i32 0, i32 46
  %97 = ptrtoint ptr %hw_ops22.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_ops22.i.i, align 4
  %read_reg23.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %read_reg23.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read_reg23.i.i, align 4
  %call24.i.i = call i32 %100(ptr noundef %p_dev, i32 noundef %..i.i, ptr noundef nonnull %err.i.i) #8
  %101 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %102)
  %cmp25.i.i = icmp eq i32 %102, -5
  br i1 %cmp25.i.i, label %for.body.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.i.i

for.body.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.i.i:                                     ; preds = %for.body.i.i
  %103 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev, align 8
  %dev32.i.i = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.i.i) #11
  %105 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %p_dev, align 8
  %hw_ops22.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %106, i32 0, i32 46
  %107 = ptrtoint ptr %hw_ops22.1.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw_ops22.1.i.i, align 4
  %read_reg23.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %read_reg23.1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read_reg23.1.i.i, align 4
  %add.1.i.i = add nuw nsw i32 %..i.i, 4
  %call24.1.i.i = call i32 %110(ptr noundef %p_dev, i32 noundef %add.1.i.i, ptr noundef nonnull %err.i.i) #8
  %111 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %112)
  %cmp25.1.i.i = icmp eq i32 %112, -5
  br i1 %cmp25.1.i.i, label %do.end30.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.1.i.i

do.end30.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.1.i.i:                                   ; preds = %do.end30.i.i
  %113 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev, align 8
  %dev32.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.1.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.1.i.i) #11
  %115 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %p_dev, align 8
  %hw_ops22.2.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %116, i32 0, i32 46
  %117 = ptrtoint ptr %hw_ops22.2.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw_ops22.2.i.i, align 4
  %read_reg23.2.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %read_reg23.2.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read_reg23.2.i.i, align 4
  %add.2.i.i = or i32 %..i.i, 8
  %call24.2.i.i = call i32 %120(ptr noundef %p_dev, i32 noundef %add.2.i.i, ptr noundef nonnull %err.i.i) #8
  %121 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %122)
  %cmp25.2.i.i = icmp eq i32 %122, -5
  br i1 %cmp25.2.i.i, label %do.end30.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.2.i.i

do.end30.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end30.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.2.i.i:                                   ; preds = %do.end30.1.i.i
  %123 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev, align 8
  %dev32.2.i.i = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.2.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.2.i.i) #11
  %125 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %p_dev, align 8
  %hw_ops22.3.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %126, i32 0, i32 46
  %127 = ptrtoint ptr %hw_ops22.3.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw_ops22.3.i.i, align 4
  %read_reg23.3.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %read_reg23.3.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read_reg23.3.i.i, align 4
  %add.3.i.i = add nuw nsw i32 %..i.i, 12
  %call24.3.i.i = call i32 %130(ptr noundef %p_dev, i32 noundef %add.3.i.i, ptr noundef nonnull %err.i.i) #8
  %131 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %132)
  %cmp25.3.i.i = icmp eq i32 %132, -5
  br i1 %cmp25.3.i.i, label %do.end30.2.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.3.i.i

do.end30.2.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end30.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.3.i.i:                                   ; preds = %do.end30.2.i.i
  %133 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pdev, align 8
  %dev32.3.i.i = getelementptr inbounds %struct.pci_dev, ptr %134, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.3.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.3.i.i) #11
  %135 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %p_dev, align 8
  %hw_ops22.4.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %136, i32 0, i32 46
  %137 = ptrtoint ptr %hw_ops22.4.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hw_ops22.4.i.i, align 4
  %read_reg23.4.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %read_reg23.4.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read_reg23.4.i.i, align 4
  %add.4.i.i = or i32 %..i.i, 16
  %call24.4.i.i = call i32 %140(ptr noundef %p_dev, i32 noundef %add.4.i.i, ptr noundef nonnull %err.i.i) #8
  %141 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %142)
  %cmp25.4.i.i = icmp eq i32 %142, -5
  br i1 %cmp25.4.i.i, label %do.end30.3.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.4.i.i

do.end30.3.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end30.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.4.i.i:                                   ; preds = %do.end30.3.i.i
  %143 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pdev, align 8
  %dev32.4.i.i = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.4.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.4.i.i) #11
  %145 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %p_dev, align 8
  %hw_ops22.5.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %146, i32 0, i32 46
  %147 = ptrtoint ptr %hw_ops22.5.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw_ops22.5.i.i, align 4
  %read_reg23.5.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %read_reg23.5.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read_reg23.5.i.i, align 4
  %add.5.i.i = add nuw nsw i32 %..i.i, 20
  %call24.5.i.i = call i32 %150(ptr noundef %p_dev, i32 noundef %add.5.i.i, ptr noundef nonnull %err.i.i) #8
  %151 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %152)
  %cmp25.5.i.i = icmp eq i32 %152, -5
  br i1 %cmp25.5.i.i, label %do.end30.4.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.5.i.i

do.end30.4.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end30.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.5.i.i:                                   ; preds = %do.end30.4.i.i
  %153 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev, align 8
  %dev32.5.i.i = getelementptr inbounds %struct.pci_dev, ptr %154, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.5.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.5.i.i) #11
  %155 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %p_dev, align 8
  %hw_ops22.6.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %156, i32 0, i32 46
  %157 = ptrtoint ptr %hw_ops22.6.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw_ops22.6.i.i, align 4
  %read_reg23.6.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %read_reg23.6.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %read_reg23.6.i.i, align 4
  %add.6.i.i = or i32 %..i.i, 24
  %call24.6.i.i = call i32 %160(ptr noundef %p_dev, i32 noundef %add.6.i.i, ptr noundef nonnull %err.i.i) #8
  %161 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %162)
  %cmp25.6.i.i = icmp eq i32 %162, -5
  br i1 %cmp25.6.i.i, label %do.end30.5.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.6.i.i

do.end30.5.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end30.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.6.i.i:                                   ; preds = %do.end30.5.i.i
  %163 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %pdev, align 8
  %dev32.6.i.i = getelementptr inbounds %struct.pci_dev, ptr %164, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.6.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.6.i.i) #11
  %165 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %p_dev, align 8
  %hw_ops22.7.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %166, i32 0, i32 46
  %167 = ptrtoint ptr %hw_ops22.7.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hw_ops22.7.i.i, align 4
  %read_reg23.7.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %read_reg23.7.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read_reg23.7.i.i, align 4
  %add.7.i.i = add nuw nsw i32 %..i.i, 28
  %call24.7.i.i = call i32 %170(ptr noundef %p_dev, i32 noundef %add.7.i.i, ptr noundef nonnull %err.i.i) #8
  %171 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %172)
  %cmp25.7.i.i = icmp eq i32 %172, -5
  br i1 %cmp25.7.i.i, label %do.end30.6.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end30.7.i.i

do.end30.6.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end30.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end30.7.i.i:                                   ; preds = %do.end30.6.i.i
  %173 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdev, align 8
  %dev32.7.i.i = getelementptr inbounds %struct.pci_dev, ptr %174, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32.7.i.i, ptr noundef nonnull @.str.74, i32 noundef %call24.7.i.i) #11
  %175 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pdev, align 8
  %dev37.i.i = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37.i.i, ptr noundef nonnull @.str.77) #11
  %inc39.i.i = add nuw nsw i32 %j.0229.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc39.i.i, 2
  br i1 %exitcond.not.i.i, label %do.end30.7.i.i.for.body43.i.i_crit_edge, label %do.end30.7.i.i.for.body.i.i_crit_edge

do.end30.7.i.i.for.body.i.i_crit_edge:            ; preds = %do.end30.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end30.7.i.i.for.body43.i.i_crit_edge:          ; preds = %do.end30.7.i.i
  br label %for.body43.i.i

for.body43.i.i:                                   ; preds = %do.end75.3.i.i.for.body43.i.i_crit_edge, %do.end30.7.i.i.for.body43.i.i_crit_edge
  %j.1231.i.i = phi i32 [ %inc87.i.i, %do.end75.3.i.i.for.body43.i.i_crit_edge ], [ 0, %do.end30.7.i.i.for.body43.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1231.i.i)
  %cmp44.i.i = icmp eq i32 %j.1231.i.i, 0
  %177 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pdev, align 8
  %dev50.i.i = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  %.str.80..str.83.i.i = select i1 %cmp44.i.i, ptr @.str.80, ptr @.str.83
  %.243.i.i = select i1 %cmp44.i.i, i32 186647432, i32 186651528
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50.i.i, ptr noundef nonnull %.str.80..str.83.i.i) #11
  %179 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %p_dev, align 8
  %hw_ops65.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %180, i32 0, i32 46
  %181 = ptrtoint ptr %hw_ops65.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw_ops65.i.i, align 4
  %read_reg66.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %read_reg66.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %read_reg66.i.i, align 4
  %call69.i.i = call i32 %184(ptr noundef %p_dev, i32 noundef %.243.i.i, ptr noundef nonnull %err.i.i) #8
  %185 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %186)
  %cmp70.i.i = icmp eq i32 %186, -5
  br i1 %cmp70.i.i, label %for.body43.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end75.i.i

for.body43.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %for.body43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end75.i.i:                                     ; preds = %for.body43.i.i
  %187 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %pdev, align 8
  %dev77.i.i = getelementptr inbounds %struct.pci_dev, ptr %188, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.i.i, ptr noundef nonnull @.str.74, i32 noundef %call69.i.i) #11
  %189 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %p_dev, align 8
  %hw_ops65.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %190, i32 0, i32 46
  %191 = ptrtoint ptr %hw_ops65.1.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hw_ops65.1.i.i, align 4
  %read_reg66.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %read_reg66.1.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %read_reg66.1.i.i, align 4
  %add68.1.i.i = or i32 %.243.i.i, 4
  %call69.1.i.i = call i32 %194(ptr noundef %p_dev, i32 noundef %add68.1.i.i, ptr noundef nonnull %err.i.i) #8
  %195 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %196)
  %cmp70.1.i.i = icmp eq i32 %196, -5
  br i1 %cmp70.1.i.i, label %do.end75.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end75.1.i.i

do.end75.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end75.1.i.i:                                   ; preds = %do.end75.i.i
  %197 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pdev, align 8
  %dev77.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %198, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.1.i.i, ptr noundef nonnull @.str.74, i32 noundef %call69.1.i.i) #11
  %199 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %p_dev, align 8
  %hw_ops65.2.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %200, i32 0, i32 46
  %201 = ptrtoint ptr %hw_ops65.2.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hw_ops65.2.i.i, align 4
  %read_reg66.2.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %read_reg66.2.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %read_reg66.2.i.i, align 4
  %add68.2.i.i = add nuw nsw i32 %.243.i.i, 8
  %call69.2.i.i = call i32 %204(ptr noundef %p_dev, i32 noundef %add68.2.i.i, ptr noundef nonnull %err.i.i) #8
  %205 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %206)
  %cmp70.2.i.i = icmp eq i32 %206, -5
  br i1 %cmp70.2.i.i, label %do.end75.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end75.2.i.i

do.end75.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end75.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end75.2.i.i:                                   ; preds = %do.end75.1.i.i
  %207 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pdev, align 8
  %dev77.2.i.i = getelementptr inbounds %struct.pci_dev, ptr %208, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.2.i.i, ptr noundef nonnull @.str.74, i32 noundef %call69.2.i.i) #11
  %209 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %p_dev, align 8
  %hw_ops65.3.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %210, i32 0, i32 46
  %211 = ptrtoint ptr %hw_ops65.3.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hw_ops65.3.i.i, align 4
  %read_reg66.3.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %read_reg66.3.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %read_reg66.3.i.i, align 4
  %add68.3.i.i = add nuw nsw i32 %.243.i.i, 12
  %call69.3.i.i = call i32 %214(ptr noundef %p_dev, i32 noundef %add68.3.i.i, ptr noundef nonnull %err.i.i) #8
  %215 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %216)
  %cmp70.3.i.i = icmp eq i32 %216, -5
  br i1 %cmp70.3.i.i, label %do.end75.2.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end75.3.i.i

do.end75.2.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end75.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end75.3.i.i:                                   ; preds = %do.end75.2.i.i
  %217 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pdev, align 8
  %dev77.3.i.i = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77.3.i.i, ptr noundef nonnull @.str.74, i32 noundef %call69.3.i.i) #11
  %219 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pdev, align 8
  %dev85.i.i = getelementptr inbounds %struct.pci_dev, ptr %220, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev85.i.i, ptr noundef nonnull @.str.77) #11
  %inc87.i.i = add nuw nsw i32 %j.1231.i.i, 1
  %exitcond237.not.i.i = icmp eq i32 %inc87.i.i, 2
  br i1 %exitcond237.not.i.i, label %if.end108.i.i, label %do.end75.3.i.i.for.body43.i.i_crit_edge

do.end75.3.i.i.for.body43.i.i_crit_edge:          ; preds = %do.end75.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43.i.i

if.end108.i.i:                                    ; preds = %do.end75.3.i.i
  %221 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pdev, align 8
  %dev98.i.i = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev98.i.i, ptr noundef nonnull @.str.90) #11
  br label %for.body111.i.i

for.body111.i.i:                                  ; preds = %do.end131.i.i.for.body111.i.i_crit_edge, %if.end108.i.i
  %i.2232.i.i = phi i32 [ 7, %if.end108.i.i ], [ %dec.i.i, %do.end131.i.i.for.body111.i.i_crit_edge ]
  %223 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %p_dev, align 8
  %hw_ops113.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %224, i32 0, i32 46
  %225 = ptrtoint ptr %hw_ops113.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hw_ops113.i.i, align 4
  %read_reg114.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %read_reg114.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %read_reg114.i.i, align 4
  %call115.i.i = call i32 %228(ptr noundef %p_dev, i32 noundef 186647452, ptr noundef nonnull %err.i.i) #8
  %229 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %230)
  %cmp116.i.i = icmp eq i32 %230, -5
  br i1 %cmp116.i.i, label %for.body111.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %if.end118.i.i

for.body111.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %for.body111.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

if.end118.i.i:                                    ; preds = %for.body111.i.i
  %and.i.i = and i32 %call115.i.i, 536870911
  %231 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %p_dev, align 8
  %hw_ops120.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %232, i32 0, i32 46
  %233 = ptrtoint ptr %hw_ops120.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %hw_ops120.i.i, align 4
  %write_reg.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %234, i32 0, i32 3
  %235 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write_reg.i.i, align 4
  %shl.i.i = shl i32 %i.2232.i.i, 29
  %or.i.i = or i32 %and.i.i, %shl.i.i
  %call121.i.i = call i32 %236(ptr noundef %p_dev, i32 noundef 186647452, i32 noundef %or.i.i) #8
  %237 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %p_dev, align 8
  %hw_ops123.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %238, i32 0, i32 46
  %239 = ptrtoint ptr %hw_ops123.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hw_ops123.i.i, align 4
  %read_reg124.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %read_reg124.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %read_reg124.i.i, align 4
  %call125.i.i = call i32 %242(ptr noundef %p_dev, i32 noundef 186647452, ptr noundef nonnull %err.i.i) #8
  %243 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %244)
  %cmp126.i.i = icmp eq i32 %244, -5
  br i1 %cmp126.i.i, label %if.end118.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end131.i.i

if.end118.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %if.end118.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end131.i.i:                                    ; preds = %if.end118.i.i
  %245 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pdev, align 8
  %dev133.i.i = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev133.i.i, ptr noundef nonnull @.str.74, i32 noundef %call125.i.i) #11
  %dec.i.i = add nsw i32 %i.2232.i.i, -1
  %cmp110.not.i.i = icmp eq i32 %i.2232.i.i, 0
  br i1 %cmp110.not.i.i, label %if.end108.1.i.i, label %do.end131.i.i.for.body111.i.i_crit_edge

do.end131.i.i.for.body111.i.i_crit_edge:          ; preds = %do.end131.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111.i.i

if.end108.1.i.i:                                  ; preds = %do.end131.i.i
  %247 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pdev, align 8
  %dev140.i.i = getelementptr inbounds %struct.pci_dev, ptr %248, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev140.i.i, ptr noundef nonnull @.str.77) #11
  %249 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pdev, align 8
  %dev106.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %250, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev106.1.i.i, ptr noundef nonnull @.str.93) #11
  br label %for.body111.1.i.i

for.body111.1.i.i:                                ; preds = %do.end131.1.i.i.for.body111.1.i.i_crit_edge, %if.end108.1.i.i
  %i.2232.1.i.i = phi i32 [ 7, %if.end108.1.i.i ], [ %dec.1.i.i, %do.end131.1.i.i.for.body111.1.i.i_crit_edge ]
  %251 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %p_dev, align 8
  %hw_ops113.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %252, i32 0, i32 46
  %253 = ptrtoint ptr %hw_ops113.1.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hw_ops113.1.i.i, align 4
  %read_reg114.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %254, i32 0, i32 2
  %255 = ptrtoint ptr %read_reg114.1.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read_reg114.1.i.i, align 4
  %call115.1.i.i = call i32 %256(ptr noundef %p_dev, i32 noundef 186651548, ptr noundef nonnull %err.i.i) #8
  %257 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %258)
  %cmp116.1.i.i = icmp eq i32 %258, -5
  br i1 %cmp116.1.i.i, label %for.body111.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %if.end118.1.i.i

for.body111.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %for.body111.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

if.end118.1.i.i:                                  ; preds = %for.body111.1.i.i
  %and.1.i.i = and i32 %call115.1.i.i, 536870911
  %259 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %p_dev, align 8
  %hw_ops120.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %260, i32 0, i32 46
  %261 = ptrtoint ptr %hw_ops120.1.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hw_ops120.1.i.i, align 4
  %write_reg.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %262, i32 0, i32 3
  %263 = ptrtoint ptr %write_reg.1.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write_reg.1.i.i, align 4
  %shl.1.i.i = shl i32 %i.2232.1.i.i, 29
  %or.1.i.i = or i32 %and.1.i.i, %shl.1.i.i
  %call121.1.i.i = call i32 %264(ptr noundef %p_dev, i32 noundef 186651548, i32 noundef %or.1.i.i) #8
  %265 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %p_dev, align 8
  %hw_ops123.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %266, i32 0, i32 46
  %267 = ptrtoint ptr %hw_ops123.1.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hw_ops123.1.i.i, align 4
  %read_reg124.1.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %read_reg124.1.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read_reg124.1.i.i, align 4
  %call125.1.i.i = call i32 %270(ptr noundef %p_dev, i32 noundef 186651548, ptr noundef nonnull %err.i.i) #8
  %271 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %272)
  %cmp126.1.i.i = icmp eq i32 %272, -5
  br i1 %cmp126.1.i.i, label %if.end118.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end131.1.i.i

if.end118.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %if.end118.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end131.1.i.i:                                  ; preds = %if.end118.1.i.i
  %273 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pdev, align 8
  %dev133.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %274, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev133.1.i.i, ptr noundef nonnull @.str.74, i32 noundef %call125.1.i.i) #11
  %dec.1.i.i = add nsw i32 %i.2232.1.i.i, -1
  %cmp110.1.not.i.i = icmp eq i32 %i.2232.1.i.i, 0
  br i1 %cmp110.1.not.i.i, label %do.end138.1.i.i, label %do.end131.1.i.i.for.body111.1.i.i_crit_edge

do.end131.1.i.i.for.body111.1.i.i_crit_edge:      ; preds = %do.end131.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111.1.i.i

do.end138.1.i.i:                                  ; preds = %do.end131.1.i.i
  %275 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %pdev, align 8
  %dev140.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %276, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev140.1.i.i, ptr noundef nonnull @.str.77) #11
  %277 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %p_dev, align 8
  %hw_ops145.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %278, i32 0, i32 46
  %279 = ptrtoint ptr %hw_ops145.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hw_ops145.i.i, align 4
  %read_reg146.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %280, i32 0, i32 2
  %281 = ptrtoint ptr %read_reg146.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read_reg146.i.i, align 4
  %call147.i.i = call i32 %282(ptr noundef %p_dev, i32 noundef 186648324, ptr noundef nonnull %err.i.i) #8
  %283 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %284)
  %cmp148.i.i = icmp eq i32 %284, -5
  br i1 %cmp148.i.i, label %do.end138.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %if.end150.i.i

do.end138.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %do.end138.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

if.end150.i.i:                                    ; preds = %do.end138.1.i.i
  %285 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %p_dev, align 8
  %hw_ops152.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %286, i32 0, i32 46
  %287 = ptrtoint ptr %hw_ops152.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hw_ops152.i.i, align 4
  %read_reg153.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %288, i32 0, i32 2
  %289 = ptrtoint ptr %read_reg153.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %read_reg153.i.i, align 4
  %call154.i.i = call i32 %290(ptr noundef %p_dev, i32 noundef 186652420, ptr noundef nonnull %err.i.i) #8
  %291 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %292)
  %cmp155.i.i = icmp eq i32 %292, -5
  br i1 %cmp155.i.i, label %if.end150.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, label %do.end160.i.i

if.end150.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge: ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

do.end160.i.i:                                    ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %293 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %pdev, align 8
  %dev162.i.i = getelementptr inbounds %struct.pci_dev, ptr %294, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev162.i.i, ptr noundef nonnull @.str.100, i32 noundef %call147.i.i, i32 noundef %call154.i.i) #11
  br label %qlcnic_83xx_dump_pause_control_regs.exit.i

qlcnic_83xx_dump_pause_control_regs.exit.i:       ; preds = %do.end160.i.i, %if.end150.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end138.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %if.end118.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %for.body111.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %if.end118.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %for.body111.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end75.2.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end75.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end75.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %for.body43.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end30.6.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end30.5.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end30.4.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end30.3.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end30.2.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end30.1.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %do.end30.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %for.body.i.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge, %if.end.i.qlcnic_83xx_dump_pause_control_regs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i) #8
  %295 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %p_dev, align 8
  %hw_ops.i102 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %296, i32 0, i32 46
  %297 = ptrtoint ptr %hw_ops.i102 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hw_ops.i102, align 4
  %write_reg.i103 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %298, i32 0, i32 3
  %299 = ptrtoint ptr %write_reg.i103 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write_reg.i103, align 4
  %call1.i = call i32 %300(ptr noundef %p_dev, i32 noundef 220201604, i32 noundef 0) #8
  %301 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %p_dev, align 8
  %hw_ops12.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %302, i32 0, i32 46
  %303 = ptrtoint ptr %hw_ops12.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %hw_ops12.i, align 4
  %write_reg13.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %304, i32 0, i32 3
  %305 = ptrtoint ptr %write_reg13.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %write_reg13.i, align 4
  %call14.i = call i32 %306(ptr noundef %p_dev, i32 noundef 186647460, i32 noundef 0) #8
  %307 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %p_dev, align 8
  %hw_ops12.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %308, i32 0, i32 46
  %309 = ptrtoint ptr %hw_ops12.1.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %hw_ops12.1.i, align 4
  %write_reg13.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %310, i32 0, i32 3
  %311 = ptrtoint ptr %write_reg13.1.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %write_reg13.1.i, align 4
  %call14.1.i = call i32 %312(ptr noundef %p_dev, i32 noundef 186647464, i32 noundef 0) #8
  %313 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %p_dev, align 8
  %hw_ops12.2.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %314, i32 0, i32 46
  %315 = ptrtoint ptr %hw_ops12.2.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hw_ops12.2.i, align 4
  %write_reg13.2.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %316, i32 0, i32 3
  %317 = ptrtoint ptr %write_reg13.2.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %write_reg13.2.i, align 4
  %call14.2.i = call i32 %318(ptr noundef %p_dev, i32 noundef 186647468, i32 noundef 0) #8
  %319 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %p_dev, align 8
  %hw_ops12.3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %320, i32 0, i32 46
  %321 = ptrtoint ptr %hw_ops12.3.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hw_ops12.3.i, align 4
  %write_reg13.3.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %322, i32 0, i32 3
  %323 = ptrtoint ptr %write_reg13.3.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %write_reg13.3.i, align 4
  %call14.3.i = call i32 %324(ptr noundef %p_dev, i32 noundef 186647472, i32 noundef 0) #8
  %325 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %p_dev, align 8
  %hw_ops12.4.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %326, i32 0, i32 46
  %327 = ptrtoint ptr %hw_ops12.4.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %hw_ops12.4.i, align 4
  %write_reg13.4.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %328, i32 0, i32 3
  %329 = ptrtoint ptr %write_reg13.4.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %write_reg13.4.i, align 4
  %call14.4.i = call i32 %330(ptr noundef %p_dev, i32 noundef 186647476, i32 noundef 0) #8
  %331 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %p_dev, align 8
  %hw_ops12.5.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %332, i32 0, i32 46
  %333 = ptrtoint ptr %hw_ops12.5.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hw_ops12.5.i, align 4
  %write_reg13.5.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %334, i32 0, i32 3
  %335 = ptrtoint ptr %write_reg13.5.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %write_reg13.5.i, align 4
  %call14.5.i = call i32 %336(ptr noundef %p_dev, i32 noundef 186647480, i32 noundef 0) #8
  %337 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %p_dev, align 8
  %hw_ops12.6.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %338, i32 0, i32 46
  %339 = ptrtoint ptr %hw_ops12.6.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %hw_ops12.6.i, align 4
  %write_reg13.6.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %340, i32 0, i32 3
  %341 = ptrtoint ptr %write_reg13.6.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %write_reg13.6.i, align 4
  %call14.6.i = call i32 %342(ptr noundef %p_dev, i32 noundef 186647484, i32 noundef 0) #8
  %343 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %p_dev, align 8
  %hw_ops12.7.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %344, i32 0, i32 46
  %345 = ptrtoint ptr %hw_ops12.7.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %hw_ops12.7.i, align 4
  %write_reg13.7.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %346, i32 0, i32 3
  %347 = ptrtoint ptr %write_reg13.7.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %write_reg13.7.i, align 4
  %call14.7.i = call i32 %348(ptr noundef %p_dev, i32 noundef 186647488, i32 noundef 0) #8
  %349 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %p_dev, align 8
  %hw_ops12.195.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %350, i32 0, i32 46
  %351 = ptrtoint ptr %hw_ops12.195.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %hw_ops12.195.i, align 4
  %write_reg13.196.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %352, i32 0, i32 3
  %353 = ptrtoint ptr %write_reg13.196.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %write_reg13.196.i, align 4
  %call14.197.i = call i32 %354(ptr noundef %p_dev, i32 noundef 186651556, i32 noundef 0) #8
  %355 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %p_dev, align 8
  %hw_ops12.1.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %356, i32 0, i32 46
  %357 = ptrtoint ptr %hw_ops12.1.1.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %hw_ops12.1.1.i, align 4
  %write_reg13.1.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %358, i32 0, i32 3
  %359 = ptrtoint ptr %write_reg13.1.1.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %write_reg13.1.1.i, align 4
  %call14.1.1.i = call i32 %360(ptr noundef %p_dev, i32 noundef 186651560, i32 noundef 0) #8
  %361 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %p_dev, align 8
  %hw_ops12.2.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %362, i32 0, i32 46
  %363 = ptrtoint ptr %hw_ops12.2.1.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %hw_ops12.2.1.i, align 4
  %write_reg13.2.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %364, i32 0, i32 3
  %365 = ptrtoint ptr %write_reg13.2.1.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write_reg13.2.1.i, align 4
  %call14.2.1.i = call i32 %366(ptr noundef %p_dev, i32 noundef 186651564, i32 noundef 0) #8
  %367 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %p_dev, align 8
  %hw_ops12.3.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %368, i32 0, i32 46
  %369 = ptrtoint ptr %hw_ops12.3.1.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %hw_ops12.3.1.i, align 4
  %write_reg13.3.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %370, i32 0, i32 3
  %371 = ptrtoint ptr %write_reg13.3.1.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %write_reg13.3.1.i, align 4
  %call14.3.1.i = call i32 %372(ptr noundef %p_dev, i32 noundef 186651568, i32 noundef 0) #8
  %373 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %p_dev, align 8
  %hw_ops12.4.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %374, i32 0, i32 46
  %375 = ptrtoint ptr %hw_ops12.4.1.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %hw_ops12.4.1.i, align 4
  %write_reg13.4.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %376, i32 0, i32 3
  %377 = ptrtoint ptr %write_reg13.4.1.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %write_reg13.4.1.i, align 4
  %call14.4.1.i = call i32 %378(ptr noundef %p_dev, i32 noundef 186651572, i32 noundef 0) #8
  %379 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %p_dev, align 8
  %hw_ops12.5.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %380, i32 0, i32 46
  %381 = ptrtoint ptr %hw_ops12.5.1.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %hw_ops12.5.1.i, align 4
  %write_reg13.5.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %382, i32 0, i32 3
  %383 = ptrtoint ptr %write_reg13.5.1.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %write_reg13.5.1.i, align 4
  %call14.5.1.i = call i32 %384(ptr noundef %p_dev, i32 noundef 186651576, i32 noundef 0) #8
  %385 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %p_dev, align 8
  %hw_ops12.6.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %386, i32 0, i32 46
  %387 = ptrtoint ptr %hw_ops12.6.1.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %hw_ops12.6.1.i, align 4
  %write_reg13.6.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %388, i32 0, i32 3
  %389 = ptrtoint ptr %write_reg13.6.1.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %write_reg13.6.1.i, align 4
  %call14.6.1.i = call i32 %390(ptr noundef %p_dev, i32 noundef 186651580, i32 noundef 0) #8
  %391 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %p_dev, align 8
  %hw_ops12.7.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %392, i32 0, i32 46
  %393 = ptrtoint ptr %hw_ops12.7.1.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %hw_ops12.7.1.i, align 4
  %write_reg13.7.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %394, i32 0, i32 3
  %395 = ptrtoint ptr %write_reg13.7.1.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %write_reg13.7.1.i, align 4
  %call14.7.1.i = call i32 %396(ptr noundef %p_dev, i32 noundef 186651584, i32 noundef 0) #8
  %397 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %p_dev, align 8
  %hw_ops32.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %398, i32 0, i32 46
  %399 = ptrtoint ptr %hw_ops32.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %hw_ops32.i, align 4
  %write_reg33.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %400, i32 0, i32 3
  %401 = ptrtoint ptr %write_reg33.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %write_reg33.i, align 4
  %call36.i = call i32 %402(ptr noundef %p_dev, i32 noundef 186647432, i32 noundef 67044351) #8
  %403 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %p_dev, align 8
  %hw_ops32.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %404, i32 0, i32 46
  %405 = ptrtoint ptr %hw_ops32.1.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %hw_ops32.1.i, align 4
  %write_reg33.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %406, i32 0, i32 3
  %407 = ptrtoint ptr %write_reg33.1.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %write_reg33.1.i, align 4
  %call36.1.i = call i32 %408(ptr noundef %p_dev, i32 noundef 186647436, i32 noundef 67044351) #8
  %409 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %p_dev, align 8
  %hw_ops32.2.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %410, i32 0, i32 46
  %411 = ptrtoint ptr %hw_ops32.2.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %hw_ops32.2.i, align 4
  %write_reg33.2.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %412, i32 0, i32 3
  %413 = ptrtoint ptr %write_reg33.2.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %write_reg33.2.i, align 4
  %call36.2.i = call i32 %414(ptr noundef %p_dev, i32 noundef 186647440, i32 noundef 67044351) #8
  %415 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %p_dev, align 8
  %hw_ops32.3.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %416, i32 0, i32 46
  %417 = ptrtoint ptr %hw_ops32.3.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %hw_ops32.3.i, align 4
  %write_reg33.3.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %418, i32 0, i32 3
  %419 = ptrtoint ptr %write_reg33.3.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %write_reg33.3.i, align 4
  %call36.3.i = call i32 %420(ptr noundef %p_dev, i32 noundef 186647444, i32 noundef 67044351) #8
  %421 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %p_dev, align 8
  %hw_ops32.198.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %422, i32 0, i32 46
  %423 = ptrtoint ptr %hw_ops32.198.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %hw_ops32.198.i, align 4
  %write_reg33.199.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %424, i32 0, i32 3
  %425 = ptrtoint ptr %write_reg33.199.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %write_reg33.199.i, align 4
  %call36.1100.i = call i32 %426(ptr noundef %p_dev, i32 noundef 186651528, i32 noundef 67044351) #8
  %427 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %p_dev, align 8
  %hw_ops32.1.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %428, i32 0, i32 46
  %429 = ptrtoint ptr %hw_ops32.1.1.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %hw_ops32.1.1.i, align 4
  %write_reg33.1.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %430, i32 0, i32 3
  %431 = ptrtoint ptr %write_reg33.1.1.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %write_reg33.1.1.i, align 4
  %call36.1.1.i = call i32 %432(ptr noundef %p_dev, i32 noundef 186651532, i32 noundef 67044351) #8
  %433 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %p_dev, align 8
  %hw_ops32.2.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %434, i32 0, i32 46
  %435 = ptrtoint ptr %hw_ops32.2.1.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %hw_ops32.2.1.i, align 4
  %write_reg33.2.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %436, i32 0, i32 3
  %437 = ptrtoint ptr %write_reg33.2.1.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %write_reg33.2.1.i, align 4
  %call36.2.1.i = call i32 %438(ptr noundef %p_dev, i32 noundef 186651536, i32 noundef 67044351) #8
  %439 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %p_dev, align 8
  %hw_ops32.3.1.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %440, i32 0, i32 46
  %441 = ptrtoint ptr %hw_ops32.3.1.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %hw_ops32.3.1.i, align 4
  %write_reg33.3.1.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %442, i32 0, i32 3
  %443 = ptrtoint ptr %write_reg33.3.1.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %write_reg33.3.1.i, align 4
  %call36.3.1.i = call i32 %444(ptr noundef %p_dev, i32 noundef 186651540, i32 noundef 67044351) #8
  %445 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %p_dev, align 8
  %hw_ops44.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %446, i32 0, i32 46
  %447 = ptrtoint ptr %hw_ops44.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %hw_ops44.i, align 4
  %write_reg45.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %448, i32 0, i32 3
  %449 = ptrtoint ptr %write_reg45.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %write_reg45.i, align 4
  %call46.i = call i32 %450(ptr noundef %p_dev, i32 noundef 186648324, i32 noundef 0) #8
  %451 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %p_dev, align 8
  %hw_ops48.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %452, i32 0, i32 46
  %453 = ptrtoint ptr %hw_ops48.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %hw_ops48.i, align 4
  %write_reg49.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %454, i32 0, i32 3
  %455 = ptrtoint ptr %write_reg49.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %write_reg49.i, align 4
  %call50.i = call i32 %456(ptr noundef %p_dev, i32 noundef 186652420, i32 noundef 0) #8
  %457 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %pdev, align 8
  %dev55.i = getelementptr inbounds %struct.pci_dev, ptr %458, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55.i, ptr noundef nonnull @.str.63) #11
  call void @qlcnic_83xx_unlock_driver(ptr noundef %p_dev) #8
  br label %qlcnic_83xx_disable_pause_frames.exit

qlcnic_83xx_disable_pause_frames.exit:            ; preds = %qlcnic_83xx_dump_pause_control_regs.exit.i, %do.end.i
  %459 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %p_dev, align 8
  %461 = ptrtoint ptr %460 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %460, align 8
  %reg_tbl26 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %460, i32 0, i32 55
  %463 = ptrtoint ptr %reg_tbl26 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %reg_tbl26, align 4
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %464, align 4
  %add.ptr28 = getelementptr i8, ptr %462, i32 %466
  %467 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !385
  %468 = call i32 @llvm.bswap.i32(i32 %467)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !441
  %469 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %pdev, align 8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %470, i32 0, i32 44
  %471 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %p_dev, align 8
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %472, align 8
  %reg_tbl42 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %472, i32 0, i32 55
  %475 = ptrtoint ptr %reg_tbl42 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %reg_tbl42, align 4
  %arrayidx43 = getelementptr i32, ptr %476, i32 1
  %477 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %arrayidx43, align 4
  %add.ptr44 = getelementptr i8, ptr %474, i32 %478
  %479 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #8, !srcloc !385
  %480 = call i32 @llvm.bswap.i32(i32 %479)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !442
  %481 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %p_dev, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %482, i32 0, i32 46
  %483 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %484, i32 0, i32 2
  %485 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %read_reg, align 4
  %call49 = call i32 %486(ptr noundef %p_dev, i32 noundef 872415292, ptr noundef nonnull %err) #8
  %487 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %p_dev, align 8
  %hw_ops51 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %488, i32 0, i32 46
  %489 = ptrtoint ptr %hw_ops51 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %hw_ops51, align 4
  %read_reg52 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %490, i32 0, i32 2
  %491 = ptrtoint ptr %read_reg52 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %read_reg52, align 4
  %call53 = call i32 %492(ptr noundef %p_dev, i32 noundef 873463868, ptr noundef nonnull %err) #8
  %493 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %p_dev, align 8
  %hw_ops55 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %494, i32 0, i32 46
  %495 = ptrtoint ptr %hw_ops55 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %hw_ops55, align 4
  %read_reg56 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %496, i32 0, i32 2
  %497 = ptrtoint ptr %read_reg56 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %read_reg56, align 4
  %call57 = call i32 %498(ptr noundef %p_dev, i32 noundef 874512444, ptr noundef nonnull %err) #8
  %499 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %p_dev, align 8
  %hw_ops59 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %500, i32 0, i32 46
  %501 = ptrtoint ptr %hw_ops59 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %hw_ops59, align 4
  %read_reg60 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %502, i32 0, i32 2
  %503 = ptrtoint ptr %read_reg60 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %read_reg60, align 4
  %call61 = call i32 %504(ptr noundef %p_dev, i32 noundef 875561020, ptr noundef nonnull %err) #8
  %505 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %p_dev, align 8
  %hw_ops63 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %506, i32 0, i32 46
  %507 = ptrtoint ptr %hw_ops63 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %hw_ops63, align 4
  %read_reg64 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %508, i32 0, i32 2
  %509 = ptrtoint ptr %read_reg64 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %read_reg64, align 4
  %call65 = call i32 %510(ptr noundef %p_dev, i32 noundef 883949628, ptr noundef nonnull %err) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.55, i32 noundef %468, i32 noundef %480, i32 noundef %call49, i32 noundef %call53, i32 noundef %call57, i32 noundef %call61, i32 noundef %call65) #11
  %511 = and i32 %468, 536870656
  call void @__sanitizer_cov_trace_const_cmp4(i32 26368, i32 %511)
  %cmp66 = icmp eq i32 %511, 26368
  br i1 %cmp66, label %do.end70, label %qlcnic_83xx_disable_pause_frames.exit.if.end74_crit_edge

qlcnic_83xx_disable_pause_frames.exit.if.end74_crit_edge: ; preds = %qlcnic_83xx_disable_pause_frames.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end70:                                         ; preds = %qlcnic_83xx_disable_pause_frames.exit
  call void @__sanitizer_cov_trace_pc() #10
  %512 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %pdev, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %513, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.58) #11
  br label %if.end74

if.end74:                                         ; preds = %do.end70, %qlcnic_83xx_disable_pause_frames.exit.if.end74_crit_edge, %do.body.if.end74_crit_edge
  %ret.0105 = phi i32 [ -5, %qlcnic_83xx_disable_pause_frames.exit.if.end74_crit_edge ], [ -5, %do.end70 ], [ 0, %do.body.if.end74_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %ret.0105
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_tx_soft_reset(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %state = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 5
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_device_detach(ptr noundef %1) #8
  tail call void @qlcnic_down(ptr noundef %adapter, ptr noundef %1) #8
  %call2 = tail call i32 @qlcnic_up(ptr noundef %adapter, ptr noundef %1) #8
  tail call void @netif_device_attach(ptr noundef %1) #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #8
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.qlcnic_83xx_idc_tx_soft_reset) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_idc_enter_need_quiesce(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !443
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 12
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 83886080) #8, !srcloc !384
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_down(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_dump_fw(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_exec_template_cmd(ptr noundef %p_dev, ptr noundef readonly %p_buff) unnamed_addr #0 align 64 {
entry:
  %err.i137 = alloca i32, align 4
  %err.i.i105 = alloca i32, align 4
  %err.i = alloca i32, align 4
  %err.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_dev, align 8
  %seq_end = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 50, i32 9
  %2 = ptrtoint ptr %seq_end to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %seq_end, align 8
  %3 = load ptr, ptr %p_dev, align 8
  %template_end = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 50, i32 10
  %4 = ptrtoint ptr %template_end to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %template_end, align 1
  %5 = load ptr, ptr %p_dev, align 8
  %reset5 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %reset5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset5, align 8
  %entries6 = getelementptr inbounds %struct.qlc_83xx_reset_hdr, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %entries6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %entries6, align 1
  %conv = zext i16 %9 to i32
  %seq_index = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 50, i32 1
  %10 = ptrtoint ptr %seq_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq_index, align 4
  %seq_end11164 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 50, i32 9
  %12 = ptrtoint ptr %seq_end11164 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %seq_end11164, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not165 = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp166 = icmp slt i32 %11, %conv
  %or.cond167 = select i1 %tobool.not165, i1 %cmp166, i1 false
  br i1 %or.cond167, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %p_dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %seq_end11174 = phi ptr [ %seq_end11164, %for.body.lr.ph ], [ %seq_end11, %sw.epilog.for.body_crit_edge ]
  %14 = phi ptr [ %5, %for.body.lr.ph ], [ %193, %sw.epilog.for.body_crit_edge ]
  %index.0172 = phi i32 [ %11, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %entry1.0168 = phi ptr [ %p_buff, %for.body.lr.ph ], [ %add.ptr, %sw.epilog.for.body_crit_edge ]
  %cmd = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 1
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %cmd, align 1
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.215)
  switch i16 %16, label %do.end [
    i16 0, label %for.body.sw.epilog_crit_edge
    i16 1, label %sw.bb
    i16 2, label %sw.bb14
    i16 4, label %sw.bb15
    i16 8, label %sw.bb16
    i16 16, label %sw.bb17
    i16 32, label %sw.bb18
    i16 64, label %sw.bb19
    i16 128, label %sw.bb20
    i16 256, label %sw.bb21
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %count.i = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 3
  %18 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp26.not.i = icmp eq i16 %19, 0
  br i1 %cmp26.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %entry1.0168, i32 8
  %delay.i = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %entry1.028.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %entry1.028.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %entry1.028.i, align 1
  %arg2.i = getelementptr inbounds %struct.qlc_83xx_entry, ptr %entry1.028.i, i32 0, i32 1
  %22 = ptrtoint ptr %arg2.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arg2.i, align 1
  %call.i = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %p_dev, i32 noundef %21, i32 noundef %23) #8
  %24 = ptrtoint ptr %delay.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %delay.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %cond.false12.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

cond.false12.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = zext i16 %25 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %26(i32 noundef %conv4.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false12.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %incdec.ptr.i = getelementptr %struct.qlc_83xx_entry, ptr %entry1.028.i, i32 1
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %count.i, align 1
  %conv.i = zext i16 %28 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sw.bb14:                                          ; preds = %for.body
  %count.i55 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 3
  %29 = ptrtoint ptr %count.i55 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %count.i55, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp26.not.i56 = icmp eq i16 %30, 0
  br i1 %cmp26.not.i56, label %sw.bb14.sw.epilog_crit_edge, label %for.body.lr.ph.i59

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph.i59:                               ; preds = %sw.bb14
  %add.ptr.i57 = getelementptr i8, ptr %entry1.0168, i32 8
  %delay.i58 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 2
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.inc.i77.for.body.i63_crit_edge, %for.body.lr.ph.i59
  %entry1.028.i60 = phi ptr [ %add.ptr.i57, %for.body.lr.ph.i59 ], [ %incdec.ptr.i74, %for.inc.i77.for.body.i63_crit_edge ]
  %i.027.i61 = phi i32 [ 0, %for.body.lr.ph.i59 ], [ %inc.i73, %for.inc.i77.for.body.i63_crit_edge ]
  %31 = ptrtoint ptr %entry1.028.i60 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %entry1.028.i60, align 1
  %arg2.i62 = getelementptr inbounds %struct.qlc_83xx_entry, ptr %entry1.028.i60, i32 0, i32 1
  %33 = ptrtoint ptr %arg2.i62 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arg2.i62, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i.i) #8
  %35 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %err.i.i, align 4
  %36 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p_dev, align 8
  %hw_ops.i.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %hw_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_ops.i.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read_reg.i.i, align 4
  %call.i.i = call i32 %41(ptr noundef %p_dev, i32 noundef %32, ptr noundef nonnull %err.i.i) #8
  %42 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %43)
  %cmp.i.i = icmp eq i32 %43, -5
  br i1 %cmp.i.i, label %for.body.i63.qlcnic_83xx_read_write_crb_reg.exit.i_crit_edge, label %if.end.i.i

for.body.i63.qlcnic_83xx_read_write_crb_reg.exit.i_crit_edge: ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_read_write_crb_reg.exit.i

if.end.i.i:                                       ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %p_dev, i32 noundef %34, i32 noundef %call.i.i) #8
  br label %qlcnic_83xx_read_write_crb_reg.exit.i

qlcnic_83xx_read_write_crb_reg.exit.i:            ; preds = %if.end.i.i, %for.body.i63.qlcnic_83xx_read_write_crb_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i) #8
  %44 = ptrtoint ptr %delay.i58 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %delay.i58, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i64 = icmp eq i16 %45, 0
  br i1 %tobool.not.i64, label %qlcnic_83xx_read_write_crb_reg.exit.i.for.inc.i77_crit_edge, label %cond.false12.i72

qlcnic_83xx_read_write_crb_reg.exit.i.for.inc.i77_crit_edge: ; preds = %qlcnic_83xx_read_write_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i77

cond.false12.i72:                                 ; preds = %qlcnic_83xx_read_write_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i65 = zext i16 %45 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %46(i32 noundef %conv4.i65) #8
  br label %for.inc.i77

for.inc.i77:                                      ; preds = %cond.false12.i72, %qlcnic_83xx_read_write_crb_reg.exit.i.for.inc.i77_crit_edge
  %inc.i73 = add nuw nsw i32 %i.027.i61, 1
  %incdec.ptr.i74 = getelementptr %struct.qlc_83xx_entry, ptr %entry1.028.i60, i32 1
  %47 = ptrtoint ptr %count.i55 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %count.i55, align 1
  %conv.i75 = zext i16 %48 to i32
  %cmp.i76 = icmp ult i32 %inc.i73, %conv.i75
  br i1 %cmp.i76, label %for.inc.i77.for.body.i63_crit_edge, label %for.inc.i77.sw.epilog_crit_edge

for.inc.i77.sw.epilog_crit_edge:                  ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.i77.for.body.i63_crit_edge:               ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i63

sw.bb15:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %49 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %err.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %entry1.0168, i32 8
  %add.ptr2.i = getelementptr i8, ptr %entry1.0168, i32 16
  %delay3.i = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 2
  %50 = ptrtoint ptr %delay3.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %delay3.i, align 1
  %conv.i79 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i80 = icmp eq i16 %51, 0
  %count.i81 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 3
  %52 = ptrtoint ptr %count.i81 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %count.i81, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp76.not.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i80, label %for.cond.preheader.i, label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %sw.bb15
  br i1 %cmp76.not.i, label %for.cond7.preheader.i.qlcnic_83xx_poll_list.exit_crit_edge, label %for.body12.lr.ph.i

for.cond7.preheader.i.qlcnic_83xx_poll_list.exit_crit_edge: ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_list.exit

for.body12.lr.ph.i:                               ; preds = %for.cond7.preheader.i
  %status18.i = getelementptr i8, ptr %entry1.0168, i32 12
  br label %for.body12.i

for.cond.preheader.i:                             ; preds = %sw.bb15
  br i1 %cmp76.not.i, label %for.cond.preheader.i.qlcnic_83xx_poll_list.exit_crit_edge, label %for.body.lr.ph.i82

for.cond.preheader.i.qlcnic_83xx_poll_list.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_list.exit

for.body.lr.ph.i82:                               ; preds = %for.cond.preheader.i
  %status.i = getelementptr i8, ptr %entry1.0168, i32 12
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.body.i88.for.body.i88_crit_edge, %for.body.lr.ph.i82
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i82 ], [ %inc.i84, %for.body.i88.for.body.i88_crit_edge ]
  %entry1.077.i = phi ptr [ %add.ptr2.i, %for.body.lr.ph.i82 ], [ %incdec.ptr.i85, %for.body.i88.for.body.i88_crit_edge ]
  %54 = ptrtoint ptr %entry1.077.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %entry1.077.i, align 1
  %56 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %add.ptr.i78, align 1
  %58 = ptrtoint ptr %status.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %status.i, align 1
  %call.i83 = call fastcc i32 @qlcnic_83xx_poll_reg(ptr noundef %p_dev, i32 noundef %55, i32 noundef 0, i32 noundef %57, i32 noundef %59) #8
  %inc.i84 = add nuw nsw i32 %i.078.i, 1
  %incdec.ptr.i85 = getelementptr %struct.qlc_83xx_entry, ptr %entry1.077.i, i32 1
  %60 = ptrtoint ptr %count.i81 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %count.i81, align 1
  %conv4.i86 = zext i16 %61 to i32
  %cmp.i87 = icmp ult i32 %inc.i84, %conv4.i86
  br i1 %cmp.i87, label %for.body.i88.for.body.i88_crit_edge, label %for.body.i88.qlcnic_83xx_poll_list.exit_crit_edge

for.body.i88.qlcnic_83xx_poll_list.exit_crit_edge: ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_list.exit

for.body.i88.for.body.i88_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i88

for.body12.i:                                     ; preds = %for.inc36.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %i.174.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc37.i, %for.inc36.i.for.body12.i_crit_edge ]
  %entry1.173.i = phi ptr [ %add.ptr2.i, %for.body12.lr.ph.i ], [ %incdec.ptr38.i, %for.inc36.i.for.body12.i_crit_edge ]
  %62 = ptrtoint ptr %entry1.173.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %entry1.173.i, align 1
  %arg214.i = getelementptr inbounds %struct.qlc_83xx_entry, ptr %entry1.173.i, i32 0, i32 1
  %64 = ptrtoint ptr %arg214.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %arg214.i, align 1
  %66 = ptrtoint ptr %add.ptr.i78 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr.i78, align 1
  %68 = ptrtoint ptr %status18.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %status18.i, align 1
  %call19.i = call fastcc i32 @qlcnic_83xx_poll_reg(ptr noundef %p_dev, i32 noundef %63, i32 noundef %conv.i79, i32 noundef %67, i32 noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %for.body12.i.for.inc36.i_crit_edge, label %if.then21.i

for.body12.i.for.inc36.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc36.i

if.then21.i:                                      ; preds = %for.body12.i
  %70 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %p_dev, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %71, i32 0, i32 46
  %72 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_ops.i, align 4
  %read_reg.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_reg.i, align 4
  %call22.i = call i32 %75(ptr noundef %p_dev, i32 noundef %63, ptr noundef nonnull %err.i) #8
  %76 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %77)
  %cmp23.i = icmp eq i32 %77, -5
  br i1 %cmp23.i, label %if.then21.i.qlcnic_83xx_poll_list.exit_crit_edge, label %if.end.i

if.then21.i.qlcnic_83xx_poll_list.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_list.exit

if.end.i:                                         ; preds = %if.then21.i
  %78 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %p_dev, align 8
  %hw_ops27.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %79, i32 0, i32 46
  %80 = ptrtoint ptr %hw_ops27.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_ops27.i, align 4
  %read_reg28.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %read_reg28.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read_reg28.i, align 4
  %call29.i = call i32 %83(ptr noundef %p_dev, i32 noundef %65, ptr noundef nonnull %err.i) #8
  %84 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %85)
  %cmp30.i = icmp eq i32 %85, -5
  br i1 %cmp30.i, label %if.end.i.qlcnic_83xx_poll_list.exit_crit_edge, label %if.end.i.for.inc36.i_crit_edge

if.end.i.for.inc36.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc36.i

if.end.i.qlcnic_83xx_poll_list.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_list.exit

for.inc36.i:                                      ; preds = %if.end.i.for.inc36.i_crit_edge, %for.body12.i.for.inc36.i_crit_edge
  %inc37.i = add nuw nsw i32 %i.174.i, 1
  %incdec.ptr38.i = getelementptr %struct.qlc_83xx_entry, ptr %entry1.173.i, i32 1
  %86 = ptrtoint ptr %count.i81 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %count.i81, align 1
  %conv9.i = zext i16 %87 to i32
  %cmp10.i = icmp ult i32 %inc37.i, %conv9.i
  br i1 %cmp10.i, label %for.inc36.i.for.body12.i_crit_edge, label %for.inc36.i.qlcnic_83xx_poll_list.exit_crit_edge

for.inc36.i.qlcnic_83xx_poll_list.exit_crit_edge: ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_list.exit

for.inc36.i.for.body12.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

qlcnic_83xx_poll_list.exit:                       ; preds = %for.inc36.i.qlcnic_83xx_poll_list.exit_crit_edge, %if.end.i.qlcnic_83xx_poll_list.exit_crit_edge, %if.then21.i.qlcnic_83xx_poll_list.exit_crit_edge, %for.body.i88.qlcnic_83xx_poll_list.exit_crit_edge, %for.cond.preheader.i.qlcnic_83xx_poll_list.exit_crit_edge, %for.cond7.preheader.i.qlcnic_83xx_poll_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body
  %add.ptr.i89 = getelementptr i8, ptr %entry1.0168, i32 8
  %delay3.i90 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 2
  %88 = ptrtoint ptr %delay3.i90 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %delay3.i90, align 1
  %conv.i91 = zext i16 %89 to i32
  %count.i92 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 3
  %90 = ptrtoint ptr %count.i92 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %count.i92, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %cmp23.not.i = icmp eq i16 %91, 0
  br i1 %cmp23.not.i, label %sw.bb16.sw.epilog_crit_edge, label %for.body.lr.ph.i96

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph.i96:                               ; preds = %sw.bb16
  %add.ptr2.i93 = getelementptr i8, ptr %entry1.0168, i32 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool.not.i94 = icmp eq i16 %89, 0
  %status.i95 = getelementptr i8, ptr %entry1.0168, i32 12
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.inc.i104.for.body.i98_crit_edge, %for.body.lr.ph.i96
  %entry1.025.i = phi ptr [ %add.ptr2.i93, %for.body.lr.ph.i96 ], [ %incdec.ptr.i101, %for.inc.i104.for.body.i98_crit_edge ]
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i96 ], [ %inc.i100, %for.inc.i104.for.body.i98_crit_edge ]
  %92 = ptrtoint ptr %entry1.025.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %entry1.025.i, align 1
  %dr_value.i = getelementptr inbounds %struct.qlc_83xx_quad_entry, ptr %entry1.025.i, i32 0, i32 1
  %94 = ptrtoint ptr %dr_value.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %dr_value.i, align 1
  %call.i97 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %p_dev, i32 noundef %93, i32 noundef %95) #8
  %ar_addr.i = getelementptr inbounds %struct.qlc_83xx_quad_entry, ptr %entry1.025.i, i32 0, i32 2
  %96 = ptrtoint ptr %ar_addr.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %ar_addr.i, align 1
  %ar_value.i = getelementptr inbounds %struct.qlc_83xx_quad_entry, ptr %entry1.025.i, i32 0, i32 3
  %98 = ptrtoint ptr %ar_value.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %ar_value.i, align 1
  %call6.i = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %p_dev, i32 noundef %97, i32 noundef %99) #8
  br i1 %tobool.not.i94, label %for.body.i98.for.inc.i104_crit_edge, label %if.then.i99

for.body.i98.for.inc.i104_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i104

if.then.i99:                                      ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %ar_addr.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %ar_addr.i, align 1
  %102 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %add.ptr.i89, align 1
  %104 = ptrtoint ptr %status.i95 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %status.i95, align 1
  %call8.i = call fastcc i32 @qlcnic_83xx_poll_reg(ptr noundef %p_dev, i32 noundef %101, i32 noundef %conv.i91, i32 noundef %103, i32 noundef %105) #8
  br label %for.inc.i104

for.inc.i104:                                     ; preds = %if.then.i99, %for.body.i98.for.inc.i104_crit_edge
  %inc.i100 = add nuw nsw i32 %i.024.i, 1
  %incdec.ptr.i101 = getelementptr %struct.qlc_83xx_quad_entry, ptr %entry1.025.i, i32 1
  %106 = ptrtoint ptr %count.i92 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %count.i92, align 1
  %conv4.i102 = zext i16 %107 to i32
  %cmp.i103 = icmp ult i32 %inc.i100, %conv4.i102
  br i1 %cmp.i103, label %for.inc.i104.for.body.i98_crit_edge, label %for.inc.i104.sw.epilog_crit_edge

for.inc.i104.sw.epilog_crit_edge:                 ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.i104.for.body.i98_crit_edge:              ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i98

sw.bb17:                                          ; preds = %for.body
  %add.ptr.i106 = getelementptr i8, ptr %entry1.0168, i32 8
  %count.i107 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 3
  %108 = ptrtoint ptr %count.i107 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %count.i107, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %cmp28.not.i = icmp eq i16 %109, 0
  br i1 %cmp28.not.i, label %sw.bb17.sw.epilog_crit_edge, label %for.body.lr.ph.i110

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph.i110:                              ; preds = %sw.bb17
  %add.ptr2.i108 = getelementptr i8, ptr %entry1.0168, i32 24
  %index_a.i.i = getelementptr i8, ptr %entry1.0168, i32 21
  %shl.i.i = getelementptr i8, ptr %entry1.0168, i32 23
  %shr.i.i = getelementptr i8, ptr %entry1.0168, i32 22
  %or_value.i.i = getelementptr i8, ptr %entry1.0168, i32 16
  %xor_value.i.i = getelementptr i8, ptr %entry1.0168, i32 12
  %delay.i109 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 2
  br label %for.body.i112

for.body.i112:                                    ; preds = %for.inc.i126.for.body.i112_crit_edge, %for.body.lr.ph.i110
  %entry1.030.i = phi ptr [ %add.ptr2.i108, %for.body.lr.ph.i110 ], [ %incdec.ptr.i123, %for.inc.i126.for.body.i112_crit_edge ]
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i110 ], [ %inc.i122, %for.inc.i126.for.body.i112_crit_edge ]
  %110 = ptrtoint ptr %entry1.030.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %entry1.030.i, align 1
  %arg2.i111 = getelementptr inbounds %struct.qlc_83xx_entry, ptr %entry1.030.i, i32 0, i32 1
  %112 = ptrtoint ptr %arg2.i111 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %arg2.i111, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i.i105) #8
  %114 = ptrtoint ptr %err.i.i105 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %err.i.i105, align 4
  %115 = ptrtoint ptr %index_a.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %index_a.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i = icmp eq i8 %116, 0
  %117 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %p_dev, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i.i = zext i8 %116 to i32
  %arrayidx.i.i = getelementptr %struct.qlcnic_hardware_context, ptr %118, i32 0, i32 50, i32 4, i32 %idxprom.i.i
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end4.i.i

if.else.i.i:                                      ; preds = %for.body.i112
  %hw_ops.i.i113 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %118, i32 0, i32 46
  %121 = ptrtoint ptr %hw_ops.i.i113 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw_ops.i.i113, align 4
  %read_reg.i.i114 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %read_reg.i.i114 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read_reg.i.i114, align 4
  %call.i.i115 = call i32 %124(ptr noundef %p_dev, i32 noundef %111, ptr noundef nonnull %err.i.i105) #8
  %125 = ptrtoint ptr %err.i.i105 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %err.i.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %126)
  %cmp.i.i116 = icmp eq i32 %126, -5
  br i1 %cmp.i.i116, label %if.else.i.i.qlcnic_83xx_rmw_crb_reg.exit.i_crit_edge, label %if.else.i.i.if.end4.i.i_crit_edge

if.else.i.i.if.end4.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.else.i.i.qlcnic_83xx_rmw_crb_reg.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_rmw_crb_reg.exit.i

if.end4.i.i:                                      ; preds = %if.else.i.i.if.end4.i.i_crit_edge, %if.then.i.i
  %value.0.i.i = phi i32 [ %120, %if.then.i.i ], [ %call.i.i115, %if.else.i.i.if.end4.i.i_crit_edge ]
  %127 = ptrtoint ptr %add.ptr.i106 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %add.ptr.i106, align 1
  %and.i.i = and i32 %128, %value.0.i.i
  %129 = ptrtoint ptr %shl.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %shl.i.i, align 1
  %conv.i.i = zext i8 %130 to i32
  %shl5.i.i = shl i32 %and.i.i, %conv.i.i
  %131 = ptrtoint ptr %shr.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %shr.i.i, align 1
  %conv6.i.i = zext i8 %132 to i32
  %shr7.i.i = lshr i32 %shl5.i.i, %conv6.i.i
  %133 = ptrtoint ptr %or_value.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %or_value.i.i, align 1
  %or.i.i = or i32 %shr7.i.i, %134
  %135 = ptrtoint ptr %xor_value.i.i to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %xor_value.i.i, align 1
  %xor.i.i = xor i32 %or.i.i, %136
  %call8.i.i = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %p_dev, i32 noundef %113, i32 noundef %xor.i.i) #8
  br label %qlcnic_83xx_rmw_crb_reg.exit.i

qlcnic_83xx_rmw_crb_reg.exit.i:                   ; preds = %if.end4.i.i, %if.else.i.i.qlcnic_83xx_rmw_crb_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i105) #8
  %137 = ptrtoint ptr %delay.i109 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 2)
  %138 = load i16, ptr %delay.i109, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool.not.i117 = icmp eq i16 %138, 0
  br i1 %tobool.not.i117, label %qlcnic_83xx_rmw_crb_reg.exit.i.for.inc.i126_crit_edge, label %cond.false13.i

qlcnic_83xx_rmw_crb_reg.exit.i.for.inc.i126_crit_edge: ; preds = %qlcnic_83xx_rmw_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i126

cond.false13.i:                                   ; preds = %qlcnic_83xx_rmw_crb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i16 %138 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %139(i32 noundef %conv5.i) #8
  br label %for.inc.i126

for.inc.i126:                                     ; preds = %cond.false13.i, %qlcnic_83xx_rmw_crb_reg.exit.i.for.inc.i126_crit_edge
  %inc.i122 = add nuw nsw i32 %i.029.i, 1
  %incdec.ptr.i123 = getelementptr %struct.qlc_83xx_entry, ptr %entry1.030.i, i32 1
  %140 = ptrtoint ptr %count.i107 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %count.i107, align 1
  %conv.i124 = zext i16 %141 to i32
  %cmp.i125 = icmp ult i32 %inc.i122, %conv.i124
  br i1 %cmp.i125, label %for.inc.i126.for.body.i112_crit_edge, label %for.inc.i126.sw.epilog_crit_edge

for.inc.i126.sw.epilog_crit_edge:                 ; preds = %for.inc.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.i126.for.body.i112_crit_edge:             ; preds = %for.inc.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i112

sw.bb18:                                          ; preds = %for.body
  %delay.i127 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 2
  %142 = ptrtoint ptr %delay.i127 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %delay.i127, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool.not.i128 = icmp eq i16 %143, 0
  br i1 %tobool.not.i128, label %sw.bb18.sw.epilog_crit_edge, label %if.then.i131

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i131:                                     ; preds = %sw.bb18
  %conv.i129 = zext i16 %143 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i131
  %__ms.035.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i129, %if.then.i131 ]
  %dec.i = add nsw i32 %__ms.035.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %144(i32 noundef 214748000) #8
  %tobool26.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool26.not.i, label %while.body.i.sw.epilog_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %seq_end11174 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %seq_end11174, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %template_end.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %14, i32 0, i32 50, i32 10
  %146 = ptrtoint ptr %template_end.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %template_end.i, align 1
  %147 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %p_dev, align 8
  %seq_error.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %148, i32 0, i32 50, i32 2
  %149 = ptrtoint ptr %seq_error.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %seq_error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp.i136 = icmp eq i32 %150, 0
  %151 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  %.str.133..str.136.i = select i1 %cmp.i136, ptr @.str.133, ptr @.str.136
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.133..str.136.i) #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i137) #8
  %153 = ptrtoint ptr %err.i137 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %err.i137, align 4, !annotation !403
  %add.ptr.i138 = getelementptr i8, ptr %entry1.0168, i32 8
  %delay3.i139 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 2
  %154 = ptrtoint ptr %delay3.i139 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %delay3.i139, align 1
  %conv.i140 = zext i16 %155 to i32
  %count.i141 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, ptr %entry1.0168, i32 0, i32 3
  %156 = ptrtoint ptr %count.i141 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %157 = load i16, ptr %count.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %cmp52.not.i = icmp eq i16 %157, 0
  br i1 %cmp52.not.i, label %sw.bb21.qlcnic_83xx_poll_read_list.exit_crit_edge, label %for.body.lr.ph.i145

sw.bb21.qlcnic_83xx_poll_read_list.exit_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_read_list.exit

for.body.lr.ph.i145:                              ; preds = %sw.bb21
  %add.ptr2.i142 = getelementptr i8, ptr %entry1.0168, i32 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool.not.i143 = icmp eq i16 %155, 0
  %status.i144 = getelementptr i8, ptr %entry1.0168, i32 12
  br label %for.body.i149

for.body.i149:                                    ; preds = %for.inc.i157.for.body.i149_crit_edge, %for.body.lr.ph.i145
  %entry1.054.i = phi ptr [ %add.ptr2.i142, %for.body.lr.ph.i145 ], [ %incdec.ptr.i154, %for.inc.i157.for.body.i149_crit_edge ]
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i145 ], [ %inc26.i, %for.inc.i157.for.body.i149_crit_edge ]
  %ar_addr.i146 = getelementptr inbounds %struct.qlc_83xx_quad_entry, ptr %entry1.054.i, i32 0, i32 2
  %158 = ptrtoint ptr %ar_addr.i146 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %ar_addr.i146, align 1
  %ar_value.i147 = getelementptr inbounds %struct.qlc_83xx_quad_entry, ptr %entry1.054.i, i32 0, i32 3
  %160 = ptrtoint ptr %ar_value.i147 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %ar_value.i147, align 1
  %call.i148 = call i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef %p_dev, i32 noundef %159, i32 noundef %161) #8
  br i1 %tobool.not.i143, label %for.body.i149.for.inc.i157_crit_edge, label %if.then.i150

for.body.i149.for.inc.i157_crit_edge:             ; preds = %for.body.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i157

if.then.i150:                                     ; preds = %for.body.i149
  %162 = ptrtoint ptr %ar_addr.i146 to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %ar_addr.i146, align 1
  %164 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %add.ptr.i138, align 1
  %166 = ptrtoint ptr %status.i144 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %status.i144, align 1
  %call7.i = call fastcc i32 @qlcnic_83xx_poll_reg(ptr noundef %p_dev, i32 noundef %163, i32 noundef %conv.i140, i32 noundef %165, i32 noundef %167) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then.i150.for.inc.i157_crit_edge

if.then.i150.for.inc.i157_crit_edge:              ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i157

if.then9.i:                                       ; preds = %if.then.i150
  %168 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %p_dev, align 8
  %array_index.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %169, i32 0, i32 50, i32 3
  %170 = ptrtoint ptr %array_index.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %array_index.i, align 4
  %172 = ptrtoint ptr %entry1.054.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %entry1.054.i, align 1
  %hw_ops.i151 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %169, i32 0, i32 46
  %174 = ptrtoint ptr %hw_ops.i151 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw_ops.i151, align 4
  %read_reg.i152 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %read_reg.i152 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read_reg.i152, align 4
  %call11.i = call i32 %177(ptr noundef %p_dev, i32 noundef %173, ptr noundef nonnull %err.i137) #8
  %178 = ptrtoint ptr %err.i137 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %err.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %179)
  %cmp12.i = icmp eq i32 %179, -5
  br i1 %cmp12.i, label %if.then9.i.qlcnic_83xx_poll_read_list.exit_crit_edge, label %if.end.i153

if.then9.i.qlcnic_83xx_poll_read_list.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_read_list.exit

if.end.i153:                                      ; preds = %if.then9.i
  %180 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %p_dev, align 8
  %arrayidx.i = getelementptr %struct.qlcnic_hardware_context, ptr %181, i32 0, i32 50, i32 4, i32 %171
  %182 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %call11.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %171)
  %cmp17.i = icmp eq i32 %171, 15
  br i1 %cmp17.i, label %if.then19.i, label %if.end.i153.for.inc.i157_crit_edge

if.end.i153.for.inc.i157_crit_edge:               ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i157

if.then19.i:                                      ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #10
  %183 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %p_dev, align 8
  %array_index22.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %184, i32 0, i32 50, i32 3
  %185 = ptrtoint ptr %array_index22.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %array_index22.i, align 4
  br label %for.inc.i157

for.inc.i157:                                     ; preds = %if.then19.i, %if.end.i153.for.inc.i157_crit_edge, %if.then.i150.for.inc.i157_crit_edge, %for.body.i149.for.inc.i157_crit_edge
  %inc26.i = add nuw nsw i32 %i.053.i, 1
  %incdec.ptr.i154 = getelementptr %struct.qlc_83xx_quad_entry, ptr %entry1.054.i, i32 1
  %186 = ptrtoint ptr %count.i141 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 2)
  %187 = load i16, ptr %count.i141, align 1
  %conv4.i155 = zext i16 %187 to i32
  %cmp.i156 = icmp ult i32 %inc26.i, %conv4.i155
  br i1 %cmp.i156, label %for.inc.i157.for.body.i149_crit_edge, label %for.inc.i157.qlcnic_83xx_poll_read_list.exit_crit_edge

for.inc.i157.qlcnic_83xx_poll_read_list.exit_crit_edge: ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %qlcnic_83xx_poll_read_list.exit

for.inc.i157.for.body.i149_crit_edge:             ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i149

qlcnic_83xx_poll_read_list.exit:                  ; preds = %for.inc.i157.qlcnic_83xx_poll_read_list.exit_crit_edge, %if.then9.i.qlcnic_83xx_poll_read_list.exit_crit_edge, %sw.bb21.qlcnic_83xx_poll_read_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i137) #8
  br label %sw.epilog

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv13 = zext i16 %16 to i32
  %188 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pdev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef %conv13, i32 noundef %index.0172) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %qlcnic_83xx_poll_read_list.exit, %sw.bb20, %sw.bb19, %while.body.i.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %for.inc.i126.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %for.inc.i104.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %qlcnic_83xx_poll_list.exit, %for.inc.i77.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %190 = ptrtoint ptr %entry1.0168 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %191 = load i16, ptr %entry1.0168, align 1
  %conv24 = zext i16 %191 to i32
  %add.ptr = getelementptr i8, ptr %entry1.0168, i32 %conv24
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2026, i32 noundef 0) #8
  %call.i158 = call i32 @__cond_resched() #8
  %inc = add nsw i32 %index.0172, 1
  %192 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %p_dev, align 8
  %seq_end11 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %193, i32 0, i32 50, i32 9
  %194 = ptrtoint ptr %seq_end11 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %seq_end11, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not = icmp eq i8 %195, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp = icmp slt i32 %inc, %conv
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %index.0.lcssa = phi i32 [ %11, %entry.for.end_crit_edge ], [ %inc, %sw.epilog.for.end_crit_edge ]
  %.lcssa = phi ptr [ %5, %entry.for.end_crit_edge ], [ %193, %sw.epilog.for.end_crit_edge ]
  %seq_index27 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %.lcssa, i32 0, i32 50, i32 1
  %196 = ptrtoint ptr %seq_index27 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %index.0.lcssa, ptr %seq_index27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_poll_reg(ptr noundef %p_dev, i32 noundef %addr, i32 noundef %duration, i32 noundef %mask, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %1 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_dev, align 8
  %hw_ops = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops, align 4
  %read_reg = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %call = call i32 %6(ptr noundef %p_dev, i32 noundef %addr, ptr noundef nonnull %err) #8
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %8)
  %cmp = icmp eq i32 %8, -5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = sdiv i32 %duration, 10
  %conv = trunc i32 %div to i8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %value.0 = phi i32 [ %call, %if.end ], [ %call8, %do.cond.do.body_crit_edge ]
  %retries.0 = phi i8 [ %conv, %if.end ], [ %dec, %do.cond.do.body_crit_edge ]
  %and = and i32 %value.0, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %status)
  %cmp1.not = icmp eq i32 %and, %status
  br i1 %cmp1.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @msleep(i32 noundef %div) #8
  %9 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_dev, align 8
  %hw_ops6 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %hw_ops6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_ops6, align 4
  %read_reg7 = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %read_reg7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg7, align 4
  %call8 = call i32 %14(ptr noundef %p_dev, i32 noundef %addr, ptr noundef nonnull %err) #8
  %15 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %16)
  %cmp9 = icmp eq i32 %16, -5
  br i1 %cmp9, label %if.then3.cleanup_crit_edge, label %do.cond

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %if.then3
  %dec = add i8 %retries.0, -1
  %tobool.not = icmp eq i8 %retries.0, 0
  br i1 %tobool.not, label %if.then15, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then15:                                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_dev, align 8
  %seq_error = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %18, i32 0, i32 50, i32 2
  %19 = ptrtoint ptr %seq_error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq_error, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %seq_error, align 8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %p_dev, i32 0, i32 4
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = load ptr, ptr %p_dev, align 8
  %seq_index = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %23, i32 0, i32 50, i32 1
  %24 = ptrtoint ptr %seq_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %seq_index, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef %25) #11
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.131, i32 noundef %call8, i32 noundef %mask, i32 noundef %status) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then3.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 1, %if.then15 ], [ 0, %do.body.cleanup_crit_edge ], [ -5, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_idc_restart_hw(ptr noundef %adapter, i32 noundef %lock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qlcnic_83xx_restart_hw(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @qlcnic_83xx_idc_enter_failed_state(ptr noundef %adapter, i32 noundef %lock)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call fastcc void @qlcnic_83xx_idc_clear_registers(ptr noundef %adapter, i32 noundef %lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not.i = icmp eq i32 %lock, 0
  br i1 %tobool.not.i, label %if.end7.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %call.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then6.critedge.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  tail call void @arm_heavy_mb() #8
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl.c12.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl.c12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl.c12.i, align 8
  %arrayidx.c13.i = getelementptr i32, ptr %5, i32 12
  %6 = ptrtoint ptr %arrayidx.c13.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.c13.i, align 4
  %add.ptr.c14.i = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c14.i, i32 50331648) #8, !srcloc !384
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #8
  br label %if.end

if.end7.critedge.i:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ext_reg_tbl.c.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 56
  %12 = ptrtoint ptr %ext_reg_tbl.c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_reg_tbl.c.i, align 8
  %arrayidx.c.i = getelementptr i32, ptr %13, i32 12
  %14 = ptrtoint ptr %arrayidx.c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.c.i, align 4
  %add.ptr.c.i = getelementptr i8, ptr %11, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.c.i, i32 50331648) #8, !srcloc !384
  br label %if.end

if.end:                                           ; preds = %if.end7.critedge.i, %if.then6.critedge.i, %if.then.i.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ -16, %if.then.i.if.end_crit_edge ], [ 0, %if.end7.critedge.i ], [ 0, %if.then6.critedge.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_prune_lb_filters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_flash_read32(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_fw_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_get_minidump_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_port_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_tx_ring_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_set_sds_ring_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_disable_mbx_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_sriov_pf_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_copy_bootloader(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !444
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ext_reg_tbl8 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %11, i32 0, i32 56
  %14 = ptrtoint ptr %ext_reg_tbl8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_reg_tbl8, align 8
  %arrayidx9 = getelementptr i32, ptr %15, i32 6
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !385
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !445
  %.biased = add i32 %19, 15
  %size.0 = and i32 %.biased, -16
  %call15 = tail call noalias ptr @vzalloc(i32 noundef %size.0) #13
  %cmp = icmp eq ptr %call15, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end18

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %entry
  %div50 = lshr exact i32 %size.0, 2
  %call19 = tail call i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef %adapter, i32 noundef 65536, ptr noundef nonnull %call15, i32 noundef %div50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %div2351 = lshr i32 %.biased, 4
  %call24 = tail call i32 @qlcnic_ms_mem_write128(ptr noundef %adapter, i64 noundef %conv, ptr noundef nonnull %call15, i32 noundef %div2351) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end22, %if.end18.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call24, %if.end22 ], [ %call19, %if.end18.cleanup.sink.split_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call15) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lockless_flash_read32(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_ms_mem_write128(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlcnic_83xx_copy_fw_file(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %fw_info1 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %fw_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_info1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #8
  %6 = call ptr @memset(ptr %data, i32 255, i32 16)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  %call = tail call noalias ptr @vzalloc(i32 noundef %8) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef %5) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %data5 = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data5, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp103.not = icmp ult i32 %13, 4
  br i1 %cmp103.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0104 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %11, i32 %i.0104
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %arrayidx7 = getelementptr i32, ptr %call, i32 %i.0104
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.0104, 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %div100 = lshr i32 %19, 2
  %cmp = icmp ult i32 %inc, %div100
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %21, i32 0, i32 56
  %24 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx10 = getelementptr i32, ptr %25, i32 7
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx10, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !385
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !446
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 4
  %and = and i32 %31, -16
  %conv = zext i32 %29 to i64
  %div14101 = lshr i32 %31, 4
  %call15 = tail call i32 @qlcnic_ms_mem_write128(ptr noundef %adapter, i64 noundef %conv, ptr noundef nonnull %call, i32 noundef %div14101) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.193) #11
  br label %exit

if.end18:                                         ; preds = %for.end
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 4
  %and20 = and i32 %35, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.exit_crit_edge, label %if.then22

if.end18.exit_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then22:                                        ; preds = %if.end18
  %add = add i32 %and, %29
  %conv23 = zext i32 %add to i64
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  %and26105 = and i32 %37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26105)
  %cmp27106.not = icmp eq i32 %and26105, 0
  br i1 %cmp27106.not, label %if.then22.for.body39.preheader_crit_edge, label %if.then22.for.body29_crit_edge

if.then22.for.body29_crit_edge:                   ; preds = %if.then22
  br label %for.body29

if.then22.for.body39.preheader_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39.preheader

for.cond36.preheader:                             ; preds = %for.body29
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.1107)
  %cmp37108 = icmp ult i32 %i.1107, 15
  br i1 %cmp37108, label %for.cond36.preheader.for.body39.preheader_crit_edge, label %for.cond36.preheader.for.end43_crit_edge

for.cond36.preheader.for.end43_crit_edge:         ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.cond36.preheader.for.body39.preheader_crit_edge: ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.cond36.preheader.for.body39.preheader_crit_edge, %if.then22.for.body39.preheader_crit_edge
  %i.1.lcssa112 = phi i32 [ %inc34, %for.cond36.preheader.for.body39.preheader_crit_edge ], [ 0, %if.then22.for.body39.preheader_crit_edge ]
  %uglygep = getelementptr i8, ptr %data, i32 %i.1.lcssa112
  %38 = sub i32 16, %i.1.lcssa112
  %39 = call ptr @memset(ptr %uglygep, i32 0, i32 %38)
  br label %for.end43

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %if.then22.for.body29_crit_edge
  %i.1107 = phi i32 [ %inc34, %for.body29.for.body29_crit_edge ], [ 0, %if.then22.for.body29_crit_edge ]
  %add30 = add nuw nsw i32 %i.1107, %and
  %arrayidx31 = getelementptr i8, ptr %call, i32 %add30
  %40 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr [16 x i8], ptr %data, i32 0, i32 %i.1107
  %42 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx32, align 1
  %inc34 = add nuw nsw i32 %i.1107, 1
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %and26 = and i32 %44, 15
  %cmp27 = icmp ult i32 %inc34, %and26
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.cond36.preheader

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

for.end43:                                        ; preds = %for.body39.preheader, %for.cond36.preheader.for.end43_crit_edge
  %call44 = call i32 @qlcnic_ms_mem_write128(ptr noundef %adapter, i64 noundef %conv23, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.end43.exit_crit_edge, label %do.end49

for.end43.exit_crit_edge:                         ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end49:                                         ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #10
  %pdev50 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %45 = ptrtoint ptr %pdev50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev50, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.193) #11
  br label %exit

exit:                                             ; preds = %do.end49, %for.end43.exit_crit_edge, %if.end18.exit_crit_edge, %do.end
  %ret.0 = phi i32 [ %call15, %do.end ], [ %call44, %do.end49 ], [ 0, %for.end43.exit_crit_edge ], [ 0, %if.end18.exit_crit_edge ]
  call void @release_firmware(ptr noundef %5) #8
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %3, align 4
  call void @vfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_ind_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_ind_rd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171, !172, !173, !175, !177, !179, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !302, !304, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318, !320, !321, !322, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !367, !368, !369, !370, !372, !373}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380, !381}
!llvm.ident = !{!382}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 717, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qlcnic_83xx_idc_vnic_pf_entry._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qlcnic_83xx_idc_vnic_pf_entry._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 732, i32 4}
!10 = !{ptr @qlcnic_83xx_idc_vnic_pf_entry._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @qlcnic_83xx_idc_vnic_pf_entry._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1050, i32 7}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1076, i32 7}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1077, i32 14}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1077, i32 25}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1080, i32 8}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1081, i32 15}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1081, i32 27}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1264, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @qlcnic_83xx_idc_exit._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @qlcnic_83xx_idc_exit._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1289, i32 3}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @qlcnic_83xx_idc_request_reset._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @qlcnic_83xx_idc_request_reset._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1296, i32 32}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2310, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qlcnic_83xx_configure_opmode._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @qlcnic_83xx_configure_opmode._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2478, i32 3}
!46 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @qlcnic_83xx_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @qlcnic_83xx_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2497, i32 3}
!51 = !{ptr @qlcnic_83xx_init._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @qlcnic_83xx_init._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @qlcnic_83xx_init.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2501, i32 2}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qlcnic_83xx_init.__key.29, !54, !"__key", i1 false, i1 false}
!57 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 455, i32 2}
!60 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qlcnic_83xx_idc_enter_failed_state._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @qlcnic_83xx_idc_enter_failed_state._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 991, i32 3}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @qlcnic_83xx_idc_check_state_validity._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @qlcnic_83xx_idc_check_state_validity._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1001, i32 4}
!70 = !{ptr @qlcnic_83xx_idc_check_state_validity._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @qlcnic_83xx_idc_check_state_validity._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @qlcnic_83xx_idc_check_state_validity._entry.38, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1012, i32 4}
!74 = !{ptr @qlcnic_83xx_idc_check_state_validity._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 149, i32 2}
!77 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @qlcnic_83xx_idc_log_state_history._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @qlcnic_83xx_idc_log_state_history._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 832, i32 4}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @qlcnic_83xx_idc_ready_state._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @qlcnic_83xx_idc_ready_state._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 597, i32 3}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qlcnic_83xx_idc_check_fan_failure._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @qlcnic_83xx_idc_check_fan_failure._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 600, i32 4}
!92 = !{ptr @qlcnic_83xx_idc_check_fan_failure._entry.46, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @qlcnic_83xx_idc_check_fan_failure._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 603, i32 4}
!96 = !{ptr @qlcnic_83xx_idc_check_fan_failure._entry.49, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @qlcnic_83xx_idc_check_fan_failure._entry_ptr.51, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1572, i32 3}
!100 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @qlcnic_83xx_check_heartbeat._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @qlcnic_83xx_check_heartbeat._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1577, i32 3}
!105 = !{ptr @qlcnic_83xx_check_heartbeat._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @qlcnic_83xx_check_heartbeat._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1590, i32 4}
!109 = !{ptr @qlcnic_83xx_check_heartbeat._entry.57, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @qlcnic_83xx_check_heartbeat._entry_ptr.59, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1504, i32 3}
!113 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @qlcnic_83xx_disable_pause_frames._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @qlcnic_83xx_disable_pause_frames._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1534, i32 2}
!118 = !{ptr @qlcnic_83xx_disable_pause_frames._entry.62, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @qlcnic_83xx_disable_pause_frames._entry_ptr.64, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1423, i32 2}
!122 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1427, i32 4}
!127 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.67, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.69, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1431, i32 4}
!131 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.70, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.72, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1439, i32 4}
!135 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.73, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.75, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1441, i32 3}
!139 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.76, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.78, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1446, i32 4}
!143 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.79, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.81, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.83, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1450, i32 4}
!147 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.82, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.84, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.85, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1458, i32 4}
!151 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.86, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.87, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1460, i32 3}
!154 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.88, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.90, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1465, i32 4}
!157 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.89, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.91, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.93, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1469, i32 4}
!161 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.92, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.94, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.95, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1482, i32 4}
!165 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.96, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.97, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1484, i32 3}
!168 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.98, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.100, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1493, i32 2}
!171 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry.99, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qlcnic_83xx_dump_pause_control_regs._entry_ptr.101, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.102, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 385, i32 31}
!175 = !{ptr @__func__.qlcnic_83xx_idc_tx_soft_reset, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 385, i32 61}
!177 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 910, i32 4}
!179 = !{ptr @.str.104, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @qlcnic_83xx_idc_need_reset_state._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @qlcnic_83xx_idc_need_reset_state._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @qlcnic_83xx_idc_need_reset_state._entry.105, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 921, i32 3}
!184 = !{ptr @qlcnic_83xx_idc_need_reset_state._entry_ptr.106, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.108, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 934, i32 4}
!187 = !{ptr @qlcnic_83xx_idc_need_reset_state._entry.107, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @qlcnic_83xx_idc_need_reset_state._entry_ptr.109, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.110, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 334, i32 2}
!191 = !{ptr @.str.111, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.113, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 339, i32 4}
!196 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.112, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.114, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.116, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 346, i32 4}
!200 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.115, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.117, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.119, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 356, i32 3}
!204 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry.118, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @qlcnic_83xx_idc_check_reset_ack_reg._entry_ptr.120, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.121, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 948, i32 2}
!208 = !{ptr @.str.122, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @qlcnic_83xx_idc_need_quiesce_state._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @qlcnic_83xx_idc_need_quiesce_state._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.123, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 966, i32 31}
!213 = !{ptr @__func__.qlcnic_83xx_idc_failed_state, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 967, i32 7}
!215 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2037, i32 3}
!217 = !{ptr @.str.125, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @qlcnic_83xx_stop_hw._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @qlcnic_83xx_stop_hw._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.126, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2020, i32 4}
!222 = !{ptr @.str.127, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @qlcnic_83xx_exec_template_cmd._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @qlcnic_83xx_exec_template_cmd._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.128, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1655, i32 3}
!227 = !{ptr @.str.129, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @qlcnic_83xx_poll_reg._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @qlcnic_83xx_poll_reg._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.131, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1658, i32 3}
!232 = !{ptr @qlcnic_83xx_poll_reg._entry.130, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @qlcnic_83xx_poll_reg._entry_ptr.132, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.133, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1953, i32 3}
!236 = !{ptr @.str.134, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @qlcnic_83xx_template_end._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @qlcnic_83xx_template_end._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.136, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1956, i32 3}
!241 = !{ptr @qlcnic_83xx_template_end._entry.135, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @qlcnic_83xx_template_end._entry_ptr.137, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.138, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 976, i32 2}
!245 = !{ptr @qlcnic_83xx_idc_quiesce_state._entry, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @qlcnic_83xx_idc_quiesce_state._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.139, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 742, i32 2}
!249 = !{ptr @.str.140, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @qlcnic_83xx_idc_unknown_state._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @qlcnic_83xx_idc_unknown_state._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.141, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1158, i32 3}
!254 = !{ptr @.str.142, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @qlcnic_83xx_setup_idc_parameters._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @qlcnic_83xx_setup_idc_parameters._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 121, i32 2}
!259 = !{ptr @.str.144, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 122, i32 2}
!261 = !{ptr @.str.145, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 123, i32 2}
!263 = !{ptr @.str.146, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 124, i32 2}
!265 = !{ptr @.str.147, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 125, i32 2}
!267 = !{ptr @.str.148, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 126, i32 2}
!269 = !{ptr @.str.149, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 127, i32 2}
!271 = !{ptr @.str.150, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 128, i32 2}
!273 = !{ptr @qlc_83xx_idc_states, !274, !"qlc_83xx_idc_states", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 120, i32 26}
!275 = !{ptr @.str.151, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 251, i32 3}
!277 = !{ptr @.str.152, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @qlcnic_83xx_idc_check_major_version._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @qlcnic_83xx_idc_check_major_version._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.153, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1712, i32 3}
!282 = !{ptr @.str.154, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @qlcnic_83xx_get_reset_instruction_template._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @qlcnic_83xx_get_reset_instruction_template._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @qlcnic_83xx_get_reset_instruction_template._entry.155, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1722, i32 3}
!287 = !{ptr @qlcnic_83xx_get_reset_instruction_template._entry_ptr.156, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.157, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1681, i32 3}
!290 = !{ptr @qlcnic_83xx_reset_template_checksum._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @qlcnic_83xx_reset_template_checksum._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.158, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2353, i32 2}
!294 = !{ptr @.str.159, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @qlcnic_83xx_init_default_driver._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @qlcnic_83xx_init_default_driver._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.160, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1609, i32 2}
!299 = !{ptr @.str.161, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @qlcnic_83xx_check_cmd_peg_status._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @qlcnic_83xx_check_cmd_peg_status._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = distinct !{null, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2399, i32 35}
!304 = distinct !{null, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2403, i32 35}
!306 = !{ptr @.str.164, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2407, i32 4}
!308 = !{ptr @.str.165, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @qlcnic_83xx_get_fw_info._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @qlcnic_83xx_get_fw_info._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.166, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2378, i32 4}
!313 = !{ptr @.str.167, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @qlcnic_83xx_clear_function_resources._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @qlcnic_83xx_clear_function_resources._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @__func__.qlcnic_83xx_restart_hw, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2204, i32 8}
!318 = !{ptr @.str.168, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2051, i32 3}
!320 = !{ptr @qlcnic_83xx_init_hw._entry, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @qlcnic_83xx_init_hw._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!322 = distinct !{null, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2095, i32 33}
!324 = !{ptr @.str.170, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2100, i32 3}
!326 = !{ptr @.str.171, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @qlcnic_83xx_run_post._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @qlcnic_83xx_run_post._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.173, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2131, i32 3}
!331 = !{ptr @qlcnic_83xx_run_post._entry.172, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @qlcnic_83xx_run_post._entry_ptr.174, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.176, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2137, i32 3}
!335 = !{ptr @qlcnic_83xx_run_post._entry.175, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @qlcnic_83xx_run_post._entry_ptr.177, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.179, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2140, i32 3}
!339 = !{ptr @qlcnic_83xx_run_post._entry.178, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @qlcnic_83xx_run_post._entry_ptr.180, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.182, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2145, i32 3}
!343 = !{ptr @qlcnic_83xx_run_post._entry.181, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @qlcnic_83xx_run_post._entry_ptr.183, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.185, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2150, i32 3}
!347 = !{ptr @qlcnic_83xx_run_post._entry.184, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @qlcnic_83xx_run_post._entry_ptr.186, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.188, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2155, i32 3}
!351 = !{ptr @qlcnic_83xx_run_post._entry.187, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @qlcnic_83xx_run_post._entry_ptr.189, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.191, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2160, i32 3}
!355 = !{ptr @qlcnic_83xx_run_post._entry.190, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @qlcnic_83xx_run_post._entry_ptr.192, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.193, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1386, i32 3}
!359 = !{ptr @.str.194, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @qlcnic_83xx_copy_fw_file._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @qlcnic_83xx_copy_fw_file._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @qlcnic_83xx_copy_fw_file._entry.195, !363, !"_entry", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 1400, i32 4}
!364 = !{ptr @qlcnic_83xx_copy_fw_file._entry_ptr.196, !363, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.197, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2176, i32 3}
!367 = !{ptr @.str.198, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @qlcnic_83xx_load_fw_image_from_host._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @qlcnic_83xx_load_fw_image_from_host._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.199, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_init.c", i32 2044, i32 3}
!372 = !{ptr @qlcnic_83xx_start_hw._entry, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @qlcnic_83xx_start_hw._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 1, !"min_enum_size", i32 4}
!376 = !{i32 8, !"branch-target-enforcement", i32 0}
!377 = !{i32 8, !"sign-return-address", i32 0}
!378 = !{i32 8, !"sign-return-address-all", i32 0}
!379 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!380 = !{i32 7, !"uwtable", i32 1}
!381 = !{i32 7, !"frame-pointer", i32 2}
!382 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!383 = !{i64 2157840235}
!384 = !{i64 5051873}
!385 = !{i64 5052291}
!386 = !{i64 2157841329}
!387 = !{i64 2157841729}
!388 = !{i64 2157854641}
!389 = !{i64 2157868950}
!390 = !{i64 2157894236}
!391 = !{i64 2157876873}
!392 = !{i64 2157858662}
!393 = !{i64 2157842844}
!394 = !{i64 2157843246}
!395 = !{i64 2157844381}
!396 = !{i64 2157845274}
!397 = !{i64 2157849679}
!398 = !{i64 2157850094}
!399 = !{i64 2157857109}
!400 = !{i64 2157884869}
!401 = !{i64 2157860669}
!402 = !{i64 2157861602}
!403 = !{!"auto-init"}
!404 = !{i64 2157897166}
!405 = !{i64 2157897566}
!406 = !{i64 2157828830}
!407 = !{i64 2157898220}
!408 = !{i64 2157834749}
!409 = !{i64 2157835161}
!410 = !{i64 2157899346}
!411 = !{i64 2157899790}
!412 = !{i64 2157836308}
!413 = !{i64 2157836720}
!414 = !{i64 2157833195}
!415 = !{i64 2157833607}
!416 = !{i64 2157831610}
!417 = !{i64 2157832044}
!418 = !{i64 2157859430}
!419 = !{i64 2157957737}
!420 = !{i64 2157900946}
!421 = !{i64 2157901346}
!422 = !{i64 2157837860}
!423 = !{i64 2157902587}
!424 = !{i64 2157905202}
!425 = !{i64 2157906095}
!426 = !{i64 2157906507}
!427 = !{i64 2157909503}
!428 = !{i64 2157910371}
!429 = !{i64 2157910771}
!430 = !{i64 2158014320}
!431 = !{i64 2158015198}
!432 = !{i64 2158006246}
!433 = !{i8 0, i8 2}
!434 = !{i64 2157988806}
!435 = !{i64 2158004487}
!436 = !{i64 2158005130}
!437 = !{i64 2158006636}
!438 = !{i64 2157862483}
!439 = !{i64 2157946585}
!440 = !{i64 2157947433}
!441 = !{i64 2157949910}
!442 = !{i64 2157954608}
!443 = !{i64 2157857875}
!444 = !{i64 2157911914}
!445 = !{i64 2157912792}
!446 = !{i64 2157913813}
