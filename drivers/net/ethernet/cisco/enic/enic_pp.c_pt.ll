; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/enic_pp.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/enic_pp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.enic = type { ptr, ptr, %struct.vnic_enet_config, [6 x %struct.vnic_dev_bar], ptr, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.work_struct, [18 x %struct.msix_entry], [18 x %struct.enic_msix_entry], i32, %struct.spinlock, [6 x i8], i32, i32, i32, i32, i32, %struct.enic_rx_coal, i32, i32, i16, %struct.spinlock, i8, ptr, [76 x i8], [8 x %struct.vnic_wq], [8 x %struct.spinlock], i32, i16, i16, [24 x i8], [8 x %struct.vnic_rq], i32, %struct.vxlan_offload, i64, i64, [16 x %struct.napi_struct], [72 x i8], [18 x %struct.vnic_intr], i32, ptr, [32 x i8], [16 x %struct.vnic_cq], i32, %struct.enic_rfs_flw_tbl, i32, [40 x i8], %struct.vnic_gen_stats, [96 x i8] }
%struct.vnic_enet_config = type { i32, i32, i32, i16, i16, i8, i8, [16 x i8], i32, i16, i16, i16 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.msix_entry = type { i32, i16 }
%struct.enic_msix_entry = type { i32, [24 x i8], ptr, ptr, ptr }
%struct.enic_rx_coal = type { i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_rq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, ptr, i32 }
%struct.vxlan_offload = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32, i32, %struct.vnic_rx_bytes_counter, i32, i32, i64 }
%struct.vnic_rx_bytes_counter = type { i32, i32 }
%struct.enic_rfs_flw_tbl = type { i16, i32, i16, [1024 x %struct.hlist_head], %struct.spinlock, %struct.timer_list }
%struct.hlist_head = type { ptr }
%struct.vnic_gen_stats = type { i64 }
%struct.enic_port_profile = type { i32, i8, [40 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@enic_pp_handlers = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @enic_pp_preassociate, ptr @enic_pp_preassociate_rr, ptr @enic_pp_associate, ptr @enic_pp_disassociate], [16 x i8] zeroinitializer }, align 32
@__const.enic_set_port_profile.oui = private unnamed_addr constant [3 x i8] c"\00\00\0C", align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot find pp mac address for VF %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUB\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 6, i64 7, i64 12]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"enic_pp_handlers\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 177, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 102, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 112, i32 51 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [45 x i8] c"../drivers/net/ethernet/cisco/enic/enic_pp.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 118, i32 21 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @enic_pp_handlers, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enic_pp_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_is_valid_pp_vf(ptr noundef %enic, i32 noundef %vf, ptr nocapture noundef writeonly %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cond = icmp eq i32 %vf, -1
  br i1 %cond, label %land.lhs.true, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @enic_sriov_enabled(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then1

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf)
  %cmp2 = icmp slt i32 %vf, 0
  br i1 %cmp2, label %if.then1.return_crit_edge, label %lor.lhs.false

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %if.then1
  %num_vfs = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 22
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vf)
  %cmp3.not = icmp ugt i32 %conv, %vf
  br i1 %cmp3.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @enic_is_dynamic(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %lor.lhs.false.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then1.return_crit_edge, %if.then.return_crit_edge
  %.sink = phi i32 [ 0, %if.end13 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.then1.return_crit_edge ], [ -95, %if.then.return_crit_edge ], [ -95, %land.lhs.true.return_crit_edge ]
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %if.then1.return_crit_edge ], [ 0, %if.then.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ]
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %err, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_sriov_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_is_dynamic(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_process_set_pp_request(ptr noundef %enic, i32 noundef %vf, ptr noundef %prev_pp, ptr noundef %restore_pp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cond.i = icmp eq i32 %vf, -1
  br i1 %cond.i, label %land.lhs.true.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @enic_sriov_enabled(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.then1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf)
  %cmp2.i = icmp slt i32 %vf, 0
  br i1 %cmp2.i, label %if.then1.i.cleanup_crit_edge, label %lor.lhs.false.i

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then1.i
  %num_vfs.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 22
  %0 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs.i, align 4
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf)
  %cmp3.not.i = icmp ugt i32 %conv.i, %vf
  br i1 %cmp3.not.i, label %cond.false, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %call10.i = tail call i32 @enic_is_dynamic(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %cond.true

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp1 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %2 = ptrtoint ptr %pp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp1, align 16
  br label %if.end5

cond.false:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp2 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %4 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp2, align 16
  %add.ptr = getelementptr %struct.enic_port_profile, ptr %5, i32 %vf
  br label %if.end5

if.end5:                                          ; preds = %cond.false, %cond.true
  %pp.0.ph = phi ptr [ %add.ptr, %cond.false ], [ %3, %cond.true ]
  %request = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp6 = icmp ugt i8 %7, 3
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %7 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @enic_pp_handlers, i32 0, i32 %conv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call15 = tail call i32 %9(ptr noundef %enic, i32 noundef %vf, ptr noundef %prev_pp, ptr noundef %restore_pp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end11 ], [ -95, %if.end5.cleanup_crit_edge ], [ -95, %land.lhs.true.i.cleanup_crit_edge ], [ -95, %if.then.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enic_process_get_pp_request(ptr noundef %enic, i32 noundef %vf, i32 noundef %request, ptr nocapture noundef writeonly %response) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %1 = zext i32 %request to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %request, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body_crit_edge
    i32 2, label %entry.do.body_crit_edge58
    i32 3, label %do.body8
  ]

entry.do.body_crit_edge58:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge58
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #8
  %call = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %vdev4 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %2 = ptrtoint ptr %vdev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev4, align 128
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %vf to i16
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %3, i16 noundef zeroext %conv) #8
  %4 = ptrtoint ptr %vdev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev4, align 128
  %call2 = call i32 @vnic_dev_enable2_done(ptr noundef %5, ptr noundef nonnull %status) #8
  %6 = ptrtoint ptr %vdev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev4, align 128
  call void @vnic_dev_cmd_proxy_end(ptr noundef %7) #8
  br label %sw.epilog

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call i32 @vnic_dev_enable2_done(ptr noundef %3, ptr noundef nonnull %status) #8
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  %devcmd_lock9 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock9) #8
  %call10 = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %vdev19 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %8 = ptrtoint ptr %vdev19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev19, align 128
  br i1 %tobool11.not, label %if.else18, label %if.then12

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %conv14 = trunc i32 %vf to i16
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %9, i16 noundef zeroext %conv14) #8
  %10 = ptrtoint ptr %vdev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev19, align 128
  %call16 = call i32 @vnic_dev_deinit_done(ptr noundef %11, ptr noundef nonnull %status) #8
  %12 = ptrtoint ptr %vdev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdev19, align 128
  call void @vnic_dev_cmd_proxy_end(ptr noundef %13) #8
  br label %sw.epilog

