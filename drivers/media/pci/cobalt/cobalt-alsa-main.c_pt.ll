; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-alsa-main.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-alsa-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_dv_timings = type { i32, %union.anon.84 }
%union.anon.84 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.111, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.111 = type { ptr }
%struct.snd_cobalt_card = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@cobalt_alsa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: snd_card_new() failed with err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cobalt_alsa_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/pci/cobalt/cobalt-alsa-main.c\00", [52 x i8] zeroinitializer }, align 32
@cobalt_alsa_init._entry_ptr = internal global ptr @cobalt_alsa_init._entry, section ".printk_index", align 4
@cobalt_alsa_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: snd_cobalt_card_create() failed with err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cobalt_alsa_init._entry_ptr.5 = internal global ptr @cobalt_alsa_init._entry.3, section ".printk_index", align 4
@cobalt_alsa_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: snd_cobalt_pcm_create() failed with err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cobalt_alsa_init._entry_ptr.8 = internal global ptr @cobalt_alsa_init._entry.6, section ".printk_index", align 4
@cobalt_alsa_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: snd_card_register() failed with err %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cobalt_alsa_init._entry_ptr.11 = internal global ptr @cobalt_alsa_init._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cobalt\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cobalt-%d-%d\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cobalt %d HDMI %d\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 98, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 105, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 115, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 129, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 68, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 71, i32 50 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [47 x i8] c"../drivers/media/pci/cobalt/cobalt-alsa-main.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 76, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @cobalt_alsa_init._entry, ptr @cobalt_alsa_init._entry.3, ptr @cobalt_alsa_init._entry.6, ptr @cobalt_alsa_init._entry.9, ptr @cobalt_alsa_init._entry_ptr, ptr @cobalt_alsa_init._entry_ptr.11, ptr @cobalt_alsa_init._entry_ptr.5, ptr @cobalt_alsa_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cobalt_alsa_init(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %sc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cobalt1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sc) #6
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sc, align 4
  %pci_dev = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %sc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 2, i32 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #10
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %do.end8, label %if.end14

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name11 = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 2, i32 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name11, i32 noundef -12) #9
  br label %err_exit_free

if.end14:                                         ; preds = %if.end
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %s, ptr %call7.i.i.i, align 8
  %sc2.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %sc2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %sc2.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 9
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %private_data.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 10
  %11 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_cobalt_card_private_free, ptr %private_free.i, align 4
  %12 = load ptr, ptr %call7.i.i.i, align 8
  %cobalt2.i = getelementptr inbounds %struct.cobalt_stream, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %cobalt2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cobalt2.i, align 4
  %15 = load ptr, ptr %sc2.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 2
  %call.i = call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str.12, i32 noundef 16) #6
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %14, align 8
  %video_channel.i = getelementptr inbounds %struct.cobalt_stream, ptr %12, i32 0, i32 21
  %18 = ptrtoint ptr %video_channel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %video_channel.i, align 8
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %shortname.i, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %17, i32 noundef %19) #6
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %14, align 8
  %22 = ptrtoint ptr %video_channel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %video_channel.i, align 8
  %call9.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.14, i32 noundef %21, i32 noundef %23) #6
  %call16 = call i32 @snd_cobalt_pcm_create(ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end27, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %name24 = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 2, i32 4
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name24, i32 noundef %call16) #9
  br label %err_exit_free

if.end27:                                         ; preds = %if.end14
  %alsa = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 34
  %24 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %alsa, align 8
  %25 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc, align 4
  %call28 = call i32 @snd_card_register(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.then30

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %alsa, align 8
  %name37 = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 2, i32 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name37, i32 noundef %call28) #9
  br label %err_exit_free

err_exit_free:                                    ; preds = %if.then30, %do.end21, %do.end8
  %ret.0 = phi i32 [ -12, %do.end8 ], [ %call16, %do.end21 ], [ %call28, %if.then30 ]
  %28 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc, align 4
  %cmp.not = icmp eq ptr %29, null
  br i1 %cmp.not, label %err_exit_free.if.end43_crit_edge, label %if.then41

err_exit_free.if.end43_crit_edge:                 ; preds = %err_exit_free
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %err_exit_free
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 @snd_card_free(ptr noundef nonnull %29) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %err_exit_free.if.end43_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ %call, %do.end ], [ %ret.0, %if.end43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cobalt_pcm_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_alsa_exit(ptr nocapture noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %alsa = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 34
  %0 = ptrtoint ptr %alsa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alsa, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sc = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %call = tail call i32 @snd_card_free(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %alsa, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cobalt_card_private_free(ptr noundef %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sc, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_card, ptr %sc, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.end.snd_cobalt_card_free.exit_crit_edge, label %if.end.i

if.end.snd_cobalt_card_free.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_cobalt_card_free.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %alsa.i = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %alsa.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %alsa.i, align 8
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %snd_cobalt_card_free.exit

snd_cobalt_card_free.exit:                        ; preds = %if.end.i, %if.end.snd_cobalt_card_free.exit_crit_edge
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_card, ptr %sc, i32 0, i32 10
  %6 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_free, align 4
  br label %return

return:                                           ; preds = %snd_cobalt_card_free.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-main.c", i32 98, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cobalt_alsa_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cobalt_alsa_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-main.c", i32 105, i32 3}
!8 = !{ptr @cobalt_alsa_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cobalt_alsa_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-main.c", i32 115, i32 3}
!12 = !{ptr @cobalt_alsa_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cobalt_alsa_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-main.c", i32 129, i32 3}
!16 = !{ptr @cobalt_alsa_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cobalt_alsa_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-main.c", i32 68, i32 22}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-main.c", i32 71, i32 50}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-main.c", i32 76, i32 4}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
