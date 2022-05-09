; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cisco/enic/vnic_rq.c_pt.bc'
source_filename = "../drivers/net/ethernet/cisco/enic/vnic_rq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vnic_rq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, ptr, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_dev = type { ptr, ptr, [25 x %struct.vnic_res], i32, ptr, ptr, %struct.vnic_devcmd_notify, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, [15 x i64], %struct.vnic_intr_coal_timer_info, ptr, ptr }
%struct.vnic_res = type { ptr, i32, i32 }
%struct.vnic_devcmd_notify = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnic_intr_coal_timer_info = type { i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.vnic_rq_buf = type { ptr, i32, ptr, i32, i32, i32, ptr, i64 }
%struct.vnic_rq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@vnic_rq_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to hook RQ[%d] resource\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vnic_rq_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/cisco/enic/vnic_rq.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vnic_rq_alloc._entry_ptr = internal global ptr @vnic_rq_alloc._entry, section ".printk_index", align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to disable RQ[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 95, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [45 x i8] c"../drivers/net/ethernet/cisco/enic/vnic_rq.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 174, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @vnic_rq_alloc._entry, ptr @vnic_rq_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_rq_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnic_rq_free(ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  %ring = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3
  tail call void @vnic_dev_free_desc_ring(ptr noundef %1, ptr noundef %ring) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vnic_rq, ptr %rq, i32 0, i32 4, i32 %i.015
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ctrl, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_free_desc_ring(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_rq_alloc(ptr noundef %vdev, ptr noundef %rq, i32 noundef %index, i32 noundef %desc_count, i32 noundef %desc_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %index, ptr %rq, align 4
  %vdev2 = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 1
  %1 = ptrtoint ptr %vdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vdev, ptr %vdev2, align 4
  %call = tail call ptr @vnic_dev_get_res(ptr noundef %vdev, i32 noundef 2, i32 noundef %index) #5
  %ctrl = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %ctrl, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %index) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @vnic_rq_disable(ptr noundef %rq)
  %ring = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3
  %call5 = tail call i32 @vnic_dev_alloc_desc_ring(ptr noundef %vdev, ptr noundef %ring, i32 noundef %desc_count, i32 noundef %desc_size) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %desc_count.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp.i = icmp ult i32 %6, 64
  %cond.i = select i1 %cmp.i, i32 32, i32 64
  %add.i = add i32 %6, -1
  %sub.i = add i32 %add.i, %cond.i
  %7 = select i1 %cmp.i, i32 5, i32 6
  %div95.i = lshr i32 %sub.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div95.i)
  %cmp397.not.i = icmp eq i32 %div95.i, 0
  br i1 %cmp397.not.i, label %if.end8.vnic_rq_alloc_bufs.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end8.vnic_rq_alloc_bufs.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnic_rq_alloc_bufs.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end8
  %mul.i = mul nuw nsw i32 %cond.i, 40
  br label %if.end8.i.i.i

for.cond.i:                                       ; preds = %if.end8.i.i.i
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div95.i
  br i1 %exitcond.not.i, label %for.body10.lr.ph.i, label %for.cond.i.if.end8.i.i.i_crit_edge

for.cond.i.if.end8.i.i.i_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i.i

for.body10.lr.ph.i:                               ; preds = %for.cond.i
  %bufs11.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 4
  %desc_size.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3, i32 7
  br label %for.body10.i

if.end8.i.i.i:                                    ; preds = %for.cond.i.if.end8.i.i.i_crit_edge, %for.body.lr.ph.i
  %i.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #9
  %arrayidx.i = getelementptr %struct.vnic_rq, ptr %rq, i32 0, i32 4, i32 %i.098.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.then11, label %for.cond.i

for.body10.i:                                     ; preds = %for.inc49.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.1103.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %add38.i, %for.inc49.i.for.body10.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.vnic_rq, ptr %rq, i32 0, i32 4, i32 %i.1103.i
  %9 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12.i, align 4
  %mul20.i = mul i32 %i.1103.i, %cond.i
  %add38.i = add nuw nsw i32 %i.1103.i, 1
  %arrayidx39.i = getelementptr %struct.vnic_rq, ptr %rq, i32 0, i32 4, i32 %add38.i
  %index.i39 = getelementptr inbounds %struct.vnic_rq_buf, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %index.i39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul20.i, ptr %index.i39, align 4
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring, align 4
  %14 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_size.i, align 4
  %mul25.i40 = mul i32 %15, %mul20.i
  %add.ptr.i41 = getelementptr i8, ptr %13, i32 %mul25.i40
  %desc.i42 = getelementptr inbounds %struct.vnic_rq_buf, ptr %10, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i41, ptr %desc.i42, align 8
  %add27.i43 = or i32 %mul20.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i43, i32 %6)
  %cmp28.i44 = icmp eq i32 %add27.i43, %6
  br i1 %cmp28.i44, label %for.body10.i.for.inc49.i_crit_edge, label %for.body10.i.if.else.i_crit_edge

for.body10.i.if.else.i_crit_edge:                 ; preds = %for.body10.i
  br label %if.else.i

for.body10.i.for.inc49.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.i

if.else.i:                                        ; preds = %for.inc46.i.if.else.i_crit_edge, %for.body10.i.if.else.i_crit_edge
  %buf.099.i46 = phi ptr [ %add.ptr42.i, %for.inc46.i.if.else.i_crit_edge ], [ %10, %for.body10.i.if.else.i_crit_edge ]
  %j.0101.i45 = phi i32 [ %add32.i, %for.inc46.i.if.else.i_crit_edge ], [ 0, %for.body10.i.if.else.i_crit_edge ]
  %add32.i = add nuw nsw i32 %j.0101.i45, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i, i32 %cond.i)
  %cmp35.i = icmp eq i32 %add32.i, %cond.i
  br i1 %cmp35.i, label %if.else.i.for.inc49.i_crit_edge, label %for.inc46.i

