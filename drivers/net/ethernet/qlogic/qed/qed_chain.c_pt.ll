; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_chain.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_chain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_chain = type { ptr, ptr, %struct.anon.128, %union.anon.130, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.131, ptr, i32, i32, i32, i8 }
%struct.anon.128 = type { ptr, %union.anon.129 }
%union.anon.129 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.130 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.131 = type { ptr, i32, i32 }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.102, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
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
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.102 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.101 = type { ptr }
%struct.qed_chain_next = type { %struct.regpair, ptr }
%struct.regpair = type { i32, i32 }
%struct.addr_tbl_entry = type { ptr, i32 }
%struct.qed_chain_init_params = type { i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.qed_chain_u16 = type { i16, i16 }
%struct.qed_chain_pbl_u16 = type { i16, i16 }

@qed_chain_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Cannot allocate a chain with the given arguments:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qed_chain_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/qlogic/qed/qed_chain.c\00", [52 x i8] zeroinitializer }, align 32
@qed_chain_alloc._entry_ptr = internal global ptr @qed_chain_alloc._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_chain_alloc._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\015[%s:%d(%s)][use_mode %d, mode %d, cnt_type %d, num_elems %d, elem_size %zu, page_size %u]\0A\00", [35 x i8] zeroinitializer }, align 32
@qed_chain_alloc._entry_ptr.6 = internal global ptr @qed_chain_alloc._entry.4, section ".printk_index", align 4
@qed_chain_alloc_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\015[%s:%d(%s)]The actual chain size (0x%llx) is larger than the maximal possible value\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qed_chain_alloc_sanity_check\00", [35 x i8] zeroinitializer }, align 32
@qed_chain_alloc_sanity_check._entry_ptr = internal global ptr @qed_chain_alloc_sanity_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 339, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 341, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [47 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_chain.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 191, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @qed_chain_alloc._entry, ptr @qed_chain_alloc._entry.4, ptr @qed_chain_alloc._entry_ptr, ptr @qed_chain_alloc._entry_ptr.6, ptr @qed_chain_alloc_sanity_check._entry, ptr @qed_chain_alloc_sanity_check._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_chain_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_chain_alloc._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_chain_alloc_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qed_chain_free(ptr nocapture noundef readonly %cdev, ptr nocapture noundef %chain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %elem_size.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 9
  %5 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %elem_size.i, align 4
  %conv.i = zext i16 %6 to i32
  %usable_per_page.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 11
  %7 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %usable_per_page.i, align 4
  %conv2.i = zext i16 %8 to i32
  %mul.i = mul nuw i32 %conv2.i, %conv.i
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 16
  %9 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_virt_addr.i, align 4
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 5
  %11 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp16.i = icmp eq i32 %12, 0
  %tobool.not17.i = icmp eq ptr %10, null
  %or.cond18.i = select i1 %cmp16.i, i1 true, i1 %tobool.not17.i
  br i1 %or.cond18.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.lr.ph.i:                                   ; preds = %sw.bb
  %p_phys_addr.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 17
  %13 = ptrtoint ptr %p_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_phys_addr.i, align 4
  %page_size.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 14
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %phys.021.i = phi i32 [ %14, %if.end.lr.ph.i ], [ %18, %if.end.i.if.end.i_crit_edge ]
  %i.020.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %if.end.i.if.end.i_crit_edge ]
  %virt.019.i = phi ptr [ %10, %if.end.lr.ph.i ], [ %16, %if.end.i.if.end.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %virt.019.i, i32 %mul.i
  %next_virt.i = getelementptr inbounds %struct.qed_chain_next, ptr %add.ptr.i, i32 0, i32 1
  %15 = ptrtoint ptr %next_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next_virt.i, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %__regpair.sroa.0.0.copyload.i = load i32, ptr %add.ptr.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %__regpair.sroa.0.0.copyload.i) #6
  %19 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_size.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %20, ptr noundef nonnull %virt.019.i, i32 noundef %phys.021.i, i32 noundef 0) #6
  %inc.i = add nuw i32 %i.020.i, 1
  %21 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %22)
  %cmp.i = icmp uge i32 %inc.i, %22
  %tobool.not.i = icmp eq ptr %16, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %p_virt_addr.i9 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 16
  %23 = ptrtoint ptr %p_virt_addr.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p_virt_addr.i9, align 4
  %tobool.not.i10 = icmp eq ptr %24, null
  br i1 %tobool.not.i10, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i14

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i14:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %pdev.i11 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %25 = ptrtoint ptr %pdev.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i11, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %page_size.i12 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 14
  %27 = ptrtoint ptr %page_size.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_size.i12, align 4
  %p_phys_addr.i13 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 17
  %29 = ptrtoint ptr %p_phys_addr.i13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p_phys_addr.i13, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %28, ptr noundef nonnull %24, i32 noundef %30, i32 noundef 0) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %pdev.i15 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %31 = ptrtoint ptr %pdev.i15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev.i15, align 8
  %dev1.i16 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %pbl.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2
  %33 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pbl.i, align 4
  %tobool.not.i17 = icmp eq ptr %34, null
  br i1 %tobool.not.i17, label %sw.bb2.sw.epilog_crit_edge, label %for.cond.preheader.i

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %sw.bb2
  %page_cnt.i18 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 5
  %35 = ptrtoint ptr %page_cnt.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page_cnt.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp34.not.i = icmp eq i32 %36, 0
  br i1 %cmp34.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %page_size.i19 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i21, %if.end7.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pbl.i, align 4
  %add.ptr.i20 = getelementptr %struct.addr_tbl_entry, ptr %38, i32 %i.035.i
  %39 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i20, align 4
  %tobool5.not.i = icmp eq ptr %40, null
  br i1 %tobool5.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end7.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end7.i:                                        ; preds = %for.body.i
  %41 = ptrtoint ptr %page_size.i19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %page_size.i19, align 4
  %dma_map.i = getelementptr %struct.addr_tbl_entry, ptr %38, i32 %i.035.i, i32 1
  %43 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_map.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i16, i32 noundef %42, ptr noundef nonnull %40, i32 noundef %44, i32 noundef 0) #6
  %inc.i21 = add nuw i32 %i.035.i, 1
  %45 = ptrtoint ptr %page_cnt.i18 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %page_cnt.i18, align 4
  %cmp.i22 = icmp ult i32 %inc.i21, %46
  br i1 %cmp.i22, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.for.end.i_crit_edge

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end7.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %b_external_pbl.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 20
  %47 = ptrtoint ptr %b_external_pbl.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b_external_pbl.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool9.not.i = icmp eq i8 %48, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %for.end.i.if.end13.i_crit_edge