if.else18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 @vnic_dev_deinit_done(ptr noundef %9, ptr noundef nonnull %status) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else18, %if.then12, %if.else, %if.then
  %devcmd_lock9.sink = phi ptr [ %devcmd_lock, %if.else ], [ %devcmd_lock, %if.then ], [ %devcmd_lock9, %if.else18 ], [ %devcmd_lock9, %if.then12 ]
  %err.2 = phi i32 [ %call5, %if.else ], [ %call2, %if.then ], [ %call20, %if.else18 ], [ %call16, %if.then12 ]
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock9.sink) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool25.not = icmp eq i32 %err.2, 0
  br i1 %tobool25.not, label %if.end27thread-pre-split, label %sw.epilog.if.end27_crit_edge

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27thread-pre-split:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %status, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27thread-pre-split, %sw.epilog.if.end27_crit_edge
  %15 = phi i32 [ %.pr, %if.end27thread-pre-split ], [ %err.2, %sw.epilog.if.end27_crit_edge ]
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %15, label %sw.default33 [
    i32 0, label %if.end27.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb29
    i32 6, label %sw.bb30
    i32 7, label %sw.bb31
    i32 12, label %sw.bb32
  ]

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb32:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.default33:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %if.end27.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ 258, %sw.bb29 ], [ 259, %sw.bb30 ], [ 260, %sw.bb31 ], [ 257, %sw.bb32 ], [ 261, %sw.default33 ], [ 256, %if.end27.cleanup.sink.split_crit_edge ]
  %17 = ptrtoint ptr %response to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink, ptr %response, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_is_valid_vf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_cmd_proxy_by_index_start(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_enable2_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_cmd_proxy_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_deinit_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enic_pp_preassociate(ptr nocapture noundef readnone %enic, i32 noundef %vf, ptr nocapture noundef readnone %prev_pp, ptr nocapture noundef readnone %restore_pp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_pp_preassociate_rr(ptr noundef %enic, i32 noundef %vf, ptr nocapture noundef readnone %prev_pp, ptr nocapture noundef writeonly %restore_pp) #0 align 64 {
entry:
  %oui.i = alloca [3 x i8], align 1
  %os_type.i = alloca i16, align 2
  %uuid_str.i = alloca [38 x i8], align 1
  %client_mac_str.i = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cond.i = icmp eq i32 %vf, -1
  br i1 %cond.i, label %land.lhs.true.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @enic_sriov_enabled(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.then1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf)
  %cmp2.i = icmp slt i32 %vf, 0
  br i1 %cmp2.i, label %if.then1.i.cleanup_crit_edge, label %lor.lhs.false.i

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then1.i
  %num_vfs.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 22
  %0 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs.i, align 4
  %conv.i = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf)
  %cmp3.not.i = icmp ugt i32 %conv.i, %vf
  br i1 %cmp3.not.i, label %cond.false, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %call10.i = tail call i32 @enic_is_dynamic(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %cond.true

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp1 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %2 = ptrtoint ptr %pp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp1, align 16
  br label %if.end5

cond.false:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp2 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %4 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp2, align 16
  %add.ptr = getelementptr %struct.enic_port_profile, ptr %5, i32 %vf
  br label %if.end5

if.end5:                                          ; preds = %cond.false, %cond.true
  %pp.0.ph = phi ptr [ %add.ptr, %cond.false ], [ %3, %cond.true ]
  %request = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp6.not = icmp eq i8 %7, 2
  br i1 %cmp6.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  %call9 = tail call i32 @enic_pp_disassociate(ptr noundef %enic, i32 noundef %vf, ptr noundef %prev_pp, ptr noundef %restore_pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end13_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %8 = ptrtoint ptr %restore_pp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %restore_pp, align 4
  %9 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enic, align 128
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %oui.i) #8
  %11 = call ptr @memcpy(ptr %oui.i, ptr @__const.enic_set_port_profile.oui, i32 3)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %os_type.i) #8
  %12 = ptrtoint ptr %os_type.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %os_type.i, align 2
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %uuid_str.i) #8
  %13 = call ptr @memset(ptr %uuid_str.i, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %client_mac_str.i) #8
  %14 = call ptr @memset(ptr %client_mac_str.i, i32 255, i32 18)
  br i1 %cond.i, label %land.lhs.true.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end13
  %call.i.i = tail call i32 @enic_sriov_enabled(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.enic_set_port_profile.exit.thread_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.enic_set_port_profile.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %num_vfs.i.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 22
  %15 = ptrtoint ptr %num_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num_vfs.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %vf)
  %cmp3.not.i.i = icmp ugt i32 %conv.i.i, %vf
  br i1 %cmp3.not.i.i, label %cond.false.i, label %lor.lhs.false.i.i.enic_set_port_profile.exit.thread_crit_edge

