; ModuleID = '/llk/IR_all_yes/sound/pci/trident/trident_memory.c_pt.bc'
source_filename = "../sound/pci/trident/trident_memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_trident = type { i32, i32, i8, i32, i32, i32, i32, %struct.snd_trident_tlb, i8, i8, i32, i32, ptr, i32, [2 x i32], i32, i32, i8, %struct.snd_4dwave, %struct.spinlock, %struct.spinlock, %struct.snd_dma_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [32 x %struct.snd_trident_pcm_mixer], ptr, ptr, ptr, ptr, %struct.spinlock, ptr }
%struct.snd_trident_tlb = type { ptr, i32, ptr, ptr, ptr }
%struct.snd_4dwave = type { i32, [4 x %struct.snd_trident_port], [64 x %struct.snd_trident_voice], i32, i32, i32 }
%struct.snd_trident_port = type { ptr, ptr, i32, i32, i32, i8 }
%struct.snd_trident_voice = type { i32, i8, i32, i8, i8, i8, ptr, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.snd_trident_pcm_mixer = type { ptr, i16, i8, i8, i8, i8 }
%struct.snd_util_memhdr = type { i32, %struct.list_head, i32, i32, i32, %struct.mutex }
%struct.snd_util_memblk = type { i32, i32, %struct.list_head }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/pci/trident/trident_memory.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013max memory size is 1GB!!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013page is not aligned\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 248, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 143, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [38 x i8] c"../sound/pci/trident/trident_memory.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 147, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_trident_alloc_pages(ptr noundef readonly %trident, ptr noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %trident, null
  %tobool1.not = icmp eq ptr %substream, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 248, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end24:                                         ; preds = %entry
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8
  %0 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_bytes.i, align 4
  %6 = add i32 %5, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %6)
  %7 = icmp ult i32 %6, -16777216
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end24
  br i1 %7, label %do.end.i, label %if.end24.i, !prof !15

do.end.i:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end24.i:                                       ; preds = %if.then25
  %tlb.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7
  %memhdr.i = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %memhdr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memhdr.i, align 4
  %tobool26.not.i = icmp eq ptr %9, null
  br i1 %tobool26.not.i, label %do.end44.i, label %if.end60.i, !prof !15

do.end44.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 170, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end60.i:                                       ; preds = %if.end24.i
  %block_mutex.i = getelementptr inbounds %struct.snd_util_memhdr, ptr %9, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %block_mutex.i, i32 noundef 0) #3
  %10 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_bytes.i, align 4
  %sub.i.i = add i32 %11, 4095
  %shr.i.i = lshr i32 %sub.i.i, 12
  %block.i.i = getelementptr inbounds %struct.snd_util_memhdr, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %p.052.i.i = load ptr, ptr %block.i.i, align 4
  %cmp.i.not53.i.i = icmp eq ptr %p.052.i.i, %block.i.i
  br i1 %cmp.i.not53.i.i, label %if.end60.i.for.end.i.i_crit_edge, label %if.end60.i.for.body.i.i_crit_edge

if.end60.i.for.body.i.i_crit_edge:                ; preds = %if.end60.i
  br label %for.body.i.i

if.end60.i.for.end.i.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end60.i.for.body.i.i_crit_edge
  %p.055.i.i = phi ptr [ %p.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %p.052.i.i, %if.end60.i.for.body.i.i_crit_edge ]
  %page.054.i.i = phi i32 [ %add7.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end60.i.for.body.i.i_crit_edge ]
  %add2.i.i = add nsw i32 %page.054.i.i, %shr.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %p.055.i.i, i32 8
  %13 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr3.i.i, align 2
  %conv.i.i = sext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp sgt i32 %add2.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.i.__found_pages.i.i_crit_edge

for.body.i.i.__found_pages.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__found_pages.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %last_page.i.i = getelementptr i8, ptr %p.055.i.i, i32 10
  %15 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %last_page.i.i, align 2
  %conv6.i.i = sext i16 %16 to i32
  %add7.i.i = add nsw i32 %conv6.i.i, 1
  %17 = ptrtoint ptr %p.055.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.0.i.i = load ptr, ptr %p.055.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %p.0.i.i, %block.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i.for.end.i.i_crit_edge, %if.end60.i.for.end.i.i_crit_edge
  %page.0.lcssa.i.i = phi i32 [ 0, %if.end60.i.for.end.i.i_crit_edge ], [ %add7.i.i, %if.end.i.i.for.end.i.i_crit_edge ]
  %add9.i.i = add nsw i32 %page.0.lcssa.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add9.i.i)
  %cmp10.i.i = icmp sgt i32 %add9.i.i, 4096
  br i1 %cmp10.i.i, label %for.end.i.i.if.then63.i_crit_edge, label %for.end.i.i.__found_pages.i.i_crit_edge

