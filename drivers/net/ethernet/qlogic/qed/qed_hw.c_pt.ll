; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.qed_ptt_pool = type { %struct.list_head, %struct.spinlock, [12 x %struct.qed_ptt] }
%struct.qed_ptt = type { %struct.list_head, i32, %struct.pxp_ptt_entry, i8 }
%struct.pxp_ptt_entry = type { i32, %struct.pxp_pretend_cmd }
%struct.pxp_pretend_cmd = type { %union.pxp_pretend_fid, i16 }
%union.pxp_pretend_fid = type { %struct.pxp_pretend_concrete_fid }
%struct.pxp_pretend_concrete_fid = type { i16 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.106 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.105, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.105 = type { ptr }
%struct.qed_dmae_params = type { i32, i8, i8, i8, i8, i8, i8, i16 }
%struct.dmae_cmd = type { i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.__va_list = type { ptr }

@qed_ptt_pool_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&p_pool->lock\00", [18 x i8] zeroinitializer }, align 32
@qed_ptt_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015[%s:%d(%s)]allocated ptt %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_ptt_acquire\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/qlogic/qed/qed_hw.c\00", [55 x i8] zeroinitializer }, align 32
@qed_ptt_acquire._entry_ptr = internal global ptr @qed_ptt_acquire._entry, section ".printk_index", align 4
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_ptt_acquire._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]PTT acquire timeout - failed to allocate PTT\0A\00", [37 x i8] zeroinitializer }, align 32
@qed_ptt_acquire._entry_ptr.7 = internal global ptr @qed_ptt_acquire._entry.5, section ".printk_index", align 4
@qed_ptt_set_win._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Updating PTT entry %d to offset 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_ptt_set_win\00", [16 x i8] zeroinitializer }, align 32
@qed_ptt_set_win._entry_ptr = internal global ptr @qed_ptt_set_win._entry, section ".printk_index", align 4
@qed_get_reserved_ptt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Requested PTT %d is out of range\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qed_get_reserved_ptt\00", [43 x i8] zeroinitializer }, align 32
@qed_get_reserved_ptt._entry_ptr = internal global ptr @qed_get_reserved_ptt._entry, section ".printk_index", align 4
@qed_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015[%s:%d(%s)]bar_addr 0x%x, hw_addr 0x%x, val 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qed_wr\00", [25 x i8] zeroinitializer }, align 32
@qed_wr._entry_ptr = internal global ptr @qed_wr._entry, section ".printk_index", align 4
@qed_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.3, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qed_rd\00", [25 x i8] zeroinitializer }, align 32
@qed_rd._entry_ptr = internal global ptr @qed_rd._entry, section ".printk_index", align 4
@qed_memcpy_from._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]hw_addr 0x%x, dest %p hw_addr 0x%x, size %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_memcpy_from\00", [16 x i8] zeroinitializer }, align 32
@qed_memcpy_from._entry_ptr = internal global ptr @qed_memcpy_from._entry, section ".printk_index", align 4
@qed_memcpy_to._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]hw_addr 0x%x, hw_addr 0x%x, src %p size %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qed_memcpy_to\00", [18 x i8] zeroinitializer }, align 32
@qed_memcpy_to._entry_ptr = internal global ptr @qed_memcpy_to._entry, section ".printk_index", align 4
@qed_hw_err_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\015[%s:%d(%s)]%s\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qed_hw_err_notify\00", [46 x i8] zeroinitializer }, align 32
@qed_hw_err_notify._entry_ptr = internal global ptr @qed_hw_err_notify._entry, section ".printk_index", align 4
@qed_hw_err_notify._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\015[%s:%d(%s)]Recovery is in progress. Avoid notifying about HW error %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_hw_err_notify._entry_ptr.23 = internal global ptr @qed_hw_err_notify._entry.21, section ".printk_index", align 4
@qed_dmae_sanity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]DMAE sanity [%s]: failed to allocate memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_dmae_sanity\00", [16 x i8] zeroinitializer }, align 32
@qed_dmae_sanity._entry_ptr = internal global ptr @qed_dmae_sanity._entry, section ".printk_index", align 4
@qed_dmae_sanity._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\015[%s:%d(%s)]DMAE sanity [%s]: src_addr={phys 0x%llx, virt %p}, dst_addr={phys 0x%llx, virt %p}, size 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@qed_dmae_sanity._entry_ptr.28 = internal global ptr @qed_dmae_sanity._entry.26, section ".printk_index", align 4
@qed_dmae_sanity._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\015[%s:%d(%s)]DMAE sanity [%s]: qed_dmae_host2host() failed. rc = %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_dmae_sanity._entry_ptr.31 = internal global ptr @qed_dmae_sanity._entry.29, section ".printk_index", align 4
@qed_dmae_sanity._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\015[%s:%d(%s)]DMAE sanity [%s]: addr={phys 0x%llx, virt %p}, read_val 0x%08x, expected_val 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@qed_dmae_sanity._entry_ptr.34 = internal global ptr @qed_dmae_sanity._entry.32, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qed_set_ptt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]ptt[%d] of hwfn[%02x] is used by hwfn[%02x]!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qed_set_ptt\00", [20 x i8] zeroinitializer }, align 32
@qed_set_ptt._entry_ptr = internal global ptr @qed_set_ptt._entry, section ".printk_index", align 4
@qed_dmae_execute_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\015[%s:%d(%s)]Recovery is in progress. Avoid DMAE transaction [{src: addr 0x%llx, type %d}, {dst: addr 0x%llx, type %d}, size %d].\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qed_dmae_execute_command\00", [39 x i8] zeroinitializer }, align 32
@qed_dmae_execute_command._entry_ptr = internal global ptr @qed_dmae_execute_command._entry, section ".printk_index", align 4
@.str.39 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"qed_dmae_execute_sub_operation Failed with error 0x%x. source_addr 0x%llx, destination addr 0x%llx, size_in_dwords 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@qed_dmae_execute_sub_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\015[%s:%d(%s)]qed_dmae_host2grc: Wait Failed. source_addr 0x%llx, grc_addr 0x%llx, size_in_dwords 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qed_dmae_execute_sub_operation\00", [33 x i8] zeroinitializer }, align 32
@qed_dmae_execute_sub_operation._entry_ptr = internal global ptr @qed_dmae_execute_sub_operation._entry, section ".printk_index", align 4
@qed_dmae_post_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\015[%s:%d(%s)]source or destination address 0 idx_cmd=%d\0Aopcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_dmae_post_command\00", [42 x i8] zeroinitializer }, align 32
@qed_dmae_post_command._entry_ptr = internal global ptr @qed_dmae_post_command._entry, section ".printk_index", align 4
@qed_dmae_post_command._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\015[%s:%d(%s)]Posting DMAE command [idx %d]: opcode = [0x%08x,0x%04x] len=0x%x src=0x%x:%x dst=0x%x:%x\0A\00", [57 x i8] zeroinitializer }, align 32
@qed_dmae_post_command._entry_ptr.46 = internal global ptr @qed_dmae_post_command._entry.44, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@qed_dmae_operation_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\015[%s:%d(%s)]Timed-out waiting for operation to complete. Completion word is 0x%08x expected 0x%08x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qed_dmae_operation_wait\00", [40 x i8] zeroinitializer }, align 32
@qed_dmae_operation_wait._entry_ptr = internal global ptr @qed_dmae_operation_wait._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 64, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 102, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 111, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 151, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 191, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 206, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 218, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 261, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 271, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 830, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 836, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 861, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 878, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 888, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 901, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 173, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 684, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 740, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 654, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 456, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 471, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [44 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_hw.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 582, i32 4 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @qed_dmae_execute_command._entry, ptr @qed_dmae_execute_command._entry_ptr, ptr @qed_dmae_execute_sub_operation._entry, ptr @qed_dmae_execute_sub_operation._entry_ptr, ptr @qed_dmae_operation_wait._entry, ptr @qed_dmae_operation_wait._entry_ptr, ptr @qed_dmae_post_command._entry, ptr @qed_dmae_post_command._entry.44, ptr @qed_dmae_post_command._entry_ptr, ptr @qed_dmae_post_command._entry_ptr.46, ptr @qed_dmae_sanity._entry, ptr @qed_dmae_sanity._entry.26, ptr @qed_dmae_sanity._entry.29, ptr @qed_dmae_sanity._entry.32, ptr @qed_dmae_sanity._entry_ptr, ptr @qed_dmae_sanity._entry_ptr.28, ptr @qed_dmae_sanity._entry_ptr.31, ptr @qed_dmae_sanity._entry_ptr.34, ptr @qed_get_reserved_ptt._entry, ptr @qed_get_reserved_ptt._entry_ptr, ptr @qed_hw_err_notify._entry, ptr @qed_hw_err_notify._entry.21, ptr @qed_hw_err_notify._entry_ptr, ptr @qed_hw_err_notify._entry_ptr.23, ptr @qed_memcpy_from._entry, ptr @qed_memcpy_from._entry_ptr, ptr @qed_memcpy_to._entry, ptr @qed_memcpy_to._entry_ptr, ptr @qed_ptt_acquire._entry, ptr @qed_ptt_acquire._entry.5, ptr @qed_ptt_acquire._entry_ptr, ptr @qed_ptt_acquire._entry_ptr.7, ptr @qed_ptt_set_win._entry, ptr @qed_ptt_set_win._entry_ptr, ptr @qed_rd._entry, ptr @qed_rd._entry_ptr, ptr @qed_set_ptt._entry, ptr @qed_set_ptt._entry_ptr, ptr @qed_wr._entry, ptr @qed_wr._entry_ptr, ptr @qed_ptt_pool_alloc.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptt_pool_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptt_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptt_acquire._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ptt_set_win._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_get_reserved_ptt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_memcpy_from._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_memcpy_to._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_hw_err_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_hw_err_notify._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_sanity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_sanity._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_sanity._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_sanity._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_set_ptt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_execute_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_execute_sub_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_post_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_post_command._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_dmae_operation_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_ptt_pool_alloc(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 340) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.peel.next68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.peel.next68:                             ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %prev.i, align 4
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %idx.peel = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %idx.peel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idx.peel, align 4
  %pxp.peel = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %pxp.peel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pxp.peel, align 8
  %control.peel = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 0, i32 2, i32 1, i32 1
  %5 = ptrtoint ptr %control.peel to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %control.peel, align 2
  %6 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %my_id, align 4
  %hwfn_id.peel = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 0, i32 3
  %8 = ptrtoint ptr %hwfn_id.peel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %hwfn_id.peel, align 8
  %idx.peel38 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %idx.peel38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %idx.peel38, align 4
  %pxp.peel39 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 1, i32 2
  %10 = ptrtoint ptr %pxp.peel39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pxp.peel39, align 8
  %control.peel40 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 1, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %control.peel40 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %control.peel40, align 2
  %12 = load i8, ptr %my_id, align 4
  %hwfn_id.peel41 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 1, i32 3
  %13 = ptrtoint ptr %hwfn_id.peel41 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %hwfn_id.peel41, align 8
  %idx.peel54 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 2, i32 1
  %14 = ptrtoint ptr %idx.peel54 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %idx.peel54, align 4
  %pxp.peel55 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 2, i32 2
  %15 = ptrtoint ptr %pxp.peel55 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %pxp.peel55, align 8
  %control.peel56 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 2, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %control.peel56 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %control.peel56, align 2
  %17 = load i8, ptr %my_id, align 4
  %hwfn_id.peel57 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 2, i32 3
  %18 = ptrtoint ptr %hwfn_id.peel57 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %hwfn_id.peel57, align 8
  %idx.peel70 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 3, i32 1
  %19 = ptrtoint ptr %idx.peel70 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %idx.peel70, align 4
  %pxp.peel71 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 3, i32 2
  %20 = ptrtoint ptr %pxp.peel71 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pxp.peel71, align 8
  %control.peel72 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 3, i32 2, i32 1, i32 1
  %21 = ptrtoint ptr %control.peel72 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %control.peel72, align 2
  %22 = load i8, ptr %my_id, align 4
  %hwfn_id.peel73 = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 3, i32 3
  %23 = ptrtoint ptr %hwfn_id.peel73 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %hwfn_id.peel73, align 8
  br label %if.then9

if.then9:                                         ; preds = %for.inc.if.then9_crit_edge, %for.body.peel.next68
  %i.034 = phi i32 [ 4, %for.body.peel.next68 ], [ %inc, %for.inc.if.then9_crit_edge ]
  %idx = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 %i.034, i32 1
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.034, ptr %idx, align 4
  %pxp = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 %i.034, i32 2
  %25 = ptrtoint ptr %pxp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %pxp, align 8
  %control = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 %i.034, i32 2, i32 1, i32 1
  %26 = ptrtoint ptr %control to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %control, align 2
  %27 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %my_id, align 4
  %hwfn_id = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 %i.034, i32 3
  %29 = ptrtoint ptr %hwfn_id to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %hwfn_id, align 8
  %arrayidx = getelementptr %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 2, i32 %i.034
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef nonnull %call7.i, ptr noundef %31) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.for.inc_crit_edge

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i, ptr %prev3.i.i, align 8
  %35 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx, ptr %call7.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.then9.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.if.then9_crit_edge, !llvm.loop !109

