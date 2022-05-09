; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ice/ice_flow.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ice/ice_flow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ice_ptype_attributes = type { i16, i32 }
%struct.ice_flow_field_info = type { i32, i16, i16, i16 }
%struct.ice_flow_seg_info = type { i32, i64, i64, [42 x %struct.ice_flow_fld_info], i8, [2 x %struct.ice_flow_seg_fld_raw] }
%struct.ice_flow_fld_info = type { i32, %struct.ice_flow_fld_loc, %struct.ice_flow_fld_loc, %struct.ice_flow_seg_xtrct }
%struct.ice_flow_fld_loc = type { i16, i16, i16 }
%struct.ice_flow_seg_xtrct = type { i8, i16, i8, i8, i16 }
%struct.ice_flow_seg_fld_raw = type { %struct.ice_flow_fld_info, i16 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.202, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.202 = type { ptr }
%struct.ice_flow_prof_params = type { i32, i16, i8, ptr, [48 x %struct.ice_fv_word], ptr, i16, [48 x i16], [32 x i32] }
%struct.ice_fv_word = type <{ i8, i16, i8 }>
%struct.ice_flow_prof = type { %struct.list_head, i64, i32, i8, %struct.mutex, %struct.list_head, [2 x %struct.ice_flow_seg_info], [24 x i32] }
%struct.ice_flow_entry = type { %struct.list_head, i64, ptr, ptr, i32, i16, i16 }
%struct.ice_rss_cfg = type { %struct.list_head, [24 x i32], i64, i32 }

@ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ice_flow_rem_vsi_prof\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/intel/ice/ice_flow.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot find flow profile id=%llu\0A\00", [62 x i8] zeroinitializer }, align 32
@ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ice_flow_disassoc_prof() failed with status=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ice_flow_add_prof_sync.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 1, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_flow_add_prof_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error processing a flow's packet segments\0A\00", [53 x i8] zeroinitializer }, align 32
@ice_flow_add_prof_sync.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error adding a HW flow profile\0A\00", [32 x i8] zeroinitializer }, align 32
@ice_flow_add_prof_sync.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&params->prof->entries_lock\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ice_ptypes_mac_il = internal constant { [32 x i32], [32 x i8] } zeroinitializer, align 32
@ice_attr_gtpu_down = internal constant { [20 x %struct.ice_ptype_attributes], [32 x i8] } { [20 x %struct.ice_ptype_attributes] [%struct.ice_ptype_attributes { i16 331, i32 2 }, %struct.ice_ptype_attributes { i16 332, i32 2 }, %struct.ice_ptype_attributes { i16 333, i32 2 }, %struct.ice_ptype_attributes { i16 334, i32 2 }, %struct.ice_ptype_attributes { i16 335, i32 2 }, %struct.ice_ptype_attributes { i16 336, i32 2 }, %struct.ice_ptype_attributes { i16 337, i32 2 }, %struct.ice_ptype_attributes { i16 338, i32 2 }, %struct.ice_ptype_attributes { i16 339, i32 2 }, %struct.ice_ptype_attributes { i16 340, i32 2 }, %struct.ice_ptype_attributes { i16 341, i32 2 }, %struct.ice_ptype_attributes { i16 342, i32 2 }, %struct.ice_ptype_attributes { i16 343, i32 2 }, %struct.ice_ptype_attributes { i16 344, i32 2 }, %struct.ice_ptype_attributes { i16 345, i32 2 }, %struct.ice_ptype_attributes { i16 346, i32 2 }, %struct.ice_ptype_attributes { i16 347, i32 2 }, %struct.ice_ptype_attributes { i16 348, i32 2 }, %struct.ice_ptype_attributes { i16 349, i32 2 }, %struct.ice_ptype_attributes { i16 350, i32 2 }], [32 x i8] zeroinitializer }, align 32
@ice_attr_gtpu_up = internal constant { [20 x %struct.ice_ptype_attributes], [32 x i8] } { [20 x %struct.ice_ptype_attributes] [%struct.ice_ptype_attributes { i16 331, i32 3 }, %struct.ice_ptype_attributes { i16 332, i32 3 }, %struct.ice_ptype_attributes { i16 333, i32 3 }, %struct.ice_ptype_attributes { i16 334, i32 3 }, %struct.ice_ptype_attributes { i16 335, i32 3 }, %struct.ice_ptype_attributes { i16 336, i32 3 }, %struct.ice_ptype_attributes { i16 337, i32 3 }, %struct.ice_ptype_attributes { i16 338, i32 3 }, %struct.ice_ptype_attributes { i16 339, i32 3 }, %struct.ice_ptype_attributes { i16 340, i32 3 }, %struct.ice_ptype_attributes { i16 341, i32 3 }, %struct.ice_ptype_attributes { i16 342, i32 3 }, %struct.ice_ptype_attributes { i16 343, i32 3 }, %struct.ice_ptype_attributes { i16 344, i32 3 }, %struct.ice_ptype_attributes { i16 345, i32 3 }, %struct.ice_ptype_attributes { i16 346, i32 3 }, %struct.ice_ptype_attributes { i16 347, i32 3 }, %struct.ice_ptype_attributes { i16 348, i32 3 }, %struct.ice_ptype_attributes { i16 349, i32 3 }, %struct.ice_ptype_attributes { i16 350, i32 3 }], [32 x i8] zeroinitializer }, align 32
@ice_attr_gtpu_eh = internal constant { [20 x %struct.ice_ptype_attributes], [32 x i8] } { [20 x %struct.ice_ptype_attributes] [%struct.ice_ptype_attributes { i16 331, i32 0 }, %struct.ice_ptype_attributes { i16 332, i32 0 }, %struct.ice_ptype_attributes { i16 333, i32 0 }, %struct.ice_ptype_attributes { i16 334, i32 0 }, %struct.ice_ptype_attributes { i16 335, i32 0 }, %struct.ice_ptype_attributes { i16 336, i32 0 }, %struct.ice_ptype_attributes { i16 337, i32 0 }, %struct.ice_ptype_attributes { i16 338, i32 0 }, %struct.ice_ptype_attributes { i16 339, i32 0 }, %struct.ice_ptype_attributes { i16 340, i32 0 }, %struct.ice_ptype_attributes { i16 341, i32 0 }, %struct.ice_ptype_attributes { i16 342, i32 0 }, %struct.ice_ptype_attributes { i16 343, i32 0 }, %struct.ice_ptype_attributes { i16 344, i32 0 }, %struct.ice_ptype_attributes { i16 345, i32 0 }, %struct.ice_ptype_attributes { i16 346, i32 0 }, %struct.ice_ptype_attributes { i16 347, i32 0 }, %struct.ice_ptype_attributes { i16 348, i32 0 }, %struct.ice_ptype_attributes { i16 349, i32 0 }, %struct.ice_ptype_attributes { i16 350, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ice_ptypes_mac_ofos = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 -37746618, i32 -1077969026, i32 -150994465, i32 -16908805, i32 1918, i32 0, i32 0, i32 0, i32 4194304, i32 67104768, i32 2147483616], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_macvlan_il = internal constant { <{ i32, i32, i32, i32, i32, [27 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, [27 x i32] }> <{ i32 0, i32 -1140850688, i32 479, i32 -268435456, i32 1918, [27 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_arp_of = internal constant { <{ i32, [31 x i32] }>, [32 x i8] } { <{ i32, [31 x i32] }> <{ i32 2048, [31 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv4_il = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 -536870912, i32 -1207472114, i32 -2147483645, i32 -534921157, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2095104], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv4_ofos_all = internal constant { <{ [12 x i32], [20 x i32] }>, [32 x i8] } { <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 499122176, i32 67110912, i32 0, i32 0, i32 0, i32 341, i32 0, i32 0, i32 0, i32 1032192, i32 -2082408448, i32 257], [20 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv6_il = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 0, i32 62392176, i32 476, i32 249561088, i32 1904, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2145386496], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv6_ofos_all = internal constant { <{ [12 x i32], [20 x i32] }>, [32 x i8] } { <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 0, i32 0, i32 1996488704, i32 268443648, i32 0, i32 682, i32 0, i32 0, i32 528128, i32 66060288, i32 2082406400, i32 518], [20 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv4_ofos_no_l4 = internal constant { <{ i32, i32, [30 x i32] }>, [32 x i8] } { <{ i32, i32, [30 x i32] }> <{ i32 281018368, i32 67110912, [30 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv4_il_no_l4 = internal constant { <{ i32, i32, i32, i32, i32, [27 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, [27 x i32] }> <{ i32 1610612736, i32 402927624, i32 -2147483646, i32 1611710497, i32 8, [27 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv4_ofos = internal constant { <{ [10 x i32], [22 x i32] }>, [32 x i8] } { <{ [10 x i32], [22 x i32] }> <{ [10 x i32] [i32 499122176, i32 67110912, i32 0, i32 0, i32 0, i32 341, i32 0, i32 0, i32 0, i32 1032192], [22 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv6_ofos_no_l4 = internal constant { <{ i32, i32, i32, i32, [28 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, [28 x i32] }> <{ i32 0, i32 0, i32 1124073472, i32 268443648, [28 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv6_il_no_l4 = internal constant { <{ i32, i32, i32, i32, i32, [27 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, [27 x i32] }> <{ i32 0, i32 35128368, i32 268, i32 140513472, i32 1072, [27 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ipv6_ofos = internal constant { <{ [10 x i32], [22 x i32] }>, [32 x i8] } { <{ [10 x i32], [22 x i32] }> <{ [10 x i32] [i32 0, i32 0, i32 1996488704, i32 268443648, i32 0, i32 682, i32 0, i32 0, i32 0, i32 66060288], [22 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_mac_non_ip_ofos = internal constant { <{ [10 x i32], [22 x i32] }>, [32 x i8] } { <{ [10 x i32], [22 x i32] }> <{ [10 x i32] [i32 2118, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4194304, i32 67104768], [22 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_pppoe = internal constant { <{ [10 x i32], [22 x i32] }>, [32 x i8] } { <{ [10 x i32], [22 x i32] }> <{ [10 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67100672], [22 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_udp_il = internal constant { <{ [12 x i32], [20 x i32] }>, [32 x i8] } { <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 -2130706432, i32 538984512, i32 67108880, i32 -2139029246, i32 64, i32 0, i32 0, i32 0, i32 0, i32 4259840, i32 -1870389248, i32 7], [20 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_tcp_il = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 67108864, i32 -2139029246, i32 268435520, i32 33817608, i32 258, i32 0, i32 0, i32 0, i32 0, i32 8519680, i32 554188800], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_sctp_il = internal constant { <{ [10 x i32], [22 x i32] }>, [32 x i8] } { <{ [10 x i32], [22 x i32] }> <{ [10 x i32] [i32 134217728, i32 16908804, i32 536871041, i32 67635216, i32 516, i32 0, i32 0, i32 0, i32 0, i32 17039360], [22 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_icmp_of = internal constant { <{ i32, [31 x i32] }>, [32 x i8] } { <{ i32, [31 x i32] }> <{ i32 268435456, [31 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_icmp_il = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 0, i32 33817608, i32 1073742082, i32 135270432, i32 1032, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1108377600], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_gre_of = internal constant { <{ i32, i32, i32, i32, i32, [27 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, [27 x i32] }> <{ i32 0, i32 -1077970944, i32 479, i32 -16916480, i32 382, [27 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_gtpc = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 384], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_gtpc_tid = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 96], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_gtpu = internal constant { <{ [11 x i32], [21 x i32] }>, [32 x i8] } { <{ [11 x i32], [21 x i32] }> <{ [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2147483136], [21 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_l2tpv3 = internal constant { <{ [12 x i32], [20 x i32] }>, [32 x i8] } { <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 768], [20 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_esp = internal constant { <{ i32, i32, i32, i32, i32, i32, [26 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, i32, [26 x i32] }> <{ i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, [26 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_ah = internal constant { <{ i32, i32, i32, i32, i32, i32, [26 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, i32, [26 x i32] }> <{ i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, [26 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_nat_t_esp = internal constant { <{ i32, i32, i32, i32, i32, i32, [26 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, i32, [26 x i32] }> <{ i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, [26 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_pfcp_node = internal constant { <{ [12 x i32], [20 x i32] }>, [32 x i8] } { <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2147483648, i32 2], [20 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_ptypes_pfcp_session = internal constant { <{ [12 x i32], [20 x i32] }>, [32 x i8] } { <{ [12 x i32], [20 x i32] }> <{ [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5], [20 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@ice_flds_info = internal constant { [42 x %struct.ice_flow_field_info], [104 x i8] } { [42 x %struct.ice_flow_field_info] [%struct.ice_flow_field_info { i32 1, i16 0, i16 48, i16 0 }, %struct.ice_flow_field_info { i32 1, i16 48, i16 48, i16 0 }, %struct.ice_flow_field_info { i32 2, i16 96, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 2, i16 112, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 1, i16 0, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 4, i16 0, i16 8, i16 252 }, %struct.ice_flow_field_info { i32 8, i16 0, i16 8, i16 4080 }, %struct.ice_flow_field_info { i32 0, i16 64, i16 8, i16 -256 }, %struct.ice_flow_field_info { i32 0, i16 64, i16 8, i16 255 }, %struct.ice_flow_field_info { i32 0, i16 48, i16 8, i16 255 }, %struct.ice_flow_field_info { i32 0, i16 48, i16 8, i16 -256 }, %struct.ice_flow_field_info { i32 4, i16 96, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 4, i16 128, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 8, i16 64, i16 128, i16 0 }, %struct.ice_flow_field_info { i32 8, i16 192, i16 128, i16 0 }, %struct.ice_flow_field_info { i32 64, i16 0, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 64, i16 16, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 128, i16 0, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 128, i16 16, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 256, i16 0, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 256, i16 16, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 64, i16 104, i16 8, i16 0 }, %struct.ice_flow_field_info { i32 16, i16 112, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 16, i16 192, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 16, i16 64, i16 48, i16 0 }, %struct.ice_flow_field_info { i32 16, i16 144, i16 48, i16 0 }, %struct.ice_flow_field_info { i32 16, i16 48, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 32, i16 0, i16 8, i16 0 }, %struct.ice_flow_field_info { i32 32, i16 8, i16 8, i16 0 }, %struct.ice_flow_field_info { i32 512, i16 96, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 2048, i16 96, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 4096, i16 96, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 8192, i16 96, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 8192, i16 176, i16 16, i16 16128 }, %struct.ice_flow_field_info { i32 32768, i16 96, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 16384, i16 96, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 65536, i16 16, i16 16, i16 0 }, %struct.ice_flow_field_info { i32 262144, i16 96, i16 64, i16 0 }, %struct.ice_flow_field_info { i32 524288, i16 0, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 1048576, i16 0, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 2097152, i16 32, i16 32, i16 0 }, %struct.ice_flow_field_info { i32 4194304, i16 64, i16 32, i16 0 }], [104 x i8] zeroinitializer }, align 32
@ice_flow_assoc_prof.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ice_flow_assoc_prof\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HW profile add failed, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ice_flow_disassoc_prof\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HW profile remove failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [44 x i64] [i64 42, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1829, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1855, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1397, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1406, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1411, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"ice_ptypes_mac_il\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 375, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"ice_attr_gtpu_down\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 434, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"ice_attr_gtpu_up\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 457, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"ice_attr_gtpu_eh\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 411, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"ice_ptypes_mac_ofos\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 137, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"ice_ptypes_macvlan_il\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 149, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"ice_ptypes_arp_of\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 253, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"ice_ptypes_ipv4_il\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 189, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"ice_ptypes_ipv4_ofos_all\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 177, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"ice_ptypes_ipv6_il\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 229, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"ice_ptypes_ipv6_ofos_all\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 217, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"ice_ptypes_ipv4_ofos_no_l4\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 241, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"ice_ptypes_ipv4_il_no_l4\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 265, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"ice_ptypes_ipv4_ofos\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 163, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"ice_ptypes_ipv6_ofos_no_l4\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 277, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"ice_ptypes_ipv6_il_no_l4\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 289, i32 18 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"ice_ptypes_ipv6_ofos\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 203, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant [27 x i8] c"ice_ptypes_mac_non_ip_ofos\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 575, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"ice_ptypes_pppoe\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 492, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant [18 x i8] c"ice_ptypes_udp_il\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 303, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"ice_ptypes_tcp_il\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 315, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"ice_ptypes_sctp_il\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 327, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"ice_ptypes_icmp_of\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 339, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"ice_ptypes_icmp_il\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 351, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"ice_ptypes_gre_of\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 363, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"ice_ptypes_gtpc\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 387, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"ice_ptypes_gtpc_tid\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 399, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"ice_ptypes_gtpu\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 480, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"ice_ptypes_l2tpv3\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 528, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"ice_ptypes_esp\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 540, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"ice_ptypes_ah\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 552, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [21 x i8] c"ice_ptypes_nat_t_esp\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 564, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [21 x i8] c"ice_ptypes_pfcp_node\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 504, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant [24 x i8] c"ice_ptypes_pfcp_session\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 516, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"ice_flds_info\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 31, i32 28 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1487, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [45 x i8] c"../drivers/net/ethernet/intel/ice/ice_flow.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1518, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ice_flow_add_prof_sync.__key, ptr @.str.8, ptr @ice_ptypes_mac_il, ptr @ice_attr_gtpu_down, ptr @ice_attr_gtpu_up, ptr @ice_attr_gtpu_eh, ptr @ice_ptypes_mac_ofos, ptr @ice_ptypes_macvlan_il, ptr @ice_ptypes_arp_of, ptr @ice_ptypes_ipv4_il, ptr @ice_ptypes_ipv4_ofos_all, ptr @ice_ptypes_ipv6_il, ptr @ice_ptypes_ipv6_ofos_all, ptr @ice_ptypes_ipv4_ofos_no_l4, ptr @ice_ptypes_ipv4_il_no_l4, ptr @ice_ptypes_ipv4_ofos, ptr @ice_ptypes_ipv6_ofos_no_l4, ptr @ice_ptypes_ipv6_il_no_l4, ptr @ice_ptypes_ipv6_ofos, ptr @ice_ptypes_mac_non_ip_ofos, ptr @ice_ptypes_pppoe, ptr @ice_ptypes_udp_il, ptr @ice_ptypes_tcp_il, ptr @ice_ptypes_sctp_il, ptr @ice_ptypes_icmp_of, ptr @ice_ptypes_icmp_il, ptr @ice_ptypes_gre_of, ptr @ice_ptypes_gtpc, ptr @ice_ptypes_gtpc_tid, ptr @ice_ptypes_gtpu, ptr @ice_ptypes_l2tpv3, ptr @ice_ptypes_esp, ptr @ice_ptypes_ah, ptr @ice_ptypes_nat_t_esp, ptr @ice_ptypes_pfcp_node, ptr @ice_ptypes_pfcp_session, ptr @ice_flds_info, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_flow_add_prof_sync.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_mac_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_attr_gtpu_down to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_attr_gtpu_up to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_attr_gtpu_eh to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_mac_ofos to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_macvlan_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_arp_of to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv4_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv4_ofos_all to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv6_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv6_ofos_all to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv4_ofos_no_l4 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv4_il_no_l4 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv4_ofos to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv6_ofos_no_l4 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv6_il_no_l4 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ipv6_ofos to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_mac_non_ip_ofos to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_pppoe to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_udp_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_tcp_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_sctp_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_icmp_of to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_icmp_il to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_gre_of to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_gtpc to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_gtpc_tid to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_gtpu to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_l2tpv3 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_esp to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_ah to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_nat_t_esp to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_pfcp_node to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_ptypes_pfcp_session to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice_flds_info to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_flow_add_prof(ptr noundef %hw, i32 noundef %blk, i32 noundef %dir, i64 noundef %prof_id, ptr noundef readonly %segs, i8 noundef zeroext %segs_cnt, ptr noundef %prof) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %segs_cnt)
  %cmp = icmp ugt i8 %segs_cnt, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %segs_cnt)
  %tobool.not = icmp eq i8 %segs_cnt, 0
  %tobool4.not = icmp eq ptr %segs, null
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %segs_cnt)
  %exitcond.not.i = icmp eq i8 %segs_cnt, 1
  br i1 %exitcond.not.i, label %for.cond.i.if.end9_crit_edge, label %for.body.i.1

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.i.1:                                     ; preds = %for.cond.i
  %arrayidx.i.1 = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 1
  %0 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.1, align 8
  %and.i.1 = and i32 %1, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  %2 = tail call i32 @llvm.ctpop.i32(i32 %and.i.1) #7, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1.i.i.1 = icmp ult i32 %2, 2
  %or.cond.i.1 = or i1 %tobool.not.i.1, %cmp1.i.i.1
  br i1 %or.cond.i.1, label %if.end.i.1, label %for.body.i.1.cleanup_crit_edge

for.body.i.1.cleanup_crit_edge:                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.1:                                       ; preds = %for.body.i.1
  %and10.i.1 = and i32 %1, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.1)
  %tobool11.not.i.1 = icmp eq i32 %and10.i.1, 0
  %3 = tail call i32 @llvm.ctpop.i32(i32 %and10.i.1) #7, !range !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp1.i29.i.1 = icmp ult i32 %3, 2
  %or.cond32.i.1 = or i1 %tobool11.not.i.1, %cmp1.i29.i.1
  br i1 %or.cond32.i.1, label %if.end.i.1.if.end9_crit_edge, label %if.end.i.1.cleanup_crit_edge

if.end.i.1.cleanup_crit_edge:                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.1.if.end9_crit_edge:                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.i:                                       ; preds = %if.end
  %4 = ptrtoint ptr %segs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %segs, align 8
  %and.i = and i32 %5, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %6 = tail call i32 @llvm.ctpop.i32(i32 %and.i) #7, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1.i.i = icmp ult i32 %6, 2
  %or.cond.i = or i1 %tobool.not.i, %cmp1.i.i
  br i1 %or.cond.i, label %if.end.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %and10.i = and i32 %5, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %7 = tail call i32 @llvm.ctpop.i32(i32 %and10.i) #7, !range !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i29.i = icmp ult i32 %7, 2
  %or.cond32.i = or i1 %tobool11.not.i, %cmp1.i29.i
  br i1 %or.cond32.i, label %for.cond.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.1.if.end9_crit_edge, %for.cond.i.if.end9_crit_edge
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 %blk
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #7
  %call10 = tail call fastcc i32 @ice_flow_add_prof_sync(ptr noundef %hw, i32 noundef %blk, i32 noundef %dir, i64 noundef %prof_id, ptr noundef nonnull %segs, i8 noundef zeroext %segs_cnt, ptr noundef %prof)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  %8 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prof, align 4
  %arrayidx13 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 %blk
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx13, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %arrayidx13, ptr noundef %11) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %9, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx13, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %9, ptr %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i, %if.then12.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.i.1.cleanup_crit_edge, %for.body.i.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end14 ], [ -28, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.1.cleanup_crit_edge ], [ -22, %for.body.i.1.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_flow_add_prof_sync(ptr noundef %hw, i32 noundef %blk, i32 noundef %dir, i64 noundef %prof_id, ptr nocapture noundef readonly %segs, i8 noundef zeroext %segs_cnt, ptr noundef writeonly %prof) unnamed_addr #0 align 64 {
entry:
  %match.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %prof, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 436) #10
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2416, i32 noundef 3520) #7
  %prof5 = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %prof5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %prof5, align 8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end3.free_params_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.free_params_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_params

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 4, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %arrayidx, align 4
  %off = getelementptr %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 4, i32 %indvars.iv, i32 1
  %5 = ptrtoint ptr %off to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 511, ptr %off, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 48
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %blk, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prof5, align 8
  %id = getelementptr inbounds %struct.ice_flow_prof, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %prof_id, ptr %id, align 8
  %10 = load ptr, ptr %prof5, align 8
  %dir17 = getelementptr inbounds %struct.ice_flow_prof, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dir17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dir, ptr %dir17, align 8
  %12 = load ptr, ptr %prof5, align 8
  %segs_cnt19 = getelementptr inbounds %struct.ice_flow_prof, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %segs_cnt19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %segs_cnt, ptr %segs_cnt19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %segs_cnt)
  %cmp23153.not = icmp eq i8 %segs_cnt, 0
  br i1 %cmp23153.not, label %for.end.for.end34_crit_edge, label %for.body25.lr.ph

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.body25.lr.ph:                                 ; preds = %for.end
  %14 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prof5, align 8
  %wide.trip.count = zext i8 %segs_cnt to i32
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.body25.lr.ph
  %indvars.iv157 = phi i32 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next158, %for.body25.for.body25_crit_edge ]
  %arrayidx29 = getelementptr %struct.ice_flow_prof, ptr %15, i32 0, i32 6, i32 %indvars.iv157
  %arrayidx31 = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 %indvars.iv157
  %16 = call ptr @memcpy(ptr %arrayidx29, ptr %arrayidx31, i32 1096)
  %indvars.iv.next158 = add nuw nsw i32 %indvars.iv157, 1
  %exitcond159.not = icmp eq i32 %indvars.iv.next158, %wide.trip.count
  br i1 %exitcond159.not, label %for.body25.for.end34_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

for.body25.for.end34_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.end34:                                        ; preds = %for.body25.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %ptypes.i.i = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 8
  %17 = call ptr @memset(ptr %ptypes.i.i, i32 255, i32 128)
  %18 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prof5, align 8
  %segs_cnt36.i.i = getelementptr inbounds %struct.ice_flow_prof, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %segs_cnt36.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %segs_cnt36.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp37.not.i.i = icmp eq i8 %21, 0
  br i1 %cmp37.not.i.i, label %for.end34.ice_flow_proc_seg_hdrs.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.end34.ice_flow_proc_seg_hdrs.exit.i_crit_edge: ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_proc_seg_hdrs.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.end34
  %attr.i.i = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 5
  %attr_cnt.i.i = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end328.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %if.end328.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ice_flow_prof, ptr %19, i32 0, i32 6, i32 %indvars.iv.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 8
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i.i)
  %tobool6.not.i.i = icmp eq i32 %indvars.iv.i.i, 0
  %cond.i.i = select i1 %tobool6.not.i.i, ptr @ice_ptypes_mac_ofos, ptr @ice_ptypes_mac_il
  %call.i.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull %cond.i.i, i32 noundef 1024) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i.i)
  %tobool12.not.i.i = icmp eq i32 %indvars.iv.i.i, 0
  %and13.i.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i.i = icmp eq i32 %and13.i.i, 0
  %or.cond.i.i = select i1 %tobool12.not.i.i, i1 true, i1 %tobool14.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.if.end21.i.i_crit_edge, label %if.then15.i.i

if.end.i.i.if.end21.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i6.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_macvlan_il, i32 noundef 1024) #7
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then15.i.i, %if.end.i.i.if.end21.i.i_crit_edge
  %tobool22.not.not.i.i = xor i1 %tobool12.not.i.i, true
  %and24.i.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  %or.cond1.i.i = select i1 %tobool22.not.not.i.i, i1 true, i1 %tobool25.not.i.i
  br i1 %or.cond1.i.i, label %if.end21.i.i.if.end32.i.i_crit_edge, label %if.then26.i.i

if.end21.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i

if.then26.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_arp_of, i32 noundef 1024) #7
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then26.i.i, %if.end21.i.i.if.end32.i.i_crit_edge
  %and33.i.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i.i)
  %tobool34.not.i.i = icmp eq i32 %and33.i.i, 0
  %24 = and i32 %23, 536870916
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870916, i32 %24)
  %.not.i.i = icmp eq i32 %24, 536870916
  br i1 %.not.i.i, label %if.then38.i.i, label %if.else.i.i

if.then38.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond41.i.i = select i1 %tobool12.not.i.i, ptr @ice_ptypes_ipv4_ofos_all, ptr @ice_ptypes_ipv4_il
  br label %if.end120.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end32.i.i
  %and47.i.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  %25 = and i32 %23, 536870920
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870920, i32 %25)
  %.not35.i.i = icmp eq i32 %25, 536870920
  br i1 %.not35.i.i, label %if.then52.i.i, label %if.else61.i.i

if.then52.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond55.i.i = select i1 %tobool12.not.i.i, ptr @ice_ptypes_ipv6_ofos_all, ptr @ice_ptypes_ipv6_il
  br label %if.end120.sink.split.i.i

if.else61.i.i:                                    ; preds = %if.else.i.i
  %tobool34.not.not.i.i = xor i1 %tobool34.not.i.i, true
  %and65.i.i = and i32 %23, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i.i)
  %tobool66.not.i.i = icmp eq i32 %and65.i.i, 0
  %or.cond4.i.i = select i1 %tobool34.not.not.i.i, i1 %tobool66.not.i.i, i1 false
  br i1 %or.cond4.i.i, label %if.then67.i.i, label %if.else76.i.i

if.then67.i.i:                                    ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond70.i.i = select i1 %tobool12.not.i.i, ptr @ice_ptypes_ipv4_ofos_no_l4, ptr @ice_ptypes_ipv4_il_no_l4
  br label %if.end120.sink.split.i.i

if.else76.i.i:                                    ; preds = %if.else61.i.i
  br i1 %tobool34.not.i.i, label %if.else88.i.i, label %if.then79.i.i

if.then79.i.i:                                    ; preds = %if.else76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond82.i.i = select i1 %tobool12.not.i.i, ptr @ice_ptypes_ipv4_ofos, ptr @ice_ptypes_ipv4_il
  br label %if.end120.sink.split.i.i

if.else88.i.i:                                    ; preds = %if.else76.i.i
  %tobool48.not.not.i.i = xor i1 %tobool48.not.i.i, true
  %or.cond5.i.i = select i1 %tobool48.not.not.i.i, i1 %tobool66.not.i.i, i1 false
  br i1 %or.cond5.i.i, label %if.then94.i.i, label %if.else103.i.i

if.then94.i.i:                                    ; preds = %if.else88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond97.i.i = select i1 %tobool12.not.i.i, ptr @ice_ptypes_ipv6_ofos_no_l4, ptr @ice_ptypes_ipv6_il_no_l4
  br label %if.end120.sink.split.i.i

if.else103.i.i:                                   ; preds = %if.else88.i.i
  br i1 %tobool48.not.i.i, label %if.else103.i.i.if.end120.i.i_crit_edge, label %if.then106.i.i

if.else103.i.i.if.end120.i.i_crit_edge:           ; preds = %if.else103.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i.i

if.then106.i.i:                                   ; preds = %if.else103.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond109.i.i = select i1 %tobool12.not.i.i, ptr @ice_ptypes_ipv6_ofos, ptr @ice_ptypes_ipv6_il
  br label %if.end120.sink.split.i.i

if.end120.sink.split.i.i:                         ; preds = %if.then106.i.i, %if.then94.i.i, %if.then79.i.i, %if.then67.i.i, %if.then52.i.i, %if.then38.i.i
  %cond55.sink.i.i = phi ptr [ %cond55.i.i, %if.then52.i.i ], [ %cond82.i.i, %if.then79.i.i ], [ %cond109.i.i, %if.then106.i.i ], [ %cond97.i.i, %if.then94.i.i ], [ %cond70.i.i, %if.then67.i.i ], [ %cond41.i.i, %if.then38.i.i ]
  %call.i9.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull %cond55.sink.i.i, i32 noundef 1024) #7
  br label %if.end120.i.i

if.end120.i.i:                                    ; preds = %if.end120.sink.split.i.i, %if.else103.i.i.if.end120.i.i_crit_edge
  %and121.i.i = and i32 %23, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i.i)
  %tobool122.not.i.i = icmp eq i32 %and121.i.i, 0
  br i1 %tobool122.not.i.i, label %if.else129.i.i, label %if.then123.i.i

if.then123.i.i:                                   ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i14.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_mac_non_ip_ofos, i32 noundef 1024) #7
  br label %if.end145.i.i

if.else129.i.i:                                   ; preds = %if.end120.i.i
  %and130.i.i = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i.i)
  %tobool131.not.i.i = icmp eq i32 %and130.i.i, 0
  br i1 %tobool131.not.i.i, label %if.else138.i.i, label %if.then132.i.i

if.then132.i.i:                                   ; preds = %if.else129.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i15.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_pppoe, i32 noundef 1024) #7
  br label %if.end145.i.i

if.else138.i.i:                                   ; preds = %if.else129.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i16.i.i = tail call i32 @__bitmap_andnot(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_pppoe, i32 noundef 1024) #7
  br label %if.end145.i.i

if.end145.i.i:                                    ; preds = %if.else138.i.i, %if.then132.i.i, %if.then123.i.i
  %and146.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i.i)
  %tobool147.not.i.i = icmp eq i32 %and146.i.i, 0
  br i1 %tobool147.not.i.i, label %if.else154.i.i, label %if.end145.i.i.if.end174.sink.split.i.i_crit_edge

if.end145.i.i.if.end174.sink.split.i.i_crit_edge: ; preds = %if.end145.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.sink.split.i.i

if.else154.i.i:                                   ; preds = %if.end145.i.i
  %and155.i.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i.i)
  %tobool156.not.i.i = icmp eq i32 %and155.i.i, 0
  br i1 %tobool156.not.i.i, label %if.else163.i.i, label %if.else154.i.i.if.end174.sink.split.i.i_crit_edge

if.else154.i.i.if.end174.sink.split.i.i_crit_edge: ; preds = %if.else154.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.sink.split.i.i

if.else163.i.i:                                   ; preds = %if.else154.i.i
  %and164.i.i = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i.i)
  %tobool165.not.i.i = icmp eq i32 %and164.i.i, 0
  br i1 %tobool165.not.i.i, label %if.else163.i.i.if.end174.i.i_crit_edge, label %if.else163.i.i.if.end174.sink.split.i.i_crit_edge

if.else163.i.i.if.end174.sink.split.i.i_crit_edge: ; preds = %if.else163.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.sink.split.i.i

if.else163.i.i.if.end174.i.i_crit_edge:           ; preds = %if.else163.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.i.i

if.end174.sink.split.i.i:                         ; preds = %if.else163.i.i.if.end174.sink.split.i.i_crit_edge, %if.else154.i.i.if.end174.sink.split.i.i_crit_edge, %if.end145.i.i.if.end174.sink.split.i.i_crit_edge
  %ice_ptypes_tcp_il.sink.i.i = phi ptr [ @ice_ptypes_udp_il, %if.end145.i.i.if.end174.sink.split.i.i_crit_edge ], [ @ice_ptypes_tcp_il, %if.else154.i.i.if.end174.sink.split.i.i_crit_edge ], [ @ice_ptypes_sctp_il, %if.else163.i.i.if.end174.sink.split.i.i_crit_edge ]
  %call.i18.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull %ice_ptypes_tcp_il.sink.i.i, i32 noundef 1024) #7
  br label %if.end174.i.i

if.end174.i.i:                                    ; preds = %if.end174.sink.split.i.i, %if.else163.i.i.if.end174.i.i_crit_edge
  %and175.i.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i.i)
  %tobool176.not.i.i = icmp eq i32 %and175.i.i, 0
  br i1 %tobool176.not.i.i, label %if.else186.i.i, label %if.then177.i.i

if.then177.i.i:                                   ; preds = %if.end174.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond180.i.i = select i1 %tobool12.not.i.i, ptr @ice_ptypes_icmp_of, ptr @ice_ptypes_icmp_il
  %call.i20.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull %cond180.i.i, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else186.i.i:                                   ; preds = %if.end174.i.i
  %and187.i.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i.i)
  %tobool188.not.i.i = icmp eq i32 %and187.i.i, 0
  br i1 %tobool188.not.i.i, label %if.else198.i.i, label %if.then189.i.i

if.then189.i.i:                                   ; preds = %if.else186.i.i
  br i1 %tobool12.not.i.i, label %if.then191.i.i, label %if.then189.i.i.if.end303.i.i_crit_edge

if.then189.i.i.if.end303.i.i_crit_edge:           ; preds = %if.then189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303.i.i

if.then191.i.i:                                   ; preds = %if.then189.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i21.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_gre_of, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else198.i.i:                                   ; preds = %if.else186.i.i
  %and199.i.i = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199.i.i)
  %tobool200.not.i.i = icmp eq i32 %and199.i.i, 0
  br i1 %tobool200.not.i.i, label %if.else207.i.i, label %if.then201.i.i

if.then201.i.i:                                   ; preds = %if.else198.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i22.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_gtpc, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else207.i.i:                                   ; preds = %if.else198.i.i
  %and208.i.i = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208.i.i)
  %tobool209.not.i.i = icmp eq i32 %and208.i.i, 0
  br i1 %tobool209.not.i.i, label %if.else216.i.i, label %if.then210.i.i

if.then210.i.i:                                   ; preds = %if.else207.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i23.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_gtpc_tid, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else216.i.i:                                   ; preds = %if.else207.i.i
  %and217.i.i = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217.i.i)
  %tobool218.not.i.i = icmp eq i32 %and217.i.i, 0
  br i1 %tobool218.not.i.i, label %if.else225.i.i, label %if.then219.i.i

if.then219.i.i:                                   ; preds = %if.else216.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i24.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_gtpu, i32 noundef 1024) #7
  %26 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ice_attr_gtpu_down, ptr %attr.i.i, align 4
  %27 = ptrtoint ptr %attr_cnt.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 20, ptr %attr_cnt.i.i, align 8
  br label %if.end303.i.i

if.else225.i.i:                                   ; preds = %if.else216.i.i
  %and226.i.i = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226.i.i)
  %tobool227.not.i.i = icmp eq i32 %and226.i.i, 0
  br i1 %tobool227.not.i.i, label %if.else236.i.i, label %if.then228.i.i

if.then228.i.i:                                   ; preds = %if.else225.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i25.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_gtpu, i32 noundef 1024) #7
  %28 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ice_attr_gtpu_up, ptr %attr.i.i, align 4
  %29 = ptrtoint ptr %attr_cnt.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 20, ptr %attr_cnt.i.i, align 8
  br label %if.end303.i.i

if.else236.i.i:                                   ; preds = %if.else225.i.i
  %and237.i.i = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237.i.i)
  %tobool238.not.i.i = icmp eq i32 %and237.i.i, 0
  br i1 %tobool238.not.i.i, label %if.else247.i.i, label %if.then239.i.i

if.then239.i.i:                                   ; preds = %if.else236.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i26.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_gtpu, i32 noundef 1024) #7
  %30 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ice_attr_gtpu_eh, ptr %attr.i.i, align 4
  %31 = ptrtoint ptr %attr_cnt.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 20, ptr %attr_cnt.i.i, align 8
  br label %if.end303.i.i

if.else247.i.i:                                   ; preds = %if.else236.i.i
  %and248.i.i = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248.i.i)
  %tobool249.not.i.i = icmp eq i32 %and248.i.i, 0
  br i1 %tobool249.not.i.i, label %if.else256.i.i, label %if.then250.i.i

if.then250.i.i:                                   ; preds = %if.else247.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i27.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_gtpu, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else256.i.i:                                   ; preds = %if.else247.i.i
  %and257.i.i = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257.i.i)
  %tobool258.not.i.i = icmp eq i32 %and257.i.i, 0
  br i1 %tobool258.not.i.i, label %if.else265.i.i, label %if.then259.i.i

if.then259.i.i:                                   ; preds = %if.else256.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i28.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_l2tpv3, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else265.i.i:                                   ; preds = %if.else256.i.i
  %and266.i.i = and i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i.i)
  %tobool267.not.i.i = icmp eq i32 %and266.i.i, 0
  br i1 %tobool267.not.i.i, label %if.else274.i.i, label %if.then268.i.i

if.then268.i.i:                                   ; preds = %if.else265.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i29.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_esp, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else274.i.i:                                   ; preds = %if.else265.i.i
  %and275.i.i = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275.i.i)
  %tobool276.not.i.i = icmp eq i32 %and275.i.i, 0
  br i1 %tobool276.not.i.i, label %if.else283.i.i, label %if.then277.i.i

if.then277.i.i:                                   ; preds = %if.else274.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i30.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_ah, i32 noundef 1024) #7
  br label %if.end303.i.i

if.else283.i.i:                                   ; preds = %if.else274.i.i
  %and284.i.i = and i32 %23, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284.i.i)
  %tobool285.not.i.i = icmp eq i32 %and284.i.i, 0
  br i1 %tobool285.not.i.i, label %if.else283.i.i.if.end303.i.i_crit_edge, label %if.then286.i.i

if.else283.i.i.if.end303.i.i_crit_edge:           ; preds = %if.else283.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303.i.i

if.then286.i.i:                                   ; preds = %if.else283.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i31.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_nat_t_esp, i32 noundef 1024) #7
  br label %if.end303.i.i

if.end303.i.i:                                    ; preds = %if.then286.i.i, %if.else283.i.i.if.end303.i.i_crit_edge, %if.then277.i.i, %if.then268.i.i, %if.then259.i.i, %if.then250.i.i, %if.then239.i.i, %if.then228.i.i, %if.then219.i.i, %if.then210.i.i, %if.then201.i.i, %if.then191.i.i, %if.then189.i.i.if.end303.i.i_crit_edge, %if.then177.i.i
  %and304.i.i = and i32 %23, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304.i.i)
  %tobool305.not.i.i = icmp eq i32 %and304.i.i, 0
  br i1 %tobool305.not.i.i, label %if.else317.i.i, label %if.then306.i.i

if.then306.i.i:                                   ; preds = %if.end303.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and307.i.i = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307.i.i)
  %tobool308.not.i.i = icmp eq i32 %and307.i.i, 0
  %ice_ptypes_pfcp_session.ice_ptypes_pfcp_node.i.i = select i1 %tobool308.not.i.i, ptr @ice_ptypes_pfcp_session, ptr @ice_ptypes_pfcp_node
  %call.i32.i.i = tail call i32 @__bitmap_and(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull %ice_ptypes_pfcp_session.ice_ptypes_pfcp_node.i.i, i32 noundef 1024) #7
  br label %if.end328.i.i

if.else317.i.i:                                   ; preds = %if.end303.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i33.i.i = tail call i32 @__bitmap_andnot(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_pfcp_node, i32 noundef 1024) #7
  %call.i34.i.i = tail call i32 @__bitmap_andnot(ptr noundef %ptypes.i.i, ptr noundef %ptypes.i.i, ptr noundef nonnull @ice_ptypes_pfcp_session, i32 noundef 1024) #7
  br label %if.end328.i.i

if.end328.i.i:                                    ; preds = %if.else317.i.i, %if.then306.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %32 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prof5, align 8
  %segs_cnt.i.i = getelementptr inbounds %struct.ice_flow_prof, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %segs_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %segs_cnt.i.i, align 4
  %36 = zext i8 %35 to i32
  %cmp.i.i = icmp ult i32 %indvars.iv.next.i.i, %36
  br i1 %cmp.i.i, label %if.end328.i.i.for.body.i.i_crit_edge, label %if.end328.i.i.ice_flow_proc_seg_hdrs.exit.i_crit_edge

if.end328.i.i.ice_flow_proc_seg_hdrs.exit.i_crit_edge: ; preds = %if.end328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_proc_seg_hdrs.exit.i

if.end328.i.i.for.body.i.i_crit_edge:             ; preds = %if.end328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

ice_flow_proc_seg_hdrs.exit.i:                    ; preds = %if.end328.i.i.ice_flow_proc_seg_hdrs.exit.i_crit_edge, %for.end34.ice_flow_proc_seg_hdrs.exit.i_crit_edge
  %37 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prof5, align 8
  %segs_cnt.i12.i = getelementptr inbounds %struct.ice_flow_prof, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %segs_cnt.i12.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %segs_cnt.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp71.not.i.i = icmp eq i8 %40, 0
  br i1 %cmp71.not.i.i, label %ice_flow_proc_seg_hdrs.exit.i.if.end4.i_crit_edge, label %for.body.lr.ph.i13.i

ice_flow_proc_seg_hdrs.exit.i.if.end4.i_crit_edge: ; preds = %ice_flow_proc_seg_hdrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.body.lr.ph.i13.i:                             ; preds = %ice_flow_proc_seg_hdrs.exit.i
  %es_cnt.i.i.i = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 2
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %for.inc17.i.i.for.body.i15.i_crit_edge, %for.body.lr.ph.i13.i
  %indvars.iv.i14.i = phi i32 [ 0, %for.body.lr.ph.i13.i ], [ %indvars.iv.next.i17.i, %for.inc17.i.i.for.body.i15.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i.i) #7
  %41 = ptrtoint ptr %match.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %match.i.i, align 8, !annotation !108
  %42 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prof5, align 8
  %match5.i.i = getelementptr %struct.ice_flow_prof, ptr %43, i32 0, i32 6, i32 %indvars.iv.i14.i, i32 1
  %44 = ptrtoint ptr %match5.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %match5.i.i, align 8
  store i64 %45, ptr %match.i.i, align 8
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %match.i.i, i32 noundef 42, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %call.i.i)
  %cmp768.i.i = icmp ult i32 %call.i.i, 42
  br i1 %cmp768.i.i, label %for.body9.lr.ph.i.i, label %for.body.i15.i.for.end.i.i_crit_edge

for.body.i15.i.for.end.i.i_crit_edge:             ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body9.lr.ph.i.i:                              ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv.i14.i)
  %cmp65.i.i.i = icmp eq i32 %indvars.iv.i14.i, 0
  %cond67.i.i.i = select i1 %cmp65.i.i.i, i32 40, i32 41
  %cond62.i.i.i = select i1 %cmp65.i.i.i, i32 32, i32 33
  %cond9.i.i.i = select i1 %cmp65.i.i.i, i32 9, i32 10
  %cond.i.i.i = select i1 %cmp65.i.i.i, i32 1, i32 4
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %if.end.i16.i.for.body9.i.i_crit_edge, %for.body9.lr.ph.i.i
  %j.069.i.i = phi i32 [ %call.i.i, %for.body9.lr.ph.i.i ], [ %call11.i.i, %if.end.i16.i.for.body9.i.i_crit_edge ]
  %46 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %match.i.i, align 8
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call7.i.i, align 8
  %fvw.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %49, i32 4, i32 2
  %50 = ptrtoint ptr %fvw.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fvw.i.i.i, align 2
  %52 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prof5, align 8
  %fields.i.i.i = getelementptr %struct.ice_flow_prof, ptr %53, i32 0, i32 6, i32 %indvars.iv.i14.i, i32 3
  %54 = zext i32 %j.069.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %j.069.i.i, label %for.body9.i.i.cleanup.thread.i.i_crit_edge [
    i32 0, label %for.body9.i.i.sw.bb.i.i.i_crit_edge
    i32 1, label %for.body9.i.i.sw.bb.i.i.i_crit_edge166
    i32 2, label %for.body9.i.i.sw.bb.i.i.i_crit_edge167
    i32 3, label %for.body9.i.i.sw.bb.i.i.i_crit_edge168
    i32 4, label %sw.bb5.i.i.i
    i32 5, label %sw.bb10.i.i.i
    i32 6, label %sw.bb15.i.i.i
    i32 7, label %for.body9.i.i.sw.bb20.i.i.i_crit_edge
    i32 8, label %for.body9.i.i.sw.bb20.i.i.i_crit_edge169
    i32 9, label %for.body9.i.i.sw.bb36.i.i.i_crit_edge
    i32 10, label %for.body9.i.i.sw.bb36.i.i.i_crit_edge170
    i32 11, label %for.body9.i.i.sw.bb58.i.i.i_crit_edge
    i32 12, label %for.body9.i.i.sw.bb58.i.i.i_crit_edge171
    i32 13, label %for.body9.i.i.sw.bb63.i.i.i_crit_edge
    i32 14, label %for.body9.i.i.sw.bb63.i.i.i_crit_edge172
    i32 15, label %for.body9.i.i.sw.epilog.i.i.i_crit_edge
    i32 16, label %for.body9.i.i.sw.epilog.i.i.i_crit_edge173
    i32 21, label %for.body9.i.i.sw.epilog.i.i.i_crit_edge174
    i32 17, label %for.body9.i.i.sw.bb69.i.i.i_crit_edge
    i32 18, label %for.body9.i.i.sw.bb69.i.i.i_crit_edge175
    i32 19, label %for.body9.i.i.sw.bb70.i.i.i_crit_edge
    i32 20, label %for.body9.i.i.sw.bb70.i.i.i_crit_edge176
    i32 30, label %for.body9.i.i.sw.bb71.i.i.i_crit_edge
    i32 31, label %for.body9.i.i.sw.bb71.i.i.i_crit_edge177
    i32 34, label %for.body9.i.i.sw.bb71.i.i.i_crit_edge178
    i32 35, label %for.body9.i.i.sw.bb71.i.i.i_crit_edge179
    i32 32, label %for.body9.i.i.sw.bb71.i.i.i_crit_edge180
    i32 33, label %for.body9.i.i.sw.bb71.i.i.i_crit_edge181
    i32 36, label %sw.bb72.i.i.i
    i32 37, label %sw.bb73.i.i.i
    i32 38, label %sw.bb74.i.i.i
    i32 39, label %sw.bb75.i.i.i
    i32 40, label %sw.bb76.i.i.i
    i32 41, label %sw.bb77.i.i.i
    i32 22, label %for.body9.i.i.sw.bb78.i.i.i_crit_edge
    i32 23, label %for.body9.i.i.sw.bb78.i.i.i_crit_edge182
    i32 24, label %for.body9.i.i.sw.bb78.i.i.i_crit_edge183
    i32 25, label %for.body9.i.i.sw.bb78.i.i.i_crit_edge184
    i32 26, label %for.body9.i.i.sw.bb78.i.i.i_crit_edge185
    i32 27, label %for.body9.i.i.sw.bb79.i.i.i_crit_edge
    i32 28, label %for.body9.i.i.sw.bb79.i.i.i_crit_edge186
    i32 29, label %sw.bb90.i.i.i
  ]

for.body9.i.i.sw.bb79.i.i.i_crit_edge186:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb79.i.i.i

for.body9.i.i.sw.bb79.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb79.i.i.i

for.body9.i.i.sw.bb78.i.i.i_crit_edge185:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78.i.i.i

for.body9.i.i.sw.bb78.i.i.i_crit_edge184:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78.i.i.i

for.body9.i.i.sw.bb78.i.i.i_crit_edge183:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78.i.i.i

for.body9.i.i.sw.bb78.i.i.i_crit_edge182:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78.i.i.i

for.body9.i.i.sw.bb78.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78.i.i.i

for.body9.i.i.sw.bb71.i.i.i_crit_edge181:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i.i.i

for.body9.i.i.sw.bb71.i.i.i_crit_edge180:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i.i.i

for.body9.i.i.sw.bb71.i.i.i_crit_edge179:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i.i.i

for.body9.i.i.sw.bb71.i.i.i_crit_edge178:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i.i.i

for.body9.i.i.sw.bb71.i.i.i_crit_edge177:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i.i.i

for.body9.i.i.sw.bb71.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i.i.i

for.body9.i.i.sw.bb70.i.i.i_crit_edge176:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb70.i.i.i

for.body9.i.i.sw.bb70.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb70.i.i.i

for.body9.i.i.sw.bb69.i.i.i_crit_edge175:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb69.i.i.i

for.body9.i.i.sw.bb69.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb69.i.i.i

for.body9.i.i.sw.epilog.i.i.i_crit_edge174:       ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

for.body9.i.i.sw.epilog.i.i.i_crit_edge173:       ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

for.body9.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

for.body9.i.i.sw.bb63.i.i.i_crit_edge172:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb63.i.i.i

for.body9.i.i.sw.bb63.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb63.i.i.i

for.body9.i.i.sw.bb58.i.i.i_crit_edge171:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i.i.i

for.body9.i.i.sw.bb58.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i.i.i

for.body9.i.i.sw.bb36.i.i.i_crit_edge170:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36.i.i.i

for.body9.i.i.sw.bb36.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36.i.i.i

for.body9.i.i.sw.bb20.i.i.i_crit_edge169:         ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i.i.i

for.body9.i.i.sw.bb20.i.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i.i.i

for.body9.i.i.sw.bb.i.i.i_crit_edge168:           ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i

for.body9.i.i.sw.bb.i.i.i_crit_edge167:           ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i

for.body9.i.i.sw.bb.i.i.i_crit_edge166:           ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i

for.body9.i.i.sw.bb.i.i.i_crit_edge:              ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i.i

for.body9.i.i.cleanup.thread.i.i_crit_edge:       ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i.i

sw.bb.i.i.i:                                      ; preds = %for.body9.i.i.sw.bb.i.i.i_crit_edge, %for.body9.i.i.sw.bb.i.i.i_crit_edge166, %for.body9.i.i.sw.bb.i.i.i_crit_edge167, %for.body9.i.i.sw.bb.i.i.i_crit_edge168
  br label %sw.epilog.i.i.i

sw.bb5.i.i.i:                                     ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb10.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb15.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb20.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb20.i.i.i_crit_edge, %for.body9.i.i.sw.bb20.i.i.i_crit_edge169
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %j.069.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %j.069.i.i, 8
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 7, i32 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %j.069.i.i)
  %switch.selectcmp275.i.i.i = icmp eq i32 %j.069.i.i, 7
  %switch.select276.i.i.i = select i1 %switch.selectcmp275.i.i.i, i32 8, i32 %switch.select.i.i.i
  %shl.i.i.i = shl nuw i32 1, %switch.select276.i.i.i
  %conv31.i.i.i = zext i32 %shl.i.i.i to i64
  %and.i.i.i = and i64 %47, %conv31.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.bb20.i.i.i.sw.epilog.i.i.i_crit_edge, label %if.then32.i.i.i

sw.bb20.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %sw.bb20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

if.then32.i.i.i:                                  ; preds = %sw.bb20.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mask34.i.i.i = getelementptr [42 x %struct.ice_flow_field_info], ptr @ice_flds_info, i32 0, i32 %switch.select276.i.i.i, i32 3
  %55 = ptrtoint ptr %mask34.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mask34.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb36.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb36.i.i.i_crit_edge, %for.body9.i.i.sw.bb36.i.i.i_crit_edge170
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %j.069.i.i)
  %switch.selectcmp277.i.i.i = icmp eq i32 %j.069.i.i, 10
  %switch.select278.i.i.i = select i1 %switch.selectcmp277.i.i.i, i32 9, i32 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %j.069.i.i)
  %switch.selectcmp279.i.i.i = icmp eq i32 %j.069.i.i, 9
  %switch.select280.i.i.i = select i1 %switch.selectcmp279.i.i.i, i32 10, i32 %switch.select278.i.i.i
  %shl50.i.i.i = shl nuw i32 1, %switch.select280.i.i.i
  %conv51.i.i.i = zext i32 %shl50.i.i.i to i64
  %and52.i.i.i = and i64 %47, %conv51.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and52.i.i.i)
  %tobool53.not.i.i.i = icmp eq i64 %and52.i.i.i, 0
  br i1 %tobool53.not.i.i.i, label %sw.bb36.i.i.i.sw.epilog.i.i.i_crit_edge, label %if.then54.i.i.i

sw.bb36.i.i.i.sw.epilog.i.i.i_crit_edge:          ; preds = %sw.bb36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

if.then54.i.i.i:                                  ; preds = %sw.bb36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mask56.i.i.i = getelementptr [42 x %struct.ice_flow_field_info], ptr @ice_flds_info, i32 0, i32 %switch.select280.i.i.i, i32 3
  %57 = ptrtoint ptr %mask56.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mask56.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb58.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb58.i.i.i_crit_edge, %for.body9.i.i.sw.bb58.i.i.i_crit_edge171
  br label %sw.epilog.i.i.i

sw.bb63.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb63.i.i.i_crit_edge, %for.body9.i.i.sw.bb63.i.i.i_crit_edge172
  br label %sw.epilog.i.i.i

sw.bb69.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb69.i.i.i_crit_edge, %for.body9.i.i.sw.bb69.i.i.i_crit_edge175
  br label %sw.epilog.i.i.i

sw.bb70.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb70.i.i.i_crit_edge, %for.body9.i.i.sw.bb70.i.i.i_crit_edge176
  br label %sw.epilog.i.i.i

sw.bb71.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb71.i.i.i_crit_edge, %for.body9.i.i.sw.bb71.i.i.i_crit_edge177, %for.body9.i.i.sw.bb71.i.i.i_crit_edge178, %for.body9.i.i.sw.bb71.i.i.i_crit_edge179, %for.body9.i.i.sw.bb71.i.i.i_crit_edge180, %for.body9.i.i.sw.bb71.i.i.i_crit_edge181
  br label %sw.epilog.i.i.i

sw.bb72.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb73.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb74.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb75.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb76.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb77.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.bb78.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb78.i.i.i_crit_edge, %for.body9.i.i.sw.bb78.i.i.i_crit_edge182, %for.body9.i.i.sw.bb78.i.i.i_crit_edge183, %for.body9.i.i.sw.bb78.i.i.i_crit_edge184, %for.body9.i.i.sw.bb78.i.i.i_crit_edge185
  br label %sw.epilog.i.i.i

sw.bb79.i.i.i:                                    ; preds = %for.body9.i.i.sw.bb79.i.i.i_crit_edge, %for.body9.i.i.sw.bb79.i.i.i_crit_edge186
  %arrayidx83.i.i.i = getelementptr %struct.ice_flow_prof, ptr %53, i32 0, i32 6, i32 %indvars.iv.i14.i
  %59 = ptrtoint ptr %arrayidx83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx83.i.i.i, align 8
  %and84.i.i.i = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i.i.i)
  %tobool85.not.i.i.i = icmp eq i32 %and84.i.i.i, 0
  %cond86.i.i.i = select i1 %tobool85.not.i.i.i, i32 100, i32 98
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %j.069.i.i)
  %cmp87.i.i.i = icmp eq i32 %j.069.i.i, 27
  %cond89.i.i.i = select i1 %cmp87.i.i.i, i32 28, i32 27
  br label %sw.epilog.i.i.i

sw.bb90.i.i.i:                                    ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb90.i.i.i, %sw.bb79.i.i.i, %sw.bb78.i.i.i, %sw.bb77.i.i.i, %sw.bb76.i.i.i, %sw.bb75.i.i.i, %sw.bb74.i.i.i, %sw.bb73.i.i.i, %sw.bb72.i.i.i, %sw.bb71.i.i.i, %sw.bb70.i.i.i, %sw.bb69.i.i.i, %sw.bb63.i.i.i, %sw.bb58.i.i.i, %if.then54.i.i.i, %sw.bb36.i.i.i.sw.epilog.i.i.i_crit_edge, %if.then32.i.i.i, %sw.bb20.i.i.i.sw.epilog.i.i.i_crit_edge, %sw.bb15.i.i.i, %sw.bb10.i.i.i, %sw.bb5.i.i.i, %sw.bb.i.i.i, %for.body9.i.i.sw.epilog.i.i.i_crit_edge, %for.body9.i.i.sw.epilog.i.i.i_crit_edge173, %for.body9.i.i.sw.epilog.i.i.i_crit_edge174
  %sib.2.i.i.i = phi i32 [ 42, %sw.bb90.i.i.i ], [ %cond89.i.i.i, %sw.bb79.i.i.i ], [ 42, %sw.bb78.i.i.i ], [ 42, %sw.bb77.i.i.i ], [ 42, %sw.bb76.i.i.i ], [ 42, %sw.bb75.i.i.i ], [ 42, %sw.bb74.i.i.i ], [ 42, %sw.bb73.i.i.i ], [ 42, %sw.bb72.i.i.i ], [ 42, %sw.bb71.i.i.i ], [ 42, %sw.bb70.i.i.i ], [ 42, %sw.bb69.i.i.i ], [ 42, %sw.bb63.i.i.i ], [ 42, %sw.bb58.i.i.i ], [ %switch.select280.i.i.i, %if.then54.i.i.i ], [ %switch.select280.i.i.i, %sw.bb36.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %switch.select276.i.i.i, %if.then32.i.i.i ], [ %switch.select276.i.i.i, %sw.bb20.i.i.i.sw.epilog.i.i.i_crit_edge ], [ 42, %sw.bb15.i.i.i ], [ 42, %sw.bb10.i.i.i ], [ 42, %sw.bb5.i.i.i ], [ 42, %sw.bb.i.i.i ], [ 42, %for.body9.i.i.sw.epilog.i.i.i_crit_edge ], [ 42, %for.body9.i.i.sw.epilog.i.i.i_crit_edge173 ], [ 42, %for.body9.i.i.sw.epilog.i.i.i_crit_edge174 ]
  %prot_id.0.i.i.i = phi i32 [ 64, %sw.bb90.i.i.i ], [ %cond86.i.i.i, %sw.bb79.i.i.i ], [ 118, %sw.bb78.i.i.i ], [ 53, %sw.bb77.i.i.i ], [ 89, %sw.bb76.i.i.i ], [ 88, %sw.bb75.i.i.i ], [ 104, %sw.bb74.i.i.i ], [ 53, %sw.bb73.i.i.i ], [ 103, %sw.bb72.i.i.i ], [ 52, %sw.bb71.i.i.i ], [ 96, %sw.bb70.i.i.i ], [ 53, %sw.bb69.i.i.i ], [ %cond67.i.i.i, %sw.bb63.i.i.i ], [ %cond62.i.i.i, %sw.bb58.i.i.i ], [ %cond67.i.i.i, %if.then54.i.i.i ], [ %cond67.i.i.i, %sw.bb36.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %cond62.i.i.i, %if.then32.i.i.i ], [ %cond62.i.i.i, %sw.bb20.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %cond67.i.i.i, %sw.bb15.i.i.i ], [ %cond62.i.i.i, %sw.bb10.i.i.i ], [ %cond9.i.i.i, %sw.bb5.i.i.i ], [ %cond.i.i.i, %sw.bb.i.i.i ], [ 49, %for.body9.i.i.sw.epilog.i.i.i_crit_edge ], [ 49, %for.body9.i.i.sw.epilog.i.i.i_crit_edge173 ], [ 49, %for.body9.i.i.sw.epilog.i.i.i_crit_edge174 ]
  %sib_mask.0.i.i.i = phi i16 [ 0, %sw.bb90.i.i.i ], [ 0, %sw.bb79.i.i.i ], [ 0, %sw.bb78.i.i.i ], [ 0, %sw.bb77.i.i.i ], [ 0, %sw.bb76.i.i.i ], [ 0, %sw.bb75.i.i.i ], [ 0, %sw.bb74.i.i.i ], [ 0, %sw.bb73.i.i.i ], [ 0, %sw.bb72.i.i.i ], [ 0, %sw.bb71.i.i.i ], [ 0, %sw.bb70.i.i.i ], [ 0, %sw.bb69.i.i.i ], [ 0, %sw.bb63.i.i.i ], [ 0, %sw.bb58.i.i.i ], [ %58, %if.then54.i.i.i ], [ 0, %sw.bb36.i.i.i.sw.epilog.i.i.i_crit_edge ], [ %56, %if.then32.i.i.i ], [ 0, %sw.bb20.i.i.i.sw.epilog.i.i.i_crit_edge ], [ 0, %sw.bb15.i.i.i ], [ 0, %sw.bb10.i.i.i ], [ 0, %sw.bb5.i.i.i ], [ 0, %sw.bb.i.i.i ], [ 0, %for.body9.i.i.sw.epilog.i.i.i_crit_edge ], [ 0, %for.body9.i.i.sw.epilog.i.i.i_crit_edge173 ], [ 0, %for.body9.i.i.sw.epilog.i.i.i_crit_edge174 ]
  %conv91.i.i.i = trunc i32 %prot_id.0.i.i.i to i8
  %xtrct.i.i.i = getelementptr %struct.ice_flow_fld_info, ptr %fields.i.i.i, i32 %j.069.i.i, i32 3
  %61 = ptrtoint ptr %xtrct.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv91.i.i.i, ptr %xtrct.i.i.i, align 4
  %off95.i.i.i = getelementptr [42 x %struct.ice_flow_field_info], ptr @ice_flds_info, i32 0, i32 %j.069.i.i, i32 1
  %62 = ptrtoint ptr %off95.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %off95.i.i.i, align 4
  %.frozen = freeze i16 %63
  %64 = sdiv i16 %.frozen, 16
  %mul.i.i.i = shl nsw i16 %64, 1
  %off101.i.i.i = getelementptr %struct.ice_flow_fld_info, ptr %fields.i.i.i, i32 %j.069.i.i, i32 3, i32 1
  %65 = ptrtoint ptr %off101.i.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %mul.i.i.i, ptr %off101.i.i.i, align 2
  %66 = mul i16 %64, 16
  %rem281.i.i.i.decomposed = sub i16 %.frozen, %66
  %conv106.i.i.i = trunc i16 %rem281.i.i.i.decomposed to i8
  %disp.i.i.i = getelementptr %struct.ice_flow_fld_info, ptr %fields.i.i.i, i32 %j.069.i.i, i32 3, i32 3
  %67 = ptrtoint ptr %disp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv106.i.i.i, ptr %disp.i.i.i, align 1
  %68 = ptrtoint ptr %es_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %es_cnt.i.i.i, align 2
  %idx.i.i.i = getelementptr %struct.ice_flow_fld_info, ptr %fields.i.i.i, i32 %j.069.i.i, i32 3, i32 2
  %70 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %idx.i.i.i, align 4
  %mask112.i.i.i = getelementptr [42 x %struct.ice_flow_field_info], ptr @ice_flds_info, i32 0, i32 %j.069.i.i, i32 3
  %71 = ptrtoint ptr %mask112.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mask112.i.i.i, align 4
  %mask115.i.i.i = getelementptr %struct.ice_flow_fld_info, ptr %fields.i.i.i, i32 %j.069.i.i, i32 3, i32 4
  %73 = ptrtoint ptr %mask115.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %mask115.i.i.i, align 2
  %conv106.mask.i.i.i = and i16 %rem281.i.i.i.decomposed, 255
  %size.i.i.i = getelementptr [42 x %struct.ice_flow_field_info], ptr @ice_flds_info, i32 0, i32 %j.069.i.i, i32 2
  %74 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %size.i.i.i, align 2
  %conv121.i.i.i = zext i16 %75 to i32
  %narrow.i.i.i = add nuw nsw i16 %conv106.mask.i.i.i, 15
  %add.i.i.i = zext i16 %narrow.i.i.i to i32
  %sub.i.i.i = add nuw nsw i32 %conv121.i.i.i, %add.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i.i)
  %cmp135282.not.i.i.i = icmp ult i32 %sub.i.i.i, 16
  br i1 %cmp135282.not.i.i.i, label %sw.epilog.i.i.i.if.end.i16.i_crit_edge, label %for.body.lr.ph.i.i.i

sw.epilog.i.i.i.if.end.i16.i_crit_edge:           ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16.i

for.body.lr.ph.i.i.i:                             ; preds = %sw.epilog.i.i.i
  %div125273.i.i.i = lshr i32 %sub.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %sib.2.i.i.i)
  %cmp137.i.i.i = icmp eq i32 %sib.2.i.i.i, 42
  %xtrct140.i.i.i = getelementptr %struct.ice_flow_fld_info, ptr %fields.i.i.i, i32 %sib.2.i.i.i, i32 3
  %off148.i.i.i = getelementptr %struct.ice_flow_fld_info, ptr %fields.i.i.i, i32 %sib.2.i.i.i, i32 3, i32 1
  %76 = and i16 %51, 255
  %conv157.i.i.i = zext i16 %76 to i32
  %or274.i.i.i = or i16 %72, %sib_mask.0.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end193.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %if.end193.i.i.i.for.body.i.i.i_crit_edge ]
  %off.0284.i.i.i = phi i16 [ %mul.i.i.i, %for.body.lr.ph.i.i.i ], [ %add195.i.i.i, %if.end193.i.i.i.for.body.i.i.i_crit_edge ]
  br i1 %cmp137.i.i.i, label %for.body.i.i.i.if.then153.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.i.if.then153.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then153.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i.i
  %77 = ptrtoint ptr %xtrct140.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %xtrct140.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp143.i.i.i = icmp eq i8 %78, 0
  br i1 %cmp143.i.i.i, label %lor.lhs.false.i.i.i.if.then153.i.i.i_crit_edge, label %lor.lhs.false145.i.i.i

lor.lhs.false.i.i.i.if.then153.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then153.i.i.i

lor.lhs.false145.i.i.i:                           ; preds = %lor.lhs.false.i.i.i
  %79 = ptrtoint ptr %off148.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %off148.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %off.0284.i.i.i)
  %cmp151.not.i.i.i = icmp eq i16 %80, %off.0284.i.i.i
  br i1 %cmp151.not.i.i.i, label %lor.lhs.false145.i.i.i.if.end193.i.i.i_crit_edge, label %lor.lhs.false145.i.i.i.if.then153.i.i.i_crit_edge

lor.lhs.false145.i.i.i.if.then153.i.i.i_crit_edge: ; preds = %lor.lhs.false145.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then153.i.i.i

lor.lhs.false145.i.i.i.if.end193.i.i.i_crit_edge: ; preds = %lor.lhs.false145.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193.i.i.i

if.then153.i.i.i:                                 ; preds = %lor.lhs.false145.i.i.i.if.then153.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then153.i.i.i_crit_edge, %for.body.i.i.i.if.then153.i.i.i_crit_edge
  %81 = ptrtoint ptr %es_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %es_cnt.i.i.i, align 2
  %conv156.i.i.i = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv157.i.i.i, i32 %conv156.i.i.i)
  %cmp158.not.i.i.i = icmp ugt i32 %conv157.i.i.i, %conv156.i.i.i
  br i1 %cmp158.not.i.i.i, label %if.end161.i.i.i, label %if.then153.i.i.i.cleanup.thread.i.i_crit_edge

if.then153.i.i.i.cleanup.thread.i.i_crit_edge:    ; preds = %if.then153.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i.i

if.end161.i.i.i:                                  ; preds = %if.then153.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %call7.i.i, align 8
  %reverse.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %84, i32 4, i32 9
  %85 = ptrtoint ptr %reverse.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %reverse.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool166.not.i.i.i = icmp eq i8 %86, 0
  %87 = xor i32 %conv156.i.i.i, -1
  %sub172.i.i.i = add nsw i32 %87, %conv157.i.i.i
  %conv173.i.i.i = trunc i32 %sub172.i.i.i to i8
  %idx154.0.i.i.i = select i1 %tobool166.not.i.i.i, i8 %82, i8 %conv173.i.i.i
  %idxprom179.i.i.i = zext i8 %idx154.0.i.i.i to i32
  %arrayidx180.i.i.i = getelementptr %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 4, i32 %idxprom179.i.i.i
  %88 = ptrtoint ptr %arrayidx180.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv91.i.i.i, ptr %arrayidx180.i.i.i, align 4
  %off185.i.i.i = getelementptr %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 4, i32 %idxprom179.i.i.i, i32 1
  %89 = ptrtoint ptr %off185.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %off.0284.i.i.i, ptr %off185.i.i.i, align 1
  %arrayidx191.i.i.i = getelementptr %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 7, i32 %idxprom179.i.i.i
  %90 = ptrtoint ptr %arrayidx191.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %or274.i.i.i, ptr %arrayidx191.i.i.i, align 2
  %inc.i.i.i = add i8 %82, 1
  %91 = ptrtoint ptr %es_cnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %inc.i.i.i, ptr %es_cnt.i.i.i, align 2
  br label %if.end193.i.i.i

if.end193.i.i.i:                                  ; preds = %if.end161.i.i.i, %lor.lhs.false145.i.i.i.if.end193.i.i.i_crit_edge
  %add195.i.i.i = add nsw i16 %off.0284.i.i.i, 2
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, %div125273.i.i.i
  br i1 %exitcond.not.i.i.i, label %if.end193.i.i.i.if.end.i16.i_crit_edge, label %if.end193.i.i.i.for.body.i.i.i_crit_edge

if.end193.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %if.end193.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

if.end193.i.i.i.if.end.i16.i_crit_edge:           ; preds = %if.end193.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i16.i

if.end.i16.i:                                     ; preds = %if.end193.i.i.i.if.end.i16.i_crit_edge, %sw.epilog.i.i.i.if.end.i16.i_crit_edge
  call void @_clear_bit(i32 noundef %j.069.i.i, ptr noundef nonnull %match.i.i) #7
  %add.i.i = add i32 %j.069.i.i, 1
  %call11.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %match.i.i, i32 noundef 42, i32 noundef %add.i.i) #7
  %cmp7.i.i = icmp ult i32 %call11.i.i, 42
  br i1 %cmp7.i.i, label %if.end.i16.i.for.body9.i.i_crit_edge, label %if.end.i16.i.for.end.i.i_crit_edge

if.end.i16.i.for.end.i.i_crit_edge:               ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end.i16.i.for.body9.i.i_crit_edge:             ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i.i

for.end.i.i:                                      ; preds = %if.end.i16.i.for.end.i.i_crit_edge, %for.body.i15.i.for.end.i.i_crit_edge
  %92 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prof5, align 8
  %raws_cnt.i.i.i = getelementptr %struct.ice_flow_prof, ptr %93, i32 0, i32 6, i32 %indvars.iv.i14.i, i32 4
  %94 = ptrtoint ptr %raws_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %raws_cnt.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i39.i.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i39.i.i, label %for.end.i.i.for.inc17.i.i_crit_edge, label %if.end.i.i.i

for.end.i.i.for.inc17.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.i.i

if.end.i.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp.i40.i.i = icmp ugt i8 %95, 2
  br i1 %cmp.i40.i.i, label %if.end.i.i.i.cleanup.thread62.i.i_crit_edge, label %if.end8.i.i.i

if.end.i.i.i.cleanup.thread62.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread62.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  %arrayidx.i.i.i.i = getelementptr %struct.ice_flow_prof, ptr %93, i32 0, i32 6, i32 %indvars.iv.i14.i
  %96 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i.i.i, align 8
  %98 = and i32 %97, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %99 = icmp ne i32 %98, 0
  %and39.i.i.i.i = and i32 %97, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i.i.i)
  %tobool40.not.i.i.i.i = icmp eq i32 %and39.i.i.i.i, 0
  %or.cond166.i.i.i = or i1 %99, %tobool40.not.i.i.i.i
  br i1 %or.cond166.i.i.i, label %for.body.lr.ph.i43.i.i, label %if.end8.i.i.i.cleanup.thread62.i.i_crit_edge

if.end8.i.i.i.cleanup.thread62.i.i_crit_edge:     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread62.i.i

for.body.lr.ph.i43.i.i:                           ; preds = %if.end8.i.i.i
  %100 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call7.i.i, align 8
  %fvw.i41.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %101, i32 4, i32 2
  %102 = ptrtoint ptr %fvw.i41.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %fvw.i41.i.i, align 2
  %conv84.i.i.i = zext i16 %103 to i32
  br label %for.body.i50.i.i

for.body.i50.i.i:                                 ; preds = %for.inc115.i.i.i.for.body.i50.i.i_crit_edge, %for.body.lr.ph.i43.i.i
  %indvars.iv176.i.i.i = phi i32 [ 0, %for.body.lr.ph.i43.i.i ], [ %indvars.iv.next177.i.i.i, %for.inc115.i.i.i.for.body.i50.i.i_crit_edge ]
  %104 = phi ptr [ %93, %for.body.lr.ph.i43.i.i ], [ %133, %for.inc115.i.i.i.for.body.i50.i.i_crit_edge ]
  %arrayidx28.i.i.i = getelementptr %struct.ice_flow_prof, ptr %104, i32 0, i32 6, i32 %indvars.iv.i14.i, i32 5, i32 %indvars.iv176.i.i.i
  %xtrct.i44.i.i = getelementptr inbounds %struct.ice_flow_fld_info, ptr %arrayidx28.i.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %xtrct.i44.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %xtrct.i44.i.i, align 4
  %off29.i.i.i = getelementptr %struct.ice_flow_prof, ptr %104, i32 0, i32 6, i32 %indvars.iv.i14.i, i32 5, i32 %indvars.iv176.i.i.i, i32 1
  %106 = ptrtoint ptr %off29.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %off29.i.i.i, align 4
  %108 = and i16 %107, -2
  %off34.i.i.i = getelementptr inbounds %struct.ice_flow_fld_info, ptr %arrayidx28.i.i.i, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %off34.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %off34.i.i.i, align 2
  %.tr.i.i.i = trunc i16 %107 to i8
  %110 = shl i8 %.tr.i.i.i, 3
  %conv38.i.i.i = and i8 %110, 8
  %disp.i45.i.i = getelementptr inbounds %struct.ice_flow_fld_info, ptr %arrayidx28.i.i.i, i32 0, i32 3, i32 3
  %111 = ptrtoint ptr %disp.i45.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv38.i.i.i, ptr %disp.i45.i.i, align 1
  %112 = ptrtoint ptr %es_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %es_cnt.i.i.i, align 2
  %idx.i46.i.i = getelementptr inbounds %struct.ice_flow_fld_info, ptr %arrayidx28.i.i.i, i32 0, i32 3, i32 2
  %114 = ptrtoint ptr %idx.i46.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %idx.i46.i.i, align 4
  %last.i.i.i = getelementptr inbounds %struct.ice_flow_fld_info, ptr %arrayidx28.i.i.i, i32 0, i32 1, i32 2
  %115 = ptrtoint ptr %last.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %last.i.i.i, align 4
  %conv48.i.i.i = zext i16 %116 to i32
  %mul49.i.i.i = shl nuw nsw i32 %conv48.i.i.i, 3
  %narrow.i47.i.i = add nuw nsw i8 %conv38.i.i.i, 15
  %add.i48.i.i = zext i8 %narrow.i47.i.i to i32
  %sub.i49.i.i = add nuw nsw i32 %mul49.i.i.i, %add.i48.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i49.i.i)
  %cmp59169.not.i.i.i = icmp ult i32 %sub.i49.i.i, 16
  br i1 %cmp59169.not.i.i.i, label %for.body.i50.i.i.for.inc115.i.i.i_crit_edge, label %for.body61.lr.ph.i.i.i

for.body.i50.i.i.for.inc115.i.i.i_crit_edge:      ; preds = %for.body.i50.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc115.i.i.i

for.body61.lr.ph.i.i.i:                           ; preds = %for.body.i50.i.i
  %div51158.i.i.i = lshr i32 %sub.i49.i.i, 4
  %117 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %call7.i.i, align 8
  %count.i.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %118, i32 4, i32 1
  %reverse.i51.i.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 61, i32 %118, i32 4, i32 9
  %119 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %count.i.i.i, align 4
  br label %for.body61.i.i.i

for.body61.i.i.i:                                 ; preds = %for.inc.i.i.i.for.body61.i.i.i_crit_edge, %for.body61.lr.ph.i.i.i
  %indvars.iv.i52.i.i = phi i32 [ 0, %for.body61.lr.ph.i.i.i ], [ %indvars.iv.next.i54.i.i, %for.inc.i.i.i.for.body61.i.i.i_crit_edge ]
  %off.0170.i.i.i = phi i16 [ %108, %for.body61.lr.ph.i.i.i ], [ %add106.i.i.i, %for.inc.i.i.i.for.body61.i.i.i_crit_edge ]
  %121 = ptrtoint ptr %es_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %es_cnt.i.i.i, align 2
  %123 = zext i8 %122 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %120, i16 %123)
  %cmp70.not.i.i.i = icmp ule i16 %120, %123
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %122)
  %cmp74.i.i.i = icmp ugt i8 %122, 47
  %or.cond.i.i.i = or i1 %cmp74.i.i.i, %cmp70.not.i.i.i
  br i1 %or.cond.i.i.i, label %for.body61.i.i.i.cleanup.thread62.i.i_crit_edge, label %for.inc.i.i.i

for.body61.i.i.i.cleanup.thread62.i.i_crit_edge:  ; preds = %for.body61.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread62.i.i

for.inc.i.i.i:                                    ; preds = %for.body61.i.i.i
  %conv64.i.i.i = zext i8 %122 to i32
  %124 = ptrtoint ptr %reverse.i51.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %reverse.i51.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool82.not.i.i.i = icmp eq i8 %125, 0
  %126 = xor i32 %conv64.i.i.i, -1
  %sub88.i.i.i = add nsw i32 %126, %conv84.i.i.i
  %idx62.0.i.i.i = select i1 %tobool82.not.i.i.i, i32 %conv64.i.i.i, i32 %sub88.i.i.i
  %127 = ptrtoint ptr %xtrct.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %xtrct.i44.i.i, align 4
  %idxprom97.i.i.i = and i32 %idx62.0.i.i.i, 65535
  %arrayidx98.i.i.i = getelementptr %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 4, i32 %idxprom97.i.i.i
  %129 = ptrtoint ptr %arrayidx98.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx98.i.i.i, align 4
  %off103.i.i.i = getelementptr %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 4, i32 %idxprom97.i.i.i, i32 1
  %130 = ptrtoint ptr %off103.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %off.0170.i.i.i, ptr %off103.i.i.i, align 1
  %inc.i53.i.i = add nuw nsw i8 %122, 1
  %131 = ptrtoint ptr %es_cnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %inc.i53.i.i, ptr %es_cnt.i.i.i, align 2
  %add106.i.i.i = add i16 %off.0170.i.i.i, 2
  %indvars.iv.next.i54.i.i = add nuw nsw i32 %indvars.iv.i52.i.i, 1
  %exitcond.not.i55.i.i = icmp eq i32 %indvars.iv.next.i54.i.i, %div51158.i.i.i
  br i1 %exitcond.not.i55.i.i, label %for.inc.i.i.i.for.inc115.i.i.i_crit_edge, label %for.inc.i.i.i.for.body61.i.i.i_crit_edge

for.inc.i.i.i.for.body61.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61.i.i.i

for.inc.i.i.i.for.inc115.i.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc115.i.i.i

for.inc115.i.i.i:                                 ; preds = %for.inc.i.i.i.for.inc115.i.i.i_crit_edge, %for.body.i50.i.i.for.inc115.i.i.i_crit_edge
  %indvars.iv.next177.i.i.i = add nuw nsw i32 %indvars.iv176.i.i.i, 1
  %132 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prof5, align 8
  %raws_cnt19.i.i.i = getelementptr %struct.ice_flow_prof, ptr %133, i32 0, i32 6, i32 %indvars.iv.i14.i, i32 4
  %134 = ptrtoint ptr %raws_cnt19.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %raws_cnt19.i.i.i, align 8
  %136 = zext i8 %135 to i32
  %cmp21.i.i.i = icmp ult i32 %indvars.iv.next177.i.i.i, %136
  br i1 %cmp21.i.i.i, label %for.inc115.i.i.i.for.body.i50.i.i_crit_edge, label %for.inc115.i.i.i.for.inc17.i.i_crit_edge

for.inc115.i.i.i.for.inc17.i.i_crit_edge:         ; preds = %for.inc115.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.i.i

for.inc115.i.i.i.for.body.i50.i.i_crit_edge:      ; preds = %for.inc115.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i50.i.i

cleanup.thread.i.i:                               ; preds = %if.then153.i.i.i.cleanup.thread.i.i_crit_edge, %for.body9.i.i.cleanup.thread.i.i_crit_edge
  %retval.1.ph.i.i = phi i32 [ -28, %if.then153.i.i.i.cleanup.thread.i.i_crit_edge ], [ -95, %for.body9.i.i.cleanup.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i) #7
  br label %do.body

cleanup.thread62.i.i:                             ; preds = %for.body61.i.i.i.cleanup.thread62.i.i_crit_edge, %if.end8.i.i.i.cleanup.thread62.i.i_crit_edge, %if.end.i.i.i.cleanup.thread62.i.i_crit_edge
  %retval.4.i.ph.i.i = phi i32 [ -28, %for.body61.i.i.i.cleanup.thread62.i.i_crit_edge ], [ -28, %if.end.i.i.i.cleanup.thread62.i.i_crit_edge ], [ -22, %if.end8.i.i.i.cleanup.thread62.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i) #7
  br label %do.body

for.inc17.i.i:                                    ; preds = %for.inc115.i.i.i.for.inc17.i.i_crit_edge, %for.end.i.i.for.inc17.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i) #7
  %indvars.iv.next.i17.i = add nuw nsw i32 %indvars.iv.i14.i, 1
  %137 = ptrtoint ptr %segs_cnt.i12.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %segs_cnt.i12.i, align 4
  %139 = zext i8 %138 to i32
  %cmp.i18.i = icmp ult i32 %indvars.iv.next.i17.i, %139
  br i1 %cmp.i18.i, label %for.inc17.i.i.for.body.i15.i_crit_edge, label %for.inc17.i.i.if.end4.i_crit_edge