lor.lhs.false.i.i.enic_set_port_profile.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread

land.lhs.true.i.i:                                ; preds = %if.end13
  %call10.i.i = tail call i32 @enic_is_dynamic(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i.enic_set_port_profile.exit.thread_crit_edge, label %cond.true.i

land.lhs.true.i.i.enic_set_port_profile.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread

cond.true.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp2.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %17 = ptrtoint ptr %pp2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pp2.i, align 16
  br label %if.end6.i

cond.false.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp3.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %19 = ptrtoint ptr %pp3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pp3.i, align 16
  %add.ptr.i = getelementptr %struct.enic_port_profile, ptr %20, i32 %vf
  br label %if.end6.i

if.end6.i:                                        ; preds = %cond.false.i, %cond.true.i
  %pp.0.ph.i = phi ptr [ %add.ptr.i, %cond.false.i ], [ %18, %cond.true.i ]
  %21 = ptrtoint ptr %pp.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pp.0.ph.i, align 4
  %and.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.enic_set_port_profile.exit.thread_crit_edge, label %lor.lhs.false.i63

if.end6.i.enic_set_port_profile.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread

lor.lhs.false.i63:                                ; preds = %if.end6.i
  %name.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph.i, i32 0, i32 2
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %char0.i = load i8, ptr %name.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool9.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i63.enic_set_port_profile.exit.thread_crit_edge, label %if.end11.i

lor.lhs.false.i63.enic_set_port_profile.exit.thread_crit_edge: ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread

if.end11.i:                                       ; preds = %lor.lhs.false.i63
  %call13.i = call ptr @vic_provinfo_alloc(i32 noundef 3264, ptr noundef nonnull %oui.i, i8 noundef zeroext 4) #8
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end11.i.enic_set_port_profile.exit.thread_crit_edge, label %do.body17.i

if.end11.i.enic_set_port_profile.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread

do.body17.i:                                      ; preds = %if.end11.i
  %call20.i = call i32 @strlen(ptr noundef %name.i) #11
  %24 = trunc i32 %call20.i to i16
  %conv.i64 = add i16 %24, 1
  %call23.i = call i32 @vic_provinfo_add_tlv(ptr noundef nonnull %call13.i, i16 noundef zeroext 0, i16 noundef zeroext %conv.i64, ptr noundef %name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %do.end28.i, label %do.body17.i.enic_set_port_profile.exit.thread79_crit_edge

do.body17.i.enic_set_port_profile.exit.thread79_crit_edge: ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread79

do.end28.i:                                       ; preds = %do.body17.i
  %mac_addr.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph.i, i32 0, i32 6
  %25 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac_addr.i, align 4
  %add.ptr.i.i = getelementptr %struct.enic_port_profile, ptr %pp.0.ph.i, i32 0, i32 6, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i161.i = zext i16 %28 to i32
  %or.i.i = or i32 %26, %conv.i161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.else34.i, label %do.end28.i.do.body41.i_crit_edge

do.end28.i.do.body41.i_crit_edge:                 ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41.i

if.else34.i:                                      ; preds = %do.end28.i
  br i1 %cond.i, label %if.then37.i, label %if.else38.i

if.then37.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 86
  %29 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr.i, align 64
  br label %do.body41.i

if.else38.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %vf) #12
  br label %enic_set_port_profile.exit.thread79

do.body41.i:                                      ; preds = %if.then37.i, %do.end28.i.do.body41.i_crit_edge
  %client_mac.0.i = phi ptr [ %30, %if.then37.i ], [ %mac_addr.i, %do.end28.i.do.body41.i_crit_edge ]
  %call42.i = call i32 @vic_provinfo_add_tlv(ptr noundef nonnull %call13.i, i16 noundef zeroext 1, i16 noundef zeroext 6, ptr noundef %client_mac.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.end47.i, label %do.body41.i.enic_set_port_profile.exit.thread79_crit_edge

do.body41.i.enic_set_port_profile.exit.thread79_crit_edge: ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread79

do.end47.i:                                       ; preds = %do.body41.i
  %call49.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %client_mac_str.i, i32 noundef 18, ptr noundef nonnull @.str.1, ptr noundef %client_mac.0.i) #8
  %call52.i = call i32 @vic_provinfo_add_tlv(ptr noundef nonnull %call13.i, i16 noundef zeroext 4, i16 noundef zeroext 18, ptr noundef nonnull %client_mac_str.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %do.end57.i, label %do.end47.i.enic_set_port_profile.exit.thread79_crit_edge

do.end47.i.enic_set_port_profile.exit.thread79_crit_edge: ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread79

do.end57.i:                                       ; preds = %do.end47.i
  %31 = ptrtoint ptr %pp.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pp.0.ph.i, align 4
  %and59.i = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %do.end57.i.if.end73.i_crit_edge, label %if.then61.i

do.end57.i.if.end73.i_crit_edge:                  ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.then61.i:                                      ; preds = %do.end57.i
  %instance_uuid.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph.i, i32 0, i32 3
  %call64.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %uuid_str.i, ptr noundef nonnull @.str.2, ptr noundef %instance_uuid.i) #8
  %call67.i = call i32 @vic_provinfo_add_tlv(ptr noundef nonnull %call13.i, i16 noundef zeroext 9, i16 noundef zeroext 38, ptr noundef nonnull %uuid_str.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.then61.i.if.end73.i_crit_edge, label %if.then61.i.enic_set_port_profile.exit.thread79_crit_edge

if.then61.i.enic_set_port_profile.exit.thread79_crit_edge: ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread79

if.then61.i.if.end73.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then61.i.if.end73.i_crit_edge, %do.end57.i.if.end73.i_crit_edge
  %33 = ptrtoint ptr %pp.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pp.0.ph.i, align 4
  %and75.i = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %if.end73.i.do.body90.i_crit_edge, label %if.then77.i

if.end73.i.do.body90.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90.i

if.then77.i:                                      ; preds = %if.end73.i
  %host_uuid.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph.i, i32 0, i32 4
  %call80.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %uuid_str.i, ptr noundef nonnull @.str.2, ptr noundef %host_uuid.i) #8
  %call83.i = call i32 @vic_provinfo_add_tlv(ptr noundef nonnull %call13.i, i16 noundef zeroext 8, i16 noundef zeroext 38, ptr noundef nonnull %uuid_str.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.then77.i.do.body90.i_crit_edge, label %if.then77.i.enic_set_port_profile.exit.thread79_crit_edge

if.then77.i.enic_set_port_profile.exit.thread79_crit_edge: ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread79

if.then77.i.do.body90.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body90.i

do.body90.i:                                      ; preds = %if.then77.i.do.body90.i_crit_edge, %if.end73.i.do.body90.i_crit_edge
  %call91.i = call i32 @vic_provinfo_add_tlv(ptr noundef nonnull %call13.i, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %os_type.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %do.body97.i, label %do.body90.i.enic_set_port_profile.exit.thread79_crit_edge

do.body90.i.enic_set_port_profile.exit.thread79_crit_edge: ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %enic_set_port_profile.exit.thread79

do.body97.i:                                      ; preds = %do.body90.i
  %devcmd_lock.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #8
  %call98.i = call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  %vdev107.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %35 = ptrtoint ptr %vdev107.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vdev107.i, align 128
  br i1 %tobool99.not.i, label %if.else106.i, label %if.then100.i

if.then100.i:                                     ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv101.i = trunc i32 %vf to i16
  call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %36, i16 noundef zeroext %conv101.i) #8
  %37 = ptrtoint ptr %vdev107.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdev107.i, align 128
  %call103.i = call i32 @vic_provinfo_size(ptr noundef nonnull %call13.i) #8
  %call104.i = call i32 @vnic_dev_init_prov2(ptr noundef %38, ptr noundef nonnull %call13.i, i32 noundef %call103.i) #8
  %39 = ptrtoint ptr %vdev107.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vdev107.i, align 128
  call void @vnic_dev_cmd_proxy_end(ptr noundef %40) #8
  br label %enic_set_port_profile.exit

if.else106.i:                                     ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #10
  %call108.i = call i32 @vic_provinfo_size(ptr noundef nonnull %call13.i) #8
  %call109.i = call i32 @vnic_dev_init_prov2(ptr noundef %36, ptr noundef nonnull %call13.i, i32 noundef %call108.i) #8
  br label %enic_set_port_profile.exit

enic_set_port_profile.exit.thread:                ; preds = %if.end11.i.enic_set_port_profile.exit.thread_crit_edge, %lor.lhs.false.i63.enic_set_port_profile.exit.thread_crit_edge, %if.end6.i.enic_set_port_profile.exit.thread_crit_edge, %land.lhs.true.i.i.enic_set_port_profile.exit.thread_crit_edge, %lor.lhs.false.i.i.enic_set_port_profile.exit.thread_crit_edge, %if.then.i.i.enic_set_port_profile.exit.thread_crit_edge
  %retval.0.i65.ph = phi i32 [ -22, %lor.lhs.false.i.i.enic_set_port_profile.exit.thread_crit_edge ], [ -95, %if.then.i.i.enic_set_port_profile.exit.thread_crit_edge ], [ -95, %land.lhs.true.i.i.enic_set_port_profile.exit.thread_crit_edge ], [ -12, %if.end11.i.enic_set_port_profile.exit.thread_crit_edge ], [ -22, %if.end6.i.enic_set_port_profile.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i63.enic_set_port_profile.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %client_mac_str.i) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %uuid_str.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %os_type.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %oui.i) #8
  br label %cleanup

enic_set_port_profile.exit.thread79:              ; preds = %do.body90.i.enic_set_port_profile.exit.thread79_crit_edge, %if.then77.i.enic_set_port_profile.exit.thread79_crit_edge, %if.then61.i.enic_set_port_profile.exit.thread79_crit_edge, %do.end47.i.enic_set_port_profile.exit.thread79_crit_edge, %do.body41.i.enic_set_port_profile.exit.thread79_crit_edge, %if.else38.i, %do.body17.i.enic_set_port_profile.exit.thread79_crit_edge
  %err.1.i.ph = phi i32 [ %call23.i, %do.body17.i.enic_set_port_profile.exit.thread79_crit_edge ], [ -22, %if.else38.i ], [ %call42.i, %do.body41.i.enic_set_port_profile.exit.thread79_crit_edge ], [ %call52.i, %do.end47.i.enic_set_port_profile.exit.thread79_crit_edge ], [ %call67.i, %if.then61.i.enic_set_port_profile.exit.thread79_crit_edge ], [ %call83.i, %if.then77.i.enic_set_port_profile.exit.thread79_crit_edge ], [ %call91.i, %do.body90.i.enic_set_port_profile.exit.thread79_crit_edge ]
  call void @vic_provinfo_free(ptr noundef nonnull %call13.i) #8
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %client_mac_str.i) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %uuid_str.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %os_type.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %oui.i) #8
  br label %cleanup

