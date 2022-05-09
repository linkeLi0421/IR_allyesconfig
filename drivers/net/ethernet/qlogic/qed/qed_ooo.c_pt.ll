; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_ooo.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_ooo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_ooo_info = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.qed_ooo_history, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.qed_ooo_history = type { ptr, i32, i32 }
%struct.ooo_opaque = type { i32, i8, i8, i8, i8 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.6, i32 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_ufp_info = type { i32, i32, i8 }
%struct.qed_dmae_info = type { %struct.mutex, i8, i32, ptr, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qed_qm_info = type { ptr, ptr, ptr, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8 }
%struct.qed_storm_stats = type { %struct.storm_stats, %struct.storm_stats, %struct.storm_stats, %struct.storm_stats }
%struct.storm_stats = type { i32, i32 }
%struct.dbg_tools_data = type { %struct.dbg_grc_data, %struct.dbg_bus_data, %struct.idle_chk_data, [40 x i8], [132 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.pretend_params, i32 }
%struct.dbg_grc_data = type { i8, i8, i16, [48 x i32] }
%struct.dbg_bus_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.dbg_bus_trigger_state_data], i8, i8, i8, i8, i32, %struct.dbg_bus_pci_buf_data, [132 x %struct.dbg_bus_block_data], [6 x %struct.dbg_bus_storm_data] }
%struct.dbg_bus_trigger_state_data = type { i8, i8, i8, i8 }
%struct.dbg_bus_pci_buf_data = type { %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr, i32 }
%struct.dbg_bus_mem_addr = type { i32, i32 }
%struct.dbg_bus_block_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dbg_bus_storm_data = type { i8, i8, i8, i8, i8, i8, %union.dbg_bus_storm_eid_params, i32 }
%union.dbg_bus_storm_eid_params = type { %struct.dbg_bus_storm_eid_range_params }
%struct.dbg_bus_storm_eid_range_params = type { i8, i8 }
%struct.idle_chk_data = type { i32, i8, i8, i16 }
%struct.pretend_params = type { i8, i8, i16 }
%struct.virt_mem_desc = type { ptr, i32 }
%struct.qed_db_recovery_info = type { %struct.list_head, %struct.spinlock, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_ooo_isle = type { %struct.list_head, %struct.list_head }
%struct.qed_ooo_archipelago = type { %struct.list_head }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.109, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.109 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.108, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.108 = type { ptr }
%struct.qed_ooo_buffer = type { %struct.list_head, ptr, i32, i32, i16, i16, i16, i8 }

@qed_ooo_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015[%s:%d(%s)]Failed to allocate qed_ooo_info: unknown personality\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_ooo_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/qlogic/qed/qed_ooo.c\00", [54 x i8] zeroinitializer }, align 32
@qed_ooo_alloc._entry_ptr = internal global ptr @qed_ooo_alloc._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_ooo_alloc._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\015[%s:%d(%s)]Failed to allocate qed_ooo_info: unknown amount of connections\0A\00", [51 x i8] zeroinitializer }, align 32
@qed_ooo_alloc._entry_ptr.6 = internal global ptr @qed_ooo_alloc._entry.4, section ".printk_index", align 4
@qed_ooo_delete_isles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Isle %d is not found(cid %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_ooo_delete_isles\00", [43 x i8] zeroinitializer }, align 32
@qed_ooo_delete_isles._entry_ptr = internal global ptr @qed_ooo_delete_isles._entry, section ".printk_index", align 4
@qed_ooo_delete_isles._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Isle %d is empty(cid %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_ooo_delete_isles._entry_ptr.11 = internal global ptr @qed_ooo_delete_isles._entry.9, section ".printk_index", align 4
@qed_ooo_add_new_isle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_ooo_add_new_isle\00", [43 x i8] zeroinitializer }, align 32
@qed_ooo_add_new_isle._entry_ptr = internal global ptr @qed_ooo_add_new_isle._entry, section ".printk_index", align 4
@qed_ooo_add_new_isle._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Connection %d is not found in OOO list\0A\00", [43 x i8] zeroinitializer }, align 32
@qed_ooo_add_new_isle._entry_ptr.15 = internal global ptr @qed_ooo_add_new_isle._entry.13, section ".printk_index", align 4
@qed_ooo_add_new_isle._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Free isle is not empty\0A\00", [59 x i8] zeroinitializer }, align 32
@qed_ooo_add_new_isle._entry_ptr.18 = internal global ptr @qed_ooo_add_new_isle._entry.16, section ".printk_index", align 4
@qed_ooo_add_new_isle._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]No more free isles\0A\00", [63 x i8] zeroinitializer }, align 32
@qed_ooo_add_new_isle._entry_ptr.21 = internal global ptr @qed_ooo_add_new_isle._entry.19, section ".printk_index", align 4
@qed_ooo_add_new_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.22, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qed_ooo_add_new_buffer\00", [41 x i8] zeroinitializer }, align 32
@qed_ooo_add_new_buffer._entry_ptr = internal global ptr @qed_ooo_add_new_buffer._entry, section ".printk_index", align 4
@qed_ooo_join_isles._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Right isle %d is not found(cid %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_ooo_join_isles\00", [45 x i8] zeroinitializer }, align 32
@qed_ooo_join_isles._entry_ptr = internal global ptr @qed_ooo_join_isles._entry, section ".printk_index", align 4
@qed_ooo_join_isles._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Left isle %d is not found(cid %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@qed_ooo_join_isles._entry_ptr.27 = internal global ptr @qed_ooo_join_isles._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_ooo_seek_isle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.28, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_ooo_seek_isle\00", [46 x i8] zeroinitializer }, align 32
@qed_ooo_seek_isle._entry_ptr = internal global ptr @qed_ooo_seek_isle._entry, section ".printk_index", align 4
@switch.table.qed_ooo_alloc = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 5, i32 5], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 94, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 105, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 335, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 341, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 366, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 374, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 385, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 389, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 422, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 442, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 454, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [45 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_ooo.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 50, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"switch.table.qed_ooo_alloc\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @qed_ooo_add_new_buffer._entry, ptr @qed_ooo_add_new_buffer._entry_ptr, ptr @qed_ooo_add_new_isle._entry, ptr @qed_ooo_add_new_isle._entry.13, ptr @qed_ooo_add_new_isle._entry.16, ptr @qed_ooo_add_new_isle._entry.19, ptr @qed_ooo_add_new_isle._entry_ptr, ptr @qed_ooo_add_new_isle._entry_ptr.15, ptr @qed_ooo_add_new_isle._entry_ptr.18, ptr @qed_ooo_add_new_isle._entry_ptr.21, ptr @qed_ooo_alloc._entry, ptr @qed_ooo_alloc._entry.4, ptr @qed_ooo_alloc._entry_ptr, ptr @qed_ooo_alloc._entry_ptr.6, ptr @qed_ooo_delete_isles._entry, ptr @qed_ooo_delete_isles._entry.9, ptr @qed_ooo_delete_isles._entry_ptr, ptr @qed_ooo_delete_isles._entry_ptr.11, ptr @qed_ooo_join_isles._entry, ptr @qed_ooo_join_isles._entry.25, ptr @qed_ooo_join_isles._entry_ptr, ptr @qed_ooo_join_isles._entry_ptr.27, ptr @qed_ooo_seek_isle._entry, ptr @qed_ooo_seek_isle._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @switch.table.qed_ooo_alloc], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_alloc._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_delete_isles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_delete_isles._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_add_new_isle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_add_new_isle._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_add_new_isle._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_add_new_isle._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_add_new_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_join_isles._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_join_isles._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ooo_seek_isle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qed_ooo_alloc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qed_ooo_save_history_entry(ptr nocapture noundef readnone %p_hwfn, ptr nocapture noundef %p_ooo_info, ptr nocapture noundef readonly %p_cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head_idx = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %head_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head_idx, align 4
  %num_of_cqes = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %num_of_cqes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_of_cqes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %head_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %head_idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ooo_history = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 5
  %5 = ptrtoint ptr %ooo_history to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ooo_history, align 4
  %7 = ptrtoint ptr %head_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %head_idx, align 4
  %arrayidx = getelementptr %struct.ooo_opaque, ptr %6, i32 %8
  %9 = ptrtoint ptr %p_cqe to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %p_cqe, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %arrayidx, align 4
  %12 = load i32, ptr %head_idx, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %head_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ooo_alloc(ptr noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 17
  %0 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_info, align 8
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp ult i8 %4, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !62

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.3, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 95, ptr noundef nonnull %spec.select) #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.qed_ooo_alloc, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call10 = tail call i32 @qed_cxt_get_proto_cid_count(ptr noundef %p_hwfn, i32 noundef %switch.load, ptr noundef null) #6
  %conv11 = trunc i32 %call10 to i16
  %conv12 = and i32 %call10, 65535
  %conv13 = add i32 %call10, 256
  %call14 = tail call i32 @qed_cxt_get_proto_cid_start(ptr noundef %p_hwfn, i32 noundef %switch.load) #6
  %conv15 = trunc i32 %call14 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11)
  %tobool16.not = icmp eq i16 %conv11, 0
  br i1 %tobool16.not, label %do.body18, label %if.end47

do.body18:                                        ; preds = %switch.lookup
  %dp_level19 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp21 = icmp ult i8 %8, 3
  br i1 %cmp21, label %do.end32, label %do.body18.cleanup_crit_edge, !prof !62

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end32:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %name34 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool36.not = icmp eq ptr %name34, null
  %spec.select139 = select i1 %tobool36.not, ptr @.str.3, ptr %name34
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 106, ptr noundef nonnull %spec.select139) #9
  br label %cleanup

if.end47:                                         ; preds = %switch.lookup
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 60) #10
  %tobool49.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end51

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %cid_base52 = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %cid_base52 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv15, ptr %cid_base52, align 2
  %max_num_archipelagos53 = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %max_num_archipelagos53 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv11, ptr %max_num_archipelagos53, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %ready_buffers_list = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ready_buffers_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %ready_buffers_list, ptr %ready_buffers_list, align 8
  %prev.i140 = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i140 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ready_buffers_list, ptr %prev.i140, align 4
  %free_isles_list = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %free_isles_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %free_isles_list, ptr %free_isles_list, align 8
  %prev.i141 = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i141 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %free_isles_list, ptr %prev.i141, align 4
  %conv54 = and i32 %conv13, 65535
  %18 = shl nuw nsw i32 %conv54, 4
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #11
  %p_isles_mem = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %p_isles_mem to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %p_isles_mem, align 4
  %tobool57.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool57.not, label %if.end51.no_isles_mem_crit_edge, label %for.cond.preheader

if.end51.no_isles_mem_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_isles_mem

for.cond.preheader:                               ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv54)
  %cmp61200.not = icmp eq i32 %conv54, 0
  br i1 %cmp61200.not, label %for.cond.preheader.if.end7.i.i175_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end7.i.i175_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i175

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0201 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %p_isles_mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_isles_mem, align 4
  %buffers_list = getelementptr %struct.qed_ooo_isle, ptr %21, i32 %i.0201, i32 1
  %22 = ptrtoint ptr %buffers_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %buffers_list, ptr %buffers_list, align 4
  %prev.i142 = getelementptr %struct.qed_ooo_isle, ptr %21, i32 %i.0201, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i142 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buffers_list, ptr %prev.i142, align 4
  %24 = load ptr, ptr %p_isles_mem, align 4
  %arrayidx65 = getelementptr %struct.qed_ooo_isle, ptr %24, i32 %i.0201
  %25 = ptrtoint ptr %prev.i141 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i141, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx65, ptr noundef %26, ptr noundef %free_isles_list) #6
  br i1 %call.i.i, label %if.end.i.i144, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i144:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i141 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx65, ptr %prev.i141, align 4
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %free_isles_list, ptr %arrayidx65, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx65, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx65, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i144, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0201, 1
  %exitcond.not = icmp eq i32 %inc, %conv54
  br i1 %exitcond.not, label %list_add_tail.exit.if.end7.i.i175_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_add_tail.exit.if.end7.i.i175_crit_edge:      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i175

