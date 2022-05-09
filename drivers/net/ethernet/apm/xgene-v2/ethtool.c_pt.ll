; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene-v2/ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene-v2/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xge_gstrings_stats = type { [32 x i8], i32 }
%struct.xge_gstrings_extd_stats = type { [32 x i8], i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@xge_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @xge_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xge_get_strings, ptr null, ptr @xge_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @xge_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xge_get_link_ksettings, ptr @xge_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgene-enet-v2\00", [18 x i8] zeroinitializer }, align 32
@gstrings_stats = internal constant { [5 x %struct.xge_gstrings_stats], [44 x i8] } { [5 x %struct.xge_gstrings_stats] [%struct.xge_gstrings_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 288 }, %struct.xge_gstrings_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272 }, %struct.xge_gstrings_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 296 }, %struct.xge_gstrings_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 280 }, %struct.xge_gstrings_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 304 }], [44 x i8] zeroinitializer }, align 32
@gstrings_extd_stats = internal global { [40 x %struct.xge_gstrings_extd_stats], [384 x i8] } { [40 x %struct.xge_gstrings_extd_stats] [%struct.xge_gstrings_extd_stats { [32 x i8] c"tx_rx_64b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 41088, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_rx_127b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41092, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_rx_255b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41096, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_rx_511b_frame_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41100, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_rx_1023b_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 41104, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_rx_1518b_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 41108, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_rx_1522b_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 41112, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_fcs_error_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41124, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_multicast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41128, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_broadcast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41132, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_ctrl_frame_pkt_cntr\00\00\00\00\00\00\00\00\00\00", i32 41136, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_pause_frame_pkt_cntr\00\00\00\00\00\00\00\00\00", i32 41140, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_unk_opcode_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41144, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_align_err_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41148, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_frame_len_err_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41152, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_code_err_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41156, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_carrier_sense_err_cntr\00\00\00\00\00\00\00", i32 41160, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_undersize_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41164, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_oversize_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 41168, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_fragments_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41172, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_jabber_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41176, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"rx_dropped_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41180, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_multicast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41192, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_broadcast_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41196, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_pause_ctrl_frame_cntr\00\00\00\00\00\00\00\00", i32 41200, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_defer_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41204, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_excv_defer_pkt_cntr\00\00\00\00\00\00\00\00\00\00", i32 41208, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_single_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00", i32 41212, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_multi_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00", i32 41216, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_late_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 41220, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_excv_col_pkt_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 41224, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_total_col_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41228, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_pause_frames_hnrd_cntr\00\00\00\00\00\00\00", i32 41232, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_drop_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41236, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_jabber_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00", i32 41240, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_fcs_error_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41244, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_ctrl_frame_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41248, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_oversize_frame_cntr\00\00\00\00\00\00\00\00\00\00", i32 41252, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_undersize_frame_cntr\00\00\00\00\00\00\00\00\00", i32 41256, i32 0 }, %struct.xge_gstrings_extd_stats { [32 x i8] c"tx_fragments_cntr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41260, i32 0 }], [384 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"xge_ethtool_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 162, i32 33 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 91, i32 23 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"gstrings_stats\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 20, i32 40 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"gstrings_extd_stats\00", align 1
@___asan_gen_.12 = private constant [47 x i8] c"../drivers/net/ethernet/apm/xgene-v2/ethtool.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 28, i32 39 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @xge_ethtool_ops, ptr @.str, ptr @gstrings_stats, ptr @gstrings_extd_stats], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xge_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gstrings_stats to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gstrings_extd_stats to i32), i32 1600, i32 1984, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xge_set_ethtool_ops(ptr nocapture noundef writeonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 44
  %0 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xge_ethtool_ops, ptr %ethtool_ops, align 16
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xge_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %driver, ptr @.str, i32 14)
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %strcpy = tail call ptr @strcpy(ptr %bus_info, ptr %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xge_get_strings(ptr nocapture noundef readnone %ndev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = call ptr @memcpy(ptr %data, ptr @gstrings_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([5 x %struct.xge_gstrings_stats], ptr @gstrings_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([5 x %struct.xge_gstrings_stats], ptr @gstrings_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([5 x %struct.xge_gstrings_stats], ptr @gstrings_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([5 x %struct.xge_gstrings_stats], ptr @gstrings_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.preheader
  %i.124 = phi i32 [ %inc10, %for.body4.for.body4_crit_edge ], [ 0, %for.body.preheader ]
  %p.123 = phi ptr [ %add.ptr8, %for.body4.for.body4_crit_edge ], [ %add.ptr.4, %for.body.preheader ]
  %arrayidx5 = getelementptr [40 x %struct.xge_gstrings_extd_stats], ptr @gstrings_extd_stats, i32 0, i32 %i.124
  %5 = call ptr @memcpy(ptr %p.123, ptr %arrayidx5, i32 32)
  %add.ptr8 = getelementptr i8, ptr %p.123, i32 32
  %inc10 = add nuw nsw i32 %i.124, 1
  %exitcond.not = icmp eq i32 %inc10, 40
  br i1 %exitcond.not, label %for.body4.cleanup_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xge_get_ethtool_stats(ptr noundef %ndev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %add.ptr = getelementptr i8, ptr %ndev, i32 2592
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %incdec.ptr = getelementptr i64, ptr %data, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data, align 8
  %add.ptr.1 = getelementptr i8, ptr %ndev, i32 2576
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %incdec.ptr.1 = getelementptr i64, ptr %data, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %incdec.ptr, align 8
  %add.ptr.2 = getelementptr i8, ptr %ndev, i32 2600
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %incdec.ptr.2 = getelementptr i64, ptr %data, i32 3
  %8 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %incdec.ptr.1, align 8
  %add.ptr.3 = getelementptr i8, ptr %ndev, i32 2584
  %9 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3, align 8
  %incdec.ptr.3 = getelementptr i64, ptr %data, i32 4
  %11 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %incdec.ptr.2, align 8
  %add.ptr.4 = getelementptr i8, ptr %ndev, i32 2608
  %12 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4, align 8
  %14 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %incdec.ptr.3, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry ]
  %addr.i = getelementptr [40 x %struct.xge_gstrings_extd_stats], ptr @gstrings_extd_stats, i32 0, i32 %i.05.i, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 @xge_rd_csr(ptr noundef %add.ptr.i, i32 noundef %16) #7
  %value.i = getelementptr [40 x %struct.xge_gstrings_extd_stats], ptr @gstrings_extd_stats, i32 0, i32 %i.05.i, i32 2
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i, align 4
  %add.i = add i32 %18, %call.i
  store i32 %add.i, ptr %value.i, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %for.body3.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body3.preheader:                              ; preds = %for.body.i
  %incdec.ptr.4 = getelementptr i64, ptr %data, i32 5
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.preheader
  %i.119 = phi i32 [ %inc7, %for.body3.for.body3_crit_edge ], [ 0, %for.body3.preheader ]
  %data.addr.118 = phi ptr [ %incdec.ptr5, %for.body3.for.body3_crit_edge ], [ %incdec.ptr.4, %for.body3.preheader ]
  %value = getelementptr [40 x %struct.xge_gstrings_extd_stats], ptr @gstrings_extd_stats, i32 0, i32 %i.119, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %conv = zext i32 %20 to i64
  %incdec.ptr5 = getelementptr i64, ptr %data.addr.118, i32 1
  %21 = ptrtoint ptr %data.addr.118 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %data.addr.118, align 8
  %inc7 = add nuw nsw i32 %i.119, 1
  %exitcond.not = icmp eq i32 %inc7, 40
  br i1 %exitcond.not, label %for.end8, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end8:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xge_get_sset_count(ptr nocapture noundef readnone %ndev, i32 noundef %sset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 45, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_get_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %1, ptr noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xge_set_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %1, ptr noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xge_rd_csr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @xge_ethtool_ops, !1, !"xge_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene-v2/ethtool.c", i32 162, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/apm/xgene-v2/ethtool.c", i32 91, i32 23}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/apm/xgene-v2/ethtool.c", i32 92, i32 26}
!6 = !{ptr @gstrings_stats, !7, !"gstrings_stats", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/apm/xgene-v2/ethtool.c", i32 20, i32 40}
!8 = !{ptr @gstrings_extd_stats, !9, !"gstrings_extd_stats", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/apm/xgene-v2/ethtool.c", i32 28, i32 39}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
