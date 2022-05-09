; ModuleID = '/llk/IR_all_yes/sound/virtio/virtio_pcm_msg.c_pt.bc'
source_filename = "../sound/virtio/virtio_pcm_msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtio_pcm_substream = type { ptr, i32, i32, i32, i32, ptr, %struct.snd_pcm_hardware, %struct.work_struct, %struct.spinlock, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.virtio_pcm_msg = type { ptr, %struct.virtio_snd_pcm_xfer, %struct.virtio_snd_pcm_status, i32, [0 x %struct.scatterlist] }
%struct.virtio_snd_pcm_xfer = type { i32 }
%struct.virtio_snd_pcm_status = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtio_snd = type { ptr, [4 x %struct.virtio_snd_queue], ptr, %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, ptr, i32 }
%struct.virtio_snd_queue = type { %struct.spinlock, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_snd_pcm_hdr = type { %struct.virtio_snd_hdr, i32 }
%struct.virtio_snd_hdr = type { i32 }

@virtsnd_pcm_msg_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SID %u: failed to send I/O message\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtsnd_pcm_msg_send\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/virtio/virtio_pcm_msg.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtsnd_pcm_msg_send._entry_ptr = internal global ptr @virtsnd_pcm_msg_send._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [33 x i8] c"../sound/virtio/virtio_pcm_msg.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 234, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @virtsnd_pcm_msg_send._entry, ptr @virtsnd_pcm_msg_send._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_pcm_msg_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_pcm_msg_alloc(ptr noundef %vss, i32 noundef %periods, i32 noundef %period_bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 5
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %periods, i32 4) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !17

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %msgs60 = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 15
  %6 = ptrtoint ptr %msgs60 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %msgs60, align 4
  br label %cleanup18

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %msgs = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 15
  %8 = ptrtoint ptr %msgs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %msgs, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup18_crit_edge, label %if.end

if.end7.i.i.cleanup18_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

if.end:                                           ; preds = %if.end7.i.i
  %nmsgs = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 16
  %9 = ptrtoint ptr %nmsgs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %periods, ptr %nmsgs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %periods)
  %cmp67.not = icmp eq i32 %periods, 0
  br i1 %cmp67.not, label %if.end.cleanup18_crit_edge, label %for.body.lr.ph

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

for.body.lr.ph:                                   ; preds = %if.end
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_bytes)
  %tobool.not21.i = icmp eq i32 %period_bytes, 0
  br label %for.body

for.body:                                         ; preds = %virtsnd_pcm_sg_from.exit.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %virtsnd_pcm_sg_from.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_area, align 4
  %mul = mul i32 %i.068, %period_bytes
  %add.ptr = getelementptr i8, ptr %11, i32 %mul
  br i1 %tobool.not21.i, label %for.body.if.end8.i.i_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.if.end8.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %data.addr.026.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %for.body.while.body.i_crit_edge ]
  %num.025.i = phi i32 [ %num.1.i, %while.body.i.while.body.i_crit_edge ], [ 0, %for.body.while.body.i_crit_edge ]
  %sg_length.024.i = phi i32 [ %sg_length.1.i, %while.body.i.while.body.i_crit_edge ], [ -1, %for.body.while.body.i_crit_edge ]
  %sg_address.023.i = phi i32 [ %sg_address.1.i, %while.body.i.while.body.i_crit_edge ], [ -1, %for.body.while.body.i_crit_edge ]
  %length.addr.022.i = phi i32 [ %sub7.i, %while.body.i.while.body.i_crit_edge ], [ %period_bytes, %for.body.while.body.i_crit_edge ]
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %data.addr.026.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %13
  %shl.i = shl i32 %add.i, 12
  %14 = ptrtoint ptr %data.addr.026.i to i32
  %and.i = and i32 %14, 4095
  %sub.i = sub nuw nsw i32 4096, %and.i
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %length.addr.022.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.025.i)
  %tobool1.not.i = icmp ne i32 %num.025.i, 0
  %add2.i = add i32 %sg_address.023.i, %sg_length.024.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %shl.i)
  %cmp3.not.i = icmp eq i32 %add2.i, %shl.i
  %or.cond.i = select i1 %tobool1.not.i, i1 %cmp3.not.i, i1 false
  %sg_address.1.i = select i1 %or.cond.i, i32 %sg_address.023.i, i32 %shl.i
  %add5.i = select i1 %or.cond.i, i32 %sg_length.024.i, i32 0
  %sg_length.1.i = add i32 %add5.i, %15
  %not.or.cond.i = xor i1 %or.cond.i, true
  %inc.i = zext i1 %not.or.cond.i to i32
  %num.1.i = add i32 %num.025.i, %inc.i
  %add.ptr.i = getelementptr i8, ptr %data.addr.026.i, i32 %15
  %sub7.i = sub i32 %length.addr.022.i, %15
  %tobool.not.i = icmp eq i32 %sub7.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end8.i.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.if.end8.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %while.body.i.if.end8.i.i_crit_edge, %for.body.if.end8.i.i_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %for.body.if.end8.i.i_crit_edge ], [ %num.1.i, %while.body.i.if.end8.i.i_crit_edge ]
  %add = add i32 %num.0.lcssa.i, 2
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 20) #7
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %18, i32 20) #7
  %retval.0.i = select i1 %17, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.end8.i.i.cleanup18_crit_edge, label %if.end8