if.end7.i.i175:                                   ; preds = %list_add_tail.exit.if.end7.i.i175_crit_edge, %for.cond.preheader.if.end7.i.i175_crit_edge
  %31 = shl nuw nsw i32 %conv12, 3
  %call8.i.i174 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #11
  %p_archipelagos_mem = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %p_archipelagos_mem to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i174, ptr %p_archipelagos_mem, align 8
  %tobool70.not = icmp eq ptr %call8.i.i174, null
  br i1 %tobool70.not, label %if.end7.i.i175.no_archipelagos_mem_crit_edge, label %for.cond73.preheader

if.end7.i.i175.no_archipelagos_mem_crit_edge:     ; preds = %if.end7.i.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_archipelagos_mem

for.cond73.preheader:                             ; preds = %if.end7.i.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12)
  %cmp75202.not = icmp eq i32 %conv12, 0
  br i1 %cmp75202.not, label %for.cond73.preheader.for.end82_crit_edge, label %for.cond73.preheader.for.body77_crit_edge

for.cond73.preheader.for.body77_crit_edge:        ; preds = %for.cond73.preheader
  br label %for.body77

for.cond73.preheader.for.end82_crit_edge:         ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end82

for.body77:                                       ; preds = %for.body77.for.body77_crit_edge, %for.cond73.preheader.for.body77_crit_edge
  %i.1203 = phi i32 [ %inc81, %for.body77.for.body77_crit_edge ], [ 0, %for.cond73.preheader.for.body77_crit_edge ]
  %33 = ptrtoint ptr %p_archipelagos_mem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_archipelagos_mem, align 8
  %arrayidx79 = getelementptr %struct.qed_ooo_archipelago, ptr %34, i32 %i.1203
  %35 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx79, ptr %arrayidx79, align 4
  %prev.i178 = getelementptr inbounds %struct.list_head, ptr %arrayidx79, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i178 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx79, ptr %prev.i178, align 4
  %inc81 = add nuw nsw i32 %i.1203, 1
  %exitcond204.not = icmp eq i32 %inc81, %conv12
  br i1 %exitcond204.not, label %for.body77.for.end82_crit_edge, label %for.body77.for.body77_crit_edge

for.body77.for.body77_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77

for.body77.for.end82_crit_edge:                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end82

for.end82:                                        ; preds = %for.body77.for.end82_crit_edge, %for.cond73.preheader.for.end82_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i191 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 4096) #10
  %ooo_history = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %ooo_history to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i191, ptr %ooo_history, align 8
  %tobool86.not = icmp eq ptr %call7.i.i.i191, null
  br i1 %tobool86.not, label %no_history_mem, label %if.end88

if.end88:                                         ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #8
  %num_of_cqes = getelementptr inbounds %struct.qed_ooo_info, ptr %call7.i.i, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %num_of_cqes to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 512, ptr %num_of_cqes, align 8
  %p_ooo_info90 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  %40 = ptrtoint ptr %p_ooo_info90 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %p_ooo_info90, align 4
  br label %cleanup

no_history_mem:                                   ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %p_archipelagos_mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_archipelagos_mem, align 8
  tail call void @kfree(ptr noundef %42) #6
  br label %no_archipelagos_mem

no_archipelagos_mem:                              ; preds = %no_history_mem, %if.end7.i.i175.no_archipelagos_mem_crit_edge
  %43 = ptrtoint ptr %p_isles_mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_isles_mem, align 4
  tail call void @kfree(ptr noundef %44) #6
  br label %no_isles_mem