for.end.i.if.end13.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then10.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pbl_sp.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15
  %table_size.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15, i32 2
  %49 = ptrtoint ptr %table_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %table_size.i, align 4
  %51 = ptrtoint ptr %pbl_sp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pbl_sp.i, align 4
  %table_phys.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15, i32 1
  %53 = ptrtoint ptr %table_phys.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %table_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i16, i32 noundef %50, ptr noundef %52, i32 noundef %54, i32 noundef 0) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %for.end.i.if.end13.i_crit_edge
  %55 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pbl.i, align 4
  tail call void @vfree(ptr noundef %56) #6
  %57 = ptrtoint ptr %pbl.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %pbl.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13.i, %sw.bb2.sw.epilog_crit_edge, %if.end.i14, %sw.bb1.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %p_virt_addr.i23 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 16
  %58 = ptrtoint ptr %p_virt_addr.i23 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %p_virt_addr.i23, align 4
  %p_phys_addr.i24 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 17
  %59 = ptrtoint ptr %p_phys_addr.i24 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %p_phys_addr.i24, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_chain_alloc(ptr noundef %cdev, ptr noundef %chain, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  %phys.i200 = alloca i32, align 4
  %pbl_phys.i = alloca i32, align 4
  %phys.i146 = alloca i32, align 4
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page_size = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 3
  %0 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %page_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.end.if.end28_crit_edge, label %if.else

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.else:                                          ; preds = %if.end
  %num_elems = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 4
  %5 = ptrtoint ptr %num_elems to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_elems, align 4
  %7 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page_size, align 4
  %elem_size = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 5
  %9 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %elem_size, align 4
  %div = udiv i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %cond.true17, label %if.else.cond.end24_crit_edge

if.else.cond.end24_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end24

cond.true17:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %div7 = udiv i32 11, %10
  %conv.neg = xor i32 %div7, -1
  %sub263 = add i32 %div, %conv.neg
  br label %cond.end24

cond.end24:                                       ; preds = %cond.true17, %if.else.cond.end24_crit_edge
  %sub263.pn = phi i32 [ %sub263, %cond.true17 ], [ %div, %if.else.cond.end24_crit_edge ]
  %cond25.neg = phi i32 [ %conv.neg, %cond.true17 ], [ 0, %if.else.cond.end24_crit_edge ]
  %sub10266.in = add i32 %6, -1
  %sub10266 = add i32 %sub10266.in, %sub263.pn
  %sub26 = add i32 %cond25.neg, %div
  %div27 = udiv i32 %sub10266, %sub26
  br label %if.end28

if.end28:                                         ; preds = %cond.end24, %if.end.if.end28_crit_edge
  %page_cnt.0 = phi i32 [ %div27, %cond.end24 ], [ 1, %if.end.if.end28_crit_edge ]
  %11 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_size, align 4
  %elem_size.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 5
  %13 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %elem_size.i, align 4
  %div.i = udiv i32 %12, %14
  %conv.i = zext i32 %div.i to i64
  %conv1.i = zext i32 %page_cnt.0 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul.i)
  %tobool.not.i = icmp eq i64 %mul.i, 0
  br i1 %tobool.not.i, label %if.end28.do.body_crit_edge, label %if.end.i

if.end28.do.body_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i:                                         ; preds = %if.end28
  %cnt_type.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 2
  %15 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cnt_type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %16, label %if.end.i.do.body_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
  ]

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %mul.i)
  %cmp.i = icmp ugt i64 %mul.i, 65536
  br i1 %cmp.i, label %sw.bb.i.do.body.i_crit_edge, label %sw.bb.i.if.end82_crit_edge

sw.bb.i.if.end82_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

sw.bb.i.do.body.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %mul.i)
  %cmp6.i = icmp ugt i64 %mul.i, 4294967295
  br i1 %cmp6.i, label %sw.bb5.i.do.body.i_crit_edge, label %sw.bb5.i.if.end82_crit_edge

sw.bb5.i.if.end82_crit_edge:                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

sw.bb5.i.do.body.i_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb5.i.do.body.i_crit_edge, %sw.bb.i.do.body.i_crit_edge
  %dp_level.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %18 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp11.i = icmp ult i8 %19, 3
  br i1 %cmp11.i, label %do.end.i, label %do.body.i.do.body_crit_edge, !prof !26

do.body.i.do.body_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 193, ptr noundef nonnull %name.i, i64 noundef %mul.i) #9
  br label %do.body

do.body:                                          ; preds = %do.end.i, %do.body.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.end28.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 1
  %20 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp32 = icmp ult i8 %21, 3
  br i1 %cmp32, label %do.body49, label %do.body.cleanup_crit_edge, !prof !26

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body49:                                        ; preds = %do.body
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 2
  %tobool38.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool38.not, ptr @.str.3, ptr %name
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull %spec.select) #9
  %22 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp52 = icmp ult i8 %.pr, 3
  br i1 %cmp52, label %do.end63, label %do.body49.cleanup_crit_edge, !prof !26

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end63:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %intended_use = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %intended_use to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intended_use, align 4
  %25 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %params, align 4
  %cnt_type = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 2
  %27 = ptrtoint ptr %cnt_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cnt_type, align 4
  %num_elems75 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 4
  %29 = ptrtoint ptr %num_elems75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_elems75, align 4
  %31 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %elem_size.i, align 4
  %33 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %page_size, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 345, ptr noundef nonnull %spec.select, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #9
  br label %cleanup

if.end82:                                         ; preds = %sw.bb5.i.if.end82_crit_edge, %sw.bb.i.if.end82_crit_edge
  %35 = call ptr @memset(ptr %chain, i32 0, i32 92)
  %36 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %elem_size.i, align 4
  %conv.i133 = trunc i32 %37 to i16
  %elem_size1.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 9
  %38 = ptrtoint ptr %elem_size1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i133, ptr %elem_size1.i, align 4
  %intended_use.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 1
  %39 = ptrtoint ptr %intended_use.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %intended_use.i, align 4
  %intended_use2.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 19
  %41 = ptrtoint ptr %intended_use2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %intended_use2.i, align 4
  %42 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %params, align 4
  %mode3.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 6
  %44 = ptrtoint ptr %mode3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mode3.i, align 4
  %45 = ptrtoint ptr %cnt_type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cnt_type.i, align 4
  %cnt_type4.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 13
  %47 = ptrtoint ptr %cnt_type4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %cnt_type4.i, align 4
  %48 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %page_size, align 4
  %50 = load i32, ptr %elem_size.i, align 4
  %div.i136 = udiv i32 %49, %50
  %conv6.i = trunc i32 %div.i136 to i16
  %elem_per_page.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 7
  %51 = ptrtoint ptr %elem_per_page.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv6.i, ptr %elem_per_page.i, align 4
  %52 = load i32, ptr %page_size, align 4
  %53 = load i32, ptr %elem_size.i, align 4
  %div9.i = udiv i32 %52, %53
  %54 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i137 = icmp eq i32 %54, 0
  br i1 %cmp.i137, label %cond.true.i, label %if.end82.cond.end.i_crit_edge

if.end82.cond.end.i_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %div13.i = udiv i32 11, %53
  %conv14.neg.i = xor i32 %div13.i, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end82.cond.end.i_crit_edge
  %cond.neg.i = phi i32 [ %conv14.neg.i, %cond.true.i ], [ 0, %if.end82.cond.end.i_crit_edge ]
  %sub.i = add i32 %cond.neg.i, %div9.i
  %conv16.i = trunc i32 %sub.i to i16
  %usable_per_page.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 11
  %55 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv16.i, ptr %usable_per_page.i, align 4
  %56 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp18.i = icmp eq i32 %57, 0
  br i1 %cmp18.i, label %cond.true20.i, label %cond.end.i.cond.end27.i_crit_edge