for.inc17.i.i.if.end4.i_crit_edge:                ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.inc17.i.i.for.body.i15.i_crit_edge:           ; preds = %for.inc17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i15.i

if.end4.i:                                        ; preds = %for.inc17.i.i.if.end4.i_crit_edge, %ice_flow_proc_seg_hdrs.exit.i.if.end4.i_crit_edge
  %140 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %call7.i.i, align 8
  %142 = and i32 %141, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %switch.i = icmp eq i32 %142, 2
  br i1 %switch.i, label %if.end50, label %if.end4.i.do.body_crit_edge

if.end4.i.do.body_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end4.i.do.body_crit_edge, %cleanup.thread62.i.i, %cleanup.thread.i.i
  %retval.0.i138.ph = phi i32 [ %retval.4.i.ph.i.i, %cleanup.thread62.i.i ], [ %retval.1.ph.i.i, %cleanup.thread.i.i ], [ -95, %if.end4.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_add_prof_sync.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flow_add_prof_sync, %if.then43)) #7
          to label %if.then86 [label %if.then43], !srcloc !109

if.then43:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_add_prof_sync.__UNIQUE_ID_ddebug613, ptr noundef %dev48, ptr noundef nonnull @.str.6) #7
  br label %if.then86

if.end50:                                         ; preds = %if.end4.i
  %attr = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 5
  %145 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %attr, align 4
  %attr_cnt = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 6
  %147 = ptrtoint ptr %attr_cnt to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %attr_cnt, align 8
  %es51 = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 4
  %mask = getelementptr inbounds %struct.ice_flow_prof_params, ptr %call7.i.i, i32 0, i32 7
  %call54 = call i32 @ice_add_prof(ptr noundef %hw, i32 noundef %blk, i64 noundef %prof_id, ptr noundef %ptypes.i.i, ptr noundef %146, i16 noundef zeroext %148, ptr noundef %es51, ptr noundef %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %out.thread147, label %do.body57

do.body57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_add_prof_sync.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flow_add_prof_sync, %if.then69)) #7
          to label %if.then86 [label %if.then69], !srcloc !109

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr, align 8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_add_prof_sync.__UNIQUE_ID_ddebug614, ptr noundef %dev74, ptr noundef nonnull @.str.7) #7
  br label %if.then86