no_isles_mem:                                     ; preds = %no_archipelagos_mem, %if.end51.no_isles_mem_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %no_isles_mem, %if.end88, %if.end47.cleanup_crit_edge, %do.end32, %do.body18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88 ], [ -12, %no_isles_mem ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end32 ], [ -22, %do.body18.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_proto_cid_count(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_cxt_get_proto_cid_start(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_release_connection_isles(ptr nocapture noundef readnone %p_hwfn, ptr noundef %p_ooo_info, i32 noundef %cid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %cid, 65535
  %cid_base.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 10
  %0 = ptrtoint ptr %cid_base.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cid_base.i, align 2
  %conv.i = zext i16 %1 to i32
  %sub.i = sub nsw i32 %and.i, %conv.i
  %max_num_archipelagos.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 9
  %2 = ptrtoint ptr %max_num_archipelagos.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_num_archipelagos.i, align 4
  %conv1.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv1.i)
  %cmp.not.i = icmp ult i32 %sub.i, %conv1.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge, !prof !63

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %p_archipelagos_mem.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %4 = ptrtoint ptr %p_archipelagos_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_archipelagos_mem.i, align 4
  %arrayidx.i = getelementptr %struct.qed_ooo_archipelago, ptr %5, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %arrayidx.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  %or.cond = or i1 %cmp.i.not.i, %tobool.not
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %while.cond.preheader

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not46 = icmp eq ptr %9, %arrayidx.i
  br i1 %cmp.i.not46, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %p_ooo_info, i32 0, i32 1
  %free_isles_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2
  %prev.i37 = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %10 = phi ptr [ %9, %while.body.lr.ph ], [ %43, %list_add_tail.exit.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %buffers_list = getelementptr inbounds %struct.qed_ooo_isle, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i3143 = icmp eq ptr %20, %buffers_list
  %tobool14.not44 = icmp eq ptr %20, null
  %or.cond4245 = or i1 %cmp.i3143, %tobool14.not44
  br i1 %or.cond4245, label %list_del.exit.while.end_crit_edge, label %list_del.exit.if.end16_crit_edge

list_del.exit.if.end16_crit_edge:                 ; preds = %list_del.exit
  br label %if.end16

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end16:                                         ; preds = %list_move_tail.exit.if.end16_crit_edge, %list_del.exit.if.end16_crit_edge
  %21 = phi ptr [ %35, %list_move_tail.exit.if.end16_crit_edge ], [ %20, %list_del.exit.if.end16_crit_edge ]
  %call.i.i33 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %21) #6
  br i1 %call.i.i33, label %if.end.i.i36, label %if.end16.__list_del_entry.exit.i_crit_edge

if.end16.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i36:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i34, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i35, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i36, %if.end16.__list_del_entry.exit.i_crit_edge
  %28 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %21, ptr noundef %29, ptr noundef %p_ooo_info) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %21, ptr %prev.i2.i, align 4
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %p_ooo_info, ptr %21, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %21, ptr %29, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %34 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i31 = icmp eq ptr %35, %buffers_list
  %tobool14.not = icmp eq ptr %35, null
  %or.cond42 = or i1 %cmp.i31, %tobool14.not
  br i1 %or.cond42, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.if.end16_crit_edge

list_move_tail.exit.if.end16_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  %36 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i37, align 4
  %call.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %37, ptr noundef %free_isles_list) #6
  br i1 %call.i.i38, label %if.end.i.i39, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i39:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %10, ptr %prev.i37, align 4
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %free_isles_list, ptr %10, align 4
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %10, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i39, %while.end.list_add_tail.exit_crit_edge
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not = icmp eq ptr %43, %arrayidx.i
  br i1 %cmp.i.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_release_all_isles(ptr nocapture readnone %p_hwfn, ptr noundef %p_ooo_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_num_archipelagos = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 9
  %0 = ptrtoint ptr %max_num_archipelagos to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_num_archipelagos, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp54.not = icmp eq i16 %1, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %p_archipelagos_mem = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %p_ooo_info, i32 0, i32 1
  %free_isles_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2
  %prev.i42 = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %p_archipelagos_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_archipelagos_mem, align 4
  %arrayidx = getelementptr %struct.qed_ooo_archipelago, ptr %3, i32 %i.055
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not52 = icmp eq ptr %5, %arrayidx
  br i1 %cmp.i.not52, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %for.body.while.body_crit_edge
  %6 = phi ptr [ %39, %list_add_tail.exit.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %buffers_list = getelementptr inbounds %struct.qed_ooo_isle, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i3649 = icmp eq ptr %16, %buffers_list
  %tobool13.not50 = icmp eq ptr %16, null
  %or.cond51 = or i1 %cmp.i3649, %tobool13.not50
  br i1 %or.cond51, label %list_del.exit.while.end_crit_edge, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  br label %if.end

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %list_move_tail.exit.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  %17 = phi ptr [ %31, %list_move_tail.exit.if.end_crit_edge ], [ %16, %list_del.exit.if.end_crit_edge ]
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %17) #6
  br i1 %call.i.i38, label %if.end.i.i41, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i41:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i39, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %prev1.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i40, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i41, %if.end.__list_del_entry.exit.i_crit_edge
  %24 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %17, ptr noundef %25, ptr noundef %p_ooo_info) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %17, ptr %prev.i2.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %p_ooo_info, ptr %17, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %17, ptr %25, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %30 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i36 = icmp eq ptr %31, %buffers_list
  %tobool13.not = icmp eq ptr %31, null
  %or.cond = or i1 %cmp.i36, %tobool13.not
  br i1 %or.cond, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.if.end_crit_edge

list_move_tail.exit.if.end_crit_edge:             ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  %32 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i42, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %33, ptr noundef %free_isles_list) #6
  br i1 %call.i.i43, label %if.end.i.i44, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i44:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %6, ptr %prev.i42, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %free_isles_list, ptr %6, align 4
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %6, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i44, %while.end.list_add_tail.exit_crit_edge
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %39, %arrayidx
  br i1 %cmp.i.not, label %list_add_tail.exit.for.inc_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

list_add_tail.exit.for.inc_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %40 = ptrtoint ptr %max_num_archipelagos to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_num_archipelagos, align 4
  %conv = zext i16 %41 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ready_buffers_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 1
  %42 = ptrtoint ptr %ready_buffers_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %ready_buffers_list, align 4
  %cmp.i45.not = icmp eq ptr %43, %ready_buffers_list
  br i1 %cmp.i45.not, label %for.end.if.end22_crit_edge, label %if.then19

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %for.end
  %44 = ptrtoint ptr %ready_buffers_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %ready_buffers_list, align 4
  %cmp.i.not.i = icmp eq ptr %45, %ready_buffers_list
  br i1 %cmp.i.not.i, label %if.then19.if.end22_crit_edge, label %if.then.i

