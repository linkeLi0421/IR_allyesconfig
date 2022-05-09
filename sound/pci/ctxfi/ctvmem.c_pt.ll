; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctvmem.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctvmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ct_vm = type { [4 x %struct.snd_dma_buffer], i32, %struct.list_head, %struct.list_head, %struct.mutex, ptr, ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.ct_vm_block = type { i32, i32, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.ct_atc = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, [5 x ptr] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@ct_vm_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&vm->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ct_vm_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"No virtual memory block that is big enough to allocate!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ct_vm_map\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/ctxfi/ctvmem.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ct_vm_map._entry_ptr = internal global ptr @ct_vm_map._entry, section ".printk_index", align 4
@get_vm_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 38, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Fail! No sufficient device virtual memory space available!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_vm_block\00", [19 x i8] zeroinitializer }, align 32
@get_vm_block._entry_ptr = internal global ptr @get_vm_block._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 181, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 134, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [28 x i8] c"../sound/pci/ctxfi/ctvmem.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 37, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @ct_vm_map._entry, ptr @ct_vm_map._entry_ptr, ptr @get_vm_block._entry, ptr @get_vm_block._entry_ptr, ptr @ct_vm_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_vm_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_vm_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vm_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ct_vm_create(ptr nocapture noundef writeonly %rvm, ptr noundef %pci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rvm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rvm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 252) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ct_vm_create.__key) #5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %do.body.if.then6_crit_edge, label %for.inc

do.body.if.then6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

for.inc:                                          ; preds = %do.body
  %arrayidx.1 = getelementptr [4 x %struct.snd_dma_buffer], ptr %call7.i.i, i32 0, i32 1
  %call.i.1 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %arrayidx.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp2.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp2.1, label %for.inc.if.then6_crit_edge, label %for.inc.1

for.inc.if.then6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr [4 x %struct.snd_dma_buffer], ptr %call7.i.i, i32 0, i32 2
  %call.i.2 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %arrayidx.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp2.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp2.2, label %for.inc.1.if.then6_crit_edge, label %for.inc.2

for.inc.1.if.then6_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr [4 x %struct.snd_dma_buffer], ptr %call7.i.i, i32 0, i32 3
  %call.i.3 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %arrayidx.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp2.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp2.3, label %for.inc.2.if.then6_crit_edge, label %for.inc.3

for.inc.2.if.then6_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

for.inc.3:                                        ; preds = %for.inc.2
  %size = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %size, align 8
  %map = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ct_vm_map, ptr %map, align 8
  %unmap = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %unmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ct_vm_unmap, ptr %unmap, align 4
  %get_ptp_phys = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %get_ptp_phys to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ct_get_ptp_phys, ptr %get_ptp_phys, align 8
  %unused = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %unused, ptr %unused, align 4
  %prev.i = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %unused, ptr %prev.i, align 8
  %used = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %used, ptr %used, align 4
  %prev.i38 = getelementptr inbounds %struct.ct_vm, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %used, ptr %prev.i38, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 16) #8
  %cmp9.not = icmp eq ptr %call7.i.i39, null
  br i1 %cmp9.not, label %for.inc.3.if.end14_crit_edge, label %if.then10

for.inc.3.if.end14_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then6:                                         ; preds = %for.inc.2.if.then6_crit_edge, %for.inc.1.if.then6_crit_edge, %for.inc.if.then6_crit_edge, %do.body.if.then6_crit_edge
  tail call void @ct_vm_destroy(ptr noundef nonnull %call7.i.i)
  br label %cleanup

if.then10:                                        ; preds = %for.inc.3
  %11 = ptrtoint ptr %call7.i.i39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call7.i.i39, align 8
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  %size12 = getelementptr inbounds %struct.ct_vm_block, ptr %call7.i.i39, i32 0, i32 1
  %14 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size12, align 4
  %list = getelementptr inbounds %struct.ct_vm_block, ptr %call7.i.i39, i32 0, i32 2
  %15 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unused, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %unused, ptr noundef %16) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ct_vm_block, ptr %call7.i.i39, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %unused, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %unused, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end.i.i, %if.then10.if.end14_crit_edge, %for.inc.3.if.end14_crit_edge
  %21 = ptrtoint ptr %rvm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %rvm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ct_vm_destroy(ptr noundef %vm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 3
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %used, align 4
  %cmp.i.not34 = icmp eq ptr %1, %used
  br i1 %cmp.i.not34, label %entry.while.cond3.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %list_del.exit.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %unused = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 2
  %2 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %unused, align 4
  %cmp.i26.not35 = icmp eq ptr %3, %unused
  br i1 %cmp.i26.not35, label %while.cond3.preheader.for.cond.preheader_crit_edge, label %while.cond3.preheader.while.body7_crit_edge

while.cond3.preheader.while.body7_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body7

while.cond3.preheader.for.cond.preheader_crit_edge: ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %14, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #5
  %13 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %used, align 4
  %cmp.i.not = icmp eq ptr %14, %used
  br i1 %cmp.i.not, label %list_del.exit.while.cond3.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.cond3.preheader_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond3.preheader

for.cond.preheader:                               ; preds = %list_del.exit33.for.cond.preheader_crit_edge, %while.cond3.preheader.for.cond.preheader_crit_edge
  tail call void @snd_dma_free_pages(ptr noundef %vm) #5
  %arrayidx.1 = getelementptr [4 x %struct.snd_dma_buffer], ptr %vm, i32 0, i32 1
  tail call void @snd_dma_free_pages(ptr noundef %arrayidx.1) #5
  %arrayidx.2 = getelementptr [4 x %struct.snd_dma_buffer], ptr %vm, i32 0, i32 2
  tail call void @snd_dma_free_pages(ptr noundef %arrayidx.2) #5
  %arrayidx.3 = getelementptr [4 x %struct.snd_dma_buffer], ptr %vm, i32 0, i32 3
  tail call void @snd_dma_free_pages(ptr noundef %arrayidx.3) #5
  %size = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %size, align 4
  tail call void @kfree(ptr noundef %vm) #5
  ret void

while.body7:                                      ; preds = %list_del.exit33.while.body7_crit_edge, %while.cond3.preheader.while.body7_crit_edge
  %16 = phi ptr [ %26, %list_del.exit33.while.body7_crit_edge ], [ %3, %while.cond3.preheader.while.body7_crit_edge ]
  %call.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #5
  br i1 %call.i.i28, label %if.end.i.i31, label %while.body7.list_del.exit33_crit_edge

while.body7.list_del.exit33_crit_edge:            ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit33

if.end.i.i31:                                     ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i29 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i29, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i30, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit33

list_del.exit33:                                  ; preds = %if.end.i.i31, %while.body7.list_del.exit33_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i32 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i32, align 4
  %add.ptr12 = getelementptr i8, ptr %16, i32 -8
  tail call void @kfree(ptr noundef %add.ptr12) #5
  %25 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %unused, align 4
  %cmp.i26.not = icmp eq ptr %26, %unused
  br i1 %cmp.i26.not, label %list_del.exit33.for.cond.preheader_crit_edge, label %list_del.exit33.while.body7_crit_edge

list_del.exit33.while.body7_crit_edge:            ; preds = %list_del.exit33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body7

list_del.exit33.for.cond.preheader_crit_edge:     ; preds = %list_del.exit33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ct_vm_map(ptr noundef %vm, ptr nocapture noundef readonly %substream, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.i = add i32 %size, 4095
  %and.i = and i32 %add.i, -4096
  %size2.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 1
  %2 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp.i = icmp ugt i32 %and.i, %3
  br i1 %cmp.i, label %get_vm_block.exit.thread, label %if.end.i

get_vm_block.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %card.i = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %unused.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 2
  %8 = ptrtoint ptr %unused.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pos.068.i = load ptr, ptr %unused.i, align 4
  %cmp.i69.i = icmp eq ptr %pos.068.i, %unused.i
  br i1 %cmp.i69.i, label %if.end.i.get_vm_block.exit.thread27_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.get_vm_block.exit.thread27_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_vm_block.exit.thread27

for.cond.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %pos.070.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pos.0.i = load ptr, ptr %pos.070.i, align 4
  %cmp.i.i = icmp eq ptr %pos.0.i, %unused.i
  br i1 %cmp.i.i, label %for.cond.i.get_vm_block.exit.thread27_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.get_vm_block.exit.thread27_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_vm_block.exit.thread27

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %pos.070.i = phi ptr [ %pos.0.i, %for.cond.i.for.body.i_crit_edge ], [ %pos.068.i, %if.end.i.for.body.i_crit_edge ]
  %size4.i = getelementptr i8, ptr %pos.070.i, i32 -4
  %10 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and.i)
  %cmp5.not.i = icmp ult i32 %11, %and.i
  br i1 %cmp5.not.i, label %for.cond.i, label %if.end12.i

if.end12.i:                                       ; preds = %for.body.i
  %size4.i.le = getelementptr i8, ptr %pos.070.i, i32 -4
  %add.ptr.le.i = getelementptr i8, ptr %pos.070.i, i32 -8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and.i)
  %cmp14.i = icmp eq i32 %11, %and.i
  br i1 %cmp14.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  %used.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.070.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.i.__list_del_entry.exit.i.i_crit_edge

