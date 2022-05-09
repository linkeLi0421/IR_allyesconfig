; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.145, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.145 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"txq%u_pktnum_rcd\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxq%u_pktnum_rcd\00", [47 x i8] zeroinitializer }, align 32
@hclge_comm_tqps_update_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 79, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get tqp stat, ret = %d, tx = %u.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hclge_comm_tqps_update_stats\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_comm_tqps_update_stats._entry_ptr = internal global ptr @hclge_comm_tqps_update_stats._entry, section ".printk_index", align 4
@hclge_comm_tqps_update_stats._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 93, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to get tqp stat, ret = %d, rx = %u.\0A\00", [52 x i8] zeroinitializer }, align 32
@hclge_comm_tqps_update_stats._entry_ptr.9 = internal global ptr @hclge_comm_tqps_update_stats._entry.7, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 46, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 53, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 77, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [74 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 91, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @hclge_comm_tqps_update_stats._entry, ptr @hclge_comm_tqps_update_stats._entry.7, ptr @hclge_comm_tqps_update_stats._entry_ptr, ptr @hclge_comm_tqps_update_stats._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_tqps_update_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_comm_tqps_update_stats._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hclge_comm_tqps_get_stats(ptr nocapture noundef readonly %handle, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tqps = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 8
  %0 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tqps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp33.not = icmp eq i16 %1, 0
  br i1 %cmp33.not, label %entry.for.end21_crit_edge, label %for.body.lr.ph

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %tqp3 = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 9
  br label %for.body

for.cond4.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp836.not = icmp eq i16 %10, 0
  br i1 %cmp836.not, label %for.cond4.preheader.for.end21_crit_edge, label %for.body10.lr.ph

for.cond4.preheader.for.end21_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body10.lr.ph:                                 ; preds = %for.cond4.preheader
  %tqp12 = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 9
  br label %for.body10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %buff.035 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %tqp3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tqp3, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tqp_stats = getelementptr i8, ptr %5, i32 28
  %6 = ptrtoint ptr %tqp_stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tqp_stats, align 8
  %incdec.ptr = getelementptr i64, ptr %buff.035, i32 1
  %8 = ptrtoint ptr %buff.035 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %buff.035, align 8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %9 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_tqps, align 2
  %11 = zext i16 %10 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond4.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %indvars.iv40 = phi i32 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next41, %for.body10.for.body10_crit_edge ]
  %buff.138 = phi ptr [ %incdec.ptr, %for.body10.lr.ph ], [ %incdec.ptr18, %for.body10.for.body10_crit_edge ]
  %12 = ptrtoint ptr %tqp12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tqp12, align 4
  %arrayidx14 = getelementptr ptr, ptr %13, i32 %indvars.iv40
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14, align 4
  %rcb_rx_ring_pktnum_rcd = getelementptr i8, ptr %15, i32 36
  %16 = ptrtoint ptr %rcb_rx_ring_pktnum_rcd to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rcb_rx_ring_pktnum_rcd, align 8
  %incdec.ptr18 = getelementptr i64, ptr %buff.138, i32 1
  %18 = ptrtoint ptr %buff.138 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %buff.138, align 8
  %indvars.iv.next41 = add nuw nsw i32 %indvars.iv40, 1
  %19 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_tqps, align 2
  %21 = zext i16 %20 to i32
  %cmp8 = icmp ult i32 %indvars.iv.next41, %21
  br i1 %cmp8, label %for.body10.for.body10_crit_edge, label %for.body10.for.end21_crit_edge

for.body10.for.end21_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.end21:                                        ; preds = %for.body10.for.end21_crit_edge, %for.cond4.preheader.for.end21_crit_edge, %entry.for.end21_crit_edge
  %buff.1.lcssa = phi ptr [ %incdec.ptr, %for.cond4.preheader.for.end21_crit_edge ], [ %data, %entry.for.end21_crit_edge ], [ %incdec.ptr18, %for.body10.for.end21_crit_edge ]
  ret ptr %buff.1.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @hclge_comm_tqps_get_sset_count(ptr nocapture noundef readonly %handle) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tqps = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 8
  %0 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tqps, align 2
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 1
  ret i32 %mul
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hclge_comm_tqps_get_strings(ptr nocapture noundef readonly %handle, ptr noundef writeonly %data) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tqps = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 8
  %0 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tqps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp39.not = icmp eq i16 %1, 0
  br i1 %cmp39.not, label %entry.for.end26_crit_edge, label %for.body.lr.ph

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.body.lr.ph:                                   ; preds = %entry
  %tqp3 = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 9
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp1042.not = icmp eq i16 %9, 0
  br i1 %cmp1042.not, label %for.cond6.preheader.for.end26_crit_edge, label %for.body12.lr.ph

for.cond6.preheader.for.end26_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.body12.lr.ph:                                 ; preds = %for.cond6.preheader
  %tqp15 = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 9
  br label %for.body12

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %buff.041 = phi ptr [ %data, %for.body.lr.ph ], [ %add.ptr5, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %tqp3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tqp3, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %index = getelementptr i8, ptr %5, i32 44
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 8
  %conv4 = zext i16 %7 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buff.041, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv4)
  %add.ptr5 = getelementptr i8, ptr %buff.041, i32 32
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %8 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_tqps, align 2
  %10 = zext i16 %9 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond6.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %indvars.iv46 = phi i32 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next47, %for.body12.for.body12_crit_edge ]
  %buff.144 = phi ptr [ %add.ptr5, %for.body12.lr.ph ], [ %add.ptr23, %for.body12.for.body12_crit_edge ]
  %11 = ptrtoint ptr %tqp15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tqp15, align 4
  %arrayidx17 = getelementptr ptr, ptr %12, i32 %indvars.iv46
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx17, align 4
  %index20 = getelementptr i8, ptr %14, i32 44
  %15 = ptrtoint ptr %index20 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %index20, align 8
  %conv21 = zext i16 %16 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buff.144, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %conv21)
  %add.ptr23 = getelementptr i8, ptr %buff.144, i32 32
  %indvars.iv.next47 = add nuw nsw i32 %indvars.iv46, 1
  %17 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_tqps, align 2
  %19 = zext i16 %18 to i32
  %cmp10 = icmp ult i32 %indvars.iv.next47, %19
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.for.end26_crit_edge