if.end8.i.i.cleanup18_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

if.end8:                                          ; preds = %if.end8.i.i
  %19 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vss, ptr %call9.i.i, align 128
  %sgs = getelementptr inbounds %struct.virtio_pcm_msg, ptr %call9.i.i, i32 0, i32 4
  %xfer = getelementptr inbounds %struct.virtio_pcm_msg, ptr %call9.i.i, i32 0, i32 1
  tail call void @sg_init_one(ptr noundef %sgs, ptr noundef %xfer, i32 noundef 4) #7
  %arrayidx11 = getelementptr %struct.virtio_pcm_msg, ptr %call9.i.i, i32 2
  %status = getelementptr inbounds %struct.virtio_pcm_msg, ptr %call9.i.i, i32 0, i32 2
  tail call void @sg_init_one(ptr noundef %arrayidx11, ptr noundef %status, i32 noundef 8) #7
  %length = getelementptr inbounds %struct.virtio_pcm_msg, ptr %call9.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %period_bytes, ptr %length, align 16
  %arrayidx13 = getelementptr %struct.virtio_pcm_msg, ptr %call9.i.i, i32 3
  br i1 %tobool.not21.i, label %if.end8.virtsnd_pcm_sg_from.exit_crit_edge, label %if.end8.while.body.i50_crit_edge

if.end8.while.body.i50_crit_edge:                 ; preds = %if.end8
  br label %while.body.i50

if.end8.virtsnd_pcm_sg_from.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtsnd_pcm_sg_from.exit

while.body.i50:                                   ; preds = %cleanup.i.while.body.i50_crit_edge, %if.end8.while.body.i50_crit_edge
  %idx.056.i = phi i32 [ %idx.1.i, %cleanup.i.while.body.i50_crit_edge ], [ -1, %if.end8.while.body.i50_crit_edge ]
  %length.addr.055.i = phi i32 [ %sub18.i, %cleanup.i.while.body.i50_crit_edge ], [ %period_bytes, %if.end8.while.body.i50_crit_edge ]
  %data.addr.054.i = phi ptr [ %add.ptr.i57, %cleanup.i.while.body.i50_crit_edge ], [ %add.ptr, %if.end8.while.body.i50_crit_edge ]
  %call.i47 = tail call ptr @vmalloc_to_page(ptr noundef %data.addr.054.i) #7
  %21 = ptrtoint ptr %data.addr.054.i to i32
  %and.i48 = and i32 %21, 4095
  %sub.i49 = sub nuw nsw i32 4096, %and.i48
  %22 = tail call i32 @llvm.umin.i32(i32 %sub.i49, i32 %length.addr.055.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.056.i)
  %cmp1.i = icmp eq i32 %idx.056.i, -1
  br i1 %cmp1.i, label %while.body.i50.if.then7.i_crit_edge, label %lor.lhs.false.i

