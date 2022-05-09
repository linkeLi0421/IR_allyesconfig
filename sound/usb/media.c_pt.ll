; ModuleID = '/llk/IR_all_yes/sound/usb/media.c_pt.bc'
source_filename = "../sound/usb/media.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.78, i8, i8, ptr }
%struct.anon.78 = type { i32, i32, i32 }
%struct.media_ctl = type { ptr, %struct.media_entity, ptr, ptr, %struct.media_pad, %struct.media_pipeline }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.76 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.73], %struct.media_entity_enum, i32 }
%struct.anon.73 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.media_mixer_ctl = type { ptr, %struct.media_entity, ptr, ptr, [3 x %struct.media_pad], %struct.media_pipeline }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@snd_media_device_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Couldn't create media mixer entities. Error: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_media_device_create\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/usb/media.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_media_device_create._entry_ptr = internal global ptr @snd_media_device_create._entry, section ".printk_index", align 4
@snd_media_device_create._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Couldn't register media device. Error: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_media_device_create._entry_ptr.8 = internal global ptr @snd_media_device_create._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 271, i32 43 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 283, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [21 x i8] c"../sound/usb/media.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 300, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @snd_media_device_create._entry, ptr @snd_media_device_create._entry.6, ptr @snd_media_device_create._entry_ptr, ptr @snd_media_device_create._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_media_device_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_media_device_create._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_media_stream_init(ptr nocapture noundef %subs, ptr noundef %pcm, i32 noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subs, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %media_dev = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %media_dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %media_ctl = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 32
  %6 = ptrtoint ptr %media_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %media_ctl, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 268) #7
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp = icmp eq i32 %stream, 0
  br i1 %cmp, label %if.end7.if.end14_crit_edge, label %if.else

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end7.if.end14_crit_edge
  %.sink104 = phi i32 [ 12289, %if.else ], [ 12290, %if.end7.if.end14_crit_edge ]
  %.sink = phi i32 [ 1, %if.else ], [ 2, %if.end7.if.end14_crit_edge ]
  %intf_type.0 = phi i32 [ 768, %if.else ], [ 769, %if.end7.if.end14_crit_edge ]
  %mixer_pad.0 = phi i16 [ 2, %if.else ], [ 1, %if.end7.if.end14_crit_edge ]
  %10 = getelementptr inbounds %struct.media_ctl, ptr %call7.i.i, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink104, ptr %10, align 4
  %12 = getelementptr inbounds %struct.media_ctl, ptr %call7.i.i, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 7
  %media_entity15 = getelementptr inbounds %struct.media_ctl, ptr %call7.i.i, i32 0, i32 1
  %name16 = getelementptr inbounds %struct.media_ctl, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %name16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %name, ptr %name16, align 4
  %media_pad18 = getelementptr inbounds %struct.media_ctl, ptr %call7.i.i, i32 0, i32 4
  %call19 = tail call i32 @media_entity_pads_init(ptr noundef %media_entity15, i16 noundef zeroext 1, ptr noundef %media_pad18) #4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %call22 = tail call i32 @media_device_register_entity(ptr noundef %16, ptr noundef %media_entity15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end14.free_mctl_crit_edge

if.end14.free_mctl_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_mctl

if.end25:                                         ; preds = %if.end14
  %devt = getelementptr %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 %stream, i32 9, i32 29
  %17 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devt, align 8
  %shr = lshr i32 %18, 20
  %and = and i32 %18, 1048575
  %call27 = tail call ptr @media_devnode_create(ptr noundef nonnull %5, i32 noundef %intf_type.0, i32 noundef 0, i32 noundef %shr, i32 noundef %and) #4
  %intf_devnode = getelementptr inbounds %struct.media_ctl, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %intf_devnode to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call27, ptr %intf_devnode, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end25.unregister_entity_crit_edge, label %if.end31

if.end25.unregister_entity_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_entity

if.end31:                                         ; preds = %if.end25
  %call34 = tail call ptr @media_create_intf_link(ptr noundef %media_entity15, ptr noundef nonnull %call27, i32 noundef 1) #4
  %intf_link = getelementptr inbounds %struct.media_ctl, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %intf_link to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call34, ptr %intf_link, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end31.devnode_remove_crit_edge, label %if.end38