for.end.i.i.__found_pages.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__found_pages.i.i

for.end.i.i.if.then63.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then63.i

__found_pages.i.i:                                ; preds = %for.end.i.i.__found_pages.i.i_crit_edge, %for.body.i.i.__found_pages.i.i_crit_edge
  %page.051.i.i = phi i32 [ %page.0.lcssa.i.i, %for.end.i.i.__found_pages.i.i_crit_edge ], [ %page.054.i.i, %for.body.i.i.__found_pages.i.i_crit_edge ]
  %p.049.i.i = phi ptr [ %block.i.i, %for.end.i.i.__found_pages.i.i_crit_edge ], [ %p.055.i.i, %for.body.i.i.__found_pages.i.i_crit_edge ]
  %mul.i.i = and i32 %sub.i.i, -4096
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.049.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call14.i.i = tail call ptr @__snd_util_memblk_new(ptr noundef nonnull %9, i32 noundef %mul.i.i, ptr noundef %19) #3
  %cmp15.i.i = icmp eq ptr %call14.i.i, null
  br i1 %cmp15.i.i, label %__found_pages.i.i.if.then63.i_crit_edge, label %if.end65.i

__found_pages.i.i.if.then63.i_crit_edge:          ; preds = %__found_pages.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then63.i

if.then63.i:                                      ; preds = %__found_pages.i.i.if.then63.i_crit_edge, %for.end.i.i.if.then63.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex.i) #3
  br label %return

if.end65.i:                                       ; preds = %__found_pages.i.i
  %shl.i.i = shl nsw i32 %page.051.i.i, 12
  %offset.i.i = getelementptr inbounds %struct.snd_util_memblk, ptr %call14.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl.i.i, ptr %offset.i.i, align 4
  %conv19.i.i = trunc i32 %page.051.i.i to i16
  %add.ptr20.i.i = getelementptr i8, ptr %call14.i.i, i32 16
  %21 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv19.i.i, ptr %add.ptr20.i.i, align 2
  %add22.i.i = add nsw i32 %page.051.i.i, %shr.i.i
  %22 = trunc i32 %add22.i.i to i16
  %conv24.i.i = add i16 %22, -1
  %last_page26.i.i = getelementptr i8, ptr %call14.i.i, i32 18
  %23 = ptrtoint ptr %last_page26.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv24.i.i, ptr %last_page26.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv24.i.i, i16 %conv19.i.i)
  %cmp68.not114.i = icmp slt i16 %conv24.i.i, %conv19.i.i
  br i1 %cmp68.not114.i, label %if.end65.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end65.i.for.end.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end65.i
  %sext.i = shl i32 %page.051.i.i, 16
  %conv.i = ashr exact i32 %sext.i, 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end75.i.for.body.i_crit_edge, %for.body.preheader.i
  %page.0116.i = phi i32 [ %inc.i, %if.end75.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %idx.0115.i = phi i32 [ %inc78.i, %if.end75.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %shl.i = shl i32 %idx.0115.i, 12
  %24 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime1.i, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_buffer_p.i.i, align 8
  %call.i.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %27, i32 noundef %shl.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 1073741824
  br i1 %tobool.not.i.i, label %if.end.i105.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #3
  br label %if.then73.i

if.end.i105.i:                                    ; preds = %for.body.i
  %and1.i.i = and i32 %call.i.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end75.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.2) #3
  br label %if.then73.i

if.then73.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  tail call void @__snd_util_mem_free(ptr noundef nonnull %9, ptr noundef nonnull %call14.i.i) #3
  tail call void @mutex_unlock(ptr noundef %block_mutex.i) #3
  br label %return

if.end75.i:                                       ; preds = %if.end.i105.i
  %and.i = and i32 %call.i.i, -4096
  %28 = tail call i32 @llvm.bswap.i32(i32 %and.i) #3
  %29 = ptrtoint ptr %tlb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tlb.i, align 4
  %arrayidx.i = getelementptr i32, ptr %30, i32 %page.0116.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %arrayidx.i, align 4
  %inc.i = add nsw i32 %page.0116.i, 1
  %inc78.i = add nuw nsw i32 %idx.0115.i, 1
  %32 = ptrtoint ptr %last_page26.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %last_page26.i.i, align 2
  %conv67.i = sext i16 %33 to i32
  %cmp68.not.not.i = icmp slt i32 %page.0116.i, %conv67.i
  br i1 %cmp68.not.not.i, label %if.end75.i.for.body.i_crit_edge, label %if.end75.i.for.end.i_crit_edge

if.end75.i.for.end.i_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.end75.i.for.body.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %if.end75.i.for.end.i_crit_edge, %if.end65.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex.i) #3
  br label %return

