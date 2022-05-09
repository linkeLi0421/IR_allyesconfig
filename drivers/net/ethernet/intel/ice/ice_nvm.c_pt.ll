; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_nvm.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_nvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ice_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.ice_aqc_generic }
%struct.ice_aqc_generic = type { i32, i32, i32, i32 }
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
%struct.ice_ctl_q_info = type { i32, %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring, i32, i16, i16, i16, i16, i32, %struct.mutex, %struct.mutex }
%struct.ice_ctl_q_ring = type { ptr, %struct.ice_dma_mem, ptr, %union.anon.1, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_dma_mem = type { ptr, i32, i32 }
%union.anon.1 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.203 = type { ptr }
%struct.ice_aqc_nvm = type { i16, i8, i8, i16, i16, i32, i32 }
%struct.ice_orom_civd_info = type <{ [4 x i8], i8, i32, i8, [32 x i16] }>
%struct.ice_aqc_nvm_checksum = type { i8, i8, i16, [12 x i8] }
%struct.ice_aqc_nvm_pkg_data = type { [3 x i8], i8, i32, i32, i32 }
%struct.ice_aqc_nvm_pass_comp_tbl = type { i8, i8, i8, i8, i32, i32, i32 }

@ice_read_flat_nvm.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ice_read_flat_nvm\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/ice/ice_nvm.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"NVM error: requested offset is beyond Shadow RAM limit\0A\00", [40 x i8] zeroinitializer }, align 32
@ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_get_pfa_module_tlv\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Preserved Field Array pointer.\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read PFA length.\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read TLV type.\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read TLV length.\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_read_pba_string.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_read_pba_string\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read PBA Block TLV.\0A\00", [33 x i8] zeroinitializer }, align 32
@ice_read_pba_string.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read PBA Section size.\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_read_pba_string.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid PBA Block TLV size.\0A\00", [35 x i8] zeroinitializer }, align 32
@ice_read_pba_string.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Buffer too small for PBA data.\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_read_pba_string.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read PBA Block word %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_init_nvm.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ice_init_nvm\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NVM init error: unsupported blank mode.\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_init_nvm.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 1, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NVM init error: failed to discover flash size.\0A\00", [48 x i8] zeroinitializer }, align 32
@ice_init_nvm.__UNIQUE_ID_ddebug652 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to determine active flash banks.\0A\00", [55 x i8] zeroinitializer }, align 32
@ice_init_nvm.__UNIQUE_ID_ddebug653 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read NVM info.\0A\00", [38 x i8] zeroinitializer }, align 32
@ice_init_nvm.__UNIQUE_ID_ddebug654 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.20, i8 1, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read Option ROM info.\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_init_nvm.__UNIQUE_ID_ddebug655 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.21, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read netlist info.\0A\00", [34 x i8] zeroinitializer }, align 32
@ice_get_nvm_ver_info.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_get_nvm_ver_info\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read DEV starter version.\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_get_nvm_ver_info.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read EETRACK lo.\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_get_nvm_ver_info.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read EETRACK hi.\0A\00", [36 x i8] zeroinitializer }, align 32
@ice_read_flash_module.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_read_flash_module\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unable to calculate flash bank offset for module 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_get_flash_bank_offset.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice_get_flash_bank_offset\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unexpected value for flash module: 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@ice_get_flash_bank_offset.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unexpected value for active flash bank: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_get_flash_bank_offset.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unexpected value for flash bank selection: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@ice_get_orom_ver_info.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_get_orom_ver_info\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to locate valid Option ROM CIVD data\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_get_orom_civd_data.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_get_orom_civd_data\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to read Option ROM data\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"$CIV\00", [27 x i8] zeroinitializer }, align 32
@ice_get_orom_civd_data.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.37, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Found CIVD section at offset %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_get_orom_civd_data.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.38, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Found CIVD data with invalid checksum of %u\0A\00", [51 x i8] zeroinitializer }, align 32
@ice_get_orom_civd_data.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.39, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to locate CIVD data within the Option ROM\0A\00", [46 x i8] zeroinitializer }, align 32
@ice_get_netlist_info.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ice_get_netlist_info\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Expected netlist module_id ID of 0x%04x, but got 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@ice_get_netlist_info.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Netlist Link Topology module too small. Expected at least %u words, but got %u words.\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_discover_flash_size.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ice_discover_flash_size\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: New upper bound of %u bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_discover_flash_size.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: New lower bound of %u bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_discover_flash_size.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Predicted flash size is %u bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ice_determine_active_flash_banks\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to read the Shadow RAM control word\0A\00", [52 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Shadow RAM control word is invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug644 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read NVM bank pointer\0A\00", [63 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.51, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read NVM bank area size\0A\00", [61 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.52, i8 0, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read OROM bank pointer\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug647 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.53, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read OROM bank area size\0A\00", [60 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.54, i8 0, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read Netlist bank pointer\0A\00", [59 x i8] zeroinitializer }, align 32
@ice_determine_active_flash_banks.__UNIQUE_ID_ddebug649 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.55, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read Netlist bank area size\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 16, i64 66, i64 68, i64 70]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 78, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 450, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 455, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 469, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 475, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 513, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 520, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 525, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 534, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 541, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1042, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1048, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1054, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1060, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1066, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1071, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 570, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 579, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 584, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 329, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 271, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 283, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 299, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 703, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 644, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 656, i32 14 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 659, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 668, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 678, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 753, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 764, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 846, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 851, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 860, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 948, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 954, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 975, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 981, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 987, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 993, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 999, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [44 x i8] c"../drivers/net/ethernet/intel/ice/ice_nvm.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1005, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %offset, ptr nocapture noundef %length, ptr noundef %data, i1 noundef zeroext %read_shadow_ram) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  store i32 0, ptr %length, align 4
  br i1 %read_shadow_ram, label %land.lhs.true, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %add = add i32 %1, %offset
  %sr_words = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 4
  %2 = ptrtoint ptr %sr_words to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sr_words, align 4
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp = icmp ugt i32 %add, %mul
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_flat_nvm.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_flat_nvm, %if.then6)) #7
          to label %cleanup36 [label %if.then6], !srcloc !148

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_flat_nvm.__UNIQUE_ID_ddebug613, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup36

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %6 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6
  %7 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i, i32 0, i32 6, i32 0, i32 1
  %cmd_flags.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %6, i32 0, i32 2
  %offset_high.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %6, i32 0, i32 1
  %length19.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %6, i32 0, i32 4
  br label %do.body9

do.body9:                                         ; preds = %ice_aq_read_nvm.exit.do.body9_crit_edge, %if.end8
  %bytes_read.0 = phi i32 [ 0, %if.end8 ], [ %bytes_read.1, %ice_aq_read_nvm.exit.do.body9_crit_edge ]
  %offset.addr.0 = phi i32 [ %offset, %if.end8 ], [ %offset.addr.1, %ice_aq_read_nvm.exit.do.body9_crit_edge ]
  %rem = and i32 %offset.addr.0, 4095
  %sub = sub nuw nsw i32 4096, %rem
  %sub10 = sub i32 %1, %bytes_read.0
  %8 = call i32 @llvm.umin.i32(i32 %sub, i32 %sub10)
  %add14 = add i32 %8, %bytes_read.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %1)
  %cmp15 = icmp uge i32 %add14, %1
  %conv20 = trunc i32 %8 to i16
  %add.ptr21 = getelementptr i8, ptr %data, i32 %bytes_read.0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %offset.addr.0)
  %cmp.i = icmp ugt i32 %offset.addr.0, 16777215
  %9 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  br i1 %cmp.i, label %ice_aq_read_nvm.exit.thread, label %if.end.i

ice_aq_read_nvm.exit.thread:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  br label %do.end35

if.end.i:                                         ; preds = %do.body9
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 1793) #7
  br i1 %read_shadow_ram, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_flags.i, align 1
  %12 = or i8 %11, -128
  store i8 %12, ptr %cmd_flags.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  br i1 %cmp15, label %if.then9.i, label %if.end7.i.ice_aq_read_nvm.exit_crit_edge

if.end7.i.ice_aq_read_nvm.exit_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_aq_read_nvm.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd_flags.i, align 1
  %15 = or i8 %14, 1
  store i8 %15, ptr %cmd_flags.i, align 1
  br label %ice_aq_read_nvm.exit

ice_aq_read_nvm.exit:                             ; preds = %if.then9.i, %if.end7.i.ice_aq_read_nvm.exit_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %7, align 4
  %conv16.i = trunc i32 %offset.addr.0 to i16
  %17 = call i16 @llvm.bswap.i16(i16 %conv16.i) #7
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %6, align 4
  %shr.i = lshr i32 %offset.addr.0, 16
  %conv18.i = trunc i32 %shr.i to i8
  %19 = ptrtoint ptr %offset_high.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18.i, ptr %offset_high.i, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %conv20) #7
  %21 = ptrtoint ptr %length19.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %length19.i, align 2
  %call.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %add.ptr21, i16 noundef zeroext %conv20, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  %bytes_read.1 = select i1 %tobool25.not, i32 %add14, i32 %bytes_read.0
  %add29 = select i1 %tobool25.not, i32 %8, i32 0
  %offset.addr.1 = add nuw nsw i32 %add29, %offset.addr.0
  %tobool25.not.not = xor i1 %tobool25.not, true
  %brmerge = select i1 %tobool25.not.not, i1 true, i1 %cmp15
  br i1 %brmerge, label %ice_aq_read_nvm.exit.do.end35_crit_edge, label %ice_aq_read_nvm.exit.do.body9_crit_edge

ice_aq_read_nvm.exit.do.body9_crit_edge:          ; preds = %ice_aq_read_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

ice_aq_read_nvm.exit.do.end35_crit_edge:          ; preds = %ice_aq_read_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end35:                                         ; preds = %ice_aq_read_nvm.exit.do.end35_crit_edge, %ice_aq_read_nvm.exit.thread
  %bytes_read.171 = phi i32 [ %bytes_read.0, %ice_aq_read_nvm.exit.thread ], [ %bytes_read.1, %ice_aq_read_nvm.exit.do.end35_crit_edge ]
  %retval.0.i6170 = phi i32 [ -22, %ice_aq_read_nvm.exit.thread ], [ %call.i, %ice_aq_read_nvm.exit.do.end35_crit_edge ]
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bytes_read.171, ptr %length, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %do.end35, %if.then6, %do.body
  %retval.0 = phi i32 [ %retval.0.i6170, %do.end35 ], [ -22, %if.then6 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_update_nvm(ptr noundef %hw, i16 noundef zeroext %module_typeid, i32 noundef %offset, i16 noundef zeroext %length, ptr noundef %data, i1 noundef zeroext %last_command, i8 noundef zeroext %command_flags, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 16777216
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1795) #7
  %cmd_flags = getelementptr inbounds %struct.ice_aqc_nvm, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd_flags, align 1
  %5 = zext i1 %last_command to i8
  %or28 = or i8 %5, %command_flags
  %spec.select = or i8 %or28, %4
  store i8 %spec.select, ptr %cmd_flags, align 1
  %6 = call i16 @llvm.bswap.i16(i16 %module_typeid)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 4
  %conv12 = trunc i32 %offset to i16
  %8 = call i16 @llvm.bswap.i16(i16 %conv12)
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %2, align 4
  %shr = lshr i32 %offset, 16
  %conv14 = trunc i32 %shr to i8
  %offset_high = getelementptr inbounds %struct.ice_aqc_nvm, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %offset_high to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %offset_high, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %length)
  %length15 = getelementptr inbounds %struct.ice_aqc_nvm, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %length15 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %length15, align 2
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %desc, align 4
  %15 = or i16 %14, 4
  store i16 %15, ptr %desc, align 4
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %data, i16 noundef zeroext %length, ptr noundef %cd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_fill_dflt_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_aq_send_cmd(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_erase_nvm(ptr noundef %hw, i16 noundef zeroext %module_typeid, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1794) #7
  %3 = call i16 @llvm.bswap.i16(i16 %module_typeid)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %1, align 4
  %length = getelementptr inbounds %struct.ice_aqc_nvm, ptr %0, i32 0, i32 4
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %length, align 2
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %0, align 4
  %offset_high = getelementptr inbounds %struct.ice_aqc_nvm, ptr %0, i32 0, i32 1
  %7 = ptrtoint ptr %offset_high to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %offset_high, align 2
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef %cd) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_acquire_nvm(ptr noundef %hw, i32 noundef %access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef %access, i32 noundef 180000) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_acquire_res(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_release_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ice_release_res(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_read_sr_word(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %bytes.i = alloca i32, align 4
  %data_local.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

ice_acquire_nvm.exit:                             ; preds = %entry
  %call.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %ice_acquire_nvm.exit.if.then_crit_edge, label %ice_acquire_nvm.exit.if.end_crit_edge

ice_acquire_nvm.exit.if.end_crit_edge:            ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ice_acquire_nvm.exit.if.then_crit_edge:           ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %ice_acquire_nvm.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i) #7
  %2 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %bytes.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i) #7
  %3 = ptrtoint ptr %data_local.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_local.i, align 2, !annotation !149
  %conv.i = zext i16 %offset to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %call.i5 = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i, ptr noundef nonnull %bytes.i, ptr noundef nonnull %data_local.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not.i6 = icmp eq i32 %call.i5, 0
  br i1 %tobool.not.i6, label %if.end.i7, label %if.then.ice_read_sr_word_aq.exit_crit_edge

if.then.ice_read_sr_word_aq.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit

if.end.i7:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data_local.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_local.i, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5) #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %data, align 2
  br label %ice_read_sr_word_aq.exit