for.inc.if.then9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %p_ptt_pool = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 16
  %36 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i, ptr %p_ptt_pool, align 4
  %lock = getelementptr inbounds %struct.qed_ptt_pool, ptr %call7.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @qed_ptt_pool_alloc.__key, i16 noundef signext 3) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ptt_invalidate(ptr nocapture noundef readonly %p_hwfn) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ptt_pool = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 16
  %0 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptt_pool, align 4
  %pxp = getelementptr %struct.qed_ptt_pool, ptr %1, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %pxp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pxp, align 4
  %3 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.1 = getelementptr %struct.qed_ptt_pool, ptr %3, i32 0, i32 2, i32 1, i32 2
  %4 = ptrtoint ptr %pxp.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pxp.1, align 4
  %5 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.2 = getelementptr %struct.qed_ptt_pool, ptr %5, i32 0, i32 2, i32 2, i32 2
  %6 = ptrtoint ptr %pxp.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pxp.2, align 4
  %7 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.3 = getelementptr %struct.qed_ptt_pool, ptr %7, i32 0, i32 2, i32 3, i32 2
  %8 = ptrtoint ptr %pxp.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pxp.3, align 4
  %9 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.4 = getelementptr %struct.qed_ptt_pool, ptr %9, i32 0, i32 2, i32 4, i32 2
  %10 = ptrtoint ptr %pxp.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %pxp.4, align 4
  %11 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.5 = getelementptr %struct.qed_ptt_pool, ptr %11, i32 0, i32 2, i32 5, i32 2
  %12 = ptrtoint ptr %pxp.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %pxp.5, align 4
  %13 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.6 = getelementptr %struct.qed_ptt_pool, ptr %13, i32 0, i32 2, i32 6, i32 2
  %14 = ptrtoint ptr %pxp.6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %pxp.6, align 4
  %15 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.7 = getelementptr %struct.qed_ptt_pool, ptr %15, i32 0, i32 2, i32 7, i32 2
  %16 = ptrtoint ptr %pxp.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %pxp.7, align 4
  %17 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.8 = getelementptr %struct.qed_ptt_pool, ptr %17, i32 0, i32 2, i32 8, i32 2
  %18 = ptrtoint ptr %pxp.8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %pxp.8, align 4
  %19 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.9 = getelementptr %struct.qed_ptt_pool, ptr %19, i32 0, i32 2, i32 9, i32 2
  %20 = ptrtoint ptr %pxp.9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pxp.9, align 4
  %21 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.10 = getelementptr %struct.qed_ptt_pool, ptr %21, i32 0, i32 2, i32 10, i32 2
  %22 = ptrtoint ptr %pxp.10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %pxp.10, align 4
  %23 = load ptr, ptr %p_ptt_pool, align 4
  %pxp.11 = getelementptr %struct.qed_ptt_pool, ptr %23, i32 0, i32 2, i32 11, i32 2
  %24 = ptrtoint ptr %pxp.11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %pxp.11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ptt_pool_free(ptr nocapture noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ptt_pool = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 16
  %0 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptt_pool, align 4
  tail call void @kfree(ptr noundef %1) #13
  %2 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %p_ptt_pool, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qed_ptt_acquire(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ptt_pool = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %entry
  %i.068 = phi i32 [ 0, %entry ], [ %inc, %if.end20.for.body_crit_edge ]
  %0 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptt_pool, align 4
  %lock = getelementptr inbounds %struct.qed_ptt_pool, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %2 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_ptt_pool, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %5, %3
  br i1 %cmp.i.not, label %if.end20, label %if.then

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_ptt_pool, align 4
  %lock5 = getelementptr inbounds %struct.qed_ptt_pool, ptr %15, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock5) #13
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %16 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp6 = icmp eq i8 %17, 0
  br i1 %cmp6, label %land.rhs, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %list_del.exit
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %18 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dp_module, align 4
  %and = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !111

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool14.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool14.not, ptr @.str.4, ptr %name
  %idx = getelementptr inbounds %struct.qed_ptt, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 103, ptr noundef nonnull %spec.select, i32 noundef %21) #17
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %lock22 = getelementptr inbounds %struct.qed_ptt_pool, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock22) #13
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.body23, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.body23:                                        ; preds = %if.end20
  %dp_level24 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %22 = ptrtoint ptr %dp_level24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dp_level24, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp26 = icmp ult i8 %23, 3
  br i1 %cmp26, label %do.end37, label %do.body23.cleanup_crit_edge, !prof !112

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end37:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  %name39 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool41.not = icmp eq ptr %name39, null
  %spec.select67 = select i1 %tobool41.not, ptr @.str.4, ptr %name39
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 111, ptr noundef nonnull %spec.select67) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.body23.cleanup_crit_edge, %do.end, %land.rhs.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %list_del.exit.cleanup_crit_edge ], [ %5, %do.end ], [ %5, %land.rhs.cleanup_crit_edge ], [ null, %do.end37 ], [ null, %do.body23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ptt_release(ptr nocapture noundef readonly %p_hwfn, ptr noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %p_ptt_pool = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 16
  %0 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_ptt_pool, align 4
  %lock = getelementptr inbounds %struct.qed_ptt_pool, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #13
  %2 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_ptt_pool, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_ptt, ptr noundef %3, ptr noundef %5) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %p_ptt, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %p_ptt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %p_ptt, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %p_ptt, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %p_ptt, ptr %3, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %10 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_ptt_pool, align 4
  %lock3 = getelementptr inbounds %struct.qed_ptt_pool, ptr %11, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock3) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_ptt_get_hw_addr(ptr nocapture readnone %p_hwfn, ptr nocapture noundef readonly %p_ptt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pxp = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2
  %0 = ptrtoint ptr %pxp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pxp, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shl = shl i32 %2, 2
  ret i32 %shl
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_ptt_get_bar_addr(ptr nocapture noundef readonly %p_ptt) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %mul = shl i32 %1, 12
  %add = add i32 %mul, 4096
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_ptt_set_win(ptr noundef %p_hwfn, ptr nocapture noundef %p_ptt, i32 noundef %new_hw_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pxp.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2
  %0 = ptrtoint ptr %pxp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pxp.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %shl.i = shl i32 %2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %new_hw_addr)
  %cmp = icmp eq i32 %shl.i, %new_hw_addr
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1 = icmp eq i8 %4, 0
  br i1 %cmp1, label %land.rhs, label %do.body.do.end13_crit_edge

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %5 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_module, align 4
  %and = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end13_crit_edge, label %do.end, !prof !111

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool7.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool7.not, ptr @.str.4, ptr %name
  %idx = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 153, ptr noundef nonnull %spec.select, i32 noundef %8, i32 noundef %new_hw_addr) #17
  br label %do.end13

do.end13:                                         ; preds = %do.end, %land.rhs.do.end13_crit_edge, %do.body.do.end13_crit_edge
  %shr = lshr i32 %new_hw_addr, 2
  %9 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %10 = ptrtoint ptr %pxp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pxp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !113
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %pxp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pxp.i, align 4
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %13 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regview, align 4
  %idx.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %16, 3
  %add.ptr = getelementptr i8, ptr %14, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #13, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qed_get_reserved_ptt(ptr noundef %p_hwfn, i32 noundef %ptt_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ptt_idx)
  %cmp = icmp ugt i32 %ptt_idx, 3
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp1 = icmp ult i8 %1, 3
  br i1 %cmp1, label %do.end, label %do.body.return_crit_edge, !prof !112

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 192, ptr noundef nonnull %spec.select, i32 noundef %ptt_idx) #17
  br label %return

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %p_ptt_pool = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 16
  %2 = ptrtoint ptr %p_ptt_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_ptt_pool, align 4
  %arrayidx = getelementptr %struct.qed_ptt_pool, ptr %3, i32 0, i32 2, i32 %ptt_idx
  br label %return

