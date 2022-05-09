; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_controlq.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_controlq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ice_hw = type { ptr, ptr, ptr, ptr, i32, i64, i32, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, [9 x i16], %struct.list_head, [768 x ptr], i8, i8, %struct.ice_bus_info, %struct.ice_flash_info, %struct.ice_hw_dev_caps, %struct.ice_hw_func_caps, ptr, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, %struct.ice_ctl_q_info, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ice_fw_log_cfg, i8, i8, i8, %struct.ice_pkg_ver, i32, [32 x i8], i8, %struct.ice_pkg_ver, [32 x i8], %struct.ice_pkg_ver, [28 x i8], ptr, ptr, i32, %struct.mutex, %struct.ice_tunnel_table, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, [5 x %struct.ice_blk_info], [5 x %struct.mutex], [5 x %struct.list_head], i32, %struct.mutex, %struct.list_head, [28 x i16], ptr, [1 x i32], %struct.mutex, %struct.list_head, %struct.ice_mbx_snapshot, [32 x i32], i16 }
%struct.ice_bus_info = type { i16, i8 }
%struct.ice_flash_info = type { %struct.ice_orom_info, %struct.ice_nvm_info, %struct.ice_netlist_info, %struct.ice_bank_info, i16, i32, i8 }
%struct.ice_orom_info = type { i8, i8, i16 }
%struct.ice_nvm_info = type { i32, i8, i8 }
%struct.ice_netlist_info = type { i32, i32, i32, i32, i32, i16 }
%struct.ice_bank_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, %struct.ice_ts_dev_info, i32 }
%struct.ice_hw_common_caps = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_ts_dev_info = type { i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ice_hw_func_caps = type { %struct.ice_hw_common_caps, i32, i32, i32, i32, i32, %struct.ice_ts_func_info }
%struct.ice_ts_func_info = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ice_fw_log_cfg = type { i8, i8, [27 x %struct.ice_fw_log_evnt] }
%struct.ice_fw_log_evnt = type { i8 }
%struct.ice_pkg_ver = type { i8, i8, i8, i8 }
%struct.ice_tunnel_table = type { [16 x %struct.ice_tunnel_entry], i16, [3 x i16] }
%struct.ice_tunnel_entry = type { i32, i16, i16, ptr, i8 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.ice_blk_info = type { %struct.ice_xlt1, %struct.ice_xlt2, %struct.ice_prof_tcam, %struct.ice_prof_redir, %struct.ice_es, %struct.ice_masks, i8, i8 }
%struct.ice_xlt1 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_xlt2 = type { ptr, ptr, ptr, i32, i16 }
%struct.ice_prof_tcam = type { i32, i16, i16, ptr, i8 }
%struct.ice_prof_redir = type { ptr, i32, i16 }
%struct.ice_es = type { i32, i16, i16, ptr, ptr, %struct.list_head, ptr, %struct.mutex, ptr, i8 }
%struct.ice_masks = type { %struct.mutex, i16, i16, [32 x %struct.ice_mask] }
%struct.ice_mask = type { i16, i16, i16, i8 }
%struct.ice_mbx_snapshot = type { %struct.ice_mbx_snap_buffer_data, %struct.ice_mbx_vf_counter }
%struct.ice_mbx_snap_buffer_data = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.ice_mbx_vf_counter = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.203, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
%struct.ice_sq_cd = type { ptr }
%struct.ice_rq_event_info = type { %struct.ice_aq_desc, i16, i16, ptr }

@ice_init_all_ctrlq.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ice_init_all_ctrlq\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/ice/ice_controlq.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Retry Admin Queue init due to FW critical error\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ice_sq_send_cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Control Send queue not initialized.\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid buffer size for Control Send queue: %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"head overrun at %d in the Control Send Queue ring\0A\00", [45 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error: Control Send Queue is full.\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ATQ: Control Send queue desc and buffer:\0A\00", [54 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ice_sq_send_cmd.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Return len %d > than buf len %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.11, i8 1, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Control Send Queue command 0x%04X completed with error 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.12, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ATQ: desc and buffer writeback:\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.13, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Critical FW error.\0A\00", [44 x i8] zeroinitializer }, align 32
@ice_sq_send_cmd.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.14, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Control Send Queue Writeback timeout.\0A\00", [57 x i8] zeroinitializer }, align 32
@ice_clean_rq_elem.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_clean_rq_elem\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Control Receive queue not initialized.\0A\00", [56 x i8] zeroinitializer }, align 32
@ice_clean_rq_elem.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Control Receive Queue Event 0x%04X received with error 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_clean_rq_elem.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ARQ: desc and buffer:\0A\00", [41 x i8] zeroinitializer }, align 32
@ice_aq_ver_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 517, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"The driver for the device stopped because the NVM image is newer than expected. You must install the most recent version of the network driver.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice_aq_ver_check\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice_aq_ver_check._entry_ptr = internal global ptr @ice_aq_ver_check._entry, section ".printk_index", align 4
@ice_aq_ver_check._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 522, ptr @.str.25, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [146 x i8], [46 x i8] } { [146 x i8] c"The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ice_aq_ver_check._entry_ptr.26 = internal global ptr @ice_aq_ver_check._entry.23, section ".printk_index", align 4
@ice_aq_ver_check._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 525, ptr @.str.25, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_aq_ver_check._entry_ptr.29 = internal global ptr @ice_aq_ver_check._entry.27, section ".printk_index", align 4
@ice_aq_ver_check._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 529, ptr @.str.25, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@ice_aq_ver_check._entry_ptr.31 = internal global ptr @ice_aq_ver_check._entry.30, section ".printk_index", align 4
@ice_init_ctrlq_locks.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cq->sq_lock\00", [19 x i8] zeroinitializer }, align 32
@ice_init_ctrlq_locks.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cq->rq_lock\00", [19 x i8] zeroinitializer }, align 32
@ice_clean_sq.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_clean_sq\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntc %d head %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@ice_debug_cq.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_debug_cq\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"CQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_debug_cq.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09cookie (h,l) 0x%08X 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_debug_cq.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 -26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09param (0,1)  0x%08X 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_debug_cq.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.41, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09addr (h,l)   0x%08X 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_debug_cq.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.42, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Buffer:\0A\00", [23 x i8] zeroinitializer }, align 32
@ice_debug_cq.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.43, i8 0, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ice \00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 765, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 983, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 995, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1008, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1026, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1054, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1079, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1088, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1101, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1114, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1117, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1174, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1196, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1205, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 516, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 521, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 524, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 528, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 793, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 794, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 873, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 911, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 915, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 918, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 921, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 925, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [49 x i8] c"../drivers/net/ethernet/intel/ice/ice_controlq.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 929, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @ice_aq_ver_check._entry, ptr @ice_aq_ver_check._entry.23, ptr @ice_aq_ver_check._entry.27, ptr @ice_aq_ver_check._entry.30, ptr @ice_aq_ver_check._entry_ptr, ptr @ice_aq_ver_check._entry_ptr.26, ptr @ice_aq_ver_check._entry_ptr.29, ptr @ice_aq_ver_check._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @ice_init_ctrlq_locks.__key, ptr @.str.32, ptr @ice_init_ctrlq_locks.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_aq_ver_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_aq_ver_check._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 146, i32 192, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_aq_ver_check._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_aq_ver_check._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_ctrlq_locks.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_init_ctrlq_locks.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ice_check_sq_alive(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %len_mask = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 12
  %2 = ptrtoint ptr %len_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true3

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true3:                                   ; preds = %land.lhs.true
  %len_ena_mask = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 13
  %4 = ptrtoint ptr %len_ena_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len_ena_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true3.return_crit_edge, label %if.then

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !105
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %10 = ptrtoint ptr %len_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len_mask, align 4
  %12 = ptrtoint ptr %len_ena_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len_ena_mask, align 4
  %or = or i32 %13, %11
  %and = and i32 %or, %9
  %num_sq_entries = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 5
  %14 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_sq_entries, align 2
  %conv = zext i16 %15 to i32
  %or15 = or i32 %13, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %or15)
  %cmp = icmp eq i32 %and, %or15
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true3.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp, %if.then ], [ false, %land.lhs.true3.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ice_is_sbq_supported(ptr nocapture noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_type = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %mac_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ice_get_sbq(ptr noundef readonly %hw) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_type.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  %sbq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31
  %adminq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30
  %retval.0 = select i1 %cmp.i, ptr %sbq, ptr %adminq
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_shutdown_all_ctrlq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adminq.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30
  %len.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 9
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.ice_shutdown_ctrlq.exit_crit_edge, label %land.lhs.true.i.i

entry.ice_shutdown_ctrlq.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

land.lhs.true.i.i:                                ; preds = %entry
  %len_mask.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 12
  %2 = ptrtoint ptr %len_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.ice_shutdown_ctrlq.exit_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.ice_shutdown_ctrlq.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %len_ena_mask.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 13
  %4 = ptrtoint ptr %len_ena_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len_ena_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true3.i.i.ice_shutdown_ctrlq.exit_crit_edge, label %ice_check_sq_alive.exit.i

land.lhs.true3.i.i.ice_shutdown_ctrlq.exit_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

ice_check_sq_alive.exit.i:                        ; preds = %land.lhs.true3.i.i
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !105
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %10 = ptrtoint ptr %len_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len_mask.i.i, align 4
  %12 = ptrtoint ptr %len_ena_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len_ena_mask.i.i, align 4
  %or.i.i = or i32 %13, %11
  %and.i.i = and i32 %or.i.i, %9
  %num_sq_entries.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 5
  %14 = ptrtoint ptr %num_sq_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num_sq_entries.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %or15.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %or15.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, %or15.i.i
  br i1 %cmp.i.i, label %if.then.i, label %ice_check_sq_alive.exit.i.ice_shutdown_ctrlq.exit_crit_edge

ice_check_sq_alive.exit.i.ice_shutdown_ctrlq.exit_crit_edge: ; preds = %ice_check_sq_alive.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

if.then.i:                                        ; preds = %ice_check_sq_alive.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @ice_aq_q_shutdown(ptr noundef %hw, i1 noundef zeroext true) #6
  br label %ice_shutdown_ctrlq.exit

ice_shutdown_ctrlq.exit:                          ; preds = %if.then.i, %ice_check_sq_alive.exit.i.ice_shutdown_ctrlq.exit_crit_edge, %land.lhs.true3.i.i.ice_shutdown_ctrlq.exit_crit_edge, %land.lhs.true.i.i.ice_shutdown_ctrlq.exit_crit_edge, %entry.ice_shutdown_ctrlq.exit_crit_edge
  tail call fastcc void @ice_shutdown_sq(ptr noundef %hw, ptr noundef %adminq.i) #6
  tail call fastcc void @ice_shutdown_rq(ptr noundef %hw, ptr noundef %adminq.i) #6
  %mac_type.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %16 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %if.then, label %ice_shutdown_ctrlq.exit.if.end_crit_edge

ice_shutdown_ctrlq.exit.if.end_crit_edge:         ; preds = %ice_shutdown_ctrlq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ice_shutdown_ctrlq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sbq.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31
  tail call fastcc void @ice_shutdown_sq(ptr noundef %hw, ptr noundef %sbq.i) #6
  tail call fastcc void @ice_shutdown_rq(ptr noundef %hw, ptr noundef %sbq.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %ice_shutdown_ctrlq.exit.if.end_crit_edge
  %mailboxq.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32
  tail call fastcc void @ice_shutdown_sq(ptr noundef %hw, ptr noundef %mailboxq.i) #6
  tail call fastcc void @ice_shutdown_rq(ptr noundef %hw, ptr noundef %mailboxq.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_all_ctrlq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adminq.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30
  %api_maj_ver.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 34
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  %len.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 9
  %len_mask.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 12
  %len_ena_mask.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 13
  %num_sq_entries.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 5
  br label %do.body

do.body:                                          ; preds = %ice_shutdown_ctrlq.exit.do.body_crit_edge, %entry
  %retry.0 = phi i32 [ 0, %entry ], [ %inc, %ice_shutdown_ctrlq.exit.do.body_crit_edge ]
  %call = tail call fastcc i32 @ice_init_ctrlq(ptr noundef %hw, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  %call.i = tail call i32 @ice_aq_get_fw_ver(ptr noundef %hw, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ice_init_check_adminq.exit

if.end.i:                                         ; preds = %if.end
  %0 = ptrtoint ptr %api_maj_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %api_maj_ver.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i.i = icmp ugt i8 %1, 1
  br i1 %cmp.i.i, label %ice_init_check_adminq.exit.thread44, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp4.i.i = icmp eq i8 %1, 1
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.else.i.i.if.end17.sink.split_crit_edge

if.else.i.i.if.end17.sink.split_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.then6.i.i:                                     ; preds = %if.else.i.i
  %api_min_ver.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 35
  %2 = ptrtoint ptr %api_min_ver.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %api_min_ver.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp8.i.i = icmp ugt i8 %3, 7
  br i1 %cmp8.i.i, label %if.then6.i.i.if.end17.sink.split_crit_edge, label %if.else18.i.i

if.then6.i.i.if.end17.sink.split_crit_edge:       ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.else18.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp21.i.i = icmp ult i8 %3, 3
  br i1 %cmp21.i.i, label %if.else18.i.i.if.end17.sink.split_crit_edge, label %if.else18.i.i.if.end17_crit_edge

if.else18.i.i.if.end17_crit_edge:                 ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.else18.i.i.if.end17.sink.split_crit_edge:      ; preds = %if.else18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

ice_init_check_adminq.exit.thread44:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19) #9
  tail call fastcc void @ice_shutdown_rq(ptr noundef %hw, ptr noundef %adminq.i) #6
  tail call fastcc void @ice_shutdown_sq(ptr noundef %hw, ptr noundef %adminq.i) #6
  br label %do.body4

ice_init_check_adminq.exit:                       ; preds = %if.end
  tail call fastcc void @ice_shutdown_rq(ptr noundef %hw, ptr noundef %adminq.i) #6
  tail call fastcc void @ice_shutdown_sq(ptr noundef %hw, ptr noundef %adminq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i)
  %cond = icmp eq i32 %call.i, -5
  br i1 %cond, label %ice_init_check_adminq.exit.do.body4_crit_edge, label %ice_init_check_adminq.exit.cleanup_crit_edge

ice_init_check_adminq.exit.cleanup_crit_edge:     ; preds = %ice_init_check_adminq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ice_init_check_adminq.exit.do.body4_crit_edge:    ; preds = %ice_init_check_adminq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.body4:                                         ; preds = %ice_init_check_adminq.exit.do.body4_crit_edge, %ice_init_check_adminq.exit.thread44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_all_ctrlq.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_all_ctrlq, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !107

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_all_ctrlq.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body4
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.end.ice_shutdown_ctrlq.exit_crit_edge, label %land.lhs.true.i.i

do.end.ice_shutdown_ctrlq.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

land.lhs.true.i.i:                                ; preds = %do.end
  %10 = ptrtoint ptr %len_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.ice_shutdown_ctrlq.exit_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.ice_shutdown_ctrlq.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %12 = ptrtoint ptr %len_ena_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len_ena_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true3.i.i.ice_shutdown_ctrlq.exit_crit_edge, label %ice_check_sq_alive.exit.i

land.lhs.true3.i.i.ice_shutdown_ctrlq.exit_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

ice_check_sq_alive.exit.i:                        ; preds = %land.lhs.true3.i.i
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr.i.i41 = getelementptr i8, ptr %15, i32 %9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #6, !srcloc !105
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %18 = ptrtoint ptr %len_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len_mask.i.i, align 4
  %20 = ptrtoint ptr %len_ena_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len_ena_mask.i.i, align 4
  %or.i.i = or i32 %21, %19
  %and.i.i = and i32 %or.i.i, %17
  %22 = ptrtoint ptr %num_sq_entries.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_sq_entries.i.i, align 2
  %conv.i.i = zext i16 %23 to i32
  %or15.i.i = or i32 %21, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %or15.i.i)
  %cmp.i.i42 = icmp eq i32 %and.i.i, %or15.i.i
  br i1 %cmp.i.i42, label %if.then.i, label %ice_check_sq_alive.exit.i.ice_shutdown_ctrlq.exit_crit_edge

ice_check_sq_alive.exit.i.ice_shutdown_ctrlq.exit_crit_edge: ; preds = %ice_check_sq_alive.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_shutdown_ctrlq.exit

if.then.i:                                        ; preds = %ice_check_sq_alive.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @ice_aq_q_shutdown(ptr noundef %hw, i1 noundef zeroext true) #6
  br label %ice_shutdown_ctrlq.exit

ice_shutdown_ctrlq.exit:                          ; preds = %if.then.i, %ice_check_sq_alive.exit.i.ice_shutdown_ctrlq.exit_crit_edge, %land.lhs.true3.i.i.ice_shutdown_ctrlq.exit_crit_edge, %land.lhs.true.i.i.ice_shutdown_ctrlq.exit_crit_edge, %do.end.ice_shutdown_ctrlq.exit_crit_edge
  tail call fastcc void @ice_shutdown_sq(ptr noundef %hw, ptr noundef %adminq.i) #6
  tail call fastcc void @ice_shutdown_rq(ptr noundef %hw, ptr noundef %adminq.i) #6
  tail call void @msleep(i32 noundef 100) #6
  %inc = add nuw nsw i32 %retry.0, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %ice_shutdown_ctrlq.exit.cleanup_crit_edge, label %ice_shutdown_ctrlq.exit.do.body_crit_edge

ice_shutdown_ctrlq.exit.do.body_crit_edge:        ; preds = %ice_shutdown_ctrlq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

ice_shutdown_ctrlq.exit.cleanup_crit_edge:        ; preds = %ice_shutdown_ctrlq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.sink.split:                              ; preds = %if.else18.i.i.if.end17.sink.split_crit_edge, %if.then6.i.i.if.end17.sink.split_crit_edge, %if.else.i.i.if.end17.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.24, %if.then6.i.i.if.end17.sink.split_crit_edge ], [ @.str.28, %if.else18.i.i.if.end17.sink.split_crit_edge ], [ @.str.28, %if.else.i.i.if.end17.sink.split_crit_edge ]
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 8
  %dev39.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i.i, ptr noundef nonnull %.str.28.sink) #9
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else18.i.i.if.end17_crit_edge
  %mac_type.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %26 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  br i1 %cmp.i, label %if.then19, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %call20 = tail call fastcc i32 @ice_init_ctrlq(ptr noundef %hw, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %call25 = tail call fastcc i32 @ice_init_ctrlq(ptr noundef %hw, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then19.cleanup_crit_edge, %ice_shutdown_ctrlq.exit.cleanup_crit_edge, %ice_init_check_adminq.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ %call20, %if.then19.cleanup_crit_edge ], [ -5, %ice_shutdown_ctrlq.exit.cleanup_crit_edge ], [ %call.i, %ice_init_check_adminq.exit.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_init_ctrlq(ptr noundef %hw, i32 noundef %q_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %q_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %q_type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %head.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 7
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 525056, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 8
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 525312, ptr %tail.i, align 4
  %len.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 9
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 524800, ptr %len.i, align 4
  %bah.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 10
  %4 = ptrtoint ptr %bah.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 524544, ptr %bah.i, align 4
  %bal.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 11
  %5 = ptrtoint ptr %bal.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 524288, ptr %bal.i, align 4
  %len_mask.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 12
  %6 = ptrtoint ptr %len_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1023, ptr %len_mask.i, align 4
  %len_ena_mask.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 13
  %7 = ptrtoint ptr %len_ena_mask.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2147483648, ptr %len_ena_mask.i, align 4
  %len_crit_mask.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 14
  %8 = ptrtoint ptr %len_crit_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1073741824, ptr %len_crit_mask.i, align 4
  %head_mask.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 2, i32 15
  %9 = ptrtoint ptr %head_mask.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1023, ptr %head_mask.i, align 4
  %head9.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 7
  %10 = ptrtoint ptr %head9.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 525184, ptr %head9.i, align 4
  %tail11.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 8
  %11 = ptrtoint ptr %tail11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 525440, ptr %tail11.i, align 4
  %len13.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 9
  %12 = ptrtoint ptr %len13.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 524928, ptr %len13.i, align 4
  %bah15.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 10
  %13 = ptrtoint ptr %bah15.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 524672, ptr %bah15.i, align 4
  %bal17.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 11
  %14 = ptrtoint ptr %bal17.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 524416, ptr %bal17.i, align 4
  %len_mask19.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 12
  %15 = ptrtoint ptr %len_mask19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1023, ptr %len_mask19.i, align 4
  %len_ena_mask21.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 13
  %16 = ptrtoint ptr %len_ena_mask21.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2147483648, ptr %len_ena_mask21.i, align 4
  %len_crit_mask23.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 14
  %17 = ptrtoint ptr %len_crit_mask23.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1073741824, ptr %len_crit_mask23.i, align 4
  %head_mask25.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 1, i32 15
  %18 = ptrtoint ptr %head_mask25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1023, ptr %head_mask25.i, align 4
  %adminq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %head.i37 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 7
  %19 = ptrtoint ptr %head.i37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2293120, ptr %head.i37, align 4
  %tail.i38 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 8
  %20 = ptrtoint ptr %tail.i38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2293248, ptr %tail.i38, align 4
  %len.i39 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 9
  %21 = ptrtoint ptr %len.i39 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2292992, ptr %len.i39, align 4
  %bah.i40 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 10
  %22 = ptrtoint ptr %bah.i40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2292864, ptr %bah.i40, align 4
  %bal.i41 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 11
  %23 = ptrtoint ptr %bal.i41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2292736, ptr %bal.i41, align 4
  %len_mask.i42 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 12
  %24 = ptrtoint ptr %len_mask.i42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1023, ptr %len_mask.i42, align 4
  %len_ena_mask.i43 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 13
  %25 = ptrtoint ptr %len_ena_mask.i43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2147483648, ptr %len_ena_mask.i43, align 4
  %len_crit_mask.i44 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 14
  %26 = ptrtoint ptr %len_crit_mask.i44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1073741824, ptr %len_crit_mask.i44, align 4
  %head_mask.i45 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 2, i32 15
  %27 = ptrtoint ptr %head_mask.i45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1023, ptr %head_mask.i45, align 4
  %head9.i46 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 7
  %28 = ptrtoint ptr %head9.i46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2293760, ptr %head9.i46, align 4
  %tail11.i47 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 8
  %29 = ptrtoint ptr %tail11.i47 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2293888, ptr %tail11.i47, align 4
  %len13.i48 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 9
  %30 = ptrtoint ptr %len13.i48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2293632, ptr %len13.i48, align 4
  %bah15.i49 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 10
  %31 = ptrtoint ptr %bah15.i49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2293504, ptr %bah15.i49, align 4
  %bal17.i50 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 11
  %32 = ptrtoint ptr %bal17.i50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2293376, ptr %bal17.i50, align 4
  %len_mask19.i51 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 12
  %33 = ptrtoint ptr %len_mask19.i51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1023, ptr %len_mask19.i51, align 4
  %len_ena_mask21.i52 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 13
  %34 = ptrtoint ptr %len_ena_mask21.i52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -2147483648, ptr %len_ena_mask21.i52, align 4
  %len_crit_mask23.i53 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 14
  %35 = ptrtoint ptr %len_crit_mask23.i53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1073741824, ptr %len_crit_mask23.i53, align 4
  %head_mask25.i54 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 1, i32 15
  %36 = ptrtoint ptr %head_mask25.i54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1023, ptr %head_mask25.i54, align 4
  %sbq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %head.i55 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 7
  %37 = ptrtoint ptr %head.i55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2286208, ptr %head.i55, align 4
  %tail.i56 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 8
  %38 = ptrtoint ptr %tail.i56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2286336, ptr %tail.i56, align 4
  %len.i57 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 9
  %39 = ptrtoint ptr %len.i57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2286080, ptr %len.i57, align 4
  %bah.i58 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 10
  %40 = ptrtoint ptr %bah.i58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2285952, ptr %bah.i58, align 4
  %bal.i59 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 11
  %41 = ptrtoint ptr %bal.i59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2285824, ptr %bal.i59, align 4
  %len_mask.i60 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 12
  %42 = ptrtoint ptr %len_mask.i60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1023, ptr %len_mask.i60, align 4
  %len_ena_mask.i61 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 13
  %43 = ptrtoint ptr %len_ena_mask.i61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -2147483648, ptr %len_ena_mask.i61, align 4
  %len_crit_mask.i62 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 14
  %44 = ptrtoint ptr %len_crit_mask.i62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1073741824, ptr %len_crit_mask.i62, align 4
  %head_mask.i63 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 2, i32 15
  %45 = ptrtoint ptr %head_mask.i63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1023, ptr %head_mask.i63, align 4
  %head9.i64 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 7
  %46 = ptrtoint ptr %head9.i64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2286848, ptr %head9.i64, align 4
  %tail11.i65 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 8
  %47 = ptrtoint ptr %tail11.i65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2286976, ptr %tail11.i65, align 4
  %len13.i66 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 9
  %48 = ptrtoint ptr %len13.i66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2286720, ptr %len13.i66, align 4
  %bah15.i67 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 10
  %49 = ptrtoint ptr %bah15.i67 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2286592, ptr %bah15.i67, align 4
  %bal17.i68 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 11
  %50 = ptrtoint ptr %bal17.i68 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2286464, ptr %bal17.i68, align 4
  %len_mask19.i69 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 12
  %51 = ptrtoint ptr %len_mask19.i69 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1023, ptr %len_mask19.i69, align 4
  %len_ena_mask21.i70 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 13
  %52 = ptrtoint ptr %len_ena_mask21.i70 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -2147483648, ptr %len_ena_mask21.i70, align 4
  %len_crit_mask23.i71 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 14
  %53 = ptrtoint ptr %len_crit_mask23.i71 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1073741824, ptr %len_crit_mask23.i71, align 4
  %head_mask25.i72 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 1, i32 15
  %54 = ptrtoint ptr %head_mask25.i72 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1023, ptr %head_mask25.i72, align 4
  %mailboxq = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %cq.0 = phi ptr [ %mailboxq, %sw.bb2 ], [ %sbq, %sw.bb1 ], [ %adminq, %sw.bb ]
  %55 = ptrtoint ptr %cq.0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %q_type, ptr %cq.0, align 4
  %num_rq_entries = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 4
  %56 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_rq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not = icmp eq i16 %57, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %num_sq_entries = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 5
  %58 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %num_sq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool3.not = icmp eq i16 %59, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %rq_buf_size = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 6
  %60 = ptrtoint ptr %rq_buf_size to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool5.not = icmp eq i16 %61, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %sq_buf_size = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 7
  %62 = ptrtoint ptr %sq_buf_size to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %sq_buf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool7.not = icmp eq i16 %63, 0
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %sq_cmd_timeout = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 3
  %64 = ptrtoint ptr %sq_cmd_timeout to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10000, ptr %sq_cmd_timeout, align 4
  %sq.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 4
  %65 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp.not.i = icmp eq i16 %66, 0
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end
  %next_to_use.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 5
  %67 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %next_to_use.i, align 2
  %next_to_clean.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 6
  %68 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %next_to_clean.i, align 4
  %conv.i.i = zext i16 %59 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 5
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %desc_buf.i.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 1
  %pa.i.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 1, i32 1
  %call.i.i.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %mul.i.i, ptr noundef %pa.i.i, i32 noundef 3520, i32 noundef 0) #6
  %71 = ptrtoint ptr %desc_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i.i.i, ptr %desc_buf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end4.i.cleanup_crit_edge, label %if.end.i.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end4.i
  %size8.i.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 1, i32 2
  %72 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul.i.i, ptr %size8.i.i, align 4
  %73 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %num_sq_entries, align 2
  %conv15.i.i = zext i16 %74 to i32
  %75 = shl nuw nsw i32 %conv15.i.i, 2
  %76 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i.i, align 8
  %dev13.i.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev13.i.i, i32 noundef %75, i32 noundef 3520) #6
  %cmd_buf.i.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %cmd_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call5.i.i.i.i, ptr %cmd_buf.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %if.end9.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i.i, align 8
  %dev26.i.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %81 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size8.i.i, align 4
  %83 = ptrtoint ptr %desc_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc_buf.i.i, align 4
  %85 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pa.i.i, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev26.i.i, i32 noundef %82, ptr noundef %84, i32 noundef %86) #6
  %87 = ptrtoint ptr %desc_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %desc_buf.i.i, align 4
  %88 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %pa.i.i, align 4
  %89 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %size8.i.i, align 4
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i.i
  %90 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %num_sq_entries, align 2
  %conv.i116.i = zext i16 %91 to i32
  %92 = mul nuw nsw i32 %conv.i116.i, 12
  %93 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i117.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %call5.i.i.i118.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i117.i, i32 noundef %92, i32 noundef 3520) #6
  %95 = ptrtoint ptr %sq.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call5.i.i.i118.i, ptr %sq.i, align 4
  %tobool.not.i119.i = icmp eq ptr %call5.i.i.i118.i, null
  br i1 %tobool.not.i119.i, label %if.end9.i.do.body.i_crit_edge, label %if.end.i120.i

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i120.i:                                    ; preds = %if.end9.i
  %r.i.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 3
  %96 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call5.i.i.i118.i, ptr %r.i.i, align 4
  %97 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %num_sq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp112.not.i.i = icmp eq i16 %98, 0
  br i1 %cmp112.not.i.i, label %if.end.i120.i.if.end13.i_crit_edge, label %if.end.i120.i.for.body.i.i_crit_edge

if.end.i120.i.for.body.i.i_crit_edge:             ; preds = %if.end.i120.i
  br label %for.body.i.i

if.end.i120.i.if.end13.i_crit_edge:               ; preds = %if.end.i120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i120.i.for.body.i.i_crit_edge
  %i.0113.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i120.i.for.body.i.i_crit_edge ]
  %99 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %r.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ice_dma_mem, ptr %100, i32 %i.0113.i.i
  %101 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i.i, align 8
  %dev15.i.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %103 = ptrtoint ptr %sq_buf_size to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %sq_buf_size, align 2
  %conv16.i.i = zext i16 %104 to i32
  %pa.i121.i = getelementptr %struct.ice_dma_mem, ptr %100, i32 %i.0113.i.i, i32 1
  %call.i.i122.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev15.i.i, i32 noundef %conv16.i.i, ptr noundef %pa.i121.i, i32 noundef 3520, i32 noundef 0) #6
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i.i122.i, ptr %arrayidx.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %call.i.i122.i, null
  br i1 %tobool19.not.i.i, label %for.cond24.preheader.i.i, label %for.inc.i.i