if.then15.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %pos.070.i, i32 4
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %pos.070.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pos.070.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then15.i.__list_del_entry.exit.i.i_crit_edge
  %18 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %used.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pos.070.i, ptr noundef %used.i, ptr noundef %19) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.get_vm_block.exit_crit_edge

__list_del_entry.exit.i.i.get_vm_block.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_vm_block.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pos.070.i, ptr %prev1.i.i2.i.i, align 4
  %21 = ptrtoint ptr %pos.070.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %pos.070.i, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %pos.070.i, i32 4
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %used.i, ptr %prev3.i.i.i.i, align 4
  %23 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %pos.070.i, ptr %used.i, align 4
  br label %get_vm_block.exit

if.end17.i:                                       ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 16) #8
  %tobool19.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool19.not.i, label %if.end17.i.get_vm_block.exit.thread27_crit_edge, label %if.end21.i

if.end17.i.get_vm_block.exit.thread27_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_vm_block.exit.thread27

if.end21.i:                                       ; preds = %if.end17.i
  %25 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.le.i, align 4
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call7.i.i.i, align 8
  %size23.i = getelementptr inbounds %struct.ct_vm_block, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %size23.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i, ptr %size23.i, align 4
  %list24.i = getelementptr inbounds %struct.ct_vm_block, ptr %call7.i.i.i, i32 0, i32 2
  %used25.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 3
  %29 = ptrtoint ptr %used25.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %used25.i, align 4
  %call.i.i66.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list24.i, ptr noundef %used25.i, ptr noundef %30) #5
  br i1 %call.i.i66.i, label %if.end.i.i67.i, label %if.end21.i.list_add.exit.i_crit_edge