cond.end.i.cond.end27.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end27.i

cond.true20.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %elem_size.i, align 4
  %div22.i = udiv i32 11, %59
  %60 = trunc i32 %div22.i to i8
  %conv24.i = add nuw nsw i8 %60, 1
  br label %cond.end27.i

cond.end27.i:                                     ; preds = %cond.true20.i, %cond.end.i.cond.end27.i_crit_edge
  %cond28.i = phi i8 [ %conv24.i, %cond.true20.i ], [ 0, %cond.end.i.cond.end27.i_crit_edge ]
  %elem_unusable.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 12
  %61 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %cond28.i, ptr %elem_unusable.i, align 2
  %sub32.i = add i16 %conv6.i, -1
  %elem_per_page_mask.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 8
  %62 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %sub32.i, ptr %elem_per_page_mask.i, align 2
  %and87.i = and i16 %sub32.i, %conv16.i
  %next_page_mask.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 10
  %63 = ptrtoint ptr %next_page_mask.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %and87.i, ptr %next_page_mask.i, align 2
  %64 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %page_size, align 4
  %page_size40.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 14
  %66 = ptrtoint ptr %page_size40.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %page_size40.i, align 4
  %page_cnt41.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 5
  %67 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %page_cnt.0, ptr %page_cnt41.i, align 4
  %conv43.i = and i32 %sub.i, 65535
  %mul.i138 = mul i32 %conv43.i, %page_cnt.0
  %capacity.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 4
  %68 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul.i138, ptr %capacity.i, align 4
  %conv45.i = and i32 %div.i136, 65535
  %mul46.i = mul i32 %conv45.i, %page_cnt.0
  %size.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 18
  %69 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul46.i, ptr %size.i, align 4
  %ext_pbl_virt.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 6
  %70 = ptrtoint ptr %ext_pbl_virt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ext_pbl_virt.i, align 4
  %tobool.not.i139 = icmp eq ptr %71, null
  br i1 %tobool.not.i139, label %cond.end27.i.qed_chain_init.exit_crit_edge, label %if.then.i

cond.end27.i.qed_chain_init.exit_crit_edge:       ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_init.exit

if.then.i:                                        ; preds = %cond.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %pbl_sp.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15
  %72 = ptrtoint ptr %pbl_sp.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %pbl_sp.i, align 4
  %ext_pbl_phys.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 7
  %73 = ptrtoint ptr %ext_pbl_phys.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ext_pbl_phys.i, align 4
  %table_phys.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15, i32 1
  %75 = ptrtoint ptr %table_phys.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %table_phys.i, align 4
  %b_external_pbl.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 20
  %76 = ptrtoint ptr %b_external_pbl.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %b_external_pbl.i, align 4
  br label %qed_chain_init.exit

qed_chain_init.exit:                              ; preds = %if.then.i, %cond.end27.i.qed_chain_init.exit_crit_edge
  %77 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %params, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %78, label %qed_chain_init.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb85
    i32 2, label %sw.bb87
  ]

qed_chain_init.exit.cleanup_crit_edge:            ; preds = %qed_chain_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %qed_chain_init.exit
  %pdev.i = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %80 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #6
  %82 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %phys.i, align 4, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_cnt.0)
  %cmp38.not.i = icmp eq i32 %page_cnt.0, 0
  br i1 %cmp38.not.i, label %sw.bb.for.end.i_crit_edge, label %for.body.lr.ph.i

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %p_virt_addr.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 16
  %p_phys_addr.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 17
  %u.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 3
  %cons_idx5.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 3, i32 0, i32 1
  %p_cons_elem.i32.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 1
  %c17.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2, i32 1
  %cons_page_idx21.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2, i32 1, i32 0, i32 1
  %cons_idx.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i, i32 0, i32 1
  %cons_page_idx.i.i = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c17.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %virt_prev.039.i = phi ptr [ null, %for.body.lr.ph.i ], [ %call.i.i, %if.end4.i.for.body.i_crit_edge ]
  %83 = ptrtoint ptr %page_size40.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page_size40.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef %84, ptr noundef nonnull %phys.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i142 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i142, label %for.body.i.qed_chain_alloc_next_ptr.exit_crit_edge, label %if.end.i143

for.body.i.qed_chain_alloc_next_ptr.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_next_ptr.exit

if.end.i143:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.040.i)
  %cmp2.i = icmp eq i32 %i.040.i, 0
  %85 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phys.i, align 4
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i143
  %87 = ptrtoint ptr %p_virt_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i.i, ptr %p_virt_addr.i.i, align 4
  %88 = ptrtoint ptr %p_phys_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %p_phys_addr.i.i, align 4
  %89 = ptrtoint ptr %cnt_type4.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cnt_type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i = icmp eq i32 %90, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end.i.thread.i

if.end.i.i:                                       ; preds = %if.then3.i
  %91 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %u.i.i, align 4
  %92 = ptrtoint ptr %cons_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %cons_idx.i.i, align 2
  %93 = ptrtoint ptr %p_cons_elem.i32.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i, ptr %p_cons_elem.i32.i, align 4
  %94 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i.i, ptr %chain, align 4
  %95 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mode3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp7.i.i = icmp eq i32 %96, 2
  br i1 %cmp7.i.i, label %if.then11.i.i, label %if.end.i.i.if.end23.i.i_crit_edge

if.end.i.i.if.end23.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i

if.end.i.thread.i:                                ; preds = %if.then3.i
  %97 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %u.i.i, align 4
  %98 = ptrtoint ptr %cons_idx5.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %cons_idx5.i.i, align 4
  %99 = ptrtoint ptr %p_cons_elem.i32.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i, ptr %p_cons_elem.i32.i, align 4
  %100 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i.i, ptr %chain, align 4
  %101 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mode3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp7.i34.i = icmp eq i32 %102, 2
  br i1 %cmp7.i34.i, label %if.else15.i.i, label %if.end.i.thread.i.if.end23.i.i_crit_edge

if.end.i.thread.i.if.end23.i.i_crit_edge:         ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %page_cnt41.i, align 4
  %105 = trunc i32 %104 to i16
  %conv.i.i = add i16 %105, -1
  %106 = ptrtoint ptr %c17.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i, ptr %c17.i.i, align 4
  %107 = ptrtoint ptr %cons_page_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv.i.i, ptr %cons_page_idx.i.i, align 2
  br label %if.end23.i.i

if.else15.i.i:                                    ; preds = %if.end.i.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %page_cnt41.i, align 4
  %sub.i35.i = add i32 %109, -1
  %110 = ptrtoint ptr %c17.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub.i35.i, ptr %c17.i.i, align 4
  %111 = ptrtoint ptr %cons_page_idx21.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub.i35.i, ptr %cons_page_idx21.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.else15.i.i, %if.then11.i.i, %if.end.i.thread.i.if.end23.i.i_crit_edge, %if.end.i.i.if.end23.i.i_crit_edge
  %112 = ptrtoint ptr %intended_use2.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %intended_use2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cond.i.i = icmp eq i32 %113, 1
  br i1 %cond.i.i, label %for.cond.preheader.i.i, label %if.end23.i.i.if.end4.i_crit_edge