return:                                           ; preds = %if.end10, %do.end, %do.body.return_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end10 ], [ null, %do.body.return_crit_edge ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_wr(ptr noundef %p_hwfn, ptr nocapture noundef %p_ptt, i32 noundef %hw_addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qed_set_ptt(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %hw_addr)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @arm_heavy_mb() #13
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %1 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regview, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %call
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #13, !srcloc !114
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %5 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_module, align 4
  %and = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end13_crit_edge, label %do.end7, !prof !111

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

do.end7:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 208, ptr noundef nonnull %spec.select, i32 noundef %call, i32 noundef %hw_addr, i32 noundef %val) #17
  br label %do.end13

do.end13:                                         ; preds = %do.end7, %land.rhs.do.end13_crit_edge, %entry.do.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_set_ptt(ptr noundef %p_hwfn, ptr nocapture noundef %p_ptt, i32 noundef %hw_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pxp.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2
  %0 = ptrtoint ptr %pxp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pxp.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #13
  %shl.i = shl i32 %2, 2
  %sub = sub i32 %hw_addr, %shl.i
  %hwfn_id = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 3
  %3 = ptrtoint ptr %hwfn_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hwfn_id, align 4
  %my_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 1
  %5 = ptrtoint ptr %my_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %my_id, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %7 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp4 = icmp ult i8 %8, 3
  br i1 %cmp4, label %do.end, label %do.body.if.end19_crit_edge, !prof !112

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.4, ptr %name
  %idx = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %9 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx, align 4
  %conv13 = zext i8 %4 to i32
  %conv15 = zext i8 %6 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 175, ptr noundef nonnull %spec.select, i32 noundef %10, i32 noundef %conv13, i32 noundef %conv15) #17
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %entry.if.end19_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %hw_addr)
  %cmp20 = icmp ugt i32 %shl.i, %hw_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub)
  %cmp22 = icmp ugt i32 %sub, 4095
  %or.cond = or i1 %cmp20, %cmp22
  br i1 %or.cond, label %if.then24, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.end19
  %11 = ptrtoint ptr %pxp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pxp.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %shl.i.i = shl i32 %13, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %hw_addr)
  %cmp.i = icmp eq i32 %shl.i.i, %hw_addr
  br i1 %cmp.i, label %if.then24.if.end25_crit_edge, label %do.body.i

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

do.body.i:                                        ; preds = %if.then24
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %14 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1.i = icmp eq i8 %15, 0
  br i1 %cmp1.i, label %land.rhs.i, label %do.body.i.do.end13.i_crit_edge

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13.i

land.rhs.i:                                       ; preds = %do.body.i
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %16 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.end13.i_crit_edge, label %do.end.i, !prof !111

land.rhs.i.do.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %idx.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %18 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx.i, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 153, ptr noundef nonnull %name.i, i32 noundef %19, i32 noundef %hw_addr) #17
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %land.rhs.i.do.end13.i_crit_edge, %do.body.i.do.end13.i_crit_edge
  %shr.i = lshr i32 %hw_addr, 2
  %20 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #13
  %21 = ptrtoint ptr %pxp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pxp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !113
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %pxp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pxp.i, align 4
  %regview.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %24 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regview.i, align 4
  %idx.i.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %26 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx.i.i, align 4
  %mul.i.i = shl i32 %27, 3
  %add.ptr.i = getelementptr i8, ptr %25, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #13, !srcloc !114
  br label %if.end25

if.end25:                                         ; preds = %do.end13.i, %if.then24.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %offset.0 = phi i32 [ %sub, %if.end19.if.end25_crit_edge ], [ 0, %if.then24.if.end25_crit_edge ], [ 0, %do.end13.i ]
  %idx.i42 = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %28 = ptrtoint ptr %idx.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx.i42, align 4
  %mul.i = shl i32 %29, 12
  %add.i = add nuw nsw i32 %offset.0, 4096
  %add = add i32 %add.i, %mul.i
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_rd(ptr noundef %p_hwfn, ptr nocapture noundef %p_ptt, i32 noundef %hw_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @qed_set_ptt(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %hw_addr)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %0 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regview, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %call
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !116
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module, align 4
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end13_crit_edge, label %do.end, !prof !111

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef 220, ptr noundef nonnull %spec.select, i32 noundef %call, i32 noundef %hw_addr, i32 noundef %3) #17
  br label %do.end13

do.end13:                                         ; preds = %do.end, %land.rhs.do.end13_crit_edge, %entry.do.end13_crit_edge
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_memcpy_from(ptr noundef %p_hwfn, ptr nocapture noundef %p_ptt, ptr noundef %dest, i32 noundef %hw_addr, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end8_crit_edge, label %do.end, !prof !111

land.rhs.do.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 263, ptr noundef nonnull %spec.select, i32 noundef %hw_addr, ptr noundef %dest, i32 noundef %hw_addr, i32 noundef %n) #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %land.rhs.do.end8_crit_edge, %entry.do.end8_crit_edge
  tail call fastcc void @qed_memcpy_hw(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %dest, i32 noundef %hw_addr, i32 noundef %n, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qed_memcpy_hw(ptr noundef %p_hwfn, ptr nocapture noundef %p_ptt, ptr nocapture noundef %addr, i32 noundef %hw_addr, i32 noundef %n, i1 noundef zeroext %to_device) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp51.not = icmp eq i32 %n, 0
  br i1 %cmp51.not, label %entry.while.end23_crit_edge, label %while.body.lr.ph

entry.while.end23_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end23

while.body.lr.ph:                                 ; preds = %entry
  %pxp.i.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2
  %dp_level.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %idx.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %regview.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %done.052 = phi i32 [ 0, %while.body.lr.ph ], [ %add22, %if.end21.while.body_crit_edge ]
  %sub = sub i32 %n, %done.052
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %1 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_hwfn, align 8
  %b_is_vf = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 39
  %3 = ptrtoint ptr %b_is_vf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %b_is_vf, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %add = add i32 %done.052, %hw_addr
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %while.body
  %5 = ptrtoint ptr %pxp.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pxp.i.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  %shl.i.i = shl i32 %7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %add)
  %cmp.i = icmp eq i32 %shl.i.i, %add
  br i1 %cmp.i, label %if.then.qed_ptt_set_win.exit_crit_edge, label %do.body.i

if.then.qed_ptt_set_win.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_ptt_set_win.exit

do.body.i:                                        ; preds = %if.then
  %8 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.i = icmp eq i8 %9, 0
  br i1 %cmp1.i, label %land.rhs.i, label %do.body.i.do.end13.i_crit_edge

do.body.i.do.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13.i

land.rhs.i:                                       ; preds = %do.body.i
  %10 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dp_module.i, align 4
  %and.i = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.end13.i_crit_edge, label %do.end.i, !prof !111

land.rhs.i.do.end13.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx.i, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 153, ptr noundef nonnull %name.i, i32 noundef %13, i32 noundef %add) #17
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i, %land.rhs.i.do.end13.i_crit_edge, %do.body.i.do.end13.i_crit_edge
  %shr.i = lshr i32 %add, 2
  %14 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #13
  %15 = ptrtoint ptr %pxp.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pxp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !113
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %pxp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pxp.i.i, align 4
  %18 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regview.i, align 4
  %20 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx.i, align 4
  %mul.i.i = shl i32 %21, 3
  %add.ptr.i = getelementptr i8, ptr %19, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #13, !srcloc !114
  br label %qed_ptt_set_win.exit

qed_ptt_set_win.exit:                             ; preds = %do.end13.i, %if.then.qed_ptt_set_win.exit_crit_edge
  %22 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %23, 12
  %add.i = add i32 %mul.i, 4096
  br label %if.end

if.end:                                           ; preds = %qed_ptt_set_win.exit, %while.body.if.end_crit_edge
  %hw_offset.0 = phi i32 [ %add.i, %qed_ptt_set_win.exit ], [ %add, %while.body.if.end_crit_edge ]
  %div40 = lshr i32 %0, 2
  %add.ptr = getelementptr i8, ptr %addr, i32 %done.052
  %24 = ptrtoint ptr %regview.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regview.i, align 4
  %add.ptr3 = getelementptr i8, ptr %25, i32 %hw_offset.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %tobool7.not47 = icmp ult i32 %0, 4
  br i1 %to_device, label %while.cond6.preheader, label %while.cond11.preheader

while.cond11.preheader:                           ; preds = %if.end
  br i1 %tobool7.not47, label %while.cond11.preheader.if.end21_crit_edge, label %while.cond11.preheader.while.body14_crit_edge

while.cond11.preheader.while.body14_crit_edge:    ; preds = %while.cond11.preheader
  br label %while.body14

while.cond11.preheader.if.end21_crit_edge:        ; preds = %while.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

while.cond6.preheader:                            ; preds = %if.end
  br i1 %tobool7.not47, label %while.cond6.preheader.if.end21_crit_edge, label %while.cond6.preheader.do.body_crit_edge

while.cond6.preheader.do.body_crit_edge:          ; preds = %while.cond6.preheader
  br label %do.body

while.cond6.preheader.if.end21_crit_edge:         ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.cond6.preheader.do.body_crit_edge
  %dw_count.050 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %div40, %while.cond6.preheader.do.body_crit_edge ]
  %host_addr.049 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %add.ptr, %while.cond6.preheader.do.body_crit_edge ]
  %reg_addr.048 = phi ptr [ %incdec.ptr9, %do.body.do.body_crit_edge ], [ %add.ptr3, %while.cond6.preheader.do.body_crit_edge ]
  %dec = add i32 %dw_count.050, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  tail call void @arm_heavy_mb() #13
  %incdec.ptr = getelementptr i32, ptr %host_addr.049, i32 1
  %26 = ptrtoint ptr %host_addr.049 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_addr.049, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %incdec.ptr9 = getelementptr i32, ptr %reg_addr.048, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg_addr.048, i32 %28) #13, !srcloc !114
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %do.body.if.end21_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

while.body14:                                     ; preds = %while.body14.while.body14_crit_edge, %while.cond11.preheader.while.body14_crit_edge
  %dw_count.146 = phi i32 [ %dec12, %while.body14.while.body14_crit_edge ], [ %div40, %while.cond11.preheader.while.body14_crit_edge ]
  %host_addr.145 = phi ptr [ %incdec.ptr19, %while.body14.while.body14_crit_edge ], [ %add.ptr, %while.cond11.preheader.while.body14_crit_edge ]
  %reg_addr.144 = phi ptr [ %incdec.ptr15, %while.body14.while.body14_crit_edge ], [ %add.ptr3, %while.cond11.preheader.while.body14_crit_edge ]
  %dec12 = add i32 %dw_count.146, -1
  %incdec.ptr15 = getelementptr i32, ptr %reg_addr.144, i32 1
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg_addr.144) #13, !srcloc !116
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !120
  %incdec.ptr19 = getelementptr i32, ptr %host_addr.145, i32 1
  %31 = ptrtoint ptr %host_addr.145 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %host_addr.145, align 4
  %tobool13.not = icmp eq i32 %dec12, 0
  br i1 %tobool13.not, label %while.body14.if.end21_crit_edge, label %while.body14.while.body14_crit_edge

while.body14.while.body14_crit_edge:              ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body14