for.cond24.preheader.i.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0113.i.i)
  %cmp25115.not.i.i = icmp eq i32 %i.0113.i.i, 0
  br i1 %cmp25115.not.i.i, label %for.cond24.preheader.i.i.for.end59.i.i_crit_edge, label %for.cond24.preheader.i.i.for.body27.i.i_crit_edge

for.cond24.preheader.i.i.for.body27.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  br label %for.body27.i.i

for.cond24.preheader.i.i.for.end59.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %106 = ptrtoint ptr %sq_buf_size to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %sq_buf_size, align 2
  %conv23.i.i = zext i16 %107 to i32
  %size.i.i = getelementptr %struct.ice_dma_mem, ptr %100, i32 %i.0113.i.i, i32 2
  %108 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv23.i.i, ptr %size.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0113.i.i, 1
  %109 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %num_sq_entries, align 2
  %conv7.i.i = zext i16 %110 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv7.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end13.i_crit_edge

for.inc.i.i.if.end13.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body27.i.i:                                   ; preds = %for.body27.i.i.for.body27.i.i_crit_edge, %for.cond24.preheader.i.i.for.body27.i.i_crit_edge
  %i.1116.in.i.i = phi i32 [ %i.1116.i.i, %for.body27.i.i.for.body27.i.i_crit_edge ], [ %i.0113.i.i, %for.cond24.preheader.i.i.for.body27.i.i_crit_edge ]
  %i.1116.i.i = add nsw i32 %i.1116.in.i.i, -1
  %111 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i.i, align 8
  %dev32.i.i = getelementptr inbounds %struct.pci_dev, ptr %112, i32 0, i32 44
  %113 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %r.i.i, align 4
  %arrayidx35.i.i = getelementptr %struct.ice_dma_mem, ptr %114, i32 %i.1116.i.i
  %size36.i.i = getelementptr %struct.ice_dma_mem, ptr %114, i32 %i.1116.i.i, i32 2
  %115 = ptrtoint ptr %size36.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size36.i.i, align 4
  %117 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx35.i.i, align 4
  %pa44.i.i = getelementptr %struct.ice_dma_mem, ptr %114, i32 %i.1116.i.i, i32 1
  %119 = ptrtoint ptr %pa44.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pa44.i.i, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev32.i.i, i32 noundef %116, ptr noundef %118, i32 noundef %120) #6
  %121 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %r.i.i, align 4
  %arrayidx47.i.i = getelementptr %struct.ice_dma_mem, ptr %122, i32 %i.1116.i.i
  %123 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %arrayidx47.i.i, align 4
  %124 = load ptr, ptr %r.i.i, align 4
  %pa52.i.i = getelementptr %struct.ice_dma_mem, ptr %124, i32 %i.1116.i.i, i32 1
  %125 = ptrtoint ptr %pa52.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %pa52.i.i, align 4
  %126 = load ptr, ptr %r.i.i, align 4
  %size56.i.i = getelementptr %struct.ice_dma_mem, ptr %126, i32 %i.1116.i.i, i32 2
  %127 = ptrtoint ptr %size56.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %size56.i.i, align 4
  %cmp25.i.i = icmp sgt i32 %i.1116.in.i.i, 1
  br i1 %cmp25.i.i, label %for.body27.i.i.for.body27.i.i_crit_edge, label %for.body27.i.i.for.end59.i.i_crit_edge