if.then19.if.end22_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i47 = getelementptr inbounds %struct.list_head, ptr %p_ooo_info, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i47, align 4
  %prev2.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i48 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i48, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %47, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %p_ooo_info, ptr %49, align 4
  store ptr %49, ptr %prev.i47, align 4
  %53 = ptrtoint ptr %ready_buffers_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %ready_buffers_list, ptr %ready_buffers_list, align 4
  store ptr %ready_buffers_list, ptr %prev2.i.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.then19.if.end22_crit_edge, %for.end.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_setup(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ooo_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  %0 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ooo_info, align 4
  tail call void @qed_ooo_release_all_isles(ptr undef, ptr noundef %1)
  %2 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_ooo_info, align 4
  %ooo_history = getelementptr inbounds %struct.qed_ooo_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ooo_history to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ooo_history, align 4
  %num_of_cqes = getelementptr inbounds %struct.qed_ooo_info, ptr %3, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %num_of_cqes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_of_cqes, align 4
  %mul = shl i32 %7, 3
  %8 = call ptr @memset(ptr %5, i32 0, i32 %mul)
  %9 = load ptr, ptr %p_ooo_info, align 4
  %head_idx = getelementptr inbounds %struct.qed_ooo_info, ptr %9, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %head_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %head_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ooo_info1 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 31
  %0 = ptrtoint ptr %p_ooo_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ooo_info1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @qed_ooo_release_all_isles(ptr undef, ptr noundef nonnull %1)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %cmp.i25 = icmp eq ptr %3, %1
  %tobool4.not26 = icmp eq ptr %3, null
  %or.cond27 = or i1 %cmp.i25, %tobool4.not26
  br i1 %or.cond27, label %if.end.while.end_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  br label %if.end6

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end6:                                          ; preds = %list_del.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %4 = phi ptr [ %24, %list_del.exit.if.end6_crit_edge ], [ %3, %if.end.if.end6_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %4) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del.exit_crit_edge

if.end6.list_del.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end6.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %14, i32 0, i32 50
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %rx_buffer_size = getelementptr inbounds %struct.qed_ooo_buffer, ptr %4, i32 0, i32 3
  %17 = ptrtoint ptr %rx_buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_buffer_size, align 4
  %rx_buffer_virt_addr = getelementptr inbounds %struct.qed_ooo_buffer, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %rx_buffer_virt_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buffer_virt_addr, align 4
  %rx_buffer_phys_addr = getelementptr inbounds %struct.qed_ooo_buffer, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %rx_buffer_phys_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buffer_phys_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #6
  tail call void @kfree(ptr noundef nonnull %4) #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %24, %1
  %tobool4.not = icmp eq ptr %24, null
  %or.cond = or i1 %cmp.i, %tobool4.not
  br i1 %or.cond, label %list_del.exit.while.end_crit_edge, label %list_del.exit.if.end6_crit_edge

list_del.exit.if.end6_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %p_isles_mem = getelementptr inbounds %struct.qed_ooo_info, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %p_isles_mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_isles_mem, align 4
  tail call void @kfree(ptr noundef %26) #6
  %p_archipelagos_mem = getelementptr inbounds %struct.qed_ooo_info, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %p_archipelagos_mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_archipelagos_mem, align 4
  tail call void @kfree(ptr noundef %28) #6
  %ooo_history = getelementptr inbounds %struct.qed_ooo_info, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %ooo_history to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ooo_history, align 4
  tail call void @kfree(ptr noundef %30) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  %31 = ptrtoint ptr %p_ooo_info1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %p_ooo_info1, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_put_free_buffer(ptr nocapture noundef readnone %p_hwfn, ptr noundef %p_ooo_info, ptr noundef %p_buffer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p_ooo_info, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_buffer, ptr noundef %1, ptr noundef %p_ooo_info) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %p_buffer, ptr %prev.i, align 4
  %3 = ptrtoint ptr %p_buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %p_ooo_info, ptr %p_buffer, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %p_buffer, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %p_buffer, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qed_ooo_get_free_buffer(ptr nocapture noundef readnone %p_hwfn, ptr noundef %p_ooo_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_ooo_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %p_ooo_info, align 4
  %cmp.i.not = icmp eq ptr %1, %p_ooo_info
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %p_buffer.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %1, %list_del.exit ]
  ret ptr %p_buffer.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_put_ready_buffer(ptr nocapture noundef readnone %p_hwfn, ptr noundef %p_ooo_info, ptr noundef %p_buffer, i8 noundef zeroext %on_tail) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %on_tail)
  %tobool.not = icmp eq i8 %on_tail, 0
  %ready_buffers_list2 = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_buffer, ptr noundef %1, ptr noundef %ready_buffers_list2) #6
  br i1 %call.i.i, label %if.then.if.end.sink.split_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %ready_buffers_list2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ready_buffers_list2, align 4
  %call.i.i5 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_buffer, ptr noundef %ready_buffers_list2, ptr noundef %3) #6
  br i1 %call.i.i5, label %if.end.i.i7, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i7:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i.i7, %if.then.if.end.sink.split_crit_edge
  %prev1.i.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i7 ], [ %prev.i, %if.then.if.end.sink.split_crit_edge ]
  %.sink = phi ptr [ %3, %if.end.i.i7 ], [ %ready_buffers_list2, %if.then.if.end.sink.split_crit_edge ]
  %ready_buffers_list2.sink8 = phi ptr [ %ready_buffers_list2, %if.end.i.i7 ], [ %1, %if.then.if.end.sink.split_crit_edge ]
  %4 = ptrtoint ptr %prev1.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %p_buffer, ptr %prev1.i.i.sink, align 4
  %5 = ptrtoint ptr %p_buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.sink, ptr %p_buffer, align 4
  %prev3.i.i6 = getelementptr inbounds %struct.list_head, ptr %p_buffer, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ready_buffers_list2.sink8, ptr %prev3.i.i6, align 4
  %7 = ptrtoint ptr %ready_buffers_list2.sink8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %p_buffer, ptr %ready_buffers_list2.sink8, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qed_ooo_get_ready_buffer(ptr nocapture noundef readnone %p_hwfn, ptr noundef %p_ooo_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ready_buffers_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 1
  %0 = ptrtoint ptr %ready_buffers_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ready_buffers_list, align 4
  %cmp.i.not = icmp eq ptr %1, %ready_buffers_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %p_buffer.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %1, %list_del.exit ]
  ret ptr %p_buffer.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_delete_isles(ptr noundef %p_hwfn, ptr noundef %p_ooo_info, i32 noundef %cid, i8 noundef zeroext %drop_isle, i8 noundef zeroext %drop_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %drop_size)
  %cmp85.not = icmp eq i8 %drop_size, 0
  br i1 %cmp85.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %and.i.i = and i32 %cid, 65535
  %cid_base.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 10
  %max_num_archipelagos.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 9
  %p_archipelagos_mem.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p_ooo_info, i32 0, i32 1
  %dp_level22 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %name37 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool39.not = icmp eq ptr %name37, null
  %spec.select73 = select i1 %tobool39.not, ptr @.str.3, ptr %name37
  %conv46 = zext i8 %drop_isle to i32
  %cur_isles_number = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 6
  %free_isles_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %isle_idx.086 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %list_add.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %cid_base.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cid_base.i.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %2 = ptrtoint ptr %max_num_archipelagos.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_num_archipelagos.i.i, align 4
  %conv1.i.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv1.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %conv1.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.do.body.i_crit_edge, !prof !63

for.body.do.body.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.i:                                       ; preds = %for.body
  %4 = ptrtoint ptr %p_archipelagos_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_archipelagos_mem.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.qed_ooo_archipelago, ptr %5, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %arrayidx.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = or i1 %cmp.i.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end.i.i.for.body.i_crit_edge, !prof !64

if.end.i.i.for.body.i_crit_edge:                  ; preds = %if.end.i.i
  br label %for.body.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %for.body.do.body.i_crit_edge
  %8 = ptrtoint ptr %dp_level22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level22, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp ult i8 %9, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.cleanup_crit_edge, !prof !62

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.28, i32 noundef 51, ptr noundef nonnull %name37, i32 noundef %cid) #9
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i8 %the_num_of_isle.052.i, 1
  %10 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p_isle.0.i = load ptr, ptr %p_isle.053.i, align 4
  %cmp22.not.i = icmp eq ptr %p_isle.0.i, %arrayidx.i.i
  br i1 %cmp22.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.i.for.body.i_crit_edge
  %p_isle.053.i = phi ptr [ %p_isle.0.i, %for.cond.i.for.body.i_crit_edge ], [ %7, %if.end.i.i.for.body.i_crit_edge ]
  %the_num_of_isle.052.i = phi i8 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %if.end.i.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %the_num_of_isle.052.i, i8 %drop_isle)
  %cmp28.i = icmp eq i8 %the_num_of_isle.052.i, %drop_isle
  br i1 %cmp28.i, label %qed_ooo_seek_isle.exit, label %for.cond.i

qed_ooo_seek_isle.exit:                           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p_isle.053.i, null
  br i1 %tobool.not, label %qed_ooo_seek_isle.exit.do.body_crit_edge, label %if.end17

qed_ooo_seek_isle.exit.do.body_crit_edge:         ; preds = %qed_ooo_seek_isle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %qed_ooo_seek_isle.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %do.end.i
  %11 = ptrtoint ptr %dp_level22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %dp_level22, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp4 = icmp ult i8 %.pr, 3
  br i1 %cmp4, label %do.end, label %do.body.cleanup_crit_edge, !prof !62

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 337, ptr noundef nonnull %spec.select73, i32 noundef %conv46, i32 noundef %cid) #9
  br label %cleanup