out.thread147:                                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %prof5, align 8
  %entries = getelementptr inbounds %struct.ice_flow_prof, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %entries, ptr %entries, align 4
  %prev.i = getelementptr inbounds %struct.ice_flow_prof, ptr %152, i32 0, i32 5, i32 1
  %154 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %entries, ptr %prev.i, align 4
  %155 = load ptr, ptr %prof5, align 8
  %entries_lock = getelementptr inbounds %struct.ice_flow_prof, ptr %155, i32 0, i32 4
  call void @__mutex_init(ptr noundef %entries_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ice_flow_add_prof_sync.__key) #7
  %156 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prof5, align 8
  %158 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %prof, align 4
  br label %free_params

if.then86:                                        ; preds = %if.then69, %do.body57, %if.then43, %do.body
  %status.0146 = phi i32 [ %retval.0.i138.ph, %do.body ], [ %call54, %do.body57 ], [ %call54, %if.then69 ], [ %retval.0.i138.ph, %if.then43 ]
  %159 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr, align 8
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  %161 = ptrtoint ptr %prof5 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %prof5, align 8
  call void @devm_kfree(ptr noundef %dev91, ptr noundef %162) #7
  br label %free_params

free_params:                                      ; preds = %if.then86, %out.thread147, %if.end3.free_params_crit_edge
  %status.1 = phi i32 [ %status.0146, %if.then86 ], [ -12, %if.end3.free_params_crit_edge ], [ 0, %out.thread147 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_params, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %free_params ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_flow_rem_prof(ptr noundef %hw, i32 noundef %blk, i64 noundef %prof_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 %blk
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #7
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 %blk
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %p.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0.i = load ptr, ptr %p.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %id.i, align 8
  %cmp3.i = icmp eq i64 %2, %prof_id
  br i1 %cmp3.i, label %ice_flow_find_prof_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

ice_flow_find_prof_id.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p.0.i, null
  br i1 %tobool.not, label %ice_flow_find_prof_id.exit.out_crit_edge, label %if.end

ice_flow_find_prof_id.exit.out_crit_edge:         ; preds = %ice_flow_find_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %ice_flow_find_prof_id.exit
  %entries.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 5
  %3 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %entries.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %entries.i
  br i1 %cmp.i.not.i, label %if.end.if.end17.i_crit_edge, label %if.then.i

if.end.if.end17.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then.i:                                        ; preds = %if.end
  %entries_lock.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %entries_lock.i, i32 noundef 0) #7
  %5 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entries.i, align 4
  %cmp.not48.i = icmp eq ptr %6, %entries.i
  %tobool.not.i49.i = icmp eq ptr %6, null
  %or.cond50.i = or i1 %cmp.not48.i, %tobool.not.i49.i
  br i1 %or.cond50.i, label %if.then.i.for.end.i_crit_edge, label %if.end.i.lr.ph.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i.lr.ph.i:                                 ; preds = %if.then.i
  %add.ptr.i.i.i = getelementptr i8, ptr %hw, i32 -2960
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %ice_flow_rem_entry_sync.exit.i.if.end.i.i_crit_edge, %if.end.i.lr.ph.i
  %e.051.i = phi ptr [ %6, %if.end.i.lr.ph.i ], [ %t.053.i, %ice_flow_rem_entry_sync.exit.i.if.end.i.i_crit_edge ]
  %7 = ptrtoint ptr %e.051.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %t.053.i = load ptr, ptr %e.051.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %e.051.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.051.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i.i, align 4
  %10 = ptrtoint ptr %e.051.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e.051.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i, %if.end.i.i.if.end.i.i.i_crit_edge
  %14 = ptrtoint ptr %e.051.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %e.051.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.051.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %entry2.i.i.i = getelementptr inbounds %struct.ice_flow_entry, ptr %e.051.i, i32 0, i32 3
  %16 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entry2.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i.i.i, label %if.end.i.i.i.ice_flow_rem_entry_sync.exit.i_crit_edge, label %if.then4.i.i.i

if.end.i.i.i.ice_flow_rem_entry_sync.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_rem_entry_sync.exit.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i.i.i, ptr noundef nonnull %17) #7
  br label %ice_flow_rem_entry_sync.exit.i