if.end23.i.i.if.end4.i_crit_edge:                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.cond.preheader.i.i:                           ; preds = %if.end23.i.i
  %114 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp2449.not.i.i = icmp eq i32 %115, 0
  br i1 %cmp2449.not.i.i, label %for.cond.preheader.i.i.if.end4.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end4.i_crit_edge:       ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.body.i.i:                                     ; preds = %qed_chain_recycle_consumed.exit.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.050.i.i = phi i32 [ %inc.i.i, %qed_chain_recycle_consumed.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  br i1 %cmp.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  %116 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %u.i.i, align 4
  %118 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %elem_per_page_mask.i, align 2
  %and52.i.i.i = and i16 %119, %117
  %120 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %usable_per_page.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i.i, i16 %121)
  %cmp3.i.i.i = icmp eq i16 %and52.i.i.i, %121
  br i1 %cmp3.i.i.i, label %if.then5.i.i.i, label %if.then.i.i.i.if.then31.i.i.i_crit_edge

if.then.i.i.i.if.then31.i.i.i_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i.i.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %elem_unusable.i, align 2
  %conv6.i.i.i = zext i8 %123 to i16
  %add.i.i.i = add i16 %117, %conv6.i.i.i
  %124 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %add.i.i.i, ptr %u.i.i, align 4
  br label %if.then31.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  %125 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %u.i.i, align 4
  %127 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %elem_per_page_mask.i, align 2
  %conv14.i.i.i = zext i16 %128 to i32
  %and15.i.i.i = and i32 %126, %conv14.i.i.i
  %129 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %usable_per_page.i, align 4
  %conv17.i.i.i = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i.i, i32 %conv17.i.i.i)
  %cmp18.i.i.i = icmp eq i32 %and15.i.i.i, %conv17.i.i.i
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.else.i.i.i.if.else34.i.i.i_crit_edge

if.else.i.i.i.if.else34.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else34.i.i.i

if.then20.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %elem_unusable.i, align 2
  %conv22.i.i.i = zext i8 %132 to i32
  %add25.i.i.i = add i32 %126, %conv22.i.i.i
  %133 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add25.i.i.i, ptr %u.i.i, align 4
  br label %if.else34.i.i.i

if.then31.i.i.i:                                  ; preds = %if.then5.i.i.i, %if.then.i.i.i.if.then31.i.i.i_crit_edge
  %134 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %u.i.i, align 4
  %inc.i.i.i = add i16 %135, 1
  store i16 %inc.i.i.i, ptr %u.i.i, align 4
  br label %qed_chain_recycle_consumed.exit.i.i

if.else34.i.i.i:                                  ; preds = %if.then20.i.i.i, %if.else.i.i.i.if.else34.i.i.i_crit_edge
  %136 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %u.i.i, align 4
  %inc37.i.i.i = add i32 %137, 1
  store i32 %inc37.i.i.i, ptr %u.i.i, align 4
  br label %qed_chain_recycle_consumed.exit.i.i

qed_chain_recycle_consumed.exit.i.i:              ; preds = %if.else34.i.i.i, %if.then31.i.i.i
  %inc.i.i = add nuw i32 %i.050.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %115
  br i1 %exitcond.not.i.i, label %qed_chain_recycle_consumed.exit.i.i.if.end4.i_crit_edge, label %qed_chain_recycle_consumed.exit.i.i.for.body.i.i_crit_edge

qed_chain_recycle_consumed.exit.i.i.for.body.i.i_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

qed_chain_recycle_consumed.exit.i.i.if.end4.i_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %elem_size1.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %elem_size1.i, align 4
  %conv.i23.i = zext i16 %139 to i32
  %140 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %usable_per_page.i, align 4
  %conv1.i.i = zext i16 %141 to i32
  %mul.i.i = mul nuw i32 %conv1.i.i, %conv.i23.i
  %add.ptr.i.i = getelementptr i8, ptr %virt_prev.039.i, i32 %mul.i.i
  %hi.i.i = getelementptr inbounds %struct.regpair, ptr %add.ptr.i.i, i32 0, i32 1
  %142 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %hi.i.i, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %86) #6
  %144 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %add.ptr.i.i, align 4
  %next_virt.i.i = getelementptr inbounds %struct.qed_chain_next, ptr %add.ptr.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %next_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i.i, ptr %next_virt.i.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %qed_chain_recycle_consumed.exit.i.i.if.end4.i_crit_edge, %for.cond.preheader.i.i.if.end4.i_crit_edge, %if.end23.i.i.if.end4.i_crit_edge
  %inc.i = add nuw i32 %i.040.i, 1
  %146 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %page_cnt41.i, align 4
  %cmp.i144 = icmp ult i32 %inc.i, %147
  br i1 %cmp.i144, label %if.end4.i.for.body.i_crit_edge, label %if.end4.i.for.end.i_crit_edge

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end4.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %virt_prev.0.lcssa.i = phi ptr [ null, %sw.bb.for.end.i_crit_edge ], [ %call.i.i, %if.end4.i.for.end.i_crit_edge ]
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 16
  %148 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %p_virt_addr.i, align 4
  %p_phys_addr.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 17
  %150 = ptrtoint ptr %p_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %p_phys_addr.i, align 4
  %152 = ptrtoint ptr %elem_size1.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %elem_size1.i, align 4
  %conv.i25.i = zext i16 %153 to i32
  %154 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %usable_per_page.i, align 4
  %conv1.i27.i = zext i16 %155 to i32
  %mul.i28.i = mul nuw i32 %conv1.i27.i, %conv.i25.i
  %add.ptr.i29.i = getelementptr i8, ptr %virt_prev.0.lcssa.i, i32 %mul.i28.i
  %hi.i30.i = getelementptr inbounds %struct.regpair, ptr %add.ptr.i29.i, i32 0, i32 1
  %156 = ptrtoint ptr %hi.i30.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %hi.i30.i, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %151) #6
  %158 = ptrtoint ptr %add.ptr.i29.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %add.ptr.i29.i, align 4
  %next_virt.i31.i = getelementptr inbounds %struct.qed_chain_next, ptr %add.ptr.i29.i, i32 0, i32 1
  %159 = ptrtoint ptr %next_virt.i31.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %149, ptr %next_virt.i31.i, align 4
  br label %qed_chain_alloc_next_ptr.exit

qed_chain_alloc_next_ptr.exit:                    ; preds = %for.end.i, %for.body.i.qed_chain_alloc_next_ptr.exit_crit_edge
  %retval.0.i145 = phi i32 [ 0, %for.end.i ], [ -12, %for.body.i.qed_chain_alloc_next_ptr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #6
  br label %sw.epilog

sw.bb85:                                          ; preds = %qed_chain_init.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i146) #6
  %160 = ptrtoint ptr %phys.i146 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %phys.i146, align 4, !annotation !27
  %pdev.i147 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %161 = ptrtoint ptr %pdev.i147 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pdev.i147, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %162, i32 0, i32 44
  %call.i.i149 = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %65, ptr noundef nonnull %phys.i146, i32 noundef 3264, i32 noundef 0) #6
  %tobool.not.i150 = icmp eq ptr %call.i.i149, null
  br i1 %tobool.not.i150, label %sw.bb85.qed_chain_alloc_single.exit_crit_edge, label %if.end.i156