while.body14.if.end21_crit_edge:                  ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %while.body14.if.end21_crit_edge, %do.body.if.end21_crit_edge, %while.cond6.preheader.if.end21_crit_edge, %while.cond11.preheader.if.end21_crit_edge
  %add22 = add i32 %0, %done.052
  %cmp = icmp ult i32 %add22, %n
  br i1 %cmp, label %if.end21.while.body_crit_edge, label %if.end21.while.end23_crit_edge

if.end21.while.end23_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end23

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end23:                                      ; preds = %if.end21.while.end23_crit_edge, %entry.while.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_memcpy_to(ptr noundef %p_hwfn, ptr nocapture noundef %p_ptt, i32 noundef %hw_addr, ptr noundef %src, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end8_crit_edge, label %do.end, !prof !111

land.rhs.do.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool5.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool5.not, ptr @.str.4, ptr %name
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 273, ptr noundef nonnull %spec.select, i32 noundef %hw_addr, i32 noundef %hw_addr, ptr noundef %src, i32 noundef %n) #17
  br label %do.end8

do.end8:                                          ; preds = %do.end, %land.rhs.do.end8_crit_edge, %entry.do.end8_crit_edge
  tail call fastcc void @qed_memcpy_hw(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %src, i32 noundef %hw_addr, i32 noundef %n, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_fid_pretend(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef %p_ptt, i16 noundef zeroext %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %fid, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %and44 = and i16 %fid, 15
  %spec.select = select i1 %tobool.not, i16 %and44, i16 %fid
  %pretend = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1
  %control46 = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1, i32 1
  %1 = ptrtoint ptr %control46 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 224, ptr %control46, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %3 = ptrtoint ptr %pretend to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %pretend, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !121
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %pretend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pretend, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %7 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regview, align 4
  %idx.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %9 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %10, 3
  %add = or i32 %mul.i, 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #13, !srcloc !114
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_port_pretend(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef %p_ptt, i8 noundef zeroext %port_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %port_id to i16
  %shl = shl nuw nsw i16 %conv2, 2
  %0 = or i16 %shl, 8194
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  %pretend = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1
  %control23 = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1, i32 1
  %2 = ptrtoint ptr %control23 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %control23, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %pretend to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pretend, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %6 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regview, align 4
  %idx.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %8 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %9, 3
  %add = or i32 %mul.i, 4
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #13, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_port_unpretend(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef %p_ptt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pretend = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1
  %control22 = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1, i32 1
  %0 = ptrtoint ptr %control22 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 32, ptr %control22, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  tail call void @arm_heavy_mb() #13
  %1 = ptrtoint ptr %pretend to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pretend, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %4 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regview, align 4
  %idx.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %6 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %7, 3
  %add = or i32 %mul.i, 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #13, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_port_fid_pretend(ptr nocapture noundef readonly %p_hwfn, ptr nocapture noundef %p_ptt, i8 noundef zeroext %port_id, i16 noundef zeroext %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %fid, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %and45 = and i16 %fid, 15
  %spec.select = select i1 %tobool.not, i16 %and45, i16 %fid
  %conv2 = zext i8 %port_id to i16
  %shl = shl nuw nsw i16 %conv2, 2
  %1 = or i16 %shl, -8190
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %pretend = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1
  %control47 = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %control47 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %control47, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %5 = ptrtoint ptr %pretend to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %pretend, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !124
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %pretend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pretend, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %regview = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %9 = ptrtoint ptr %regview to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regview, align 4
  %idx.i = getelementptr inbounds %struct.qed_ptt, ptr %p_ptt, i32 0, i32 1
  %11 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx.i, align 4
  %mul.i = shl i32 %12, 3
  %add = or i32 %mul.i, 4
  %add.ptr = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #13, !srcloc !114
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_vfid_to_concrete(ptr nocapture noundef readonly %p_hwfn, i8 noundef zeroext %vfid) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %0 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rel_pf_id, align 1
  %conv5 = zext i8 %vfid to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %conv7.masked = zext i8 %1 to i32
  %and13 = or i32 %shl6, %conv7.masked
  %2 = or i32 %and13, 128
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @qed_dmae_idx_to_go_cmd(i8 noundef zeroext %idx) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %idx to i32
  %shl = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %shl, 49224
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dmae_info_alloc(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %completion_word_phys_addr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 2
  %p_intermediate_buffer = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 5
  %p_completion_word = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 3
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4, ptr noundef %completion_word_phys_addr, i32 noundef 3264, i32 noundef 0) #13
  %4 = ptrtoint ptr %p_completion_word to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %p_completion_word, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end:                                           ; preds = %entry
  %p_dmae_cmd = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 7
  %dmae_cmd_phys_addr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 6
  %5 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p_hwfn, align 8
  %pdev6 = getelementptr inbounds %struct.qed_dev, ptr %6, i32 0, i32 50
  %7 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev6, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i40 = tail call ptr @dma_alloc_attrs(ptr noundef %dev7, i32 noundef 56, ptr noundef %dmae_cmd_phys_addr, i32 noundef 3264, i32 noundef 0) #13
  %9 = ptrtoint ptr %p_dmae_cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i40, ptr %p_dmae_cmd, align 4
  %tobool9.not = icmp eq ptr %call.i40, null
  br i1 %tobool9.not, label %if.end.err_crit_edge, label %if.end11

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end11:                                         ; preds = %if.end
  %intermediate_buffer_phys_addr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 4
  %10 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_hwfn, align 8
  %pdev14 = getelementptr inbounds %struct.qed_dev, ptr %11, i32 0, i32 50
  %12 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev14, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call.i41 = tail call ptr @dma_alloc_attrs(ptr noundef %dev15, i32 noundef 32768, ptr noundef %intermediate_buffer_phys_addr, i32 noundef 3264, i32 noundef 0) #13
  %14 = ptrtoint ptr %p_intermediate_buffer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i41, ptr %p_intermediate_buffer, align 4
  %tobool17.not = icmp eq ptr %call.i41, null
  br i1 %tobool17.not, label %if.end11.err_crit_edge, label %if.end19

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %rel_pf_id = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %15 = ptrtoint ptr %rel_pf_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rel_pf_id, align 1
  %channel = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 1
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %channel, align 4
  br label %cleanup

err:                                              ; preds = %if.end11.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  tail call void @qed_dmae_info_free(ptr noundef %p_hwfn)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end19
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -12, %err ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_dmae_info_free(ptr noundef %p_hwfn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dmae_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %dmae_info, i32 noundef 0) #13
  %p_completion_word = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 3
  %0 = ptrtoint ptr %p_completion_word to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_completion_word, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %completion_word_phys_addr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 2
  %2 = ptrtoint ptr %completion_word_phys_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completion_word_phys_addr, align 4
  %4 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %5, i32 0, i32 50
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %1, i32 noundef %3, i32 noundef 0) #13
  %8 = ptrtoint ptr %p_completion_word to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %p_completion_word, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p_dmae_cmd = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 7
  %9 = ptrtoint ptr %p_dmae_cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_dmae_cmd, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end.if.end18_crit_edge, label %if.then9

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %dmae_cmd_phys_addr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 6
  %11 = ptrtoint ptr %dmae_cmd_phys_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmae_cmd_phys_addr, align 4
  %13 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p_hwfn, align 8
  %pdev12 = getelementptr inbounds %struct.qed_dev, ptr %14, i32 0, i32 50
  %15 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev12, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 56, ptr noundef nonnull %10, i32 noundef %12, i32 noundef 0) #13
  %17 = ptrtoint ptr %p_dmae_cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %p_dmae_cmd, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then9, %if.end.if.end18_crit_edge
  %p_intermediate_buffer = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 5
  %18 = ptrtoint ptr %p_intermediate_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_intermediate_buffer, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %if.end18.if.end30_crit_edge, label %if.then21

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %intermediate_buffer_phys_addr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 4
  %20 = ptrtoint ptr %intermediate_buffer_phys_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intermediate_buffer_phys_addr, align 4
  %22 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p_hwfn, align 8
  %pdev24 = getelementptr inbounds %struct.qed_dev, ptr %23, i32 0, i32 50
  %24 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev24, align 8
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev25, i32 noundef 32768, ptr noundef nonnull %19, i32 noundef %21, i32 noundef 0) #13
  %26 = ptrtoint ptr %p_intermediate_buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %p_intermediate_buffer, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end18.if.end30_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmae_info) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dmae_host2grc(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %source_addr, i32 noundef %grc_addr, i32 noundef %size_in_dwords, ptr noundef %p_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %div5 = lshr i32 %grc_addr, 2
  %dmae_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %dmae_info, i32 noundef 0) #13
  %conv = zext i32 %div5 to i64
  %call = tail call fastcc i32 @qed_dmae_execute_command(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %source_addr, i64 noundef %conv, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef %size_in_dwords, ptr noundef %p_params)
  tail call void @mutex_unlock(ptr noundef %dmae_info) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qed_dmae_execute_command(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %src_addr, i64 noundef %dst_addr, i8 noundef zeroext %src_type, i8 noundef zeroext %dst_type, i32 noundef %size_in_dwords, ptr noundef readonly %p_params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p_hwfn, align 8
  %recov_in_prog = getelementptr inbounds %struct.qed_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %recov_in_prog, align 8, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end15, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %6 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_module, align 4
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !111

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool8.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool8.not, ptr @.str.4, ptr %name
  %conv11 = zext i8 %src_type to i32
  %conv12 = zext i8 %dst_type to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 688, ptr noundef nonnull %spec.select, i64 noundef %src_addr, i32 noundef %conv11, i64 noundef %dst_addr, i32 noundef %conv12, i32 noundef %size_in_dwords) #17
  br label %cleanup