if.end21.i.list_add.exit.i_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i67.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list24.i, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %list24.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %list24.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ct_vm_block, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %used25.i, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %used25.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list24.i, ptr %used25.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i67.i, %if.end21.i.list_add.exit.i_crit_edge
  %35 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.le.i, align 4
  %add27.i = add i32 %36, %and.i
  store i32 %add27.i, ptr %add.ptr.le.i, align 4
  %37 = ptrtoint ptr %size4.i.le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size4.i.le, align 4
  %sub29.i = sub i32 %38, %and.i
  store i32 %sub29.i, ptr %size4.i.le, align 4
  br label %get_vm_block.exit

get_vm_block.exit.thread27:                       ; preds = %if.end17.i.get_vm_block.exit.thread27_crit_edge, %for.cond.i.get_vm_block.exit.thread27_crit_edge, %if.end.i.get_vm_block.exit.thread27_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  br label %do.end

get_vm_block.exit:                                ; preds = %list_add.exit.i, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.get_vm_block.exit_crit_edge
  %block.0.ph.i = phi ptr [ %call7.i.i.i, %list_add.exit.i ], [ %add.ptr.le.i, %__list_del_entry.exit.i.i.get_vm_block.exit_crit_edge ], [ %add.ptr.le.i, %if.end.i.i.i.i ]
  %39 = ptrtoint ptr %size2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size2.i, align 4
  %sub31.i = sub i32 %40, %and.i
  store i32 %sub31.i, ptr %size2.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  %cmp = icmp eq ptr %block.0.ph.i, null
  br i1 %cmp, label %get_vm_block.exit.do.end_crit_edge, label %if.end