while.body.i50.if.then7.i_crit_edge:              ; preds = %while.body.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %while.body.i50
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %arrayidx13, i32 %idx.056.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_phys.exit.i, label %do.body2.i.i.i, !prof !18

do.body2.i.i.i:                                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !19
  unreachable

sg_phys.exit.i:                                   ; preds = %lor.lhs.false.i
  %and.i.i.i = and i32 %24, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i = sub i32 %and.i.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %26
  %shl.i.i = shl i32 %add.i.i, 12
  %offset.i.i = getelementptr %struct.scatterlist, ptr %arrayidx13, i32 %idx.056.i, i32 1
  %27 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset.i.i, align 4
  %length4.i = getelementptr %struct.scatterlist, ptr %arrayidx13, i32 %idx.056.i, i32 2
  %29 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length4.i, align 4
  %add1.i.i = add i32 %30, %28
  %add.i51 = add i32 %add1.i.i, %shl.i.i
  %sub.ptr.lhs.cast.i52 = ptrtoint ptr %call.i47 to i32
  %sub.ptr.sub.i53 = sub i32 %sub.ptr.lhs.cast.i52, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i54 = sdiv exact i32 %sub.ptr.sub.i53, 36
  %add5.i55 = add i32 %sub.ptr.div.i54, %26
  %shl.i56 = shl i32 %add5.i55, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i51, i32 %shl.i56)
  %cmp6.not.i = icmp eq i32 %add.i51, %shl.i56
  br i1 %cmp6.not.i, label %if.else.i, label %sg_phys.exit.i.if.then7.i_crit_edge

sg_phys.exit.i.if.then7.i_crit_edge:              ; preds = %sg_phys.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.then7.i:                                       ; preds = %sg_phys.exit.i.if.then7.i_crit_edge, %while.body.i50.if.then7.i_crit_edge
  %add8.i = add i32 %idx.056.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %num.0.lcssa.i)
  %cmp9.i = icmp eq i32 %add8.i, %num.0.lcssa.i
  br i1 %cmp9.i, label %if.then7.i.virtsnd_pcm_sg_from.exit_crit_edge, label %if.end11.i

if.then7.i.virtsnd_pcm_sg_from.exit_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtsnd_pcm_sg_from.exit

if.end11.i:                                       ; preds = %if.then7.i
  %arrayidx12.i = getelementptr %struct.scatterlist, ptr %arrayidx13, i32 %add8.i
  %31 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx12.i, align 4
  %33 = ptrtoint ptr %call.i47 to i32
  %and2.i.i.i = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !18

do.body5.i.i.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !20
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end11.i
  %and.i.i.i42.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i42.i)
  %tobool.i.not.i.i43.i = icmp eq i32 %and.i.i.i42.i, 0
  br i1 %tobool.i.not.i.i43.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !18

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i44.i = and i32 %32, 3
  %or.i.i.i = or i32 %and.i.i44.i, %33
  %34 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i.i.i, ptr %arrayidx12.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %arrayidx13, i32 %add8.i, i32 1
  %35 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i48, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %arrayidx13, i32 %add8.i, i32 2
  %36 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %22, ptr %length.i.i, align 4
  br label %cleanup.i

if.else.i:                                        ; preds = %sg_phys.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add16.i = add i32 %30, %22
  %37 = ptrtoint ptr %length4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add16.i, ptr %length4.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %sg_set_page.exit.i
  %idx.1.i = phi i32 [ %add8.i, %sg_set_page.exit.i ], [ %idx.056.i, %if.else.i ]
  %add.ptr.i57 = getelementptr i8, ptr %data.addr.054.i, i32 %22
  %sub18.i = sub i32 %length.addr.055.i, %22
  %tobool.not.i58 = icmp eq i32 %sub18.i, 0
  br i1 %tobool.not.i58, label %cleanup.i.virtsnd_pcm_sg_from.exit_crit_edge, label %cleanup.i.while.body.i50_crit_edge