ice_read_sr_word_aq.exit:                         ; preds = %if.end.i7, %if.then.ice_read_sr_word_aq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i) #7
  %8 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i9 = icmp eq i8 %9, 0
  br i1 %tobool.not.i9, label %if.end.i10, label %ice_read_sr_word_aq.exit.if.end_crit_edge

ice_read_sr_word_aq.exit.if.end_crit_edge:        ; preds = %ice_read_sr_word_aq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i10:                                       ; preds = %ice_read_sr_word_aq.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i10, %ice_read_sr_word_aq.exit.if.end_crit_edge, %ice_acquire_nvm.exit.if.end_crit_edge
  %status.0 = phi i32 [ %call.i, %ice_acquire_nvm.exit.if.end_crit_edge ], [ %call.i5, %ice_read_sr_word_aq.exit.if.end_crit_edge ], [ %call.i5, %if.end.i10 ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_pfa_module_tlv(ptr noundef %hw, ptr nocapture noundef writeonly %module_tlv, ptr nocapture noundef writeonly %module_tlv_len, i16 noundef zeroext %module_type) local_unnamed_addr #0 align 64 {
entry:
  %bytes.i.i170 = alloca i32, align 4
  %data_local.i.i171 = alloca i16, align 2
  %bytes.i.i152 = alloca i32, align 4
  %data_local.i.i153 = alloca i16, align 2
  %bytes.i.i136 = alloca i32, align 4
  %data_local.i.i137 = alloca i16, align 2
  %bytes.i.i = alloca i32, align 4
  %data_local.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %ice_acquire_nvm.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

ice_acquire_nvm.exit.i:                           ; preds = %entry
  %call.i.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit.i.if.then.i_crit_edge, label %ice_acquire_nvm.exit.i.do.body_crit_edge

ice_acquire_nvm.exit.i.do.body_crit_edge:         ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

ice_acquire_nvm.exit.i.if.then.i_crit_edge:       ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %ice_acquire_nvm.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %2 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %bytes.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i) #7
  %3 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_local.i.i, align 2, !annotation !149
  %call.i5.i = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef 128, ptr noundef nonnull %bytes.i.i, ptr noundef nonnull %data_local.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge

if.then.i.ice_read_sr_word_aq.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i

if.end.i7.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_local.i.i, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5) #7
  br label %ice_read_sr_word_aq.exit.i

ice_read_sr_word_aq.exit.i:                       ; preds = %if.end.i7.i, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge
  %pfa_ptr.0 = phi i16 [ %6, %if.end.i7.i ], [ -1, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %7 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i9.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i9.i, label %if.end.i10.i, label %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge

ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit

if.end.i10.i:                                     ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit

ice_read_sr_word.exit:                            ; preds = %if.end.i10.i, %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge
  br i1 %tobool.not.i6.i, label %if.end7, label %ice_read_sr_word.exit.do.body_crit_edge

ice_read_sr_word.exit.do.body_crit_edge:          ; preds = %ice_read_sr_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %ice_read_sr_word.exit.do.body_crit_edge, %ice_acquire_nvm.exit.i.do.body_crit_edge
  %status.0.i196 = phi i32 [ %call.i5.i, %ice_read_sr_word.exit.do.body_crit_edge ], [ %call.i.i, %ice_acquire_nvm.exit.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_pfa_module_tlv, %if.then5)) #7
          to label %cleanup107 [label %if.then5], !srcloc !148

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug620, ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  br label %cleanup107

if.end7:                                          ; preds = %ice_read_sr_word.exit
  %11 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i139 = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i139, label %ice_acquire_nvm.exit.i142, label %if.end7.if.then.i145_crit_edge

if.end7.if.then.i145_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i145

ice_acquire_nvm.exit.i142:                        ; preds = %if.end7
  %call.i.i140 = call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %tobool.not.i141 = icmp eq i32 %call.i.i140, 0
  br i1 %tobool.not.i141, label %ice_acquire_nvm.exit.i142.if.then.i145_crit_edge, label %ice_acquire_nvm.exit.i142.do.body11_crit_edge

ice_acquire_nvm.exit.i142.do.body11_crit_edge:    ; preds = %ice_acquire_nvm.exit.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

ice_acquire_nvm.exit.i142.if.then.i145_crit_edge: ; preds = %ice_acquire_nvm.exit.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i145

if.then.i145:                                     ; preds = %ice_acquire_nvm.exit.i142.if.then.i145_crit_edge, %if.end7.if.then.i145_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i136) #7
  %13 = ptrtoint ptr %bytes.i.i136 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %bytes.i.i136, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i137) #7
  %14 = ptrtoint ptr %data_local.i.i137 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %data_local.i.i137, align 2, !annotation !149
  %conv.i.i = zext i16 %pfa_ptr.0 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %call.i5.i143 = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i.i, ptr noundef nonnull %bytes.i.i136, ptr noundef nonnull %data_local.i.i137, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i143)
  %tobool.not.i6.i144 = icmp eq i32 %call.i5.i143, 0
  br i1 %tobool.not.i6.i144, label %if.end.i7.i146, label %if.then.i145.ice_read_sr_word_aq.exit.i148_crit_edge

if.then.i145.ice_read_sr_word_aq.exit.i148_crit_edge: ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i148

if.end.i7.i146:                                   ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %data_local.i.i137 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data_local.i.i137, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16) #7
  %phi.cast = zext i16 %17 to i32
  br label %ice_read_sr_word_aq.exit.i148

ice_read_sr_word_aq.exit.i148:                    ; preds = %if.end.i7.i146, %if.then.i145.ice_read_sr_word_aq.exit.i148_crit_edge
  %pfa_len.0 = phi i32 [ %phi.cast, %if.end.i7.i146 ], [ 65535, %if.then.i145.ice_read_sr_word_aq.exit.i148_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i137) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i136) #7
  %18 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i9.i147 = icmp eq i8 %19, 0
  br i1 %tobool.not.i9.i147, label %if.end.i10.i149, label %ice_read_sr_word_aq.exit.i148.ice_read_sr_word.exit151_crit_edge

ice_read_sr_word_aq.exit.i148.ice_read_sr_word.exit151_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit151

if.end.i10.i149:                                  ; preds = %ice_read_sr_word_aq.exit.i148
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit151

ice_read_sr_word.exit151:                         ; preds = %if.end.i10.i149, %ice_read_sr_word_aq.exit.i148.ice_read_sr_word.exit151_crit_edge
  br i1 %tobool.not.i6.i144, label %if.end32, label %ice_read_sr_word.exit151.do.body11_crit_edge

ice_read_sr_word.exit151.do.body11_crit_edge:     ; preds = %ice_read_sr_word.exit151
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.body11:                                        ; preds = %ice_read_sr_word.exit151.do.body11_crit_edge, %ice_acquire_nvm.exit.i142.do.body11_crit_edge
  %status.0.i150202 = phi i32 [ %call.i5.i143, %ice_read_sr_word.exit151.do.body11_crit_edge ], [ %call.i.i140, %ice_acquire_nvm.exit.i142.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_pfa_module_tlv, %if.then23)) #7
          to label %cleanup107 [label %if.then23], !srcloc !148

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26 = getelementptr i8, ptr %hw, i32 -2960
  %20 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr26, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug621, ptr noundef %dev28, ptr noundef nonnull @.str.6) #7
  br label %cleanup107

if.end32:                                         ; preds = %ice_read_sr_word.exit151
  %add = add i16 %pfa_ptr.0, 1
  %add37 = add nuw nsw i32 %pfa_len.0, %conv.i.i
  %conv34232 = zext i16 %add to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add37, i32 %conv34232)
  %cmp233 = icmp ugt i32 %add37, %conv34232
  br i1 %cmp233, label %if.end32.while.body_crit_edge, label %if.end32.cleanup107_crit_edge

if.end32.cleanup107_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  br label %while.body

while.body:                                       ; preds = %if.end100.while.body_crit_edge, %if.end32.while.body_crit_edge
  %conv34235 = phi i32 [ %conv34, %if.end100.while.body_crit_edge ], [ %conv34232, %if.end32.while.body_crit_edge ]
  %next_tlv.0234 = phi i16 [ %add104, %if.end100.while.body_crit_edge ], [ %add, %if.end32.while.body_crit_edge ]
  %22 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i155 = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i155, label %ice_acquire_nvm.exit.i158, label %while.body.if.then.i163_crit_edge

while.body.if.then.i163_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i163

ice_acquire_nvm.exit.i158:                        ; preds = %while.body
  %call.i.i156 = call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %tobool.not.i157 = icmp eq i32 %call.i.i156, 0
  br i1 %tobool.not.i157, label %ice_acquire_nvm.exit.i158.if.then.i163_crit_edge, label %ice_acquire_nvm.exit.i158.do.body42_crit_edge

ice_acquire_nvm.exit.i158.do.body42_crit_edge:    ; preds = %ice_acquire_nvm.exit.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

ice_acquire_nvm.exit.i158.if.then.i163_crit_edge: ; preds = %ice_acquire_nvm.exit.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i163

if.then.i163:                                     ; preds = %ice_acquire_nvm.exit.i158.if.then.i163_crit_edge, %while.body.if.then.i163_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i152) #7
  %24 = ptrtoint ptr %bytes.i.i152 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %bytes.i.i152, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i153) #7
  %25 = ptrtoint ptr %data_local.i.i153 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %data_local.i.i153, align 2, !annotation !149
  %mul.i.i160 = shl nuw nsw i32 %conv34235, 1
  %call.i5.i161 = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i.i160, ptr noundef nonnull %bytes.i.i152, ptr noundef nonnull %data_local.i.i153, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i161)
  %tobool.not.i6.i162 = icmp eq i32 %call.i5.i161, 0
  br i1 %tobool.not.i6.i162, label %if.end.i7.i164, label %if.then.i163.ice_read_sr_word_aq.exit.i166_crit_edge

if.then.i163.ice_read_sr_word_aq.exit.i166_crit_edge: ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i166

if.end.i7.i164:                                   ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %data_local.i.i153 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data_local.i.i153, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27) #7
  br label %ice_read_sr_word_aq.exit.i166

ice_read_sr_word_aq.exit.i166:                    ; preds = %if.end.i7.i164, %if.then.i163.ice_read_sr_word_aq.exit.i166_crit_edge
  %tlv_sub_module_type.0 = phi i16 [ %28, %if.end.i7.i164 ], [ -1, %if.then.i163.ice_read_sr_word_aq.exit.i166_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i153) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i152) #7
  %29 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i9.i165 = icmp eq i8 %30, 0
  br i1 %tobool.not.i9.i165, label %if.end.i10.i167, label %ice_read_sr_word_aq.exit.i166.ice_read_sr_word.exit169_crit_edge

ice_read_sr_word_aq.exit.i166.ice_read_sr_word.exit169_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit169

if.end.i10.i167:                                  ; preds = %ice_read_sr_word_aq.exit.i166
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit169

ice_read_sr_word.exit169:                         ; preds = %if.end.i10.i167, %ice_read_sr_word_aq.exit.i166.ice_read_sr_word.exit169_crit_edge
  br i1 %tobool.not.i6.i162, label %if.end63, label %ice_read_sr_word.exit169.do.body42_crit_edge

ice_read_sr_word.exit169.do.body42_crit_edge:     ; preds = %ice_read_sr_word.exit169
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.body42:                                        ; preds = %ice_read_sr_word.exit169.do.body42_crit_edge, %ice_acquire_nvm.exit.i158.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_pfa_module_tlv, %if.then54)) #7
          to label %cleanup107 [label %if.then54], !srcloc !148

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr57 = getelementptr i8, ptr %hw, i32 -2960
  %31 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr57, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug622, ptr noundef %dev59, ptr noundef nonnull @.str.7) #7
  br label %cleanup107

if.end63:                                         ; preds = %ice_read_sr_word.exit169
  %add65 = add i16 %next_tlv.0234, 1
  %33 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i173 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i173, label %ice_acquire_nvm.exit.i176, label %if.end63.if.then.i181_crit_edge

if.end63.if.then.i181_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i181

ice_acquire_nvm.exit.i176:                        ; preds = %if.end63
  %call.i.i174 = call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174)
  %tobool.not.i175 = icmp eq i32 %call.i.i174, 0
  br i1 %tobool.not.i175, label %ice_acquire_nvm.exit.i176.if.then.i181_crit_edge, label %ice_acquire_nvm.exit.i176.do.body70_crit_edge