sw.bb85.qed_chain_alloc_single.exit_crit_edge:    ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_single.exit

if.end.i156:                                      ; preds = %sw.bb85
  %163 = ptrtoint ptr %phys.i146 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %phys.i146, align 4
  %p_virt_addr.i.i151 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 16
  %165 = ptrtoint ptr %p_virt_addr.i.i151 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call.i.i149, ptr %p_virt_addr.i.i151, align 4
  %p_phys_addr.i.i152 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 17
  %166 = ptrtoint ptr %p_phys_addr.i.i152 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %164, ptr %p_phys_addr.i.i152, align 4
  %167 = ptrtoint ptr %cnt_type4.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %cnt_type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp.i.i154 = icmp eq i32 %168, 0
  %u.i.i155 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 3
  br i1 %cmp.i.i154, label %if.end.i.i159, label %if.end.i.thread.i161

if.end.i.i159:                                    ; preds = %if.end.i156
  %169 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %u.i.i155, align 4
  %cons_idx.i.i157 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i155, i32 0, i32 1
  %170 = ptrtoint ptr %cons_idx.i.i157 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %cons_idx.i.i157, align 2
  %p_cons_elem.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 1
  %171 = ptrtoint ptr %p_cons_elem.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call.i.i149, ptr %p_cons_elem.i.i, align 4
  %172 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i.i149, ptr %chain, align 4
  %173 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mode3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %174)
  %cmp7.i.i158 = icmp eq i32 %174, 2
  br i1 %cmp7.i.i158, label %if.then11.i.i164, label %if.end.i.i159.if.end23.i.i170_crit_edge

if.end.i.i159.if.end23.i.i170_crit_edge:          ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i170

if.end.i.thread.i161:                             ; preds = %if.end.i156
  %175 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %u.i.i155, align 4
  %cons_idx5.i.i160 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 3, i32 0, i32 1
  %176 = ptrtoint ptr %cons_idx5.i.i160 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %cons_idx5.i.i160, align 4
  %p_cons_elem.i6.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 1
  %177 = ptrtoint ptr %p_cons_elem.i6.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call.i.i149, ptr %p_cons_elem.i6.i, align 4
  %178 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call.i.i149, ptr %chain, align 4
  %179 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mode3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %180)
  %cmp7.i8.i = icmp eq i32 %180, 2
  br i1 %cmp7.i8.i, label %if.else15.i.i167, label %if.end.i.thread.i161.if.end23.i.i170_crit_edge

if.end.i.thread.i161.if.end23.i.i170_crit_edge:   ; preds = %if.end.i.thread.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i170

if.then11.i.i164:                                 ; preds = %if.end.i.i159
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %page_cnt41.i, align 4
  %183 = trunc i32 %182 to i16
  %conv.i.i162 = add i16 %183, -1
  %c.i.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2, i32 1
  %184 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv.i.i162, ptr %c.i.i, align 4
  %cons_page_idx.i.i163 = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %cons_page_idx.i.i163 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv.i.i162, ptr %cons_page_idx.i.i163, align 2
  br label %if.end23.i.i170

if.else15.i.i167:                                 ; preds = %if.end.i.thread.i161
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %page_cnt41.i, align 4
  %sub.i10.i = add i32 %187, -1
  %c17.i.i165 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2, i32 1
  %188 = ptrtoint ptr %c17.i.i165 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %sub.i10.i, ptr %c17.i.i165, align 4
  %cons_page_idx21.i.i166 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2, i32 1, i32 0, i32 1
  %189 = ptrtoint ptr %cons_page_idx21.i.i166 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %sub.i10.i, ptr %cons_page_idx21.i.i166, align 4
  br label %if.end23.i.i170

if.end23.i.i170:                                  ; preds = %if.else15.i.i167, %if.then11.i.i164, %if.end.i.thread.i161.if.end23.i.i170_crit_edge, %if.end.i.i159.if.end23.i.i170_crit_edge
  %190 = ptrtoint ptr %intended_use2.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %intended_use2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cond.i.i169 = icmp eq i32 %191, 1
  br i1 %cond.i.i169, label %for.cond.preheader.i.i173, label %if.end23.i.i170.qed_chain_alloc_single.exit_crit_edge

if.end23.i.i170.qed_chain_alloc_single.exit_crit_edge: ; preds = %if.end23.i.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_single.exit

for.cond.preheader.i.i173:                        ; preds = %if.end23.i.i170
  %192 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp2449.not.i.i172 = icmp eq i32 %193, 0
  br i1 %cmp2449.not.i.i172, label %for.cond.preheader.i.i173.qed_chain_alloc_single.exit_crit_edge, label %for.cond.preheader.i.i173.for.body.i.i177_crit_edge

for.cond.preheader.i.i173.for.body.i.i177_crit_edge: ; preds = %for.cond.preheader.i.i173
  br label %for.body.i.i177

for.cond.preheader.i.i173.qed_chain_alloc_single.exit_crit_edge: ; preds = %for.cond.preheader.i.i173
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_single.exit

for.body.i.i177:                                  ; preds = %qed_chain_recycle_consumed.exit.i.i198.for.body.i.i177_crit_edge, %for.cond.preheader.i.i173.for.body.i.i177_crit_edge
  %i.050.i.i176 = phi i32 [ %inc.i.i196, %qed_chain_recycle_consumed.exit.i.i198.for.body.i.i177_crit_edge ], [ 0, %for.cond.preheader.i.i173.for.body.i.i177_crit_edge ]
  br i1 %cmp.i.i154, label %if.then.i.i.i180, label %if.else.i.i.i188

if.then.i.i.i180:                                 ; preds = %for.body.i.i177
  %194 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %u.i.i155, align 4
  %196 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %elem_per_page_mask.i, align 2
  %and52.i.i.i178 = and i16 %197, %195
  %198 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %usable_per_page.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i.i178, i16 %199)
  %cmp3.i.i.i179 = icmp eq i16 %and52.i.i.i178, %199
  br i1 %cmp3.i.i.i179, label %if.then5.i.i.i183, label %if.then.i.i.i180.if.then31.i.i.i193_crit_edge

if.then.i.i.i180.if.then31.i.i.i193_crit_edge:    ; preds = %if.then.i.i.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i.i.i193

if.then5.i.i.i183:                                ; preds = %if.then.i.i.i180
  call void @__sanitizer_cov_trace_pc() #8
  %200 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %elem_unusable.i, align 2
  %conv6.i.i.i181 = zext i8 %201 to i16
  %add.i.i.i182 = add i16 %195, %conv6.i.i.i181
  %202 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %add.i.i.i182, ptr %u.i.i155, align 4
  br label %if.then31.i.i.i193

if.else.i.i.i188:                                 ; preds = %for.body.i.i177
  %203 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %u.i.i155, align 4
  %205 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %elem_per_page_mask.i, align 2
  %conv14.i.i.i184 = zext i16 %206 to i32
  %and15.i.i.i185 = and i32 %204, %conv14.i.i.i184
  %207 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %usable_per_page.i, align 4
  %conv17.i.i.i186 = zext i16 %208 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i.i185, i32 %conv17.i.i.i186)
  %cmp18.i.i.i187 = icmp eq i32 %and15.i.i.i185, %conv17.i.i.i186
  br i1 %cmp18.i.i.i187, label %if.then20.i.i.i191, label %if.else.i.i.i188.if.else34.i.i.i195_crit_edge