cleanup.i.while.body.i50_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i50

cleanup.i.virtsnd_pcm_sg_from.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtsnd_pcm_sg_from.exit

virtsnd_pcm_sg_from.exit:                         ; preds = %cleanup.i.virtsnd_pcm_sg_from.exit_crit_edge, %if.then7.i.virtsnd_pcm_sg_from.exit_crit_edge, %if.end8.virtsnd_pcm_sg_from.exit_crit_edge
  %idx.0.lcssa.i = phi i32 [ -1, %if.end8.virtsnd_pcm_sg_from.exit_crit_edge ], [ %idx.1.i, %cleanup.i.virtsnd_pcm_sg_from.exit_crit_edge ], [ %idx.056.i, %if.then7.i.virtsnd_pcm_sg_from.exit_crit_edge ]
  %arrayidx20.i = getelementptr %struct.scatterlist, ptr %arrayidx13, i32 %idx.0.lcssa.i
  %38 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx20.i, align 4
  %or.i.i = and i32 %39, -4
  %and.i.i = or i32 %or.i.i, 2
  store i32 %and.i.i, ptr %arrayidx20.i, align 4
  %40 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msgs, align 4
  %arrayidx15 = getelementptr ptr, ptr %41, i32 %i.068
  %42 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i.i, ptr %arrayidx15, align 4
  %inc = add nuw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %periods
  br i1 %exitcond.not, label %virtsnd_pcm_sg_from.exit.cleanup18_crit_edge, label %virtsnd_pcm_sg_from.exit.for.body_crit_edge

virtsnd_pcm_sg_from.exit.for.body_crit_edge:      ; preds = %virtsnd_pcm_sg_from.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

virtsnd_pcm_sg_from.exit.cleanup18_crit_edge:     ; preds = %virtsnd_pcm_sg_from.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup18