for.body27.i.i.for.end59.i.i_crit_edge:           ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59.i.i

for.body27.i.i.for.body27.i.i_crit_edge:          ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27.i.i

for.end59.i.i:                                    ; preds = %for.body27.i.i.for.end59.i.i_crit_edge, %for.cond24.preheader.i.i.for.end59.i.i_crit_edge
  %128 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %r.i.i, align 4
  %129 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i.i, align 8
  %dev66.i.i = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  %131 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sq.i, align 4
  tail call void @devm_kfree(ptr noundef %dev66.i.i, ptr noundef %132) #6
  %133 = ptrtoint ptr %sq.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %sq.i, align 4
  br label %do.body.i

if.end13.i:                                       ; preds = %for.inc.i.i.if.end13.i_crit_edge, %if.end.i120.i.if.end13.i_crit_edge
  %134 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %num_sq_entries, align 2
  %call.i.i = tail call fastcc i32 @ice_cfg_cq_regs(ptr noundef %hw, ptr noundef %sq.i, i16 noundef zeroext %135) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not.i, label %ice_init_sq.exit.thread140, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ice_init_sq.exit.thread140:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %num_sq_entries, align 2
  %138 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %count.i, align 4
  br label %if.end10

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %for.end59.i.i, %if.end9.i.do.body.i_crit_edge
  %ret_code.0.i = phi i32 [ %call.i.i, %if.end13.i.do.body.i_crit_edge ], [ -12, %for.end59.i.i ], [ -12, %if.end9.i.do.body.i_crit_edge ]
  %r.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 2, i32 3
  %139 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %r.i, align 4
  %tobool22.not.i = icmp eq ptr %140, null
  br i1 %tobool22.not.i, label %do.body.i.if.end55.i_crit_edge, label %for.cond.preheader.i

do.body.i.if.end55.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

for.cond.preheader.i:                             ; preds = %do.body.i
  %141 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %num_sq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %142)
  %cmp26137.not.i = icmp eq i16 %142, 0
  br i1 %cmp26137.not.i, label %for.cond.preheader.i.if.end55.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end55.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0138.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %143 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %r.i, align 4
  %pa.i = getelementptr %struct.ice_dma_mem, ptr %144, i32 %i.0138.i, i32 1
  %145 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %pa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool30.not.i = icmp eq i32 %146, 0
  br i1 %tobool30.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then31.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then31.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.ice_dma_mem, ptr %144, i32 %i.0138.i
  %147 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  %size.i = getelementptr %struct.ice_dma_mem, ptr %144, i32 %i.0138.i, i32 2
  %149 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %size.i, align 4
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev.i, i32 noundef %150, ptr noundef %152, i32 noundef %146) #6
  %153 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %r.i, align 4
  %arrayidx44.i = getelementptr %struct.ice_dma_mem, ptr %154, i32 %i.0138.i
  %155 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %arrayidx44.i, align 4
  %156 = load ptr, ptr %r.i, align 4
  %pa49.i = getelementptr %struct.ice_dma_mem, ptr %156, i32 %i.0138.i, i32 1
  %157 = ptrtoint ptr %pa49.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %pa49.i, align 4
  %158 = load ptr, ptr %r.i, align 4
  %size53.i = getelementptr %struct.ice_dma_mem, ptr %158, i32 %i.0138.i, i32 2
  %159 = ptrtoint ptr %size53.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %size53.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then31.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0138.i, 1
  %160 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %num_sq_entries, align 2
  %conv25.i = zext i16 %161 to i32
  %cmp26.i = icmp ult i32 %inc.i, %conv25.i
  br i1 %cmp26.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end55.i_crit_edge

for.inc.i.if.end55.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end55.i:                                       ; preds = %for.inc.i.if.end55.i_crit_edge, %for.cond.preheader.i.if.end55.i_crit_edge, %do.body.i.if.end55.i_crit_edge
  %162 = ptrtoint ptr %cmd_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cmd_buf.i.i, align 4
  %tobool57.not.i = icmp eq ptr %163, null
  br i1 %tobool57.not.i, label %if.end55.i.ice_init_sq.exit_crit_edge, label %if.then58.i

if.end55.i.ice_init_sq.exit_crit_edge:            ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_init_sq.exit

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %add.ptr.i.i, align 8
  %dev63.i = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev63.i, ptr noundef nonnull %163) #6
  br label %ice_init_sq.exit

ice_init_sq.exit:                                 ; preds = %if.then58.i, %if.end55.i.ice_init_sq.exit_crit_edge
  %166 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i.i, align 8
  %dev71.i = getelementptr inbounds %struct.pci_dev, ptr %167, i32 0, i32 44
  %168 = ptrtoint ptr %sq.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sq.i, align 4
  tail call void @devm_kfree(ptr noundef %dev71.i, ptr noundef %169) #6
  %170 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i127.i = getelementptr inbounds %struct.pci_dev, ptr %171, i32 0, i32 44
  %172 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %size8.i.i, align 4
  %174 = ptrtoint ptr %desc_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %desc_buf.i.i, align 4
  %176 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pa.i.i, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev.i127.i, i32 noundef %173, ptr noundef %175, i32 noundef %177) #6
  %178 = ptrtoint ptr %desc_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %desc_buf.i.i, align 4
  %179 = ptrtoint ptr %pa.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %pa.i.i, align 4
  %180 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %size8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_code.0.i)
  %tobool8.not = icmp eq i32 %ret_code.0.i, 0
  br i1 %tobool8.not, label %ice_init_sq.exit.if.end10_crit_edge, label %ice_init_sq.exit.cleanup_crit_edge

ice_init_sq.exit.cleanup_crit_edge:               ; preds = %ice_init_sq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ice_init_sq.exit.if.end10_crit_edge:              ; preds = %ice_init_sq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %ice_init_sq.exit.if.end10_crit_edge, %ice_init_sq.exit.thread140
  %rq.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1
  %count.i73 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 4
  %181 = ptrtoint ptr %count.i73 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %count.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %cmp.not.i74 = icmp eq i16 %182, 0
  br i1 %cmp.not.i74, label %if.end.i76, label %if.end10.init_ctrlq_free_sq_crit_edge

if.end10.init_ctrlq_free_sq_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_ctrlq_free_sq

if.end.i76:                                       ; preds = %if.end10
  %183 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %num_rq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %tobool.not.i75 = icmp eq i16 %184, 0
  br i1 %tobool.not.i75, label %if.end.i76.init_ctrlq_free_sq_crit_edge, label %lor.lhs.false.i78

if.end.i76.init_ctrlq_free_sq_crit_edge:          ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_ctrlq_free_sq

lor.lhs.false.i78:                                ; preds = %if.end.i76
  %185 = ptrtoint ptr %rq_buf_size to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %rq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %186)
  %tobool2.not.i77 = icmp eq i16 %186, 0
  br i1 %tobool2.not.i77, label %lor.lhs.false.i78.init_ctrlq_free_sq_crit_edge, label %if.end4.i89

lor.lhs.false.i78.init_ctrlq_free_sq_crit_edge:   ; preds = %lor.lhs.false.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_ctrlq_free_sq