ice_acquire_nvm.exit.i176.do.body70_crit_edge:    ; preds = %ice_acquire_nvm.exit.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

ice_acquire_nvm.exit.i176.if.then.i181_crit_edge: ; preds = %ice_acquire_nvm.exit.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i181

if.then.i181:                                     ; preds = %ice_acquire_nvm.exit.i176.if.then.i181_crit_edge, %if.end63.if.then.i181_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i170) #7
  %35 = ptrtoint ptr %bytes.i.i170 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %bytes.i.i170, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i171) #7
  %36 = ptrtoint ptr %data_local.i.i171 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %data_local.i.i171, align 2, !annotation !149
  %conv.i.i177 = zext i16 %add65 to i32
  %mul.i.i178 = shl nuw nsw i32 %conv.i.i177, 1
  %call.i5.i179 = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i.i178, ptr noundef nonnull %bytes.i.i170, ptr noundef nonnull %data_local.i.i171, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i179)
  %tobool.not.i6.i180 = icmp eq i32 %call.i5.i179, 0
  br i1 %tobool.not.i6.i180, label %if.end.i7.i182, label %if.then.i181.ice_read_sr_word_aq.exit.i184_crit_edge

if.then.i181.ice_read_sr_word_aq.exit.i184_crit_edge: ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i184

if.end.i7.i182:                                   ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %data_local.i.i171 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data_local.i.i171, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38) #7
  br label %ice_read_sr_word_aq.exit.i184

ice_read_sr_word_aq.exit.i184:                    ; preds = %if.end.i7.i182, %if.then.i181.ice_read_sr_word_aq.exit.i184_crit_edge
  %tlv_len.0 = phi i16 [ %39, %if.end.i7.i182 ], [ -1, %if.then.i181.ice_read_sr_word_aq.exit.i184_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i171) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i170) #7
  %40 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i9.i183 = icmp eq i8 %41, 0
  br i1 %tobool.not.i9.i183, label %if.end.i10.i185, label %ice_read_sr_word_aq.exit.i184.ice_read_sr_word.exit187_crit_edge

ice_read_sr_word_aq.exit.i184.ice_read_sr_word.exit187_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit187

if.end.i10.i185:                                  ; preds = %ice_read_sr_word_aq.exit.i184
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit187

ice_read_sr_word.exit187:                         ; preds = %if.end.i10.i185, %ice_read_sr_word_aq.exit.i184.ice_read_sr_word.exit187_crit_edge
  br i1 %tobool.not.i6.i180, label %if.end91, label %ice_read_sr_word.exit187.do.body70_crit_edge

ice_read_sr_word.exit187.do.body70_crit_edge:     ; preds = %ice_read_sr_word.exit187
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

do.body70:                                        ; preds = %ice_read_sr_word.exit187.do.body70_crit_edge, %ice_acquire_nvm.exit.i176.do.body70_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_pfa_module_tlv, %if.then82)) #7
          to label %cleanup107 [label %if.then82], !srcloc !148

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr85 = getelementptr i8, ptr %hw, i32 -2960
  %42 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr85, align 8
  %dev87 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug623, ptr noundef %dev87, ptr noundef nonnull @.str.8) #7
  br label %cleanup107

if.end91:                                         ; preds = %ice_read_sr_word.exit187
  call void @__sanitizer_cov_trace_cmp2(i16 %tlv_sub_module_type.0, i16 %module_type)
  %cmp94 = icmp eq i16 %tlv_sub_module_type.0, %module_type
  br i1 %cmp94, label %if.then96, label %if.end100

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tlv_len.0)
  %tobool97.not = icmp eq i16 %tlv_len.0, 0
  br i1 %tobool97.not, label %if.then96.cleanup107_crit_edge, label %if.then98

if.then96.cleanup107_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

if.then98:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %module_tlv to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %next_tlv.0234, ptr %module_tlv, align 2
  %45 = ptrtoint ptr %module_tlv_len to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %tlv_len.0, ptr %module_tlv_len, align 2
  br label %cleanup107

if.end100:                                        ; preds = %if.end91
  %add103 = add i16 %next_tlv.0234, 2
  %add104 = add i16 %add103, %tlv_len.0
  %conv34 = zext i16 %add104 to i32
  %cmp = icmp ugt i32 %add37, %conv34
  br i1 %cmp, label %if.end100.while.body_crit_edge, label %if.end100.cleanup107_crit_edge

if.end100.cleanup107_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup107

if.end100.while.body_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup107:                                       ; preds = %if.end100.cleanup107_crit_edge, %if.then98, %if.then96.cleanup107_crit_edge, %if.then82, %do.body70, %if.then54, %do.body42, %if.end32.cleanup107_crit_edge, %if.then23, %do.body11, %if.then5, %do.body
  %retval.2 = phi i32 [ %status.0.i196, %if.then5 ], [ %status.0.i150202, %if.then23 ], [ %status.0.i196, %do.body ], [ %status.0.i150202, %do.body11 ], [ -22, %if.then96.cleanup107_crit_edge ], [ 0, %if.then98 ], [ -2, %if.then82 ], [ -2, %if.then54 ], [ -2, %do.body42 ], [ -2, %do.body70 ], [ -2, %if.end32.cleanup107_crit_edge ], [ -2, %if.end100.cleanup107_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_read_pba_string(ptr noundef %hw, ptr nocapture noundef writeonly %pba_num, i32 noundef %pba_num_size) local_unnamed_addr #0 align 64 {
entry:
  %bytes.i.i174 = alloca i32, align 4
  %data_local.i.i175 = alloca i16, align 2
  %bytes.i.i = alloca i32, align 4
  %data_local.i.i = alloca i16, align 2
  %pba_tlv = alloca i16, align 2
  %pba_tlv_len = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pba_tlv) #7
  %0 = ptrtoint ptr %pba_tlv to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pba_tlv, align 2, !annotation !149
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pba_tlv_len) #7
  %1 = ptrtoint ptr %pba_tlv_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %pba_tlv_len, align 2, !annotation !149
  %call = call i32 @ice_get_pfa_module_tlv(ptr noundef %hw, ptr noundef nonnull %pba_tlv, ptr noundef nonnull %pba_tlv_len, i16 noundef zeroext 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_pba_string.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_pba_string, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !148

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_pba_string.__UNIQUE_ID_ddebug624, ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %pba_tlv to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pba_tlv, align 2
  %add = add i16 %5, 2
  %blank_nvm_mode.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %6 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %ice_acquire_nvm.exit.i, label %if.end7.if.then.i_crit_edge

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

ice_acquire_nvm.exit.i:                           ; preds = %if.end7
  %call.i.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit.i.if.then.i_crit_edge, label %ice_acquire_nvm.exit.i.do.body12_crit_edge

ice_acquire_nvm.exit.i.do.body12_crit_edge:       ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

ice_acquire_nvm.exit.i.if.then.i_crit_edge:       ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %ice_acquire_nvm.exit.i.if.then.i_crit_edge, %if.end7.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %8 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %bytes.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i) #7
  %9 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data_local.i.i, align 2, !annotation !149
  %conv.i.i = zext i16 %add to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %call.i5.i = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i.i, ptr noundef nonnull %bytes.i.i, ptr noundef nonnull %data_local.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge

if.then.i.ice_read_sr_word_aq.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i

if.end.i7.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_local.i.i, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11) #7
  br label %ice_read_sr_word_aq.exit.i

ice_read_sr_word_aq.exit.i:                       ; preds = %if.end.i7.i, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge
  %pba_size.0 = phi i16 [ %12, %if.end.i7.i ], [ -1, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %13 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i9.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i9.i, label %if.end.i10.i, label %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge

ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit

if.end.i10.i:                                     ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit

ice_read_sr_word.exit:                            ; preds = %if.end.i10.i, %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge
  br i1 %tobool.not.i6.i, label %if.end33, label %ice_read_sr_word.exit.do.body12_crit_edge

ice_read_sr_word.exit.do.body12_crit_edge:        ; preds = %ice_read_sr_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

do.body12:                                        ; preds = %ice_read_sr_word.exit.do.body12_crit_edge, %ice_acquire_nvm.exit.i.do.body12_crit_edge
  %status.0.i197 = phi i32 [ %call.i5.i, %ice_read_sr_word.exit.do.body12_crit_edge ], [ %call.i.i, %ice_acquire_nvm.exit.i.do.body12_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_pba_string.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_pba_string, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !148

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr27 = getelementptr i8, ptr %hw, i32 -2960
  %15 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr27, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_pba_string.__UNIQUE_ID_ddebug625, ptr noundef %dev29, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end33:                                         ; preds = %ice_read_sr_word.exit
  %17 = ptrtoint ptr %pba_tlv_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pba_tlv_len, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %pba_size.0)
  %cmp = icmp ult i16 %18, %pba_size.0
  br i1 %cmp, label %do.body38, label %if.end59

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_pba_string.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_pba_string, %if.then50)) #7
          to label %cleanup [label %if.then50], !srcloc !148

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr53 = getelementptr i8, ptr %hw, i32 -2960
  %19 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr53, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_pba_string.__UNIQUE_ID_ddebug626, ptr noundef %dev55, ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end59:                                         ; preds = %if.end33
  %dec = add i16 %pba_size.0, -1
  %conv60 = zext i16 %dec to i32
  %mul = shl nuw nsw i32 %conv60, 1
  %add61 = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %pba_num_size)
  %cmp62 = icmp ugt i32 %add61, %pba_num_size
  br i1 %cmp62, label %do.body65, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp89214.not = icmp eq i16 %dec, 0
  br i1 %cmp89214.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add93 = add i16 %5, 3
  br label %for.body

do.body65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_pba_string.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_pba_string, %if.then77)) #7
          to label %cleanup [label %if.then77], !srcloc !148

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr80 = getelementptr i8, ptr %hw, i32 -2960
  %21 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr80, align 8
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_pba_string.__UNIQUE_ID_ddebug627, ptr noundef %dev82, ptr noundef nonnull @.str.13) #7
  br label %cleanup

for.body:                                         ; preds = %if.end122.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end122.for.body_crit_edge ]
  %pba_word.0.off8216 = phi i8 [ -1, %for.body.lr.ph ], [ %pba_word.1.off8, %if.end122.for.body_crit_edge ]
  %pba_word.0.off0215 = phi i8 [ -1, %for.body.lr.ph ], [ %pba_word.1.off0, %if.end122.for.body_crit_edge ]
  %23 = trunc i32 %indvars.iv to i16
  %add95 = add i16 %add93, %23
  %24 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i177 = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i177, label %ice_acquire_nvm.exit.i180, label %for.body.if.then.i185_crit_edge

for.body.if.then.i185_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i185

ice_acquire_nvm.exit.i180:                        ; preds = %for.body
  %call.i.i178 = call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %tobool.not.i179 = icmp eq i32 %call.i.i178, 0
  br i1 %tobool.not.i179, label %ice_acquire_nvm.exit.i180.if.then.i185_crit_edge, label %ice_acquire_nvm.exit.i180.do.body100_crit_edge

ice_acquire_nvm.exit.i180.do.body100_crit_edge:   ; preds = %ice_acquire_nvm.exit.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100

ice_acquire_nvm.exit.i180.if.then.i185_crit_edge: ; preds = %ice_acquire_nvm.exit.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i185

if.then.i185:                                     ; preds = %ice_acquire_nvm.exit.i180.if.then.i185_crit_edge, %for.body.if.then.i185_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i174) #7
  %26 = ptrtoint ptr %bytes.i.i174 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %bytes.i.i174, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i175) #7
  %27 = ptrtoint ptr %data_local.i.i175 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %data_local.i.i175, align 2, !annotation !149
  %conv.i.i181 = zext i16 %add95 to i32
  %mul.i.i182 = shl nuw nsw i32 %conv.i.i181, 1
  %call.i5.i183 = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i.i182, ptr noundef nonnull %bytes.i.i174, ptr noundef nonnull %data_local.i.i175, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i183)
  %tobool.not.i6.i184 = icmp eq i32 %call.i5.i183, 0
  br i1 %tobool.not.i6.i184, label %if.end.i7.i186, label %if.then.i185.ice_read_sr_word_aq.exit.i188_crit_edge

if.then.i185.ice_read_sr_word_aq.exit.i188_crit_edge: ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i188

if.end.i7.i186:                                   ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %data_local.i.i175 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_local.i.i175, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #7
  %extract.t = trunc i16 %30 to i8
  %extract = lshr i16 %30, 8
  %extract.t207 = trunc i16 %extract to i8
  br label %ice_read_sr_word_aq.exit.i188