ice_flow_rem_entry_sync.exit.i:                   ; preds = %if.then4.i.i.i, %if.end.i.i.i.ice_flow_rem_entry_sync.exit.i_crit_edge
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i.i, align 8
  %dev11.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev11.i.i.i, ptr noundef nonnull %e.051.i) #7
  %cmp.not.i11 = icmp eq ptr %t.053.i, %entries.i
  %tobool.not.i.i = icmp eq ptr %t.053.i, null
  %or.cond.i = or i1 %cmp.not.i11, %tobool.not.i.i
  br i1 %or.cond.i, label %ice_flow_rem_entry_sync.exit.i.for.end.i_crit_edge, label %ice_flow_rem_entry_sync.exit.i.if.end.i.i_crit_edge

ice_flow_rem_entry_sync.exit.i.if.end.i.i_crit_edge: ; preds = %ice_flow_rem_entry_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

ice_flow_rem_entry_sync.exit.i.for.end.i_crit_edge: ; preds = %ice_flow_rem_entry_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %ice_flow_rem_entry_sync.exit.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %entries_lock.i) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %for.end.i, %if.end.if.end17.i_crit_edge
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %id.i, align 8
  %call18.i = tail call i32 @ice_rem_prof(ptr noundef %hw, i32 noundef %blk, i64 noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.end17.i.out_crit_edge

if.end17.i.out_crit_edge:                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then20.i:                                      ; preds = %if.end17.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %p.0.i) #7
  br i1 %call.i.i.i, label %if.end.i.i44.i, label %if.then20.i.list_del.exit.i_crit_edge