if.end4.i89:                                      ; preds = %lor.lhs.false.i78
  %next_to_use.i79 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 5
  %187 = ptrtoint ptr %next_to_use.i79 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %next_to_use.i79, align 2
  %next_to_clean.i80 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 6
  %188 = ptrtoint ptr %next_to_clean.i80 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %next_to_clean.i80, align 4
  %conv.i.i81 = zext i16 %184 to i32
  %mul.i.i82 = shl nuw nsw i32 %conv.i.i81, 5
  %189 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i84 = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 44
  %desc_buf.i.i85 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 1
  %pa.i.i86 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 1, i32 1
  %call.i.i.i87 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev.i.i84, i32 noundef %mul.i.i82, ptr noundef %pa.i.i86, i32 noundef 3520, i32 noundef 0) #6
  %191 = ptrtoint ptr %desc_buf.i.i85 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call.i.i.i87, ptr %desc_buf.i.i85, align 4
  %tobool.not.i.i88 = icmp eq ptr %call.i.i.i87, null
  br i1 %tobool.not.i.i88, label %if.end4.i89.init_ctrlq_free_sq_crit_edge, label %if.end9.i94

if.end4.i89.init_ctrlq_free_sq_crit_edge:         ; preds = %if.end4.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_ctrlq_free_sq

if.end9.i94:                                      ; preds = %if.end4.i89
  %size8.i.i90 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 1, i32 2
  %192 = ptrtoint ptr %size8.i.i90 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %mul.i.i82, ptr %size8.i.i90, align 4
  %193 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %num_rq_entries, align 4
  %conv.i116.i91 = zext i16 %194 to i32
  %195 = mul nuw nsw i32 %conv.i116.i91, 12
  %196 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i117.i92 = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 44
  %call5.i.i.i.i93 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i117.i92, i32 noundef %195, i32 noundef 3520) #6
  %198 = ptrtoint ptr %rq.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call5.i.i.i.i93, ptr %rq.i, align 4
  %tobool.not.i118.i = icmp eq ptr %call5.i.i.i.i93, null
  br i1 %tobool.not.i118.i, label %if.end9.i94.do.body.i115_crit_edge, label %if.end.i119.i

if.end9.i94.do.body.i115_crit_edge:               ; preds = %if.end9.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i115

if.end.i119.i:                                    ; preds = %if.end9.i94
  %r.i.i95 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 3
  %199 = ptrtoint ptr %r.i.i95 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call5.i.i.i.i93, ptr %r.i.i95, align 4
  %200 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %num_rq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %201)
  %cmp150.not.i.i = icmp eq i16 %201, 0
  br i1 %cmp150.not.i.i, label %if.end.i119.i.if.end13.i110_crit_edge, label %if.end.i119.i.for.body.i.i102_crit_edge

if.end.i119.i.for.body.i.i102_crit_edge:          ; preds = %if.end.i119.i
  br label %for.body.i.i102

if.end.i119.i.if.end13.i110_crit_edge:            ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i110

for.body.i.i102:                                  ; preds = %for.inc.i.i108.for.body.i.i102_crit_edge, %if.end.i119.i.for.body.i.i102_crit_edge
  %i.0151.i.i = phi i32 [ %inc.i.i105, %for.inc.i.i108.for.body.i.i102_crit_edge ], [ 0, %if.end.i119.i.for.body.i.i102_crit_edge ]
  %202 = ptrtoint ptr %r.i.i95 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %r.i.i95, align 4
  %arrayidx.i.i96 = getelementptr %struct.ice_dma_mem, ptr %203, i32 %i.0151.i.i
  %204 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %add.ptr.i.i, align 8
  %dev15.i.i97 = getelementptr inbounds %struct.pci_dev, ptr %205, i32 0, i32 44
  %206 = ptrtoint ptr %rq_buf_size to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %rq_buf_size, align 4
  %conv16.i.i98 = zext i16 %207 to i32
  %pa.i121.i99 = getelementptr %struct.ice_dma_mem, ptr %203, i32 %i.0151.i.i, i32 1
  %call.i.i122.i100 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev15.i.i97, i32 noundef %conv16.i.i98, ptr noundef %pa.i121.i99, i32 noundef 3520, i32 noundef 0) #6
  %208 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call.i.i122.i100, ptr %arrayidx.i.i96, align 4
  %tobool19.not.i.i101 = icmp eq ptr %call.i.i122.i100, null
  br i1 %tobool19.not.i.i101, label %for.cond46.preheader.i.i, label %for.inc.i.i108

for.cond46.preheader.i.i:                         ; preds = %for.body.i.i102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0151.i.i)
  %cmp47153.not.i.i = icmp eq i32 %i.0151.i.i, 0
  br i1 %cmp47153.not.i.i, label %for.cond46.preheader.i.i.for.end81.i.i_crit_edge, label %for.cond46.preheader.i.i.for.body49.i.i_crit_edge

for.cond46.preheader.i.i.for.body49.i.i_crit_edge: ; preds = %for.cond46.preheader.i.i
  br label %for.body49.i.i

for.cond46.preheader.i.i.for.end81.i.i_crit_edge: ; preds = %for.cond46.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81.i.i

for.inc.i.i108:                                   ; preds = %for.body.i.i102
  %209 = ptrtoint ptr %rq_buf_size to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %rq_buf_size, align 4
  %conv23.i.i103 = zext i16 %210 to i32
  %size.i.i104 = getelementptr %struct.ice_dma_mem, ptr %203, i32 %i.0151.i.i, i32 2
  %211 = ptrtoint ptr %size.i.i104 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %conv23.i.i103, ptr %size.i.i104, align 4
  %212 = ptrtoint ptr %desc_buf.i.i85 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %desc_buf.i.i85, align 4
  %arrayidx26.i.i = getelementptr %struct.ice_aq_desc, ptr %213, i32 %i.0151.i.i
  %214 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 16, ptr %arrayidx26.i.i, align 4
  %215 = load i16, ptr %rq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %215)
  %cmp29.i.i = icmp ugt i16 %215, 512
  %spec.store.select.i.i = select i1 %cmp29.i.i, i16 18, i16 16
  %216 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %spec.store.select.i.i, ptr %arrayidx26.i.i, align 4
  %opcode.i.i = getelementptr %struct.ice_aq_desc, ptr %213, i32 %i.0151.i.i, i32 1
  %217 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 0, ptr %opcode.i.i, align 2
  %218 = ptrtoint ptr %size.i.i104 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %size.i.i104, align 4
  %conv37.i.i = trunc i32 %219 to i16
  %220 = tail call i16 @llvm.bswap.i16(i16 %conv37.i.i) #6
  %datalen.i.i = getelementptr %struct.ice_aq_desc, ptr %213, i32 %i.0151.i.i, i32 2
  %221 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %220, ptr %datalen.i.i, align 4
  %retval38.i.i = getelementptr %struct.ice_aq_desc, ptr %213, i32 %i.0151.i.i, i32 3
  %222 = ptrtoint ptr %retval38.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 0, ptr %retval38.i.i, align 2
  %cookie_high.i.i = getelementptr %struct.ice_aq_desc, ptr %213, i32 %i.0151.i.i, i32 4
  %223 = ptrtoint ptr %cookie_high.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %cookie_high.i.i, align 4
  %cookie_low.i.i = getelementptr %struct.ice_aq_desc, ptr %213, i32 %i.0151.i.i, i32 5
  %224 = ptrtoint ptr %cookie_low.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %cookie_low.i.i, align 4
  %params.i.i = getelementptr %struct.ice_aq_desc, ptr %213, i32 %i.0151.i.i, i32 6
  %addr_high.i.i = getelementptr inbounds %struct.ice_aqc_generic, ptr %params.i.i, i32 0, i32 2
  %225 = ptrtoint ptr %addr_high.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %addr_high.i.i, align 4
  %226 = ptrtoint ptr %pa.i121.i99 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %pa.i121.i99, align 4
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #6
  %addr_low.i.i = getelementptr inbounds %struct.ice_aqc_generic, ptr %params.i.i, i32 0, i32 3
  %229 = ptrtoint ptr %addr_low.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %addr_low.i.i, align 4
  %230 = ptrtoint ptr %params.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %params.i.i, align 4
  %param1.i.i = getelementptr inbounds %struct.ice_aqc_generic, ptr %params.i.i, i32 0, i32 1
  %231 = ptrtoint ptr %param1.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %param1.i.i, align 4
  %inc.i.i105 = add nuw nsw i32 %i.0151.i.i, 1
  %232 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %num_rq_entries, align 4
  %conv7.i.i106 = zext i16 %233 to i32
  %cmp.i.i107 = icmp ult i32 %inc.i.i105, %conv7.i.i106
  br i1 %cmp.i.i107, label %for.inc.i.i108.for.body.i.i102_crit_edge, label %for.inc.i.i108.if.end13.i110_crit_edge

for.inc.i.i108.if.end13.i110_crit_edge:           ; preds = %for.inc.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i110

for.inc.i.i108.for.body.i.i102_crit_edge:         ; preds = %for.inc.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i102

for.body49.i.i:                                   ; preds = %for.body49.i.i.for.body49.i.i_crit_edge, %for.cond46.preheader.i.i.for.body49.i.i_crit_edge
  %i.1154.in.i.i = phi i32 [ %i.1154.i.i, %for.body49.i.i.for.body49.i.i_crit_edge ], [ %i.0151.i.i, %for.cond46.preheader.i.i.for.body49.i.i_crit_edge ]
  %i.1154.i.i = add nsw i32 %i.1154.in.i.i, -1
  %234 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add.ptr.i.i, align 8
  %dev54.i.i = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44
  %236 = ptrtoint ptr %r.i.i95 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %r.i.i95, align 4
  %arrayidx57.i.i = getelementptr %struct.ice_dma_mem, ptr %237, i32 %i.1154.i.i
  %size58.i.i = getelementptr %struct.ice_dma_mem, ptr %237, i32 %i.1154.i.i, i32 2
  %238 = ptrtoint ptr %size58.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %size58.i.i, align 4
  %240 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %arrayidx57.i.i, align 4
  %pa66.i.i = getelementptr %struct.ice_dma_mem, ptr %237, i32 %i.1154.i.i, i32 1
  %242 = ptrtoint ptr %pa66.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %pa66.i.i, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev54.i.i, i32 noundef %239, ptr noundef %241, i32 noundef %243) #6
  %244 = ptrtoint ptr %r.i.i95 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %r.i.i95, align 4
  %arrayidx69.i.i = getelementptr %struct.ice_dma_mem, ptr %245, i32 %i.1154.i.i
  %246 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr null, ptr %arrayidx69.i.i, align 4
  %247 = load ptr, ptr %r.i.i95, align 4
  %pa74.i.i = getelementptr %struct.ice_dma_mem, ptr %247, i32 %i.1154.i.i, i32 1
  %248 = ptrtoint ptr %pa74.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %pa74.i.i, align 4
  %249 = load ptr, ptr %r.i.i95, align 4
  %size78.i.i = getelementptr %struct.ice_dma_mem, ptr %249, i32 %i.1154.i.i, i32 2
  %250 = ptrtoint ptr %size78.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %size78.i.i, align 4
  %cmp47.i.i = icmp sgt i32 %i.1154.in.i.i, 1
  br i1 %cmp47.i.i, label %for.body49.i.i.for.body49.i.i_crit_edge, label %for.body49.i.i.for.end81.i.i_crit_edge

for.body49.i.i.for.end81.i.i_crit_edge:           ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81.i.i

for.body49.i.i.for.body49.i.i_crit_edge:          ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body49.i.i

for.end81.i.i:                                    ; preds = %for.body49.i.i.for.end81.i.i_crit_edge, %for.cond46.preheader.i.i.for.end81.i.i_crit_edge
  %251 = ptrtoint ptr %r.i.i95 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %r.i.i95, align 4
  %252 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %add.ptr.i.i, align 8
  %dev88.i.i = getelementptr inbounds %struct.pci_dev, ptr %253, i32 0, i32 44
  %254 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rq.i, align 4
  tail call void @devm_kfree(ptr noundef %dev88.i.i, ptr noundef %255) #6
  %256 = ptrtoint ptr %rq.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr null, ptr %rq.i, align 4
  br label %do.body.i115

if.end13.i110:                                    ; preds = %for.inc.i.i108.if.end13.i110_crit_edge, %if.end.i119.i.if.end13.i110_crit_edge
  %257 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %num_rq_entries, align 4
  %call.i.i109 = tail call fastcc i32 @ice_cfg_cq_regs(ptr noundef %hw, ptr noundef %rq.i, i16 noundef zeroext %258) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool.not.i126.i = icmp eq i32 %call.i.i109, 0
  br i1 %tobool.not.i126.i, label %ice_init_rq.exit.thread146, label %if.end13.i110.do.body.i115_crit_edge

if.end13.i110.do.body.i115_crit_edge:             ; preds = %if.end13.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i115

ice_init_rq.exit.thread146:                       ; preds = %if.end13.i110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %259 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %num_rq_entries, align 4
  %conv.i127.i = zext i16 %260 to i32
  %sub.i.i = add nsw i32 %conv.i127.i, -1
  %261 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #6
  %262 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hw, align 8
  %tail.i.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 8
  %264 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %tail.i.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %263, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %261) #6, !srcloc !109
  %266 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %num_rq_entries, align 4
  %268 = ptrtoint ptr %count.i73 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 %267, ptr %count.i73, align 4
  br label %cleanup

do.body.i115:                                     ; preds = %if.end13.i110.do.body.i115_crit_edge, %for.end81.i.i, %if.end9.i94.do.body.i115_crit_edge
  %ret_code.0.i112 = phi i32 [ -12, %for.end81.i.i ], [ -12, %if.end9.i94.do.body.i115_crit_edge ], [ %call.i.i109, %if.end13.i110.do.body.i115_crit_edge ]
  %r.i113 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 3
  %269 = ptrtoint ptr %r.i113 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %r.i113, align 4
  %tobool22.not.i114 = icmp eq ptr %270, null
  br i1 %tobool22.not.i114, label %do.body.i115.if.end55.i132_crit_edge, label %for.cond.preheader.i116

do.body.i115.if.end55.i132_crit_edge:             ; preds = %do.body.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i132