ice_read_sr_word_aq.exit.i188:                    ; preds = %if.end.i7.i186, %if.then.i185.ice_read_sr_word_aq.exit.i188_crit_edge
  %pba_word.1.off0 = phi i8 [ %extract.t, %if.end.i7.i186 ], [ %pba_word.0.off0215, %if.then.i185.ice_read_sr_word_aq.exit.i188_crit_edge ]
  %pba_word.1.off8 = phi i8 [ %extract.t207, %if.end.i7.i186 ], [ %pba_word.0.off8216, %if.then.i185.ice_read_sr_word_aq.exit.i188_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i175) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i174) #7
  %31 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i9.i187 = icmp eq i8 %32, 0
  br i1 %tobool.not.i9.i187, label %if.end.i10.i189, label %ice_read_sr_word_aq.exit.i188.ice_read_sr_word.exit191_crit_edge

ice_read_sr_word_aq.exit.i188.ice_read_sr_word.exit191_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit191

if.end.i10.i189:                                  ; preds = %ice_read_sr_word_aq.exit.i188
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit191

ice_read_sr_word.exit191:                         ; preds = %if.end.i10.i189, %ice_read_sr_word_aq.exit.i188.ice_read_sr_word.exit191_crit_edge
  br i1 %tobool.not.i6.i184, label %if.end122, label %ice_read_sr_word.exit191.do.body100_crit_edge

ice_read_sr_word.exit191.do.body100_crit_edge:    ; preds = %ice_read_sr_word.exit191
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100

do.body100:                                       ; preds = %ice_read_sr_word.exit191.do.body100_crit_edge, %ice_acquire_nvm.exit.i180.do.body100_crit_edge
  %status.0.i190204 = phi i32 [ %call.i5.i183, %ice_read_sr_word.exit191.do.body100_crit_edge ], [ %call.i.i178, %ice_acquire_nvm.exit.i180.do.body100_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_pba_string.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_pba_string, %if.then112)) #7
          to label %cleanup [label %if.then112], !srcloc !148

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr115 = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr115, align 8
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_pba_string.__UNIQUE_ID_ddebug628, ptr noundef %dev117, ptr noundef nonnull @.str.14, i32 noundef %indvars.iv) #7
  br label %cleanup

if.end122:                                        ; preds = %ice_read_sr_word.exit191
  %mul126 = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx = getelementptr i8, ptr %pba_num, i32 %mul126
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %pba_word.1.off8, ptr %arrayidx, align 1
  %add132 = or i32 %mul126, 1
  %arrayidx133 = getelementptr i8, ptr %pba_num, i32 %add132
  %36 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %pba_word.1.off0, ptr %arrayidx133, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv60
  br i1 %exitcond.not, label %if.end122.for.end_crit_edge, label %if.end122.for.body_crit_edge

if.end122.for.body_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end122.for.end_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end122.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx136 = getelementptr i8, ptr %pba_num, i32 %mul
  %37 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx136, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then112, %do.body100, %if.then77, %do.body65, %if.then50, %do.body38, %if.then24, %do.body12, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %if.then5 ], [ %status.0.i197, %if.then24 ], [ -22, %if.then50 ], [ -22, %if.then77 ], [ %status.0.i190204, %if.then112 ], [ %call, %do.body ], [ %status.0.i197, %do.body12 ], [ -22, %do.body38 ], [ -22, %do.body65 ], [ %status.0.i190204, %do.body100 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pba_tlv_len) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pba_tlv) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_inactive_nvm_ver(ptr noundef %hw, ptr nocapture noundef writeonly %nvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_get_nvm_ver_info(ptr noundef %hw, i32 noundef 1, ptr noundef %nvm)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_nvm_ver_info(ptr noundef %hw, i32 noundef %bank, ptr nocapture noundef writeonly %nvm) unnamed_addr #0 align 64 {
entry:
  %data_local.i.i93 = alloca i16, align 2
  %data_local.i.i88 = alloca i16, align 2
  %data_local.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i) #7
  %0 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_local.i.i, align 2, !annotation !149
  %call.i.i = call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 66, i32 noundef 752, ptr noundef nonnull %data_local.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_nvm_ver_info, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !148

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug629, ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %3 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data_local.i.i, align 2
  %5 = call i16 @llvm.bswap.i16(i16 %4) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i) #7
  %6 = lshr i16 %5, 12
  %conv8 = trunc i16 %6 to i8
  %major = getelementptr inbounds %struct.ice_nvm_info, ptr %nvm, i32 0, i32 1
  %7 = ptrtoint ptr %major to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv8, ptr %major, align 4
  %conv12 = trunc i16 %5 to i8
  %minor = getelementptr inbounds %struct.ice_nvm_info, ptr %nvm, i32 0, i32 2
  %8 = ptrtoint ptr %minor to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12, ptr %minor, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i88) #7
  %9 = ptrtoint ptr %data_local.i.i88 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %data_local.i.i88, align 2, !annotation !149
  %call.i.i89 = call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 66, i32 noundef 794, ptr noundef nonnull %data_local.i.i88, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %call.i.i89, 0
  br i1 %tobool.not.i.i90, label %if.end37, label %do.body16

do.body16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i88) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_nvm_ver_info, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !148

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr31 = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr31, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug630, ptr noundef %dev33, ptr noundef nonnull @.str.24) #7
  br label %cleanup

if.end37:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %data_local.i.i88 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_local.i.i88, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i88) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i93) #7
  %14 = ptrtoint ptr %data_local.i.i93 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %data_local.i.i93, align 2, !annotation !149
  %call.i.i94 = call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 66, i32 noundef 796, ptr noundef nonnull %data_local.i.i93, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i94)
  %tobool.not.i.i95 = icmp eq i32 %call.i.i94, 0
  br i1 %tobool.not.i.i95, label %if.end62, label %do.body41

do.body41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i93) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_nvm_ver_info, %if.then53)) #7
          to label %cleanup [label %if.then53], !srcloc !148

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr56 = getelementptr i8, ptr %hw, i32 -2960
  %15 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr56, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug631, ptr noundef %dev58, ptr noundef nonnull @.str.25) #7
  br label %cleanup

if.end62:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %data_local.i.i93 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data_local.i.i93, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i93) #7
  %19 = zext i16 %18 to i32
  %20 = zext i16 %13 to i32
  %21 = shl nuw i32 %20, 16
  %22 = or i32 %21, %19
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %nvm to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %nvm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then53, %do.body41, %if.then28, %do.body16, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end62 ], [ %call.i.i, %if.then5 ], [ %call.i.i89, %if.then28 ], [ %call.i.i94, %if.then53 ], [ %call.i.i, %do.body ], [ %call.i.i89, %do.body16 ], [ %call.i.i94, %do.body41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_inactive_orom_ver(ptr noundef %hw, ptr nocapture noundef writeonly %orom) local_unnamed_addr #0 align 64 {
entry:
  %civd.i = alloca %struct.ice_orom_civd_info, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %civd.i) #7
  %0 = call ptr @memset(ptr %civd.i, i32 255, i32 74)
  %call.i = call fastcc i32 @ice_get_orom_civd_data(ptr noundef %hw, i32 noundef 1, ptr noundef nonnull %civd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_orom_ver_info.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_inactive_orom_ver, %if.then5.i)) #7
          to label %ice_get_orom_ver_info.exit [label %if.then5.i], !srcloc !148

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_orom_ver_info.__UNIQUE_ID_ddebug636, ptr noundef %dev.i, ptr noundef nonnull @.str.33) #7
  br label %ice_get_orom_ver_info.exit

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %combo_ver8.i = getelementptr inbounds %struct.ice_orom_civd_info, ptr %civd.i, i32 0, i32 2
  %3 = ptrtoint ptr %combo_ver8.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %combo_ver8.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %shr.i = lshr i32 %5, 24
  %conv.i = trunc i32 %shr.i to i8
  %6 = ptrtoint ptr %orom to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %orom, align 2
  %conv10.i = trunc i32 %5 to i8
  %patch.i = getelementptr inbounds %struct.ice_orom_info, ptr %orom, i32 0, i32 1
  %7 = ptrtoint ptr %patch.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10.i, ptr %patch.i, align 1
  %and11.i = lshr i32 %5, 8
  %conv13.i = trunc i32 %and11.i to i16
  %build.i = getelementptr inbounds %struct.ice_orom_info, ptr %orom, i32 0, i32 2
  %8 = ptrtoint ptr %build.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv13.i, ptr %build.i, align 2
  br label %ice_get_orom_ver_info.exit

ice_get_orom_ver_info.exit:                       ; preds = %if.end7.i, %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %civd.i) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_get_inactive_netlist_ver(ptr noundef %hw, ptr nocapture noundef writeonly %netlist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_get_netlist_info(ptr noundef %hw, i32 noundef 1, ptr noundef %netlist)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_netlist_info(ptr noundef %hw, i32 noundef %bank, ptr nocapture noundef writeonly %netlist) unnamed_addr #0 align 64 {
entry:
  %data_local.i145 = alloca i16, align 2
  %data_local.i140 = alloca i16, align 2
  %data_local.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i) #7
  %0 = ptrtoint ptr %data_local.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_local.i, align 2, !annotation !149
  %call.i = call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 70, i32 noundef 0, ptr noundef nonnull %data_local.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %ice_read_netlist_module.exit

ice_read_netlist_module.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data_local.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data_local.i, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 6913, i16 %2)
  %cmp.not = icmp eq i16 %2, 6913
  br i1 %cmp.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_netlist_info.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_netlist_info, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !148

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %conv9 = zext i16 %3 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_netlist_info.__UNIQUE_ID_ddebug637, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef 283, i32 noundef %conv9) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i140) #7
  %6 = ptrtoint ptr %data_local.i140 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %data_local.i140, align 2, !annotation !149
  %call.i141 = call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 70, i32 noundef 4, ptr noundef nonnull %data_local.i140, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i142 = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i142, label %if.end15, label %ice_read_netlist_module.exit144

ice_read_netlist_module.exit144:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i140) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %data_local.i140 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data_local.i140, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i140) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %9)
  %cmp17 = icmp ult i16 %9, 48
  br i1 %cmp17, label %do.body20, label %if.end42

do.body20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_netlist_info.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_netlist_info, %if.then32)) #7
          to label %cleanup [label %if.then32], !srcloc !148

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr35 = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr35, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %conv38 = zext i16 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_netlist_info.__UNIQUE_ID_ddebug638, ptr noundef %dev37, ptr noundef nonnull @.str.42, i32 noundef 48, i32 noundef %conv38) #7
  br label %cleanup

if.end42:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i145) #7
  %12 = ptrtoint ptr %data_local.i145 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %data_local.i145, align 2, !annotation !149
  %call.i146 = call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 70, i32 noundef 6, ptr noundef nonnull %data_local.i145, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %if.end46, label %ice_read_netlist_module.exit149

ice_read_netlist_module.exit149:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i145) #7
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %13 = ptrtoint ptr %data_local.i145 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_local.i145, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i145) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 96) #10
  %tobool50.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.end52

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end46
  %16 = and i16 %14, -253
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = shl nuw nsw i16 %17, 2
  %narrow = add nuw nsw i16 %18, 12
  %mul55 = zext i16 %narrow to i32
  %call56 = call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 70, i32 noundef %mul55, ptr noundef nonnull %call7.i.i.i, i32 noundef 96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end52.for.body_crit_edge, label %if.end52.exit_error_crit_edge

if.end52.exit_error_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_error

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end52.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end52.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %call7.i.i.i, i32 %indvars.iv
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx65 = getelementptr i16, ptr %call7.i.i.i, i32 3
  %23 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx65, align 2
  %conv66 = zext i16 %24 to i32
  %shl = shl nuw i32 %conv66, 16
  %arrayidx67 = getelementptr i16, ptr %call7.i.i.i, i32 2
  %25 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx67, align 4
  %conv68 = zext i16 %26 to i32
  %or = or i32 %shl, %conv68
  %27 = ptrtoint ptr %netlist to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %netlist, align 4
  %arrayidx69 = getelementptr i16, ptr %call7.i.i.i, i32 5
  %28 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx69, align 2
  %conv70 = zext i16 %29 to i32
  %shl71 = shl nuw i32 %conv70, 16
  %arrayidx72 = getelementptr i16, ptr %call7.i.i.i, i32 4
  %30 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx72, align 8
  %conv73 = zext i16 %31 to i32
  %or74 = or i32 %shl71, %conv73
  %minor = getelementptr inbounds %struct.ice_netlist_info, ptr %netlist, i32 0, i32 1
  %32 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or74, ptr %minor, align 4
  %arrayidx75 = getelementptr i16, ptr %call7.i.i.i, i32 7
  %33 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx75, align 2
  %conv76 = zext i16 %34 to i32
  %shl77 = shl nuw i32 %conv76, 16
  %arrayidx78 = getelementptr i16, ptr %call7.i.i.i, i32 6
  %35 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx78, align 4
  %conv79 = zext i16 %36 to i32
  %or80 = or i32 %shl77, %conv79
  %type = getelementptr inbounds %struct.ice_netlist_info, ptr %netlist, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or80, ptr %type, align 4
  %arrayidx81 = getelementptr i16, ptr %call7.i.i.i, i32 9
  %38 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx81, align 2
  %conv82 = zext i16 %39 to i32
  %shl83 = shl nuw i32 %conv82, 16
  %arrayidx84 = getelementptr i16, ptr %call7.i.i.i, i32 8
  %40 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx84, align 8
  %conv85 = zext i16 %41 to i32
  %or86 = or i32 %shl83, %conv85
  %rev = getelementptr inbounds %struct.ice_netlist_info, ptr %netlist, i32 0, i32 3
  %42 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or86, ptr %rev, align 4
  %arrayidx87 = getelementptr i16, ptr %call7.i.i.i, i32 47
  %43 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx87, align 2
  %cust_ver = getelementptr inbounds %struct.ice_netlist_info, ptr %netlist, i32 0, i32 5
  %45 = ptrtoint ptr %cust_ver to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %cust_ver, align 4
  %arrayidx88 = getelementptr i16, ptr %call7.i.i.i, i32 25
  %46 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx88, align 2
  %conv89 = zext i16 %47 to i32
  %shl90 = shl nuw i32 %conv89, 16
  %arrayidx91 = getelementptr i16, ptr %call7.i.i.i, i32 24
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx91, align 8
  %conv92 = zext i16 %49 to i32
  %or93 = or i32 %shl90, %conv92
  %hash = getelementptr inbounds %struct.ice_netlist_info, ptr %netlist, i32 0, i32 4
  %50 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or93, ptr %hash, align 4
  br label %exit_error