if.end17:                                         ; preds = %qed_ooo_seek_isle.exit
  %buffers_list = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1
  %12 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i74.not = icmp eq ptr %13, %buffers_list
  br i1 %cmp.i74.not, label %do.body21, label %if.else

do.body21:                                        ; preds = %if.end17
  %14 = ptrtoint ptr %dp_level22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level22, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp24 = icmp ult i8 %15, 3
  br i1 %cmp24, label %do.end35, label %do.body21.if.end52_crit_edge, !prof !62

do.body21.if.end52_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end35:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 342, ptr noundef nonnull %spec.select73, i32 noundef %conv46, i32 noundef %cid) #9
  br label %if.end52

if.else:                                          ; preds = %if.end17
  %16 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i.not.i = icmp eq ptr %17, %buffers_list
  br i1 %cmp.i.not.i, label %if.else.if.end52_crit_edge, label %if.then.i

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %17, ptr %19, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %p_ooo_info, ptr %21, align 4
  store ptr %21, ptr %prev.i, align 4
  %25 = ptrtoint ptr %buffers_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %buffers_list, ptr %buffers_list, align 4
  store ptr %buffers_list, ptr %prev2.i.i, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then.i, %if.else.if.end52_crit_edge, %do.end35, %do.body21.if.end52_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %p_isle.053.i) #6
  br i1 %call.i.i, label %if.end.i.i75, label %if.end52.list_del.exit_crit_edge

if.end52.list_del.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i75:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p_isle.053.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p_isle.053.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i75, %if.end52.list_del.exit_crit_edge
  %32 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %p_isle.053.i, align 4
  %prev.i76 = getelementptr inbounds %struct.list_head, ptr %p_isle.053.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i76, align 4
  %34 = ptrtoint ptr %cur_isles_number to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_isles_number, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %cur_isles_number, align 4
  %36 = ptrtoint ptr %free_isles_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_isles_list, align 4
  %call.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %p_isle.053.i, ptr noundef %free_isles_list, ptr noundef %37) #6
  br i1 %call.i.i77, label %if.end.i.i79, label %list_del.exit.list_add.exit_crit_edge

list_del.exit.list_add.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i79:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %p_isle.053.i, ptr %prev1.i.i, align 4
  %39 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %p_isle.053.i, align 4
  %40 = ptrtoint ptr %prev.i76 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %free_isles_list, ptr %prev.i76, align 4
  %41 = ptrtoint ptr %free_isles_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %p_isle.053.i, ptr %free_isles_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i79, %list_del.exit.list_add.exit_crit_edge
  %inc = add nuw i8 %isle_idx.086, 1
  %cmp = icmp ult i8 %inc, %drop_size
  br i1 %cmp, label %list_add.exit.for.body_crit_edge, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %list_add.exit.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_add_new_isle(ptr noundef %p_hwfn, ptr noundef %p_ooo_info, i32 noundef %cid, i8 noundef zeroext %ooo_isle, ptr noundef %p_buffer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ooo_isle)
  %cmp = icmp ugt i8 %ooo_isle, 1
  br i1 %cmp, label %if.then, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = and i32 %cid, 65535
  br label %if.end28

if.then:                                          ; preds = %entry
  %conv = zext i8 %ooo_isle to i32
  %sub = add nsw i32 %conv, -1
  %conv3 = trunc i32 %sub to i8
  %and.i.i = and i32 %cid, 65535
  %cid_base.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 10
  %0 = ptrtoint ptr %cid_base.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cid_base.i.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %max_num_archipelagos.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 9
  %2 = ptrtoint ptr %max_num_archipelagos.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_num_archipelagos.i.i, align 4
  %conv1.i.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv1.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %conv1.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.do.body.i_crit_edge, !prof !63

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.i:                                       ; preds = %if.then
  %p_archipelagos_mem.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %4 = ptrtoint ptr %p_archipelagos_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_archipelagos_mem.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.qed_ooo_archipelago, ptr %5, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %arrayidx.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = or i1 %cmp.i.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end.i.i.for.body.i_crit_edge, !prof !64

if.end.i.i.for.body.i_crit_edge:                  ; preds = %if.end.i.i
  br label %for.body.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp ult i8 %9, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.body_crit_edge, !prof !62

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.28, i32 noundef 51, ptr noundef nonnull %name.i, i32 noundef %cid) #9
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i8 %the_num_of_isle.052.i, 1
  %10 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p_isle.0.i = load ptr, ptr %p_isle.053.i, align 4
  %cmp22.not.i = icmp eq ptr %p_isle.0.i, %arrayidx.i.i
  br i1 %cmp22.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.i.for.body.i_crit_edge
  %p_isle.053.i = phi ptr [ %p_isle.0.i, %for.cond.i.for.body.i_crit_edge ], [ %7, %if.end.i.i.for.body.i_crit_edge ]
  %the_num_of_isle.052.i = phi i8 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %if.end.i.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %the_num_of_isle.052.i, i8 %conv3)
  %cmp28.i = icmp eq i8 %the_num_of_isle.052.i, %conv3
  br i1 %cmp28.i, label %qed_ooo_seek_isle.exit, label %for.cond.i

qed_ooo_seek_isle.exit:                           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p_isle.053.i, null
  br i1 %tobool.not, label %qed_ooo_seek_isle.exit.do.body_crit_edge, label %qed_ooo_seek_isle.exit.if.end28_crit_edge, !prof !62

qed_ooo_seek_isle.exit.if.end28_crit_edge:        ; preds = %qed_ooo_seek_isle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

qed_ooo_seek_isle.exit.do.body_crit_edge:         ; preds = %qed_ooo_seek_isle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %qed_ooo_seek_isle.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %do.end.i, %do.body.i.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp9 = icmp ult i8 %12, 3
  br i1 %cmp9, label %do.end, label %do.body.cleanup_crit_edge, !prof !62

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool19.not, ptr @.str.3, ptr %name
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i32 noundef 368, ptr noundef nonnull %spec.select, i32 noundef %sub, i32 noundef %cid) #9
  br label %cleanup

if.end28:                                         ; preds = %qed_ooo_seek_isle.exit.if.end28_crit_edge, %entry.if.end28_crit_edge
  %and.i.pre-phi = phi i32 [ %.pre, %entry.if.end28_crit_edge ], [ %and.i.i, %qed_ooo_seek_isle.exit.if.end28_crit_edge ]
  %p_prev_isle.0 = phi ptr [ null, %entry.if.end28_crit_edge ], [ %p_isle.053.i, %qed_ooo_seek_isle.exit.if.end28_crit_edge ]
  %cid_base.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 10
  %13 = ptrtoint ptr %cid_base.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cid_base.i, align 2
  %conv.i = zext i16 %14 to i32
  %sub.i = sub nsw i32 %and.i.pre-phi, %conv.i
  %max_num_archipelagos.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 9
  %15 = ptrtoint ptr %max_num_archipelagos.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_num_archipelagos.i, align 4
  %conv1.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv1.i)
  %cmp.not.i = icmp ult i32 %sub.i, %conv1.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end28.qed_ooo_seek_archipelago.exit_crit_edge, !prof !63

if.end28.qed_ooo_seek_archipelago.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_ooo_seek_archipelago.exit

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %p_archipelagos_mem.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %17 = ptrtoint ptr %p_archipelagos_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_archipelagos_mem.i, align 4
  %arrayidx.i = getelementptr %struct.qed_ooo_archipelago, ptr %18, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %arrayidx.i
  %arrayidx..i = select i1 %cmp.i.not.i, ptr null, ptr %arrayidx.i, !prof !62
  br label %qed_ooo_seek_archipelago.exit