for.cond.preheader.i116:                          ; preds = %do.body.i115
  %271 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %num_rq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %272)
  %cmp26140.not.i = icmp eq i16 %272, 0
  br i1 %cmp26140.not.i, label %for.cond.preheader.i116.if.end55.i132_crit_edge, label %for.cond.preheader.i116.for.body.i119_crit_edge

for.cond.preheader.i116.for.body.i119_crit_edge:  ; preds = %for.cond.preheader.i116
  br label %for.body.i119

for.cond.preheader.i116.if.end55.i132_crit_edge:  ; preds = %for.cond.preheader.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i132

for.body.i119:                                    ; preds = %for.inc.i130.for.body.i119_crit_edge, %for.cond.preheader.i116.for.body.i119_crit_edge
  %i.0141.i = phi i32 [ %inc.i127, %for.inc.i130.for.body.i119_crit_edge ], [ 0, %for.cond.preheader.i116.for.body.i119_crit_edge ]
  %273 = ptrtoint ptr %r.i113 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %r.i113, align 4
  %pa.i117 = getelementptr %struct.ice_dma_mem, ptr %274, i32 %i.0141.i, i32 1
  %275 = ptrtoint ptr %pa.i117 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %pa.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool30.not.i118 = icmp eq i32 %276, 0
  br i1 %tobool30.not.i118, label %for.body.i119.for.inc.i130_crit_edge, label %if.then31.i126

for.body.i119.for.inc.i130_crit_edge:             ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i130

if.then31.i126:                                   ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i120 = getelementptr %struct.ice_dma_mem, ptr %274, i32 %i.0141.i
  %277 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i121 = getelementptr inbounds %struct.pci_dev, ptr %278, i32 0, i32 44
  %size.i122 = getelementptr %struct.ice_dma_mem, ptr %274, i32 %i.0141.i, i32 2
  %279 = ptrtoint ptr %size.i122 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %size.i122, align 4
  %281 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx.i120, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev.i121, i32 noundef %280, ptr noundef %282, i32 noundef %276) #6
  %283 = ptrtoint ptr %r.i113 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %r.i113, align 4
  %arrayidx44.i123 = getelementptr %struct.ice_dma_mem, ptr %284, i32 %i.0141.i
  %285 = ptrtoint ptr %arrayidx44.i123 to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr null, ptr %arrayidx44.i123, align 4
  %286 = load ptr, ptr %r.i113, align 4
  %pa49.i124 = getelementptr %struct.ice_dma_mem, ptr %286, i32 %i.0141.i, i32 1
  %287 = ptrtoint ptr %pa49.i124 to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 0, ptr %pa49.i124, align 4
  %288 = load ptr, ptr %r.i113, align 4
  %size53.i125 = getelementptr %struct.ice_dma_mem, ptr %288, i32 %i.0141.i, i32 2
  %289 = ptrtoint ptr %size53.i125 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %size53.i125, align 4
  br label %for.inc.i130

for.inc.i130:                                     ; preds = %if.then31.i126, %for.body.i119.for.inc.i130_crit_edge
  %inc.i127 = add nuw nsw i32 %i.0141.i, 1
  %290 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %num_rq_entries, align 4
  %conv25.i128 = zext i16 %291 to i32
  %cmp26.i129 = icmp ult i32 %inc.i127, %conv25.i128
  br i1 %cmp26.i129, label %for.inc.i130.for.body.i119_crit_edge, label %for.inc.i130.if.end55.i132_crit_edge

for.inc.i130.if.end55.i132_crit_edge:             ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55.i132

for.inc.i130.for.body.i119_crit_edge:             ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i119

if.end55.i132:                                    ; preds = %for.inc.i130.if.end55.i132_crit_edge, %for.cond.preheader.i116.if.end55.i132_crit_edge, %do.body.i115.if.end55.i132_crit_edge
  %cmd_buf.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq.0, i32 0, i32 1, i32 2
  %292 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cmd_buf.i, align 4
  %tobool57.not.i131 = icmp eq ptr %293, null
  br i1 %tobool57.not.i131, label %if.end55.i132.ice_init_rq.exit_crit_edge, label %if.then58.i134

if.end55.i132.ice_init_rq.exit_crit_edge:         ; preds = %if.end55.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %ice_init_rq.exit

if.then58.i134:                                   ; preds = %if.end55.i132
  call void @__sanitizer_cov_trace_pc() #8
  %294 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %add.ptr.i.i, align 8
  %dev63.i133 = getelementptr inbounds %struct.pci_dev, ptr %295, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev63.i133, ptr noundef nonnull %293) #6
  br label %ice_init_rq.exit

ice_init_rq.exit:                                 ; preds = %if.then58.i134, %if.end55.i132.ice_init_rq.exit_crit_edge
  %296 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %add.ptr.i.i, align 8
  %dev71.i135 = getelementptr inbounds %struct.pci_dev, ptr %297, i32 0, i32 44
  %298 = ptrtoint ptr %rq.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %rq.i, align 4
  tail call void @devm_kfree(ptr noundef %dev71.i135, ptr noundef %299) #6
  %300 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i130.i = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 44
  %302 = ptrtoint ptr %size8.i.i90 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %size8.i.i90, align 4
  %304 = ptrtoint ptr %desc_buf.i.i85 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %desc_buf.i.i85, align 4
  %306 = ptrtoint ptr %pa.i.i86 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %pa.i.i86, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev.i130.i, i32 noundef %303, ptr noundef %305, i32 noundef %307) #6
  %308 = ptrtoint ptr %desc_buf.i.i85 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr null, ptr %desc_buf.i.i85, align 4
  %309 = ptrtoint ptr %pa.i.i86 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 0, ptr %pa.i.i86, align 4
  %310 = ptrtoint ptr %size8.i.i90 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 0, ptr %size8.i.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_code.0.i112)
  %tobool12.not = icmp eq i32 %ret_code.0.i112, 0
  br i1 %tobool12.not, label %ice_init_rq.exit.cleanup_crit_edge, label %ice_init_rq.exit.init_ctrlq_free_sq_crit_edge

ice_init_rq.exit.init_ctrlq_free_sq_crit_edge:    ; preds = %ice_init_rq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_ctrlq_free_sq

ice_init_rq.exit.cleanup_crit_edge:               ; preds = %ice_init_rq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

init_ctrlq_free_sq:                               ; preds = %ice_init_rq.exit.init_ctrlq_free_sq_crit_edge, %if.end4.i89.init_ctrlq_free_sq_crit_edge, %lor.lhs.false.i78.init_ctrlq_free_sq_crit_edge, %if.end.i76.init_ctrlq_free_sq_crit_edge, %if.end10.init_ctrlq_free_sq_crit_edge
  %ret_code.1.i137145 = phi i32 [ %ret_code.0.i112, %ice_init_rq.exit.init_ctrlq_free_sq_crit_edge ], [ -12, %if.end4.i89.init_ctrlq_free_sq_crit_edge ], [ -5, %if.end.i76.init_ctrlq_free_sq_crit_edge ], [ -5, %lor.lhs.false.i78.init_ctrlq_free_sq_crit_edge ], [ -16, %if.end10.init_ctrlq_free_sq_crit_edge ]
  tail call fastcc void @ice_shutdown_sq(ptr noundef %hw, ptr noundef %cq.0)
  br label %cleanup

cleanup:                                          ; preds = %init_ctrlq_free_sq, %ice_init_rq.exit.cleanup_crit_edge, %ice_init_rq.exit.thread146, %ice_init_sq.exit.cleanup_crit_edge, %if.then21.i.i, %if.end4.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_code.1.i137145, %init_ctrlq_free_sq ], [ -22, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false6.cleanup_crit_edge ], [ -5, %lor.lhs.false4.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %sw.epilog.cleanup_crit_edge ], [ %ret_code.0.i, %ice_init_sq.exit.cleanup_crit_edge ], [ 0, %ice_init_rq.exit.cleanup_crit_edge ], [ 0, %ice_init_rq.exit.thread146 ], [ -12, %if.end4.i.cleanup_crit_edge ], [ -12, %if.then21.i.i ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_create_all_ctrlq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_lock.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 9
  tail call void @__mutex_init(ptr noundef %sq_lock.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @ice_init_ctrlq_locks.__key) #6
  %rq_lock.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 10
  tail call void @__mutex_init(ptr noundef %rq_lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @ice_init_ctrlq_locks.__key.33) #6
  %mac_type.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sq_lock.i6 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 9
  tail call void @__mutex_init(ptr noundef %sq_lock.i6, ptr noundef nonnull @.str.32, ptr noundef nonnull @ice_init_ctrlq_locks.__key) #6
  %rq_lock.i7 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 10
  tail call void @__mutex_init(ptr noundef %rq_lock.i7, ptr noundef nonnull @.str.34, ptr noundef nonnull @ice_init_ctrlq_locks.__key.33) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sq_lock.i8 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 9
  tail call void @__mutex_init(ptr noundef %sq_lock.i8, ptr noundef nonnull @.str.32, ptr noundef nonnull @ice_init_ctrlq_locks.__key) #6
  %rq_lock.i9 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 10
  tail call void @__mutex_init(ptr noundef %rq_lock.i9, ptr noundef nonnull @.str.34, ptr noundef nonnull @ice_init_ctrlq_locks.__key.33) #6
  %call1 = tail call i32 @ice_init_all_ctrlq(ptr noundef %hw)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_destroy_all_ctrlq(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ice_shutdown_all_ctrlq(ptr noundef %hw)
  %sq_lock.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 9
  tail call void @mutex_destroy(ptr noundef %sq_lock.i) #6
  %rq_lock.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 10
  tail call void @mutex_destroy(ptr noundef %rq_lock.i) #6
  %mac_type.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sq_lock.i5 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 9
  tail call void @mutex_destroy(ptr noundef %sq_lock.i5) #6
  %rq_lock.i6 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 31, i32 10
  tail call void @mutex_destroy(ptr noundef %rq_lock.i6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sq_lock.i7 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 9
  tail call void @mutex_destroy(ptr noundef %sq_lock.i7) #6
  %rq_lock.i8 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 32, i32 10
  tail call void @mutex_destroy(ptr noundef %rq_lock.i8) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_sq_send_cmd(ptr nocapture noundef readonly %hw, ptr noundef %cq, ptr noundef %desc, ptr noundef %buf, i16 noundef zeroext %buf_size, ptr noundef readonly %cd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_ongoing = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 24
  %0 = ptrtoint ptr %reset_ongoing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reset_ongoing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sq_lock = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %sq_lock, i32 noundef 0) #6
  %sq_last_status = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 8
  %2 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sq_last_status, align 4
  %count = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then7)) #6
          to label %sq_send_command_error [label %if.then7], !srcloc !107

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug621, ptr noundef %dev, ptr noundef nonnull @.str.5) #6
  br label %sq_send_command_error

if.end10:                                         ; preds = %if.end
  %tobool11.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %buf_size)
  %tobool12.not = icmp ne i16 %buf_size, 0
  %or.cond522 = xor i1 %tobool11.not, %tobool12.not
  br i1 %or.cond522, label %if.end17, label %if.end10.sq_send_command_error_crit_edge

if.end10.sq_send_command_error_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sq_send_command_error

if.end17:                                         ; preds = %if.end10
  br i1 %tobool11.not, label %if.end17.if.end58_crit_edge, label %if.then19

if.end17.if.end58_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then19:                                        ; preds = %if.end17
  %conv20 = zext i16 %buf_size to i32
  %sq_buf_size = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 7
  %7 = ptrtoint ptr %sq_buf_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sq_buf_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %buf_size)
  %cmp = icmp ult i16 %8, %buf_size
  br i1 %cmp, label %do.body24, label %if.end46

do.body24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then36)) #6
          to label %sq_send_command_error [label %if.then36], !srcloc !107

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr39 = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr39, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug622, ptr noundef %dev41, ptr noundef nonnull @.str.6, i32 noundef %conv20) #6
  br label %sq_send_command_error

if.end46:                                         ; preds = %if.then19
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %desc, align 4
  %13 = or i16 %12, 16
  store i16 %13, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %buf_size)
  %cmp50 = icmp ugt i16 %buf_size, 512
  br i1 %cmp50, label %if.then52, label %if.end46.if.end58_crit_edge

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %14 = or i16 %12, 18
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %desc, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then52, %if.end46.if.end58_crit_edge, %if.end17.if.end58_crit_edge
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head, align 4
  %add.ptr60 = getelementptr i8, ptr %17, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #6, !srcloc !105
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %num_sq_entries = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 5
  %22 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_sq_entries, align 2
  %conv64 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv64)
  %cmp65.not = icmp ult i32 %21, %conv64
  br i1 %cmp65.not, label %if.end89, label %do.body68

do.body68:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then80)) #6
          to label %sq_send_command_error [label %if.then80], !srcloc !107

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr83 = getelementptr i8, ptr %hw, i32 -2960
  %24 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr83, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug623, ptr noundef %dev85, ptr noundef nonnull @.str.7, i32 noundef %21) #6
  br label %sq_send_command_error

if.end89:                                         ; preds = %if.end58
  %cmd_buf = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_buf, align 4
  %next_to_use = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 5
  %28 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %next_to_use, align 2
  %idxprom = zext i16 %29 to i32
  %arrayidx = getelementptr %struct.ice_sq_cd, ptr %27, i32 %idxprom
  %tobool92.not = icmp eq ptr %cd, null
  br i1 %tobool92.not, label %if.end89.if.end94_crit_edge, label %if.then93

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cd, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end89.if.end94_crit_edge
  %storemerge = phi i32 [ %31, %if.then93 ], [ 0, %if.end89.if.end94_crit_edge ]
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %arrayidx, align 4
  %call95 = tail call fastcc zeroext i16 @ice_clean_sq(ptr noundef %hw, ptr noundef %cq)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call95)
  %cmp97 = icmp eq i16 %call95, 0
  br i1 %cmp97, label %do.body100, label %if.end121