exit_error:                                       ; preds = %for.end, %if.end52.exit_error_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_error, %if.end46.cleanup_crit_edge, %ice_read_netlist_module.exit149, %if.then32, %do.body20, %ice_read_netlist_module.exit144, %if.then7, %do.body, %ice_read_netlist_module.exit
  %retval.0 = phi i32 [ %call56, %exit_error ], [ %call.i, %ice_read_netlist_module.exit ], [ -5, %if.then7 ], [ %call.i141, %ice_read_netlist_module.exit144 ], [ -5, %if.then32 ], [ %call.i146, %ice_read_netlist_module.exit149 ], [ -12, %if.end46.cleanup_crit_edge ], [ -5, %do.body ], [ -5, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_init_nvm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %civd.i = alloca %struct.ice_orom_civd_info, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flash1 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 745728
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %3 = lshr i32 %2, 29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %mul = shl nuw nsw i32 512, %3
  %conv4 = trunc i32 %mul to i16
  %sr_words = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 4
  %4 = ptrtoint ptr %sr_words to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv4, ptr %sr_words, align 4
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr8 = getelementptr i8, ptr %6, i32 745736
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %8 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %blank_nvm_mode13 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %blank_nvm_mode13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %blank_nvm_mode13, align 4
  %call23 = tail call fastcc i32 @ice_discover_flash_size(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end47, label %do.body26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %blank_nvm_mode13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %blank_nvm_mode13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_nvm.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_nvm, %if.then19)) #7
          to label %cleanup [label %if.then19], !srcloc !148

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr21 = getelementptr i8, ptr %hw, i32 -2960
  %11 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr21, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_nvm.__UNIQUE_ID_ddebug650, ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %cleanup

do.body26:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_nvm.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_nvm, %if.then38)) #7
          to label %cleanup [label %if.then38], !srcloc !148

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr41 = getelementptr i8, ptr %hw, i32 -2960
  %13 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr41, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_nvm.__UNIQUE_ID_ddebug651, ptr noundef %dev43, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end47:                                         ; preds = %if.then
  %call48 = tail call fastcc i32 @ice_determine_active_flash_banks(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end72, label %do.body51

do.body51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_nvm.__UNIQUE_ID_ddebug652, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_nvm, %if.then63)) #7
          to label %cleanup [label %if.then63], !srcloc !148

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr66 = getelementptr i8, ptr %hw, i32 -2960
  %15 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr66, align 8
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_nvm.__UNIQUE_ID_ddebug652, ptr noundef %dev68, ptr noundef nonnull @.str.18) #7
  br label %cleanup

if.end72:                                         ; preds = %if.end47
  %nvm = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 1
  %call73 = tail call fastcc i32 @ice_get_nvm_ver_info(ptr noundef %hw, i32 noundef 0, ptr noundef %nvm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end97, label %do.body76

do.body76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_nvm.__UNIQUE_ID_ddebug653, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_nvm, %if.then88)) #7
          to label %cleanup [label %if.then88], !srcloc !148

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr91 = getelementptr i8, ptr %hw, i32 -2960
  %17 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr91, align 8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_nvm.__UNIQUE_ID_ddebug653, ptr noundef %dev93, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end97:                                         ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %civd.i) #7
  %19 = call ptr @memset(ptr %civd.i, i32 255, i32 74)
  %call.i = call fastcc i32 @ice_get_orom_civd_data(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %civd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ice_get_orom_ver_info.exit.thread, label %do.body.i

do.body.i:                                        ; preds = %if.end97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_orom_ver_info.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_nvm, %if.then5.i)) #7
          to label %do.body101 [label %if.then5.i], !srcloc !148

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_orom_ver_info.__UNIQUE_ID_ddebug636, ptr noundef %dev.i, ptr noundef nonnull @.str.33) #7
  br label %do.body101

ice_get_orom_ver_info.exit.thread:                ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %combo_ver8.i = getelementptr inbounds %struct.ice_orom_civd_info, ptr %civd.i, i32 0, i32 2
  %22 = ptrtoint ptr %combo_ver8.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %combo_ver8.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %shr.i = lshr i32 %24, 24
  %conv.i = trunc i32 %shr.i to i8
  %25 = ptrtoint ptr %flash1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %flash1, align 2
  %conv10.i = trunc i32 %24 to i8
  %patch.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 0, i32 1
  %26 = ptrtoint ptr %patch.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.i, ptr %patch.i, align 1
  %and11.i = lshr i32 %24, 8
  %conv13.i = trunc i32 %and11.i to i16
  %build.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 0, i32 2
  %27 = ptrtoint ptr %build.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv13.i, ptr %build.i, align 2
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %civd.i) #7
  br label %if.end122

do.body101:                                       ; preds = %if.then5.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %civd.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_nvm.__UNIQUE_ID_ddebug654, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_nvm, %if.then113)) #7
          to label %if.end122 [label %if.then113], !srcloc !148

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr116 = getelementptr i8, ptr %hw, i32 -2960
  %28 = ptrtoint ptr %add.ptr116 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr116, align 8
  %dev118 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_nvm.__UNIQUE_ID_ddebug654, ptr noundef %dev118, ptr noundef nonnull @.str.20) #7
  br label %if.end122

if.end122:                                        ; preds = %if.then113, %do.body101, %ice_get_orom_ver_info.exit.thread
  %netlist = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 2
  %call123 = tail call fastcc i32 @ice_get_netlist_info(ptr noundef %hw, i32 noundef 0, ptr noundef %netlist)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end122.cleanup_crit_edge, label %do.body126

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_init_nvm.__UNIQUE_ID_ddebug655, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_init_nvm, %if.then138)) #7
          to label %cleanup [label %if.then138], !srcloc !148

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr141 = getelementptr i8, ptr %hw, i32 -2960
  %30 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr141, align 8
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_init_nvm.__UNIQUE_ID_ddebug655, ptr noundef %dev143, ptr noundef nonnull @.str.21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then138, %do.body126, %if.end122.cleanup_crit_edge, %if.then88, %do.body76, %if.then63, %do.body51, %if.then38, %do.body26, %if.then19, %if.else
  %retval.0 = phi i32 [ -5, %if.then19 ], [ %call23, %if.then38 ], [ %call48, %if.then63 ], [ %call73, %if.then88 ], [ 0, %if.then138 ], [ 0, %if.end122.cleanup_crit_edge ], [ -5, %if.else ], [ %call23, %do.body26 ], [ %call48, %do.body51 ], [ %call73, %do.body76 ], [ 0, %do.body126 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_discover_flash_size(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit, label %entry.while.cond.preheader_crit_edge

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

ice_acquire_nvm.exit:                             ; preds = %entry
  %call.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %ice_acquire_nvm.exit.while.cond.preheader_crit_edge, label %ice_acquire_nvm.exit.cleanup61_crit_edge

ice_acquire_nvm.exit.cleanup61_crit_edge:         ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup61

ice_acquire_nvm.exit.while.cond.preheader_crit_edge: ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %ice_acquire_nvm.exit.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %2 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %3 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6, i32 0, i32 1
  %cmd_flags.i.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %2, i32 0, i32 2
  %offset_high.i.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %2, i32 0, i32 1
  %length19.i.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %2, i32 0, i32 4
  %add.ptr29 = getelementptr i8, ptr %hw, i32 -2960
  %sq_last_status = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 30, i32 8
  br label %do.body9.i

do.body9.i:                                       ; preds = %cleanup.do.body9.i_crit_edge, %while.cond.preheader
  %min_size.0108 = phi i32 [ 0, %while.cond.preheader ], [ %min_size.2, %cleanup.do.body9.i_crit_edge ]
  %max_size.0107 = phi i32 [ 16777216, %while.cond.preheader ], [ %max_size.2, %cleanup.do.body9.i_crit_edge ]
  %add = add i32 %min_size.0108, %max_size.0107
  %div83 = lshr i32 %add, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data, align 1, !annotation !149
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %add)
  %cmp.i.i = icmp ugt i32 %add, 33554431
  %5 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  br i1 %cmp.i.i, label %ice_read_flat_nvm.exit.thread, label %ice_read_flat_nvm.exit

ice_read_flat_nvm.exit.thread:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  br label %cleanup.thread

ice_read_flat_nvm.exit:                           ; preds = %do.body9.i
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 1793) #7
  %6 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd_flags.i.i, align 1
  %spec.select = or i8 %7, -127
  store i8 %spec.select, ptr %cmd_flags.i.i, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %3, align 4
  %conv16.i.i = trunc i32 %div83 to i16
  %9 = call i16 @llvm.bswap.i16(i16 %conv16.i.i) #7
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %2, align 4
  %shr.i.i = lshr i32 %add, 17
  %conv18.i.i = trunc i32 %shr.i.i to i8
  %11 = ptrtoint ptr %offset_high.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18.i.i, ptr %offset_high.i.i, align 2
  %12 = ptrtoint ptr %length19.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %length19.i.i, align 2
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef nonnull %data, i16 noundef zeroext 1, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  %13 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %ice_read_flat_nvm.exit.cleanup.thread_crit_edge [
    i32 -5, label %land.lhs.true
    i32 0, label %do.body14
  ]

ice_read_flat_nvm.exit.cleanup.thread_crit_edge:  ; preds = %ice_read_flat_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

land.lhs.true:                                    ; preds = %ice_read_flat_nvm.exit
  %14 = ptrtoint ptr %sq_last_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sq_last_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp3 = icmp eq i32 %15, 14
  br i1 %cmp3, label %do.body, label %land.lhs.true.cleanup.thread_crit_edge

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_discover_flash_size.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_discover_flash_size, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !148

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr29, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_discover_flash_size.__UNIQUE_ID_ddebug639, ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %div83) #7
  br label %cleanup

do.body14:                                        ; preds = %ice_read_flat_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_discover_flash_size.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_discover_flash_size, %if.then26)) #7
          to label %cleanup [label %if.then26], !srcloc !148

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr29, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_discover_flash_size.__UNIQUE_ID_ddebug640, ptr noundef %dev31, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %div83) #7
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %ice_read_flat_nvm.exit.cleanup.thread_crit_edge, %ice_read_flat_nvm.exit.thread
  %status.2.ph = phi i32 [ -22, %ice_read_flat_nvm.exit.thread ], [ %call.i.i, %ice_read_flat_nvm.exit.cleanup.thread_crit_edge ], [ -5, %land.lhs.true.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  br label %err_read_flat_nvm

cleanup:                                          ; preds = %if.then26, %do.body14, %if.then9, %do.body
  %max_size.2 = phi i32 [ %div83, %if.then9 ], [ %max_size.0107, %if.then26 ], [ %div83, %do.body ], [ %max_size.0107, %do.body14 ]
  %min_size.2 = phi i32 [ %min_size.0108, %if.then9 ], [ %div83, %if.then26 ], [ %min_size.0108, %do.body ], [ %div83, %do.body14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  %sub = sub i32 %max_size.2, %min_size.2
  %cmp = icmp ugt i32 %sub, 1
  br i1 %cmp, label %cleanup.do.body9.i_crit_edge, label %do.body40

cleanup.do.body9.i_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.body40:                                        ; preds = %cleanup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_discover_flash_size.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_discover_flash_size, %if.then52)) #7
          to label %do.end60 [label %if.then52], !srcloc !148

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr29, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_discover_flash_size.__UNIQUE_ID_ddebug641, ptr noundef %dev57, ptr noundef nonnull @.str.46, i32 noundef %max_size.2) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then52, %do.body40
  %flash_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 5
  %22 = ptrtoint ptr %flash_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %max_size.2, ptr %flash_size, align 4
  br label %err_read_flat_nvm