if.else.i.i.i188.if.else34.i.i.i195_crit_edge:    ; preds = %if.else.i.i.i188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else34.i.i.i195

if.then20.i.i.i191:                               ; preds = %if.else.i.i.i188
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %elem_unusable.i, align 2
  %conv22.i.i.i189 = zext i8 %210 to i32
  %add25.i.i.i190 = add i32 %204, %conv22.i.i.i189
  %211 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %add25.i.i.i190, ptr %u.i.i155, align 4
  br label %if.else34.i.i.i195

if.then31.i.i.i193:                               ; preds = %if.then5.i.i.i183, %if.then.i.i.i180.if.then31.i.i.i193_crit_edge
  %212 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %u.i.i155, align 4
  %inc.i.i.i192 = add i16 %213, 1
  store i16 %inc.i.i.i192, ptr %u.i.i155, align 4
  br label %qed_chain_recycle_consumed.exit.i.i198

if.else34.i.i.i195:                               ; preds = %if.then20.i.i.i191, %if.else.i.i.i188.if.else34.i.i.i195_crit_edge
  %214 = ptrtoint ptr %u.i.i155 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %u.i.i155, align 4
  %inc37.i.i.i194 = add i32 %215, 1
  store i32 %inc37.i.i.i194, ptr %u.i.i155, align 4
  br label %qed_chain_recycle_consumed.exit.i.i198

qed_chain_recycle_consumed.exit.i.i198:           ; preds = %if.else34.i.i.i195, %if.then31.i.i.i193
  %inc.i.i196 = add nuw i32 %i.050.i.i176, 1
  %exitcond.not.i.i197 = icmp eq i32 %inc.i.i196, %193
  br i1 %exitcond.not.i.i197, label %qed_chain_recycle_consumed.exit.i.i198.qed_chain_alloc_single.exit_crit_edge, label %qed_chain_recycle_consumed.exit.i.i198.for.body.i.i177_crit_edge

qed_chain_recycle_consumed.exit.i.i198.for.body.i.i177_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i.i198
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i177

qed_chain_recycle_consumed.exit.i.i198.qed_chain_alloc_single.exit_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i.i198
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_single.exit

qed_chain_alloc_single.exit:                      ; preds = %qed_chain_recycle_consumed.exit.i.i198.qed_chain_alloc_single.exit_crit_edge, %for.cond.preheader.i.i173.qed_chain_alloc_single.exit_crit_edge, %if.end23.i.i170.qed_chain_alloc_single.exit_crit_edge, %sw.bb85.qed_chain_alloc_single.exit_crit_edge
  %retval.0.i199 = phi i32 [ -12, %sw.bb85.qed_chain_alloc_single.exit_crit_edge ], [ 0, %if.end23.i.i170.qed_chain_alloc_single.exit_crit_edge ], [ 0, %for.cond.preheader.i.i173.qed_chain_alloc_single.exit_crit_edge ], [ 0, %qed_chain_recycle_consumed.exit.i.i198.qed_chain_alloc_single.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i146) #6
  br label %sw.epilog

sw.bb87:                                          ; preds = %qed_chain_init.exit
  %pdev.i201 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 50
  %216 = ptrtoint ptr %pdev.i201 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pdev.i201, align 8
  %dev1.i202 = getelementptr inbounds %struct.pci_dev, ptr %217, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i200) #6
  %218 = ptrtoint ptr %phys.i200 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %phys.i200, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbl_phys.i) #6
  %219 = ptrtoint ptr %pbl_phys.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -1, ptr %pbl_phys.i, align 4, !annotation !27
  %220 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %page_cnt.0, i32 8) #6
  %221 = extractvalue { i32, i1 } %220, 1
  %222 = extractvalue { i32, i1 } %220, 0
  br i1 %221, label %sw.bb87.qed_chain_alloc_pbl.exit_crit_edge, label %if.end.i203, !prof !26

sw.bb87.qed_chain_alloc_pbl.exit_crit_edge:       ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_pbl.exit

if.end.i203:                                      ; preds = %sw.bb87
  %call4.i = tail call noalias ptr @vzalloc(i32 noundef %222) #10
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i203.qed_chain_alloc_pbl.exit_crit_edge, label %if.end7.i

if.end.i203.qed_chain_alloc_pbl.exit_crit_edge:   ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_pbl.exit

if.end7.i:                                        ; preds = %if.end.i203
  %pbl.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2
  %223 = ptrtoint ptr %pbl.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %call4.i, ptr %pbl.i, align 4
  %b_external_pbl.i204 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 20
  %224 = ptrtoint ptr %b_external_pbl.i204 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %b_external_pbl.i204, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool8.not.i = icmp eq i8 %225, 0
  br i1 %tobool8.not.i, label %if.end20.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %pbl_sp.i205 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15
  %226 = ptrtoint ptr %pbl_sp.i205 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pbl_sp.i205, align 4
  br label %alloc_pages.i

if.end20.i:                                       ; preds = %if.end7.i
  %call.i.i206 = call ptr @dma_alloc_attrs(ptr noundef %dev1.i202, i32 noundef %222, ptr noundef nonnull %pbl_phys.i, i32 noundef 3264, i32 noundef 0) #6
  %tobool22.not.i = icmp eq ptr %call.i.i206, null
  br i1 %tobool22.not.i, label %if.end20.i.qed_chain_alloc_pbl.exit_crit_edge, label %if.end24.i

if.end20.i.qed_chain_alloc_pbl.exit_crit_edge:    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_pbl.exit

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %pbl_sp25.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15
  %228 = ptrtoint ptr %pbl_sp25.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call.i.i206, ptr %pbl_sp25.i, align 4
  %229 = ptrtoint ptr %pbl_phys.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pbl_phys.i, align 4
  %table_phys.i207 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15, i32 1
  %231 = ptrtoint ptr %table_phys.i207 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %table_phys.i207, align 4
  %table_size.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 15, i32 2
  %232 = ptrtoint ptr %table_size.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %222, ptr %table_size.i, align 4
  br label %alloc_pages.i

alloc_pages.i:                                    ; preds = %if.end24.i, %if.then9.i
  %pbl_virt.0.i = phi ptr [ %227, %if.then9.i ], [ %call.i.i206, %if.end24.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_cnt.0)
  %cmp2983.not.i = icmp eq i32 %page_cnt.0, 0
  br i1 %cmp2983.not.i, label %alloc_pages.i.qed_chain_alloc_pbl.exit_crit_edge, label %for.body.lr.ph.i223

alloc_pages.i.qed_chain_alloc_pbl.exit_crit_edge: ; preds = %alloc_pages.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_pbl.exit

for.body.lr.ph.i223:                              ; preds = %alloc_pages.i
  %p_virt_addr.i.i209 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 16
  %p_phys_addr.i.i210 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 17
  %u.i.i212 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 3
  %cons_idx5.i.i213 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 3, i32 0, i32 1
  %p_cons_elem.i78.i = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 1
  %c17.i.i214 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2, i32 1
  %cons_page_idx21.i.i215 = getelementptr inbounds %struct.qed_chain, ptr %chain, i32 0, i32 2, i32 1, i32 0, i32 1
  %cons_idx.i.i216 = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i212, i32 0, i32 1
  %cons_page_idx.i.i217 = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c17.i.i214, i32 0, i32 1
  br label %for.body.i224