enic_set_port_profile.exit:                       ; preds = %if.else106.i, %if.then100.i
  %err.0.i = phi i32 [ %call109.i, %if.else106.i ], [ %call104.i, %if.then100.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #8
  %call114.i = call i32 @enic_dev_status_to_errno(i32 noundef %err.0.i) #8
  call void @vic_provinfo_free(ptr noundef nonnull %call13.i) #8
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %client_mac_str.i) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %uuid_str.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %os_type.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %oui.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool15.not = icmp eq i32 %call114.i, 0
  br i1 %tobool15.not, label %if.end17, label %enic_set_port_profile.exit.cleanup_crit_edge

enic_set_port_profile.exit.cleanup_crit_edge:     ; preds = %enic_set_port_profile.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %enic_set_port_profile.exit
  %41 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp20.not = icmp eq i8 %42, 2
  br i1 %cmp20.not, label %if.end17.cleanup_crit_edge, label %do.body23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body23:                                        ; preds = %if.end17
  call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #8
  %call24 = call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %43 = ptrtoint ptr %vdev107.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdev107.i, align 128
  br i1 %tobool25.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %conv27 = trunc i32 %vf to i16
  call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %44, i16 noundef zeroext %conv27) #8
  %45 = ptrtoint ptr %vdev107.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vdev107.i, align 128
  %call29 = call i32 @vnic_dev_enable2(ptr noundef %46, i32 noundef 0) #8
  %47 = ptrtoint ptr %vdev107.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdev107.i, align 128
  call void @vnic_dev_cmd_proxy_end(ptr noundef %48) #8
  br label %if.end34