if.end15:                                         ; preds = %entry
  %p_dmae_cmd = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 7
  %8 = ptrtoint ptr %p_dmae_cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p_dmae_cmd, align 4
  %completion_word_phys_addr = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 2
  %10 = ptrtoint ptr %completion_word_phys_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %completion_word_phys_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %src_type)
  %cmp17 = icmp eq i8 %src_type, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %dst_type)
  %cmp21 = icmp eq i8 %dst_type, 2
  %cmp.not.i = icmp eq ptr %p_params, null
  br i1 %cmp.not.i, label %if.end167.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end15
  %12 = ptrtoint ptr %p_params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_params, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not.i = icmp eq i32 %14, 0
  %src_pfid7.i = getelementptr inbounds %struct.qed_dmae_params, ptr %p_params, i32 0, i32 4
  %15 = select i1 %cmp21, i32 4, i32 2
  %rel_pf_id.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %shl15273.in.in.in.i = select i1 %tobool6.not.i, ptr %rel_pf_id.i, ptr %src_pfid7.i
  %16 = ptrtoint ptr %shl15273.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %shl15273.in.in.i = load i8, ptr %shl15273.in.in.in.i, align 1
  %shl15273.in.i = zext i8 %shl15273.in.in.i to i32
  %shl15273.i = shl nuw nsw i32 %shl15273.in.i, 20
  %conv16276.i = zext i1 %cmp17 to i32
  %17 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool39.not.i = icmp eq i32 %17, 0
  %dst_pfid41.i = getelementptr inbounds %struct.qed_dmae_params, ptr %p_params, i32 0, i32 5
  %rel_pf_id.sink.i = select i1 %tobool39.not.i, ptr %rel_pf_id.i, ptr %dst_pfid41.i
  %18 = ptrtoint ptr %rel_pf_id.sink.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %cond47.in264.i = load i8, ptr %rel_pf_id.sink.i, align 1
  %shl15.masked.i = and i32 %shl15273.i, 15728640
  %conv51.i = zext i8 %cond47.in264.i to i32
  %shl52.i = shl nuw i32 %conv51.i, 24
  %or17.masked.i = or i32 %15, %conv16276.i
  %19 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool78.not.i = icmp eq i32 %19, 0
  %spec.select.v.i = select i1 %tobool78.not.i, i32 256, i32 384
  %20 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool99.not.i = icmp eq i32 %20, 0
  %port_id101.i = getelementptr inbounds %struct.qed_dmae_params, ptr %p_params, i32 0, i32 3
  %port_id104.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 4
  %shl112312.pn.in.in.in.i = select i1 %tobool99.not.i, ptr %port_id104.i, ptr %port_id101.i
  %21 = ptrtoint ptr %shl112312.pn.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %shl112312.pn.in.in.i = load i8, ptr %shl112312.pn.in.in.in.i, align 1
  %shl112312.pn.in.i = zext i8 %shl112312.pn.in.in.i to i32
  %shl112312.pn.i = shl nuw nsw i32 %shl112312.pn.in.i, 18
  %and50.i = or i32 %or17.masked.i, %spec.select.v.i
  %or54.i = or i32 %and50.i, %shl15.masked.i
  %and87.i = or i32 %or54.i, %shl52.i
  %22 = or i32 %and87.i, %shl112312.pn.i
  %23 = or i32 %22, 32864
  %24 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool138.not.i = icmp eq i32 %24, 0
  br i1 %tobool138.not.i, label %land.lhs.true.i.land.lhs.true170.i_crit_edge, label %do.body140.i

land.lhs.true.i.land.lhs.true170.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true170.i

do.body140.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = or i32 %22, 268468320
  %src_vfid.i = getelementptr inbounds %struct.qed_dmae_params, ptr %p_params, i32 0, i32 1
  %26 = ptrtoint ptr %src_vfid.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %src_vfid.i, align 4
  %phi.cast.i = zext i8 %27 to i16
  br label %land.lhs.true170.i

if.end167.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %rel_pf_id279.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 2
  %28 = ptrtoint ptr %rel_pf_id279.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %cond10.in263280.i = load i8, ptr %rel_pf_id279.i, align 1
  %conv14281.i = zext i8 %cond10.in263280.i to i32
  %shl15282.i = shl nuw nsw i32 %conv14281.i, 20
  %29 = select i1 %cmp21, i32 4, i32 2
  %shl15.masked301.i = and i32 %shl15282.i, 15728640
  %shl52305.i = shl nuw i32 %conv14281.i, 24
  %or17.masked302.i = select i1 %cmp17, i32 33025, i32 33024
  %and50303.i = or i32 %29, %or17.masked302.i
  %or54306.i = or i32 %and50303.i, %shl52305.i
  %30 = or i32 %or54306.i, %shl15.masked301.i
  %port_id104316.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 4
  %31 = ptrtoint ptr %port_id104316.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %cond107.in265317.i = load i8, ptr %port_id104316.i, align 1
  %conv111318.i = zext i8 %cond107.in265317.i to i32
  %shl112319.i = shl nuw nsw i32 %conv111318.i, 18
  %or114320.i = or i32 %shl112319.i, %30
  %32 = or i32 %or114320.i, 96
  br label %do.body195.i

land.lhs.true170.i:                               ; preds = %do.body140.i, %land.lhs.true.i.land.lhs.true170.i_crit_edge
  %opcode_b.0.ph.i = phi i16 [ 255, %land.lhs.true.i.land.lhs.true170.i_crit_edge ], [ %phi.cast.i, %do.body140.i ]
  %opcode.1.ph.i = phi i32 [ %23, %land.lhs.true.i.land.lhs.true170.i_crit_edge ], [ %25, %do.body140.i ]
  %33 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool174.not.i = icmp eq i32 %33, 0
  br i1 %tobool174.not.i, label %land.lhs.true170.i.do.body195.i_crit_edge, label %do.body176.i

land.lhs.true170.i.do.body195.i_crit_edge:        ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body195.i

do.body176.i:                                     ; preds = %land.lhs.true170.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = or i32 %opcode.1.ph.i, 536870912
  %dst_vfid.i = getelementptr inbounds %struct.qed_dmae_params, ptr %p_params, i32 0, i32 2
  %35 = ptrtoint ptr %dst_vfid.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dst_vfid.i, align 1
  %conv187.i = zext i8 %36 to i16
  %shl188.i = shl nuw i16 %conv187.i, 8
  %or190.i = or i16 %shl188.i, %opcode_b.0.ph.i
  br label %qed_dmae_opcode.exit

do.body195.i:                                     ; preds = %land.lhs.true170.i.do.body195.i_crit_edge, %if.end167.i
  %opcode.1326.i = phi i32 [ %32, %if.end167.i ], [ %opcode.1.ph.i, %land.lhs.true170.i.do.body195.i_crit_edge ]
  %opcode_b.0324.i = phi i16 [ 255, %if.end167.i ], [ %opcode_b.0.ph.i, %land.lhs.true170.i.do.body195.i_crit_edge ]
  %conv201.i = or i16 %opcode_b.0324.i, -256
  br label %qed_dmae_opcode.exit

qed_dmae_opcode.exit:                             ; preds = %do.body195.i, %do.body176.i
  %opcode_b.1.i = phi i16 [ %or190.i, %do.body176.i ], [ %conv201.i, %do.body195.i ]
  %opcode.2.i = phi i32 [ %34, %do.body176.i ], [ %opcode.1326.i, %do.body195.i ]
  %37 = tail call i32 @llvm.bswap.i32(i32 %opcode.2.i) #13
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %9, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %opcode_b.1.i) #13
  %40 = ptrtoint ptr %p_dmae_cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p_dmae_cmd, align 4
  %opcode_b208.i = getelementptr inbounds %struct.dmae_cmd, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %opcode_b208.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %39, ptr %opcode_b208.i, align 2
  %43 = tail call i32 @llvm.bswap.i32(i32 %11)
  %comp_addr_lo = getelementptr inbounds %struct.dmae_cmd, ptr %9, i32 0, i32 7
  %44 = ptrtoint ptr %comp_addr_lo to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %comp_addr_lo, align 4
  %comp_addr_hi = getelementptr inbounds %struct.dmae_cmd, ptr %9, i32 0, i32 8
  %45 = ptrtoint ptr %comp_addr_hi to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %comp_addr_hi, align 4
  %comp_val = getelementptr inbounds %struct.dmae_cmd, ptr %9, i32 0, i32 9
  %46 = ptrtoint ptr %comp_val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1362034688, ptr %comp_val, align 4
  %div138 = lshr i32 %size_in_dwords, 13
  %47 = trunc i32 %size_in_dwords to i16
  %conv29 = and i16 %47, 8191
  %conv31 = and i32 %div138, 65535
  %intermediate_buffer_phys_addr.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 4
  %p_intermediate_buffer.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 5
  %channel.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 1
  %dp_level25.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %dp_module.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %name41.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %regview.i.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 12
  %p_completion_word.i.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dst_type)
  %cmp45.i = icmp eq i8 %dst_type, 0
  %48 = trunc i32 %div138 to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %qed_dmae_opcode.exit
  %conv30149 = phi i32 [ 0, %qed_dmae_opcode.exit ], [ %conv30, %for.inc.for.body_crit_edge ]
  %src_addr_split.0148 = phi i64 [ %src_addr, %qed_dmae_opcode.exit ], [ %src_addr_split.1, %for.inc.for.body_crit_edge ]
  %i.0147 = phi i16 [ 0, %qed_dmae_opcode.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %conv30149, 13
  br i1 %cmp.not.i, label %for.body.if.then41_crit_edge, label %land.lhs.true

for.body.if.then41_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

land.lhs.true:                                    ; preds = %for.body
  %49 = ptrtoint ptr %p_params to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p_params, align 4
  %and39 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true.if.then41_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true.if.then41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

if.then41:                                        ; preds = %land.lhs.true.if.then41_crit_edge, %for.body.if.then41_crit_edge
  br i1 %cmp17, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %conv46 = zext i32 %mul to i64
  %add = add i64 %conv46, %src_addr
  br label %if.end51

if.else:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %mul47 = shl nuw nsw i32 %conv30149, 15
  %conv48 = zext i32 %mul47 to i64
  %add49 = add i64 %conv48, %src_addr
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then45, %land.lhs.true.if.end51_crit_edge
  %src_addr_split.1 = phi i64 [ %src_addr_split.0148, %land.lhs.true.if.end51_crit_edge ], [ %add, %if.then45 ], [ %add49, %if.else ]
  %mul59 = shl nuw nsw i32 %conv30149, 15
  %conv56.pn.in = select i1 %cmp21, i32 %mul, i32 %mul59
  %conv56.pn = zext i32 %conv56.pn.in to i64
  %dst_addr_split.0 = add i64 %conv56.pn, %dst_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31, i32 %conv30149)
  %cmp65 = icmp eq i32 %conv31, %conv30149
  %cond72 = select i1 %cmp65, i16 %conv29, i16 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond72)
  %tobool74.not = icmp eq i16 %cond72, 0
  br i1 %tobool74.not, label %if.end51.for.inc_crit_edge, label %if.end76

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end76:                                         ; preds = %if.end51
  %conv77 = zext i16 %cond72 to i32
  %51 = ptrtoint ptr %intermediate_buffer_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %intermediate_buffer_phys_addr.i, align 4
  %53 = ptrtoint ptr %p_dmae_cmd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %p_dmae_cmd, align 4
  %55 = zext i8 %src_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i8 %src_type, label %if.end76.if.then80_crit_edge [
    i8 2, label %if.end76.sw.bb.i_crit_edge
    i8 1, label %if.end76.sw.bb.i_crit_edge180
    i8 0, label %sw.bb5.i
  ]

if.end76.sw.bb.i_crit_edge180:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end76.sw.bb.i_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end76.if.then80_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