if.else.i.for.inc49.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.i

for.inc46.i:                                      ; preds = %if.else.i
  %add.ptr42.i = getelementptr %struct.vnic_rq_buf, ptr %buf.099.i46, i32 1
  %17 = ptrtoint ptr %buf.099.i46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr42.i, ptr %buf.099.i46, align 8
  %add21.i = add i32 %add32.i, %mul20.i
  %index.i = getelementptr %struct.vnic_rq_buf, ptr %buf.099.i46, i32 1, i32 5
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add21.i, ptr %index.i, align 4
  %19 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring, align 4
  %21 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc_size.i, align 4
  %mul25.i = mul i32 %22, %add21.i
  %add.ptr.i = getelementptr i8, ptr %20, i32 %mul25.i
  %desc.i = getelementptr %struct.vnic_rq_buf, ptr %buf.099.i46, i32 1, i32 6
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %desc.i, align 8
  %add27.i = add i32 %add21.i, 1
  %cmp28.i = icmp eq i32 %add27.i, %6
  br i1 %cmp28.i, label %for.inc46.i.for.inc49.i_crit_edge, label %for.inc46.i.if.else.i_crit_edge

for.inc46.i.if.else.i_crit_edge:                  ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

for.inc46.i.for.inc49.i_crit_edge:                ; preds = %for.inc46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %for.inc46.i.for.inc49.i_crit_edge, %if.else.i.for.inc49.i_crit_edge, %for.body10.i.for.inc49.i_crit_edge
  %buf.099.i.lcssa = phi ptr [ %10, %for.body10.i.for.inc49.i_crit_edge ], [ %buf.099.i46, %if.else.i.for.inc49.i_crit_edge ], [ %add.ptr42.i, %for.inc46.i.for.inc49.i_crit_edge ]
  %storemerge.in = phi ptr [ %bufs11.i, %for.body10.i.for.inc49.i_crit_edge ], [ %arrayidx39.i, %if.else.i.for.inc49.i_crit_edge ], [ %bufs11.i, %for.inc46.i.for.inc49.i_crit_edge ]
  %24 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %storemerge = load ptr, ptr %storemerge.in, align 4
  %25 = ptrtoint ptr %buf.099.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %storemerge, ptr %buf.099.i.lcssa, align 8
  %exitcond106.not.i = icmp eq i32 %add38.i, %div95.i
  br i1 %exitcond106.not.i, label %for.inc49.i.vnic_rq_alloc_bufs.exit.thread_crit_edge, label %for.inc49.i.for.body10.i_crit_edge

for.inc49.i.for.body10.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i

for.inc49.i.vnic_rq_alloc_bufs.exit.thread_crit_edge: ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnic_rq_alloc_bufs.exit.thread