cleanup18:                                        ; preds = %virtsnd_pcm_sg_from.exit.cleanup18_crit_edge, %if.end8.i.i.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %if.end7.i.i.cleanup18_crit_edge, %kcalloc.exit.thread
  %retval.2 = phi i32 [ -12, %if.end7.i.i.cleanup18_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end.cleanup18_crit_edge ], [ 0, %virtsnd_pcm_sg_from.exit.cleanup18_crit_edge ], [ -12, %if.end8.i.i.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_pcm_msg_free(ptr nocapture noundef %vss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nmsgs = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 16
  %msgs = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 15
  %0 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgs, align 4
  %tobool.not12 = icmp eq ptr %1, null
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %2 = phi ptr [ %8, %for.body.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %i.013 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %nmsgs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nmsgs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.013, i32 %4)
  %cmp = icmp ult i32 %i.013, %4
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr ptr, ptr %2, i32 %i.013
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %6) #7
  %inc = add nuw i32 %i.013, 1
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msgs, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ null, %for.body.for.end_crit_edge ], [ %2, %land.rhs.for.end_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #7
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %msgs, align 4
  %10 = ptrtoint ptr %nmsgs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nmsgs, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_pcm_msg_send(ptr nocapture noundef %vss) local_unnamed_addr #0 align 64 {
entry:
  %psgs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 5
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %4 = ptrtoint ptr %vss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vss, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %direction.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 3
  %8 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %arrayidx.i.i = getelementptr %struct.virtio_snd, ptr %5, i32 0, i32 1, i32 2
  %arrayidx.i5.i = getelementptr %struct.virtio_snd, ptr %5, i32 0, i32 1, i32 3
  %retval.0.i = select i1 %cmp.i, ptr %arrayidx.i.i, ptr %arrayidx.i5.i
  %vqueue4 = getelementptr inbounds %struct.virtio_snd_queue, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %vqueue4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vqueue4, align 4
  %msg_last_enqueued = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 17
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %periods, align 8
  %msg_count = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 18
  %14 = ptrtoint ptr %msg_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_count, align 8
  %sub = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not69 = icmp eq i32 %sub, 0
  br i1 %tobool.not69, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %16 = ptrtoint ptr %msg_last_enqueued to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_last_enqueued, align 4
  %add = add i32 %17, 1
  %rem = urem i32 %add, %13
  %msgs = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 15
  %18 = getelementptr inbounds [3 x ptr], ptr %psgs, i32 0, i32 1
  %19 = getelementptr inbounds [3 x ptr], ptr %psgs, i32 0, i32 2
  %sid = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.071 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %i.070 = phi i32 [ %rem, %for.body.lr.ph ], [ %rem25, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msgs, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %i.070
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %psgs) #7
  %sgs = getelementptr inbounds %struct.virtio_pcm_msg, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %psgs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sgs, ptr %psgs, align 4
  %arrayidx8 = getelementptr %struct.virtio_pcm_msg, ptr %23, i32 3
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx8, ptr %18, align 4
  %arrayidx11 = getelementptr %struct.virtio_pcm_msg, ptr %23, i32 2
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx11, ptr %19, align 4
  %27 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sid, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %xfer = getelementptr inbounds %struct.virtio_pcm_msg, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %xfer, align 4
  %status = getelementptr inbounds %struct.virtio_pcm_msg, ptr %23, i32 0, i32 2
  %31 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %status, align 4
  %32 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 @virtqueue_add_sgs(ptr noundef %11, ptr noundef nonnull %psgs, i32 noundef 2, i32 noundef 1, ptr noundef %23, i32 noundef 2592) #7
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 @virtqueue_add_sgs(ptr noundef %11, ptr noundef nonnull %psgs, i32 noundef 1, i32 noundef 2, ptr noundef %23, i32 noundef 2592) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rc.0 = phi i32 [ %call12, %if.then ], [ %call14, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool15.not = icmp eq i32 %rc.0, 0
  br i1 %tobool15.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 6
  %34 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %35) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %psgs) #7
  br label %cleanup34

for.inc:                                          ; preds = %if.end
  %36 = ptrtoint ptr %msg_last_enqueued to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.070, ptr %msg_last_enqueued, align 4
  %37 = ptrtoint ptr %msg_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_count, align 8
  %inc = add i32 %38, 1
  store i32 %inc, ptr %msg_count, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %psgs) #7
  %dec = add i32 %n.071, -1
  %add23 = add i32 %i.070, 1
  %39 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %periods, align 8
  %rem25 = urem i32 %add23, %40
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %features = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 4
  %41 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %features, align 8
  %and = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then27, label %for.end.cleanup34_crit_edge

for.end.cleanup34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.then27:                                        ; preds = %for.end
  %call28 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %11) #7
  br i1 %call28, label %if.then31, label %if.then27.cleanup34_crit_edge

if.then27.cleanup34_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call zeroext i1 @virtqueue_notify(ptr noundef %11) #7
  br label %cleanup34

cleanup34:                                        ; preds = %if.then31, %if.then27.cleanup34_crit_edge, %for.end.cleanup34_crit_edge, %cleanup
  %retval.2 = phi i32 [ %rc.0, %cleanup ], [ 0, %for.end.cleanup34_crit_edge ], [ 0, %if.then31 ], [ 0, %if.then27.cleanup34_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_pcm_msg_pending_num(ptr noundef %vss) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %msg_count = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 18
  %0 = ptrtoint ptr %msg_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_count, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_pcm_tx_notify_cb(ptr nocapture noundef readonly %vqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vqueue, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.virtio_snd, ptr %3, i32 0, i32 1, i32 2
  tail call fastcc void @virtsnd_pcm_notify_cb(ptr noundef %arrayidx.i)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtsnd_pcm_notify_cb(ptr noundef %queue) unnamed_addr #5 align 64 {
entry:
  %written_bytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written_bytes) #7
  %0 = ptrtoint ptr %written_bytes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %written_bytes, align 4, !annotation !22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue) #7
  %vqueue = getelementptr inbounds %struct.virtio_snd_queue, ptr %queue, i32 0, i32 1
  br label %do.body5