do.body100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then112)) #6
          to label %sq_send_command_error [label %if.then112], !srcloc !107

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr115 = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr115, align 8
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug624, ptr noundef %dev117, ptr noundef nonnull @.str.8) #6
  br label %sq_send_command_error

if.end121:                                        ; preds = %if.end94
  %desc_buf = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_buf, align 4
  %37 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_to_use, align 2
  %idxprom125 = zext i16 %38 to i32
  %arrayidx126 = getelementptr %struct.ice_aq_desc, ptr %36, i32 %idxprom125
  %39 = call ptr @memcpy(ptr %arrayidx126, ptr %desc, i32 32)
  br i1 %tobool11.not, label %if.end121.do.body140_crit_edge, label %if.then128

if.end121.do.body140_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body140

if.then128:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %r = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %r, align 4
  %42 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_to_use, align 2
  %idxprom132 = zext i16 %43 to i32
  %arrayidx133 = getelementptr %struct.ice_dma_mem, ptr %41, i32 %idxprom132
  %44 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx133, align 4
  %conv135 = zext i16 %buf_size to i32
  %46 = call ptr @memcpy(ptr %45, ptr %buf, i32 %conv135)
  %47 = tail call i16 @llvm.bswap.i16(i16 %buf_size)
  %datalen = getelementptr %struct.ice_aq_desc, ptr %36, i32 %idxprom125, i32 2
  %48 = ptrtoint ptr %datalen to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %datalen, align 4
  %pa = getelementptr %struct.ice_dma_mem, ptr %41, i32 %idxprom132, i32 1
  %params = getelementptr %struct.ice_aq_desc, ptr %36, i32 %idxprom125, i32 6
  %addr_high = getelementptr inbounds %struct.ice_aqc_generic, ptr %params, i32 0, i32 2
  %49 = ptrtoint ptr %addr_high to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %addr_high, align 4
  %50 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pa, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %addr_low = getelementptr inbounds %struct.ice_aqc_generic, ptr %params, i32 0, i32 3
  %53 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %addr_low, align 4
  br label %do.body140

do.body140:                                       ; preds = %if.then128, %if.end121.do.body140_crit_edge
  %dma_buf.0 = phi ptr [ %arrayidx133, %if.then128 ], [ null, %if.end121.do.body140_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then152)) #6
          to label %do.end160 [label %if.then152], !srcloc !107

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr155 = getelementptr i8, ptr %hw, i32 -2960
  %54 = ptrtoint ptr %add.ptr155 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr155, align 8
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug625, ptr noundef %dev157, ptr noundef nonnull @.str.9) #6
  br label %do.end160

do.end160:                                        ; preds = %if.then152, %do.body140
  tail call fastcc void @ice_debug_cq(ptr noundef %hw, ptr noundef %arrayidx126, ptr noundef %buf, i16 noundef zeroext %buf_size)
  %56 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %next_to_use, align 2
  %inc = add i16 %57, 1
  %58 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %59)
  %cmp169 = icmp eq i16 %inc, %59
  %spec.store.select = select i1 %cmp169, i16 0, i16 %inc
  %60 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %spec.store.select, ptr %next_to_use, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %next_to_use, align 2
  %conv180 = zext i16 %62 to i32
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv180)
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 8
  %66 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tail, align 4
  %add.ptr183 = getelementptr i8, ptr %65, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 %63) #6, !srcloc !109
  %sq_cmd_timeout = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 3
  br label %do.body184

do.body184:                                       ; preds = %if.end187.do.body184_crit_edge, %do.end160
  %total_delay.0 = phi i32 [ 0, %do.end160 ], [ %inc188, %if.end187.do.body184_crit_edge ]
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 8
  %70 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %head, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %71
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !105
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %74 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %next_to_use, align 2
  %conv.i = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %conv.i)
  %cmp.i = icmp eq i32 %73, %conv.i
  br i1 %cmp.i, label %do.body184.do.end192_crit_edge, label %if.end187

do.body184.do.end192_crit_edge:                   ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end192

if.end187:                                        ; preds = %do.body184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 21474800) #6
  %inc188 = add nuw i32 %total_delay.0, 1
  %77 = ptrtoint ptr %sq_cmd_timeout to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sq_cmd_timeout, align 4
  %cmp190 = icmp ult i32 %inc188, %78
  br i1 %cmp190, label %if.end187.do.body184_crit_edge, label %if.end187.do.end192_crit_edge

if.end187.do.end192_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end192

if.end187.do.body184_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body184

do.end192:                                        ; preds = %if.end187.do.end192_crit_edge, %do.body184.do.end192_crit_edge
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 8
  %81 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %head, align 4
  %add.ptr.i501 = getelementptr i8, ptr %80, i32 %82
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i501) #6, !srcloc !105
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %85 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %next_to_use, align 2
  %conv.i503 = zext i16 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %conv.i503)
  %cmp.i504 = icmp eq i32 %84, %conv.i503
  br i1 %cmp.i504, label %if.then194, label %do.end192.do.body271_crit_edge

do.end192.do.body271_crit_edge:                   ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body271

if.then194:                                       ; preds = %do.end192
  %87 = call ptr @memcpy(ptr %desc, ptr %arrayidx126, i32 32)
  br i1 %tobool11.not, label %if.then194.if.end230_crit_edge, label %if.then196

if.then194.if.end230_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230

if.then196:                                       ; preds = %if.then194
  %datalen197 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 2
  %88 = ptrtoint ptr %datalen197 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %datalen197, align 4
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %conv198 = zext i16 %90 to i32
  %conv199 = zext i16 %buf_size to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %buf_size)
  %cmp200 = icmp ugt i16 %90, %buf_size
  br i1 %cmp200, label %do.body203, label %if.else226

do.body203:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then215)) #6
          to label %if.end230 [label %if.then215], !srcloc !107

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr218 = getelementptr i8, ptr %hw, i32 -2960
  %91 = ptrtoint ptr %add.ptr218 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr218, align 8
  %dev220 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug626, ptr noundef %dev220, ptr noundef nonnull @.str.10, i32 noundef %conv198, i32 noundef %conv199) #6
  br label %if.end230

if.else226:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %dma_buf.0 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dma_buf.0, align 4
  %95 = call ptr @memcpy(ptr %buf, ptr %94, i32 %conv198)
  br label %if.end230

if.end230:                                        ; preds = %if.else226, %if.then215, %do.body203, %if.then194.if.end230_crit_edge
  %tobool261.not = phi i1 [ false, %do.body203 ], [ true, %if.else226 ], [ false, %if.then215 ], [ true, %if.then194.if.end230_crit_edge ]
  %status.1 = phi i32 [ -5, %do.body203 ], [ 0, %if.else226 ], [ -5, %if.then215 ], [ 0, %if.then194.if.end230_crit_edge ]
  %retval231 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 3
  %96 = ptrtoint ptr %retval231 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %retval231, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool232.not = icmp eq i16 %97, 0
  br i1 %tobool232.not, label %if.end230.if.end260.thread_crit_edge, label %do.body234

if.end230.if.end260.thread_crit_edge:             ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260.thread

do.body234:                                       ; preds = %if.end230
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then246)) #6
          to label %if.end260 [label %if.then246], !srcloc !107

if.then246:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr249 = getelementptr i8, ptr %hw, i32 -2960
  %99 = ptrtoint ptr %add.ptr249 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr249, align 8
  %dev251 = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %opcode = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 1
  %101 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %opcode, align 2
  %103 = tail call i16 @llvm.bswap.i16(i16 %102)
  %conv252 = zext i16 %103 to i32
  %conv253 = zext i16 %98 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug627, ptr noundef %dev251, ptr noundef nonnull @.str.11, i32 noundef %conv252, i32 noundef %conv253) #6
  br label %if.end260

if.end260:                                        ; preds = %if.then246, %do.body234
  %104 = and i16 %98, 255
  %and258 = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp264.not = icmp eq i16 %104, 0
  br i1 %cmp264.not, label %if.end260.if.end260.thread_crit_edge, label %if.end260._crit_edge

if.end260._crit_edge:                             ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %105

if.end260.if.end260.thread_crit_edge:             ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end260.thread

if.end260.thread:                                 ; preds = %if.end260.if.end260.thread_crit_edge, %if.end230.if.end260.thread_crit_edge
  br label %105

105:                                              ; preds = %if.end260.thread, %if.end260._crit_edge
  %retval1.0515 = phi i32 [ 0, %if.end260.thread ], [ %and258, %if.end260._crit_edge ]
  %106 = phi i32 [ 0, %if.end260.thread ], [ -5, %if.end260._crit_edge ]
  %status.2 = select i1 %tobool261.not, i32 %106, i32 %status.1
  %107 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval1.0515, ptr %sq_last_status, align 4
  br label %do.body271

do.body271:                                       ; preds = %105, %do.end192.do.body271_crit_edge
  %status.3 = phi i32 [ %status.2, %105 ], [ 0, %do.end192.do.body271_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then283)) #6
          to label %do.end291 [label %if.then283], !srcloc !107

if.then283:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr286 = getelementptr i8, ptr %hw, i32 -2960
  %108 = ptrtoint ptr %add.ptr286 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr286, align 8
  %dev288 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug628, ptr noundef %dev288, ptr noundef nonnull @.str.12) #6
  br label %do.end291

do.end291:                                        ; preds = %if.then283, %do.body271
  tail call fastcc void @ice_debug_cq(ptr noundef %hw, ptr noundef %desc, ptr noundef %buf, i16 noundef zeroext %buf_size)
  %110 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx, align 4
  %tobool292.not = icmp eq ptr %111, null
  br i1 %tobool292.not, label %do.end291.if.end295_crit_edge, label %if.then293

do.end291.if.end295_crit_edge:                    ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295

if.then293:                                       ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #8
  %112 = call ptr @memcpy(ptr %111, ptr %arrayidx126, i32 32)
  br label %if.end295

if.end295:                                        ; preds = %if.then293, %do.end291.if.end295_crit_edge
  br i1 %cmp.i504, label %if.end295.sq_send_command_error_crit_edge, label %if.then297

if.end295.sq_send_command_error_crit_edge:        ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #8
  br label %sq_send_command_error

if.then297:                                       ; preds = %if.end295
  %113 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 9
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len, align 4
  %add.ptr301 = getelementptr i8, ptr %114, i32 %116
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr301) #6, !srcloc !105
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %len_crit_mask = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 14
  %119 = ptrtoint ptr %len_crit_mask to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len_crit_mask, align 4
  %and306 = and i32 %120, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %lor.lhs.false308, label %if.then297.do.body323_crit_edge

if.then297.do.body323_crit_edge:                  ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body323

lor.lhs.false308:                                 ; preds = %if.then297
  %121 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw, align 8
  %len313 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 9
  %123 = ptrtoint ptr %len313 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len313, align 4
  %add.ptr314 = getelementptr i8, ptr %122, i32 %124
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314) #6, !srcloc !105
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %len_crit_mask319 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 14
  %127 = ptrtoint ptr %len_crit_mask319 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len_crit_mask319, align 4
  %and320 = and i32 %128, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %tobool321.not = icmp eq i32 %and320, 0
  br i1 %tobool321.not, label %do.body345, label %lor.lhs.false308.do.body323_crit_edge

lor.lhs.false308.do.body323_crit_edge:            ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body323

do.body323:                                       ; preds = %lor.lhs.false308.do.body323_crit_edge, %if.then297.do.body323_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then335)) #6
          to label %sq_send_command_error [label %if.then335], !srcloc !107

if.then335:                                       ; preds = %do.body323
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr338 = getelementptr i8, ptr %hw, i32 -2960
  %129 = ptrtoint ptr %add.ptr338 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr338, align 8
  %dev340 = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug629, ptr noundef %dev340, ptr noundef nonnull @.str.13) #6
  br label %sq_send_command_error

do.body345:                                       ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_sq_send_cmd, %if.then357)) #6
          to label %sq_send_command_error [label %if.then357], !srcloc !107

if.then357:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr360 = getelementptr i8, ptr %hw, i32 -2960
  %131 = ptrtoint ptr %add.ptr360 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr360, align 8
  %dev362 = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_sq_send_cmd.__UNIQUE_ID_ddebug630, ptr noundef %dev362, ptr noundef nonnull @.str.14) #6
  br label %sq_send_command_error