err_read_flat_nvm:                                ; preds = %do.end60, %cleanup.thread
  %status.3 = phi i32 [ 0, %do.end60 ], [ %status.2.ph, %cleanup.thread ]
  %23 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i94 = icmp eq i8 %24, 0
  br i1 %tobool.not.i94, label %if.end.i95, label %err_read_flat_nvm.cleanup61_crit_edge

err_read_flat_nvm.cleanup61_crit_edge:            ; preds = %err_read_flat_nvm
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup61

if.end.i95:                                       ; preds = %err_read_flat_nvm
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %cleanup61

cleanup61:                                        ; preds = %if.end.i95, %err_read_flat_nvm.cleanup61_crit_edge, %ice_acquire_nvm.exit.cleanup61_crit_edge
  %retval.0 = phi i32 [ %call.i, %ice_acquire_nvm.exit.cleanup61_crit_edge ], [ %status.3, %err_read_flat_nvm.cleanup61_crit_edge ], [ %status.3, %if.end.i95 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_determine_active_flash_banks(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %bytes.i.i.i = alloca i32, align 4
  %data_local.i.i.i = alloca i16, align 2
  %bytes.i.i = alloca i32, align 4
  %data_local.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %banks1 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3
  %blank_nvm_mode.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %ice_acquire_nvm.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

ice_acquire_nvm.exit.i:                           ; preds = %entry
  %call.i.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit.i.if.then.i_crit_edge, label %ice_acquire_nvm.exit.i.do.body_crit_edge

ice_acquire_nvm.exit.i.do.body_crit_edge:         ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

ice_acquire_nvm.exit.i.if.then.i_crit_edge:       ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %ice_acquire_nvm.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %2 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %bytes.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i) #7
  %3 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_local.i.i, align 2, !annotation !149
  %call.i5.i = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef 0, ptr noundef nonnull %bytes.i.i, ptr noundef nonnull %data_local.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge

if.then.i.ice_read_sr_word_aq.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i

if.end.i7.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_local.i.i, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5) #7
  br label %ice_read_sr_word_aq.exit.i

ice_read_sr_word_aq.exit.i:                       ; preds = %if.end.i7.i, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge
  %ctrl_word.0 = phi i16 [ %6, %if.end.i7.i ], [ -1, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %7 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i9.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i9.i, label %if.end.i10.i, label %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge

ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit

if.end.i10.i:                                     ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit

ice_read_sr_word.exit:                            ; preds = %if.end.i10.i, %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge
  br i1 %tobool.not.i6.i, label %if.end8, label %ice_read_sr_word.exit.do.body_crit_edge

ice_read_sr_word.exit.do.body_crit_edge:          ; preds = %ice_read_sr_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %ice_read_sr_word.exit.do.body_crit_edge, %ice_acquire_nvm.exit.i.do.body_crit_edge
  %status.0.i272 = phi i32 [ %call.i5.i, %ice_read_sr_word.exit.do.body_crit_edge ], [ %call.i.i, %ice_acquire_nvm.exit.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !148

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug642, ptr noundef %dev, ptr noundef nonnull @.str.48) #7
  br label %cleanup

if.end8:                                          ; preds = %ice_read_sr_word.exit
  %conv = zext i16 %ctrl_word.0 to i32
  %11 = and i32 %conv, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp.not = icmp eq i32 %11, 64
  br i1 %cmp.not, label %if.end32, label %do.body11

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then23)) #7
          to label %cleanup [label %if.then23], !srcloc !148

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26 = getelementptr i8, ptr %hw, i32 -2960
  %12 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr26, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug643, ptr noundef %dev28, ptr noundef nonnull @.str.49) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end8
  %and34 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %spec.select = select i1 %tobool35.not, i32 1, i32 2
  %14 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 6
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %14, align 4
  %16 = and i16 %ctrl_word.0, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool41.not = icmp eq i16 %16, 0
  %.sink284 = select i1 %tobool41.not, i32 1, i32 2
  %17 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink284, ptr %17, align 4
  %19 = and i16 %ctrl_word.0, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool48.not = icmp eq i16 %19, 0
  %.sink285 = select i1 %tobool48.not, i32 1, i32 2
  %20 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink285, ptr %20, align 4
  %call53 = call fastcc i32 @ice_read_sr_pointer(ptr noundef %hw, i16 noundef zeroext 66, ptr noundef %banks1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end77, label %do.body56

do.body56:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug644, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then68)) #7
          to label %cleanup [label %if.then68], !srcloc !148

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr71 = getelementptr i8, ptr %hw, i32 -2960
  %22 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr71, align 8
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug644, ptr noundef %dev73, ptr noundef nonnull @.str.50) #7
  br label %cleanup

if.end77:                                         ; preds = %if.end32
  %nvm_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 1
  %24 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i.i, label %ice_acquire_nvm.exit.i.i, label %if.end77.if.then.i.i_crit_edge

if.end77.if.then.i.i_crit_edge:                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

ice_acquire_nvm.exit.i.i:                         ; preds = %if.end77
  %call.i.i.i = call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i265 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i265, label %ice_acquire_nvm.exit.i.i.if.then.i.i_crit_edge, label %ice_acquire_nvm.exit.i.i.do.body81_crit_edge

ice_acquire_nvm.exit.i.i.do.body81_crit_edge:     ; preds = %ice_acquire_nvm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81

ice_acquire_nvm.exit.i.i.if.then.i.i_crit_edge:   ; preds = %ice_acquire_nvm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %ice_acquire_nvm.exit.i.i.if.then.i.i_crit_edge, %if.end77.if.then.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i.i) #7
  %26 = ptrtoint ptr %bytes.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %bytes.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i.i) #7
  %27 = ptrtoint ptr %data_local.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %data_local.i.i.i, align 2, !annotation !149
  %call.i5.i.i = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef 134, ptr noundef nonnull %bytes.i.i.i, ptr noundef nonnull %data_local.i.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %if.end.i7.i.i, label %if.then.i.i.ice_read_sr_word_aq.exit.i.i_crit_edge

if.then.i.i.ice_read_sr_word_aq.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i.i

if.end.i7.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %data_local.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_local.i.i.i, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #7
  %phi.cast.i = zext i16 %30 to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 12
  br label %ice_read_sr_word_aq.exit.i.i

ice_read_sr_word_aq.exit.i.i:                     ; preds = %if.end.i7.i.i, %if.then.i.i.ice_read_sr_word_aq.exit.i.i_crit_edge
  %value.0.i = phi i32 [ %phi.bo.i, %if.end.i7.i.i ], [ 268431360, %if.then.i.i.ice_read_sr_word_aq.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i.i) #7
  %31 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i9.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i9.i.i, label %if.end.i10.i.i, label %ice_read_sr_word_aq.exit.i.i.ice_read_sr_word.exit.i_crit_edge

ice_read_sr_word_aq.exit.i.i.ice_read_sr_word.exit.i_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit.i

if.end.i10.i.i:                                   ; preds = %ice_read_sr_word_aq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit.i

ice_read_sr_word.exit.i:                          ; preds = %if.end.i10.i.i, %ice_read_sr_word_aq.exit.i.i.ice_read_sr_word.exit.i_crit_edge
  br i1 %tobool.not.i6.i.i, label %if.end102, label %ice_read_sr_word.exit.i.do.body81_crit_edge

ice_read_sr_word.exit.i.do.body81_crit_edge:      ; preds = %ice_read_sr_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body81

do.body81:                                        ; preds = %ice_read_sr_word.exit.i.do.body81_crit_edge, %ice_acquire_nvm.exit.i.i.do.body81_crit_edge
  %retval.0.i266.ph = phi i32 [ %call.i.i.i, %ice_acquire_nvm.exit.i.i.do.body81_crit_edge ], [ %call.i5.i.i, %ice_read_sr_word.exit.i.do.body81_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then93)) #7
          to label %cleanup [label %if.then93], !srcloc !148

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr96 = getelementptr i8, ptr %hw, i32 -2960
  %33 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr96, align 8
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug645, ptr noundef %dev98, ptr noundef nonnull @.str.51) #7
  br label %cleanup

if.end102:                                        ; preds = %ice_read_sr_word.exit.i
  %35 = ptrtoint ptr %nvm_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %value.0.i, ptr %nvm_size, align 4
  %orom_ptr = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 2
  %call103 = call fastcc i32 @ice_read_sr_pointer(ptr noundef %hw, i16 noundef zeroext 68, ptr noundef %orom_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end127, label %do.body106

do.body106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then118)) #7
          to label %cleanup [label %if.then118], !srcloc !148

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr121 = getelementptr i8, ptr %hw, i32 -2960
  %36 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr121, align 8
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug646, ptr noundef %dev123, ptr noundef nonnull @.str.52) #7
  br label %cleanup

if.end127:                                        ; preds = %if.end102
  %orom_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 3
  %call128 = call fastcc i32 @ice_read_sr_area_size(ptr noundef %hw, i16 noundef zeroext 69, ptr noundef %orom_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end152, label %do.body131

do.body131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug647, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then143)) #7
          to label %cleanup [label %if.then143], !srcloc !148

if.then143:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr146 = getelementptr i8, ptr %hw, i32 -2960
  %38 = ptrtoint ptr %add.ptr146 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr146, align 8
  %dev148 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug647, ptr noundef %dev148, ptr noundef nonnull @.str.53) #7
  br label %cleanup

if.end152:                                        ; preds = %if.end127
  %netlist_ptr = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 4
  %call153 = call fastcc i32 @ice_read_sr_pointer(ptr noundef %hw, i16 noundef zeroext 70, ptr noundef %netlist_ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end177, label %do.body156

do.body156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then168)) #7
          to label %cleanup [label %if.then168], !srcloc !148

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr171 = getelementptr i8, ptr %hw, i32 -2960
  %40 = ptrtoint ptr %add.ptr171 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr171, align 8
  %dev173 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug648, ptr noundef %dev173, ptr noundef nonnull @.str.54) #7
  br label %cleanup