get_vm_block.exit.do.end_crit_edge:               ; preds = %get_vm_block.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %get_vm_block.exit.do.end_crit_edge, %get_vm_block.exit.thread27, %get_vm_block.exit.thread
  %card = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %get_vm_block.exit
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %vm, i32 0, i32 1
  %45 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %area, align 4
  %47 = ptrtoint ptr %block.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %block.0.ph.i, align 4
  %shr = lshr i32 %48, 12
  %size2 = getelementptr inbounds %struct.ct_vm_block, ptr %block.0.ph.i, i32 0, i32 1
  %49 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %50)
  %cmp435.not = icmp ult i32 %50, 4096
  br i1 %cmp435.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %shr3 = lshr i32 %50, 12
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl i32 %i.036, 12
  %51 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %runtime.i, align 4
  %dma_buffer_p.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %52, i32 0, i32 53
  %53 = ptrtoint ptr %dma_buffer_p.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_buffer_p.i, align 8
  %call.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %54, i32 noundef %shl) #5
  %add = add nuw nsw i32 %i.036, %shr
  %arrayidx7 = getelementptr i32, ptr %46, i32 %add
  %55 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %shr3
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %56 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %size, ptr %size2, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %block.0.ph.i, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_vm_unmap(ptr noundef %vm, ptr noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.ct_vm_block, ptr %block, i32 0, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  %add.i = add i32 %1, 4095
  %and.i = and i32 %add.i, -4096
  store i32 %and.i, ptr %size.i, align 4
  %lock.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %list.i = getelementptr inbounds %struct.ct_vm_block, ptr %block, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.list_del.exit.i_crit_edge

entry.list_del.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.ct_vm_block, ptr %block, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %entry.list_del.exit.i_crit_edge
  %8 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ct_vm_block, ptr %block, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %size4.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 1
  %12 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size4.i, align 4
  %add5.i = add i32 %13, %11
  store i32 %add5.i, ptr %size4.i, align 4
  %unused.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 2
  %14 = ptrtoint ptr %unused.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %pos.0103.i = load ptr, ptr %unused.i, align 4
  %cmp.i104.i = icmp eq ptr %pos.0103.i, %unused.i
  br i1 %cmp.i104.i, label %list_del.exit.i.if.then13.i_crit_edge, label %for.body.lr.ph.i

list_del.exit.i.if.then13.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i

for.body.lr.ph.i:                                 ; preds = %list_del.exit.i
  %15 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %block, align 4
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %add9.i = add i32 %18, %16
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %19 = ptrtoint ptr %pos.0105.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %pos.0.i = load ptr, ptr %pos.0105.i, align 4
  %cmp.i.i = icmp eq ptr %pos.0.i, %unused.i
  br i1 %cmp.i.i, label %for.cond.i.if.then13.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.if.then13.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.0105.i = phi ptr [ %pos.0103.i, %for.body.lr.ph.i ], [ %pos.0.i, %for.cond.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.0105.i, i32 -8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add9.i)
  %cmp.not.i = icmp ult i32 %21, %add9.i
  br i1 %cmp.not.i, label %for.cond.i, label %if.else.i

if.then13.i:                                      ; preds = %for.cond.i.if.then13.i_crit_edge, %list_del.exit.i.if.then13.i_crit_edge
  %prev.i94.i = getelementptr inbounds %struct.ct_vm, ptr %vm, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev.i94.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i94.i, align 4
  %call.i.i95.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %23, ptr noundef %unused.i) #5
  br i1 %call.i.i95.i, label %if.end.i.i96.i, label %if.then13.i.if.end30.i_crit_edge

if.then13.i.if.end30.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.end.i.i96.i:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %prev.i94.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.i, ptr %prev.i94.i, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %unused.i, ptr %list.i, align 4
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %23, align 4
  br label %if.end30.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add9.i, i32 %21)
  %cmp20.i = icmp eq i32 %add9.i, %21
  br i1 %cmp20.i, label %if.then21.i, label %if.else27.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.le = getelementptr i8, ptr %pos.0105.i, i32 -8
  %28 = ptrtoint ptr %add.ptr.i.le to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %16, ptr %add.ptr.i.le, align 4
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.i, align 4
  %size25.i = getelementptr i8, ptr %pos.0105.i, i32 -4
  %31 = ptrtoint ptr %size25.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size25.i, align 4
  %add26.i = add i32 %32, %30
  store i32 %add26.i, ptr %size25.i, align 4
  tail call void @kfree(ptr noundef %block) #5
  br label %if.end30.i

if.else27.i:                                      ; preds = %if.else.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0105.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %34, ptr noundef %pos.0105.i) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.else27.i.if.end30.i_crit_edge

if.else27.i.if.end30.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.end.i.i:                                       ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list.i, ptr %prev.i, align 4
  %36 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pos.0105.i, ptr %list.i, align 4
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list.i, ptr %34, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end.i.i, %if.else27.i.if.end30.i_crit_edge, %if.then21.i, %if.end.i.i96.i, %if.then13.i.if.end30.i_crit_edge
  %entry1.2.i = phi ptr [ %add.ptr.i.le, %if.then21.i ], [ %block, %if.then13.i.if.end30.i_crit_edge ], [ %block, %if.end.i.i96.i ], [ %block, %if.else27.i.if.end30.i_crit_edge ], [ %block, %if.end.i.i ]
  %prev32.i = getelementptr inbounds %struct.ct_vm_block, ptr %entry1.2.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev32.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %pre.0112.i = load ptr, ptr %prev32.i, align 4
  %cmp34.not113.i = icmp eq ptr %pre.0112.i, %unused.i
  br i1 %cmp34.not113.i, label %if.end30.i.put_vm_block.exit_crit_edge, label %while.body.preheader.i