if.end31.devnode_remove_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %devnode_remove

if.end38:                                         ; preds = %if.end31
  %entities = getelementptr inbounds %struct.media_device, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn99 = load ptr, ptr %entities, align 4
  %cmp40.not101 = icmp eq ptr %.pn99, %entities
  br i1 %cmp40.not101, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end38.for.body_crit_edge
  %.pn102 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn99, %if.end38.for.body_crit_edge ]
  %function41 = getelementptr i8, ptr %.pn102, i32 16
  %22 = ptrtoint ptr %function41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %function41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12291, i32 %23)
  %cond = icmp eq i32 %23, 12291
  br i1 %cond, label %sw.bb, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %entity.0103 = getelementptr i8, ptr %.pn102, i32 -8
  %call43 = tail call i32 @media_create_pad_link(ptr noundef %entity.0103, i16 noundef zeroext %mixer_pad.0, ptr noundef %media_entity15, i16 noundef zeroext 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %sw.bb.for.inc_crit_edge, label %remove_intf_link

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn102, align 4
  %cmp40.not = icmp eq ptr %.pn, %entities
  br i1 %cmp40.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end38.for.end_crit_edge
  %25 = ptrtoint ptr %media_ctl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %media_ctl, align 4
  br label %cleanup

remove_intf_link:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %intf_link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf_link, align 8
  tail call void @media_remove_intf_link(ptr noundef %27) #4
  br label %devnode_remove

devnode_remove:                                   ; preds = %remove_intf_link, %if.end31.devnode_remove_crit_edge
  %ret.0 = phi i32 [ %call43, %remove_intf_link ], [ -12, %if.end31.devnode_remove_crit_edge ]
  %28 = ptrtoint ptr %intf_devnode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf_devnode, align 4
  tail call void @media_devnode_remove(ptr noundef %29) #4
  br label %unregister_entity

unregister_entity:                                ; preds = %devnode_remove, %if.end25.unregister_entity_crit_edge
  %ret.1 = phi i32 [ %ret.0, %devnode_remove ], [ -12, %if.end25.unregister_entity_crit_edge ]
  tail call void @media_device_unregister_entity(ptr noundef %media_entity15) #4
  br label %free_mctl

free_mctl:                                        ; preds = %unregister_entity, %if.end14.free_mctl_crit_edge
  %ret.2 = phi i32 [ %call22, %if.end14.free_mctl_crit_edge ], [ %ret.1, %unregister_entity ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %free_mctl, %for.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %free_mctl ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_devnode_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_create_intf_link(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_remove_intf_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_devnode_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_media_stream_delete(ptr nocapture noundef %subs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %media_ctl = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 32
  %0 = ptrtoint ptr %media_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_ctl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %devnode = getelementptr inbounds %struct.media_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devnode, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end_crit_edge, label %media_devnode_is_registered.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

media_devnode_is_registered.exit:                 ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %media_devnode_is_registered.exit.if.end_crit_edge, label %if.then3

media_devnode_is_registered.exit.if.end_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3:                                         ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  %intf_devnode = getelementptr inbounds %struct.media_ctl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %intf_devnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf_devnode, align 4
  tail call void @media_devnode_remove(ptr noundef %9) #4
  %media_entity = getelementptr inbounds %struct.media_ctl, ptr %1, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %media_entity) #4
  br label %if.end

if.end:                                           ; preds = %if.then3, %media_devnode_is_registered.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #4
  %10 = ptrtoint ptr %media_ctl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %media_ctl, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_media_start_pipeline(ptr nocapture noundef readonly %subs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %media_ctl = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 32
  %0 = ptrtoint ptr %media_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_ctl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %3, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %enable_source = getelementptr inbounds %struct.media_device, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %enable_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_source, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %media_entity = getelementptr inbounds %struct.media_ctl, ptr %1, i32 0, i32 1
  %media_pipe = getelementptr inbounds %struct.media_ctl, ptr %1, i32 0, i32 5
  %call = tail call i32 %7(ptr noundef %media_entity, ptr noundef %media_pipe) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %graph_mutex8 = getelementptr inbounds %struct.media_device, ptr %9, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex8) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_media_stop_pipeline(ptr nocapture noundef readonly %subs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %media_ctl = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 32
  %0 = ptrtoint ptr %media_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_ctl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %3, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %disable_source = getelementptr inbounds %struct.media_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %disable_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_source, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %media_entity = getelementptr inbounds %struct.media_ctl, ptr %1, i32 0, i32 1
  tail call void %7(ptr noundef %media_entity) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %graph_mutex8 = getelementptr inbounds %struct.media_device, ptr %9, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex8) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_media_device_create(ptr noundef %chip, ptr nocapture noundef readonly %iface) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %iface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %media_dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 29
  %2 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %media_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call2 = tail call ptr @media_device_usb_allocate(ptr noundef %add.ptr.i, ptr noundef nonnull @.str, ptr noundef null) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %snd_mixer_init

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

snd_mixer_init:                                   ; preds = %if.end
  %4 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %media_dev, align 4
  %tobool.not.i = icmp eq ptr %call2, null
  br i1 %tobool.not.i, label %snd_mixer_init.do.end_crit_edge, label %snd_mixer_init.if.end.i_crit_edge

snd_mixer_init.if.end.i_crit_edge:                ; preds = %snd_mixer_init
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

snd_mixer_init.do.end_crit_edge:                  ; preds = %snd_mixer_init
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %snd_mixer_init.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %mdev.064 = phi ptr [ %call2, %snd_mixer_init.if.end.i_crit_edge ], [ %3, %entry.if.end.i_crit_edge ]
  %card.i66 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %ctl_intf_media_devnode.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 30
  %5 = ptrtoint ptr %ctl_intf_media_devnode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl_intf_media_devnode.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %card.i66 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i66, align 4
  %devt.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 12, i32 29
  %9 = ptrtoint ptr %devt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devt.i, align 8
  %shr.i = lshr i32 %10, 20
  %and.i = and i32 %10, 1048575
  %call.i = tail call ptr @media_devnode_create(ptr noundef nonnull %mdev.064, i32 noundef 770, i32 noundef 0, i32 noundef %shr.i, i32 noundef %and.i) #4
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.then3.i.do.end_crit_edge, label %if.end7.i

if.then3.i.do.end_crit_edge:                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end7.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %ctl_intf_media_devnode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %ctl_intf_media_devnode.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end7.i, %if.end.i.if.end9.i_crit_edge
  %ctl_intf.0.i = phi ptr [ %6, %if.end.i.if.end9.i_crit_edge ], [ %call.i, %if.end7.i ]
  %mixer_list.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 23
  %12 = ptrtoint ptr %mixer_list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn97.i = load ptr, ptr %mixer_list.i, align 4
  %cmp.not98.i = icmp eq ptr %.pn97.i, %mixer_list.i
  br i1 %cmp.not98.i, label %if.end9.i.if.end10_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.if.end10_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %.pn99.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn97.i, %if.end9.i.for.body.i_crit_edge ]
  %media_mixer_ctl.i = getelementptr i8, ptr %.pn99.i, i32 104
  %13 = ptrtoint ptr %media_mixer_ctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %media_mixer_ctl.i, align 4
  %tobool11.not.i = icmp eq ptr %14, null
  br i1 %tobool11.not.i, label %if.end13.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end13.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 332) #7
  %tobool15.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool15.not.i, label %if.end13.i.do.end_crit_edge, label %if.end17.i

if.end13.i.do.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end17.i:                                       ; preds = %if.end13.i
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mdev.064, ptr %call7.i.i.i, align 8
  %media_entity.i = getelementptr inbounds %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 1
  %function.i = getelementptr inbounds %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12291, ptr %function.i, align 4
  %18 = ptrtoint ptr %card.i66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i66, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 6
  %name.i = getelementptr inbounds %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mixername.i, ptr %name.i, align 4
  %media_pad.i = getelementptr inbounds %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %flags.i, align 8
  %flags23.i = getelementptr %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 4, i32 1, i32 4
  %22 = ptrtoint ptr %flags23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %flags23.i, align 8
  %flags26.i = getelementptr %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 4, i32 2, i32 4
  %23 = ptrtoint ptr %flags26.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %flags26.i, align 8
  %call30.i = tail call i32 @media_entity_pads_init(ptr noundef %media_entity.i, i16 noundef zeroext 3, ptr noundef %media_pad.i) #4
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i.i, align 8
  %call33.i = tail call i32 @media_device_register_entity(ptr noundef %25, ptr noundef %media_entity.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end17.i.cleanup.sink.split.i_crit_edge

if.end17.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end36.i:                                       ; preds = %if.end17.i
  %call38.i = tail call ptr @media_create_intf_link(ptr noundef %media_entity.i, ptr noundef %ctl_intf.0.i, i32 noundef 1) #4
  %intf_link.i = getelementptr inbounds %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %intf_link.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38.i, ptr %intf_link.i, align 8
  %tobool40.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool40.not.i, label %if.then41.i, label %if.end44.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @media_device_unregister_entity(ptr noundef %media_entity.i) #4
  br label %cleanup.sink.split.i

if.end44.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  %intf_devnode.i = getelementptr inbounds %struct.media_mixer_ctl, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %intf_devnode.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ctl_intf.0.i, ptr %intf_devnode.i, align 4
  %28 = ptrtoint ptr %media_mixer_ctl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %media_mixer_ctl.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end44.i, %for.body.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %.pn99.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn99.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %mixer_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end10_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end10_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

cleanup.sink.split.i:                             ; preds = %if.then41.i, %if.end17.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -12, %if.then41.i ], [ %call33.i, %if.end17.i.cleanup.sink.split.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %do.end

do.end:                                           ; preds = %cleanup.sink.split.i, %if.end13.i.do.end_crit_edge, %if.then3.i.do.end_crit_edge, %snd_mixer_init.do.end_crit_edge
  %mdev.065.ph = phi ptr [ %mdev.064, %cleanup.sink.split.i ], [ %mdev.064, %if.then3.i.do.end_crit_edge ], [ null, %snd_mixer_init.do.end_crit_edge ], [ %mdev.064, %if.end13.i.do.end_crit_edge ]
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -12, %if.then3.i.do.end_crit_edge ], [ -19, %snd_mixer_init.do.end_crit_edge ], [ -12, %if.end13.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.ph) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end, %for.inc.i.if.end10_crit_edge, %if.end9.i.if.end10_crit_edge
  %tobool8.not75 = phi i1 [ false, %do.end ], [ true, %if.end9.i.if.end10_crit_edge ], [ true, %for.inc.i.if.end10_crit_edge ]
  %retval.0.i73 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end9.i.if.end10_crit_edge ], [ 0, %for.inc.i.if.end10_crit_edge ]
  %mdev.06571 = phi ptr [ %mdev.065.ph, %do.end ], [ %mdev.064, %if.end9.i.if.end10_crit_edge ], [ %mdev.064, %for.inc.i.if.end10_crit_edge ]
  %devnode = getelementptr inbounds %struct.media_device, ptr %mdev.06571, i32 0, i32 1
  %30 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %devnode, align 4
  %tobool.not.i46 = icmp eq ptr %31, null
  br i1 %tobool.not.i46, label %if.end10.if.then13_crit_edge, label %media_devnode_is_registered.exit

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