if.end177:                                        ; preds = %if.end152
  %netlist_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 5
  %call178 = call fastcc i32 @ice_read_sr_area_size(ptr noundef %hw, i16 noundef zeroext 71, ptr noundef %netlist_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end177.cleanup_crit_edge, label %do.body181

if.end177.cleanup_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug649, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_determine_active_flash_banks, %if.then193)) #7
          to label %cleanup [label %if.then193], !srcloc !148

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr196 = getelementptr i8, ptr %hw, i32 -2960
  %42 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr196, align 8
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug649, ptr noundef %dev198, ptr noundef nonnull @.str.55) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then193, %do.body181, %if.end177.cleanup_crit_edge, %if.then168, %do.body156, %if.then143, %do.body131, %if.then118, %do.body106, %if.then93, %do.body81, %if.then68, %do.body56, %if.then23, %do.body11, %if.then6, %do.body
  %retval.0 = phi i32 [ %status.0.i272, %if.then6 ], [ -5, %if.then23 ], [ %call53, %if.then68 ], [ %retval.0.i266.ph, %if.then93 ], [ %call103, %if.then118 ], [ %call128, %if.then143 ], [ %call153, %if.then168 ], [ %call178, %if.then193 ], [ 0, %if.end177.cleanup_crit_edge ], [ %status.0.i272, %do.body ], [ -5, %do.body11 ], [ %call53, %do.body56 ], [ %retval.0.i266.ph, %do.body81 ], [ %call103, %do.body106 ], [ %call128, %do.body131 ], [ %call153, %do.body156 ], [ %call178, %do.body181 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_nvm_validate_checksum(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %blank_nvm_mode.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %2 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ice_acquire_nvm.exit:                             ; preds = %entry
  %call.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %ice_acquire_nvm.exit.if.end_crit_edge, label %ice_acquire_nvm.exit.cleanup_crit_edge

ice_acquire_nvm.exit.cleanup_crit_edge:           ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_acquire_nvm.exit.if.end_crit_edge:            ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %ice_acquire_nvm.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1798) #7
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %0, align 4
  %call1 = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #7
  %5 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i17 = icmp eq i8 %6, 0
  br i1 %tobool.not.i17, label %if.end.i18, label %if.end.ice_release_nvm.exit_crit_edge

if.end.ice_release_nvm.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_release_nvm.exit

if.end.i18:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_release_nvm.exit

ice_release_nvm.exit:                             ; preds = %if.end.i18, %if.end.ice_release_nvm.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %ice_release_nvm.exit.cleanup_crit_edge

ice_release_nvm.exit.cleanup_crit_edge:           ; preds = %ice_release_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %ice_release_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %checksum = getelementptr inbounds %struct.ice_aqc_nvm_checksum, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %checksum to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %checksum, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17734, i16 %8)
  %cmp.not = icmp eq i16 %8, -17734
  %spec.select = select i1 %cmp.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %ice_release_nvm.exit.cleanup_crit_edge, %ice_acquire_nvm.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %ice_acquire_nvm.exit.cleanup_crit_edge ], [ %call1, %ice_release_nvm.exit.cleanup_crit_edge ], [ %spec.select, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_nvm_write_activate(ptr noundef %hw, i8 noundef zeroext %cmd_flags, ptr noundef writeonly %response_flags) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1799) #7
  %cmd_flags1 = getelementptr inbounds %struct.ice_aqc_nvm, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %cmd_flags1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cmd_flags, ptr %cmd_flags1, align 1
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %tobool2.not = icmp eq ptr %response_flags, null
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %cmd_flags1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cmd_flags1, align 1
  %5 = ptrtoint ptr %response_flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %response_flags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_aq_nvm_update_empr(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1801) #7
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_nvm_set_pkg_data(ptr noundef %hw, i1 noundef zeroext %del_pkg_data_flag, ptr noundef %data, i16 noundef zeroext %length, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %length)
  %cmp.not = icmp ne i16 %length, 0
  %tobool.not = icmp eq ptr %data, null
  %or.cond = and i1 %tobool.not, %cmp.not
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1802) #7
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  %4 = or i16 %3, 4
  store i16 %4, ptr %desc, align 4
  br i1 %del_pkg_data_flag, label %if.then5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags = getelementptr inbounds %struct.ice_aqc_nvm_pkg_data, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd_flags, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %cmd_flags, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %data, i16 noundef zeroext %length, ptr noundef %cd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_nvm_pass_component_tbl(ptr noundef %hw, ptr noundef %data, i16 noundef zeroext %length, i8 noundef zeroext %transfer_flag, ptr noundef writeonly %comp_response, ptr noundef writeonly %comp_response_code, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc, i32 0, i32 6
  %tobool.not = icmp eq ptr %data, null
  %tobool1.not = icmp eq ptr %comp_response, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %comp_response_code, null
  %or.cond17 = or i1 %or.cond, %tobool3.not
  %1 = call ptr @memset(ptr %desc, i32 255, i32 32)
  br i1 %or.cond17, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 1803) #7
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc, align 4
  %4 = or i16 %3, 4
  store i16 %4, ptr %desc, align 4
  %transfer_flag5 = getelementptr inbounds %struct.ice_aqc_nvm_pass_comp_tbl, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %transfer_flag5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %transfer_flag, ptr %transfer_flag5, align 1
  %call = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef nonnull %data, i16 noundef zeroext %length, ptr noundef %cd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %0, align 4
  %8 = ptrtoint ptr %comp_response to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %comp_response, align 1
  %component_response_code = getelementptr inbounds %struct.ice_aqc_nvm_pass_comp_tbl, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %component_response_code to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %component_response_code, align 1
  %11 = ptrtoint ptr %comp_response_code to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %comp_response_code, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext %module, i32 noundef %offset, ptr noundef %data, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %desc.i.i = alloca %struct.ice_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ice_get_flash_bank_offset(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext %module)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_read_flash_module.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_read_flash_module, %if.then5)) #7
          to label %cleanup [label %if.then5], !srcloc !148

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv = zext i16 %module to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_read_flash_module.__UNIQUE_ID_ddebug619, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %blank_nvm_mode.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %2 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

ice_acquire_nvm.exit:                             ; preds = %if.end7
  %call.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %ice_acquire_nvm.exit.if.end11_crit_edge, label %ice_acquire_nvm.exit.cleanup_crit_edge

ice_acquire_nvm.exit.cleanup_crit_edge:           ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_acquire_nvm.exit.if.end11_crit_edge:          ; preds = %ice_acquire_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %ice_acquire_nvm.exit.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %add = add i32 %call, %offset
  %4 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6
  %5 = getelementptr inbounds %struct.ice_aq_desc, ptr %desc.i.i, i32 0, i32 6, i32 0, i32 1
  %cmd_flags.i.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %4, i32 0, i32 2
  %offset_high.i.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %4, i32 0, i32 1
  %length19.i.i = getelementptr inbounds %struct.ice_aqc_nvm, ptr %4, i32 0, i32 4
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.end.i.i.do.body9.i_crit_edge, %if.end11
  %bytes_read.0.i = phi i32 [ 0, %if.end11 ], [ %bytes_read.1.i, %if.end.i.i.do.body9.i_crit_edge ]
  %offset.addr.0.i = phi i32 [ %add, %if.end11 ], [ %offset.addr.1.i, %if.end.i.i.do.body9.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %offset.addr.0.i)
  %cmp.i.i = icmp ugt i32 %offset.addr.0.i, 16777215
  %6 = call ptr @memset(ptr %desc.i.i, i32 255, i32 32)
  br i1 %cmp.i.i, label %ice_aq_read_nvm.exit.thread.i, label %if.end.i.i

ice_aq_read_nvm.exit.thread.i:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  br label %ice_read_flat_nvm.exit

if.end.i.i:                                       ; preds = %do.body9.i
  %add.ptr21.i = getelementptr i8, ptr %data, i32 %bytes_read.0.i
  %rem.i = and i32 %offset.addr.0.i, 4095
  %sub.i = sub nuw nsw i32 4096, %rem.i
  %sub10.i = sub i32 %length, %bytes_read.0.i
  %7 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub10.i) #7
  %conv20.i = trunc i32 %7 to i16
  %add14.i = add i32 %7, %bytes_read.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i, i32 %length)
  %cmp15.i = icmp uge i32 %add14.i, %length
  call void @ice_fill_dflt_direct_cmd_desc(ptr noundef nonnull %desc.i.i, i16 noundef zeroext 1793) #7
  %8 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd_flags.i.i, align 1
  %spec.select.v = select i1 %cmp15.i, i8 -127, i8 -128
  %spec.select = or i8 %9, %spec.select.v
  store i8 %spec.select, ptr %cmd_flags.i.i, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %5, align 4
  %conv16.i.i = trunc i32 %offset.addr.0.i to i16
  %11 = call i16 @llvm.bswap.i16(i16 %conv16.i.i) #7
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %4, align 4
  %shr.i.i = lshr i32 %offset.addr.0.i, 16
  %conv18.i.i = trunc i32 %shr.i.i to i8
  %13 = ptrtoint ptr %offset_high.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv18.i.i, ptr %offset_high.i.i, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %conv20.i) #7
  %15 = ptrtoint ptr %length19.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %length19.i.i, align 2
  %call.i.i = call i32 @ice_aq_send_cmd(ptr noundef %hw, ptr noundef nonnull %desc.i.i, ptr noundef %add.ptr21.i, i16 noundef zeroext %conv20.i, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not.i = icmp eq i32 %call.i.i, 0
  %bytes_read.1.i = select i1 %tobool25.not.i, i32 %add14.i, i32 %bytes_read.0.i
  %add29.i = select i1 %tobool25.not.i, i32 %7, i32 0
  %offset.addr.1.i = add nuw nsw i32 %add29.i, %offset.addr.0.i
  %tobool25.not.not.i = xor i1 %tobool25.not.i, true
  %brmerge.i = select i1 %tobool25.not.not.i, i1 true, i1 %cmp15.i
  br i1 %brmerge.i, label %if.end.i.i.ice_read_flat_nvm.exit_crit_edge, label %if.end.i.i.do.body9.i_crit_edge

if.end.i.i.do.body9.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

if.end.i.i.ice_read_flat_nvm.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_flat_nvm.exit

ice_read_flat_nvm.exit:                           ; preds = %if.end.i.i.ice_read_flat_nvm.exit_crit_edge, %ice_aq_read_nvm.exit.thread.i
  %retval.0.i6170.i = phi i32 [ -22, %ice_aq_read_nvm.exit.thread.i ], [ %call.i.i, %if.end.i.i.ice_read_flat_nvm.exit_crit_edge ]
  %16 = ptrtoint ptr %blank_nvm_mode.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %blank_nvm_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i25 = icmp eq i8 %17, 0
  br i1 %tobool.not.i25, label %if.end.i26, label %ice_read_flat_nvm.exit.cleanup_crit_edge

ice_read_flat_nvm.exit.cleanup_crit_edge:         ; preds = %ice_read_flat_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i26:                                       ; preds = %ice_read_flat_nvm.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i26, %ice_read_flat_nvm.exit.cleanup_crit_edge, %ice_acquire_nvm.exit.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %if.then5 ], [ %call.i, %ice_acquire_nvm.exit.cleanup_crit_edge ], [ -22, %do.body ], [ %retval.0.i6170.i, %ice_read_flat_nvm.exit.cleanup_crit_edge ], [ %retval.0.i6170.i, %if.end.i26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_flash_bank_offset(ptr nocapture noundef readonly %hw, i32 noundef %bank, i16 noundef zeroext %module) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %module to i32
  %0 = zext i16 %module to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %module, label %do.body [
    i16 66, label %sw.bb
    i16 68, label %sw.bb2
    i16 70, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %banks1 = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3
  %nvm_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 1
  %nvm_bank = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %orom_ptr = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 2
  %orom_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 3
  %orom_bank = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %netlist_ptr = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 4
  %netlist_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 5
  %netlist_bank = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_flash_bank_offset, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !148

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug616, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb
  %size.0.in = phi ptr [ %netlist_size, %sw.bb3 ], [ %orom_size, %sw.bb2 ], [ %nvm_size, %sw.bb ]
  %offset.0.in = phi ptr [ %netlist_ptr, %sw.bb3 ], [ %orom_ptr, %sw.bb2 ], [ %banks1, %sw.bb ]
  %active_bank.0.in = phi ptr [ %netlist_bank, %sw.bb3 ], [ %orom_bank, %sw.bb2 ], [ %nvm_bank, %sw.bb ]
  %3 = ptrtoint ptr %active_bank.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %active_bank.0 = load i32, ptr %active_bank.0.in, align 4
  %4 = ptrtoint ptr %offset.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %offset.0 = load i32, ptr %offset.0.in, align 4
  %5 = ptrtoint ptr %size.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %size.0 = load i32, ptr %size.0.in, align 4
  %6 = zext i32 %active_bank.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %active_bank.0, label %do.body11 [
    i32 1, label %sw.epilog.sw.epilog32_crit_edge
    i32 2, label %sw.bb9
  ]

sw.epilog.sw.epilog32_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32

do.body11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_flash_bank_offset, %if.then23)) #7
          to label %cleanup [label %if.then23], !srcloc !148

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr26 = getelementptr i8, ptr %hw, i32 -2960
  %7 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr26, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug617, ptr noundef %dev28, ptr noundef nonnull @.str.30, i32 noundef %active_bank.0) #7
  br label %cleanup

sw.epilog32:                                      ; preds = %sw.bb9, %sw.epilog.sw.epilog32_crit_edge
  %second_bank_active.0.off0 = phi i1 [ true, %sw.bb9 ], [ false, %sw.epilog.sw.epilog32_crit_edge ]
  %9 = zext i32 %bank to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %bank, label %do.body45 [
    i32 0, label %sw.bb33
    i32 1, label %sw.bb36
  ]

sw.bb33:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %second_bank_active.0.off0, i32 %size.0, i32 0
  %add = add i32 %spec.select, %offset.0
  br label %cleanup

sw.bb36:                                          ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select87 = select i1 %second_bank_active.0.off0, i32 0, i32 %size.0
  %add43 = add i32 %spec.select87, %offset.0
  br label %cleanup

do.body45:                                        ; preds = %sw.epilog32
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_flash_bank_offset, %if.then57)) #7
          to label %cleanup [label %if.then57], !srcloc !148

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr60 = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr60, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug618, ptr noundef %dev62, ptr noundef nonnull @.str.31, i32 noundef %bank) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body45, %sw.bb36, %sw.bb33, %if.then23, %do.body11, %if.then, %do.body
  %retval.0 = phi i32 [ %add43, %sw.bb36 ], [ %add, %sw.bb33 ], [ 0, %if.then ], [ 0, %if.then23 ], [ 0, %if.then57 ], [ 0, %do.body ], [ 0, %do.body11 ], [ 0, %do.body45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_get_orom_civd_data(ptr noundef %hw, i32 noundef %bank, ptr nocapture noundef writeonly %civd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %orom_size = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 3, i32 3
  %0 = ptrtoint ptr %orom_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %orom_size, align 4
  %call = tail call noalias ptr @vzalloc(i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup104

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %orom_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %orom_size, align 4
  %call4 = tail call fastcc i32 @ice_read_flash_module(ptr noundef %hw, i32 noundef %bank, i16 noundef zeroext 68, i32 noundef 0, ptr noundef nonnull %call, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %orom_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orom_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp.not151 = icmp ult i32 %5, 512
  br i1 %cmp.not151, label %for.cond.preheader.do.body83_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body83_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body83

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr38 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_orom_civd_data, %if.then11)) #7
          to label %cleanup104 [label %if.then11], !srcloc !148

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_orom_civd_data.__UNIQUE_ID_ddebug632, ptr noundef %dev, ptr noundef nonnull @.str.35) #7
  br label %cleanup104

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %add153 = phi i32 [ 512, %for.body.lr.ph ], [ %add, %for.cond.backedge.for.body_crit_edge ]
  %offset.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %add153, %for.cond.backedge.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call, i32 %offset.0152
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.36, ptr noundef dereferenceable(4) %arrayidx, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp20.not = icmp eq i32 %bcmp, 0
  br i1 %cmp20.not, label %do.body23, label %for.cond.backedge

do.body23:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_orom_civd_data, %if.then35)) #7
          to label %for.body47 [label %if.then35], !srcloc !148

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr38, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_orom_civd_data.__UNIQUE_ID_ddebug633, ptr noundef %dev40, ptr noundef nonnull @.str.37, i32 noundef %offset.0152) #7
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %if.then35, %do.body23
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body47.for.body47_crit_edge ], [ 0, %do.body23 ], [ 0, %if.then35 ]
  %sum.0150 = phi i8 [ %add51, %for.body47.for.body47_crit_edge ], [ 0, %do.body23 ], [ 0, %if.then35 ]
  %arrayidx48 = getelementptr i8, ptr %arrayidx, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx48, align 1
  %add51 = add i8 %11, %sum.0150
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 74
  br i1 %exitcond.not, label %for.end, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