qed_ooo_seek_archipelago.exit:                    ; preds = %if.end.i, %if.end28.qed_ooo_seek_archipelago.exit_crit_edge
  %retval.0.i216 = phi ptr [ null, %if.end28.qed_ooo_seek_archipelago.exit_crit_edge ], [ %arrayidx..i, %if.end.i ]
  %tobool30.not = icmp eq ptr %retval.0.i216, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ooo_isle)
  %cmp32 = icmp ne i8 %ooo_isle, 1
  %spec.select212 = and i1 %cmp32, %tobool30.not
  br i1 %spec.select212, label %do.body41, label %if.end70, !prof !62

do.body41:                                        ; preds = %qed_ooo_seek_archipelago.exit
  %dp_level42 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %21 = ptrtoint ptr %dp_level42 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dp_level42, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp44 = icmp ult i8 %22, 3
  br i1 %cmp44, label %do.end55, label %do.body41.cleanup_crit_edge, !prof !62

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end55:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %name57 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool59.not = icmp eq ptr %name57, null
  %spec.select213 = select i1 %tobool59.not, ptr @.str.3, ptr %name57
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 375, ptr noundef nonnull %spec.select213, i32 noundef %cid) #9
  br label %cleanup

if.end70:                                         ; preds = %qed_ooo_seek_archipelago.exit
  %free_isles_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2
  %23 = ptrtoint ptr %free_isles_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %free_isles_list, align 4
  %cmp.i217.not = icmp eq ptr %24, %free_isles_list
  br i1 %cmp.i217.not, label %do.body118, label %if.then73

if.then73:                                        ; preds = %if.end70
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #6
  br i1 %call.i.i, label %if.end.i.i219, label %if.then73.list_del.exit_crit_edge

if.then73.list_del.exit_crit_edge:                ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i219:                                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i219, %if.then73.list_del.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %buffers_list = getelementptr inbounds %struct.qed_ooo_isle, ptr %24, i32 0, i32 1
  %33 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i220.not = icmp eq ptr %34, %buffers_list
  br i1 %cmp.i220.not, label %list_del.exit.if.end147_crit_edge, label %do.body87, !prof !63

list_del.exit.if.end147_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

do.body87:                                        ; preds = %list_del.exit
  %dp_level88 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %35 = ptrtoint ptr %dp_level88 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level88, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp90 = icmp ult i8 %36, 3
  br i1 %cmp90, label %do.end101, label %do.body87.do.end115_crit_edge, !prof !62

do.body87.do.end115_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end115

do.end101:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  %name103 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool105.not = icmp eq ptr %name103, null
  %spec.select214 = select i1 %tobool105.not, ptr @.str.3, ptr %name103
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef 385, ptr noundef nonnull %spec.select214) #9
  br label %do.end115

do.end115:                                        ; preds = %do.end101, %do.body87.do.end115_crit_edge
  %37 = ptrtoint ptr %buffers_list to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %buffers_list, ptr %buffers_list, align 4
  %prev.i222 = getelementptr inbounds %struct.qed_ooo_isle, ptr %24, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buffers_list, ptr %prev.i222, align 4
  br label %if.end147

do.body118:                                       ; preds = %if.end70
  %dp_level119 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %39 = ptrtoint ptr %dp_level119 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dp_level119, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp121 = icmp ult i8 %40, 3
  br i1 %cmp121, label %do.end132, label %do.body118.cleanup_crit_edge, !prof !62

do.body118.cleanup_crit_edge:                     ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end132:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  %name134 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool136.not = icmp eq ptr %name134, null
  %spec.select215 = select i1 %tobool136.not, ptr @.str.3, ptr %name134
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, i32 noundef 389, ptr noundef nonnull %spec.select215) #9
  br label %cleanup

if.end147:                                        ; preds = %do.end115, %list_del.exit.if.end147_crit_edge
  br i1 %tobool30.not, label %if.then149, label %if.end147.if.end152_crit_edge

if.end147.if.end152_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then149:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %cid_base.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cid_base.i, align 2
  %conv150 = zext i16 %42 to i32
  %sub151 = sub nsw i32 %and.i.pre-phi, %conv150
  %p_archipelagos_mem = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %43 = ptrtoint ptr %p_archipelagos_mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_archipelagos_mem, align 4
  %arrayidx = getelementptr %struct.qed_ooo_archipelago, ptr %44, i32 %sub151
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.end147.if.end152_crit_edge
  %p_archipelago.0 = phi ptr [ %retval.0.i216, %if.end147.if.end152_crit_edge ], [ %arrayidx, %if.then149 ]
  %45 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffers_list, align 4
  %call.i.i223 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_buffer, ptr noundef %buffers_list, ptr noundef %46) #6
  br i1 %call.i.i223, label %if.end.i.i224, label %if.end152.list_add.exit_crit_edge

if.end152.list_add.exit_crit_edge:                ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i224:                                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %p_buffer, ptr %prev1.i.i, align 4
  %48 = ptrtoint ptr %p_buffer to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %p_buffer, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %p_buffer, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buffers_list, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %buffers_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %p_buffer, ptr %buffers_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i224, %if.end152.list_add.exit_crit_edge
  %cur_isles_number = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 6
  %51 = ptrtoint ptr %cur_isles_number to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cur_isles_number, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %cur_isles_number, align 4
  %gen_isles_number = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 8
  %53 = ptrtoint ptr %gen_isles_number to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %gen_isles_number, align 4
  %inc155 = add i32 %54, 1
  store i32 %inc155, ptr %gen_isles_number, align 4
  %max_isles_number = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 7
  %55 = ptrtoint ptr %max_isles_number to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_isles_number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %56)
  %cmp157 = icmp ugt i32 %inc, %56
  br i1 %cmp157, label %if.then159, label %list_add.exit.if.end162_crit_edge

list_add.exit.if.end162_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then159:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %max_isles_number to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc, ptr %max_isles_number, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %list_add.exit.if.end162_crit_edge
  %tobool163.not = icmp eq ptr %p_prev_isle.0, null
  br i1 %tobool163.not, label %if.then164, label %if.else166

if.then164:                                       ; preds = %if.end162
  %58 = ptrtoint ptr %p_archipelago.0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p_archipelago.0, align 4
  %call.i.i225 = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %p_archipelago.0, ptr noundef %59) #6
  br i1 %call.i.i225, label %if.end.i.i228, label %if.then164.cleanup_crit_edge

if.then164.cleanup_crit_edge:                     ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i228:                                    ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i226 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i226 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %24, ptr %prev1.i.i226, align 4
  %61 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %24, align 4
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %p_archipelago.0, ptr %prev.i, align 4
  %63 = ptrtoint ptr %p_archipelago.0 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %24, ptr %p_archipelago.0, align 4
  br label %cleanup

if.else166:                                       ; preds = %if.end162
  %64 = ptrtoint ptr %p_prev_isle.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_prev_isle.0, align 4
  %call.i.i230 = tail call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef nonnull %p_prev_isle.0, ptr noundef %65) #6
  br i1 %call.i.i230, label %if.end.i.i233, label %if.else166.cleanup_crit_edge

if.else166.cleanup_crit_edge:                     ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i233:                                    ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i231 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i231 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %24, ptr %prev1.i.i231, align 4
  %67 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %24, align 4
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %p_prev_isle.0, ptr %prev.i, align 4
  %69 = ptrtoint ptr %p_prev_isle.0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %24, ptr %p_prev_isle.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i233, %if.else166.cleanup_crit_edge, %if.end.i.i228, %if.then164.cleanup_crit_edge, %do.end132, %do.body118.cleanup_crit_edge, %do.end55, %do.body41.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_add_new_buffer(ptr noundef %p_hwfn, ptr nocapture noundef readonly %p_ooo_info, i32 noundef %cid, i8 noundef zeroext %ooo_isle, ptr noundef %p_buffer, i8 noundef zeroext %buffer_side) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %cid, 65535
  %cid_base.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 10
  %0 = ptrtoint ptr %cid_base.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cid_base.i.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %max_num_archipelagos.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 9
  %2 = ptrtoint ptr %max_num_archipelagos.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_num_archipelagos.i.i, align 4
  %conv1.i.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv1.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %conv1.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.do.body.i_crit_edge, !prof !63

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.i:                                       ; preds = %entry
  %p_archipelagos_mem.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %4 = ptrtoint ptr %p_archipelagos_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_archipelagos_mem.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.qed_ooo_archipelago, ptr %5, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %arrayidx.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = or i1 %cmp.i.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end.i.i.for.body.i_crit_edge, !prof !64