if.else31:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 @vnic_dev_enable2(ptr noundef %44, i32 noundef 0) #8
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then26
  %err.0 = phi i32 [ %call33, %if.else31 ], [ %call29, %if.then26 ]
  call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #8
  %call38 = call i32 @enic_dev_status_to_errno(i32 noundef %err.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end17.cleanup_crit_edge, %enic_set_port_profile.exit.cleanup_crit_edge, %enic_set_port_profile.exit.thread79, %enic_set_port_profile.exit.thread, %if.then8.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8.cleanup_crit_edge ], [ %call114.i, %enic_set_port_profile.exit.cleanup_crit_edge ], [ -95, %land.lhs.true.i.cleanup_crit_edge ], [ -95, %if.then.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %retval.0.i65.ph, %enic_set_port_profile.exit.thread ], [ %err.1.i.ph, %enic_set_port_profile.exit.thread79 ], [ 0, %if.end17.cleanup_crit_edge ], [ %call38, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_pp_associate(ptr noundef %enic, i32 noundef %vf, ptr nocapture noundef readonly %prev_pp, ptr nocapture noundef writeonly %restore_pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enic, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cond.i = icmp eq i32 %vf, -1
  br i1 %cond.i, label %land.lhs.true.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @enic_sriov_enabled(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.then1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf)
  %cmp2.i = icmp slt i32 %vf, 0
  br i1 %cmp2.i, label %if.then1.i.cleanup_crit_edge, label %lor.lhs.false.i

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then1.i
  %num_vfs.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 22
  %2 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_vfs.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf)
  %cmp3.not.i = icmp ugt i32 %conv.i, %vf
  br i1 %cmp3.not.i, label %cond.false, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %call10.i = tail call i32 @enic_is_dynamic(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %cond.true

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp2 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %4 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp2, align 16
  br label %if.end6

cond.false:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %pp3 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %6 = ptrtoint ptr %pp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp3, align 16
  %add.ptr = getelementptr %struct.enic_port_profile, ptr %7, i32 %vf
  br label %if.end6

if.end6:                                          ; preds = %cond.false, %cond.true
  %pp.0.ph = phi ptr [ %add.ptr, %cond.false ], [ %5, %cond.true ]
  %request = getelementptr inbounds %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 1
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp7.not = icmp eq i8 %9, 1
  br i1 %cmp7.not, label %land.lhs.true, label %if.end6.if.then15_crit_edge

if.end6.if.then15_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

land.lhs.true:                                    ; preds = %if.end6
  %name.i = getelementptr inbounds %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 2
  %name1.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 2
  %call.i147 = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef %name1.i) #11
  %instance_uuid.i = getelementptr inbounds %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 3
  %instance_uuid4.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %instance_uuid.i, ptr noundef dereferenceable(16) %instance_uuid4.i, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.i = icmp ne i32 %bcmp.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %or.i = or i32 %call.i147, %lnot.ext.i
  %host_uuid.i = getelementptr inbounds %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 4
  %host_uuid9.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 4
  %bcmp31.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %host_uuid.i, ptr noundef dereferenceable(16) %host_uuid9.i, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp31.i)
  %tobool12.i = icmp ne i32 %bcmp31.i, 0
  %lnot.ext16.i = zext i1 %tobool12.i to i32
  %or17.i = or i32 %or.i, %lnot.ext16.i
  %mac_addr.i = getelementptr inbounds %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 6
  %mac_addr19.i = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 6
  %10 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac_addr.i, align 4
  %12 = ptrtoint ptr %mac_addr19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_addr19.i, align 4
  %xor.i.i = xor i32 %13, %11
  %add.ptr.i.i = getelementptr %struct.enic_port_profile, ptr %prev_pp, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %17, %15
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp ne i32 %or.i.i, 0
  %lnot.ext23.i = zext i1 %cmp.i.i to i32
  %or24.i = or i32 %or17.i, %lnot.ext23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or24.i)
  %tobool14.not = icmp eq i32 %or24.i, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true.if.then15_crit_edge, %if.end6.if.then15_crit_edge
  %call16 = tail call i32 @enic_pp_disassociate(ptr noundef %enic, i32 noundef %vf, ptr noundef %prev_pp, ptr noundef %restore_pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %restore_pp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %restore_pp, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %land.lhs.true.if.end20_crit_edge
  %call21 = tail call i32 @enic_pp_preassociate_rr(ptr noundef %enic, i32 noundef %vf, ptr noundef %prev_pp, ptr noundef %restore_pp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %restore_pp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %restore_pp, align 4
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #8
  %call26 = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %vdev34 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %20 = ptrtoint ptr %vdev34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdev34, align 128
  br i1 %tobool27.not, label %if.else33, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %conv29 = trunc i32 %vf to i16
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %21, i16 noundef zeroext %conv29) #8
  %22 = ptrtoint ptr %vdev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev34, align 128
  %call31 = tail call i32 @vnic_dev_enable2(ptr noundef %23, i32 noundef 1) #8
  %24 = ptrtoint ptr %vdev34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev34, align 128
  tail call void @vnic_dev_cmd_proxy_end(ptr noundef %25) #8
  br label %if.end36

if.else33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 @vnic_dev_enable2(ptr noundef %21, i32 noundef 1) #8
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then28
  %err.0 = phi i32 [ %call35, %if.else33 ], [ %call31, %if.then28 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #8
  %call40 = tail call i32 @enic_dev_status_to_errno(i32 noundef %err.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %mac_addr = getelementptr inbounds %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 6
  %26 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.enic_port_profile, ptr %pp.0.ph, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i, align 2
  %conv.i148 = zext i16 %29 to i32
  %or.i149 = or i32 %27, %conv.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i149)
  %cmp.i = icmp eq i32 %or.i149, 0
  br i1 %cmp.i, label %if.else67, label %do.body46

do.body46:                                        ; preds = %if.end43
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #8
  %call48 = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  %vdev59 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %30 = ptrtoint ptr %vdev59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdev59, align 128
  br i1 %tobool49.not, label %if.else58, label %if.then50

if.then50:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %conv52 = trunc i32 %vf to i16
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %31, i16 noundef zeroext %conv52) #8
  %32 = ptrtoint ptr %vdev59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdev59, align 128
  %call56 = tail call i32 @vnic_dev_add_addr(ptr noundef %33, ptr noundef %mac_addr) #8
  %34 = ptrtoint ptr %vdev59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdev59, align 128
  tail call void @vnic_dev_cmd_proxy_end(ptr noundef %35) #8
  br label %cleanup.sink.split

if.else58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 @vnic_dev_add_addr(ptr noundef %31, ptr noundef %mac_addr) #8
  br label %cleanup.sink.split

if.else67:                                        ; preds = %if.end43
  br i1 %cond.i, label %land.lhs.true70, label %if.else67.cleanup_crit_edge

if.else67.cleanup_crit_edge:                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true70:                                  ; preds = %if.else67
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %add.ptr.i150 = getelementptr i8, ptr %37, i32 4
  %40 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i150, align 2
  %conv.i151 = zext i16 %41 to i32
  %or.i152 = or i32 %39, %conv.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i152)
  %cmp.i153 = icmp eq i32 %or.i152, 0
  br i1 %cmp.i153, label %land.lhs.true70.cleanup_crit_edge, label %do.body73