vnic_rq_alloc_bufs.exit.thread:                   ; preds = %for.inc49.i.vnic_rq_alloc_bufs.exit.thread_crit_edge, %if.end8.vnic_rq_alloc_bufs.exit.thread_crit_edge
  %bufs52.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 4
  %26 = ptrtoint ptr %bufs52.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bufs52.i, align 4
  %to_clean.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 6
  %28 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %to_clean.i, align 4
  %to_use.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 5
  %29 = ptrtoint ptr %to_use.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %to_use.i, align 4
  br label %cleanup

if.then11:                                        ; preds = %if.end8.i.i.i
  %30 = ptrtoint ptr %vdev2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdev2, align 4
  tail call void @vnic_dev_free_desc_ring(ptr noundef %31, ptr noundef %ring) #5
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.inc.i.for.body.i31_crit_edge, %if.then11
  %i.015.i = phi i32 [ 0, %if.then11 ], [ %inc.i32, %for.inc.i.for.body.i31_crit_edge ]
  %arrayidx.i29 = getelementptr %struct.vnic_rq, ptr %rq, i32 0, i32 4, i32 %i.015.i
  %32 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i29, align 4
  %tobool.not.i30 = icmp eq ptr %33, null
  br i1 %tobool.not.i30, label %for.body.i31.for.inc.i_crit_edge, label %if.then.i

for.body.i31.for.inc.i_crit_edge:                 ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %33) #5
  %34 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx.i29, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i31.for.inc.i_crit_edge
  %inc.i32 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i33 = icmp eq i32 %inc.i32, 64
  br i1 %exitcond.not.i33, label %vnic_rq_free.exit, label %for.inc.i.for.body.i31_crit_edge

for.inc.i.for.body.i31_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i31

vnic_rq_free.exit:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %vnic_rq_free.exit, %vnic_rq_alloc_bufs.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %vnic_rq_free.exit ], [ -22, %do.end ], [ %call5, %if.end.cleanup_crit_edge ], [ 0, %vnic_rq_alloc_bufs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vnic_dev_get_res(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_rq_disable(ptr nocapture noundef readonly %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 4
  %ctrl = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %enable = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %3, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable, i32 0) #5, !srcloc !20
  br label %for.body4

for.cond2:                                        ; preds = %for.body4
  %dec = add nsw i32 %wait.020, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %for.cond2.if.then7_crit_edge, label %for.cond2.for.body4_crit_edge

for.cond2.for.body4_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.cond2.if.then7_crit_edge:                     ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

for.body4:                                        ; preds = %for.cond2.for.body4_crit_edge, %entry
  %wait.020 = phi i32 [ 20000, %entry ], [ %dec, %for.cond2.for.body4_crit_edge ]
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %running = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %5, i32 0, i32 9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %running) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.inc10, label %for.cond2

if.then7:                                         ; preds = %for.cond2.1.if.then7_crit_edge, %for.cond2.if.then7_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  %11 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef %12) #8
  br label %cleanup

for.inc10:                                        ; preds = %for.body4
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 4
  %enable.1 = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %14, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable.1, i32 0) #5, !srcloc !20
  br label %for.body4.1

for.body4.1:                                      ; preds = %for.cond2.1.for.body4.1_crit_edge, %for.inc10
  %wait.020.1 = phi i32 [ 20000, %for.inc10 ], [ %dec.1, %for.cond2.1.for.body4.1_crit_edge ]
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 4
  %running.1 = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %16, i32 0, i32 9
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %running.1) #5, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.1, label %for.body4.1.cleanup_crit_edge, label %for.cond2.1

for.body4.1.cleanup_crit_edge:                    ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond2.1:                                      ; preds = %for.body4.1
  %dec.1 = add nsw i32 %wait.020.1, -1
  %cond.1 = icmp eq i32 %dec.1, 0
  br i1 %cond.1, label %for.cond2.1.if.then7_crit_edge, label %for.cond2.1.for.body4.1_crit_edge

for.cond2.1.for.body4.1_crit_edge:                ; preds = %for.cond2.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.1

for.cond2.1.if.then7_crit_edge:                   ; preds = %for.cond2.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