if.then20.i.list_del.exit.i_crit_edge:            ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i44.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i43.i = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i43.i, align 4
  %26 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i44.i, %if.then20.i.list_del.exit.i_crit_edge
  %30 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %entries_lock22.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %entries_lock22.i) #7
  %add.ptr25.i = getelementptr i8, ptr %hw, i32 -2960
  %32 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr25.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i, ptr noundef nonnull %p.0.i) #7
  br label %out

out:                                              ; preds = %list_del.exit.i, %if.end17.i.out_crit_edge, %ice_flow_find_prof_id.exit.out_crit_edge, %for.cond.i.out_crit_edge
  %status.0 = phi i32 [ -2, %ice_flow_find_prof_id.exit.out_crit_edge ], [ %call18.i, %if.end17.i.out_crit_edge ], [ 0, %list_del.exit.i ], [ -2, %for.cond.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #7
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_flow_add_entry(ptr noundef %hw, i32 noundef %blk, i64 noundef %prof_id, i64 noundef %entry_id, i16 noundef zeroext %vsi_handle, i32 noundef %prio, ptr noundef readnone %data, ptr noundef writeonly %entry_h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %entry_h, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tobool1.not = icmp ne ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %blk)
  %cmp.not = icmp eq i32 %blk, 3
  %or.cond = or i1 %cmp.not, %tobool1.not
  br i1 %or.cond, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 %blk
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #7
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 %blk
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end3
  %p.0.in.i = phi ptr [ %arrayidx.i, %if.end3 ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0.i = load ptr, ptr %p.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.out.thread109_crit_edge, label %for.body.i

for.cond.i.out.thread109_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread109

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %id.i, align 8
  %cmp3.i = icmp eq i64 %2, %prof_id
  br i1 %cmp3.i, label %ice_flow_find_prof_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

ice_flow_find_prof_id.exit:                       ; preds = %for.body.i
  %tobool5.not = icmp eq ptr %p.0.i, null
  br i1 %tobool5.not, label %ice_flow_find_prof_id.exit.out.thread109_crit_edge, label %if.else

ice_flow_find_prof_id.exit.out.thread109_crit_edge: ; preds = %ice_flow_find_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread109

if.else:                                          ; preds = %ice_flow_find_prof_id.exit
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.else.out.thread109_crit_edge, label %if.else10

if.else.out.thread109_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread109

if.else10:                                        ; preds = %if.else
  %conv.i = zext i16 %vsi_handle to i32
  %vsis.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 7
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %vsis.i, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else10.if.end18_crit_edge

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then.i:                                        ; preds = %if.else10
  %call1.i = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id.i, align 8
  %call2.i = tail call i32 @ice_add_prof_id_flow(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %call1.i, i64 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %do.body.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %conv.i, ptr noundef %vsis.i) #7
  br label %if.end18

do.body.i:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_assoc_prof.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flow_add_entry, %out)) #7
          to label %if.then25.sink.split [label %out], !srcloc !109

if.end18:                                         ; preds = %if.then4.i, %if.else10.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx) #7
  %id = getelementptr inbounds %struct.ice_flow_entry, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %entry_id, ptr %id, align 8
  %vsi_handle19 = getelementptr inbounds %struct.ice_flow_entry, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %vsi_handle19 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %vsi_handle, ptr %vsi_handle19, align 4
  %prof20 = getelementptr inbounds %struct.ice_flow_entry, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %prof20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %p.0.i, ptr %prof20, align 8
  %priority = getelementptr inbounds %struct.ice_flow_entry, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %prio, ptr %priority, align 8
  %15 = and i32 %blk, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch = icmp eq i32 %15, 2
  br i1 %switch, label %sw.epilog, label %if.end18.if.then25_crit_edge

if.end18.if.then25_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

sw.epilog:                                        ; preds = %if.end18
  %entries_lock = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %entries_lock, i32 noundef 0) #7
  %entries = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 5
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %entries, ptr noundef %17) #7
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.out.thread_crit_edge

sw.epilog.out.thread_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entries, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call.i, ptr %entries, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end.i.i, %sw.epilog.out.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %entries_lock) #7
  %22 = ptrtoint ptr %call.i to i32
  %conv = zext i32 %22 to i64
  %23 = ptrtoint ptr %entry_h to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv, ptr %entry_h, align 8
  br label %cleanup

out.thread109:                                    ; preds = %if.else.out.thread109_crit_edge, %ice_flow_find_prof_id.exit.out.thread109_crit_edge, %for.cond.i.out.thread109_crit_edge
  %status.0.ph.ph = phi i32 [ -2, %ice_flow_find_prof_id.exit.out.thread109_crit_edge ], [ -12, %if.else.out.thread109_crit_edge ], [ -2, %for.cond.i.out.thread109_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #7
  br label %cleanup

out:                                              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_assoc_prof.__UNIQUE_ID_ddebug615, ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %call2.i) #7
  br label %if.then25.sink.split

if.then25.sink.split:                             ; preds = %out, %do.body.i
  tail call void @mutex_unlock(ptr noundef %arrayidx) #7
  br label %if.then25

if.then25:                                        ; preds = %if.then25.sink.split, %if.end18.if.then25_crit_edge
  %status.1107 = phi i32 [ -95, %if.end18.if.then25_crit_edge ], [ %call2.i, %if.then25.sink.split ]
  %entry26 = getelementptr inbounds %struct.ice_flow_entry, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %entry26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entry26, align 4
  %tobool27.not = icmp eq ptr %27, null
  br i1 %tobool27.not, label %if.then25.if.end35_crit_edge, label %if.then28

if.then25.if.end35_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr31 = getelementptr i8, ptr %hw, i32 -2960
  %28 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr31, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev33, ptr noundef nonnull %27) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.then25.if.end35_crit_edge
  %add.ptr38 = getelementptr i8, ptr %hw, i32 -2960
  %30 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr38, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev40, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %out.thread109, %out.thread, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %status.1107, %if.end35 ], [ 0, %out.thread ], [ %status.0.ph.ph, %out.thread109 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ice_is_vsi_valid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_flow_assoc_prof(ptr noundef %hw, i32 noundef %blk, ptr noundef %prof, i16 noundef zeroext %vsi_handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vsi_handle to i32
  %vsis = getelementptr inbounds %struct.ice_flow_prof, ptr %prof, i32 0, i32 7
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %vsis, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  %id = getelementptr inbounds %struct.ice_flow_prof, ptr %prof, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %call2 = tail call i32 @ice_add_prof_id_flow(ptr noundef %hw, i32 noundef %blk, i16 noundef zeroext %call1, i64 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %vsis) #7
  br label %if.end15

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_assoc_prof.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flow_assoc_prof, %if.then12)) #7
          to label %if.end15 [label %if.then12], !srcloc !109

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_assoc_prof.__UNIQUE_ID_ddebug615, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call2) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %do.body, %if.then4, %entry.if.end15_crit_edge
  %status.0 = phi i32 [ 0, %entry.if.end15_crit_edge ], [ %call2, %if.then12 ], [ 0, %if.then4 ], [ %call2, %do.body ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_flow_rem_entry(ptr nocapture noundef readonly %hw, i32 noundef %blk, i64 noundef %entry_h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %entry_h)
  %cmp = icmp eq i64 %entry_h, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %entry_h to i32
  %0 = inttoptr i32 %conv to ptr
  %prof2 = getelementptr inbounds %struct.ice_flow_entry, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %prof2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prof2, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %entries_lock = getelementptr inbounds %struct.ice_flow_prof, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %entries_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not.i = icmp eq i32 %conv, 0
  br i1 %tobool.not.i, label %if.then3.ice_flow_rem_entry_sync.exit_crit_edge, label %if.end.i

if.then3.ice_flow_rem_entry_sync.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_rem_entry_sync.exit

if.end.i:                                         ; preds = %if.then3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %0) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i, %if.end.i.if.end.i.i_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %entry2.i.i = getelementptr inbounds %struct.ice_flow_entry, ptr %0, i32 0, i32 3
  %11 = ptrtoint ptr %entry2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.ice_dealloc_flow_entry.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.ice_dealloc_flow_entry.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_dealloc_flow_entry.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i.i, ptr noundef nonnull %12) #7
  br label %ice_dealloc_flow_entry.exit.i

ice_dealloc_flow_entry.exit.i:                    ; preds = %if.then4.i.i, %if.end.i.i.ice_dealloc_flow_entry.exit.i_crit_edge
  %add.ptr9.i.i = getelementptr i8, ptr %hw, i32 -2960
  %15 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr9.i.i, align 8
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev11.i.i, ptr noundef nonnull %0) #7
  br label %ice_flow_rem_entry_sync.exit

ice_flow_rem_entry_sync.exit:                     ; preds = %ice_dealloc_flow_entry.exit.i, %if.then3.ice_flow_rem_entry_sync.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %ice_dealloc_flow_entry.exit.i ], [ -22, %if.then3.ice_flow_rem_entry_sync.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %entries_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %ice_flow_rem_entry_sync.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i, %ice_flow_rem_entry_sync.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_flow_set_fld(ptr nocapture noundef %seg, i32 noundef %fld, i16 noundef zeroext %val_loc, i16 noundef zeroext %mask_loc, i16 noundef zeroext %last_loc, i1 noundef zeroext %range) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sh_prom.i = zext i32 %fld to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %match.i = getelementptr inbounds %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 1
  %0 = ptrtoint ptr %match.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %match.i, align 8
  %or.i = or i64 %1, %shl.i
  store i64 %or.i, ptr %match.i, align 8
  br i1 %range, label %if.then.i, label %entry.ice_flow_set_fld_ext.exit_crit_edge

entry.ice_flow_set_fld_ext.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_set_fld_ext.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %range.i = getelementptr inbounds %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 2
  %2 = ptrtoint ptr %range.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %range.i, align 8
  %or1.i = or i64 %3, %shl.i
  store i64 %or1.i, ptr %range.i, align 8
  br label %ice_flow_set_fld_ext.exit

ice_flow_set_fld_ext.exit:                        ; preds = %if.then.i, %entry.ice_flow_set_fld_ext.exit_crit_edge
  %cond = zext i1 %range to i32
  %arrayidx.i = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 3, i32 %fld
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %arrayidx.i, align 8
  %src.i = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 3, i32 %fld, i32 1
  %5 = ptrtoint ptr %src.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %val_loc, ptr %src.i, align 4
  %mask.i = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 3, i32 %fld, i32 1, i32 1
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %mask_loc, ptr %mask.i, align 2
  %last.i = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 3, i32 %fld, i32 1, i32 2
  %7 = ptrtoint ptr %last.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %last_loc, ptr %last.i, align 4
  %arrayidx10.i = getelementptr [42 x %struct.ice_flow_field_info], ptr @ice_flds_info, i32 0, i32 %fld
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10.i, align 4
  %10 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seg, align 8
  %or11.i = or i32 %11, %9
  store i32 %or11.i, ptr %seg, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ice_flow_add_fld_raw(ptr nocapture noundef %seg, i16 noundef zeroext %off, i8 noundef zeroext %len, i16 noundef zeroext %val_loc, i16 noundef zeroext %mask_loc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %raws_cnt = getelementptr inbounds %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 4
  %0 = ptrtoint ptr %raws_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %raws_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %1 to i32
  %off3 = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 5, i32 %conv, i32 1
  %2 = ptrtoint ptr %off3 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %off, ptr %off3, align 4
  %arrayidx7 = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 5, i32 %conv
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %arrayidx7, align 4
  %src = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 5, i32 %conv, i32 0, i32 1
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %val_loc, ptr %src, align 4
  %mask = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 5, i32 %conv, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %mask_loc, ptr %mask, align 2
  %conv19 = zext i8 %len to i16
  %last = getelementptr %struct.ice_flow_seg_info, ptr %seg, i32 0, i32 5, i32 %conv, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %last to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv19, ptr %last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inc = add i8 %1, 1
  %7 = ptrtoint ptr %raws_cnt to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %inc, ptr %raws_cnt, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_flow_rem_vsi_prof(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %prof_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %p.0.in.i = phi ptr [ %arrayidx.i, %if.end ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0.i = load ptr, ptr %p.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.do.body_crit_edge, label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %id.i, align 8
  %cmp3.i = icmp eq i64 %2, %prof_id
  br i1 %cmp3.i, label %ice_flow_find_prof_id.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

ice_flow_find_prof_id.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p.0.i, null
  br i1 %tobool.not, label %ice_flow_find_prof_id.exit.do.body_crit_edge, label %if.end10

ice_flow_find_prof_id.exit.do.body_crit_edge:     ; preds = %ice_flow_find_prof_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %ice_flow_find_prof_id.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flow_rem_vsi_prof, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !109

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %hw, i32 -2960
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug617, ptr noundef %dev, ptr noundef nonnull @.str.3, i64 noundef %prof_id) #7
  br label %cleanup

if.end10:                                         ; preds = %ice_flow_find_prof_id.exit
  %entries = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %entries, align 4
  %cmp.i.not = icmp eq ptr %6, %entries
  br i1 %cmp.i.not, label %if.end10.if.end45_crit_edge, label %if.then13

if.end10.if.end45_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then13:                                        ; preds = %if.end10
  %entries_lock = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %entries_lock, i32 noundef 0) #7
  %7 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entries, align 4
  %cmp.not121 = icmp eq ptr %8, %entries
  br i1 %cmp.not121, label %if.then13.if.end42.thread113_crit_edge, label %for.body.lr.ph

if.then13.if.end42.thread113_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.thread113

for.body.lr.ph:                                   ; preds = %if.then13
  %add.ptr.i.i = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

if.end42.thread113:                               ; preds = %for.inc.if.end42.thread113_crit_edge, %if.then13.if.end42.thread113_crit_edge
  tail call void @mutex_unlock(ptr noundef %entries_lock) #7
  br label %if.end45

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %e.0122 = phi ptr [ %8, %for.body.lr.ph ], [ %t.0124, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %e.0122 to i32
  call void @__asan_load4_noabort(i32 %9)
  %t.0124 = load ptr, ptr %e.0122, align 8
  %vsi_handle26 = getelementptr inbounds %struct.ice_flow_entry, ptr %e.0122, i32 0, i32 5
  %10 = ptrtoint ptr %vsi_handle26 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vsi_handle26, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %vsi_handle)
  %cmp28.not = icmp eq i16 %11, %vsi_handle
  br i1 %cmp28.not, label %if.end31, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %tobool.not.i = icmp eq ptr %e.0122, null
  br i1 %tobool.not.i, label %if.end42, label %if.end.i

if.end.i:                                         ; preds = %if.end31
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %e.0122) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.0122, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %e.0122 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e.0122, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.i, %if.end.i.if.end.i.i_crit_edge
  %18 = ptrtoint ptr %e.0122 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %e.0122, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.0122, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %entry2.i.i = getelementptr inbounds %struct.ice_flow_entry, ptr %e.0122, i32 0, i32 3
  %20 = ptrtoint ptr %entry2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entry2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.ice_flow_rem_entry_sync.exit.thread_crit_edge, label %if.then4.i.i

if.end.i.i.ice_flow_rem_entry_sync.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_rem_entry_sync.exit.thread

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev.i.i, ptr noundef nonnull %21) #7
  br label %ice_flow_rem_entry_sync.exit.thread