land.lhs.true70.cleanup_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body73:                                        ; preds = %land.lhs.true70
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #8
  %call75 = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  %vdev85 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %42 = ptrtoint ptr %vdev85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vdev85, align 128
  br i1 %tobool76.not, label %if.else84, label %if.then77

if.then77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %43, i16 noundef zeroext -1) #8
  %44 = ptrtoint ptr %vdev85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vdev85, align 128
  %46 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr, align 64
  %call82 = tail call i32 @vnic_dev_add_addr(ptr noundef %45, ptr noundef %47) #8
  %48 = ptrtoint ptr %vdev85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdev85, align 128
  tail call void @vnic_dev_cmd_proxy_end(ptr noundef %49) #8
  br label %cleanup.sink.split

if.else84:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_addr, align 64
  %call87 = tail call i32 @vnic_dev_add_addr(ptr noundef %43, ptr noundef %51) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else84, %if.then77, %if.else58, %if.then50
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true70.cleanup_crit_edge, %if.else67.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then15.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call40, %if.end36.cleanup_crit_edge ], [ 0, %if.else67.cleanup_crit_edge ], [ 0, %land.lhs.true70.cleanup_crit_edge ], [ -95, %land.lhs.true.i.cleanup_crit_edge ], [ -95, %if.then.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enic_pp_disassociate(ptr noundef %enic, i32 noundef %vf, ptr nocapture noundef readnone %prev_pp, ptr nocapture noundef readnone %restore_pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %enic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enic, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vf)
  %cond.i = icmp eq i32 %vf, -1
  br i1 %cond.i, label %land.lhs.true.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @enic_sriov_enabled(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %if.then1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf)
  %cmp2.i = icmp slt i32 %vf, 0
  br i1 %cmp2.i, label %if.then1.i.cleanup_crit_edge, label %lor.lhs.false.i

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then1.i
  %num_vfs.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 22
  %2 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_vfs.i, align 4
  %conv.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %vf)
  %cmp3.not.i = icmp ugt i32 %conv.i, %vf
  br i1 %cmp3.not.i, label %if.end6.thread, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %call10.i = tail call i32 @enic_is_dynamic(ptr noundef %enic) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.end6

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.i
  %pp2 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %4 = ptrtoint ptr %pp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pp2, align 16
  %mac_addr = getelementptr inbounds %struct.enic_port_profile, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.enic_port_profile, ptr %5, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %conv.i86 = zext i16 %9 to i32
  %or.i = or i32 %7, %conv.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.end6.do.body9_crit_edge