media_devnode_is_registered.exit:                 ; preds = %if.end10
  %flags.i47 = getelementptr inbounds %struct.media_devnode, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i47, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool12.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not, label %media_devnode_is_registered.exit.if.then13_crit_edge, label %media_devnode_is_registered.exit.cleanup_crit_edge

media_devnode_is_registered.exit.cleanup_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

media_devnode_is_registered.exit.if.then13_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

if.then13:                                        ; preds = %media_devnode_is_registered.exit.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  br i1 %tobool8.not75, label %if.end16, label %if.then13.create_fail_crit_edge

if.then13.create_fail_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %create_fail

if.end16:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = tail call i32 @__media_device_register(ptr noundef %mdev.06571, ptr noundef null) #4
  br label %create_fail

create_fail:                                      ; preds = %if.end16, %if.then13.create_fail_crit_edge
  %ret.0 = phi i32 [ %retval.0.i73, %if.then13.create_fail_crit_edge ], [ %call17, %if.end16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool18.not = icmp eq i32 %ret.0, 0
  br i1 %tobool18.not, label %create_fail.cleanup_crit_edge, label %if.then19

create_fail.cleanup_crit_edge:                    ; preds = %create_fail
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then19:                                        ; preds = %create_fail
  %34 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %media_dev, align 4
  %tobool.not.i51 = icmp eq ptr %35, null
  br i1 %tobool.not.i51, label %if.then19.snd_media_mixer_delete.exit_crit_edge, label %if.end.i53

if.then19.snd_media_mixer_delete.exit_crit_edge:  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_media_mixer_delete.exit

if.end.i53:                                       ; preds = %if.then19
  %mixer_list.i52 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 23
  %36 = ptrtoint ptr %mixer_list.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn49.i = load ptr, ptr %mixer_list.i52, align 4
  %cmp.not50.i = icmp eq ptr %.pn49.i, %mixer_list.i52
  br i1 %cmp.not50.i, label %if.end.i53.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i53.for.end.i_crit_edge:                   ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i53
  %devnode.i = getelementptr inbounds %struct.media_device, ptr %35, i32 0, i32 1
  br label %for.body.i55

for.body.i55:                                     ; preds = %cleanup.i.for.body.i55_crit_edge, %for.body.lr.ph.i
  %.pn51.i = phi ptr [ %.pn49.i, %for.body.lr.ph.i ], [ %.pn.i58, %cleanup.i.for.body.i55_crit_edge ]
  %media_mixer_ctl.i54 = getelementptr i8, ptr %.pn51.i, i32 104
  %37 = ptrtoint ptr %media_mixer_ctl.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %media_mixer_ctl.i54, align 4
  %tobool3.not.i = icmp eq ptr %38, null
  br i1 %tobool3.not.i, label %for.body.i55.cleanup.i_crit_edge, label %if.end5.i

for.body.i55.cleanup.i_crit_edge:                 ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end5.i:                                        ; preds = %for.body.i55
  %39 = ptrtoint ptr %devnode.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %devnode.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end5.i.if.end9.i57_crit_edge, label %media_devnode_is_registered.exit.i

if.end5.i.if.end9.i57_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i57

media_devnode_is_registered.exit.i:               ; preds = %if.end5.i
  %flags.i.i = getelementptr inbounds %struct.media_devnode, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool6.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool6.not.i, label %media_devnode_is_registered.exit.i.if.end9.i57_crit_edge, label %if.then7.i

media_devnode_is_registered.exit.i.if.end9.i57_crit_edge: ; preds = %media_devnode_is_registered.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i57

if.then7.i:                                       ; preds = %media_devnode_is_registered.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %media_entity.i56 = getelementptr inbounds %struct.media_mixer_ctl, ptr %38, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %media_entity.i56) #4
  br label %if.end9.i57