if.else:                                          ; preds = %if.end24
  br i1 %7, label %do.end.i35, label %if.end24.i39, !prof !15

do.end.i35:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end24.i39:                                     ; preds = %if.else
  %tlb.i36 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7
  %memhdr.i37 = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7, i32 3
  %34 = ptrtoint ptr %memhdr.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memhdr.i37, align 4
  %tobool26.not.i38 = icmp eq ptr %35, null
  br i1 %tobool26.not.i38, label %do.end44.i40, label %if.end60.i47, !prof !15

do.end44.i40:                                     ; preds = %if.end24.i39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end60.i47:                                     ; preds = %if.end24.i39
  %block_mutex.i41 = getelementptr inbounds %struct.snd_util_memhdr, ptr %35, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %block_mutex.i41, i32 noundef 0) #3
  %36 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_bytes.i, align 4
  %sub.i.i42 = add i32 %37, 4095
  %shr.i.i43 = lshr i32 %sub.i.i42, 12
  %block.i.i44 = getelementptr inbounds %struct.snd_util_memhdr, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %block.i.i44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %p.052.i.i45 = load ptr, ptr %block.i.i44, align 4
  %cmp.i.not53.i.i46 = icmp eq ptr %p.052.i.i45, %block.i.i44
  br i1 %cmp.i.not53.i.i46, label %if.end60.i47.for.end.i.i64_crit_edge, label %if.end60.i47.for.body.i.i54_crit_edge

if.end60.i47.for.body.i.i54_crit_edge:            ; preds = %if.end60.i47
  br label %for.body.i.i54

if.end60.i47.for.end.i.i64_crit_edge:             ; preds = %if.end60.i47
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i64

for.body.i.i54:                                   ; preds = %if.end.i.i60.for.body.i.i54_crit_edge, %if.end60.i47.for.body.i.i54_crit_edge
  %p.055.i.i48 = phi ptr [ %p.0.i.i58, %if.end.i.i60.for.body.i.i54_crit_edge ], [ %p.052.i.i45, %if.end60.i47.for.body.i.i54_crit_edge ]
  %page.054.i.i49 = phi i32 [ %add7.i.i57, %if.end.i.i60.for.body.i.i54_crit_edge ], [ 0, %if.end60.i47.for.body.i.i54_crit_edge ]
  %add2.i.i50 = add nsw i32 %page.054.i.i49, %shr.i.i43
  %add.ptr3.i.i51 = getelementptr i8, ptr %p.055.i.i48, i32 8
  %39 = ptrtoint ptr %add.ptr3.i.i51 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr3.i.i51, align 2
  %conv.i.i52 = sext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i50, i32 %conv.i.i52)
  %cmp.not.i.i53 = icmp sgt i32 %add2.i.i50, %conv.i.i52
  br i1 %cmp.not.i.i53, label %if.end.i.i60, label %for.body.i.i54.__found_pages.i.i71_crit_edge

for.body.i.i54.__found_pages.i.i71_crit_edge:     ; preds = %for.body.i.i54
  call void @__sanitizer_cov_trace_pc() #5
  br label %__found_pages.i.i71

if.end.i.i60:                                     ; preds = %for.body.i.i54
  %last_page.i.i55 = getelementptr i8, ptr %p.055.i.i48, i32 10
  %41 = ptrtoint ptr %last_page.i.i55 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %last_page.i.i55, align 2
  %conv6.i.i56 = sext i16 %42 to i32
  %add7.i.i57 = add nsw i32 %conv6.i.i56, 1
  %43 = ptrtoint ptr %p.055.i.i48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %p.0.i.i58 = load ptr, ptr %p.055.i.i48, align 4
  %cmp.i.not.i.i59 = icmp eq ptr %p.0.i.i58, %block.i.i44
  br i1 %cmp.i.not.i.i59, label %if.end.i.i60.for.end.i.i64_crit_edge, label %if.end.i.i60.for.body.i.i54_crit_edge

if.end.i.i60.for.body.i.i54_crit_edge:            ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i54

if.end.i.i60.for.end.i.i64_crit_edge:             ; preds = %if.end.i.i60
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i64