do.body5:                                         ; preds = %do.cond12.do.body5_crit_edge, %entry
  %1 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vqueue, align 4
  call void @virtqueue_disable_cb(ptr noundef %2) #7
  %3 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vqueue, align 4
  %call724 = call ptr @virtqueue_get_buf(ptr noundef %4, ptr noundef nonnull %written_bytes) #7
  %tobool.not25 = icmp eq ptr %call724, null
  br i1 %tobool.not25, label %do.body5.while.end_crit_edge, label %do.body5.while.body_crit_edge

do.body5.while.body_crit_edge:                    ; preds = %do.body5
  br label %while.body

do.body5.while.end_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %virtsnd_pcm_msg_complete.exit.while.body_crit_edge, %do.body5.while.body_crit_edge
  %call726 = phi ptr [ %call7, %virtsnd_pcm_msg_complete.exit.while.body_crit_edge ], [ %call724, %do.body5.while.body_crit_edge ]
  %5 = ptrtoint ptr %written_bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %written_bytes, align 4
  %7 = ptrtoint ptr %call726 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call726, align 4
  %lock.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %direction.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp1.i = icmp ult i32 %6, 9
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %length.i = getelementptr inbounds %struct.virtio_pcm_msg, ptr %call726, i32 0, i32 3
  %hw_ptr.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %hw_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_ptr.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %6, -8
  %hw_ptr2.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 10
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.in.i = phi ptr [ %hw_ptr2.i, %if.else.i ], [ %length.i, %if.then.i ]
  %sub.sink.i = phi i32 [ %sub.i, %if.else.i ], [ %12, %if.then.i ]
  %hw_ptr2.sink.i = phi ptr [ %hw_ptr2.i, %if.else.i ], [ %hw_ptr.i, %if.then.i ]
  %13 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %add3.i = add i32 %.sink.i, %sub.sink.i
  %14 = ptrtoint ptr %hw_ptr2.sink.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add3.i, ptr %hw_ptr2.sink.i, align 4
  %hw_ptr4.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 10
  %15 = ptrtoint ptr %hw_ptr4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_ptr4.i, align 4
  %buffer_bytes.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 9
  %17 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp5.not.i = icmp ult i32 %16, %18
  br i1 %cmp5.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then6.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub9.i = sub i32 %16, %18
  %19 = ptrtoint ptr %hw_ptr4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub9.i, ptr %hw_ptr4.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end.i.if.end10.i_crit_edge
  %xfer_xrun.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 12
  %20 = ptrtoint ptr %xfer_xrun.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %xfer_xrun.i, align 1
  %msg_count.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 18
  %21 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_count.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %msg_count.i, align 8
  %xfer_enabled.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 11
  %23 = ptrtoint ptr %xfer_enabled.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %xfer_enabled.i, align 8, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.else16.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %substream12.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 5
  %25 = ptrtoint ptr %substream12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %substream12.i, align 4
  %runtime13.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %runtime13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime13.i, align 4
  %latency_bytes.i = getelementptr inbounds %struct.virtio_pcm_msg, ptr %call726, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %latency_bytes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %latency_bytes.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #7
  %mul.i.i = shl i32 %31, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 21
  %32 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %33
  %delay.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 9
  %34 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div.i.i, ptr %delay.i, align 4
  %elapsed_period.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %35 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %elapsed_period.i) #7
  %call15.i = call i32 @virtsnd_pcm_msg_send(ptr noundef %8) #7
  br label %virtsnd_pcm_msg_complete.exit