if.end9.i57:                                      ; preds = %if.then7.i, %media_devnode_is_registered.exit.i.if.end9.i57_crit_edge, %if.end5.i.if.end9.i57_crit_edge
  tail call void @kfree(ptr noundef nonnull %38) #4
  %43 = ptrtoint ptr %media_mixer_ctl.i54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %media_mixer_ctl.i54, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end9.i57, %for.body.i55.cleanup.i_crit_edge
  %44 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i58 = load ptr, ptr %.pn51.i, align 4
  %cmp.not.i59 = icmp eq ptr %.pn.i58, %mixer_list.i52
  br i1 %cmp.not.i59, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i55_crit_edge

cleanup.i.for.body.i55_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i55

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i53.for.end.i_crit_edge
  %devnode16.i = getelementptr inbounds %struct.media_device, ptr %35, i32 0, i32 1
  %45 = ptrtoint ptr %devnode16.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %devnode16.i, align 4
  %tobool.not.i39.i = icmp eq ptr %46, null
  br i1 %tobool.not.i39.i, label %for.end.i.if.end20.i_crit_edge, label %media_devnode_is_registered.exit44.i

for.end.i.if.end20.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

media_devnode_is_registered.exit44.i:             ; preds = %for.end.i
  %flags.i40.i = getelementptr inbounds %struct.media_devnode, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i40.i, align 4
  %and1.i.i41.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i41.i)
  %tobool18.not.i = icmp eq i32 %and1.i.i41.i, 0
  br i1 %tobool18.not.i, label %media_devnode_is_registered.exit44.i.if.end20.i_crit_edge, label %if.then19.i