sw.bb.i:                                          ; preds = %if.end76.sw.bb.i_crit_edge, %if.end76.sw.bb.i_crit_edge180
  %shr.i = lshr i64 %src_addr_split.1, 32
  %conv3.i = trunc i64 %shr.i to i32
  %56 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #13
  %src_addr_hi.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 2
  %57 = ptrtoint ptr %src_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %src_addr_hi.i, align 4
  %conv4.i = trunc i64 %src_addr_split.1 to i32
  %58 = tail call i32 @llvm.bswap.i32(i32 %conv4.i) #13
  %src_addr_lo.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %src_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %src_addr_lo.i, align 4
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  %src_addr_hi8.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 2
  %60 = ptrtoint ptr %src_addr_hi8.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %src_addr_hi8.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %52) #13
  %src_addr_lo10.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 1
  %62 = ptrtoint ptr %src_addr_lo10.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %src_addr_lo10.i, align 4
  %63 = ptrtoint ptr %p_intermediate_buffer.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %p_intermediate_buffer.i, align 4
  %conv12.i = trunc i64 %src_addr_split.1 to i32
  %65 = inttoptr i32 %conv12.i to ptr
  %mul.i = shl nuw nsw i32 %conv77, 2
  %66 = call ptr @memcpy(ptr %64, ptr %65, i32 %mul.i)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.bb.i
  %67 = zext i8 %dst_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %dst_type, label %sw.epilog.i.if.then80_crit_edge [
    i8 2, label %sw.epilog.i.sw.bb14.i_crit_edge
    i8 1, label %sw.epilog.i.sw.bb14.i_crit_edge181
    i8 0, label %sw.bb20.i
  ]

sw.epilog.i.sw.bb14.i_crit_edge181:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb14.i

sw.epilog.i.sw.bb14.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb14.i

sw.epilog.i.if.then80_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

sw.bb14.i:                                        ; preds = %sw.epilog.i.sw.bb14.i_crit_edge, %sw.epilog.i.sw.bb14.i_crit_edge181
  %shr15.i = lshr i64 %dst_addr_split.0, 32
  %conv17.i = trunc i64 %shr15.i to i32
  %68 = tail call i32 @llvm.bswap.i32(i32 %conv17.i) #13
  %dst_addr_hi.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 4
  %69 = ptrtoint ptr %dst_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %dst_addr_hi.i, align 4
  %conv19.i = trunc i64 %dst_addr_split.0 to i32
  br label %sw.epilog27.i

sw.bb20.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %dst_addr_hi23.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 4
  %70 = ptrtoint ptr %dst_addr_hi23.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %dst_addr_hi23.i, align 4
  br label %sw.epilog27.i

sw.epilog27.i:                                    ; preds = %sw.bb20.i, %sw.bb14.i
  %.sink94.i = phi i32 [ %52, %sw.bb20.i ], [ %conv19.i, %sw.bb14.i ]
  %71 = tail call i32 @llvm.bswap.i32(i32 %.sink94.i) #13
  %dst_addr_lo25.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 3
  %72 = ptrtoint ptr %dst_addr_lo25.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %dst_addr_lo25.i, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %cond72) #13
  %length_dw29.i = getelementptr inbounds %struct.dmae_cmd, ptr %54, i32 0, i32 5
  %74 = ptrtoint ptr %length_dw29.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %length_dw29.i, align 4
  %75 = ptrtoint ptr %p_dmae_cmd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %p_dmae_cmd, align 4
  %77 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %channel.i.i, align 4
  %dst_addr_lo.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %dst_addr_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dst_addr_lo.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.epilog27.i.lor.lhs.false.i.i_crit_edge

sw.epilog27.i.lor.lhs.false.i.i_crit_edge:        ; preds = %sw.epilog27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %sw.epilog27.i
  %dst_addr_hi.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 4
  %81 = ptrtoint ptr %dst_addr_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dst_addr_hi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool2.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.body.i.i_crit_edge, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.i

land.lhs.true.i.i.do.body.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %sw.epilog27.i.lor.lhs.false.i.i_crit_edge
  %src_addr_lo.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 1
  %83 = ptrtoint ptr %src_addr_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %src_addr_lo.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool3.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true4.i.i, label %lor.lhs.false.i.i.do.body24.i.i_crit_edge

lor.lhs.false.i.i.do.body24.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24.i.i

land.lhs.true4.i.i:                               ; preds = %lor.lhs.false.i.i
  %src_addr_hi.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 2
  %85 = ptrtoint ptr %src_addr_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %src_addr_hi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool5.not.i.i = icmp eq i32 %86, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true4.i.i.do.body.i.i_crit_edge, label %land.lhs.true4.i.i.do.body24.i.i_crit_edge

land.lhs.true4.i.i.do.body24.i.i_crit_edge:       ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24.i.i

land.lhs.true4.i.i.do.body.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.lhs.true4.i.i.do.body.i.i_crit_edge, %land.lhs.true.i.i.do.body.i.i_crit_edge
  %87 = ptrtoint ptr %dp_level25.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dp_level25.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %88)
  %cmp.i.i = icmp ult i8 %88, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.qed_dmae_post_command.exit.i_crit_edge, !prof !112

do.body.i.i.qed_dmae_post_command.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_dmae_post_command.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv14.i.i = zext i8 %78 to i32
  %89 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %76, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #13
  %opcode_b.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 6
  %92 = ptrtoint ptr %opcode_b.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %opcode_b.i.i, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #13
  %conv15.i.i = zext i16 %94 to i32
  %length_dw.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 5
  %95 = ptrtoint ptr %length_dw.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %length_dw.i.i, align 4
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #13
  %conv16.i.i = zext i16 %97 to i32
  %src_addr_hi17.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 2
  %98 = ptrtoint ptr %src_addr_hi17.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %src_addr_hi17.i.i, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #13
  %src_addr_lo18.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 1
  %101 = ptrtoint ptr %src_addr_lo18.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %src_addr_lo18.i.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #13
  %dst_addr_hi19.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 4
  %104 = ptrtoint ptr %dst_addr_hi19.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dst_addr_hi19.i.i, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #13
  %107 = tail call i32 @llvm.bswap.i32(i32 %80) #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 466, ptr noundef nonnull %name41.i.i, i32 noundef %conv14.i.i, i32 noundef %91, i32 noundef %conv15.i.i, i32 noundef %conv16.i.i, i32 noundef %100, i32 noundef %103, i32 noundef %106, i32 noundef %107) #17
  br label %qed_dmae_post_command.exit.i

do.body24.i.i:                                    ; preds = %land.lhs.true4.i.i.do.body24.i.i_crit_edge, %lor.lhs.false.i.i.do.body24.i.i_crit_edge
  %108 = ptrtoint ptr %dp_level25.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %dp_level25.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp27.i.i = icmp eq i8 %109, 0
  br i1 %cmp27.i.i, label %land.rhs.i.i, label %do.body24.i.i.do.end63.i.i_crit_edge

do.body24.i.i.do.end63.i.i_crit_edge:             ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end63.i.i

land.rhs.i.i:                                     ; preds = %do.body24.i.i
  %110 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool29.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool29.not.i.i, label %land.rhs.i.i.do.end63.i.i_crit_edge, label %do.end39.i.i, !prof !111

land.rhs.i.i.do.end63.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end63.i.i

do.end39.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv50.i.i = zext i8 %78 to i32
  %112 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %76, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #13
  %opcode_b52.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 6
  %115 = ptrtoint ptr %opcode_b52.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %opcode_b52.i.i, align 2
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #13
  %conv53.i.i = zext i16 %117 to i32
  %length_dw54.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 5
  %118 = ptrtoint ptr %length_dw54.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %length_dw54.i.i, align 4
  %120 = tail call i16 @llvm.bswap.i16(i16 %119) #13
  %conv55.i.i = zext i16 %120 to i32
  %src_addr_hi56.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 2
  %121 = ptrtoint ptr %src_addr_hi56.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %src_addr_hi56.i.i, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #13
  %124 = tail call i32 @llvm.bswap.i32(i32 %84) #13
  %dst_addr_hi58.i.i = getelementptr inbounds %struct.dmae_cmd, ptr %76, i32 0, i32 4
  %125 = ptrtoint ptr %dst_addr_hi58.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dst_addr_hi58.i.i, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #13
  %128 = tail call i32 @llvm.bswap.i32(i32 %80) #13
  %call60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 481, ptr noundef nonnull %name41.i.i, i32 noundef %conv50.i.i, i32 noundef %114, i32 noundef %conv53.i.i, i32 noundef %conv55.i.i, i32 noundef %123, i32 noundef %124, i32 noundef %127, i32 noundef %128) #17
  br label %do.end63.i.i

do.end63.i.i:                                     ; preds = %do.end39.i.i, %land.rhs.i.i.do.end63.i.i_crit_edge, %do.body24.i.i.do.end63.i.i_crit_edge
  %conv75.i.i = zext i8 %78 to i32
  %mul76.i.i = mul nuw nsw i32 %conv75.i.i, 56
  %add.i.i = add nuw nsw i32 %mul76.i.i, 51200
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %qed_wr.exit.i.i.for.body.i.i_crit_edge, %do.end63.i.i
  %indvars.iv.i.i = phi i32 [ 0, %do.end63.i.i ], [ %indvars.iv.next.i.i, %qed_wr.exit.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %indvars.iv.i.i)
  %cmp68.i.i = icmp ult i32 %indvars.iv.i.i, 9
  br i1 %cmp68.i.i, label %cond.true70.i.i, label %for.body.i.i.cond.end73.i.i_crit_edge

for.body.i.i.cond.end73.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end73.i.i

cond.true70.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr i32, ptr %76, i32 %indvars.iv.i.i
  %129 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr.i.i, align 4
  br label %cond.end73.i.i

cond.end73.i.i:                                   ; preds = %cond.true70.i.i, %for.body.i.i.cond.end73.i.i_crit_edge
  %cond74.i.i = phi i32 [ %130, %cond.true70.i.i ], [ 0, %for.body.i.i.cond.end73.i.i_crit_edge ]
  %mul78.i.i = shl nuw nsw i32 %indvars.iv.i.i, 2
  %add79.i.i = add nuw nsw i32 %add.i.i, %mul78.i.i
  %call.i.i.i = tail call fastcc i32 @qed_set_ptt(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add79.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @arm_heavy_mb() #13
  %131 = tail call i32 @llvm.bswap.i32(i32 %cond74.i.i) #13
  %132 = ptrtoint ptr %regview.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regview.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %133, i32 %call.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %131) #13, !srcloc !114
  %134 = ptrtoint ptr %dp_level25.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %dp_level25.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp.i.i.i = icmp eq i8 %135, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %cond.end73.i.i.qed_wr.exit.i.i_crit_edge

cond.end73.i.i.qed_wr.exit.i.i_crit_edge:         ; preds = %cond.end73.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_wr.exit.i.i