for.end:                                          ; preds = %for.body47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add51)
  %tobool53.not = icmp eq i8 %add51, 0
  br i1 %tobool53.not, label %cleanup.thread, label %do.body55

do.body55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_orom_civd_data, %cleanup.thread141)) #7
          to label %err_invalid_checksum [label %cleanup.thread141], !srcloc !148

cleanup.thread141:                                ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr38, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv73 = zext i8 %add51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_orom_civd_data.__UNIQUE_ID_ddebug634, ptr noundef %dev72, ptr noundef nonnull @.str.38, i32 noundef %conv73) #7
  br label %err_invalid_checksum

cleanup.thread:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = call ptr @memcpy(ptr %civd, ptr %arrayidx, i32 74)
  tail call void @vfree(ptr noundef nonnull %call) #7
  br label %cleanup104

for.cond.backedge:                                ; preds = %for.body
  %add = add i32 %add153, 512
  %15 = ptrtoint ptr %orom_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %orom_size, align 4
  %cmp.not = icmp ugt i32 %add, %16
  br i1 %cmp.not, label %for.cond.backedge.do.body83_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.backedge.do.body83_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body83

do.body83:                                        ; preds = %for.cond.backedge.do.body83_crit_edge, %for.cond.preheader.do.body83_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_get_orom_civd_data, %if.then95)) #7
          to label %err_invalid_checksum [label %if.then95], !srcloc !148

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr98 = getelementptr i8, ptr %hw, i32 -2960
  %17 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr98, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_get_orom_civd_data.__UNIQUE_ID_ddebug635, ptr noundef %dev100, ptr noundef nonnull @.str.39) #7
  br label %err_invalid_checksum

err_invalid_checksum:                             ; preds = %if.then95, %do.body83, %cleanup.thread141, %do.body55
  tail call void @vfree(ptr noundef nonnull %call) #7
  br label %cleanup104

cleanup104:                                       ; preds = %err_invalid_checksum, %cleanup.thread, %if.then11, %do.body, %entry.cleanup104_crit_edge
  %retval.2 = phi i32 [ -5, %err_invalid_checksum ], [ -12, %entry.cleanup104_crit_edge ], [ %call4, %if.then11 ], [ %call4, %do.body ], [ 0, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_sr_pointer(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %pointer) unnamed_addr #0 align 64 {
entry:
  %bytes.i.i = alloca i32, align 4
  %data_local.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %ice_acquire_nvm.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

ice_acquire_nvm.exit.i:                           ; preds = %entry
  %call.i.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit.i.if.then.i_crit_edge, label %ice_acquire_nvm.exit.i.cleanup_crit_edge

ice_acquire_nvm.exit.i.cleanup_crit_edge:         ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_acquire_nvm.exit.i.if.then.i_crit_edge:       ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %ice_acquire_nvm.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %2 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %bytes.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i) #7
  %3 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_local.i.i, align 2, !annotation !149
  %conv.i.i = zext i16 %offset to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %call.i5.i = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i.i, ptr noundef nonnull %bytes.i.i, ptr noundef nonnull %data_local.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge

if.then.i.ice_read_sr_word_aq.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i

if.end.i7.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_local.i.i, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5) #7
  %phi.cast = zext i16 %6 to i32
  br label %ice_read_sr_word_aq.exit.i

ice_read_sr_word_aq.exit.i:                       ; preds = %if.end.i7.i, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge
  %value.0 = phi i32 [ %phi.cast, %if.end.i7.i ], [ 65535, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %7 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i9.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i9.i, label %if.end.i10.i, label %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge

ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit

if.end.i10.i:                                     ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit

ice_read_sr_word.exit:                            ; preds = %if.end.i10.i, %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge
  br i1 %tobool.not.i6.i, label %if.end, label %ice_read_sr_word.exit.cleanup_crit_edge

ice_read_sr_word.exit.cleanup_crit_edge:          ; preds = %ice_read_sr_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ice_read_sr_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %value.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %mul7 = shl nuw nsw i32 %value.0, 1
  %and4 = shl nuw nsw i32 %value.0, 12
  %mul = and i32 %and4, 134213632
  %storemerge = select i1 %tobool1.not, i32 %mul7, i32 %mul
  %9 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge, ptr %pointer, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ice_read_sr_word.exit.cleanup_crit_edge, %ice_acquire_nvm.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i5.i, %ice_read_sr_word.exit.cleanup_crit_edge ], [ %call.i.i, %ice_acquire_nvm.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_read_sr_area_size(ptr noundef %hw, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %size) unnamed_addr #0 align 64 {
entry:
  %bytes.i.i = alloca i32, align 4
  %data_local.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blank_nvm_mode.i.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 26, i32 6
  %0 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %ice_acquire_nvm.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

ice_acquire_nvm.exit.i:                           ; preds = %entry
  %call.i.i = tail call i32 @ice_acquire_res(ptr noundef %hw, i32 noundef 1, i32 noundef 1, i32 noundef 180000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %ice_acquire_nvm.exit.i.if.then.i_crit_edge, label %ice_acquire_nvm.exit.i.cleanup_crit_edge

ice_acquire_nvm.exit.i.cleanup_crit_edge:         ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ice_acquire_nvm.exit.i.if.then.i_crit_edge:       ; preds = %ice_acquire_nvm.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %ice_acquire_nvm.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %2 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %bytes.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_local.i.i) #7
  %3 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %data_local.i.i, align 2, !annotation !149
  %conv.i.i = zext i16 %offset to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %call.i5.i = call i32 @ice_read_flat_nvm(ptr noundef %hw, i32 noundef %mul.i.i, ptr noundef nonnull %bytes.i.i, ptr noundef nonnull %data_local.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i, label %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge

if.then.i.ice_read_sr_word_aq.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word_aq.exit.i

if.end.i7.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data_local.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_local.i.i, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5) #7
  %phi.cast = zext i16 %6 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 12
  br label %ice_read_sr_word_aq.exit.i

ice_read_sr_word_aq.exit.i:                       ; preds = %if.end.i7.i, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge
  %value.0 = phi i32 [ %phi.bo, %if.end.i7.i ], [ 268431360, %if.then.i.ice_read_sr_word_aq.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_local.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes.i.i) #7
  %7 = ptrtoint ptr %blank_nvm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %blank_nvm_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i9.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i9.i, label %if.end.i10.i, label %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge

ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge: ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_read_sr_word.exit

if.end.i10.i:                                     ; preds = %ice_read_sr_word_aq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ice_release_res(ptr noundef %hw, i32 noundef 1) #7
  br label %ice_read_sr_word.exit

ice_read_sr_word.exit:                            ; preds = %if.end.i10.i, %ice_read_sr_word_aq.exit.i.ice_read_sr_word.exit_crit_edge
  br i1 %tobool.not.i6.i, label %if.end, label %ice_read_sr_word.exit.cleanup_crit_edge

ice_read_sr_word.exit.cleanup_crit_edge:          ; preds = %ice_read_sr_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %ice_read_sr_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %value.0, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ice_read_sr_word.exit.cleanup_crit_edge, %ice_acquire_nvm.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i5.i, %ice_read_sr_word.exit.cleanup_crit_edge ], [ %call.i.i, %ice_acquire_nvm.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 78, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_read_flat_nvm.__UNIQUE_ID_ddebug613, !1, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 450, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug620, !7, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 455, i32 3}
!12 = !{ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug621, !11, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 469, i32 4}
!15 = !{ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug622, !14, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 475, i32 4}
!18 = !{ptr @ice_get_pfa_module_tlv.__UNIQUE_ID_ddebug623, !17, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 513, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ice_read_pba_string.__UNIQUE_ID_ddebug624, !20, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 520, i32 3}
!25 = !{ptr @ice_read_pba_string.__UNIQUE_ID_ddebug625, !24, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 525, i32 3}
!28 = !{ptr @ice_read_pba_string.__UNIQUE_ID_ddebug626, !27, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 534, i32 3}
!31 = !{ptr @ice_read_pba_string.__UNIQUE_ID_ddebug627, !30, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 541, i32 4}
!34 = !{ptr @ice_read_pba_string.__UNIQUE_ID_ddebug628, !33, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 1042, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ice_init_nvm.__UNIQUE_ID_ddebug650, !36, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 1048, i32 3}
!41 = !{ptr @ice_init_nvm.__UNIQUE_ID_ddebug651, !40, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 1054, i32 3}
!44 = !{ptr @ice_init_nvm.__UNIQUE_ID_ddebug652, !43, !"__UNIQUE_ID_ddebug652", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 1060, i32 3}
!47 = !{ptr @ice_init_nvm.__UNIQUE_ID_ddebug653, !46, !"__UNIQUE_ID_ddebug653", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 1066, i32 3}
!50 = !{ptr @ice_init_nvm.__UNIQUE_ID_ddebug654, !49, !"__UNIQUE_ID_ddebug654", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 1071, i32 3}
!53 = !{ptr @ice_init_nvm.__UNIQUE_ID_ddebug655, !52, !"__UNIQUE_ID_ddebug655", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 570, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug629, !55, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 579, i32 3}
!60 = !{ptr @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug630, !59, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 584, i32 3}
!63 = !{ptr @ice_get_nvm_ver_info.__UNIQUE_ID_ddebug631, !62, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 329, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ice_read_flash_module.__UNIQUE_ID_ddebug619, !65, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 271, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug616, !69, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 283, i32 3}
!74 = !{ptr @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug617, !73, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 299, i32 2}
!77 = !{ptr @ice_get_flash_bank_offset.__UNIQUE_ID_ddebug618, !76, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 703, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ice_get_orom_ver_info.__UNIQUE_ID_ddebug636, !79, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 644, i32 3}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug632, !83, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 656, i32 14}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 659, i32 3}
!90 = !{ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug633, !89, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 668, i32 4}
!93 = !{ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug634, !92, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 678, i32 2}
!96 = !{ptr @ice_get_orom_civd_data.__UNIQUE_ID_ddebug635, !95, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 753, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ice_get_netlist_info.__UNIQUE_ID_ddebug637, !98, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 764, i32 3}
!103 = !{ptr @ice_get_netlist_info.__UNIQUE_ID_ddebug638, !102, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 846, i32 4}
!106 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ice_discover_flash_size.__UNIQUE_ID_ddebug639, !105, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 851, i32 4}
!110 = !{ptr @ice_discover_flash_size.__UNIQUE_ID_ddebug640, !109, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 860, i32 2}
!113 = !{ptr @ice_discover_flash_size.__UNIQUE_ID_ddebug641, !112, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 948, i32 3}
!116 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug642, !115, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 954, i32 3}
!120 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug643, !119, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 975, i32 3}
!123 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug644, !122, !"__UNIQUE_ID_ddebug644", i1 false, i1 false}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 981, i32 3}
!126 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug645, !125, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 987, i32 3}
!129 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug646, !128, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 993, i32 3}
!132 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug647, !131, !"__UNIQUE_ID_ddebug647", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 999, i32 3}
!135 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug648, !134, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!136 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/ice/ice_nvm.c", i32 1005, i32 3}
!138 = !{ptr @ice_determine_active_flash_banks.__UNIQUE_ID_ddebug649, !137, !"__UNIQUE_ID_ddebug649", i1 false, i1 false}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 2148345483, i64 2148345488, i64 2148345501, i64 2148345545, i64 2148345579, i64 2148345600}
!149 = !{!"auto-init"}
!150 = !{i64 6795114}
!151 = !{i64 2160274800}
!152 = !{i64 2160275519}
