; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.qlcnic_filter_hash = type { ptr, i8, i16, i16 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.qlcnic_hardware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.143 = type { ptr }
%struct.qlcnic_nic_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qlcnic_npar_info = type { i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] }
%struct.qlcnic_info = type { i16, i16, i16, i16, i32, i8, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16 }
%struct.qlcnic_eswitch = type { i8, i8, i8, i8, i8, i8, i32 }

@qlcnic_83xx_config_vnic_opmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid Virtual NIC opmode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qlcnic_83xx_config_vnic_opmode\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qlcnic_83xx_config_vnic_opmode._entry_ptr = internal global ptr @qlcnic_83xx_config_vnic_opmode._entry, section ".printk_index", align 4
@qlcnic_83xx_check_vnic_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"vNIC mode not operational, state check timed out.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qlcnic_83xx_check_vnic_state\00", [35 x i8] zeroinitializer }, align 32
@qlcnic_83xx_check_vnic_state._entry_ptr = internal global ptr @qlcnic_83xx_check_vnic_state._entry, section ".printk_index", align 4
@qlcnic_use_msi_x = external dso_local local_unnamed_addr global i32, align 4
@qlcnic_83xx_init_non_privileged_vnic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 177, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HAL Version: %d, Virtual function\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qlcnic_83xx_init_non_privileged_vnic\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init_non_privileged_vnic._entry_ptr = internal global ptr @qlcnic_83xx_init_non_privileged_vnic._entry, section ".printk_index", align 4
@qlcnic_83xx_init_privileged_vnic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 157, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HAL Version: %d, Privileged function\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qlcnic_83xx_init_privileged_vnic\00", [63 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init_privileged_vnic._entry_ptr = internal global ptr @qlcnic_83xx_init_privileged_vnic._entry, section ".printk_index", align 4
@qlcnic_83xx_init_mgmt_vnic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 113, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"id:%d active:%d type:%d port:%d min_bw:%d max_bw:%d mac_addr:%pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qlcnic_83xx_init_mgmt_vnic\00", [37 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init_mgmt_vnic._entry_ptr = internal global ptr @qlcnic_83xx_init_mgmt_vnic._entry, section ".printk_index", align 4
@qlcnic_83xx_init_mgmt_vnic._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 117, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Max functions = %d, active functions = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init_mgmt_vnic._entry_ptr.16 = internal global ptr @qlcnic_83xx_init_mgmt_vnic._entry.14, section ".printk_index", align 4
@qlcnic_83xx_init_mgmt_vnic._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 138, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HAL Version: %d, Management function\0A\00", [58 x i8] zeroinitializer }, align 32
@qlcnic_83xx_init_mgmt_vnic._entry_ptr.19 = internal global ptr @qlcnic_83xx_init_mgmt_vnic._entry.17, section ".printk_index", align 4
@switch.table.qlcnic_83xx_config_vnic_opmode = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @qlcnic_83xx_idc_ready_state_entry, ptr @qlcnic_83xx_idc_vnic_pf_entry, ptr @qlcnic_83xx_idc_ready_state_entry], [20 x i8] zeroinitializer }, align 32
@switch.table.qlcnic_83xx_config_vnic_opmode.20 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @qlcnic_83xx_init_mgmt_vnic, ptr @qlcnic_83xx_init_privileged_vnic, ptr @qlcnic_83xx_init_non_privileged_vnic], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 222, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 255, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 176, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 155, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 110, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 116, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [57 x i8] c"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 137, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [44 x i8] c"switch.table.qlcnic_83xx_config_vnic_opmode\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [47 x i8] c"switch.table.qlcnic_83xx_config_vnic_opmode.20\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @qlcnic_83xx_check_vnic_state._entry, ptr @qlcnic_83xx_check_vnic_state._entry_ptr, ptr @qlcnic_83xx_config_vnic_opmode._entry, ptr @qlcnic_83xx_config_vnic_opmode._entry_ptr, ptr @qlcnic_83xx_init_mgmt_vnic._entry, ptr @qlcnic_83xx_init_mgmt_vnic._entry.14, ptr @qlcnic_83xx_init_mgmt_vnic._entry.17, ptr @qlcnic_83xx_init_mgmt_vnic._entry_ptr, ptr @qlcnic_83xx_init_mgmt_vnic._entry_ptr.16, ptr @qlcnic_83xx_init_mgmt_vnic._entry_ptr.19, ptr @qlcnic_83xx_init_non_privileged_vnic._entry, ptr @qlcnic_83xx_init_non_privileged_vnic._entry_ptr, ptr @qlcnic_83xx_init_privileged_vnic._entry, ptr @qlcnic_83xx_init_privileged_vnic._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @switch.table.qlcnic_83xx_config_vnic_opmode, ptr @switch.table.qlcnic_83xx_config_vnic_opmode.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_config_vnic_opmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_check_vnic_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init_non_privileged_vnic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init_privileged_vnic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init_mgmt_vnic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init_mgmt_vnic._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlcnic_83xx_init_mgmt_vnic._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlcnic_83xx_config_vnic_opmode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qlcnic_83xx_config_vnic_opmode.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_disable_vnic_mode(ptr noundef %adapter, i32 noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.do.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %3, i32 0, i32 56
  %6 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 38
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !47
  %vnic_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 8
  %10 = ptrtoint ptr %vnic_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %vnic_state, align 2
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_lock_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_unlock_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_set_vnic_opmode(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pci_func, align 1
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %5, i32 0, i32 56
  %8 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %9, i32 37
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %and)
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %ext_reg_tbl12 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %16, i32 0, i32 56
  %19 = ptrtoint ptr %ext_reg_tbl12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ext_reg_tbl12, align 8
  %arrayidx13 = getelementptr i32, ptr %20, i32 37
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx13, align 4
  %add.ptr14 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %14) #6, !srcloc !47
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_config_vnic_opmode(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %nic_ops2 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 43
  %2 = ptrtoint ptr %nic_ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nic_ops2, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ops.i, align 4
  %get_func_no.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %get_func_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_func_no.i, align 4
  tail call void %7(ptr noundef %adapter) #6
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ext_reg_tbl = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %9, i32 0, i32 56
  %12 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx = getelementptr i32, ptr %13, i32 37
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %16)
  %cmp = icmp eq i32 %16, 1431655765
  br i1 %cmp, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pci_func, align 1
  %conv = zext i8 %19 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shr = lshr i32 %17, %mul
  %and = and i32 %shr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %do.end, label %switch.lookup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.cast = trunc i32 %and to i16
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.qlcnic_83xx_config_vnic_opmode, i32 0, i32 %and
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep56 = getelementptr inbounds [3 x ptr], ptr @switch.table.qlcnic_83xx_config_vnic_opmode.20, i32 0, i32 %and
  %23 = ptrtoint ptr %switch.gep56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load57 = load ptr, ptr %switch.gep56, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i16 [ %switch.idx.cast, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %qlcnic_83xx_idc_ready_state_entry.sink = phi ptr [ %switch.load, %switch.lookup ], [ @qlcnic_83xx_idc_ready_state_entry, %entry.sw.epilog_crit_edge ]
  %qlcnic_83xx_init_mgmt_vnic.sink = phi ptr [ %switch.load57, %switch.lookup ], [ @qlcnic_83xx_init_mgmt_vnic, %entry.sw.epilog_crit_edge ]
  %op_mode13 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 30
  %24 = ptrtoint ptr %op_mode13 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %.sink, ptr %op_mode13, align 2
  %idc14 = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51
  %25 = ptrtoint ptr %idc14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %qlcnic_83xx_idc_ready_state_entry.sink, ptr %idc14, align 8
  %init_driver16 = getelementptr inbounds %struct.qlcnic_nic_template, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %init_driver16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %qlcnic_83xx_init_mgmt_vnic.sink, ptr %init_driver16, align 4
  %capabilities = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 40
  %27 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %capabilities, align 4
  %and17 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  %flags23 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %29 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags23, align 8
  br i1 %tobool.not, label %if.else22, label %if.then18

if.then18:                                        ; preds = %sw.epilog
  %or = or i32 %30, 64
  %31 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %flags23, align 8
  %drv_mac_learn = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 36
  %32 = ptrtoint ptr %drv_mac_learn to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %drv_mac_learn, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool19.not = icmp eq i8 %33, 0
  br i1 %tobool19.not, label %if.then18.if.end26_crit_edge, label %if.then18.if.end26.sink.split_crit_edge

if.then18.if.end26.sink.split_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.sink.split

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else22:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %and24 = and i32 %30, -65
  %34 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and24, ptr %flags23, align 8
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else22, %if.then18.if.end26.sink.split_crit_edge
  %.sink55 = phi i8 [ 0, %if.else22 ], [ 1, %if.then18.if.end26.sink.split_crit_edge ]
  %rx_mac_learn = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 38
  %35 = ptrtoint ptr %rx_mac_learn to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink55, ptr %rx_mac_learn, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.then18.if.end26_crit_edge
  %vnic_state = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 8
  %36 = ptrtoint ptr %vnic_state to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %vnic_state, align 2
  %vnic_wait_limit = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 9
  %37 = ptrtoint ptr %vnic_wait_limit to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 30, ptr %vnic_wait_limit, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_idc_ready_state_entry(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_init_non_privileged_vnic(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlcnic_83xx_get_fw_version(ptr noundef %adapter) #6
  %call1 = tail call i32 @qlcnic_set_eswitch_port_config(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @qlcnic_83xx_get_port_info(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %port_type.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_type.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end5.qlcnic_83xx_config_vnic_buff_descriptors.exit_crit_edge [
    i16 2, label %if.then.i
    i16 1, label %if.then7.i
  ]

if.end5.qlcnic_83xx_config_vnic_buff_descriptors.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_83xx_config_vnic_buff_descriptors.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %num_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %5 = ptrtoint ptr %num_rxd.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1024, ptr %num_rxd.i, align 2
  %max_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 10
  %6 = ptrtoint ptr %max_rxd.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2048, ptr %max_rxd.i, align 2
  %num_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %7 = ptrtoint ptr %num_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1024, ptr %num_jumbo_rxd.i, align 8
  %max_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 11
  %8 = ptrtoint ptr %max_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1024, ptr %max_jumbo_rxd.i, align 4
  br label %qlcnic_83xx_config_vnic_buff_descriptors.exit

if.then7.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
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
  br label %qlcnic_83xx_config_vnic_buff_descriptors.exit

qlcnic_83xx_config_vnic_buff_descriptors.exit:    ; preds = %if.then7.i, %if.then.i, %if.end5.qlcnic_83xx_config_vnic_buff_descriptors.exit_crit_edge
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
  %tobool6 = icmp ne i32 %15, 0
  %conv = zext i1 %tobool6 to i8
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_83xx_config_vnic_buff_descriptors.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qlcnic_83xx_config_vnic_buff_descriptors.exit ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_idc_vnic_pf_entry(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_init_privileged_vnic(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qlcnic_83xx_get_minidump_template(ptr noundef %adapter) #6
  %call = tail call i32 @qlcnic_83xx_get_port_info(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %3, label %if.end.qlcnic_83xx_config_vnic_buff_descriptors.exit_crit_edge [
    i16 2, label %if.then.i
    i16 1, label %if.then7.i
  ]

if.end.qlcnic_83xx_config_vnic_buff_descriptors.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %qlcnic_83xx_config_vnic_buff_descriptors.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %num_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %5 = ptrtoint ptr %num_rxd.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1024, ptr %num_rxd.i, align 2
  %max_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 10
  %6 = ptrtoint ptr %max_rxd.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2048, ptr %max_rxd.i, align 2
  %num_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %7 = ptrtoint ptr %num_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1024, ptr %num_jumbo_rxd.i, align 8
  %max_jumbo_rxd.i = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 11
  %8 = ptrtoint ptr %max_jumbo_rxd.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1024, ptr %max_jumbo_rxd.i, align 4
  br label %qlcnic_83xx_config_vnic_buff_descriptors.exit

if.then7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  br label %qlcnic_83xx_config_vnic_buff_descriptors.exit

qlcnic_83xx_config_vnic_buff_descriptors.exit:    ; preds = %if.then7.i, %if.then.i, %if.end.qlcnic_83xx_config_vnic_buff_descriptors.exit_crit_edge
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %qlcnic_83xx_config_vnic_buff_descriptors.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qlcnic_83xx_config_vnic_buff_descriptors.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlcnic_83xx_init_mgmt_vnic(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void @qlcnic_83xx_get_minidump_template(ptr noundef %adapter) #6
  %flags = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @qlcnic_init_pci_info(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %total_nic_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %total_nic_func, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp79.not = icmp eq i16 %7, 0
  br i1 %cmp79.not, label %if.end.do.end14_crit_edge, label %do.end.preheader

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end.preheader:                                 ; preds = %if.end
  %npars = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 41
  %8 = ptrtoint ptr %npars to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %npars, align 8
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.preheader
  %i.081 = phi i32 [ %inc, %do.end.do.end_crit_edge ], [ 0, %do.end.preheader ]
  %npar.080 = phi ptr [ %incdec.ptr, %do.end.do.end_crit_edge ], [ %9, %do.end.preheader ]
  %pci_func = getelementptr inbounds %struct.qlcnic_npar_info, ptr %npar.080, i32 0, i32 14
  %10 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pci_func, align 2
  %conv6 = zext i8 %11 to i32
  %active = getelementptr inbounds %struct.qlcnic_npar_info, ptr %npar.080, i32 0, i32 6
  %12 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active, align 2
  %conv7 = zext i8 %13 to i32
  %type = getelementptr inbounds %struct.qlcnic_npar_info, ptr %npar.080, i32 0, i32 5
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 1
  %conv8 = zext i8 %15 to i32
  %phy_port = getelementptr inbounds %struct.qlcnic_npar_info, ptr %npar.080, i32 0, i32 4
  %16 = ptrtoint ptr %phy_port to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %phy_port, align 2
  %conv9 = zext i8 %17 to i32
  %min_bw = getelementptr inbounds %struct.qlcnic_npar_info, ptr %npar.080, i32 0, i32 2
  %18 = ptrtoint ptr %min_bw to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %min_bw, align 2
  %conv10 = zext i16 %19 to i32
  %max_bw = getelementptr inbounds %struct.qlcnic_npar_info, ptr %npar.080, i32 0, i32 3
  %20 = ptrtoint ptr %max_bw to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_bw, align 2
  %conv11 = zext i16 %21 to i32
  %mac = getelementptr inbounds %struct.qlcnic_npar_info, ptr %npar.080, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.12, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, ptr noundef %mac) #9
  %inc = add nuw nsw i32 %i.081, 1
  %incdec.ptr = getelementptr %struct.qlcnic_npar_info, ptr %npar.080, i32 1
  %22 = ptrtoint ptr %total_nic_func to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %total_nic_func, align 8
  %conv = zext i16 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.end.do.end_crit_edge, label %do.end14.loopexit

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end14.loopexit:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i16 %23 to i32
  br label %do.end14

do.end14:                                         ; preds = %do.end14.loopexit, %if.end.do.end14_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %do.end14.loopexit ], [ 0, %if.end.do.end14_crit_edge ]
  %max_pci_func = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 37
  %24 = ptrtoint ptr %max_pci_func to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_pci_func, align 2
  %conv15 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.15, i32 noundef %conv15, i32 noundef %.lcssa) #9
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %call.i = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end21, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %do.end14
  %pci_func.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pci_func.i, align 1
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %ext_reg_tbl.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %31, i32 0, i32 56
  %34 = ptrtoint ptr %ext_reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ext_reg_tbl.i, align 8
  %arrayidx.i = getelementptr i32, ptr %35, i32 37
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 %37
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !48
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %conv.i = zext i8 %29 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %39, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ext_reg_tbl12.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %42, i32 0, i32 56
  %45 = ptrtoint ptr %ext_reg_tbl12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ext_reg_tbl12.i, align 8
  %arrayidx13.i = getelementptr i32, ptr %46, i32 37
  %47 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %44, i32 %48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %40) #6, !srcloc !47
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #6
  %call22 = tail call i32 @qlcnic_set_default_offload_settings(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.if.end30_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else:                                          ; preds = %entry
  %call26 = tail call i32 @qlcnic_reset_npar_config(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else.if.end30_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %call31 = tail call i32 @qlcnic_83xx_get_port_info(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @qlcnic_83xx_config_vnic_buff_descriptors(ptr noundef %adapter)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qlcnic_use_msi_x to i32))
  %49 = load i32, ptr @qlcnic_use_msi_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool35.not = icmp ne i32 %49, 0
  %conv36 = zext i1 %tobool35.not to i8
  %msix_supported = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 14
  %50 = ptrtoint ptr %msix_supported to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv36, ptr %msix_supported, align 1
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %or = or i32 %52, 128
  store i32 %or, ptr %flags, align 8
  tail call fastcc void @qlcnic_83xx_enable_vnic_mode(ptr noundef %adapter)
  %fw_hal_version = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 44
  %53 = ptrtoint ptr %fw_hal_version to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw_hal_version, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %54) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ -5, %if.end30.cleanup_crit_edge ], [ -5, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_check_vnic_state(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %8)
  %cmp.not25 = icmp eq i32 %8, 16777216
  br i1 %cmp.not25, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %vnic_wait_limit = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 51, i32 9
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %9 = ptrtoint ptr %vnic_wait_limit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vnic_wait_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.end.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  %dec = add i8 %10, -1
  %11 = ptrtoint ptr %vnic_wait_limit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %dec, ptr %vnic_wait_limit, align 1
  tail call void @msleep(i32 noundef 1000) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %ext_reg_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_reg_tbl, align 8
  %arrayidx9 = getelementptr i32, ptr %15, i32 38
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %cmp.not = icmp eq i32 %18, 16777216
  br i1 %cmp.not, label %while.body.cleanup_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.critedge:                                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 4
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.critedge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end.critedge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlcnic_83xx_set_port_eswitch_status(ptr noundef %adapter, i32 noundef %func, ptr nocapture noundef %port_id) local_unnamed_addr #0 align 64 {
entry:
  %nic_info = alloca %struct.qlcnic_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %nic_info) #6
  %0 = call ptr @memset(ptr %nic_info, i32 0, i32 72)
  %conv = trunc i32 %func to i8
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %hw_ops.i = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_ops.i, align 4
  %get_nic_info.i = getelementptr inbounds %struct.qlcnic_hardware_ops, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %get_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_nic_info.i, align 4
  %call.i = call i32 %6(ptr noundef %adapter, ptr noundef nonnull %nic_info, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %capabilities = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 4
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capabilities, align 4
  %and = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %phys_port = getelementptr inbounds %struct.qlcnic_info, ptr %nic_info, i32 0, i32 2
  %9 = ptrtoint ptr %phys_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %phys_port, align 4
  %conv3 = zext i16 %10 to i32
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %port_id, align 4
  %eswitch = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 42
  %12 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eswitch, align 4
  %flags = getelementptr %struct.qlcnic_eswitch, ptr %13, i32 %conv3, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %nic_info) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_fw_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_set_eswitch_port_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_83xx_get_port_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qlcnic_83xx_config_vnic_buff_descriptors(ptr nocapture noundef %adapter) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %port_type = getelementptr inbounds %struct.qlcnic_hardware_context, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_type, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %3, label %entry.if.end12_crit_edge [
    i16 2, label %if.then
    i16 1, label %if.then7
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_rxd = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %5 = ptrtoint ptr %num_rxd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1024, ptr %num_rxd, align 2
  %max_rxd = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 10
  %6 = ptrtoint ptr %max_rxd to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2048, ptr %max_rxd, align 2
  %num_jumbo_rxd = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %7 = ptrtoint ptr %num_jumbo_rxd to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1024, ptr %num_jumbo_rxd, align 8
  %max_jumbo_rxd = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 11
  %8 = ptrtoint ptr %max_jumbo_rxd to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1024, ptr %max_jumbo_rxd, align 4
  br label %if.end12

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %num_rxd8 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 8
  %9 = ptrtoint ptr %num_rxd8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2048, ptr %num_rxd8, align 2
  %num_jumbo_rxd9 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 9
  %10 = ptrtoint ptr %num_jumbo_rxd9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 512, ptr %num_jumbo_rxd9, align 8
  %max_jumbo_rxd10 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 11
  %11 = ptrtoint ptr %max_jumbo_rxd10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 512, ptr %max_jumbo_rxd10, align 4
  %max_rxd11 = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 10
  %12 = ptrtoint ptr %max_rxd11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4096, ptr %max_rxd11, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.then, %entry.if.end12_crit_edge
  %num_txd = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 7
  %13 = ptrtoint ptr %num_txd to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1024, ptr %num_txd, align 4
  %max_rds_rings = getelementptr inbounds %struct.qlcnic_adapter, ptr %adapter, i32 0, i32 12
  %14 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %max_rds_rings, align 2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlcnic_83xx_get_minidump_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_init_pci_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_set_default_offload_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlcnic_reset_npar_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qlcnic_83xx_enable_vnic_mode(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlcnic_83xx_lock_driver(ptr noundef %adapter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !47
  tail call void @qlcnic_83xx_unlock_driver(ptr noundef %adapter) #6
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c", i32 222, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qlcnic_83xx_config_vnic_opmode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qlcnic_83xx_config_vnic_opmode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c", i32 255, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @qlcnic_83xx_check_vnic_state._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @qlcnic_83xx_check_vnic_state._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c", i32 176, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qlcnic_83xx_init_non_privileged_vnic._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @qlcnic_83xx_init_non_privileged_vnic._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c", i32 155, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qlcnic_83xx_init_privileged_vnic._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qlcnic_83xx_init_privileged_vnic._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c", i32 110, i32 4}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qlcnic_83xx_init_mgmt_vnic._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @qlcnic_83xx_init_mgmt_vnic._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c", i32 116, i32 3}
!31 = !{ptr @qlcnic_83xx_init_mgmt_vnic._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qlcnic_83xx_init_mgmt_vnic._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qlcnic/qlcnic_83xx_vnic.c", i32 137, i32 2}
!35 = !{ptr @qlcnic_83xx_init_mgmt_vnic._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qlcnic_83xx_init_mgmt_vnic._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2157761975}
!47 = !{i64 5052500}
!48 = !{i64 5052918}
!49 = !{i64 2157763088}
!50 = !{i64 2157763559}
!51 = !{i64 2157774218}
!52 = !{i8 0, i8 2}
!53 = !{i64 2157776760}
!54 = !{i64 2157777535}
!55 = !{i64 2157761334}