for.body12.for.end26_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end26

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.end26:                                        ; preds = %for.body12.for.end26_crit_edge, %for.cond6.preheader.for.end26_crit_edge, %entry.for.end26_crit_edge
  %buff.1.lcssa = phi ptr [ %add.ptr5, %for.cond6.preheader.for.end26_crit_edge ], [ %data, %entry.for.end26_crit_edge ], [ %add.ptr23, %for.body12.for.end26_crit_edge ]
  ret ptr %buff.1.lcssa
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_comm_tqps_update_stats(ptr nocapture noundef readonly %handle, ptr noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %1 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4, i32 1
  %num_tqps = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 8
  %2 = call ptr @memset(ptr %desc, i32 255, i32 32)
  %3 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_tqps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp54.not = icmp eq i16 %4, 0
  br i1 %cmp54.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tqp3 = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end25.for.body_crit_edge ]
  %5 = ptrtoint ptr %tqp3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tqp3, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %indvars.iv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2835, i1 noundef zeroext true) #10
  %index = getelementptr i8, ptr %8, i32 44
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %index, align 8
  %conv4 = zext i16 %10 to i32
  %11 = call i32 @llvm.bswap.i32(i32 %conv4)
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %0, align 4
  %call = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call, i32 noundef %indvars.iv) #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %conv9 = zext i32 %17 to i64
  %rcb_rx_ring_pktnum_rcd = getelementptr i8, ptr %8, i32 36
  %18 = ptrtoint ptr %rcb_rx_ring_pktnum_rcd to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rcb_rx_ring_pktnum_rcd, align 8
  %add = add i64 %19, %conv9
  store i64 %add, ptr %rcb_rx_ring_pktnum_rcd, align 8
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 2819, i1 noundef zeroext true) #10
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %index, align 8
  %22 = and i16 %21, 511
  %and = zext i16 %22 to i32
  %23 = call i32 @llvm.bswap.i32(i32 %and)
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %0, align 4
  %call14 = call i32 @hclge_comm_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end25, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev22 = getelementptr inbounds %struct.hclge_comm_hw, ptr %hw, i32 0, i32 2, i32 0, i32 2
  %25 = ptrtoint ptr %pdev22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev22, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.8, i32 noundef %call14, i32 noundef %indvars.iv) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %tqp_stats = getelementptr i8, ptr %8, i32 28
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %conv28 = zext i32 %29 to i64
  %30 = ptrtoint ptr %tqp_stats to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tqp_stats, align 8
  %add30 = add i64 %31, %conv28
  store i64 %add30, ptr %tqp_stats, align 8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %32 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_tqps, align 2
  %34 = zext i16 %33 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %34
  br i1 %cmp, label %if.end25.for.body_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end25.cleanup_crit_edge, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call14, %do.end19 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_comm_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_comm_reset_tqp_stats(ptr nocapture noundef readonly %handle) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tqps = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 8
  %0 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_tqps, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp7.not = icmp eq i16 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tqp3 = getelementptr inbounds %struct.hnae3_handle, ptr %handle, i32 0, i32 5, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %tqp3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tqp3, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tqp_stats = getelementptr i8, ptr %5, i32 28
  %6 = call ptr @memset(ptr %tqp_stats, i32 0, i32 16)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %7 = ptrtoint ptr %num_tqps to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_tqps, align 2
  %9 = zext i16 %8 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c", i32 46, i32 35}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c", i32 53, i32 35}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c", i32 77, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hclge_comm_tqps_update_stats._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @hclge_comm_tqps_update_stats._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3_common/hclge_comm_tqp_stats.c", i32 91, i32 4}
!14 = !{ptr @hclge_comm_tqps_update_stats._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hclge_comm_tqps_update_stats._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