for.end.i.i64:                                    ; preds = %if.end.i.i60.for.end.i.i64_crit_edge, %if.end60.i47.for.end.i.i64_crit_edge
  %page.0.lcssa.i.i61 = phi i32 [ 0, %if.end60.i47.for.end.i.i64_crit_edge ], [ %add7.i.i57, %if.end.i.i60.for.end.i.i64_crit_edge ]
  %add9.i.i62 = add nsw i32 %page.0.lcssa.i.i61, %shr.i.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add9.i.i62)
  %cmp10.i.i63 = icmp sgt i32 %add9.i.i62, 4096
  br i1 %cmp10.i.i63, label %for.end.i.i64.if.then63.i72_crit_edge, label %for.end.i.i64.__found_pages.i.i71_crit_edge

for.end.i.i64.__found_pages.i.i71_crit_edge:      ; preds = %for.end.i.i64
  call void @__sanitizer_cov_trace_pc() #5
  br label %__found_pages.i.i71

for.end.i.i64.if.then63.i72_crit_edge:            ; preds = %for.end.i.i64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then63.i72

__found_pages.i.i71:                              ; preds = %for.end.i.i64.__found_pages.i.i71_crit_edge, %for.body.i.i54.__found_pages.i.i71_crit_edge
  %page.051.i.i65 = phi i32 [ %page.0.lcssa.i.i61, %for.end.i.i64.__found_pages.i.i71_crit_edge ], [ %page.054.i.i49, %for.body.i.i54.__found_pages.i.i71_crit_edge ]
  %p.049.i.i66 = phi ptr [ %block.i.i44, %for.end.i.i64.__found_pages.i.i71_crit_edge ], [ %p.055.i.i48, %for.body.i.i54.__found_pages.i.i71_crit_edge ]
  %mul.i.i67 = and i32 %sub.i.i42, -4096
  %prev.i.i68 = getelementptr inbounds %struct.list_head, ptr %p.049.i.i66, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i68, align 4
  %call14.i.i69 = tail call ptr @__snd_util_memblk_new(ptr noundef nonnull %35, i32 noundef %mul.i.i67, ptr noundef %45) #3
  %cmp15.i.i70 = icmp eq ptr %call14.i.i69, null
  br i1 %cmp15.i.i70, label %__found_pages.i.i71.if.then63.i72_crit_edge, label %if.end65.i80

__found_pages.i.i71.if.then63.i72_crit_edge:      ; preds = %__found_pages.i.i71
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then63.i72

if.then63.i72:                                    ; preds = %__found_pages.i.i71.if.then63.i72_crit_edge, %for.end.i.i64.if.then63.i72_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex.i41) #3
  br label %return

if.end65.i80:                                     ; preds = %__found_pages.i.i71
  %shl.i.i73 = shl nsw i32 %page.051.i.i65, 12
  %offset.i.i74 = getelementptr inbounds %struct.snd_util_memblk, ptr %call14.i.i69, i32 0, i32 1
  %46 = ptrtoint ptr %offset.i.i74 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl.i.i73, ptr %offset.i.i74, align 4
  %conv19.i.i75 = trunc i32 %page.051.i.i65 to i16
  %add.ptr20.i.i76 = getelementptr i8, ptr %call14.i.i69, i32 16
  %47 = ptrtoint ptr %add.ptr20.i.i76 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv19.i.i75, ptr %add.ptr20.i.i76, align 2
  %add22.i.i77 = add nsw i32 %page.051.i.i65, %shr.i.i43
  %48 = trunc i32 %add22.i.i77 to i16
  %conv24.i.i78 = add i16 %48, -1
  %last_page26.i.i79 = getelementptr i8, ptr %call14.i.i69, i32 18
  %49 = ptrtoint ptr %last_page26.i.i79 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv24.i.i78, ptr %last_page26.i.i79, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv24.i.i78, i16 %conv19.i.i75)
  %cmp68.not110.i = icmp slt i16 %conv24.i.i78, %conv19.i.i75
  br i1 %cmp68.not110.i, label %if.end65.i80.for.end.i94_crit_edge, label %for.body.preheader.i84

if.end65.i80.for.end.i94_crit_edge:               ; preds = %if.end65.i80
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i94

for.body.preheader.i84:                           ; preds = %if.end65.i80
  %sext.i81 = shl i32 %page.051.i.i65, 16
  %conv.i82 = ashr exact i32 %sext.i81, 16
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %50 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_addr.i, align 8
  %52 = and i32 %51, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.not.i.i83 = icmp eq i32 %52, 0
  br label %for.body.i86