land.rhs.i.i.i:                                   ; preds = %cond.end73.i.i
  %136 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %dp_module.i.i, align 4
  %and.i.i.i = and i32 %137, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.qed_wr.exit.i.i_crit_edge, label %do.end7.i.i.i, !prof !111

land.rhs.i.i.i.qed_wr.exit.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_wr.exit.i.i

do.end7.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call11.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 208, ptr noundef nonnull %name41.i.i, i32 noundef %call.i.i.i, i32 noundef %add79.i.i, i32 noundef %cond74.i.i) #17
  br label %qed_wr.exit.i.i

qed_wr.exit.i.i:                                  ; preds = %do.end7.i.i.i, %land.rhs.i.i.i.qed_wr.exit.i.i_crit_edge, %cond.end73.i.i.qed_wr.exit.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 14
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %qed_wr.exit.i.i.for.body.i.i_crit_edge

qed_wr.exit.i.i.for.body.i.i_crit_edge:           ; preds = %qed_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %qed_wr.exit.i.i
  %shl.i.i.i = shl nuw nsw i32 %conv75.i.i, 2
  %add.i.i.i = add nuw nsw i32 %shl.i.i.i, 49224
  %call.i2.i.i = tail call fastcc i32 @qed_set_ptt(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %add.i.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !115
  tail call void @arm_heavy_mb() #13
  %138 = ptrtoint ptr %regview.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regview.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %139, i32 %call.i2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 16777216) #13, !srcloc !114
  %140 = ptrtoint ptr %dp_level25.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %dp_level25.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp.i6.i.i = icmp eq i8 %141, 0
  br i1 %cmp.i6.i.i, label %land.rhs.i10.i.i, label %for.end.i.i.qed_dmae_post_command.exit.i_crit_edge

for.end.i.i.qed_dmae_post_command.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_dmae_post_command.exit.i

land.rhs.i10.i.i:                                 ; preds = %for.end.i.i
  %142 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dp_module.i.i, align 4
  %and.i8.i.i = and i32 %143, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.rhs.i10.i.i.qed_dmae_post_command.exit.i_crit_edge, label %do.end7.i13.i.i, !prof !111

land.rhs.i10.i.i.qed_dmae_post_command.exit.i_crit_edge: ; preds = %land.rhs.i10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %qed_dmae_post_command.exit.i

do.end7.i13.i.i:                                  ; preds = %land.rhs.i10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call11.i12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 208, ptr noundef nonnull %name41.i.i, i32 noundef %call.i2.i.i, i32 noundef %add.i.i.i, i32 noundef 1) #17
  br label %qed_dmae_post_command.exit.i

qed_dmae_post_command.exit.i:                     ; preds = %do.end7.i13.i.i, %land.rhs.i10.i.i.qed_dmae_post_command.exit.i_crit_edge, %for.end.i.i.qed_dmae_post_command.exit.i_crit_edge, %do.end.i.i, %do.body.i.i.qed_dmae_post_command.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !125
  %144 = ptrtoint ptr %p_completion_word.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %p_completion_word.i.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53678, i32 %147)
  %cmp.not33.i.i = icmp eq i32 %147, 53678
  br i1 %cmp.not33.i.i, label %qed_dmae_post_command.exit.i.if.end43.i_crit_edge, label %qed_dmae_post_command.exit.i.while.body.i.i_crit_edge

qed_dmae_post_command.exit.i.while.body.i.i_crit_edge: ; preds = %qed_dmae_post_command.exit.i
  br label %while.body.i.i

qed_dmae_post_command.exit.i.if.end43.i_crit_edge: ; preds = %qed_dmae_post_command.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

while.body.i.i:                                   ; preds = %if.end16.i.i.while.body.i.i_crit_edge, %qed_dmae_post_command.exit.i.while.body.i.i_crit_edge
  %wait_cnt.034.i.i = phi i32 [ %inc.i.i, %if.end16.i.i.while.body.i.i_crit_edge ], [ 0, %qed_dmae_post_command.exit.i.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 429496) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %wait_cnt.034.i.i)
  %exitcond.i.i = icmp eq i32 %wait_cnt.034.i.i, 10000
  br i1 %exitcond.i.i, label %do.body.i87.i, label %if.end16.i.i

do.body.i87.i:                                    ; preds = %while.body.i.i
  %149 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %p_hwfn, align 8
  %dp_level.i86.i = getelementptr inbounds %struct.qed_dev, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %dp_level.i86.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %dp_level.i86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %152)
  %cmp2.i.i = icmp ult i8 %152, 3
  br i1 %cmp2.i.i, label %do.end.i90.i, label %do.body.i87.i.do.body.i_crit_edge, !prof !112

do.body.i87.i.do.body.i_crit_edge:                ; preds = %do.body.i87.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.end.i90.i:                                     ; preds = %do.body.i87.i
  call void @__sanitizer_cov_trace_pc() #15
  %name.i88.i = getelementptr inbounds %struct.qed_dev, ptr %150, i32 0, i32 2
  %153 = ptrtoint ptr %p_completion_word.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %p_completion_word.i.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %call.i89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 585, ptr noundef nonnull %name.i88.i, i32 noundef %156, i32 noundef 53678) #17
  br label %do.body.i

if.end16.i.i:                                     ; preds = %while.body.i.i
  %inc.i.i = add nuw nsw i32 %wait_cnt.034.i.i, 1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !126
  %157 = ptrtoint ptr %p_completion_word.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %p_completion_word.i.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %cmp.not.i.i = icmp eq i32 %160, 53678
  br i1 %cmp.not.i.i, label %if.end16.i.i.if.end43.i_crit_edge, label %if.end16.i.i.while.body.i.i_crit_edge

if.end16.i.i.while.body.i.i_crit_edge:            ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end16.i.i.if.end43.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

do.body.i:                                        ; preds = %do.end.i90.i, %do.body.i87.i.do.body.i_crit_edge
  %161 = ptrtoint ptr %dp_level25.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %dp_level25.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %162)
  %cmp.i = icmp ult i8 %162, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.if.then80_crit_edge, !prof !112

do.body.i.if.then80_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 656, ptr noundef nonnull %name41.i.i, i64 noundef %src_addr_split.1, i64 noundef %dst_addr_split.0, i32 noundef %conv77) #17
  br label %if.then80

if.end43.i:                                       ; preds = %if.end16.i.i.if.end43.i_crit_edge, %qed_dmae_post_command.exit.i.if.end43.i_crit_edge
  %163 = ptrtoint ptr %p_completion_word.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %p_completion_word.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %164, align 4
  br i1 %cmp45.i, label %if.then47.i, label %if.end43.i.for.inc_crit_edge

if.end43.i.for.inc_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv48.i = trunc i64 %dst_addr_split.0 to i32
  %166 = inttoptr i32 %conv48.i to ptr
  %167 = ptrtoint ptr %p_intermediate_buffer.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %p_intermediate_buffer.i, align 4
  %mul52.i = shl nuw nsw i32 %conv77, 2
  %169 = call ptr @memcpy(ptr %166, ptr %168, i32 %mul52.i)
  br label %for.inc

if.then80:                                        ; preds = %do.end.i, %do.body.i.if.then80_crit_edge, %sw.epilog.i.if.then80_crit_edge, %if.end76.if.then80_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %do.body.i.if.then80_crit_edge ], [ -16, %do.end.i ], [ -22, %sw.epilog.i.if.then80_crit_edge ], [ -22, %if.end76.if.then80_crit_edge ]
  tail call void (ptr, ptr, i32, ptr, ...) @qed_hw_err_notify(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef 3, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i.ph, i64 noundef %src_addr, i64 noundef %dst_addr, i32 noundef %conv77) #18
  br label %cleanup

for.inc:                                          ; preds = %if.then47.i, %if.end43.i.for.inc_crit_edge, %if.end51.for.inc_crit_edge
  %inc = add i16 %i.0147, 1
  %conv30 = zext i16 %inc to i32
  %cmp32.not = icmp ugt i16 %inc, %48
  br i1 %cmp32.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then80, %do.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %land.rhs.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then80 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dmae_grc2host(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %grc_addr, i32 noundef %dest_addr, i32 noundef %size_in_dwords, ptr noundef %p_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %div6 = lshr i32 %grc_addr, 2
  %dmae_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %dmae_info, i32 noundef 0) #13
  %conv = zext i32 %div6 to i64
  %conv1 = zext i32 %dest_addr to i64
  %call = tail call fastcc i32 @qed_dmae_execute_command(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv, i64 noundef %conv1, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %size_in_dwords, ptr noundef %p_params)
  tail call void @mutex_unlock(ptr noundef %dmae_info) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dmae_host2host(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %source_addr, i32 noundef %dest_addr, i32 noundef %size_in_dwords, ptr noundef %p_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dmae_info = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48
  tail call void @mutex_lock_nested(ptr noundef %dmae_info, i32 noundef 0) #13
  %conv = zext i32 %source_addr to i64
  %conv1 = zext i32 %dest_addr to i64
  %call = tail call fastcc i32 @qed_dmae_execute_command(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv, i64 noundef %conv1, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %size_in_dwords, ptr noundef %p_params)
  tail call void @mutex_unlock(ptr noundef %dmae_info) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_hw_err_notify(ptr noundef %p_hwfn, ptr noundef %p_ptt, i32 noundef %err_type, ptr noundef readonly %fmt, ...) local_unnamed_addr #9 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %vl = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vl) #13
  %1 = ptrtoint ptr %vl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %vl, align 4, !annotation !127
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.va_start(ptr nonnull %vl)
  %2 = ptrtoint ptr %vl to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %vl, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 256, ptr noundef nonnull %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %vl)
  %3 = call i32 @llvm.smin.i32(i32 %call, i32 255)
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp2 = icmp ult i8 %5, 3
  br i1 %cmp2, label %do.end, label %if.then.if.end17_crit_edge, !prof !112

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool9.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool9.not, ptr @.str.4, ptr %name
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 830, ptr noundef nonnull %spec.select, ptr noundef nonnull %buf) #17
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %len.0 = phi i32 [ %3, %do.end ], [ %3, %if.then.if.end17_crit_edge ], [ -1, %entry.if.end17_crit_edge ]
  %6 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_hwfn, align 8
  %recov_in_prog = getelementptr inbounds %struct.qed_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %recov_in_prog, align 8, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_type)
  %cmp20.not = icmp eq i32 %err_type, 0
  %or.cond = or i1 %cmp20.not, %tobool18.not
  br i1 %or.cond, label %if.end53, label %do.body23