ice_flow_rem_entry_sync.exit.thread:              ; preds = %if.then4.i.i, %if.end.i.i.ice_flow_rem_entry_sync.exit.thread_crit_edge
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 8
  %dev11.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev11.i.i, ptr noundef nonnull %e.0122) #7
  br label %for.inc

for.inc:                                          ; preds = %ice_flow_rem_entry_sync.exit.thread, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %t.0124, %entries
  br i1 %cmp.not, label %for.inc.if.end42.thread113_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end42.thread113_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.thread113

if.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %entries_lock) #7
  br label %cleanup

if.end45:                                         ; preds = %if.end42.thread113, %if.end10.if.end45_crit_edge
  %conv.i100 = zext i16 %vsi_handle to i32
  %vsis.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.0.i, i32 0, i32 7
  %div3.i.i = lshr i32 %conv.i100, 5
  %arrayidx.i.i = getelementptr i32, ptr %vsis.i, i32 %div3.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i100, 31
  %28 = shl nuw i32 1, %and.i.i
  %29 = and i32 %27, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i101 = icmp eq i32 %29, 0
  br i1 %tobool.not.i101, label %if.end45.cleanup_crit_edge, label %if.then.i

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end45
  %call1.i = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %id.i, align 8
  %call2.i = tail call i32 @ice_rem_prof_id_flow(ptr noundef %hw, i32 noundef 2, i16 noundef zeroext %call1.i, i64 noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %do.body.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %conv.i100, ptr noundef %vsis.i) #7
  br label %cleanup

do.body.i:                                        ; preds = %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flow_rem_vsi_prof, %if.then12.i)) #7
          to label %do.body49 [label %if.then12.i], !srcloc !109

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %call2.i) #7
  br label %do.body49

do.body49:                                        ; preds = %if.then12.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_flow_rem_vsi_prof, %if.then61)) #7
          to label %cleanup [label %if.then61], !srcloc !109

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr64 = getelementptr i8, ptr %hw, i32 -2960
  %34 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr64, align 8
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug618, ptr noundef %dev66, ptr noundef nonnull @.str.4, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %if.then4.i, %if.end45.cleanup_crit_edge, %if.end42, %if.then7, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.then7 ], [ -22, %if.end42 ], [ %call2.i, %if.then61 ], [ -2, %do.body ], [ %call2.i, %do.body49 ], [ 0, %if.then4.i ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ice_rem_vsi_rss_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71
  %0 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rss_list_head, align 4
  %cmp.i.not = icmp eq ptr %1, %rss_list_head
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %rss_locks, i32 noundef 0) #7
  %2 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rss_list_head, align 4
  %cmp.not41 = icmp eq ptr %3, %rss_list_head
  br i1 %cmp.not41, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv = zext i16 %vsi_handle to i32
  %add.ptr19 = getelementptr i8, ptr %hw, i32 -2960
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.042 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.044, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %r.042 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.044 = load ptr, ptr %r.042, align 8
  %vsis = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.042, i32 0, i32 1
  %call9 = tail call i32 @_test_and_clear_bit(i32 noundef %conv, ptr noundef %vsis) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %vsis, i32 noundef 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 768
  br i1 %cmp4.i, label %if.then15, label %if.then11.for.inc_crit_edge

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %if.then11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r.042) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.list_del.exit_crit_edge

if.then15.list_del.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %r.042, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %r.042 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r.042, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then15.list_del.exit_crit_edge
  %11 = ptrtoint ptr %r.042 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %r.042, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %r.042, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr19, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %r.042) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.044, %rss_list_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %rss_locks) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rem_vsi_rss_cfg(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %1, %arrayidx
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %rss_locks, i32 noundef 0) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %cmp.not60 = icmp eq ptr %3, %arrayidx
  br i1 %cmp.not60, label %if.end3.for.end_crit_edge, label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %conv = zext i16 %vsi_handle to i32
  %div3.i = lshr i32 %conv, 5
  %and.i = and i32 %conv, 31
  %4 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.061 = phi ptr [ %3, %for.body.lr.ph ], [ %t.063, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %p.061 to i32
  call void @__asan_load4_noabort(i32 %5)
  %t.063 = load ptr, ptr %p.061, align 8
  %vsis = getelementptr inbounds %struct.ice_flow_prof, ptr %p.061, i32 0, i32 7
  %arrayidx.i = getelementptr i32, ptr %vsis, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %8 = and i32 %7, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %for.body
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %11 = and i32 %10, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then15.if.end19_crit_edge, label %if.then.i

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.i:                                        ; preds = %if.then15
  %call1.i = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  %id.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.061, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %id.i, align 8
  %call2.i = tail call i32 @ice_rem_prof_id_flow(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %call1.i, i64 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %do.body.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %vsis) #7
  br label %if.end19

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_rem_vsi_rss_cfg, %if.then12.i)) #7
          to label %for.end [label %if.then12.i], !srcloc !109

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %call2.i) #7
  br label %for.end

if.end19:                                         ; preds = %if.then4.i, %if.then15.if.end19_crit_edge
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %vsis, i32 noundef 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 768
  br i1 %cmp4.i, label %if.then23, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %if.end19
  %id = getelementptr inbounds %struct.ice_flow_prof, ptr %p.061, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %id, align 8
  %call24 = tail call i32 @ice_flow_rem_prof(ptr noundef %hw, i32 noundef 3, i64 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.for.inc_crit_edge, label %if.then23.for.end_crit_edge

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then23.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %t.063, %arrayidx
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then23.for.end_crit_edge, %if.then12.i, %do.body.i, %if.end3.for.end_crit_edge
  %status.2 = phi i32 [ %call2.i, %if.then12.i ], [ %call2.i, %do.body.i ], [ 0, %if.end3.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %call24, %if.then23.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_locks) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_rss_cfg(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hashed_flds)
  %cmp = icmp eq i64 %hashed_flds, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %rss_locks, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @ice_add_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @ice_add_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs, i8 noundef zeroext 2)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %status.0 = phi i32 [ %call1, %if.end.if.end4_crit_edge ], [ %call3, %if.then2 ]
  tail call void @mutex_unlock(ptr noundef %rss_locks) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end4 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs, i8 noundef zeroext %segs_cnt) unnamed_addr #0 align 64 {
entry:
  %prof = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prof) #7
  %0 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %prof, align 4
  %conv = zext i8 %segs_cnt to i32
  %1 = mul nuw nsw i32 %conv, 1096
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3520) #11
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.ice_flow_seg_info, ptr %call8.i.i, i32 %sub
  %call7 = tail call fastcc i32 @ice_flow_set_rss_seg_info(ptr noundef %arrayidx, i64 noundef %hashed_flds, i32 noundef %addl_hdrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.exit_crit_edge

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end10:                                         ; preds = %if.end5
  %call11 = tail call fastcc ptr @ice_flow_find_prof_conds(ptr noundef %hw, ptr noundef nonnull %call8.i.i, i8 noundef zeroext %segs_cnt, i16 noundef zeroext %vsi_handle, i32 noundef 3)
  %2 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %prof, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end14, label %if.end10.exit_crit_edge

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end14:                                         ; preds = %if.end10
  %call15 = tail call fastcc ptr @ice_flow_find_prof_conds(ptr noundef %hw, ptr noundef nonnull %call8.i.i, i8 noundef zeroext %segs_cnt, i16 noundef zeroext %vsi_handle, i32 noundef 2)
  %3 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %prof, align 4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.if.end29_crit_edge, label %if.then17

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then17:                                        ; preds = %if.end14
  %conv.i = zext i16 %vsi_handle to i32
  %vsis.i = getelementptr inbounds %struct.ice_flow_prof, ptr %call15, i32 0, i32 7
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %vsis.i, i32 %div3.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %6 = shl nuw i32 1, %and.i.i
  %7 = and i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then17.if.then20_crit_edge, label %if.then.i

if.then17.if.then20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then.i:                                        ; preds = %if.then17
  %call1.i = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  %id.i = getelementptr inbounds %struct.ice_flow_prof, ptr %call15, i32 0, i32 1
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %id.i, align 8
  %call2.i = tail call i32 @ice_rem_prof_id_flow(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %call1.i, i64 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %do.body.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %vsis.i) #7
  br label %if.then20

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_rss_cfg_sync, %if.then12.i)) #7
          to label %exit [label %if.then12.i], !srcloc !109

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %call2.i) #7
  br label %exit

if.then20:                                        ; preds = %if.then4.i, %if.then17.if.then20_crit_edge
  %12 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prof, align 4
  tail call fastcc void @ice_rem_rss_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %13)
  %vsis = getelementptr inbounds %struct.ice_flow_prof, ptr %13, i32 0, i32 7
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %vsis, i32 noundef 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 768
  br i1 %cmp4.i, label %if.then23, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then23:                                        ; preds = %if.then20
  %14 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prof, align 4
  %id = getelementptr inbounds %struct.ice_flow_prof, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %id, align 8
  %call24 = tail call i32 @ice_flow_rem_prof(ptr noundef %hw, i32 noundef 3, i64 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end29_crit_edge, label %if.then23.exit_crit_edge

if.then23.exit_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.then20.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 3
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i, i32 noundef 0) #7
  %arrayidx1.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 3
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.010.i = load ptr, ptr %arrayidx1.i, align 8
  %cmp.not11.i = icmp eq ptr %p.010.i, %arrayidx1.i
  br i1 %cmp.not11.i, label %if.end29.ice_flow_find_prof_conds.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end29.ice_flow_find_prof_conds.exit.thread_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %segs_cnt)
  %cmp255.not.i = icmp eq i8 %segs_cnt, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc56.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.014.i = phi ptr [ %p.010.i, %for.body.lr.ph.i ], [ %p.0.i, %for.inc56.i.for.body.i_crit_edge ]
  %dir4.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 2
  %19 = ptrtoint ptr %dir4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dir4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp5.i.not = icmp eq i32 %20, 2
  br i1 %cmp5.i.not, label %land.lhs.true7.i, label %for.body.i.for.inc56.i_crit_edge

for.body.i.for.inc56.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

land.lhs.true7.i:                                 ; preds = %for.body.i
  %segs_cnt9.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 3
  %21 = ptrtoint ptr %segs_cnt9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %segs_cnt9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %segs_cnt)
  %cmp11.i = icmp eq i8 %22, %segs_cnt
  br i1 %cmp11.i, label %if.then.i108, label %land.lhs.true7.i.for.inc56.i_crit_edge

land.lhs.true7.i.for.inc56.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

if.then.i108:                                     ; preds = %land.lhs.true7.i
  br i1 %cmp255.not.i, label %if.then.i108.cleanup.i_crit_edge, label %if.then.i108.for.body27.i_crit_edge

if.then.i108.for.body27.i_crit_edge:              ; preds = %if.then.i108
  br label %for.body27.i

if.then.i108.cleanup.i_crit_edge:                 ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body27.i:                                     ; preds = %for.inc.i.for.body27.i_crit_edge, %if.then.i108.for.body27.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body27.i_crit_edge ], [ 0, %if.then.i108.for.body27.i_crit_edge ]
  %arrayidx28.i = getelementptr %struct.ice_flow_seg_info, ptr %call8.i.i, i32 %indvars.iv.i
  %23 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28.i, align 8
  %arrayidx31.i = getelementptr %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 6, i32 %indvars.iv.i
  %25 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx31.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp33.not.i = icmp eq i32 %24, %26
  br i1 %cmp33.not.i, label %lor.lhs.false35.i, label %for.body27.i.cleanup.loopexit.i_crit_edge

for.body27.i.cleanup.loopexit.i_crit_edge:        ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit.i

lor.lhs.false35.i:                                ; preds = %for.body27.i
  %match.i = getelementptr %struct.ice_flow_seg_info, ptr %call8.i.i, i32 %indvars.iv.i, i32 1
  %27 = ptrtoint ptr %match.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %match.i, align 8
  %match44.i = getelementptr %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 6, i32 %indvars.iv.i, i32 1
  %29 = ptrtoint ptr %match44.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %match44.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp45.not.i = icmp eq i64 %28, %30
  br i1 %cmp45.not.i, label %for.inc.i, label %lor.lhs.false35.i.cleanup.loopexit.i_crit_edge

lor.lhs.false35.i.cleanup.loopexit.i_crit_edge:   ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit.i

for.inc.i:                                        ; preds = %lor.lhs.false35.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.ice_flow_find_prof_conds.exit_crit_edge, label %for.inc.i.for.body27.i_crit_edge

for.inc.i.for.body27.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27.i

for.inc.i.ice_flow_find_prof_conds.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit

cleanup.loopexit.i:                               ; preds = %lor.lhs.false35.i.cleanup.loopexit.i_crit_edge, %for.body27.i.cleanup.loopexit.i_crit_edge
  %31 = trunc i32 %indvars.iv.i to i8
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.loopexit.i, %if.then.i108.cleanup.i_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %if.then.i108.cleanup.i_crit_edge ], [ %31, %cleanup.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %i.0.lcssa.i, i8 %segs_cnt)
  %cmp51.i = icmp eq i8 %i.0.lcssa.i, %segs_cnt
  br i1 %cmp51.i, label %cleanup.i.ice_flow_find_prof_conds.exit_crit_edge, label %cleanup.i.for.inc56.i_crit_edge

cleanup.i.for.inc56.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

cleanup.i.ice_flow_find_prof_conds.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit

for.inc56.i:                                      ; preds = %cleanup.i.for.inc56.i_crit_edge, %land.lhs.true7.i.for.inc56.i_crit_edge, %for.body.i.for.inc56.i_crit_edge
  %32 = ptrtoint ptr %p.014.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %p.0.i = load ptr, ptr %p.014.i, align 8
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx1.i
  br i1 %cmp.not.i, label %for.inc56.i.ice_flow_find_prof_conds.exit.thread_crit_edge, label %for.inc56.i.for.body.i_crit_edge

for.inc56.i.for.body.i_crit_edge:                 ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc56.i.ice_flow_find_prof_conds.exit.thread_crit_edge: ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit.thread

ice_flow_find_prof_conds.exit.thread:             ; preds = %for.inc56.i.ice_flow_find_prof_conds.exit.thread_crit_edge, %if.end29.ice_flow_find_prof_conds.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #7
  %33 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %prof, align 4
  br label %if.end38

ice_flow_find_prof_conds.exit:                    ; preds = %cleanup.i.ice_flow_find_prof_conds.exit_crit_edge, %for.inc.i.ice_flow_find_prof_conds.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #7
  %34 = ptrtoint ptr %prof to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %p.014.i, ptr %prof, align 4
  %tobool31.not = icmp eq ptr %p.014.i, null
  br i1 %tobool31.not, label %ice_flow_find_prof_conds.exit.if.end38_crit_edge, label %if.then32

ice_flow_find_prof_conds.exit.if.end38_crit_edge: ; preds = %ice_flow_find_prof_conds.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then32:                                        ; preds = %ice_flow_find_prof_conds.exit
  %conv.i109 = zext i16 %vsi_handle to i32
  %vsis.i110 = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 7
  %div3.i.i111 = lshr i32 %conv.i109, 5
  %arrayidx.i.i112 = getelementptr i32, ptr %vsis.i110, i32 %div3.i.i111
  %35 = ptrtoint ptr %arrayidx.i.i112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i112, align 4
  %and.i.i113 = and i32 %conv.i109, 31
  %37 = shl nuw i32 1, %and.i.i113
  %38 = and i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i114 = icmp eq i32 %38, 0
  br i1 %tobool.not.i114, label %if.then.i119, label %if.then32.if.then35_crit_edge

if.then32.if.then35_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.then.i119:                                     ; preds = %if.then32
  %call1.i115 = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  %id.i116 = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 1
  %39 = ptrtoint ptr %id.i116 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %id.i116, align 8
  %call2.i117 = tail call i32 @ice_add_prof_id_flow(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %call1.i115, i64 noundef %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i117)
  %tobool3.not.i118 = icmp eq i32 %call2.i117, 0
  br i1 %tobool3.not.i118, label %if.then4.i120, label %do.body.i121

if.then4.i120:                                    ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef %conv.i109, ptr noundef %vsis.i110) #7
  br label %if.then35

do.body.i121:                                     ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_assoc_prof.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_add_rss_cfg_sync, %if.then12.i124)) #7
          to label %exit [label %if.then12.i124], !srcloc !109

if.then12.i124:                                   ; preds = %do.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i122 = getelementptr i8, ptr %hw, i32 -2960
  %41 = ptrtoint ptr %add.ptr.i122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i122, align 8
  %dev.i123 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_assoc_prof.__UNIQUE_ID_ddebug615, ptr noundef %dev.i123, ptr noundef nonnull @.str.40, i32 noundef %call2.i117) #7
  br label %exit

if.then35:                                        ; preds = %if.then4.i120, %if.then32.if.then35_crit_edge
  %43 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prof, align 4
  %call36 = tail call fastcc i32 @ice_add_rss_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %44)
  br label %exit

if.end38:                                         ; preds = %ice_flow_find_prof_conds.exit.if.end38_crit_edge, %ice_flow_find_prof_conds.exit.thread
  %and = and i64 %hashed_flds, 4294967295
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 8
  %conv42 = zext i32 %46 to i64
  %shl = shl nuw i64 %conv42, 32
  %and43 = and i64 %shl, 4611686014132420608
  %conv47 = and i32 %sub, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv47)
  %tobool48.not = icmp eq i32 %conv47, 0
  %cond = select i1 %tobool48.not, i64 0, i64 -9223372036854775808
  %or = or i64 %cond, %and
  %or49 = or i64 %or, %and43
  %call50 = call i32 @ice_flow_add_prof(ptr noundef %hw, i32 noundef 3, i32 noundef 2, i64 noundef %or49, ptr noundef nonnull %call8.i.i, i8 noundef zeroext %segs_cnt, ptr noundef nonnull %prof)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end38.exit_crit_edge