cleanup:                                          ; preds = %for.body4.1.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ -110, %if.then7 ], [ 0, %for.body4.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_dev_alloc_desc_ring(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnic_rq_init(ptr nocapture noundef %rq, i32 noundef %cq_index, i32 noundef %error_interrupt_enable, i32 noundef %error_interrupt_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_count.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_count.i, align 4
  %base_addr.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_addr.i, align 4
  %ctrl.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #5, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !20
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i, align 4
  %ring_size.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ring_size.i, i32 %9) #5, !srcloc !20
  %10 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl.i, align 4
  %cq_index4.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %11, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %cq_index) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cq_index4.i, i32 %12) #5, !srcloc !20
  %13 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl.i, align 4
  %error_interrupt_enable6.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %14, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %error_interrupt_enable) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_interrupt_enable6.i, i32 %15) #5, !srcloc !20
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl.i, align 4
  %error_interrupt_offset8.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %17, i32 0, i32 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %error_interrupt_offset) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_interrupt_offset8.i, i32 %18) #5, !srcloc !20
  %19 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl.i, align 4
  %dropped_packet_count.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %20, i32 0, i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dropped_packet_count.i, i32 0) #5, !srcloc !20
  %21 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl.i, align 4
  %error_status.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %22, i32 0, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %error_status.i, i32 0) #5, !srcloc !20
  %23 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl.i, align 4
  %fetch_index12.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %24, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %fetch_index12.i, i32 0) #5, !srcloc !20
  %25 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl.i, align 4
  %posted_index14.i = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %26, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index14.i, i32 0) #5, !srcloc !20
  %bufs.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 4
  %27 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bufs.i, align 4
  %to_clean.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 6
  %29 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %to_clean.i, align 4
  %to_use.i = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 5
  %30 = ptrtoint ptr %to_use.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %to_use.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnic_rq_error_status(ptr nocapture noundef readonly %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %error_status = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %1, i32 0, i32 17
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %error_status) #5, !srcloc !21
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnic_rq_enable(ptr nocapture noundef readonly %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %enable = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable, i32 16777216) #5, !srcloc !20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vnic_rq_clean(ptr noundef %rq, ptr nocapture noundef readonly %buf_clean) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_count = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc_count, align 4
  %to_clean = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %buf.0.in36 = phi ptr [ %buf.0, %for.body.for.body_crit_edge ], [ %to_clean, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %buf.0.in36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %buf.0 = load ptr, ptr %buf.0.in36, align 4
  tail call void %buf_clean(ptr noundef %rq, ptr noundef %buf.0) #5
  %inc = add nuw i32 %i.037, 1
  %3 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %desc_count, align 4
  %cmp = icmp ult i32 %inc, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo = add i32 %4, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %ring = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3
  %desc_avail = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 3, i32 9
  %5 = ptrtoint ptr %desc_avail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.lcssa, ptr %desc_avail, align 4
  %ctrl = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 4
  %fetch_index6 = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %7, i32 0, i32 11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fetch_index6) #5, !srcloc !21
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp7 = icmp eq i32 %8, -1
  %spec.store.select = select i1 %cmp7, i32 0, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp8 = icmp ult i32 %1, 64
  %10 = select i1 %cmp8, i32 5, i32 6
  %div34 = lshr i32 %spec.store.select, %10
  %arrayidx = getelementptr %struct.vnic_rq, ptr %rq, i32 0, i32 4, i32 %div34
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %13 = select i1 %cmp8, i32 31, i32 63
  %rem = and i32 %spec.store.select, %13
  %arrayidx11 = getelementptr %struct.vnic_rq_buf, ptr %12, i32 %rem
  %14 = ptrtoint ptr %to_clean to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx11, ptr %to_clean, align 4
  %to_use = getelementptr inbounds %struct.vnic_rq, ptr %rq, i32 0, i32 5
  %15 = ptrtoint ptr %to_use to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx11, ptr %to_use, align 4
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %posted_index = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index, i32 %18) #5, !srcloc !20
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %enable = getelementptr inbounds %struct.vnic_rq_ctrl, ptr %20, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %enable, i32 0) #5, !srcloc !20
  tail call void @vnic_dev_clear_desc_ring(ptr noundef %ring) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_dev_clear_desc_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cisco/enic/vnic_rq.c", i32 95, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vnic_rq_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vnic_rq_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/cisco/enic/vnic_rq.c", i32 174, i32 4}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2152525664}
!20 = !{i64 4983542}
!21 = !{i64 4983960}
!22 = !{i64 2152524309}
!23 = !{i64 2154487068}
!24 = !{i64 2154487482}