do.body23:                                        ; preds = %if.end17
  %dp_level24 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level24, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp26 = icmp eq i8 %11, 0
  br i1 %cmp26, label %land.rhs, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.rhs:                                         ; preds = %do.body23
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.rhs.cleanup_crit_edge, label %do.end38, !prof !111

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end38:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name40 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool42.not = icmp eq ptr %name40, null
  %spec.select75 = select i1 %tobool42.not, ptr @.str.4, ptr %name40
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef 839, ptr noundef nonnull %spec.select75, i32 noundef %err_type) #17
  br label %cleanup

if.end53:                                         ; preds = %if.end17
  call void @qed_hw_error_occurred(ptr noundef %p_hwfn, i32 noundef %err_type) #13
  br i1 %tobool.not, label %if.end53.cleanup_crit_edge, label %if.then55

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = call i32 @qed_mcp_send_raw_debug_data(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef nonnull %buf, i32 noundef %len.0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end53.cleanup_crit_edge, %do.end38, %land.rhs.cleanup_crit_edge, %do.body23.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vl) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_hw_error_occurred(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_send_raw_debug_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_dmae_sanity(ptr noundef %p_hwfn, ptr noundef %p_ptt, ptr noundef %phase) local_unnamed_addr #0 align 64 {
entry:
  %p_phys = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_phys) #13
  %0 = ptrtoint ptr %p_phys to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %p_phys, align 4, !annotation !127
  %1 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p_hwfn, align 8
  %pdev = getelementptr inbounds %struct.qed_dev, ptr %2, i32 0, i32 50
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef nonnull %p_phys, i32 noundef 3264, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call.i, i32 2048
  %cmp13197 = icmp ult ptr %call.i, %add.ptr
  br i1 %cmp13197, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp ult i8 %6, 3
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !112

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool6.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool6.not, ptr @.str.4, ptr %name
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 863, ptr noundef nonnull %spec.select, ptr noundef %phase) #17
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p_tmp.0198 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call.i, %for.cond.preheader.for.body_crit_edge ]
  %7 = ptrtoint ptr %p_tmp.0198 to i32
  %8 = ptrtoint ptr %p_tmp.0198 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_tmp.0198, align 4
  %incdec.ptr = getelementptr i32, ptr %p_tmp.0198, i32 1
  %cmp13 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = call ptr @memset(ptr %add.ptr, i32 0, i32 2048)
  %dp_level17 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 7
  %10 = ptrtoint ptr %dp_level17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp19 = icmp eq i8 %11, 0
  br i1 %cmp19, label %land.rhs, label %for.end.do.end48_crit_edge

for.end.do.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48

land.rhs:                                         ; preds = %for.end
  %dp_module = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 6
  %12 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dp_module, align 4
  %and = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %land.rhs.do.end48_crit_edge, label %do.end31, !prof !111

land.rhs.do.end48_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end48

do.end31:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %name33 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool35.not = icmp eq ptr %name33, null
  %spec.select191 = select i1 %tobool35.not, ptr @.str.4, ptr %name33
  %14 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_phys, align 4
  %conv42 = zext i32 %15 to i64
  %add = add i32 %15, 2048
  %conv43 = zext i32 %add to i64
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 883, ptr noundef nonnull %spec.select191, ptr noundef %phase, i64 noundef %conv42, ptr noundef nonnull %call.i, i64 noundef %conv43, ptr noundef %add.ptr, i32 noundef 2048) #17
  br label %do.end48

do.end48:                                         ; preds = %do.end31, %land.rhs.do.end48_crit_edge, %for.end.do.end48_crit_edge
  %16 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p_phys, align 4
  %add49 = add i32 %17, 2048
  %dmae_info.i = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 48
  call void @mutex_lock_nested(ptr noundef %dmae_info.i, i32 noundef 0) #13
  %conv.i = zext i32 %17 to i64
  %conv1.i = zext i32 %add49 to i64
  %call.i194 = call fastcc i32 @qed_dmae_execute_command(ptr noundef %p_hwfn, ptr noundef %p_ptt, i64 noundef %conv.i, i64 noundef %conv1.i, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 512, ptr noundef null) #13
  call void @mutex_unlock(ptr noundef %dmae_info.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool51.not = icmp eq i32 %call.i194, 0
  br i1 %tobool51.not, label %for.cond84.preheader, label %do.body53

for.cond84.preheader:                             ; preds = %do.end48
  %add.ptr86 = getelementptr i8, ptr %call.i, i32 4096
  %cmp87199 = icmp ult ptr %add.ptr, %add.ptr86
  br i1 %cmp87199, label %for.cond84.preheader.for.body89_crit_edge, label %for.cond84.preheader.out_crit_edge

for.cond84.preheader.out_crit_edge:               ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.cond84.preheader.for.body89_crit_edge:        ; preds = %for.cond84.preheader
  br label %for.body89

do.body53:                                        ; preds = %do.end48
  %18 = ptrtoint ptr %dp_level17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp56 = icmp ult i8 %19, 3
  br i1 %cmp56, label %do.end67, label %do.body53.out_crit_edge, !prof !112

do.body53.out_crit_edge:                          ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end67:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #15
  %name69 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool71.not = icmp eq ptr %name69, null
  %spec.select192 = select i1 %tobool71.not, ptr @.str.4, ptr %name69
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef 890, ptr noundef nonnull %spec.select192, ptr noundef %phase, i32 noundef %call.i194) #17
  br label %out

for.body89:                                       ; preds = %for.inc126.for.body89_crit_edge, %for.cond84.preheader.for.body89_crit_edge
  %p_tmp.1200 = phi ptr [ %incdec.ptr127, %for.inc126.for.body89_crit_edge ], [ %add.ptr, %for.cond84.preheader.for.body89_crit_edge ]
  %20 = ptrtoint ptr %p_tmp.1200 to i32
  %sub = add i32 %20, -2048
  %21 = ptrtoint ptr %p_tmp.1200 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p_tmp.1200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %sub)
  %cmp90.not = icmp eq i32 %22, %sub
  br i1 %cmp90.not, label %for.inc126, label %do.body93

do.body93:                                        ; preds = %for.body89
  %23 = ptrtoint ptr %dp_level17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dp_level17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp96 = icmp ult i8 %24, 3
  br i1 %cmp96, label %do.end107, label %do.body93.out_crit_edge, !prof !112

do.body93.out_crit_edge:                          ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end107:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %p_tmp.1200 to i32
  %name109 = getelementptr inbounds %struct.qed_hwfn, ptr %p_hwfn, i32 0, i32 8
  %tobool111.not = icmp eq ptr %name109, null
  %spec.select193 = select i1 %tobool111.not, ptr @.str.4, ptr %name109
  %26 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p_phys, align 4
  %conv118 = zext i32 %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %call.i to i32
  %sub.ptr.sub = sub i32 %25, %sub.ptr.rhs.cast
  %conv119 = sext i32 %sub.ptr.sub to i64
  %add120 = add nsw i64 %conv118, %conv119
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, i32 noundef 905, ptr noundef nonnull %spec.select193, ptr noundef %phase, i64 noundef %add120, ptr noundef %p_tmp.1200, i32 noundef %22, i32 noundef %sub) #17
  br label %out

for.inc126:                                       ; preds = %for.body89
  %incdec.ptr127 = getelementptr i32, ptr %p_tmp.1200, i32 1
  %cmp87 = icmp ult ptr %incdec.ptr127, %add.ptr86
  br i1 %cmp87, label %for.inc126.for.body89_crit_edge, label %for.inc126.out_crit_edge

for.inc126.out_crit_edge:                         ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc126.for.body89_crit_edge:                  ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body89

out:                                              ; preds = %for.inc126.out_crit_edge, %do.end107, %do.body93.out_crit_edge, %do.end67, %do.body53.out_crit_edge, %for.cond84.preheader.out_crit_edge
  %rc.0 = phi i32 [ %call.i194, %do.end67 ], [ %call.i194, %do.body53.out_crit_edge ], [ -22, %do.end107 ], [ -22, %do.body93.out_crit_edge ], [ 0, %for.cond84.preheader.out_crit_edge ], [ 0, %for.inc126.out_crit_edge ]
  %28 = ptrtoint ptr %p_hwfn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p_hwfn, align 8
  %pdev130 = getelementptr inbounds %struct.qed_dev, ptr %29, i32 0, i32 50
  %30 = ptrtoint ptr %pdev130 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev130, align 8
  %dev131 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %p_phys to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p_phys, align 4
  call void @dma_free_attrs(ptr noundef %dev131, i32 noundef 4096, ptr noundef nonnull %call.i, i32 noundef %33, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -12, %do.end ], [ -12, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_phys) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @qed_ptt_pool_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 64, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 102, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qed_ptt_acquire._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @qed_ptt_acquire._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 111, i32 2}
!12 = !{ptr @qed_ptt_acquire._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @qed_ptt_acquire._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 151, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @qed_ptt_set_win._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @qed_ptt_set_win._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 191, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qed_get_reserved_ptt._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qed_get_reserved_ptt._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 206, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @qed_wr._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @qed_wr._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 218, i32 2}
!31 = !{ptr @qed_rd._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qed_rd._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 261, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qed_memcpy_from._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @qed_memcpy_from._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 271, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qed_memcpy_to._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @qed_memcpy_to._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 830, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qed_hw_err_notify._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @qed_hw_err_notify._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 836, i32 3}
!50 = !{ptr @qed_hw_err_notify._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qed_hw_err_notify._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 861, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qed_dmae_sanity._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @qed_dmae_sanity._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 878, i32 2}
!59 = !{ptr @qed_dmae_sanity._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @qed_dmae_sanity._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 888, i32 3}
!63 = !{ptr @qed_dmae_sanity._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @qed_dmae_sanity._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 901, i32 4}
!67 = !{ptr @qed_dmae_sanity._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @qed_dmae_sanity._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 173, i32 3}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @qed_set_ptt._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @qed_set_ptt._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 684, i32 3}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qed_dmae_execute_command._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @qed_dmae_execute_command._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 740, i32 8}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 654, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @qed_dmae_execute_sub_operation._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @qed_dmae_execute_sub_operation._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 456, i32 3}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @qed_dmae_post_command._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @qed_dmae_post_command._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 471, i32 2}
!93 = !{ptr @qed_dmae_post_command._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @qed_dmae_post_command._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/qed/qed_hw.c", i32 582, i32 4}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qed_dmae_operation_wait._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qed_dmae_operation_wait._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.peeled.count", i32 4}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2157579334}
!114 = !{i64 708547}
!115 = !{i64 2157585496}
!116 = !{i64 708965}
!117 = !{i64 2157589439}
!118 = !{i8 0, i8 2}
!119 = !{i64 2157594390}
!120 = !{i64 2157595206}
!121 = !{i64 2157604059}
!122 = !{i64 2157606393}
!123 = !{i64 2157608721}
!124 = !{i64 2157612200}
!125 = !{i64 2157636723}
!126 = !{i64 2157640557}
!127 = !{!"auto-init"}