if.end6.do.body9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

if.end6.thread:                                   ; preds = %lor.lhs.false.i
  %pp3 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 25
  %10 = ptrtoint ptr %pp3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pp3, align 16
  %mac_addr106 = getelementptr %struct.enic_port_profile, ptr %11, i32 %vf, i32 6
  %12 = ptrtoint ptr %mac_addr106 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_addr106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %mac_addr106, i32 4
  %14 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i107, align 2
  %conv.i86108 = zext i16 %15 to i32
  %or.i109 = or i32 %13, %conv.i86108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i109)
  %cmp.i110 = icmp eq i32 %or.i109, 0
  br i1 %cmp.i110, label %if.end6.thread.if.end52_crit_edge, label %if.end6.thread.do.body9_crit_edge

if.end6.thread.do.body9_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

if.end6.thread.if.end52_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.body9:                                         ; preds = %if.end6.thread.do.body9_crit_edge, %if.end6.do.body9_crit_edge
  %mac_addr111 = phi ptr [ %mac_addr106, %if.end6.thread.do.body9_crit_edge ], [ %mac_addr, %if.end6.do.body9_crit_edge ]
  %devcmd_lock = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock) #8
  %call10 = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %vdev19 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %16 = ptrtoint ptr %vdev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdev19, align 128
  br i1 %tobool11.not, label %if.else18, label %if.then12

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %vf to i16
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %17, i16 noundef zeroext %conv) #8
  %18 = ptrtoint ptr %vdev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdev19, align 128
  %call16 = tail call i32 @vnic_dev_del_addr(ptr noundef %19, ptr noundef %mac_addr111) #8
  %20 = ptrtoint ptr %vdev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdev19, align 128
  tail call void @vnic_dev_cmd_proxy_end(ptr noundef %21) #8
  br label %if.end52.sink.split

