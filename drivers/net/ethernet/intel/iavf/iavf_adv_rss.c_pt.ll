; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_adv_rss.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtchnl_rss_cfg = type { %struct.virtchnl_proto_hdrs, i32, [128 x i8] }
%struct.virtchnl_proto_hdrs = type { i8, [3 x i8], i32, [32 x %struct.virtchnl_proto_hdr] }
%struct.virtchnl_proto_hdr = type { i32, i32, [64 x i8] }
%struct.iavf_adapter = type { %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.wait_queue_head, ptr, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, [25 x i8], i32, i32, ptr, i32, i32, ptr, i64, i32, i32, i32, i32, i32, ptr, ptr, i32, i64, ptr, ptr, %struct.iavf_hw, i32, i32, i32, %struct.delayed_work, i8, i8, i32, i32, i32, ptr, ptr, %struct.virtchnl_version_info, %struct.virtchnl_vlan_caps, i16, %struct.iavf_eth_stats, %struct.iavf_vsi, i32, i64, i16, i16, ptr, ptr, %struct.iavf_channel_config, i8, %struct.list_head, %struct.spinlock, i16, i16, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon.154, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon.154 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.virtchnl_version_info = type { i32, i32 }
%struct.virtchnl_vlan_caps = type { %struct.virtchnl_vlan_filtering_caps, %struct.virtchnl_vlan_offload_caps }
%struct.virtchnl_vlan_filtering_caps = type { %struct.virtchnl_vlan_supported_caps, i32, i16, [2 x i8] }
%struct.virtchnl_vlan_supported_caps = type { i32, i32 }
%struct.virtchnl_vlan_offload_caps = type { %struct.virtchnl_vlan_supported_caps, %struct.virtchnl_vlan_supported_caps, i32, i8, [3 x i8] }
%struct.iavf_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.iavf_vsi = type { ptr, ptr, [128 x i32], [128 x i32], i16, i16, [1 x i32], i32, i16, i16, ptr }
%struct.iavf_channel_config = type { [4 x %struct.virtchnl_channel_info], i32, i8 }
%struct.virtchnl_channel_info = type { i16, i16, i32, i64 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iavf_adv_rss = type { i32, %struct.list_head, i32, i64, %struct.virtchnl_rss_cfg }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.153, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.153 = type { ptr }

@iavf_print_adv_rss_cfg.hash_opt = internal global { [300 x i8], [84 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TCP\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDP\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCTP\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IP SA,\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IP DA,\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"src port,\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dst port,\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@iavf_print_adv_rss_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 217, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iavf_print_adv_rss_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/intel/iavf/iavf_adv_rss.c\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iavf_print_adv_rss_cfg._entry_ptr = internal global ptr @iavf_print_adv_rss_cfg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"hash_opt\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 176, i32 14 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 180, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 182, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 184, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 198, i32 20 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 201, i32 20 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 205, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 209, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 212, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [50 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 217, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @iavf_print_adv_rss_cfg._entry, ptr @iavf_print_adv_rss_cfg._entry_ptr, ptr @iavf_print_adv_rss_cfg.hash_opt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_adv_rss_cfg.hash_opt to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_print_adv_rss_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iavf_fill_adv_rss_cfg_msg(ptr nocapture noundef %rss_cfg, i32 noundef %packet_hdrs, i64 noundef %hash_flds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_algorithm = getelementptr inbounds %struct.virtchnl_rss_cfg, ptr %rss_cfg, i32 0, i32 1
  %0 = ptrtoint ptr %rss_algorithm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rss_algorithm, align 4
  %1 = ptrtoint ptr %rss_cfg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %rss_cfg, align 4
  %count = getelementptr inbounds %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %count, align 4
  %arrayidx = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %3
  %and = and i32 %packet_hdrs, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %arrayidx, align 4
  %and.i = and i64 %hash_flds, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %field_selector.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %3, i32 1
  %6 = ptrtoint ptr %field_selector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %field_selector.i, align 4
  %or.i = or i32 %7, 1
  store i32 %or.i, ptr %field_selector.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %and1.i = and i64 %hash_flds, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %arrayidx, align 4
  %and.i28 = and i64 %hash_flds, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i28)
  %tobool.not.i29 = icmp eq i64 %and.i28, 0
  br i1 %tobool.not.i29, label %sw.bb2.if.end.i35_crit_edge, label %if.then.i32

sw.bb2.if.end.i35_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i35

if.then.i32:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %field_selector.i30 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %3, i32 1
  %9 = ptrtoint ptr %field_selector.i30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %field_selector.i30, align 4
  %or.i31 = or i32 %10, 1
  store i32 %or.i31, ptr %field_selector.i30, align 4
  br label %if.end.i35

if.end.i35:                                       ; preds = %if.then.i32, %sw.bb2.if.end.i35_crit_edge
  %and1.i33 = and i64 %hash_flds, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i33)
  %tobool2.not.i34 = icmp eq i64 %and1.i33, 0
  br i1 %tobool2.not.i34, label %if.end.i35.sw.epilog_crit_edge, label %if.end.i35.sw.epilog.sink.split_crit_edge

if.end.i35.sw.epilog.sink.split_crit_edge:        ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end.i35.sw.epilog_crit_edge:                   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end.i35.sw.epilog.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split_crit_edge
  %field_selector4.i = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %3, i32 1
  %11 = ptrtoint ptr %field_selector4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field_selector4.i, align 4
  %or5.i37 = or i32 %12, 2
  store i32 %or5.i37, ptr %field_selector4.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i35.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %inc5 = add i32 %14, 1
  store i32 %inc5, ptr %count, align 4
  %arrayidx6 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %14
  %and7 = and i32 %packet_hdrs, 28
  %15 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and7, label %sw.epilog.cleanup_crit_edge [
    i32 4, label %sw.bb8
    i32 8, label %sw.bb9
    i32 16, label %sw.bb10
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %arrayidx6, align 4
  %and.i39 = and i64 %hash_flds, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i39)
  %tobool.not.i40 = icmp eq i64 %and.i39, 0
  br i1 %tobool.not.i40, label %sw.bb8.if.end.i46_crit_edge, label %if.then.i43

sw.bb8.if.end.i46_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i46

if.then.i43:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %field_selector.i41 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %14, i32 1
  %17 = ptrtoint ptr %field_selector.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %field_selector.i41, align 4
  %or.i42 = or i32 %18, 1
  store i32 %or.i42, ptr %field_selector.i41, align 4
  br label %if.end.i46

if.end.i46:                                       ; preds = %if.then.i43, %sw.bb8.if.end.i46_crit_edge
  %and1.i44 = and i64 %hash_flds, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i44)
  %tobool2.not.i45 = icmp eq i64 %and1.i44, 0
  br i1 %tobool2.not.i45, label %if.end.i46.cleanup_crit_edge, label %if.end.i46.cleanup.sink.split_crit_edge

if.end.i46.cleanup.sink.split_crit_edge:          ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i46.cleanup_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9:                                           ; preds = %sw.epilog
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %arrayidx6, align 4
  %and.i50 = and i64 %hash_flds, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i50)
  %tobool.not.i51 = icmp eq i64 %and.i50, 0
  br i1 %tobool.not.i51, label %sw.bb9.if.end.i57_crit_edge, label %if.then.i54

sw.bb9.if.end.i57_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i57

if.then.i54:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %field_selector.i52 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %14, i32 1
  %20 = ptrtoint ptr %field_selector.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field_selector.i52, align 4
  %or.i53 = or i32 %21, 1
  store i32 %or.i53, ptr %field_selector.i52, align 4
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.then.i54, %sw.bb9.if.end.i57_crit_edge
  %and1.i55 = and i64 %hash_flds, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i55)
  %tobool2.not.i56 = icmp eq i64 %and1.i55, 0
  br i1 %tobool2.not.i56, label %if.end.i57.cleanup_crit_edge, label %if.end.i57.cleanup.sink.split_crit_edge

if.end.i57.cleanup.sink.split_crit_edge:          ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i57.cleanup_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %arrayidx6, align 4
  %and.i61 = and i64 %hash_flds, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i61)
  %tobool.not.i62 = icmp eq i64 %and.i61, 0
  br i1 %tobool.not.i62, label %sw.bb10.if.end.i68_crit_edge, label %if.then.i65