if.end.i.i.for.body.i_crit_edge:                  ; preds = %if.end.i.i
  br label %for.body.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp ult i8 %9, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.body_crit_edge, !prof !62

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.28, i32 noundef 51, ptr noundef nonnull %name.i, i32 noundef %cid) #9
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i8 %the_num_of_isle.052.i, 1
  %10 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p_isle.0.i = load ptr, ptr %p_isle.053.i, align 4
  %cmp22.not.i = icmp eq ptr %p_isle.0.i, %arrayidx.i.i
  br i1 %cmp22.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.i.for.body.i_crit_edge
  %p_isle.053.i = phi ptr [ %p_isle.0.i, %for.cond.i.for.body.i_crit_edge ], [ %7, %if.end.i.i.for.body.i_crit_edge ]
  %the_num_of_isle.052.i = phi i8 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %if.end.i.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %the_num_of_isle.052.i, i8 %ooo_isle)
  %cmp28.i = icmp eq i8 %the_num_of_isle.052.i, %ooo_isle
  br i1 %cmp28.i, label %qed_ooo_seek_isle.exit, label %for.cond.i

qed_ooo_seek_isle.exit:                           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p_isle.053.i, null
  br i1 %tobool.not, label %qed_ooo_seek_isle.exit.do.body_crit_edge, label %if.end20, !prof !62

qed_ooo_seek_isle.exit.do.body_crit_edge:         ; preds = %qed_ooo_seek_isle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %qed_ooo_seek_isle.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %do.end.i, %do.body.i.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp = icmp ult i8 %12, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !62

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool13.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool13.not, ptr @.str.3, ptr %name
  %conv16 = zext i8 %ooo_isle to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22, i32 noundef 423, ptr noundef nonnull %spec.select, i32 noundef %conv16, i32 noundef %cid) #9
  br label %cleanup

if.end20:                                         ; preds = %qed_ooo_seek_isle.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %buffer_side)
  %cmp22 = icmp eq i8 %buffer_side, 0
  %buffers_list = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1
  br i1 %cmp22, label %if.then30, label %if.else, !prof !62

if.then30:                                        ; preds = %if.end20
  %13 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffers_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_buffer, ptr noundef %buffers_list, ptr noundef %14) #6
  br i1 %call.i.i, label %if.end.i.i42, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i42:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %p_buffer, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %p_buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %p_buffer, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %p_buffer, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buffers_list, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %buffers_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %p_buffer, ptr %buffers_list, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end20
  %prev.i = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %p_buffer, ptr noundef %20, ptr noundef %buffers_list) #6
  br i1 %call.i.i43, label %if.end.i.i45, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i45:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %p_buffer, ptr %prev.i, align 4
  %22 = ptrtoint ptr %p_buffer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buffers_list, ptr %p_buffer, align 4
  %prev3.i.i44 = getelementptr inbounds %struct.list_head, ptr %p_buffer, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i44, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %p_buffer, ptr %20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i45, %if.else.cleanup_crit_edge, %if.end.i.i42, %if.then30.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ooo_join_isles(ptr noundef %p_hwfn, ptr noundef %p_ooo_info, i32 noundef %cid, i8 noundef zeroext %left_isle) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %left_isle to i32
  %add = add nuw nsw i32 %conv, 1
  %conv1 = trunc i32 %add to i8
  %and.i.i = and i32 %cid, 65535
  %cid_base.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 10
  %0 = ptrtoint ptr %cid_base.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cid_base.i.i, align 2
  %conv.i.i = zext i16 %1 to i32
  %sub.i.i = sub nsw i32 %and.i.i, %conv.i.i
  %max_num_archipelagos.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 9
  %2 = ptrtoint ptr %max_num_archipelagos.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_num_archipelagos.i.i, align 4
  %conv1.i.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv1.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %conv1.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.do.body.i_crit_edge, !prof !63

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.i:                                       ; preds = %entry
  %p_archipelagos_mem.i.i = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 3
  %4 = ptrtoint ptr %p_archipelagos_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_archipelagos_mem.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.qed_ooo_archipelago, ptr %5, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %arrayidx.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  %or.cond.i = or i1 %cmp.i.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.i.do.body.i_crit_edge, label %if.end.i.i.for.body.i_crit_edge, !prof !64

if.end.i.i.for.body.i_crit_edge:                  ; preds = %if.end.i.i
  br label %for.body.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %8 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.i = icmp ult i8 %9, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.body_crit_edge, !prof !62

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.28, i32 noundef 51, ptr noundef nonnull %name.i, i32 noundef %cid) #9
  br label %do.body

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i8 %the_num_of_isle.052.i, 1
  %10 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p_isle.0.i = load ptr, ptr %p_isle.053.i, align 4
  %cmp22.not.i = icmp eq ptr %p_isle.0.i, %arrayidx.i.i
  br i1 %cmp22.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.i.for.body.i_crit_edge
  %p_isle.053.i = phi ptr [ %p_isle.0.i, %for.cond.i.for.body.i_crit_edge ], [ %7, %if.end.i.i.for.body.i_crit_edge ]
  %the_num_of_isle.052.i = phi i8 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 1, %if.end.i.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %the_num_of_isle.052.i, i8 %conv1)
  %cmp28.i = icmp eq i8 %the_num_of_isle.052.i, %conv1
  br i1 %cmp28.i, label %qed_ooo_seek_isle.exit, label %for.cond.i

qed_ooo_seek_isle.exit:                           ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p_isle.053.i, null
  br i1 %tobool.not, label %qed_ooo_seek_isle.exit.do.body_crit_edge, label %if.end23, !prof !62

qed_ooo_seek_isle.exit.do.body_crit_edge:         ; preds = %qed_ooo_seek_isle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %qed_ooo_seek_isle.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge, %do.end.i, %do.body.i.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp = icmp ult i8 %12, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !62

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool15.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool15.not, ptr @.str.3, ptr %name
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 444, ptr noundef nonnull %spec.select, i32 noundef %add, i32 noundef %cid) #9
  br label %cleanup

if.end23:                                         ; preds = %qed_ooo_seek_isle.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %p_isle.053.i) #6
  br i1 %call.i.i, label %if.end.i.i97, label %if.end23.list_del.exit_crit_edge

if.end23.list_del.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i97:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p_isle.053.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p_isle.053.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i97, %if.end23.list_del.exit_crit_edge
  %19 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %p_isle.053.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p_isle.053.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cur_isles_number = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 6
  %21 = ptrtoint ptr %cur_isles_number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_isles_number, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %cur_isles_number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %left_isle)
  %tobool24.not = icmp eq i8 %left_isle, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %list_del.exit
  %23 = ptrtoint ptr %cid_base.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %cid_base.i.i, align 2
  %conv.i.i100 = zext i16 %24 to i32
  %sub.i.i101 = sub nsw i32 %and.i.i, %conv.i.i100
  %25 = ptrtoint ptr %max_num_archipelagos.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_num_archipelagos.i.i, align 4
  %conv1.i.i103 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i101, i32 %conv1.i.i103)
  %cmp.not.i.i104 = icmp ult i32 %sub.i.i101, %conv1.i.i103
  br i1 %cmp.not.i.i104, label %if.end.i.i110, label %if.then25.do.body.i116_crit_edge, !prof !63

if.then25.do.body.i116_crit_edge:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i116