if.end38.exit_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end53:                                         ; preds = %if.end38
  %47 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prof, align 4
  %call54 = call fastcc i32 @ice_flow_assoc_prof(ptr noundef %hw, i32 noundef 3, ptr noundef %48, i16 noundef zeroext %vsi_handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  %49 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prof, align 4
  br i1 %tobool55.not, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %id57 = getelementptr inbounds %struct.ice_flow_prof, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %id57 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %id57, align 8
  %call58 = call i32 @ice_flow_rem_prof(ptr noundef %hw, i32 noundef 3, i64 noundef %52)
  br label %exit

if.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call fastcc i32 @ice_add_rss_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef %50)
  br label %exit

exit:                                             ; preds = %if.end59, %if.then56, %if.end38.exit_crit_edge, %if.then35, %if.then12.i124, %do.body.i121, %if.then23.exit_crit_edge, %if.then12.i, %do.body.i, %if.end10.exit_crit_edge, %if.end5.exit_crit_edge
  %status.0 = phi i32 [ %call7, %if.end5.exit_crit_edge ], [ 0, %if.end10.exit_crit_edge ], [ %call24, %if.then23.exit_crit_edge ], [ %call36, %if.then35 ], [ %call50, %if.end38.exit_crit_edge ], [ %call54, %if.then56 ], [ %call60, %if.end59 ], [ %call2.i, %if.then12.i ], [ %call2.i, %do.body.i ], [ %call2.i117, %if.then12.i124 ], [ %call2.i117, %do.body.i121 ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prof) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_rem_rss_cfg(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hashed_flds)
  %cmp = icmp eq i64 %hashed_flds, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %rss_locks, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @ice_rem_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @ice_rem_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs, i8 noundef zeroext 2)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %status.0 = phi i32 [ %call1, %if.end.if.end4_crit_edge ], [ %call3, %if.then2 ]
  tail call void @mutex_unlock(ptr noundef %rss_locks) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end4 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_rem_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %hashed_flds, i32 noundef %addl_hdrs, i8 noundef zeroext %segs_cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %segs_cnt to i32
  %0 = mul nuw nsw i32 %conv, 1096
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.ice_flow_seg_info, ptr %call8.i.i, i32 %sub
  %call2 = tail call fastcc i32 @ice_flow_set_rss_seg_info(ptr noundef %arrayidx, i64 noundef %hashed_flds, i32 noundef %addl_hdrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end5:                                          ; preds = %if.end
  %arrayidx.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 3
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i, i32 noundef 0) #7
  %arrayidx1.i = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 3
  %1 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.010.i = load ptr, ptr %arrayidx1.i, align 8
  %cmp.not11.i = icmp eq ptr %p.010.i, %arrayidx1.i
  br i1 %cmp.not11.i, label %if.end5.ice_flow_find_prof_conds.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end5.ice_flow_find_prof_conds.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %segs_cnt)
  %cmp255.not.i = icmp eq i8 %segs_cnt, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc56.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.014.i = phi ptr [ %p.010.i, %for.body.lr.ph.i ], [ %p.0.i, %for.inc56.i.for.body.i_crit_edge ]
  %dir4.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 2
  %2 = ptrtoint ptr %dir4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5.i.not = icmp eq i32 %3, 2
  br i1 %cmp5.i.not, label %land.lhs.true7.i, label %for.body.i.for.inc56.i_crit_edge

for.body.i.for.inc56.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

land.lhs.true7.i:                                 ; preds = %for.body.i
  %segs_cnt9.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 3
  %4 = ptrtoint ptr %segs_cnt9.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segs_cnt9.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %segs_cnt)
  %cmp11.i = icmp eq i8 %5, %segs_cnt
  br i1 %cmp11.i, label %if.then.i, label %land.lhs.true7.i.for.inc56.i_crit_edge

land.lhs.true7.i.for.inc56.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  br i1 %cmp255.not.i, label %if.then.i.cleanup.i_crit_edge, label %if.then.i.for.body27.i_crit_edge

if.then.i.for.body27.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body27.i

if.then.i.cleanup.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

for.body27.i:                                     ; preds = %for.inc.i.for.body27.i_crit_edge, %if.then.i.for.body27.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body27.i_crit_edge ], [ 0, %if.then.i.for.body27.i_crit_edge ]
  %arrayidx28.i = getelementptr %struct.ice_flow_seg_info, ptr %call8.i.i, i32 %indvars.iv.i
  %6 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx28.i, align 8
  %arrayidx31.i = getelementptr %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 6, i32 %indvars.iv.i
  %8 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx31.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp33.not.i = icmp eq i32 %7, %9
  br i1 %cmp33.not.i, label %lor.lhs.false35.i, label %for.body27.i.cleanup.loopexit.i_crit_edge

for.body27.i.cleanup.loopexit.i_crit_edge:        ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit.i

lor.lhs.false35.i:                                ; preds = %for.body27.i
  %match.i = getelementptr %struct.ice_flow_seg_info, ptr %call8.i.i, i32 %indvars.iv.i, i32 1
  %10 = ptrtoint ptr %match.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %match.i, align 8
  %match44.i = getelementptr %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 6, i32 %indvars.iv.i, i32 1
  %12 = ptrtoint ptr %match44.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %match44.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp45.not.i = icmp eq i64 %11, %13
  br i1 %cmp45.not.i, label %for.inc.i, label %lor.lhs.false35.i.cleanup.loopexit.i_crit_edge

lor.lhs.false35.i.cleanup.loopexit.i_crit_edge:   ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit.i

for.inc.i:                                        ; preds = %lor.lhs.false35.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.ice_flow_find_prof_conds.exit_crit_edge, label %for.inc.i.for.body27.i_crit_edge

for.inc.i.for.body27.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27.i

for.inc.i.ice_flow_find_prof_conds.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit

cleanup.loopexit.i:                               ; preds = %lor.lhs.false35.i.cleanup.loopexit.i_crit_edge, %for.body27.i.cleanup.loopexit.i_crit_edge
  %14 = trunc i32 %indvars.iv.i to i8
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.loopexit.i, %if.then.i.cleanup.i_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %if.then.i.cleanup.i_crit_edge ], [ %14, %cleanup.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %i.0.lcssa.i, i8 %segs_cnt)
  %cmp51.i = icmp eq i8 %i.0.lcssa.i, %segs_cnt
  br i1 %cmp51.i, label %cleanup.i.ice_flow_find_prof_conds.exit_crit_edge, label %cleanup.i.for.inc56.i_crit_edge

cleanup.i.for.inc56.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56.i

cleanup.i.ice_flow_find_prof_conds.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit

for.inc56.i:                                      ; preds = %cleanup.i.for.inc56.i_crit_edge, %land.lhs.true7.i.for.inc56.i_crit_edge, %for.body.i.for.inc56.i_crit_edge
  %15 = ptrtoint ptr %p.014.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.0.i = load ptr, ptr %p.014.i, align 8
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx1.i
  br i1 %cmp.not.i, label %for.inc56.i.ice_flow_find_prof_conds.exit.thread_crit_edge, label %for.inc56.i.for.body.i_crit_edge

for.inc56.i.for.body.i_crit_edge:                 ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc56.i.ice_flow_find_prof_conds.exit.thread_crit_edge: ; preds = %for.inc56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ice_flow_find_prof_conds.exit.thread

ice_flow_find_prof_conds.exit.thread:             ; preds = %for.inc56.i.ice_flow_find_prof_conds.exit.thread_crit_edge, %if.end5.ice_flow_find_prof_conds.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #7
  br label %out

ice_flow_find_prof_conds.exit:                    ; preds = %cleanup.i.ice_flow_find_prof_conds.exit_crit_edge, %for.inc.i.ice_flow_find_prof_conds.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #7
  %tobool7.not = icmp eq ptr %p.014.i, null
  br i1 %tobool7.not, label %ice_flow_find_prof_conds.exit.out_crit_edge, label %if.end9

ice_flow_find_prof_conds.exit.out_crit_edge:      ; preds = %ice_flow_find_prof_conds.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %ice_flow_find_prof_conds.exit
  %conv.i = zext i16 %vsi_handle to i32
  %vsis.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 7
  %div3.i.i37 = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %vsis.i, i32 %div3.i.i37
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i38 = and i32 %conv.i, 31
  %18 = shl nuw i32 1, %and.i.i38
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end9.if.end13_crit_edge, label %if.then.i39

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then.i39:                                      ; preds = %if.end9
  %call1.i = tail call zeroext i16 @ice_get_hw_vsi_num(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  %id.i = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 1
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %id.i, align 8
  %call2.i = tail call i32 @ice_rem_prof_id_flow(ptr noundef %hw, i32 noundef 3, i16 noundef zeroext %call1.i, i64 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %do.body.i

if.then4.i:                                       ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %vsis.i) #7
  br label %if.end13

do.body.i:                                        ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ice_rem_rss_cfg_sync, %if.then12.i)) #7
          to label %out [label %if.then12.i], !srcloc !109

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -2960
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %call2.i) #7
  br label %out

if.end13:                                         ; preds = %if.then4.i, %if.end9.if.end13_crit_edge
  tail call fastcc void @ice_rem_rss_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr noundef nonnull %p.014.i)
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %vsis.i, i32 noundef 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 768
  br i1 %cmp4.i, label %if.then15, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014.i, i32 0, i32 1
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %id, align 8
  %call16 = tail call i32 @ice_flow_rem_prof(ptr noundef %hw, i32 noundef 3, i64 noundef %25)
  br label %out

out:                                              ; preds = %if.then15, %if.end13.out_crit_edge, %if.then12.i, %do.body.i, %ice_flow_find_prof_conds.exit.out_crit_edge, %ice_flow_find_prof_conds.exit.thread, %if.end.out_crit_edge
  %status.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call16, %if.then15 ], [ 0, %if.end13.out_crit_edge ], [ -2, %ice_flow_find_prof_conds.exit.out_crit_edge ], [ -2, %ice_flow_find_prof_conds.exit.thread ], [ %call2.i, %if.then12.i ], [ %call2.i, %do.body.i ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_add_avf_rss_cfg(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %avf_hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %avf_hash)
  %cmp = icmp eq i64 %avf_hash, 0
  br i1 %cmp, label %entry.cleanup74_crit_edge, label %lor.lhs.false

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup74_crit_edge

lor.lhs.false.cleanup74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.end:                                           ; preds = %lor.lhs.false
  %and = and i64 %avf_hash, -140324634624001
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup74_crit_edge

if.end.cleanup74_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.end2:                                          ; preds = %if.end
  %and3 = and i64 %avf_hash, 136902082560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  %or = or i64 %avf_hash, 103079215104
  %spec.select = select i1 %tobool4.not, i64 %avf_hash, i64 %or
  %and7 = and i64 %spec.select, 140187732541440
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  %or10 = or i64 %spec.select, 105553116266496
  %hash_flds.1 = select i1 %tobool8.not, i64 %spec.select, i64 %or10
  %rss_locks.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  br label %while.cond

while.cond:                                       ; preds = %ice_add_rss_cfg.exit.while.cond_crit_edge, %if.end2
  %hash_flds.2 = phi i64 [ %hash_flds.1, %if.end2 ], [ %and60, %ice_add_rss_cfg.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %hash_flds.2)
  %tobool12.not = icmp eq i64 %hash_flds.2, 0
  br i1 %tobool12.not, label %while.cond.cleanup74_crit_edge, label %while.body

while.cond.cleanup74_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

while.body:                                       ; preds = %while.cond
  %and13 = and i64 %hash_flds.2, 136902082560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.else38, label %if.then15

if.then15:                                        ; preds = %while.body
  %and16 = and i64 %hash_flds.2, 103079215104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then15.lor.lhs.false.i_crit_edge

if.then15.lor.lhs.false.i_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else:                                          ; preds = %if.then15
  %and20 = and i64 %hash_flds.2, 12884901888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.else24, label %if.else.lor.lhs.false.i_crit_edge

if.else.lor.lhs.false.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else24:                                        ; preds = %if.else
  %and25 = and i64 %hash_flds.2, 3758096384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.else29, label %if.else24.lor.lhs.false.i_crit_edge

if.else24.lor.lhs.false.i_crit_edge:              ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else29:                                        ; preds = %if.else24
  %and30 = and i64 %hash_flds.2, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.else29.cleanup74_crit_edge, label %if.else29.lor.lhs.false.i_crit_edge

if.else29.lor.lhs.false.i_crit_edge:              ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else29.cleanup74_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.else38:                                        ; preds = %while.body
  %and39 = and i64 %hash_flds.2, 140187732541440
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39)
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.else38.cleanup74_crit_edge, label %if.then41

if.else38.cleanup74_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.then41:                                        ; preds = %if.else38
  %and42 = and i64 %hash_flds.2, 105553116266496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and42)
  %tobool43.not = icmp eq i64 %and42, 0
  br i1 %tobool43.not, label %if.else46, label %if.then41.lor.lhs.false.i_crit_edge

if.then41.lor.lhs.false.i_crit_edge:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else46:                                        ; preds = %if.then41
  %and47 = and i64 %hash_flds.2, 13194139533312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and47)
  %tobool48.not = icmp eq i64 %and47, 0
  br i1 %tobool48.not, label %if.else51, label %if.else46.lor.lhs.false.i_crit_edge

if.else46.lor.lhs.false.i_crit_edge:              ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else51:                                        ; preds = %if.else46
  %and52 = and i64 %hash_flds.2, 3848290697216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and52)
  %tobool53.not = icmp eq i64 %and52, 0
  br i1 %tobool53.not, label %if.else56, label %if.else51.lor.lhs.false.i_crit_edge

if.else51.lor.lhs.false.i_crit_edge:              ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else56:                                        ; preds = %if.else51
  %and57 = and i64 %hash_flds.2, 17592186044416
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp eq i64 %and57, 0
  br i1 %tobool58.not, label %if.else56.cleanup74_crit_edge, label %if.else56.lor.lhs.false.i_crit_edge

if.else56.lor.lhs.false.i_crit_edge:              ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.else56.cleanup74_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

lor.lhs.false.i:                                  ; preds = %if.else56.lor.lhs.false.i_crit_edge, %if.else51.lor.lhs.false.i_crit_edge, %if.else46.lor.lhs.false.i_crit_edge, %if.then41.lor.lhs.false.i_crit_edge, %if.else29.lor.lhs.false.i_crit_edge, %if.else24.lor.lhs.false.i_crit_edge, %if.else.lor.lhs.false.i_crit_edge, %if.then15.lor.lhs.false.i_crit_edge
  %.sink = phi i64 [ -103079215105, %if.then15.lor.lhs.false.i_crit_edge ], [ -12884901889, %if.else.lor.lhs.false.i_crit_edge ], [ -3758096385, %if.else24.lor.lhs.false.i_crit_edge ], [ -17179869185, %if.else29.lor.lhs.false.i_crit_edge ], [ -105553116266497, %if.then41.lor.lhs.false.i_crit_edge ], [ -13194139533313, %if.else46.lor.lhs.false.i_crit_edge ], [ -3848290697217, %if.else51.lor.lhs.false.i_crit_edge ], [ -17592186044417, %if.else56.lor.lhs.false.i_crit_edge ]
  %rss_hash.0.ph = phi i64 [ 6144, %if.then15.lor.lhs.false.i_crit_edge ], [ 104448, %if.else.lor.lhs.false.i_crit_edge ], [ 399360, %if.else24.lor.lhs.false.i_crit_edge ], [ 1579008, %if.else29.lor.lhs.false.i_crit_edge ], [ 24576, %if.then41.lor.lhs.false.i_crit_edge ], [ 122880, %if.else46.lor.lhs.false.i_crit_edge ], [ 417792, %if.else51.lor.lhs.false.i_crit_edge ], [ 1597440, %if.else56.lor.lhs.false.i_crit_edge ]
  %and60 = and i64 %hash_flds.2, %.sink
  %call.i = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call.i, label %if.end.i, label %lor.lhs.false.i.cleanup74_crit_edge

lor.lhs.false.i.cleanup74_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void @mutex_lock_nested(ptr noundef %rss_locks.i, i32 noundef 0) #7
  %call1.i = tail call fastcc i32 @ice_add_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %rss_hash.0.ph, i32 noundef 0, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %ice_add_rss_cfg.exit, label %ice_add_rss_cfg.exit.thread113

ice_add_rss_cfg.exit.thread113:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %rss_locks.i) #7
  br label %cleanup74

ice_add_rss_cfg.exit:                             ; preds = %if.end.i
  %call3.i = tail call fastcc i32 @ice_add_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %rss_hash.0.ph, i32 noundef 0, i8 noundef zeroext 2) #7
  tail call void @mutex_unlock(ptr noundef %rss_locks.i) #7
  %tobool71.not = icmp eq i32 %call3.i, 0
  br i1 %tobool71.not, label %ice_add_rss_cfg.exit.while.cond_crit_edge, label %ice_add_rss_cfg.exit.cleanup74_crit_edge

ice_add_rss_cfg.exit.cleanup74_crit_edge:         ; preds = %ice_add_rss_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup74