for.body.i224:                                    ; preds = %if.end36.i.for.body.i224_crit_edge, %for.body.lr.ph.i223
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i223 ], [ %inc.i260, %if.end36.i.for.body.i224_crit_edge ]
  %233 = ptrtoint ptr %page_size40.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %page_size40.i, align 4
  %call.i76.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i202, i32 noundef %234, ptr noundef nonnull %phys.i200, i32 noundef 3264, i32 noundef 0) #6
  %tobool31.not.i = icmp eq ptr %call.i76.i, null
  br i1 %tobool31.not.i, label %for.body.i224.qed_chain_alloc_pbl.exit_crit_edge, label %if.end33.i

for.body.i224.qed_chain_alloc_pbl.exit_crit_edge: ; preds = %for.body.i224
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_pbl.exit

if.end33.i:                                       ; preds = %for.body.i224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.084.i)
  %cmp34.i = icmp eq i32 %i.084.i, 0
  br i1 %cmp34.i, label %if.then35.i, label %if.end33.i.if.end36.i_crit_edge

if.end33.i.if.end36.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end33.i
  %235 = ptrtoint ptr %phys.i200 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %phys.i200, align 4
  %237 = ptrtoint ptr %p_virt_addr.i.i209 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call.i76.i, ptr %p_virt_addr.i.i209, align 4
  %238 = ptrtoint ptr %p_phys_addr.i.i210 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %236, ptr %p_phys_addr.i.i210, align 4
  %239 = ptrtoint ptr %cnt_type4.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %cnt_type4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp.i.i225 = icmp eq i32 %240, 0
  br i1 %cmp.i.i225, label %if.end.i.i227, label %if.end.i.thread.i228

if.end.i.i227:                                    ; preds = %if.then35.i
  %241 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %u.i.i212, align 4
  %242 = ptrtoint ptr %cons_idx.i.i216 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 0, ptr %cons_idx.i.i216, align 2
  %243 = ptrtoint ptr %p_cons_elem.i78.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call.i76.i, ptr %p_cons_elem.i78.i, align 4
  %244 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %call.i76.i, ptr %chain, align 4
  %245 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %mode3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %246)
  %cmp7.i.i226 = icmp eq i32 %246, 2
  br i1 %cmp7.i.i226, label %if.then11.i.i230, label %if.end.i.i227.if.end23.i.i233_crit_edge

if.end.i.i227.if.end23.i.i233_crit_edge:          ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i233

if.end.i.thread.i228:                             ; preds = %if.then35.i
  %247 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 0, ptr %u.i.i212, align 4
  %248 = ptrtoint ptr %cons_idx5.i.i213 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 0, ptr %cons_idx5.i.i213, align 4
  %249 = ptrtoint ptr %p_cons_elem.i78.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call.i76.i, ptr %p_cons_elem.i78.i, align 4
  %250 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %call.i76.i, ptr %chain, align 4
  %251 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %mode3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %252)
  %cmp7.i80.i = icmp eq i32 %252, 2
  br i1 %cmp7.i80.i, label %if.else15.i.i231, label %if.end.i.thread.i228.if.end23.i.i233_crit_edge

if.end.i.thread.i228.if.end23.i.i233_crit_edge:   ; preds = %if.end.i.thread.i228
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i233

if.then11.i.i230:                                 ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #8
  %253 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %page_cnt41.i, align 4
  %255 = trunc i32 %254 to i16
  %conv.i.i229 = add i16 %255, -1
  %256 = ptrtoint ptr %c17.i.i214 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %conv.i.i229, ptr %c17.i.i214, align 4
  %257 = ptrtoint ptr %cons_page_idx.i.i217 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 %conv.i.i229, ptr %cons_page_idx.i.i217, align 2
  br label %if.end23.i.i233

if.else15.i.i231:                                 ; preds = %if.end.i.thread.i228
  call void @__sanitizer_cov_trace_pc() #8
  %258 = ptrtoint ptr %page_cnt41.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %page_cnt41.i, align 4
  %sub.i81.i = add i32 %259, -1
  %260 = ptrtoint ptr %c17.i.i214 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %sub.i81.i, ptr %c17.i.i214, align 4
  %261 = ptrtoint ptr %cons_page_idx21.i.i215 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %sub.i81.i, ptr %cons_page_idx21.i.i215, align 4
  br label %if.end23.i.i233

if.end23.i.i233:                                  ; preds = %if.else15.i.i231, %if.then11.i.i230, %if.end.i.thread.i228.if.end23.i.i233_crit_edge, %if.end.i.i227.if.end23.i.i233_crit_edge
  %262 = ptrtoint ptr %intended_use2.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %intended_use2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %263)
  %cond.i.i232 = icmp eq i32 %263, 1
  br i1 %cond.i.i232, label %for.cond.preheader.i.i235, label %if.end23.i.i233.if.end36.i_crit_edge

if.end23.i.i233.if.end36.i_crit_edge:             ; preds = %if.end23.i.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

for.cond.preheader.i.i235:                        ; preds = %if.end23.i.i233
  %264 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp2449.not.i.i234 = icmp eq i32 %265, 0
  br i1 %cmp2449.not.i.i234, label %for.cond.preheader.i.i235.if.end36.i_crit_edge, label %for.cond.preheader.i.i235.for.body.i.i237_crit_edge

for.cond.preheader.i.i235.for.body.i.i237_crit_edge: ; preds = %for.cond.preheader.i.i235
  br label %for.body.i.i237

for.cond.preheader.i.i235.if.end36.i_crit_edge:   ; preds = %for.cond.preheader.i.i235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

for.body.i.i237:                                  ; preds = %qed_chain_recycle_consumed.exit.i.i258.for.body.i.i237_crit_edge, %for.cond.preheader.i.i235.for.body.i.i237_crit_edge
  %i.050.i.i236 = phi i32 [ %inc.i.i256, %qed_chain_recycle_consumed.exit.i.i258.for.body.i.i237_crit_edge ], [ 0, %for.cond.preheader.i.i235.for.body.i.i237_crit_edge ]
  br i1 %cmp.i.i225, label %if.then.i.i.i240, label %if.else.i.i.i248

if.then.i.i.i240:                                 ; preds = %for.body.i.i237
  %266 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %u.i.i212, align 4
  %268 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %elem_per_page_mask.i, align 2
  %and52.i.i.i238 = and i16 %269, %267
  %270 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %usable_per_page.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i.i238, i16 %271)
  %cmp3.i.i.i239 = icmp eq i16 %and52.i.i.i238, %271
  br i1 %cmp3.i.i.i239, label %if.then5.i.i.i243, label %if.then.i.i.i240.if.then31.i.i.i253_crit_edge

if.then.i.i.i240.if.then31.i.i.i253_crit_edge:    ; preds = %if.then.i.i.i240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i.i.i253

