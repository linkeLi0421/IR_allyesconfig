; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.brcmf_flowring = type { ptr, [512 x %struct.brcmf_flowring_hash], ptr, %struct.spinlock, [16 x i32], i16, i8, ptr }
%struct.brcmf_flowring_hash = type { [6 x i8], i8, i8, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_flowring_tdls_entry = type { [6 x i8], ptr }
%struct.brcmf_flowring_ring = type { i16, i8, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.brcmf_bus = type { %union.anon.128, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon.128 = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }

@brcmf_flowring_prio2fifo = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\01\00\02\02\03\03", [24 x i8] zeroinitializer }, align 32
@ALLFFMAC = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@__func__.brcmf_flowring_enqueue = private unnamed_addr constant [23 x i8] c"brcmf_flowring_enqueue\00", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Flowcontrol: BLOCK for ring %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.brcmf_flowring_dequeue = private unnamed_addr constant [23 x i8] c"brcmf_flowring_dequeue\00", align 1
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Flowcontrol: OPEN for ring %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.brcmf_flowring_open = private unnamed_addr constant [20 x i8] c"brcmf_flowring_open\00", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ring NULL, for flowid %d\0A\00", [38 x i8] zeroinitializer }, align 32
@brcmf_flowring_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&flow->block_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"brcmf_flowring_prio2fifo\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 28, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"ALLFFMAC\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 39, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 271, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 299, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 338, i32 3 }
@___asan_gen_.24 = private constant [63 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 367, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1984, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @brcmf_flowring_prio2fifo, ptr @ALLFFMAC, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @brcmf_flowring_attach.__key, ptr @.str.3, ptr @skb_queue_head_init.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_flowring_prio2fifo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ALLFFMAC to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_flowring_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_flowring_lookup(ptr nocapture noundef readonly %flow, ptr nocapture noundef readonly %da, i8 noundef zeroext %prio, i8 noundef zeroext %ifidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %prio to i32
  %arrayidx = getelementptr [8 x i8], ptr @brcmf_flowring_prio2fifo, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom1 = zext i8 %ifidx to i32
  %arrayidx2 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 4, i32 %idxprom1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true4, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %da, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.i.not, i8 %1, i8 0
  %spec.select93 = select i1 %tobool.i.not, ptr %da, ptr @ALLFFMAC
  br label %cond.false

land.lhs.true4:                                   ; preds = %entry
  %tdls_active = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 6
  %7 = ptrtoint ptr %tdls_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tdls_active, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true4.cond.true_crit_edge, label %land.lhs.true6

land.lhs.true4.cond.true_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %tdls_entry.i = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 7
  %9 = ptrtoint ptr %tdls_entry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %search.04.i = load ptr, ptr %tdls_entry.i, align 4
  %tobool.not5.i = icmp eq ptr %search.04.i, null
  br i1 %tobool.not5.i, label %land.lhs.true6.cond.true_crit_edge, label %land.lhs.true6.while.body.i_crit_edge

land.lhs.true6.while.body.i_crit_edge:            ; preds = %land.lhs.true6
  br label %while.body.i

land.lhs.true6.cond.true_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true

while.cond.i:                                     ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %search.06.i, i32 0, i32 1
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %search.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %search.0.i, null
  br i1 %tobool.not.i, label %while.cond.i.cond.true_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.i.cond.true_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %land.lhs.true6.while.body.i_crit_edge
  %search.06.i = phi ptr [ %search.0.i, %while.cond.i.while.body.i_crit_edge ], [ %search.04.i, %land.lhs.true6.while.body.i_crit_edge ]
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %search.06.i, ptr noundef dereferenceable(6) %da, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %while.body.i.cond.false_crit_edge, label %while.cond.i

while.body.i.cond.false_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.true:                                        ; preds = %while.cond.i.cond.true_crit_edge, %land.lhs.true6.cond.true_crit_edge, %land.lhs.true4.cond.true_crit_edge
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %idxprom1, 4
  %add = add nuw nsw i32 %mul, %conv
  br label %cond.end

cond.false:                                       ; preds = %while.body.i.cond.false_crit_edge, %if.end
  %mac.0100 = phi ptr [ %spec.select93, %if.end ], [ %da, %while.body.i.cond.false_crit_edge ]
  %fifo.097 = phi i8 [ %spec.select, %if.end ], [ %1, %while.body.i.cond.false_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %mac.0100, i32 5
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %mul14 = shl nuw nsw i32 %conv13, 1
  %conv15 = zext i8 %fifo.097 to i32
  %mul18 = shl nuw nsw i32 %idxprom1, 4
  %add16 = add nuw nsw i32 %mul18, %conv15
  %add19 = add nuw nsw i32 %add16, %mul14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %sta.0.shrunk109 = phi i1 [ true, %cond.true ], [ false, %cond.false ]
  %mac.0102 = phi ptr [ %da, %cond.true ], [ %mac.0100, %cond.false ]
  %fifo.099 = phi i8 [ %1, %cond.true ], [ %fifo.097, %cond.false ]
  %cond = phi i32 [ %add, %cond.true ], [ %add19, %cond.false ]
  %13 = trunc i32 %cond to i16
  %hash23 = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %cond.end
  %hash_idx.0113.in = phi i16 [ %13, %cond.end ], [ %inc, %if.end52.for.body_crit_edge ]
  %i.0112 = phi i32 [ 0, %cond.end ], [ %inc56, %if.end52.for.body_crit_edge ]
  %hash_idx.0113 = and i16 %hash_idx.0113.in, 511
  %.pre = zext i16 %hash_idx.0113 to i32
  br i1 %sta.0.shrunk109, label %for.body.land.lhs.true35_crit_edge, label %lor.lhs.false

for.body.land.lhs.true35_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true35

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx29 = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %.pre
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx29, ptr noundef dereferenceable(6) %mac.0102, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp33 = icmp eq i32 %bcmp, 0
  br i1 %cmp33, label %lor.lhs.false.land.lhs.true35_crit_edge, label %lor.lhs.false.if.end52_crit_edge

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

lor.lhs.false.land.lhs.true35_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true35

land.lhs.true35:                                  ; preds = %lor.lhs.false.land.lhs.true35_crit_edge, %for.body.land.lhs.true35_crit_edge
  %fifo38 = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %.pre, i32 1
  %14 = ptrtoint ptr %fifo38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fifo38, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %fifo.099)
  %cmp41 = icmp eq i8 %15, %fifo.099
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true35.if.end52_crit_edge

land.lhs.true35.if.end52_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true43:                                  ; preds = %land.lhs.true35
  %ifidx46 = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %.pre, i32 2
  %16 = ptrtoint ptr %ifidx46 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ifidx46, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %ifidx)
  %cmp49 = icmp eq i8 %17, %ifidx
  br i1 %cmp49, label %if.then58.critedge, label %land.lhs.true43.if.end52_crit_edge

land.lhs.true43.if.end52_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true43.if.end52_crit_edge, %land.lhs.true35.if.end52_crit_edge, %lor.lhs.false.if.end52_crit_edge
  %inc = add nuw nsw i16 %hash_idx.0113, 1
  %inc56 = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc56, 512
  br i1 %exitcond.not, label %if.end52.cleanup_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then58.critedge:                               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #9
  %flowid = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %.pre, i32 3
  %18 = ptrtoint ptr %flowid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flowid, align 2
  %conv61 = zext i16 %19 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then58.critedge, %if.end52.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv61, %if.then58.critedge ], [ -1, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_flowring_create(ptr nocapture noundef %flow, ptr nocapture noundef readonly %da, i8 noundef zeroext %prio, i8 noundef zeroext %ifidx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %prio to i32
  %arrayidx = getelementptr [8 x i8], ptr @brcmf_flowring_prio2fifo, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom1 = zext i8 %ifidx to i32
  %arrayidx2 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 4, i32 %idxprom1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true4, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %da, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.i.not, i8 %1, i8 0
  %spec.select136 = select i1 %tobool.i.not, ptr %da, ptr @ALLFFMAC
  br label %cond.false

land.lhs.true4:                                   ; preds = %entry
  %tdls_active = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 6
  %7 = ptrtoint ptr %tdls_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tdls_active, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true4.cond.true_crit_edge, label %land.lhs.true6

land.lhs.true4.cond.true_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %tdls_entry.i = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 7
  %9 = ptrtoint ptr %tdls_entry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %search.04.i = load ptr, ptr %tdls_entry.i, align 4
  %tobool.not5.i = icmp eq ptr %search.04.i, null
  br i1 %tobool.not5.i, label %land.lhs.true6.cond.true_crit_edge, label %land.lhs.true6.while.body.i_crit_edge

land.lhs.true6.while.body.i_crit_edge:            ; preds = %land.lhs.true6
  br label %while.body.i

land.lhs.true6.cond.true_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true

while.cond.i:                                     ; preds = %while.body.i
  %next.i = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %search.06.i, i32 0, i32 1
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %search.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %search.0.i, null
  br i1 %tobool.not.i, label %while.cond.i.cond.true_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.i.cond.true_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %land.lhs.true6.while.body.i_crit_edge
  %search.06.i = phi ptr [ %search.0.i, %while.cond.i.while.body.i_crit_edge ], [ %search.04.i, %land.lhs.true6.while.body.i_crit_edge ]
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %search.06.i, ptr noundef dereferenceable(6) %da, i32 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %while.body.i.cond.false_crit_edge, label %while.cond.i

while.body.i.cond.false_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.true:                                        ; preds = %while.cond.i.cond.true_crit_edge, %land.lhs.true6.cond.true_crit_edge, %land.lhs.true4.cond.true_crit_edge
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %idxprom1, 4
  %add = add nuw nsw i32 %mul, %conv
  br label %cond.end

cond.false:                                       ; preds = %while.body.i.cond.false_crit_edge, %if.end
  %mac.0144 = phi ptr [ %spec.select136, %if.end ], [ %da, %while.body.i.cond.false_crit_edge ]
  %fifo.0141 = phi i8 [ %spec.select, %if.end ], [ %1, %while.body.i.cond.false_crit_edge ]
  %arrayidx12 = getelementptr i8, ptr %mac.0144, i32 5
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %12 to i32
  %mul14 = shl nuw nsw i32 %conv13, 1
  %conv15 = zext i8 %fifo.0141 to i32
  %mul18 = shl nuw nsw i32 %idxprom1, 4
  %add16 = add nuw nsw i32 %mul18, %conv15
  %add19 = add nuw nsw i32 %add16, %mul14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %mac.0144150 = phi ptr [ %da, %cond.true ], [ %mac.0144, %cond.false ]
  %fifo.0143 = phi i8 [ %1, %cond.true ], [ %fifo.0141, %cond.false ]
  %cond = phi i32 [ %add, %cond.true ], [ %add19, %cond.false ]
  %13 = trunc i32 %cond to i16
  %hash23 = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %cond.end
  %hash_idx.0156.in = phi i16 [ %13, %cond.end ], [ %inc, %if.end40.for.body_crit_edge ]
  %i.0155 = phi i32 [ 0, %cond.end ], [ %inc44, %if.end40.for.body_crit_edge ]
  %hash_idx.0156 = and i16 %hash_idx.0156.in, 511
  %idxprom26 = zext i16 %hash_idx.0156 to i32
  %ifidx28 = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %idxprom26, i32 2
  %14 = ptrtoint ptr %ifidx28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ifidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp30 = icmp eq i8 %15, -1
  br i1 %cmp30, label %land.lhs.true32, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true32:                                  ; preds = %for.body
  %arrayidx27 = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %idxprom26
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx27, align 4
  %add.ptr.i = getelementptr i8, ptr %arrayidx27, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %19 to i32
  %or.i = or i32 %17, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i138 = icmp eq i32 %or.i, 0
  br i1 %cmp.i138, label %for.cond47.preheader, label %land.lhs.true32.if.end40_crit_edge

land.lhs.true32.if.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.cond47.preheader:                             ; preds = %land.lhs.true32
  %nrofrings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 5
  %20 = ptrtoint ptr %nrofrings to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nrofrings, align 4
  %conv48 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp49158.not = icmp eq i16 %21, 0
  br i1 %cmp49158.not, label %for.cond47.preheader.for.end59_crit_edge, label %for.body51.lr.ph

for.cond47.preheader.for.end59_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.body51.lr.ph:                                 ; preds = %for.cond47.preheader
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %22 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rings, align 4
  br label %for.body51

if.end40:                                         ; preds = %land.lhs.true32.if.end40_crit_edge, %for.body.if.end40_crit_edge
  %inc = add nuw nsw i16 %hash_idx.0156, 1
  %inc44 = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %inc44, 512
  br i1 %exitcond.not, label %if.end40.cleanup_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body51:                                       ; preds = %for.inc57.for.body51_crit_edge, %for.body51.lr.ph
  %i.1159 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc58, %for.inc57.for.body51_crit_edge ]
  %arrayidx52 = getelementptr ptr, ptr %23, i32 %i.1159
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx52, align 4
  %cmp53 = icmp eq ptr %25, null
  br i1 %cmp53, label %for.body51.for.end59_crit_edge, label %for.inc57

for.body51.for.end59_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.inc57:                                        ; preds = %for.body51
  %inc58 = add nuw nsw i32 %i.1159, 1
  %exitcond166.not = icmp eq i32 %inc58, %conv48
  br i1 %exitcond166.not, label %for.inc57.cleanup_crit_edge, label %for.inc57.for.body51_crit_edge

for.inc57.for.body51_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.inc57.cleanup_crit_edge:                      ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end59:                                        ; preds = %for.body51.for.end59_crit_edge, %for.cond47.preheader.for.end59_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond47.preheader.for.end59_crit_edge ], [ %i.1159, %for.body51.for.end59_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %conv48)
  %cmp62 = icmp eq i32 %i.1.lcssa, %conv48
  br i1 %cmp62, label %for.end59.cleanup_crit_edge, label %if.end65

for.end59.cleanup_crit_edge:                      ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %for.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 2848, i32 noundef 64) #12
  %tobool67.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool67.not, label %if.end65.cleanup_crit_edge, label %if.end69

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %27 = call ptr @memcpy(ptr %arrayidx27, ptr %mac.0144150, i32 6)
  %fifo76 = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %idxprom26, i32 1
  %28 = ptrtoint ptr %fifo76 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %fifo.0143, ptr %fifo76, align 2
  %29 = ptrtoint ptr %ifidx28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %ifidx, ptr %ifidx28, align 1
  %conv80 = trunc i32 %i.1.lcssa to i16
  %flowid = getelementptr %struct.brcmf_flowring_hash, ptr %hash23, i32 %idxprom26, i32 3
  %30 = ptrtoint ptr %flowid to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv80, ptr %flowid, align 2
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %hash_idx.0156, ptr %call7.i.i, align 8
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %status, align 4
  %skblist = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %call7.i.i, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %call7.i.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %33 = ptrtoint ptr %skblist to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %skblist, ptr %skblist, align 8
  %prev.i.i = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %skblist, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %call7.i.i, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %qlen.i.i, align 8
  %rings83 = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %36 = ptrtoint ptr %rings83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rings83, align 4
  %arrayidx84 = getelementptr ptr, ptr %37, i32 %i.1.lcssa
  %38 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %arrayidx84, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end65.cleanup_crit_edge, %for.end59.cleanup_crit_edge, %for.inc57.cleanup_crit_edge, %if.end40.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.1.lcssa, %if.end69 ], [ -12, %for.end59.cleanup_crit_edge ], [ -12, %if.end65.cleanup_crit_edge ], [ -12, %for.inc57.cleanup_crit_edge ], [ -1, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @brcmf_flowring_tid(ptr nocapture noundef readonly %flow, i16 noundef zeroext %flowid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %idxprom1 = zext i16 %5 to i32
  %fifo = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %idxprom1, i32 1
  %6 = ptrtoint ptr %fifo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fifo, align 2
  ret i8 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_flowring_delete(ptr noundef %flow, i16 noundef zeroext %flowid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 4
  %idxprom1.i = zext i16 %9 to i32
  %ifidx.i = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %idxprom1.i, i32 2
  %10 = ptrtoint ptr %ifidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ifidx.i, align 1
  %drvr = getelementptr inbounds %struct.brcmf_bus, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drvr, align 4
  %conv = zext i8 %11 to i32
  %call2 = tail call ptr @brcmf_get_ifp(ptr noundef %13, i32 noundef %conv) #7
  tail call fastcc void @brcmf_flowring_block(ptr noundef %flow, i16 noundef zeroext %flowid, i1 noundef zeroext false)
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  %idxprom3 = zext i16 %15 to i32
  %arrayidx4 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %idxprom3
  %ifidx5 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %idxprom3, i32 2
  %16 = ptrtoint ptr %ifidx5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %ifidx5, align 1
  %17 = call ptr @memset(ptr %arrayidx4, i32 0, i32 6)
  %18 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rings, align 4
  %arrayidx11 = getelementptr ptr, ptr %19, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx11, align 4
  %skblist = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3
  %call12 = tail call ptr @skb_dequeue(ptr noundef %skblist) #7
  %tobool13.not36 = icmp eq ptr %call12, null
  br i1 %tobool13.not36, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %skb.037 = phi ptr [ %call15, %while.body.while.body_crit_edge ], [ %call12, %if.end.while.body_crit_edge ]
  tail call void @brcmf_txfinalize(ptr noundef %call2, ptr noundef nonnull %skb.037, i1 noundef zeroext false) #7
  %call15 = tail call ptr @skb_dequeue(ptr noundef %skblist) #7
  %tobool13.not = icmp eq ptr %call15, null
  br i1 %tobool13.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @brcmf_flowring_ifidx_get(ptr nocapture noundef readonly %flow, i16 noundef zeroext %flowid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %idxprom1 = zext i16 %5 to i32
  %ifidx = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %idxprom1, i32 2
  %6 = ptrtoint ptr %ifidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ifidx, align 1
  ret i8 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmf_flowring_block(ptr noundef %flow, i16 noundef zeroext %flowid, i1 noundef zeroext %blocked) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %blocked to i8
  %block_lock = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %block_lock) #7
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %blocked5 = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blocked5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %blocked5, align 2, !range !28
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %frombool)
  %cmp9 = icmp eq i8 %5, %frombool
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %idxprom1.i = zext i16 %7 to i32
  %ifidx.i = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %idxprom1.i, i32 2
  %8 = ptrtoint ptr %ifidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ifidx.i, align 1
  %nrofrings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 5
  %10 = ptrtoint ptr %nrofrings to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nrofrings, align 4
  %conv13 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp1497.not = icmp eq i16 %11, 0
  br i1 %cmp1497.not, label %if.end.if.end50.critedge_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end50.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.098 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx17 = getelementptr ptr, ptr %1, i32 %i.098
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %13, null
  call void @__sanitizer_cov_trace_cmp4(i32 %i.098, i32 %idxprom)
  %cmp20.not = icmp eq i32 %i.098, %idxprom
  %or.cond = select i1 %tobool18.not, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then22:                                        ; preds = %for.body
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp25 = icmp eq i32 %15, 2
  br i1 %cmp25, label %land.lhs.true27, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true27:                                  ; preds = %if.then22
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 4
  %idxprom1.i95 = zext i16 %19 to i32
  %ifidx.i96 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %idxprom1.i95, i32 2
  %20 = ptrtoint ptr %ifidx.i96 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ifidx.i96, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %9)
  %cmp32 = icmp eq i8 %21, %9
  br i1 %cmp32, label %if.then34, label %land.lhs.true27.for.inc_crit_edge

land.lhs.true27.for.inc_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then34:                                        ; preds = %land.lhs.true27
  %blocked35 = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %blocked35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %blocked35, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.then34.for.inc_crit_edge, label %if.then48.critedge

if.then34.for.inc_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then34.for.inc_crit_edge, %land.lhs.true27.for.inc_crit_edge, %if.then22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %conv13
  br i1 %exitcond.not, label %for.inc.if.end50.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end50.critedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.critedge

if.then48.critedge:                               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %blocked5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool, ptr %blocked5, align 2
  br label %cleanup

if.end50.critedge:                                ; preds = %for.inc.if.end50.critedge_crit_edge, %if.end.if.end50.critedge_crit_edge
  %25 = ptrtoint ptr %blocked5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %blocked5, align 2
  %26 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flow, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i, align 4
  %drvr52 = getelementptr inbounds %struct.brcmf_bus, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %drvr52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drvr52, align 4
  %conv53 = zext i8 %9 to i32
  %call54 = tail call ptr @brcmf_get_ifp(ptr noundef %31, i32 noundef %conv53) #7
  tail call void @brcmf_txflowblock_if(ptr noundef %call54, i32 noundef 2, i1 noundef zeroext %blocked) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50.critedge, %if.then48.critedge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %block_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txfinalize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_flowring_enqueue(ptr noundef %flow, i16 noundef zeroext %flowid, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %skblist = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %skblist, ptr noundef %skb) #7
  %blocked = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %blocked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %blocked, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %qlen.i = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %7)
  %cmp = icmp ugt i32 %7, 1024
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  tail call fastcc void @brcmf_flowring_block(ptr noundef %flow, i16 noundef zeroext %flowid, i1 noundef zeroext true)
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_flowring_enqueue, ptr noundef nonnull @.str, i32 noundef %idxprom) #7
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %9)
  %cmp4 = icmp ult i32 %9, 768
  br i1 %cmp4, label %if.then6, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @brcmf_flowring_block(ptr noundef %flow, i16 noundef zeroext %flowid, i1 noundef zeroext false)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %qlen.i20 = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %qlen.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i20, align 4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_flowring_dequeue(ptr noundef %flow, i16 noundef zeroext %flowid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %skblist = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3
  %call = tail call ptr @skb_dequeue(ptr noundef %skblist) #7
  %blocked = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %blocked to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blocked, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %qlen.i = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %9)
  %cmp3 = icmp ult i32 %9, 768
  br i1 %cmp3, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @brcmf_flowring_block(ptr noundef %flow, i16 noundef zeroext %flowid, i1 noundef zeroext false)
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 262144, ptr noundef nonnull @__func__.brcmf_flowring_dequeue, ptr noundef nonnull @.str.1, i32 noundef %idxprom) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.then4 ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_flowring_reinsert(ptr nocapture noundef readonly %flow, i16 noundef zeroext %flowid, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %skblist = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3
  tail call void @skb_queue_head(ptr noundef %skblist, ptr noundef %skb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @brcmf_flowring_qlen(ptr nocapture noundef readonly %flow, i16 noundef zeroext %flowid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %qlen.i = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_flowring_open(ptr nocapture noundef readonly %flow, i16 noundef zeroext %flowid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %flowid to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_flowring_open, ptr noundef nonnull @.str.2, i32 noundef %idxprom) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_flowring_attach(ptr noundef %dev, i16 noundef zeroext %nrofrings) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5244) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %nrofrings2 = getelementptr inbounds %struct.brcmf_flowring, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %nrofrings2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %nrofrings, ptr %nrofrings2, align 4
  %block_lock = getelementptr inbounds %struct.brcmf_flowring, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %block_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @brcmf_flowring_attach.__key, i16 noundef signext 3) #7
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 5172
  %3 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %if.then
  %i.139 = phi i32 [ %inc9, %for.body6.for.body6_crit_edge ], [ 0, %if.then ]
  %ifidx = getelementptr %struct.brcmf_flowring, ptr %call7.i.i, i32 0, i32 1, i32 %i.139, i32 2
  %4 = ptrtoint ptr %ifidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ifidx, align 1
  %inc9 = add nuw nsw i32 %i.139, 1
  %exitcond.not = icmp eq i32 %inc9, 512
  br i1 %exitcond.not, label %if.end7.i.i, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

if.end7.i.i:                                      ; preds = %for.body6
  %conv = zext i16 %nrofrings to i32
  %5 = shl nuw nsw i32 %conv, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #13
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %rings to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %rings, align 4
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end7.i.i.if.end15_crit_edge

if.end7.i.i.if.end15_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end7.i.i.if.end15_crit_edge, %entry.if.end15_crit_edge
  %flow.0 = phi ptr [ %call7.i.i, %if.end7.i.i.if.end15_crit_edge ], [ null, %if.then14 ], [ null, %entry.if.end15_crit_edge ]
  ret ptr %flow.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_flowring_detach(ptr noundef %flow) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr1, align 4
  %nrofrings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 5
  %6 = ptrtoint ptr %nrofrings to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nrofrings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp16.not = icmp eq i16 %7, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rings, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = trunc i32 %indvars.iv to i16
  tail call void @brcmf_msgbuf_delete_flowring(ptr noundef %5, i16 noundef zeroext %12) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %13 = ptrtoint ptr %nrofrings to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nrofrings, align 4
  %15 = zext i16 %14 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tdls_entry = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 7
  %16 = ptrtoint ptr %tdls_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tdls_entry, align 4
  %tobool4.not18 = icmp eq ptr %17, null
  br i1 %tobool4.not18, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %search.019 = phi ptr [ %19, %while.body.while.body_crit_edge ], [ %17, %for.end.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %search.019, i32 0, i32 1
  %18 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next, align 4
  tail call void @kfree(ptr noundef nonnull %search.019) #7
  %tobool4.not = icmp eq ptr %19, null
  br i1 %tobool4.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %rings5 = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  %20 = ptrtoint ptr %rings5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rings5, align 4
  tail call void @kfree(ptr noundef %21) #7
  tail call void @kfree(ptr noundef %flow) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_msgbuf_delete_flowring(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_flowring_configure_addr_mode(ptr nocapture noundef %flow, i32 noundef %ifidx, i32 noundef %addr_mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr1, align 4
  %arrayidx = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 4, i32 %ifidx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr_mode)
  %cmp.not = icmp eq i32 %7, %addr_mode
  br i1 %cmp.not, label %entry.if.end23_crit_edge, label %for.cond.preheader

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.cond.preheader:                               ; preds = %entry
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.038 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %ifidx5 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %i.038, i32 2
  %8 = ptrtoint ptr %ifidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ifidx5, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ifidx)
  %cmp6 = icmp eq i32 %conv, %ifidx
  br i1 %cmp6, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %flowid11 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %i.038, i32 3
  %10 = ptrtoint ptr %flowid11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flowid11, align 2
  %12 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %11 to i32
  %arrayidx12 = getelementptr ptr, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp13.not = icmp eq i32 %17, 2
  br i1 %cmp13.not, label %if.end, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %status, align 4
  tail call void @brcmf_msgbuf_delete_flowring(ptr noundef %5, i16 noundef zeroext %11) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %addr_mode, ptr %arrayidx, align 4
  br label %if.end23

if.end23:                                         ; preds = %for.end, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_flowring_delete_peer(ptr nocapture noundef %flow, i32 noundef %ifidx, ptr nocapture noundef readonly %peer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr1, align 4
  %arrayidx = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 4, i32 %ifidx
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %tdls_entry = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 7
  %8 = ptrtoint ptr %tdls_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %search.073 = load ptr, ptr %tdls_entry, align 4
  %tobool.not74 = icmp eq ptr %search.073, null
  br i1 %tobool.not74, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %bcmp7287 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %search.073, ptr noundef dereferenceable(6) %peer, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp7287)
  %cmp388 = icmp eq i32 %bcmp7287, 0
  br i1 %cmp388, label %while.body.preheader.while.end.loopexit_crit_edge, label %while.body.preheader.if.end_crit_edge

while.body.preheader.if.end_crit_edge:            ; preds = %while.body.preheader
  br label %if.end

while.body.preheader.while.end.loopexit_crit_edge: ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit

while.body:                                       ; preds = %if.end
  %bcmp72 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %search.0, ptr noundef dereferenceable(6) %peer, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp72)
  %cmp3 = icmp eq i32 %bcmp72, 0
  br i1 %cmp3, label %while.body.while.end.loopexit_crit_edge, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body.while.end.loopexit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit

if.end:                                           ; preds = %while.body.if.end_crit_edge, %while.body.preheader.if.end_crit_edge
  %cmp390 = phi i1 [ %cmp3, %while.body.if.end_crit_edge ], [ %cmp388, %while.body.preheader.if.end_crit_edge ]
  %search.07689 = phi ptr [ %search.0, %while.body.if.end_crit_edge ], [ %search.073, %while.body.preheader.if.end_crit_edge ]
  %next = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %search.07689, i32 0, i32 1
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %search.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %search.0, null
  br i1 %tobool.not, label %if.end.while.end.loopexit_crit_edge, label %while.body

if.end.while.end.loopexit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit

while.end.loopexit:                               ; preds = %if.end.while.end.loopexit_crit_edge, %while.body.while.end.loopexit_crit_edge, %while.body.preheader.while.end.loopexit_crit_edge
  %cmp3.lcssa = phi i1 [ %cmp388, %while.body.preheader.while.end.loopexit_crit_edge ], [ %cmp390, %if.end.while.end.loopexit_crit_edge ], [ %cmp3, %while.body.while.end.loopexit_crit_edge ]
  %prev.0.lcssa.ph = phi ptr [ null, %while.body.preheader.while.end.loopexit_crit_edge ], [ %search.07689, %while.body.while.end.loopexit_crit_edge ], [ %search.07689, %if.end.while.end.loopexit_crit_edge ]
  %search.0.lcssa.ph = phi ptr [ %search.073, %while.body.preheader.while.end.loopexit_crit_edge ], [ null, %if.end.while.end.loopexit_crit_edge ], [ %search.0, %while.body.while.end.loopexit_crit_edge ]
  %sta.0.off0.ph = phi i1 [ false, %while.body.preheader.while.end.loopexit_crit_edge ], [ %cmp, %if.end.while.end.loopexit_crit_edge ], [ false, %while.body.while.end.loopexit_crit_edge ]
  %10 = xor i1 %cmp3.lcssa, true
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %prev.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %prev.0.lcssa.ph, %while.end.loopexit ]
  %search.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %search.0.lcssa.ph, %while.end.loopexit ]
  %tobool.not.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %10, %while.end.loopexit ]
  %sta.0.off0 = phi i1 [ %cmp, %entry.while.end_crit_edge ], [ %sta.0.off0.ph, %while.end.loopexit ]
  %hash4 = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 1
  %rings = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end
  %i.085 = phi i32 [ 0, %while.end ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %sta.0.off0, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx8 = getelementptr %struct.brcmf_flowring_hash, ptr %hash4, i32 %i.085
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %arrayidx8, ptr noundef dereferenceable(6) %peer, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp12 = icmp eq i32 %bcmp, 0
  br i1 %cmp12, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %ifidx14 = getelementptr %struct.brcmf_flowring_hash, ptr %hash4, i32 %i.085, i32 2
  %11 = ptrtoint ptr %ifidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ifidx14, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ifidx)
  %cmp15 = icmp eq i32 %conv, %ifidx
  br i1 %cmp15, label %if.then17, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  %flowid20 = getelementptr %struct.brcmf_flowring, ptr %flow, i32 0, i32 1, i32 %i.085, i32 3
  %13 = ptrtoint ptr %flowid20 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flowid20, align 2
  %15 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rings, align 4
  %idxprom = zext i16 %14 to i32
  %arrayidx21 = getelementptr ptr, ptr %16, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  %status = getelementptr inbounds %struct.brcmf_flowring_ring, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp22 = icmp eq i32 %20, 2
  br i1 %cmp22, label %if.then24, label %if.then17.for.inc_crit_edge

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %status, align 4
  tail call void @brcmf_msgbuf_delete_flowring(ptr noundef %5, i16 noundef zeroext %14) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.then17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool.not.lcssa, label %for.end.if.end45_crit_edge, label %if.then32

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then32:                                        ; preds = %for.end
  %tobool33.not = icmp eq ptr %prev.0.lcssa, null
  %next37 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %search.0.lcssa, i32 0, i32 1
  %22 = ptrtoint ptr %next37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next37, align 4
  %next36 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %prev.0.lcssa, i32 0, i32 1
  %tdls_entry.sink = select i1 %tobool33.not, ptr %tdls_entry, ptr %next36
  %24 = ptrtoint ptr %tdls_entry.sink to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tdls_entry.sink, align 4
  tail call void @kfree(ptr noundef nonnull %search.0.lcssa) #7
  %25 = ptrtoint ptr %tdls_entry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tdls_entry, align 4
  %cmp41 = icmp eq ptr %26, null
  br i1 %cmp41, label %if.then43, label %if.then32.if.end45_crit_edge

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then43:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %tdls_active = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 6
  %27 = ptrtoint ptr %tdls_active to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tdls_active, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then32.if.end45_crit_edge, %for.end.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_flowring_add_tdls_peer(ptr nocapture noundef %flow, i32 noundef %ifidx, ptr nocapture noundef readonly %peer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 12) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %peer, i32 6)
  %next = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %next, align 8
  %tdls_entry1 = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 7
  %3 = ptrtoint ptr %tdls_entry1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tdls_entry1, align 4
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.end.if.end21_crit_edge, label %if.else

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else:                                          ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef dereferenceable(6) %peer, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp9 = icmp eq i32 %bcmp, 0
  br i1 %cmp9, label %if.else.free_entry_crit_edge, label %if.else.while.cond_crit_edge