ice_add_rss_cfg.exit.while.cond_crit_edge:        ; preds = %ice_add_rss_cfg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cleanup74:                                        ; preds = %ice_add_rss_cfg.exit.cleanup74_crit_edge, %ice_add_rss_cfg.exit.thread113, %lor.lhs.false.i.cleanup74_crit_edge, %if.else56.cleanup74_crit_edge, %if.else38.cleanup74_crit_edge, %if.else29.cleanup74_crit_edge, %while.cond.cleanup74_crit_edge, %if.end.cleanup74_crit_edge, %lor.lhs.false.cleanup74_crit_edge, %entry.cleanup74_crit_edge
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup74_crit_edge ], [ -22, %entry.cleanup74_crit_edge ], [ -5, %if.end.cleanup74_crit_edge ], [ %call1.i, %ice_add_rss_cfg.exit.thread113 ], [ -22, %lor.lhs.false.i.cleanup74_crit_edge ], [ %call3.i, %ice_add_rss_cfg.exit.cleanup74_crit_edge ], [ -5, %if.else29.cleanup74_crit_edge ], [ -5, %if.else56.cleanup74_crit_edge ], [ -5, %if.else38.cleanup74_crit_edge ], [ 0, %while.cond.cleanup74_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ice_replay_rss_cfg(ptr noundef %hw, i16 noundef zeroext %vsi_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %rss_locks, i32 noundef 0) #7
  %rss_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71
  %0 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %r.039 = load ptr, ptr %rss_list_head, align 4
  %cmp.not40 = icmp eq ptr %r.039, %rss_list_head
  br i1 %cmp.not40, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv = zext i16 %vsi_handle to i32
  %div3.i = lshr i32 %conv, 5
  %and.i = and i32 %conv, 31
  %1 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.041 = phi ptr [ %r.039, %for.body.lr.ph ], [ %r.0, %for.inc.for.body_crit_edge ]
  %vsis = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.041, i32 0, i32 1
  %arrayidx.i = getelementptr i32, ptr %vsis, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = and i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %hashed_flds = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.041, i32 0, i32 2
  %5 = ptrtoint ptr %hashed_flds to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %hashed_flds, align 8
  %packet_hdr = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.041, i32 0, i32 3
  %7 = ptrtoint ptr %packet_hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %packet_hdr, align 8
  %call4 = tail call fastcc i32 @ice_add_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %6, i32 noundef %8, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then3.for.end_crit_edge

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end7:                                          ; preds = %if.then3
  %9 = ptrtoint ptr %hashed_flds to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hashed_flds, align 8
  %11 = ptrtoint ptr %packet_hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %packet_hdr, align 8
  %call10 = tail call fastcc i32 @ice_add_rss_cfg_sync(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i64 noundef %10, i32 noundef %12, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end7.for.inc_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %r.041 to i32
  call void @__asan_load4_noabort(i32 %13)
  %r.0 = load ptr, ptr %r.041, align 4
  %cmp.not = icmp eq ptr %r.0, %rss_list_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge, %if.then3.for.end_crit_edge, %if.end.for.end_crit_edge
  %status.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %call10, %if.end7.for.end_crit_edge ], [ %call4, %if.then3.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_locks) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.2, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ice_get_rss_cfg(ptr noundef %hw, i16 noundef zeroext %vsi_handle, i32 noundef %hdrs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hdrs)
  %cmp = icmp eq i32 %hdrs, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rss_locks = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 70
  tail call void @mutex_lock_nested(ptr noundef %rss_locks, i32 noundef 0) #7
  %rss_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71
  %0 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %r.026 = load ptr, ptr %rss_list_head, align 4
  %cmp2.not27 = icmp eq ptr %r.026, %rss_list_head
  br i1 %cmp2.not27, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %conv = zext i16 %vsi_handle to i32
  %div3.i = lshr i32 %conv, 5
  %and.i = and i32 %conv, 31
  %1 = shl nuw i32 1, %and.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.028 = phi ptr [ %r.026, %for.body.lr.ph ], [ %r.0, %for.inc.for.body_crit_edge ]
  %vsis = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.028, i32 0, i32 1
  %arrayidx.i = getelementptr i32, ptr %vsis, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = and i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %packet_hdr = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.028, i32 0, i32 3
  %5 = ptrtoint ptr %packet_hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %packet_hdr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %hdrs)
  %cmp4 = icmp eq i32 %6, %hdrs
  br i1 %cmp4, label %if.then6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %hashed_flds = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.028, i32 0, i32 2
  %7 = ptrtoint ptr %hashed_flds to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hashed_flds, align 8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %r.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %r.0 = load ptr, ptr %r.028, align 4
  %cmp2.not = icmp eq ptr %r.0, %rss_list_head
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6, %if.end.for.end_crit_edge
  %rss_hash.0 = phi i64 [ %8, %if.then6 ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_locks) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %rss_hash.0, %for.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_prof(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_andnot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rem_prof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_add_prof_id_flow(ptr noundef, i32 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ice_get_hw_vsi_num(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ice_rem_prof_id_flow(ptr noundef, i32 noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_flow_set_rss_seg_info(ptr nocapture noundef %segs, i64 noundef %hash_fields, i32 noundef %flow_hdr) unnamed_addr #0 align 64 {
entry:
  %hash_fields.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hash_fields.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %hash_fields, ptr %hash_fields.addr, align 8
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %hash_fields.addr, i32 noundef 42, i32 noundef 0) #7
  %conv142 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %conv142)
  %cmp43 = icmp ult i32 %conv142, 42
  br i1 %cmp43, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %match.i.i = getelementptr inbounds %struct.ice_flow_seg_info, ptr %segs, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv144 = phi i32 [ %conv142, %for.body.lr.ph ], [ %conv1, %for.body.for.body_crit_edge ]
  %sh_prom.i.i = zext i32 %conv144 to i64
  %shl.i.i = shl nuw nsw i64 1, %sh_prom.i.i
  %1 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %match.i.i, align 8
  %or.i.i = or i64 %2, %shl.i.i
  store i64 %or.i.i, ptr %match.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 0, i32 3, i32 %conv144
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx.i.i, align 8
  %src.i.i = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 0, i32 3, i32 %conv144, i32 1
  %4 = ptrtoint ptr %src.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %src.i.i, align 4
  %mask.i.i = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 0, i32 3, i32 %conv144, i32 1, i32 1
  %5 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %mask.i.i, align 2
  %last.i.i = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 0, i32 3, i32 %conv144, i32 1, i32 2
  %6 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %last.i.i, align 4
  %arrayidx10.i.i = getelementptr [42 x %struct.ice_flow_field_info], ptr @ice_flds_info, i32 0, i32 %conv144
  %7 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10.i.i, align 4
  %9 = ptrtoint ptr %segs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %segs, align 8
  %or11.i.i = or i32 %10, %8
  store i32 %or11.i.i, ptr %segs, align 8
  %add = add nuw nsw i32 %conv144, 1
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %hash_fields.addr, i32 noundef 42, i32 noundef %add) #7
  %conv1 = and i32 %call5, 255
  %cmp = icmp ult i32 %conv1, 42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %segs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %segs, align 8
  %or = or i32 %12, %flow_hdr
  store i32 %or, ptr %segs, align 8
  %and9 = and i32 %or, -545127888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.end
  %and11 = and i32 %or, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool13.not = icmp eq i32 %and11, 0
  %13 = call i32 @llvm.ctpop.i32(i32 %and11) #7, !range !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp1.i = icmp ult i32 %13, 2
  %or.cond = or i1 %tobool13.not, %cmp1.i
  br i1 %or.cond, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and19 = and i32 %or, 448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool21.not = icmp eq i32 %and19, 0
  %14 = call i32 @llvm.ctpop.i32(i32 %and19) #7, !range !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp1.i38 = icmp ult i32 %14, 2
  %or.cond41 = or i1 %tobool21.not, %cmp1.i38
  %spec.select = select i1 %or.cond41, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.end.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ice_flow_find_prof_conds(ptr noundef %hw, ptr nocapture noundef readonly %segs, i8 noundef zeroext %segs_cnt, i16 noundef zeroext %vsi_handle, i32 noundef %conds) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 62, i32 3
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #7
  %arrayidx1 = getelementptr %struct.ice_hw, ptr %hw, i32 0, i32 63, i32 3
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.010 = load ptr, ptr %arrayidx1, align 8
  %cmp.not11 = icmp eq ptr %p.010, %arrayidx1
  br i1 %cmp.not11, label %entry.for.end62_crit_edge, label %for.body.lr.ph

entry.for.end62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %conds, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and13 = and i32 %conds, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %conv18 = zext i16 %vsi_handle to i32
  %div3.i = lshr i32 %conv18, 5
  %and.i = and i32 %conv18, 31
  %1 = shl nuw i32 1, %and.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %segs_cnt)
  %cmp255.not = icmp eq i8 %segs_cnt, 0
  %and36 = and i32 %conds, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %wide.trip.count = zext i8 %segs_cnt to i32
  br label %for.body

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %for.body.lr.ph
  %p.014 = phi ptr [ %p.010, %for.body.lr.ph ], [ %p.0, %for.inc56.for.body_crit_edge ]
  %dir4 = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014, i32 0, i32 2
  %2 = ptrtoint ptr %dir4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5 = icmp ne i32 %3, 2
  %or.cond = and i1 %tobool.not, %cmp5
  br i1 %or.cond, label %for.body.for.inc56_crit_edge, label %land.lhs.true7

for.body.for.inc56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56

land.lhs.true7:                                   ; preds = %for.body
  %segs_cnt9 = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014, i32 0, i32 3
  %4 = ptrtoint ptr %segs_cnt9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segs_cnt9, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %segs_cnt)
  %cmp11 = icmp eq i8 %5, %segs_cnt
  br i1 %cmp11, label %if.then, label %land.lhs.true7.for.inc56_crit_edge

land.lhs.true7.for.inc56_crit_edge:               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56

if.then:                                          ; preds = %land.lhs.true7
  br i1 %tobool14.not, label %if.then.if.end_crit_edge, label %land.lhs.true15

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true15:                                  ; preds = %if.then
  %call = tail call zeroext i1 @ice_is_vsi_valid(ptr noundef %hw, i16 noundef zeroext %vsi_handle) #7
  br i1 %call, label %land.lhs.true17, label %land.lhs.true15.if.end_crit_edge

land.lhs.true15.if.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true17:                                  ; preds = %land.lhs.true15
  %vsis = getelementptr inbounds %struct.ice_flow_prof, ptr %p.014, i32 0, i32 7
  %arrayidx.i = getelementptr i32, ptr %vsis, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %8 = and i32 %7, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %land.lhs.true17.for.inc56_crit_edge, label %land.lhs.true17.if.end_crit_edge

land.lhs.true17.if.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true17.for.inc56_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56

if.end:                                           ; preds = %land.lhs.true17.if.end_crit_edge, %land.lhs.true15.if.end_crit_edge, %if.then.if.end_crit_edge
  br i1 %cmp255.not, label %if.end.cleanup_crit_edge, label %if.end.for.body27_crit_edge

if.end.for.body27_crit_edge:                      ; preds = %if.end
  br label %for.body27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %if.end.for.body27_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body27_crit_edge ], [ 0, %if.end.for.body27_crit_edge ]
  %arrayidx28 = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 %indvars.iv
  %9 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx28, align 8
  %arrayidx31 = getelementptr %struct.ice_flow_prof, ptr %p.014, i32 0, i32 6, i32 %indvars.iv
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx31, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp33.not = icmp eq i32 %10, %12
  br i1 %cmp33.not, label %lor.lhs.false35, label %for.body27.cleanup.loopexit_crit_edge

for.body27.cleanup.loopexit_crit_edge:            ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

lor.lhs.false35:                                  ; preds = %for.body27
  br i1 %tobool37.not, label %lor.lhs.false35.for.inc_crit_edge, label %land.lhs.true38

lor.lhs.false35.for.inc_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true38:                                  ; preds = %lor.lhs.false35
  %match = getelementptr %struct.ice_flow_seg_info, ptr %segs, i32 %indvars.iv, i32 1
  %13 = ptrtoint ptr %match to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %match, align 8
  %match44 = getelementptr %struct.ice_flow_prof, ptr %p.014, i32 0, i32 6, i32 %indvars.iv, i32 1
  %15 = ptrtoint ptr %match44 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %match44, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp45.not = icmp eq i64 %14, %16
  br i1 %cmp45.not, label %land.lhs.true38.for.inc_crit_edge, label %land.lhs.true38.cleanup.loopexit_crit_edge

land.lhs.true38.cleanup.loopexit_crit_edge:       ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.loopexit

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true38.for.inc_crit_edge, %lor.lhs.false35.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.for.end62_crit_edge, label %for.inc.for.body27_crit_edge

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.inc.for.end62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

cleanup.loopexit:                                 ; preds = %land.lhs.true38.cleanup.loopexit_crit_edge, %for.body27.cleanup.loopexit_crit_edge
  %17 = trunc i32 %indvars.iv to i8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.cleanup_crit_edge
  %i.0.lcssa = phi i8 [ 0, %if.end.cleanup_crit_edge ], [ %17, %cleanup.loopexit ]
  call void @__sanitizer_cov_trace_cmp1(i8 %i.0.lcssa, i8 %segs_cnt)
  %cmp51 = icmp eq i8 %i.0.lcssa, %segs_cnt
  br i1 %cmp51, label %cleanup.for.end62_crit_edge, label %cleanup.for.inc56_crit_edge

cleanup.for.inc56_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc56

cleanup.for.end62_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

for.inc56:                                        ; preds = %cleanup.for.inc56_crit_edge, %land.lhs.true17.for.inc56_crit_edge, %land.lhs.true7.for.inc56_crit_edge, %for.body.for.inc56_crit_edge
  %18 = ptrtoint ptr %p.014 to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.0 = load ptr, ptr %p.014, align 8
  %cmp.not = icmp eq ptr %p.0, %arrayidx1
  br i1 %cmp.not, label %for.inc56.for.end62_crit_edge, label %for.inc56.for.body_crit_edge

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc56.for.end62_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end62

for.end62:                                        ; preds = %for.inc56.for.end62_crit_edge, %cleanup.for.end62_crit_edge, %for.inc.for.end62_crit_edge, %entry.for.end62_crit_edge
  %prof.3 = phi ptr [ null, %entry.for.end62_crit_edge ], [ %p.014, %for.inc.for.end62_crit_edge ], [ %p.014, %cleanup.for.end62_crit_edge ], [ null, %for.inc56.for.end62_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %arrayidx) #7
  ret ptr %prof.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ice_rem_rss_list(ptr noundef readonly %hw, i16 noundef zeroext %vsi_handle, ptr nocapture noundef readonly %prof) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71
  %0 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rss_list_head, align 4
  %cmp.not48 = icmp eq ptr %1, %rss_list_head
  br i1 %cmp.not48, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %segs_cnt = getelementptr inbounds %struct.ice_flow_prof, ptr %prof, i32 0, i32 3
  %2 = ptrtoint ptr %segs_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %segs_cnt, align 4
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  %match = getelementptr %struct.ice_flow_prof, ptr %prof, i32 0, i32 6, i32 %sub, i32 1
  %4 = ptrtoint ptr %match to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %match, align 8
  %arrayidx = getelementptr %struct.ice_flow_prof, ptr %prof, i32 0, i32 6, i32 %sub
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.049 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.050, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %r.049 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.050 = load ptr, ptr %r.049, align 8
  %hashed_flds = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.049, i32 0, i32 2
  %7 = ptrtoint ptr %hashed_flds to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hashed_flds, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %5)
  %cmp8 = icmp eq i64 %8, %5
  br i1 %cmp8, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %packet_hdr = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.049, i32 0, i32 3
  %9 = ptrtoint ptr %packet_hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %packet_hdr, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp15 = icmp eq i32 %10, %12
  br i1 %cmp15, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %conv17 = zext i16 %vsi_handle to i32
  %vsis = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.049, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %conv17, ptr noundef %vsis) #7
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %vsis, i32 noundef 768) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 768
  br i1 %cmp4.i, label %if.then20, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r.049) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.list_del.exit_crit_edge

if.then20.list_del.exit_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %r.049, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %r.049 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r.049, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then20.list_del.exit_crit_edge
  %19 = ptrtoint ptr %r.049 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %r.049, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %r.049, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr24 = getelementptr i8, ptr %hw, i32 -2960
  %21 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr24, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %r.049) #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.050, %rss_list_head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %list_del.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ice_add_rss_list(ptr noundef %hw, i16 noundef zeroext %vsi_handle, ptr nocapture noundef readonly %prof) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_list_head = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71
  %0 = ptrtoint ptr %rss_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %r.062 = load ptr, ptr %rss_list_head, align 4
  %cmp.not63 = icmp eq ptr %r.062, %rss_list_head
  br i1 %cmp.not63, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %segs_cnt = getelementptr inbounds %struct.ice_flow_prof, ptr %prof, i32 0, i32 3
  %1 = ptrtoint ptr %segs_cnt to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %segs_cnt, align 4
  %conv = zext i8 %2 to i32
  %sub = add nsw i32 %conv, -1
  %match = getelementptr %struct.ice_flow_prof, ptr %prof, i32 0, i32 6, i32 %sub, i32 1
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %match, align 8
  %arrayidx = getelementptr %struct.ice_flow_prof, ptr %prof, i32 0, i32 6, i32 %sub
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.064 = phi ptr [ %r.062, %for.body.lr.ph ], [ %r.0, %for.inc.for.body_crit_edge ]
  %hashed_flds = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.064, i32 0, i32 2
  %5 = ptrtoint ptr %hashed_flds to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %hashed_flds, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %4)
  %cmp2 = icmp eq i64 %6, %4
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %packet_hdr = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.064, i32 0, i32 3
  %7 = ptrtoint ptr %packet_hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %packet_hdr, align 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp9 = icmp eq i32 %8, %10
  br i1 %cmp9, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i16 %vsi_handle to i32
  %vsis = getelementptr inbounds %struct.ice_rss_cfg, ptr %r.064, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv11, ptr noundef %vsis) #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %r.064 to i32
  call void @__asan_load4_noabort(i32 %11)
  %r.0 = load ptr, ptr %r.064, align 4
  %cmp.not = icmp eq ptr %r.0, %rss_list_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr19 = getelementptr i8, ptr %hw, i32 -2960
  %12 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr19, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end21

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %segs_cnt23 = getelementptr inbounds %struct.ice_flow_prof, ptr %prof, i32 0, i32 3
  %14 = ptrtoint ptr %segs_cnt23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %segs_cnt23, align 4
  %conv24 = zext i8 %15 to i32
  %sub25 = add nsw i32 %conv24, -1
  %match27 = getelementptr %struct.ice_flow_prof, ptr %prof, i32 0, i32 6, i32 %sub25, i32 1
  %16 = ptrtoint ptr %match27 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %match27, align 8
  %hashed_flds28 = getelementptr inbounds %struct.ice_rss_cfg, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %hashed_flds28 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %hashed_flds28, align 8
  %arrayidx33 = getelementptr %struct.ice_flow_prof, ptr %prof, i32 0, i32 6, i32 %sub25
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx33, align 8
  %packet_hdr35 = getelementptr inbounds %struct.ice_rss_cfg, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %packet_hdr35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %packet_hdr35, align 8
  %conv36 = zext i16 %vsi_handle to i32
  %vsis37 = getelementptr inbounds %struct.ice_rss_cfg, ptr %call.i, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv36, ptr noundef %vsis37) #7
  %prev.i = getelementptr inbounds %struct.ice_hw, ptr %hw, i32 0, i32 71, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %23, ptr noundef %rss_list_head) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rss_list_head, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call.i, ptr %23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end21.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 1829, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug617, !1, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 1855, i32 3}
!8 = !{ptr @ice_flow_rem_vsi_prof.__UNIQUE_ID_ddebug618, !7, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 1397, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ice_flow_add_prof_sync.__UNIQUE_ID_ddebug613, !10, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 1406, i32 3}
!15 = !{ptr @ice_flow_add_prof_sync.__UNIQUE_ID_ddebug614, !14, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!16 = !{ptr @ice_flow_add_prof_sync.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 1411, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ice_ptypes_mac_ofos, !20, !"ice_ptypes_mac_ofos", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 137, i32 18}
!21 = !{ptr @ice_ptypes_mac_il, !22, !"ice_ptypes_mac_il", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 375, i32 18}
!23 = !{ptr @ice_ptypes_macvlan_il, !24, !"ice_ptypes_macvlan_il", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 149, i32 18}
!25 = !{ptr @ice_ptypes_arp_of, !26, !"ice_ptypes_arp_of", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 253, i32 18}
!27 = !{ptr @ice_ptypes_ipv4_il, !28, !"ice_ptypes_ipv4_il", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 189, i32 18}
!29 = !{ptr @ice_ptypes_ipv4_ofos_all, !30, !"ice_ptypes_ipv4_ofos_all", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 177, i32 18}
!31 = !{ptr @ice_ptypes_ipv6_il, !32, !"ice_ptypes_ipv6_il", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 229, i32 18}
!33 = !{ptr @ice_ptypes_ipv6_ofos_all, !34, !"ice_ptypes_ipv6_ofos_all", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 217, i32 18}
!35 = !{ptr @ice_ptypes_ipv4_ofos_no_l4, !36, !"ice_ptypes_ipv4_ofos_no_l4", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 241, i32 18}
!37 = !{ptr @ice_ptypes_ipv4_il_no_l4, !38, !"ice_ptypes_ipv4_il_no_l4", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 265, i32 18}
!39 = !{ptr @ice_ptypes_ipv4_ofos, !40, !"ice_ptypes_ipv4_ofos", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 163, i32 18}
!41 = !{ptr @ice_ptypes_ipv6_ofos_no_l4, !42, !"ice_ptypes_ipv6_ofos_no_l4", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 277, i32 18}
!43 = !{ptr @ice_ptypes_ipv6_il_no_l4, !44, !"ice_ptypes_ipv6_il_no_l4", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 289, i32 18}
!45 = !{ptr @ice_ptypes_ipv6_ofos, !46, !"ice_ptypes_ipv6_ofos", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 203, i32 18}
!47 = !{ptr @ice_ptypes_mac_non_ip_ofos, !48, !"ice_ptypes_mac_non_ip_ofos", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 575, i32 18}
!49 = !{ptr @ice_ptypes_pppoe, !50, !"ice_ptypes_pppoe", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 492, i32 18}
!51 = !{ptr @ice_ptypes_udp_il, !52, !"ice_ptypes_udp_il", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 303, i32 18}
!53 = !{ptr @ice_ptypes_tcp_il, !54, !"ice_ptypes_tcp_il", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 315, i32 18}
!55 = !{ptr @ice_ptypes_sctp_il, !56, !"ice_ptypes_sctp_il", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 327, i32 18}
!57 = !{ptr @ice_ptypes_icmp_of, !58, !"ice_ptypes_icmp_of", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 339, i32 18}
!59 = !{ptr @ice_ptypes_icmp_il, !60, !"ice_ptypes_icmp_il", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 351, i32 18}
!61 = !{ptr @ice_ptypes_gre_of, !62, !"ice_ptypes_gre_of", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 363, i32 18}
!63 = !{ptr @ice_ptypes_gtpc, !64, !"ice_ptypes_gtpc", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 387, i32 18}
!65 = !{ptr @ice_ptypes_gtpc_tid, !66, !"ice_ptypes_gtpc_tid", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 399, i32 18}
!67 = !{ptr @ice_ptypes_gtpu, !68, !"ice_ptypes_gtpu", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 480, i32 18}
!69 = !{ptr @ice_attr_gtpu_down, !70, !"ice_attr_gtpu_down", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 434, i32 42}
!71 = !{ptr @ice_attr_gtpu_up, !72, !"ice_attr_gtpu_up", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 457, i32 42}
!73 = !{ptr @ice_attr_gtpu_eh, !74, !"ice_attr_gtpu_eh", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 411, i32 42}
!75 = !{ptr @ice_ptypes_l2tpv3, !76, !"ice_ptypes_l2tpv3", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 528, i32 18}
!77 = !{ptr @ice_ptypes_esp, !78, !"ice_ptypes_esp", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 540, i32 18}
!79 = !{ptr @ice_ptypes_ah, !80, !"ice_ptypes_ah", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 552, i32 18}
!81 = !{ptr @ice_ptypes_nat_t_esp, !82, !"ice_ptypes_nat_t_esp", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 564, i32 18}
!83 = !{ptr @ice_ptypes_pfcp_node, !84, !"ice_ptypes_pfcp_node", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 504, i32 18}
!85 = !{ptr @ice_ptypes_pfcp_session, !86, !"ice_ptypes_pfcp_session", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 516, i32 18}
!87 = !{ptr @ice_flds_info, !88, !"ice_flds_info", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 31, i32 28}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 1487, i32 4}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ice_flow_assoc_prof.__UNIQUE_ID_ddebug615, !90, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/ice/ice_flow.c", i32 1518, i32 4}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ice_flow_disassoc_prof.__UNIQUE_ID_ddebug616, !94, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i32 0, i32 4}
!107 = !{i32 0, i32 5}
!108 = !{!"auto-init"}
!109 = !{i64 2148808591, i64 2148808596, i64 2148808609, i64 2148808653, i64 2148808687, i64 2148808708}
!110 = !{i32 0, i32 3}