if.else16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool18.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.else16.i.virtsnd_pcm_msg_complete.exit_crit_edge

if.else16.i.virtsnd_pcm_msg_complete.exit_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtsnd_pcm_msg_complete.exit

if.then19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  %msg_empty.i = getelementptr inbounds %struct.virtio_pcm_substream, ptr %8, i32 0, i32 19
  call void @__wake_up(ptr noundef %msg_empty.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %virtsnd_pcm_msg_complete.exit

virtsnd_pcm_msg_complete.exit:                    ; preds = %if.then19.i, %if.else16.i.virtsnd_pcm_msg_complete.exit_crit_edge, %if.then11.i
  call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %36 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vqueue, align 4
  %call7 = call ptr @virtqueue_get_buf(ptr noundef %37, ptr noundef nonnull %written_bytes) #7
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %virtsnd_pcm_msg_complete.exit.while.end_crit_edge, label %virtsnd_pcm_msg_complete.exit.while.body_crit_edge

virtsnd_pcm_msg_complete.exit.while.body_crit_edge: ; preds = %virtsnd_pcm_msg_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

virtsnd_pcm_msg_complete.exit.while.end_crit_edge: ; preds = %virtsnd_pcm_msg_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %virtsnd_pcm_msg_complete.exit.while.end_crit_edge, %do.body5.while.end_crit_edge
  %38 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vqueue, align 4
  %call9 = call zeroext i1 @virtqueue_is_broken(ptr noundef %39) #7
  br i1 %call9, label %while.end.do.end17_crit_edge, label %do.cond12, !prof !17

while.end.do.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.cond12:                                        ; preds = %while.end
  %40 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vqueue, align 4
  %call14 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %41) #7
  br i1 %call14, label %do.cond12.do.end17_crit_edge, label %do.cond12.do.body5_crit_edge

do.cond12.do.body5_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.cond12.do.end17_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end17:                                         ; preds = %do.cond12.do.end17_crit_edge, %while.end.do.end17_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue, i32 noundef %call2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written_bytes) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_pcm_rx_notify_cb(ptr nocapture noundef readonly %vqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vqueue, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.virtio_snd, ptr %3, i32 0, i32 1, i32 3
  tail call fastcc void @virtsnd_pcm_notify_cb(ptr noundef %arrayidx.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtsnd_pcm_ctl_msg_alloc(ptr nocapture noundef readonly %vss, i32 noundef %command, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %command)
  %cond = icmp eq i32 %command, 257
  %spec.select = select i1 %cond, i32 24, i32 8
  %call = tail call ptr @virtsnd_ctl_msg_alloc(i32 noundef %spec.select, i32 noundef 4, i32 noundef %gfp) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @virtsnd_ctl_msg_request(ptr noundef nonnull %call) #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %command)
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %call1, align 4
  %sid = getelementptr inbounds %struct.virtio_pcm_substream, ptr %vss, i32 0, i32 2
  %2 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sid, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %stream_id = getelementptr inbounds %struct.virtio_snd_pcm_hdr, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %stream_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %stream_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtsnd_ctl_msg_alloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtsnd_ctl_msg_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/virtio/virtio_pcm_msg.c", i32 234, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @virtsnd_pcm_msg_send._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @virtsnd_pcm_msg_send._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2153997090, i64 2153997582, i64 2153997127, i64 2153997183, i64 2153997217, i64 2153997241, i64 2153997282, i64 2153997303, i64 2153997331, i64 2153997365}
!20 = !{i64 2153993532, i64 2153994024, i64 2153993569, i64 2153993625, i64 2153993659, i64 2153993683, i64 2153993724, i64 2153993745, i64 2153993773, i64 2153993807}
!21 = !{i64 2153995142, i64 2153995634, i64 2153995179, i64 2153995235, i64 2153995269, i64 2153995293, i64 2153995334, i64 2153995355, i64 2153995383, i64 2153995417}
!22 = !{!"auto-init"}
!23 = !{i8 0, i8 2}