media_devnode_is_registered.exit44.i.if.end20.i_crit_edge: ; preds = %media_devnode_is_registered.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

if.then19.i:                                      ; preds = %media_devnode_is_registered.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  %ctl_intf_media_devnode.i60 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 30
  %49 = ptrtoint ptr %ctl_intf_media_devnode.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctl_intf_media_devnode.i60, align 4
  tail call void @media_devnode_remove(ptr noundef %50) #4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %media_devnode_is_registered.exit44.i.if.end20.i_crit_edge, %for.end.i.if.end20.i_crit_edge
  %ctl_intf_media_devnode21.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 30
  %51 = ptrtoint ptr %ctl_intf_media_devnode21.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ctl_intf_media_devnode21.i, align 4
  br label %snd_media_mixer_delete.exit

snd_media_mixer_delete.exit:                      ; preds = %if.end20.i, %if.then19.snd_media_mixer_delete.exit_crit_edge
  tail call void @media_device_delete(ptr noundef %mdev.06571, ptr noundef nonnull @.str, ptr noundef null) #4
  %52 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %media_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %snd_media_mixer_delete.exit, %create_fail.cleanup_crit_edge, %media_devnode_is_registered.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %snd_media_mixer_delete.exit ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i73, %media_devnode_is_registered.exit.cleanup_crit_edge ], [ 0, %create_fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_device_usb_allocate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_media_device_delete(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %media_dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 29
  %0 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_dev, align 4
  %pcm_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 18
  %2 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn42 = load ptr, ptr %pcm_list, align 4
  %cmp.not43 = icmp eq ptr %.pn42, %pcm_list
  br i1 %cmp.not43, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %snd_media_stream_delete.exit33.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %snd_media_stream_delete.exit33.for.body_crit_edge ], [ %.pn42, %entry.for.body_crit_edge ]
  %media_ctl.i = getelementptr i8, ptr %.pn44, i32 -188
  %3 = ptrtoint ptr %media_ctl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %media_ctl.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.snd_media_stream_delete.exit_crit_edge, label %if.then.i

for.body.snd_media_stream_delete.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_media_stream_delete.exit

if.then.i:                                        ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %devnode.i = getelementptr inbounds %struct.media_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %devnode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devnode.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.if.end.i_crit_edge, label %media_devnode_is_registered.exit.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

media_devnode_is_registered.exit.i:               ; preds = %land.lhs.true.i
  %flags.i.i = getelementptr inbounds %struct.media_devnode, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i, label %media_devnode_is_registered.exit.i.if.end.i_crit_edge, label %if.then3.i

media_devnode_is_registered.exit.i.if.end.i_crit_edge: ; preds = %media_devnode_is_registered.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then3.i:                                       ; preds = %media_devnode_is_registered.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %intf_devnode.i = getelementptr inbounds %struct.media_ctl, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %intf_devnode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf_devnode.i, align 4
  tail call void @media_devnode_remove(ptr noundef %12) #4
  %media_entity.i = getelementptr inbounds %struct.media_ctl, ptr %4, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %media_entity.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %media_devnode_is_registered.exit.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %4) #4
  %13 = ptrtoint ptr %media_ctl.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %media_ctl.i, align 4
  br label %snd_media_stream_delete.exit