sq_send_command_error:                            ; preds = %if.then357, %do.body345, %if.then335, %do.body323, %if.end295.sq_send_command_error_crit_edge, %if.then112, %do.body100, %if.then80, %do.body68, %if.then36, %do.body24, %if.end10.sq_send_command_error_crit_edge, %if.then7, %do.body
  %status.4 = phi i32 [ %status.3, %if.end295.sq_send_command_error_crit_edge ], [ -5, %if.then7 ], [ -22, %if.end10.sq_send_command_error_crit_edge ], [ -22, %if.then36 ], [ -5, %if.then80 ], [ -28, %if.then112 ], [ -5, %if.then335 ], [ -5, %if.then357 ], [ -5, %do.body ], [ -22, %do.body24 ], [ -5, %do.body68 ], [ -28, %do.body100 ], [ -5, %do.body323 ], [ -5, %do.body345 ]
  tail call void @mutex_unlock(ptr noundef %sq_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %sq_send_command_error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.4, %sq_send_command_error ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @ice_clean_sq(ptr nocapture noundef readonly %hw, ptr nocapture noundef %cq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 4
  %desc_buf = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_buf, align 4
  %cmd_buf = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf, align 4
  %head = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head, align 4
  %add.ptr74 = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #6, !srcloc !105
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %conv75 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv75)
  %cmp.not76 = icmp eq i32 %11, %conv75
  br i1 %cmp.not76, label %entry.while.end_crit_edge, label %do.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.ice_sq_cd, ptr %5, i32 %conv75
  %arrayidx = getelementptr %struct.ice_aq_desc, ptr %3, i32 %conv75
  %add.ptr12 = getelementptr i8, ptr %hw, i32 -2960
  %count = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 4
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.lr.ph
  %conv80 = phi i32 [ %conv75, %do.body.lr.ph ], [ %idxprom31, %do.end.do.body_crit_edge ]
  %ntc.079 = phi i16 [ %1, %do.body.lr.ph ], [ %spec.store.select, %do.end.do.body_crit_edge ]
  %details.078 = phi ptr [ %arrayidx3, %do.body.lr.ph ], [ %arrayidx35, %do.end.do.body_crit_edge ]
  %desc.077 = phi ptr [ %arrayidx, %do.body.lr.ph ], [ %arrayidx32, %do.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clean_sq.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clean_sq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !107

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr12, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #6, !srcloc !105
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clean_sq.__UNIQUE_ID_ddebug614, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv80, i32 noundef %19) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %20 = call ptr @memset(ptr %desc.077, i32 0, i32 32)
  %21 = ptrtoint ptr %details.078 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %details.078, align 4
  %inc = add i16 %ntc.079, 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %23)
  %cmp25 = icmp eq i16 %inc, %23
  %spec.store.select = select i1 %cmp25, i16 0, i16 %inc
  %24 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc_buf, align 4
  %idxprom31 = zext i16 %spec.store.select to i32
  %arrayidx32 = getelementptr %struct.ice_aq_desc, ptr %25, i32 %idxprom31
  %26 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_buf, align 4
  %arrayidx35 = getelementptr %struct.ice_sq_cd, ptr %27, i32 %idxprom31
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %30 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %31
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !105
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %cmp.not = icmp eq i32 %33, %idxprom31
  br i1 %cmp.not, label %do.end.while.end_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %ntc.0.lcssa = phi i16 [ %1, %entry.while.end_crit_edge ], [ %spec.store.select, %do.end.while.end_crit_edge ]
  %34 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %ntc.0.lcssa, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 5
  %35 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %next_to_use, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %ntc.0.lcssa, i16 %36)
  %cmp40 = icmp ugt i16 %ntc.0.lcssa, %36
  br i1 %cmp40, label %while.end.cond.end_crit_edge, label %cond.false

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %count42 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %count42 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %count42, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.end.cond.end_crit_edge
  %cond = phi i16 [ %38, %cond.false ], [ 0, %while.end.cond.end_crit_edge ]
  %39 = xor i16 %36, -1
  %add = add i16 %ntc.0.lcssa, %39
  %sub48 = add i16 %add, %cond
  ret i16 %sub48
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_debug_cq(ptr nocapture noundef readonly %hw, ptr noundef readonly %desc, ptr noundef %buf, i16 noundef zeroext %buf_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %datalen = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %datalen, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_debug_cq.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_debug_cq, %if.then4)) #6
          to label %do.body11 [label %if.then4], !srcloc !107

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %opcode = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 1
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %opcode, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %desc, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv6 = zext i16 %10 to i32
  %11 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %datalen, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv8 = zext i16 %13 to i32
  %retval = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 3
  %14 = ptrtoint ptr %retval to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %retval, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv9 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_debug_cq.__UNIQUE_ID_ddebug615, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv9) #6
  br label %do.body11

do.body11:                                        ; preds = %if.then4, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_debug_cq.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_debug_cq, %if.then23)) #6
          to label %do.body32 [label %if.then23], !srcloc !107

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr26 = getelementptr i8, ptr %hw, i32 -2960
  %17 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr26, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %cookie_high = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 4
  %19 = ptrtoint ptr %cookie_high to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cookie_high, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %cookie_low = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 5
  %22 = ptrtoint ptr %cookie_low to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cookie_low, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_debug_cq.__UNIQUE_ID_ddebug616, ptr noundef %dev28, ptr noundef nonnull @.str.39, i32 noundef %21, i32 noundef %24) #6
  br label %do.body32

do.body32:                                        ; preds = %if.then23, %do.body11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_debug_cq.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_debug_cq, %if.then44)) #6
          to label %do.body54 [label %if.then44], !srcloc !107

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr47 = getelementptr i8, ptr %hw, i32 -2960
  %25 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr47, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %params = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %27 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %params, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %param1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %30 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %param1, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_debug_cq.__UNIQUE_ID_ddebug617, ptr noundef %dev49, ptr noundef nonnull @.str.40, i32 noundef %29, i32 noundef %32) #6
  br label %do.body54

do.body54:                                        ; preds = %if.then44, %do.body32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_debug_cq.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_debug_cq, %if.then66)) #6
          to label %do.end76 [label %if.then66], !srcloc !107

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr69 = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr69, align 8
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %addr_high = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %35 = ptrtoint ptr %addr_high to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr_high, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %addr_low = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %38 = ptrtoint ptr %addr_low to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr_low, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_debug_cq.__UNIQUE_ID_ddebug618, ptr noundef %dev71, ptr noundef nonnull @.str.41, i32 noundef %37, i32 noundef %40) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then66, %do.body54
  %tobool77.not = icmp eq ptr %buf, null
  br i1 %tobool77.not, label %do.end76.cleanup_crit_edge, label %land.lhs.true

do.end76.cleanup_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end76
  %41 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.not = icmp eq i16 %42, 0
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %do.body82

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body82:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_debug_cq.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_debug_cq, %if.then94)) #6
          to label %do.end102 [label %if.then94], !srcloc !107

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr97 = getelementptr i8, ptr %hw, i32 -2960
  %43 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr97, align 8
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_debug_cq.__UNIQUE_ID_ddebug619, ptr noundef %dev99, ptr noundef nonnull @.str.42) #6
  br label %do.end102

do.end102:                                        ; preds = %if.then94, %do.body82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_debug_cq.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_debug_cq, %if.then121)) #6
          to label %cleanup [label %if.then121], !srcloc !107

if.then121:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #8
  %45 = tail call i16 @llvm.umin.i16(i16 %2, i16 %buf_len)
  %conv122 = zext i16 %45 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef %conv122, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %do.end102, %land.lhs.true.cleanup_crit_edge, %do.end76.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ice_fill_dflt_direct_cmd_desc(ptr nocapture noundef writeonly %desc, i16 noundef zeroext %opcode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %desc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = tail call i16 @llvm.bswap.i16(i16 %opcode)
  %opcode1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 1
  %3 = ptrtoint ptr %opcode1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %opcode1, align 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 32, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_clean_rq_elem(ptr nocapture noundef readonly %hw, ptr noundef %cq, ptr nocapture noundef %e, ptr noundef writeonly %pending) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_clean = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_clean, align 4
  %2 = call ptr @memset(ptr %e, i32 0, i32 32)
  %rq_lock = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %rq_lock, i32 noundef 0) #6
  %count = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clean_rq_elem.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clean_rq_elem, %if.then6)) #6
          to label %clean_rq_elem_err [label %if.then6], !srcloc !107

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clean_rq_elem.__UNIQUE_ID_ddebug631, ptr noundef %dev, ptr noundef nonnull @.str.16) #6
  br label %clean_rq_elem_err

if.end8:                                          ; preds = %entry
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %head, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !105
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %head_mask = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 15
  %13 = ptrtoint ptr %head_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head_mask, align 4
  %and = and i32 %14, %12
  %conv = trunc i32 %and to i16
  %conv15 = and i32 %and, 65535
  %conv16 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %conv16)
  %cmp = icmp eq i32 %conv15, %conv16
  br i1 %cmp, label %if.end8.clean_rq_elem_out_crit_edge, label %if.end19

if.end8.clean_rq_elem_out_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_rq_elem_out

if.end19:                                         ; preds = %if.end8
  %desc_buf = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_buf, align 4
  %arrayidx = getelementptr %struct.ice_aq_desc, ptr %16, i32 %conv16
  %retval21 = getelementptr %struct.ice_aq_desc, ptr %16, i32 %conv16, i32 3
  %17 = ptrtoint ptr %retval21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %retval21, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv22 = zext i16 %19 to i32
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 4
  %22 = and i16 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool26.not = icmp eq i16 %22, 0
  br i1 %tobool26.not, label %if.end19.if.end50_crit_edge, label %if.then27

if.end19.if.end50_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clean_rq_elem.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clean_rq_elem, %if.then40)) #6
          to label %if.end50 [label %if.then40], !srcloc !107

if.then40:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr43 = getelementptr i8, ptr %hw, i32 -2960
  %23 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr43, align 8
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %opcode = getelementptr %struct.ice_aq_desc, ptr %16, i32 %conv16, i32 1
  %25 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %opcode, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv46 = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clean_rq_elem.__UNIQUE_ID_ddebug632, ptr noundef %dev45, ptr noundef nonnull @.str.17, i32 noundef %conv46, i32 noundef %conv22) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then40, %if.then27, %if.end19.if.end50_crit_edge
  %ret_code.0 = phi i32 [ -5, %if.then40 ], [ 0, %if.end19.if.end50_crit_edge ], [ -5, %if.then27 ]
  %28 = call ptr @memcpy(ptr %e, ptr %arrayidx, i32 32)
  %datalen52 = getelementptr %struct.ice_aq_desc, ptr %16, i32 %conv16, i32 2
  %29 = ptrtoint ptr %datalen52 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %datalen52, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %buf_len = getelementptr inbounds %struct.ice_rq_event_info, ptr %e, i32 0, i32 2
  %32 = ptrtoint ptr %buf_len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %buf_len, align 2
  %34 = tail call i16 @llvm.umin.i16(i16 %31, i16 %33)
  %msg_len = getelementptr inbounds %struct.ice_rq_event_info, ptr %e, i32 0, i32 1
  %35 = ptrtoint ptr %msg_len to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msg_len, align 4
  %msg_buf = getelementptr inbounds %struct.ice_rq_event_info, ptr %e, i32 0, i32 3
  %36 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %msg_buf, align 4
  %tobool61.not = icmp eq ptr %37, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool64.not = icmp eq i16 %34, 0
  %or.cond = select i1 %tobool61.not, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.end50.do.body74_crit_edge, label %if.then65

if.end50.do.body74_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body74

if.then65:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %conv63 = zext i16 %34 to i32
  %r = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %r, align 4
  %arrayidx69 = getelementptr %struct.ice_dma_mem, ptr %39, i32 %conv16
  %40 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx69, align 4
  %42 = call ptr @memcpy(ptr %37, ptr %41, i32 %conv63)
  br label %do.body74

do.body74:                                        ; preds = %if.then65, %if.end50.do.body74_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_clean_rq_elem.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_clean_rq_elem, %if.then86)) #6
          to label %do.end94 [label %if.then86], !srcloc !107

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr89 = getelementptr i8, ptr %hw, i32 -2960
  %43 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr89, align 8
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_clean_rq_elem.__UNIQUE_ID_ddebug635, ptr noundef %dev91, ptr noundef nonnull @.str.18) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then86, %do.body74
  %45 = ptrtoint ptr %msg_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %msg_buf, align 4
  %rq_buf_size = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 6
  %47 = ptrtoint ptr %rq_buf_size to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %rq_buf_size, align 4
  tail call fastcc void @ice_debug_cq(ptr noundef %hw, ptr noundef %arrayidx, ptr noundef %46, i16 noundef zeroext %48)
  %r97 = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %r97 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %r97, align 4
  %51 = call ptr @memset(ptr %arrayidx, i32 0, i32 32)
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 16, ptr %arrayidx, align 4
  %53 = ptrtoint ptr %rq_buf_size to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %rq_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %54)
  %cmp103 = icmp ugt i16 %54, 512
  %spec.store.select222 = select i1 %cmp103, i16 18, i16 16
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %spec.store.select222, ptr %arrayidx, align 4
  %size = getelementptr %struct.ice_dma_mem, ptr %50, i32 %conv16, i32 2
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %conv110 = trunc i32 %57 to i16
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv110)
  %59 = ptrtoint ptr %datalen52 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %datalen52, align 4
  %pa = getelementptr %struct.ice_dma_mem, ptr %50, i32 %conv16, i32 1
  %params = getelementptr %struct.ice_aq_desc, ptr %16, i32 %conv16, i32 6
  %addr_high = getelementptr inbounds %struct.ice_aqc_generic, ptr %params, i32 0, i32 2
  %60 = ptrtoint ptr %addr_high to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %addr_high, align 4
  %61 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pa, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %addr_low = getelementptr inbounds %struct.ice_aqc_generic, ptr %params, i32 0, i32 3
  %64 = ptrtoint ptr %addr_low to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %addr_low, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv16)
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 8
  %68 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tail, align 4
  %add.ptr122 = getelementptr i8, ptr %67, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %65) #6, !srcloc !109
  %inc = add i16 %1, 1
  %num_rq_entries = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 4
  %70 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_rq_entries, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %71)
  %cmp125 = icmp eq i16 %inc, %71
  %spec.store.select = select i1 %cmp125, i16 0, i16 %inc
  %72 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %spec.store.select, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 5
  %73 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv, ptr %next_to_use, align 2
  br label %clean_rq_elem_out

clean_rq_elem_out:                                ; preds = %do.end94, %if.end8.clean_rq_elem_out_crit_edge
  %ret_code.1 = phi i32 [ %ret_code.0, %do.end94 ], [ -114, %if.end8.clean_rq_elem_out_crit_edge ]
  %ntc.0 = phi i16 [ %spec.store.select, %do.end94 ], [ %1, %if.end8.clean_rq_elem_out_crit_edge ]
  %tobool132.not = icmp eq ptr %pending, null
  br i1 %tobool132.not, label %clean_rq_elem_out.clean_rq_elem_err_crit_edge, label %if.then133

clean_rq_elem_out.clean_rq_elem_err_crit_edge:    ; preds = %clean_rq_elem_out
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_rq_elem_err