if.end.i.i110:                                    ; preds = %if.then25
  %27 = ptrtoint ptr %p_archipelagos_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p_archipelagos_mem.i.i, align 4
  %arrayidx.i.i106 = getelementptr %struct.qed_ooo_archipelago, ptr %28, i32 %sub.i.i101
  %29 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i.i106, align 4
  %cmp.i.not.i.i107 = icmp eq ptr %30, %arrayidx.i.i106
  %tobool.not.i108 = icmp eq ptr %arrayidx.i.i106, null
  %or.cond.i109 = or i1 %cmp.i.not.i.i107, %tobool.not.i108
  br i1 %or.cond.i109, label %if.end.i.i110.do.body.i116_crit_edge, label %if.end.i.i110.for.body.i127_crit_edge, !prof !64

if.end.i.i110.for.body.i127_crit_edge:            ; preds = %if.end.i.i110
  br label %for.body.i127

if.end.i.i110.do.body.i116_crit_edge:             ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i116

do.body.i116:                                     ; preds = %if.end.i.i110.do.body.i116_crit_edge, %if.then25.do.body.i116_crit_edge
  %dp_level.i114 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %31 = ptrtoint ptr %dp_level.i114 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp_level.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.i115 = icmp ult i8 %32, 3
  br i1 %cmp.i115, label %do.end.i119, label %do.body.i116.do.body37_crit_edge, !prof !62

do.body.i116.do.body37_crit_edge:                 ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

do.end.i119:                                      ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #8
  %name.i117 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %call16.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.28, i32 noundef 51, ptr noundef nonnull %name.i117, i32 noundef %cid) #9
  br label %do.body37

for.cond.i123:                                    ; preds = %for.body.i127
  %inc.i120 = add i8 %the_num_of_isle.052.i125, 1
  %33 = ptrtoint ptr %p_isle.053.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %p_isle.0.i121 = load ptr, ptr %p_isle.053.i124, align 4
  %cmp22.not.i122 = icmp eq ptr %p_isle.0.i121, %arrayidx.i.i106
  br i1 %cmp22.not.i122, label %for.cond.i123.do.body37_crit_edge, label %for.cond.i123.for.body.i127_crit_edge

for.cond.i123.for.body.i127_crit_edge:            ; preds = %for.cond.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i127

for.cond.i123.do.body37_crit_edge:                ; preds = %for.cond.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

for.body.i127:                                    ; preds = %for.cond.i123.for.body.i127_crit_edge, %if.end.i.i110.for.body.i127_crit_edge
  %p_isle.053.i124 = phi ptr [ %p_isle.0.i121, %for.cond.i123.for.body.i127_crit_edge ], [ %30, %if.end.i.i110.for.body.i127_crit_edge ]
  %the_num_of_isle.052.i125 = phi i8 [ %inc.i120, %for.cond.i123.for.body.i127_crit_edge ], [ 1, %if.end.i.i110.for.body.i127_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %the_num_of_isle.052.i125, i8 %left_isle)
  %cmp28.i126 = icmp eq i8 %the_num_of_isle.052.i125, %left_isle
  br i1 %cmp28.i126, label %qed_ooo_seek_isle.exit129, label %for.cond.i123

qed_ooo_seek_isle.exit129:                        ; preds = %for.body.i127
  %tobool27.not = icmp eq ptr %p_isle.053.i124, null
  br i1 %tobool27.not, label %qed_ooo_seek_isle.exit129.do.body37_crit_edge, label %if.end67, !prof !62

qed_ooo_seek_isle.exit129.do.body37_crit_edge:    ; preds = %qed_ooo_seek_isle.exit129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

do.body37:                                        ; preds = %qed_ooo_seek_isle.exit129.do.body37_crit_edge, %for.cond.i123.do.body37_crit_edge, %do.end.i119, %do.body.i116.do.body37_crit_edge
  %dp_level38 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %34 = ptrtoint ptr %dp_level38 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dp_level38, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp40 = icmp ult i8 %35, 3
  br i1 %cmp40, label %do.end51, label %do.body37.cleanup_crit_edge, !prof !62

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end51:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %name53 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool55.not = icmp eq ptr %name53, null
  %spec.select96 = select i1 %tobool55.not, ptr @.str.3, ptr %name53
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef 456, ptr noundef nonnull %spec.select96, i32 noundef %conv, i32 noundef %cid) #9
  br label %cleanup

if.end67:                                         ; preds = %qed_ooo_seek_isle.exit129
  %buffers_list = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1
  %36 = ptrtoint ptr %buffers_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %buffers_list, align 4
  %cmp.i.not.i = icmp eq ptr %37, %buffers_list
  br i1 %cmp.i.not.i, label %if.end67.if.end70_crit_edge, label %if.then.i

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %buffers_list68 = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i124, i32 0, i32 1
  %prev.i130 = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i124, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i130, align 4
  %prev2.i.i = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %39, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buffers_list68, ptr %41, align 4
  store ptr %41, ptr %prev.i130, align 4
  %45 = ptrtoint ptr %buffers_list to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %buffers_list, ptr %buffers_list, align 4
  store ptr %buffers_list, ptr %prev2.i.i, align 4
  br label %if.end70

if.else:                                          ; preds = %list_del.exit
  %buffers_list69 = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1
  %46 = ptrtoint ptr %buffers_list69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %buffers_list69, align 4
  %cmp.i.not.i131 = icmp eq ptr %47, %buffers_list69
  br i1 %cmp.i.not.i131, label %if.else.if.end70_crit_edge, label %if.then.i135

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then.i135:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ready_buffers_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 1
  %prev.i132 = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i132, align 4
  %prev2.i.i133 = getelementptr inbounds %struct.qed_ooo_isle, ptr %p_isle.053.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev2.i.i133 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev2.i.i133, align 4
  %prev3.i.i134 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i134 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i134, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %47, ptr %49, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ready_buffers_list, ptr %51, align 4
  store ptr %51, ptr %prev.i132, align 4
  %55 = ptrtoint ptr %buffers_list69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %buffers_list69, ptr %buffers_list69, align 4
  store ptr %buffers_list69, ptr %prev2.i.i133, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then.i135, %if.else.if.end70_crit_edge, %if.then.i, %if.end67.if.end70_crit_edge
  %free_isles_list = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2
  %prev.i137 = getelementptr inbounds %struct.qed_ooo_info, ptr %p_ooo_info, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %prev.i137 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i137, align 4
  %call.i.i138 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %p_isle.053.i, ptr noundef %57, ptr noundef %free_isles_list) #6
  br i1 %call.i.i138, label %if.end.i.i140, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i140:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %prev.i137 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %p_isle.053.i, ptr %prev.i137, align 4
  %59 = ptrtoint ptr %p_isle.053.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_isles_list, ptr %p_isle.053.i, align 4
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %p_isle.053.i, ptr %57, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i140, %if.end70.cleanup_crit_edge, %do.end51, %do.body37.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 94, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_ooo_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_ooo_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 105, i32 3}
!9 = !{ptr @qed_ooo_alloc._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_ooo_alloc._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 335, i32 4}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qed_ooo_delete_isles._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @qed_ooo_delete_isles._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 341, i32 4}
!18 = !{ptr @qed_ooo_delete_isles._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qed_ooo_delete_isles._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 366, i32 4}
!22 = !{ptr @qed_ooo_add_new_isle._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @qed_ooo_add_new_isle._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 374, i32 3}
!26 = !{ptr @qed_ooo_add_new_isle._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qed_ooo_add_new_isle._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 385, i32 4}
!30 = !{ptr @qed_ooo_add_new_isle._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qed_ooo_add_new_isle._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 389, i32 3}
!34 = !{ptr @qed_ooo_add_new_isle._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qed_ooo_add_new_isle._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 422, i32 3}
!38 = !{ptr @qed_ooo_add_new_buffer._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @qed_ooo_add_new_buffer._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 442, i32 3}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qed_ooo_join_isles._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @qed_ooo_join_isles._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 454, i32 4}
!47 = !{ptr @qed_ooo_join_isles._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @qed_ooo_join_isles._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qed/qed_ooo.c", i32 50, i32 3}
!51 = !{ptr @qed_ooo_seek_isle._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @qed_ooo_seek_isle._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{!"branch_weights", i32 2002, i32 2000}