snd_media_stream_delete.exit:                     ; preds = %if.end.i, %for.body.snd_media_stream_delete.exit_crit_edge
  %media_ctl.i18 = getelementptr i8, ptr %.pn44, i32 -4
  %14 = ptrtoint ptr %media_ctl.i18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %media_ctl.i18, align 4
  %tobool.not.i19 = icmp eq ptr %15, null
  br i1 %tobool.not.i19, label %snd_media_stream_delete.exit.snd_media_stream_delete.exit33_crit_edge, label %if.then.i21

snd_media_stream_delete.exit.snd_media_stream_delete.exit33_crit_edge: ; preds = %snd_media_stream_delete.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_media_stream_delete.exit33

if.then.i21:                                      ; preds = %snd_media_stream_delete.exit
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool1.not.i20 = icmp eq ptr %17, null
  br i1 %tobool1.not.i20, label %if.then.i21.if.end.i32_crit_edge, label %land.lhs.true.i24

if.then.i21.if.end.i32_crit_edge:                 ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i32

land.lhs.true.i24:                                ; preds = %if.then.i21
  %devnode.i22 = getelementptr inbounds %struct.media_device, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %devnode.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devnode.i22, align 4
  %tobool.not.i.i23 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i23, label %land.lhs.true.i24.if.end.i32_crit_edge, label %media_devnode_is_registered.exit.i28