if.else.while.cond_crit_edge:                     ; preds = %if.else
  br label %while.cond

if.else.free_entry_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_entry

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.else.while.cond_crit_edge
  %search.0 = phi ptr [ %6, %while.body.while.cond_crit_edge ], [ %4, %if.else.while.cond_crit_edge ]
  %next12 = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %search.0, i32 0, i32 1
  %5 = ptrtoint ptr %next12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next12, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %bcmp38 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef dereferenceable(6) %peer, i32 6) #11
  %cmp17 = icmp eq i32 %bcmp38, 0
  br i1 %cmp17, label %while.body.free_entry_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.body.free_entry_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_entry

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %next12.le = getelementptr inbounds %struct.brcmf_flowring_tdls_entry, ptr %search.0, i32 0, i32 1
  br label %if.end21

if.end21:                                         ; preds = %while.end, %if.end.if.end21_crit_edge
  %next12.le.sink = phi ptr [ %next12.le, %while.end ], [ %tdls_entry1, %if.end.if.end21_crit_edge ]
  %7 = ptrtoint ptr %next12.le.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %next12.le.sink, align 4
  %tdls_active = getelementptr inbounds %struct.brcmf_flowring, ptr %flow, i32 0, i32 6
  %8 = ptrtoint ptr %tdls_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %tdls_active, align 2
  br label %cleanup

free_entry:                                       ; preds = %while.body.free_entry_crit_edge, %if.else.free_entry_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_entry, %if.end21, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txflowblock_if(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__func__.brcmf_flowring_enqueue, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c", i32 271, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.brcmf_flowring_dequeue, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c", i32 299, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.brcmf_flowring_open, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c", i32 338, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @brcmf_flowring_attach.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c", i32 367, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @brcmf_flowring_prio2fifo, !13, !"brcmf_flowring_prio2fifo", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c", i32 28, i32 17}
!14 = !{ptr @ALLFFMAC, !15, !"ALLFFMAC", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/flowring.c", i32 39, i32 17}
!16 = !{ptr @skb_queue_head_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