if.then133:                                       ; preds = %clean_rq_elem_out
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 8
  %76 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %head, align 4
  %add.ptr139 = getelementptr i8, ptr %75, i32 %77
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #6, !srcloc !105
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %80 = ptrtoint ptr %head_mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %head_mask, align 4
  %and145 = and i32 %81, %79
  %conv147 = zext i16 %ntc.0 to i32
  %conv148 = and i32 %and145, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv148, i32 %conv147)
  %cmp149 = icmp ult i32 %conv148, %conv147
  br i1 %cmp149, label %cond.true151, label %if.then133.cond.end156_crit_edge

if.then133.cond.end156_crit_edge:                 ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end156

cond.true151:                                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %count, align 4
  %conv154 = zext i16 %83 to i32
  br label %cond.end156

cond.end156:                                      ; preds = %cond.true151, %if.then133.cond.end156_crit_edge
  %cond157 = phi i32 [ %conv154, %cond.true151 ], [ 0, %if.then133.cond.end156_crit_edge ]
  %sub = sub i32 %and145, %conv147
  %add = add i32 %sub, %cond157
  %conv160 = trunc i32 %add to i16
  %84 = ptrtoint ptr %pending to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv160, ptr %pending, align 2
  br label %clean_rq_elem_err

clean_rq_elem_err:                                ; preds = %cond.end156, %clean_rq_elem_out.clean_rq_elem_err_crit_edge, %if.then6, %do.body
  %ret_code.2 = phi i32 [ %ret_code.1, %cond.end156 ], [ %ret_code.1, %clean_rq_elem_out.clean_rq_elem_err_crit_edge ], [ -5, %if.then6 ], [ -5, %do.body ]
  tail call void @mutex_unlock(ptr noundef %rq_lock) #6
  ret i32 %ret_code.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_q_shutdown(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_shutdown_sq(ptr nocapture noundef readonly %hw, ptr noundef %cq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sq_lock = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %sq_lock, i32 noundef 0) #6
  %sq = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2
  %count = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.shutdown_sq_out_crit_edge, label %do.body

entry.shutdown_sq_out_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %shutdown_sq_out

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 8
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %bal = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 11
  %16 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bal, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %bah = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 10
  %20 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bah, align 4
  %add.ptr25 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #6, !srcloc !109
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count, align 4
  %r = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %do.body.if.end61_crit_edge, label %for.cond.preheader

do.body.if.end61_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.cond.preheader:                               ; preds = %do.body
  %num_sq_entries = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 5
  %25 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_sq_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp2.not = icmp eq i16 %26, 0
  br i1 %cmp2.not, label %for.cond.preheader.if.end61_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end61_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr37 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r, align 4
  %pa = getelementptr %struct.ice_dma_mem, ptr %28, i32 %i.03, i32 1
  %29 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not = icmp eq i32 %30, 0
  br i1 %tobool35.not, label %for.body.for.inc_crit_edge, label %if.then36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ice_dma_mem, ptr %28, i32 %i.03
  %31 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr37, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %size = getelementptr %struct.ice_dma_mem, ptr %28, i32 %i.03, i32 2
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev, i32 noundef %34, ptr noundef %36, i32 noundef %30) #6
  %37 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %r, align 4
  %arrayidx50 = getelementptr %struct.ice_dma_mem, ptr %38, i32 %i.03
  %39 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx50, align 4
  %40 = load ptr, ptr %r, align 4
  %pa55 = getelementptr %struct.ice_dma_mem, ptr %40, i32 %i.03, i32 1
  %41 = ptrtoint ptr %pa55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pa55, align 4
  %42 = load ptr, ptr %r, align 4
  %size59 = getelementptr %struct.ice_dma_mem, ptr %42, i32 %i.03, i32 2
  %43 = ptrtoint ptr %size59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %size59, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.03, 1
  %44 = ptrtoint ptr %num_sq_entries to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_sq_entries, align 2
  %conv = zext i16 %45 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end61_crit_edge

for.inc.if.end61_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end61:                                         ; preds = %for.inc.if.end61_crit_edge, %for.cond.preheader.if.end61_crit_edge, %do.body.if.end61_crit_edge
  %cmd_buf = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd_buf, align 4
  %tobool63.not = icmp eq ptr %47, null
  br i1 %tobool63.not, label %if.end61.if.end72_crit_edge, label %if.then64

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr67 = getelementptr i8, ptr %hw, i32 -2960
  %48 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr67, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev69, ptr noundef nonnull %47) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then64, %if.end61.if.end72_crit_edge
  %add.ptr75 = getelementptr i8, ptr %hw, i32 -2960
  %50 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr75, align 8
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sq, align 4
  tail call void @devm_kfree(ptr noundef %dev77, ptr noundef %53) #6
  %54 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr75, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %desc_buf.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 1
  %size.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 1, i32 2
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 4
  %58 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc_buf.i, align 4
  %pa.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 2, i32 1, i32 1
  %60 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pa.i, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev.i, i32 noundef %57, ptr noundef %59, i32 noundef %61) #6
  %62 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %desc_buf.i, align 4
  %63 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %pa.i, align 4
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %size.i, align 4
  br label %shutdown_sq_out

shutdown_sq_out:                                  ; preds = %if.end72, %entry.shutdown_sq_out_crit_edge
  tail call void @mutex_unlock(ptr noundef %sq_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_shutdown_rq(ptr nocapture noundef readonly %hw, ptr noundef %cq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_lock = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %rq_lock, i32 noundef 0) #6
  %rq = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1
  %count = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.shutdown_rq_out_crit_edge, label %do.body

entry.shutdown_rq_out_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %shutdown_rq_out

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add.ptr13 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %bal = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bal, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %bah = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bah, align 4
  %add.ptr25 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #6, !srcloc !109
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %count, align 4
  %r = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %do.body.if.end61_crit_edge, label %for.cond.preheader

do.body.if.end61_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.cond.preheader:                               ; preds = %do.body
  %num_rq_entries = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 4
  %25 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_rq_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp2.not = icmp eq i16 %26, 0
  br i1 %cmp2.not, label %for.cond.preheader.if.end61_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end61_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr37 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r, align 4
  %pa = getelementptr %struct.ice_dma_mem, ptr %28, i32 %i.03, i32 1
  %29 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not = icmp eq i32 %30, 0
  br i1 %tobool35.not, label %for.body.for.inc_crit_edge, label %if.then36

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ice_dma_mem, ptr %28, i32 %i.03
  %31 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr37, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %size = getelementptr %struct.ice_dma_mem, ptr %28, i32 %i.03, i32 2
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev, i32 noundef %34, ptr noundef %36, i32 noundef %30) #6
  %37 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %r, align 4
  %arrayidx50 = getelementptr %struct.ice_dma_mem, ptr %38, i32 %i.03
  %39 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx50, align 4
  %40 = load ptr, ptr %r, align 4
  %pa55 = getelementptr %struct.ice_dma_mem, ptr %40, i32 %i.03, i32 1
  %41 = ptrtoint ptr %pa55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pa55, align 4
  %42 = load ptr, ptr %r, align 4
  %size59 = getelementptr %struct.ice_dma_mem, ptr %42, i32 %i.03, i32 2
  %43 = ptrtoint ptr %size59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %size59, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.03, 1
  %44 = ptrtoint ptr %num_rq_entries to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %num_rq_entries, align 4
  %conv = zext i16 %45 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end61_crit_edge

for.inc.if.end61_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end61:                                         ; preds = %for.inc.if.end61_crit_edge, %for.cond.preheader.if.end61_crit_edge, %do.body.if.end61_crit_edge
  %cmd_buf = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd_buf, align 4
  %tobool63.not = icmp eq ptr %47, null
  br i1 %tobool63.not, label %if.end61.if.end72_crit_edge, label %if.then64

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr67 = getelementptr i8, ptr %hw, i32 -2960
  %48 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr67, align 8
  %dev69 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev69, ptr noundef nonnull %47) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then64, %if.end61.if.end72_crit_edge
  %add.ptr75 = getelementptr i8, ptr %hw, i32 -2960
  %50 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr75, align 8
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rq, align 4
  tail call void @devm_kfree(ptr noundef %dev77, ptr noundef %53) #6
  %54 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr75, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %desc_buf.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 1
  %size.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 1, i32 2
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 4
  %58 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc_buf.i, align 4
  %pa.i = getelementptr inbounds %struct.ice_ctl_q_info, ptr %cq, i32 0, i32 1, i32 1, i32 1
  %60 = ptrtoint ptr %pa.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pa.i, align 4
  tail call void @dmam_free_coherent(ptr noundef %dev.i, i32 noundef %57, ptr noundef %59, i32 noundef %61) #6
  %62 = ptrtoint ptr %desc_buf.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %desc_buf.i, align 4
  %63 = ptrtoint ptr %pa.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %pa.i, align 4
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %size.i, align 4
  br label %shutdown_rq_out

shutdown_rq_out:                                  ; preds = %if.end72, %entry.shutdown_rq_out_crit_edge
  tail call void @mutex_unlock(ptr noundef %rq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmam_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_cfg_cq_regs(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %ring, i16 noundef zeroext %num_entries) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %head = getelementptr inbounds %struct.ice_ctl_q_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %tail = getelementptr inbounds %struct.ice_ctl_q_ring, ptr %ring, i32 0, i32 8
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %conv = zext i16 %num_entries to i32
  %len_ena_mask = getelementptr inbounds %struct.ice_ctl_q_ring, ptr %ring, i32 0, i32 13
  %8 = ptrtoint ptr %len_ena_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len_ena_mask, align 4
  %or = or i32 %9, %conv
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  %len = getelementptr inbounds %struct.ice_ctl_q_ring, ptr %ring, i32 0, i32 9
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %pa = getelementptr inbounds %struct.ice_ctl_q_ring, ptr %ring, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pa, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %bal = getelementptr inbounds %struct.ice_ctl_q_ring, ptr %ring, i32 0, i32 11
  %20 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bal, align 4
  %add.ptr12 = getelementptr i8, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %17) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %bah = getelementptr inbounds %struct.ice_ctl_q_ring, ptr %ring, i32 0, i32 10
  %24 = ptrtoint ptr %bah to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bah, align 4
  %add.ptr19 = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #6, !srcloc !109
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %28 = ptrtoint ptr %bal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bal, align 4
  %add.ptr22 = getelementptr i8, ptr %27, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #6, !srcloc !105
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  %32 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.not = icmp eq i32 %31, %33
  %. = select i1 %cmp.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_get_fw_ver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 765, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_init_all_ctrlq.__UNIQUE_ID_ddebug613, !1, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 983, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug621, !7, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 995, i32 4}
!12 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug622, !11, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1008, i32 3}
!15 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug623, !14, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1026, i32 3}
!18 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug624, !17, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1054, i32 2}
!21 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug625, !20, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1079, i32 5}
!24 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug626, !23, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1088, i32 4}
!27 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug627, !26, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1101, i32 2}
!30 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug628, !29, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1114, i32 4}
!33 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug629, !32, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1117, i32 4}
!36 = !{ptr @ice_sq_send_cmd.__UNIQUE_ID_ddebug630, !35, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1174, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ice_clean_rq_elem.__UNIQUE_ID_ddebug631, !38, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1196, i32 3}
!43 = !{ptr @ice_clean_rq_elem.__UNIQUE_ID_ddebug632, !42, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 1205, i32 2}
!46 = !{ptr @ice_clean_rq_elem.__UNIQUE_ID_ddebug635, !45, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 516, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ice_aq_ver_check._entry, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @ice_aq_ver_check._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 521, i32 4}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ice_aq_ver_check._entry.23, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ice_aq_ver_check._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 524, i32 4}
!61 = !{ptr @ice_aq_ver_check._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ice_aq_ver_check._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @ice_aq_ver_check._entry.30, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 528, i32 3}
!65 = !{ptr @ice_aq_ver_check._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ice_init_ctrlq_locks.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 793, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ice_init_ctrlq_locks.__key.33, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 794, i32 2}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 873, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ice_clean_sq.__UNIQUE_ID_ddebug614, !73, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 911, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ice_debug_cq.__UNIQUE_ID_ddebug615, !77, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 915, i32 2}
!82 = !{ptr @ice_debug_cq.__UNIQUE_ID_ddebug616, !81, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 918, i32 2}
!85 = !{ptr @ice_debug_cq.__UNIQUE_ID_ddebug617, !84, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 921, i32 2}
!88 = !{ptr @ice_debug_cq.__UNIQUE_ID_ddebug618, !87, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 925, i32 3}
!91 = !{ptr @ice_debug_cq.__UNIQUE_ID_ddebug619, !90, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/ice/ice_controlq.c", i32 929, i32 3}
!94 = !{ptr @ice_debug_cq.__UNIQUE_ID_ddebug620, !93, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!95 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 6780556}
!106 = !{i64 2160090055}
!107 = !{i64 2148760914, i64 2148760919, i64 2148760932, i64 2148760976, i64 2148761010, i64 2148761031}
!108 = !{i64 2160112049}
!109 = !{i64 6780138}
!110 = !{i64 2160213578}
!111 = !{i64 2160229990}
!112 = !{i64 2160202114}
!113 = !{i64 2160247499}
!114 = !{i64 2160248087}
!115 = !{i64 2160159256}
!116 = !{i64 2160164861}
!117 = !{i64 2160264175}
!118 = !{i64 2160278321}
!119 = !{i64 2160279119}
!120 = !{i64 2160121596}
!121 = !{i64 2160122086}
!122 = !{i64 2160122574}
!123 = !{i64 2160123061}
!124 = !{i64 2160123548}
!125 = !{i64 2160146406}
!126 = !{i64 2160146896}
!127 = !{i64 2160147384}
!128 = !{i64 2160147871}
!129 = !{i64 2160148358}
!130 = !{i64 2160108257}
!131 = !{i64 2160108744}
!132 = !{i64 2160109295}
!133 = !{i64 2160110006}
!134 = !{i64 2160110747}
!135 = !{i64 2160111656}