for.body.i86:                                     ; preds = %if.end74.i.for.body.i86_crit_edge, %for.body.preheader.i84
  %addr.0112.i = phi i32 [ %add.i, %if.end74.i.for.body.i86_crit_edge ], [ %51, %for.body.preheader.i84 ]
  %page.0111.i = phi i32 [ %inc.i91, %if.end74.i.for.body.i86_crit_edge ], [ %conv.i82, %for.body.preheader.i84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %addr.0112.i)
  %tobool.not.i.i85 = icmp ult i32 %addr.0112.i, 1073741824
  br i1 %tobool.not.i.i85, label %if.end.i101.i, label %if.then.i.i87

if.then.i.i87:                                    ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.1) #3
  br label %if.then72.i

if.end.i101.i:                                    ; preds = %for.body.i86
  br i1 %tobool2.not.i.i83, label %if.end74.i, label %if.then3.i.i88

if.then3.i.i88:                                   ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.2) #3
  br label %if.then72.i

if.then72.i:                                      ; preds = %if.then3.i.i88, %if.then.i.i87
  tail call void @__snd_util_mem_free(ptr noundef nonnull %35, ptr noundef nonnull %call14.i.i69) #3
  tail call void @mutex_unlock(ptr noundef %block_mutex.i41) #3
  br label %return

if.end74.i:                                       ; preds = %if.end.i101.i
  %and.i89 = and i32 %addr.0112.i, -4096
  %53 = tail call i32 @llvm.bswap.i32(i32 %and.i89) #3
  %54 = ptrtoint ptr %tlb.i36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tlb.i36, align 4
  %arrayidx.i90 = getelementptr i32, ptr %55, i32 %page.0111.i
  %56 = ptrtoint ptr %arrayidx.i90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %arrayidx.i90, align 4
  %inc.i91 = add nsw i32 %page.0111.i, 1
  %add.i = add nuw nsw i32 %addr.0112.i, 4096
  %57 = ptrtoint ptr %last_page26.i.i79 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %last_page26.i.i79, align 2
  %conv67.i92 = sext i16 %58 to i32
  %cmp68.not.not.i93 = icmp slt i32 %page.0111.i, %conv67.i92
  br i1 %cmp68.not.not.i93, label %if.end74.i.for.body.i86_crit_edge, label %if.end74.i.for.end.i94_crit_edge

if.end74.i.for.end.i94_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i94

if.end74.i.for.body.i86_crit_edge:                ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i86

for.end.i94:                                      ; preds = %if.end74.i.for.end.i94_crit_edge, %if.end65.i80.for.end.i94_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex.i41) #3
  br label %return

return:                                           ; preds = %for.end.i94, %if.then72.i, %if.then63.i72, %do.end44.i40, %do.end.i35, %for.end.i, %if.then73.i, %if.then63.i, %do.end44.i, %do.end.i, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end.i ], [ null, %do.end44.i ], [ null, %if.then63.i ], [ %call14.i.i, %for.end.i ], [ null, %if.then73.i ], [ null, %do.end.i35 ], [ null, %do.end44.i40 ], [ null, %if.then63.i72 ], [ null, %if.then72.i ], [ %call14.i.i69, %for.end.i94 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_trident_free_pages(ptr noundef readonly %trident, ptr noundef %blk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %trident, null
  %tobool1.not = icmp eq ptr %blk, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %tlb = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7
  %memhdr = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memhdr, align 4
  %block_mutex = getelementptr inbounds %struct.snd_util_memhdr, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %block_mutex, i32 noundef 0) #3
  %add.ptr = getelementptr i8, ptr %blk, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr, align 2
  %last_page = getelementptr i8, ptr %blk, i32 18
  %4 = ptrtoint ptr %last_page to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %last_page, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not44 = icmp sgt i16 %3, %5
  br i1 %cmp.not44, label %if.end24.for.end_crit_edge, label %for.body.lr.ph

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end24
  %conv = sext i16 %3 to i32
  %silent_page = getelementptr inbounds %struct.snd_trident, ptr %trident, i32 0, i32 7, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %page.045 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %silent_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %silent_page, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %and = and i32 %9, -4096
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %tlb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tlb, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %page.045
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %arrayidx, align 4
  %inc = add nsw i32 %page.045, 1
  %14 = ptrtoint ptr %last_page to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %last_page, align 2
  %conv26 = sext i16 %15 to i32
  %cmp.not.not = icmp slt i32 %page.045, %conv26
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end24.for.end_crit_edge
  tail call void @__snd_util_mem_free(ptr noundef %1, ptr noundef %blk) #3
  tail call void @mutex_unlock(ptr noundef %block_mutex) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_util_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__snd_util_memblk_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/trident/trident_memory.c", i32 248, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/trident/trident_memory.c", i32 143, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/trident/trident_memory.c", i32 147, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