land.lhs.true.i24.if.end.i32_crit_edge:           ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i32

media_devnode_is_registered.exit.i28:             ; preds = %land.lhs.true.i24
  %flags.i.i25 = getelementptr inbounds %struct.media_devnode, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %flags.i.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i.i25, align 4
  %and1.i.i.i26 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i26)
  %tobool2.not.i27 = icmp eq i32 %and1.i.i.i26, 0
  br i1 %tobool2.not.i27, label %media_devnode_is_registered.exit.i28.if.end.i32_crit_edge, label %if.then3.i31

media_devnode_is_registered.exit.i28.if.end.i32_crit_edge: ; preds = %media_devnode_is_registered.exit.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i32

if.then3.i31:                                     ; preds = %media_devnode_is_registered.exit.i28
  call void @__sanitizer_cov_trace_pc() #6
  %intf_devnode.i29 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %intf_devnode.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf_devnode.i29, align 4
  tail call void @media_devnode_remove(ptr noundef %23) #4
  %media_entity.i30 = getelementptr inbounds %struct.media_ctl, ptr %15, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %media_entity.i30) #4
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then3.i31, %media_devnode_is_registered.exit.i28.if.end.i32_crit_edge, %land.lhs.true.i24.if.end.i32_crit_edge, %if.then.i21.if.end.i32_crit_edge
  tail call void @kfree(ptr noundef nonnull %15) #4
  %24 = ptrtoint ptr %media_ctl.i18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %media_ctl.i18, align 4
  br label %snd_media_stream_delete.exit33

snd_media_stream_delete.exit33:                   ; preds = %if.end.i32, %snd_media_stream_delete.exit.snd_media_stream_delete.exit33_crit_edge
  %25 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, %pcm_list
  br i1 %cmp.not, label %for.endthread-pre-split, label %snd_media_stream_delete.exit33.for.body_crit_edge

snd_media_stream_delete.exit33.for.body_crit_edge: ; preds = %snd_media_stream_delete.exit33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.endthread-pre-split:                          ; preds = %snd_media_stream_delete.exit33
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load ptr, ptr %media_dev, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %entry.for.end_crit_edge
  %27 = phi ptr [ %.pr, %for.endthread-pre-split ], [ %1, %entry.for.end_crit_edge ]
  %tobool.not.i34 = icmp eq ptr %27, null
  br i1 %tobool.not.i34, label %for.end.snd_media_mixer_delete.exit_crit_edge, label %if.end.i35

for.end.snd_media_mixer_delete.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_media_mixer_delete.exit