if.else18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @vnic_dev_del_addr(ptr noundef %17, ptr noundef %mac_addr111) #8
  br label %if.end52.sink.split

land.lhs.true:                                    ; preds = %if.end6
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add.ptr.i87 = getelementptr i8, ptr %23, i32 4
  %26 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i87, align 2
  %conv.i88 = zext i16 %27 to i32
  %or.i89 = or i32 %25, %conv.i88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i89)
  %cmp.i90 = icmp eq i32 %or.i89, 0
  br i1 %cmp.i90, label %land.lhs.true.if.end52_crit_edge, label %do.body32

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.body32:                                        ; preds = %land.lhs.true
  %devcmd_lock33 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock33) #8
  %call34 = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  %vdev44 = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %28 = ptrtoint ptr %vdev44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdev44, align 128
  br i1 %tobool35.not, label %if.else43, label %if.then36

if.then36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %29, i16 noundef zeroext -1) #8
  %30 = ptrtoint ptr %vdev44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdev44, align 128
  %32 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_addr, align 64
  %call41 = tail call i32 @vnic_dev_del_addr(ptr noundef %31, ptr noundef %33) #8
  %34 = ptrtoint ptr %vdev44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdev44, align 128
  tail call void @vnic_dev_cmd_proxy_end(ptr noundef %35) #8
  br label %if.end52.sink.split

if.else43:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %call46 = tail call i32 @vnic_dev_del_addr(ptr noundef %29, ptr noundef %37) #8
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.else43, %if.then36, %if.else18, %if.then12
  %devcmd_lock33.sink = phi ptr [ %devcmd_lock, %if.else18 ], [ %devcmd_lock, %if.then12 ], [ %devcmd_lock33, %if.else43 ], [ %devcmd_lock33, %if.then36 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock33.sink) #8
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %land.lhs.true.if.end52_crit_edge, %if.end6.thread.if.end52_crit_edge
  %devcmd_lock.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %devcmd_lock.i) #8
  %call.i91 = tail call i32 @enic_is_valid_vf(ptr noundef %enic, i32 noundef %vf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  %vdev4.i = getelementptr inbounds %struct.enic, ptr %enic, i32 0, i32 4
  %38 = ptrtoint ptr %vdev4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdev4.i, align 128
  br i1 %tobool.not.i92, label %if.else.i, label %if.then.i94

if.then.i94:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i93 = trunc i32 %vf to i16
  tail call void @vnic_dev_cmd_proxy_by_index_start(ptr noundef %39, i16 noundef zeroext %conv.i93) #8
  %40 = ptrtoint ptr %vdev4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdev4.i, align 128
  %call2.i = tail call i32 @vnic_dev_deinit(ptr noundef %41) #8
  %42 = ptrtoint ptr %vdev4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vdev4.i, align 128
  tail call void @vnic_dev_cmd_proxy_end(ptr noundef %43) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 @vnic_dev_deinit(ptr noundef %39) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i94
  %err.0.i = phi i32 [ %call2.i, %if.then.i94 ], [ %call5.i, %if.else.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %devcmd_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool7.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool7.not.i, label %if.end10.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 @enic_dev_status_to_errno(i32 noundef %err.0.i) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  br i1 %cond.i, label %if.then12.i, label %if.end10.i.cleanup_crit_edge

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @enic_reset_addr_lists(ptr noundef %enic) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12.i, %if.end10.i.cleanup_crit_edge, %if.then8.i, %land.lhs.true.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %land.lhs.true.i.cleanup_crit_edge ], [ -95, %if.then.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %call9.i, %if.then8.i ], [ 0, %if.then12.i ], [ 0, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_enable2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enic_dev_status_to_errno(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vic_provinfo_alloc(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vic_provinfo_add_tlv(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_init_prov2(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vic_provinfo_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vic_provinfo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_add_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_del_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enic_reset_addr_lists(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @enic_pp_handlers, !1, !"enic_pp_handlers", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/enic_pp.c", i32 177, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/cisco/enic/enic_pp.c", i32 102, i32 22}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/cisco/enic/enic_pp.c", i32 112, i32 51}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/cisco/enic/enic_pp.c", i32 118, i32 21}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