if.then5.i.i.i243:                                ; preds = %if.then.i.i.i240
  call void @__sanitizer_cov_trace_pc() #8
  %272 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %elem_unusable.i, align 2
  %conv6.i.i.i241 = zext i8 %273 to i16
  %add.i.i.i242 = add i16 %267, %conv6.i.i.i241
  %274 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 %add.i.i.i242, ptr %u.i.i212, align 4
  br label %if.then31.i.i.i253

if.else.i.i.i248:                                 ; preds = %for.body.i.i237
  %275 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %u.i.i212, align 4
  %277 = ptrtoint ptr %elem_per_page_mask.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %elem_per_page_mask.i, align 2
  %conv14.i.i.i244 = zext i16 %278 to i32
  %and15.i.i.i245 = and i32 %276, %conv14.i.i.i244
  %279 = ptrtoint ptr %usable_per_page.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %usable_per_page.i, align 4
  %conv17.i.i.i246 = zext i16 %280 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i.i245, i32 %conv17.i.i.i246)
  %cmp18.i.i.i247 = icmp eq i32 %and15.i.i.i245, %conv17.i.i.i246
  br i1 %cmp18.i.i.i247, label %if.then20.i.i.i251, label %if.else.i.i.i248.if.else34.i.i.i255_crit_edge

if.else.i.i.i248.if.else34.i.i.i255_crit_edge:    ; preds = %if.else.i.i.i248
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else34.i.i.i255

if.then20.i.i.i251:                               ; preds = %if.else.i.i.i248
  call void @__sanitizer_cov_trace_pc() #8
  %281 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %elem_unusable.i, align 2
  %conv22.i.i.i249 = zext i8 %282 to i32
  %add25.i.i.i250 = add i32 %276, %conv22.i.i.i249
  %283 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %add25.i.i.i250, ptr %u.i.i212, align 4
  br label %if.else34.i.i.i255

if.then31.i.i.i253:                               ; preds = %if.then5.i.i.i243, %if.then.i.i.i240.if.then31.i.i.i253_crit_edge
  %284 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %u.i.i212, align 4
  %inc.i.i.i252 = add i16 %285, 1
  store i16 %inc.i.i.i252, ptr %u.i.i212, align 4
  br label %qed_chain_recycle_consumed.exit.i.i258

if.else34.i.i.i255:                               ; preds = %if.then20.i.i.i251, %if.else.i.i.i248.if.else34.i.i.i255_crit_edge
  %286 = ptrtoint ptr %u.i.i212 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %u.i.i212, align 4
  %inc37.i.i.i254 = add i32 %287, 1
  store i32 %inc37.i.i.i254, ptr %u.i.i212, align 4
  br label %qed_chain_recycle_consumed.exit.i.i258

qed_chain_recycle_consumed.exit.i.i258:           ; preds = %if.else34.i.i.i255, %if.then31.i.i.i253
  %inc.i.i256 = add nuw i32 %i.050.i.i236, 1
  %exitcond.not.i.i257 = icmp eq i32 %inc.i.i256, %265
  br i1 %exitcond.not.i.i257, label %qed_chain_recycle_consumed.exit.i.i258.if.end36.i_crit_edge, label %qed_chain_recycle_consumed.exit.i.i258.for.body.i.i237_crit_edge

qed_chain_recycle_consumed.exit.i.i258.for.body.i.i237_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i237

qed_chain_recycle_consumed.exit.i.i258.if.end36.i_crit_edge: ; preds = %qed_chain_recycle_consumed.exit.i.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.end36.i:                                       ; preds = %qed_chain_recycle_consumed.exit.i.i258.if.end36.i_crit_edge, %for.cond.preheader.i.i235.if.end36.i_crit_edge, %if.end23.i.i233.if.end36.i_crit_edge, %if.end33.i.if.end36.i_crit_edge
  %288 = ptrtoint ptr %phys.i200 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %phys.i200, align 4
  %conv.i259 = zext i32 %289 to i64
  %290 = call i64 @llvm.bswap.i64(i64 %conv.i259) #6
  %arrayidx.i = getelementptr i64, ptr %pbl_virt.0.i, i32 %i.084.i
  %291 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %290, ptr %arrayidx.i, align 8
  %arrayidx37.i = getelementptr %struct.addr_tbl_entry, ptr %call4.i, i32 %i.084.i
  %292 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %call.i76.i, ptr %arrayidx37.i, align 4
  %dma_map.i = getelementptr %struct.addr_tbl_entry, ptr %call4.i, i32 %i.084.i, i32 1
  %293 = ptrtoint ptr %dma_map.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %289, ptr %dma_map.i, align 4
  %inc.i260 = add nuw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i260, %page_cnt.0
  br i1 %exitcond.not.i, label %if.end36.i.qed_chain_alloc_pbl.exit_crit_edge, label %if.end36.i.for.body.i224_crit_edge

if.end36.i.for.body.i224_crit_edge:               ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i224

if.end36.i.qed_chain_alloc_pbl.exit_crit_edge:    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %qed_chain_alloc_pbl.exit

qed_chain_alloc_pbl.exit:                         ; preds = %if.end36.i.qed_chain_alloc_pbl.exit_crit_edge, %for.body.i224.qed_chain_alloc_pbl.exit_crit_edge, %alloc_pages.i.qed_chain_alloc_pbl.exit_crit_edge, %if.end20.i.qed_chain_alloc_pbl.exit_crit_edge, %if.end.i203.qed_chain_alloc_pbl.exit_crit_edge, %sw.bb87.qed_chain_alloc_pbl.exit_crit_edge
  %retval.0.i261 = phi i32 [ -75, %sw.bb87.qed_chain_alloc_pbl.exit_crit_edge ], [ -12, %if.end.i203.qed_chain_alloc_pbl.exit_crit_edge ], [ -12, %if.end20.i.qed_chain_alloc_pbl.exit_crit_edge ], [ 0, %alloc_pages.i.qed_chain_alloc_pbl.exit_crit_edge ], [ 0, %if.end36.i.qed_chain_alloc_pbl.exit_crit_edge ], [ -12, %for.body.i224.qed_chain_alloc_pbl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbl_phys.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i200) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %qed_chain_alloc_pbl.exit, %qed_chain_alloc_single.exit, %qed_chain_alloc_next_ptr.exit
  %rc.0 = phi i32 [ %retval.0.i261, %qed_chain_alloc_pbl.exit ], [ %retval.0.i199, %qed_chain_alloc_single.exit ], [ %retval.0.i145, %qed_chain_alloc_next_ptr.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool89.not = icmp eq i32 %rc.0, 0
  br i1 %tobool89.not, label %sw.epilog.cleanup_crit_edge, label %if.end91

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @qed_chain_free(ptr noundef %cdev, ptr noundef %chain)
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %sw.epilog.cleanup_crit_edge, %qed_chain_init.exit.cleanup_crit_edge, %do.end63, %do.body49.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end91 ], [ -22, %do.end63 ], [ -22, %do.body49.cleanup_crit_edge ], [ -22, %qed_chain_init.exit.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_chain.c", i32 339, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_chain_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_chain_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_chain.c", i32 341, i32 3}
!9 = !{ptr @qed_chain_alloc._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_chain_alloc._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_chain.c", i32 191, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qed_chain_alloc_sanity_check._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @qed_chain_alloc_sanity_check._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"auto-init"}