if.end.i35:                                       ; preds = %for.end
  %mixer_list.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 23
  %28 = ptrtoint ptr %mixer_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn49.i = load ptr, ptr %mixer_list.i, align 4
  %cmp.not50.i = icmp eq ptr %.pn49.i, %mixer_list.i
  br i1 %cmp.not50.i, label %if.end.i35.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i35.for.end.i_crit_edge:                   ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i35
  %devnode.i36 = getelementptr inbounds %struct.media_device, ptr %27, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn51.i = phi ptr [ %.pn49.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %media_mixer_ctl.i = getelementptr i8, ptr %.pn51.i, i32 104
  %29 = ptrtoint ptr %media_mixer_ctl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %media_mixer_ctl.i, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end5.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end5.i:                                        ; preds = %for.body.i
  %31 = ptrtoint ptr %devnode.i36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devnode.i36, align 4
  %tobool.not.i.i37 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i37, label %if.end5.i.if.end9.i_crit_edge, label %media_devnode_is_registered.exit.i40

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

media_devnode_is_registered.exit.i40:             ; preds = %if.end5.i
  %flags.i.i38 = getelementptr inbounds %struct.media_devnode, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %flags.i.i38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i.i38, align 4
  %and1.i.i.i39 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i39)
  %tobool6.not.i = icmp eq i32 %and1.i.i.i39, 0
  br i1 %tobool6.not.i, label %media_devnode_is_registered.exit.i40.if.end9.i_crit_edge, label %if.then7.i

media_devnode_is_registered.exit.i40.if.end9.i_crit_edge: ; preds = %media_devnode_is_registered.exit.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then7.i:                                       ; preds = %media_devnode_is_registered.exit.i40
  call void @__sanitizer_cov_trace_pc() #6
  %media_entity.i41 = getelementptr inbounds %struct.media_mixer_ctl, ptr %30, i32 0, i32 1
  tail call void @media_device_unregister_entity(ptr noundef %media_entity.i41) #4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %media_devnode_is_registered.exit.i40.if.end9.i_crit_edge, %if.end5.i.if.end9.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %30) #4
  %35 = ptrtoint ptr %media_mixer_ctl.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %media_mixer_ctl.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end9.i, %for.body.i.cleanup.i_crit_edge
  %36 = ptrtoint ptr %.pn51.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn51.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %mixer_list.i
  br i1 %cmp.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end.i35.for.end.i_crit_edge
  %devnode16.i = getelementptr inbounds %struct.media_device, ptr %27, i32 0, i32 1
  %37 = ptrtoint ptr %devnode16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devnode16.i, align 4
  %tobool.not.i39.i = icmp eq ptr %38, null
  br i1 %tobool.not.i39.i, label %for.end.i.if.end20.i_crit_edge, label %media_devnode_is_registered.exit44.i

for.end.i.if.end20.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

media_devnode_is_registered.exit44.i:             ; preds = %for.end.i
  %flags.i40.i = getelementptr inbounds %struct.media_devnode, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i40.i, align 4
  %and1.i.i41.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i41.i)
  %tobool18.not.i = icmp eq i32 %and1.i.i41.i, 0
  br i1 %tobool18.not.i, label %media_devnode_is_registered.exit44.i.if.end20.i_crit_edge, label %if.then19.i

media_devnode_is_registered.exit44.i.if.end20.i_crit_edge: ; preds = %media_devnode_is_registered.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

if.then19.i:                                      ; preds = %media_devnode_is_registered.exit44.i
  call void @__sanitizer_cov_trace_pc() #6
  %ctl_intf_media_devnode.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 30
  %41 = ptrtoint ptr %ctl_intf_media_devnode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctl_intf_media_devnode.i, align 4
  tail call void @media_devnode_remove(ptr noundef %42) #4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %media_devnode_is_registered.exit44.i.if.end20.i_crit_edge, %for.end.i.if.end20.i_crit_edge
  %ctl_intf_media_devnode21.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 30
  %43 = ptrtoint ptr %ctl_intf_media_devnode21.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ctl_intf_media_devnode21.i, align 4
  br label %snd_media_mixer_delete.exit

snd_media_mixer_delete.exit:                      ; preds = %if.end20.i, %for.end.snd_media_mixer_delete.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %snd_media_mixer_delete.exit.if.end_crit_edge, label %if.then

snd_media_mixer_delete.exit.if.end_crit_edge:     ; preds = %snd_media_mixer_delete.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %snd_media_mixer_delete.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @media_device_delete(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef null) #4
  %44 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %media_dev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %snd_media_mixer_delete.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/media.c", i32 271, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/usb/media.c", i32 283, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_media_device_create._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @snd_media_device_create._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/usb/media.c", i32 300, i32 4}
!12 = !{ptr @snd_media_device_create._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @snd_media_device_create._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