sw.bb10.if.end.i68_crit_edge:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i68

if.then.i65:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %field_selector.i63 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %14, i32 1
  %23 = ptrtoint ptr %field_selector.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field_selector.i63, align 4
  %or.i64 = or i32 %24, 1
  store i32 %or.i64, ptr %field_selector.i63, align 4
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i65, %sw.bb10.if.end.i68_crit_edge
  %and1.i66 = and i64 %hash_flds, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i66)
  %tobool2.not.i67 = icmp eq i64 %and1.i66, 0
  br i1 %tobool2.not.i67, label %if.end.i68.cleanup_crit_edge, label %if.end.i68.cleanup.sink.split_crit_edge

if.end.i68.cleanup.sink.split_crit_edge:          ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i68.cleanup_crit_edge:                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i68.cleanup.sink.split_crit_edge, %if.end.i57.cleanup.sink.split_crit_edge, %if.end.i46.cleanup.sink.split_crit_edge
  %field_selector4.i47 = getelementptr %struct.virtchnl_proto_hdrs, ptr %rss_cfg, i32 0, i32 3, i32 %14, i32 1
  %25 = ptrtoint ptr %field_selector4.i47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %field_selector4.i47, align 4
  %or5.i70 = or i32 %26, 2
  store i32 %or5.i70, ptr %field_selector4.i47, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i68.cleanup_crit_edge, %if.end.i57.cleanup_crit_edge, %if.end.i46.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.i46.cleanup_crit_edge ], [ 0, %if.end.i57.cleanup_crit_edge ], [ 0, %if.end.i68.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iavf_find_adv_rss_cfg_by_hdrs(ptr noundef readonly %adapter, i32 noundef %packet_hdrs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adv_rss_list_head = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 60
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %adv_rss_list_head, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %adv_rss_list_head
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %packet_hdrs2 = getelementptr i8, ptr %.pn, i32 8
  %1 = ptrtoint ptr %packet_hdrs2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %packet_hdrs2, align 4
  %cmp3 = icmp eq i32 %2, %packet_hdrs
  br i1 %cmp3, label %cleanup.split.loop.exit13, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup.split.loop.exit13:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %rss.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit13, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %rss.0.le, %cleanup.split.loop.exit13 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_print_adv_rss_cfg(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %rss, ptr noundef %action, ptr noundef %result) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %packet_hdrs1 = getelementptr inbounds %struct.iavf_adv_rss, ptr %rss, i32 0, i32 2
  %0 = ptrtoint ptr %packet_hdrs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %packet_hdrs1, align 4
  %hash_flds2 = getelementptr inbounds %struct.iavf_adv_rss, ptr %rss, i32 0, i32 3
  %2 = ptrtoint ptr %hash_flds2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %hash_flds2, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else:                                          ; preds = %entry
  %and3 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else6, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else6:                                         ; preds = %if.else
  %and7 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else6.cleanup_crit_edge, label %if.else6.if.end12_crit_edge

if.else6.if.end12_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.else6.if.end12_crit_edge, %if.else.if.end12_crit_edge, %entry.if.end12_crit_edge
  %proto.0 = phi ptr [ @.str, %entry.if.end12_crit_edge ], [ @.str.1, %if.else.if.end12_crit_edge ], [ @.str.2, %if.else6.if.end12_crit_edge ]
  %4 = call ptr @memset(ptr @iavf_print_adv_rss_cfg.hash_opt, i32 0, i32 300)
  %call = tail call ptr @strcat(ptr noundef nonnull @iavf_print_adv_rss_cfg.hash_opt, ptr noundef nonnull %proto.0)
  %and13 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %strlen = tail call i32 @strlen(ptr noundef nonnull @iavf_print_adv_rss_cfg.hash_opt) #9
  %endptr = getelementptr i8, ptr @iavf_print_adv_rss_cfg.hash_opt, i32 %strlen
  %. = select i1 %tobool14.not, i32 1983258624, i32 1983127552
  %5 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %., ptr %endptr, align 1
  %and20 = and i64 %3, 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %if.end12.if.end24_crit_edge, label %if.then22

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %strlen64 = tail call i32 @strlen(ptr noundef nonnull @iavf_print_adv_rss_cfg.hash_opt) #9
  %endptr65 = getelementptr i8, ptr @iavf_print_adv_rss_cfg.hash_opt, i32 %strlen64
  %6 = call ptr @memcpy(ptr %endptr65, ptr @.str.5, i32 7)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end12.if.end24_crit_edge
  %and25 = and i64 %3, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp eq i64 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end29_crit_edge, label %if.then27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %strlen62 = tail call i32 @strlen(ptr noundef nonnull @iavf_print_adv_rss_cfg.hash_opt) #9
  %endptr63 = getelementptr i8, ptr @iavf_print_adv_rss_cfg.hash_opt, i32 %strlen62
  %7 = call ptr @memcpy(ptr %endptr63, ptr @.str.6, i32 7)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24.if.end29_crit_edge
  %and30 = and i64 %3, 336
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %strlen60 = tail call i32 @strlen(ptr noundef nonnull @iavf_print_adv_rss_cfg.hash_opt) #9
  %endptr61 = getelementptr i8, ptr @iavf_print_adv_rss_cfg.hash_opt, i32 %strlen60
  %8 = call ptr @memcpy(ptr %endptr61, ptr @.str.7, i32 10)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %and35 = and i64 %3, 672
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %strlen58 = tail call i32 @strlen(ptr noundef nonnull @iavf_print_adv_rss_cfg.hash_opt) #9
  %endptr59 = getelementptr i8, ptr @iavf_print_adv_rss_cfg.hash_opt, i32 %strlen58
  %9 = call ptr @memcpy(ptr %endptr59, ptr @.str.8, i32 10)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %tobool40.not = icmp eq ptr %action, null
  %spec.store.select = select i1 %tobool40.not, ptr @.str.9, ptr %action
  %tobool43.not = icmp eq ptr %result, null
  %spec.store.select48 = select i1 %tobool43.not, ptr @.str.9, ptr %result
  %pdev = getelementptr inbounds %struct.iavf_adapter, ptr %adapter, i32 0, i32 28
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %spec.store.select, ptr noundef nonnull @iavf_print_adv_rss_cfg.hash_opt, ptr noundef %spec.store.select48) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.else6.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @iavf_print_adv_rss_cfg.hash_opt, !1, !"hash_opt", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 176, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 180, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 182, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 184, i32 11}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 192, i32 20}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 194, i32 20}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 198, i32 20}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 201, i32 20}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 205, i32 20}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 209, i32 20}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 212, i32 12}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/iavf/iavf_adv_rss.c", i32 217, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iavf_print_adv_rss_cfg._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @iavf_print_adv_rss_cfg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