if.end30.i.put_vm_block.exit_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_vm_block.exit

while.body.preheader.i:                           ; preds = %if.end30.i
  %list31.i = getelementptr inbounds %struct.ct_vm_block, ptr %entry1.2.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %list_del.exit102.i.while.body.i_crit_edge, %while.body.preheader.i
  %pre.0116.i = phi ptr [ %pre.0.i, %list_del.exit102.i.while.body.i_crit_edge ], [ %pre.0112.i, %while.body.preheader.i ]
  %pos.1114.i = phi ptr [ %pre.0116.i, %list_del.exit102.i.while.body.i_crit_edge ], [ %list31.i, %while.body.preheader.i ]
  %add.ptr37.i = getelementptr i8, ptr %pos.1114.i, i32 -8
  %add.ptr40.i = getelementptr i8, ptr %pre.0116.i, i32 -8
  %40 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr40.i, align 4
  %size42.i = getelementptr i8, ptr %pre.0116.i, i32 -4
  %42 = ptrtoint ptr %size42.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size42.i, align 4
  %add43.i = add i32 %43, %41
  %44 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr37.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add43.i, i32 %45)
  %cmp45.i = icmp ugt i32 %add43.i, %45
  br i1 %cmp45.i, label %while.body.i.put_vm_block.exit_crit_edge, label %if.end47.i

while.body.i.put_vm_block.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_vm_block.exit

if.end47.i:                                       ; preds = %while.body.i
  %size48.i = getelementptr i8, ptr %pos.1114.i, i32 -4
  %46 = ptrtoint ptr %size48.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size48.i, align 4
  %add50.i = add i32 %47, %43
  %48 = ptrtoint ptr %size42.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add50.i, ptr %size42.i, align 4
  %call.i.i97.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.1114.i) #5
  br i1 %call.i.i97.i, label %if.end.i.i100.i, label %if.end47.i.list_del.exit102.i_crit_edge

if.end47.i.list_del.exit102.i_crit_edge:          ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit102.i

if.end.i.i100.i:                                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i98.i = getelementptr inbounds %struct.list_head, ptr %pos.1114.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i98.i, align 4
  %51 = ptrtoint ptr %pos.1114.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pos.1114.i, align 4
  %prev1.i.i.i99.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i99.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit102.i

list_del.exit102.i:                               ; preds = %if.end.i.i100.i, %if.end47.i.list_del.exit102.i_crit_edge
  %55 = ptrtoint ptr %pos.1114.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.1114.i, align 4
  %prev.i101.i = getelementptr inbounds %struct.list_head, ptr %pos.1114.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i101.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i101.i, align 4
  tail call void @kfree(ptr noundef %add.ptr37.i) #5
  %prev51.i = getelementptr inbounds %struct.list_head, ptr %pre.0116.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev51.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %pre.0.i = load ptr, ptr %prev51.i, align 4
  %cmp34.not.i = icmp eq ptr %pre.0.i, %unused.i
  br i1 %cmp34.not.i, label %list_del.exit102.i.put_vm_block.exit_crit_edge, label %list_del.exit102.i.while.body.i_crit_edge

list_del.exit102.i.while.body.i_crit_edge:        ; preds = %list_del.exit102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

list_del.exit102.i.put_vm_block.exit_crit_edge:   ; preds = %list_del.exit102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_vm_block.exit

put_vm_block.exit:                                ; preds = %list_del.exit102.i.put_vm_block.exit_crit_edge, %while.body.i.put_vm_block.exit_crit_edge, %if.end30.i.put_vm_block.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ct_get_ptp_phys(ptr nocapture noundef readonly %vm, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index)
  %cmp = icmp sgt i32 %index, 3
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %addr = getelementptr [4 x %struct.snd_dma_buffer], ptr %vm, i32 0, i32 %index, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.false ], [ -1, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @ct_vm_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/ctvmem.c", i32 181, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/pci/ctxfi/ctvmem.c", i32 134, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ct_vm_map._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @ct_vm_map._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/ctxfi/ctvmem.c", i32 37, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @get_vm_block._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @get_vm_block._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
