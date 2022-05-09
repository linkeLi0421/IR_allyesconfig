; ModuleID = '/llk/IR_all_yes/drivers/media/usb/usbtv/usbtv-audio.c_pt.bc'
source_filename = "../drivers/media/usb/usbtv/usbtv-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usbtv = type { ptr, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.vb2_queue, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, [16 x ptr], ptr, ptr, %struct.atomic_t, %struct.work_struct, ptr, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
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

@usbtv_audio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&usbtv->snd_trigger)\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usbtv\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"USBTV Audio at bus %d device %d\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USBTV Audio\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USBTV Audio Input\00", [46 x i8] zeroinitializer }, align 32
@snd_usbtv_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_usbtv_pcm_open, ptr @snd_usbtv_pcm_close, ptr null, ptr null, ptr null, ptr @snd_usbtv_prepare, ptr @snd_usbtv_card_trigger, ptr null, ptr @snd_usbtv_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@usbtv_audio_start.setup = internal constant { [18 x [2 x i16]], [56 x i8] } { [18 x [2 x i16]] [[2 x i16] [i16 -16376, i16 1], [2 x i16] [i16 -15920, i16 255], [2 x i16] [i16 -15911, i16 2], [2 x i16] [i16 -15910, i16 19], [2 x i16] [i16 -15909, i16 18], [2 x i16] [i16 -15895, i16 2], [2 x i16] [i16 -15892, i16 108], [2 x i16] [i16 -15724, i16 32], [2 x i16] [i16 -15787, i16 207], [2 x i16] [i16 -15786, i16 32], [2 x i16] [i16 -15893, i16 48], [2 x i16] [i16 -15747, i16 166], [2 x i16] [i16 -15744, i16 17], [2 x i16] [i16 -15743, i16 64], [2 x i16] [i16 -15742, i16 17], [2 x i16] [i16 -15741, i16 64], [2 x i16] [i16 -1903, i16 16], [2 x i16] [i16 -15740, i16 170]], [56 x i8] zeroinitializer }, align 32
@usbtv_audio_urb_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 119, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown audio urb status %i\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbtv_audio_urb_received\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/usbtv/usbtv-audio.c\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbtv_audio_urb_received._entry_ptr = internal global ptr @usbtv_audio_urb_received._entry, section ".printk_index", align 4
@usbtv_audio_stop.setup = internal constant { [3 x [2 x i16]], [20 x i8] } { [3 x [2 x i16]] [[2 x i16] [i16 -15747, i16 0], [2 x i16] [i16 -15744, i16 16], [2 x i16] [i16 -15742, i16 16]], [20 x i8] zeroinitializer }, align 32
@snd_usbtv_digital_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 501760, i32 11059, i32 13516, i32 2, i32 98, i32 0 }, [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967294]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 326, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 329, i32 59 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 337, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 344, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 348, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"snd_usbtv_pcm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 312, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 175, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 118, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 233, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"snd_usbtv_digital_hw\00", align 1
@___asan_gen_.57 = private constant [41 x i8] c"../drivers/media/usb/usbtv/usbtv-audio.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 46, i32 38 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @usbtv_audio_urb_received._entry, ptr @usbtv_audio_urb_received._entry_ptr, ptr @usbtv_audio_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snd_usbtv_pcm_ops, ptr @usbtv_audio_start.setup, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @usbtv_audio_stop.setup, ptr @snd_usbtv_digital_hw], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_audio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbtv_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_audio_start.setup to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_audio_urb_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtv_audio_stop.setup to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usbtv_digital_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbtv_audio_suspend(ptr noundef %usbtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_stream = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %snd_stream, i32 noundef 4) #9
  %0 = ptrtoint ptr %snd_stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %snd_stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %snd_bulk_urb = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 25
  %2 = ptrtoint ptr %snd_bulk_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_bulk_urb, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbtv_audio_resume(ptr noundef %usbtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_stream = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %snd_stream, i32 noundef 4) #9
  %0 = ptrtoint ptr %snd_stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %snd_stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %snd_bulk_urb = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 25
  %2 = ptrtoint ptr %snd_bulk_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_bulk_urb, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @usb_submit_urb(ptr noundef nonnull %3, i32 noundef 2592) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbtv_audio_init(ptr noundef %usbtv) local_unnamed_addr #0 align 64 {
entry:
  %card = alloca ptr, align 4
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #9
  %1 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !36
  %snd_trigger = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 24
  tail call void @__init_work(ptr noundef %snd_trigger, i32 noundef 0) #9
  %2 = ptrtoint ptr %snd_trigger to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %snd_trigger, align 4
  %lockdep_map = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 24, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @usbtv_audio_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry4 = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 24, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 24, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_usbtv_trigger, ptr %func, align 4
  %snd_stream = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snd_stream, i32 noundef 4) #9
  %6 = ptrtoint ptr %snd_stream to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %snd_stream, align 4
  %udev = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 1
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef -1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %usbtv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usbtv, align 8
  %driver7 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %driver7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver7, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call8 = call i32 @strscpy(ptr noundef %driver, ptr noundef %16, i32 noundef 16) #9
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 3
  %call10 = call i32 @strscpy(ptr noundef %shortname, ptr noundef nonnull @.str.1, i32 noundef 32) #9
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %busnum, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 8
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.2, i32 noundef %26, i32 noundef %28)
  %29 = ptrtoint ptr %usbtv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usbtv, align 8
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %dev16 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %dev16, align 8
  %snd = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 21
  %34 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %snd, align 8
  %call17 = call i32 @snd_pcm_new(ptr noundef %32, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end.err_crit_edge, label %if.end20

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end20:                                         ; preds = %if.end
  %35 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm, align 4
  %name21 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 7
  %call23 = call i32 @strscpy(ptr noundef %name21, ptr noundef nonnull @.str.4, i32 noundef 80) #9
  %37 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %38, i32 0, i32 11
  %40 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %usbtv, ptr %private_data, align 8
  call void @snd_pcm_set_ops(ptr noundef %38, i32 noundef 1, ptr noundef nonnull @snd_usbtv_pcm_ops) #9
  %41 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcm, align 4
  %call24 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %42, i32 noundef 1, ptr noundef null, i32 noundef 65536, i32 noundef 65536) #9
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %call25 = call i32 @snd_card_register(ptr noundef %44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end20.cleanup_crit_edge, label %if.end20.err_crit_edge

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %if.end20.err_crit_edge, %if.end.err_crit_edge
  %rv.0 = phi i32 [ %call17, %if.end.err_crit_edge ], [ %call25, %if.end20.err_crit_edge ]
  %45 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %snd, align 8
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 4
  %call29 = call i32 @snd_card_free(ptr noundef %47) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usbtv_trigger(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2540
  %snd = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_stream = getelementptr i8, ptr %work, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %snd_stream, i32 noundef 4) #9
  %2 = ptrtoint ptr %snd_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %snd_stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %snd_bulk_urb.i = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %snd_bulk_urb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %snd_bulk_urb.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then2.cleanup_crit_edge, label %if.end.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %udev.i = getelementptr i8, ptr %work, i32 -2536
  %5 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 20480, i32 noundef 3520, i32 noundef 3) #12
  %9 = ptrtoint ptr %snd_bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %snd_bulk_urb.i, align 8
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i.i.i.i, ptr %transfer_buffer.i, align 4
  %12 = load ptr, ptr %snd_bulk_urb.i, align 8
  %transfer_buffer7.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer7.i, align 4
  %cmp8.i = icmp eq ptr %14, null
  br i1 %cmp8.i, label %err_transfer_buffer.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %8, 8
  %or3.i = or i32 %shl.i.i, -1069449088
  %15 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20480, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @usbtv_audio_urb_received, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 27
  %21 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %context4.i.i, align 4
  %call15.i = tail call i32 @usbtv_set_regs(ptr noundef %add.ptr, ptr noundef nonnull @usbtv_audio_start.setup, i32 noundef 18) #9
  %22 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev.i, align 4
  %call17.i = tail call i32 @usb_clear_halt(ptr noundef %23, i32 noundef %or3.i) #9
  %24 = ptrtoint ptr %snd_bulk_urb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %snd_bulk_urb.i, align 8
  %call19.i = tail call i32 @usb_submit_urb(ptr noundef %25, i32 noundef 2592) #9
  br label %cleanup

err_transfer_buffer.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_urb(ptr noundef %12) #9
  %26 = ptrtoint ptr %snd_bulk_urb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %snd_bulk_urb.i, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %snd_bulk_urb.i9 = getelementptr i8, ptr %work, i32 44
  %27 = ptrtoint ptr %snd_bulk_urb.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %snd_bulk_urb.i9, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.else.usbtv_audio_stop.exit_crit_edge, label %if.then.i

if.else.usbtv_audio_stop.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbtv_audio_stop.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %28) #9
  %29 = ptrtoint ptr %snd_bulk_urb.i9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %snd_bulk_urb.i9, align 8
  %transfer_buffer.i10 = getelementptr inbounds %struct.urb, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %transfer_buffer.i10, align 4
  tail call void @kfree(ptr noundef %32) #9
  %33 = ptrtoint ptr %snd_bulk_urb.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %snd_bulk_urb.i9, align 8
  tail call void @usb_free_urb(ptr noundef %34) #9
  %35 = ptrtoint ptr %snd_bulk_urb.i9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %snd_bulk_urb.i9, align 8
  br label %usbtv_audio_stop.exit

usbtv_audio_stop.exit:                            ; preds = %if.then.i, %if.else.usbtv_audio_stop.exit_crit_edge
  %call.i11 = tail call i32 @usbtv_set_regs(ptr noundef %add.ptr, ptr noundef nonnull @usbtv_audio_stop.setup, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %usbtv_audio_stop.exit, %err_transfer_buffer.i, %if.end10.i, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbtv_audio_free(ptr noundef %usbtv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_trigger = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 24
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %snd_trigger) #9
  %snd = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 21
  %0 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %udev = getelementptr inbounds %struct.usbtv, ptr %usbtv, i32 0, i32 1
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @snd_card_free_when_closed(ptr noundef nonnull %1) #9
  %4 = ptrtoint ptr %snd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %snd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtv_audio_urb_received(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %snd_substream = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %snd_substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -110, label %entry.sw.epilog_crit_edge111
    i32 -2, label %entry.cleanup_crit_edge
    i32 -71, label %entry.cleanup_crit_edge112
    i32 -104, label %entry.cleanup_crit_edge113
    i32 -108, label %entry.cleanup_crit_edge114
  ]

entry.cleanup_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.epilog_crit_edge111:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.5, i32 noundef %7) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge111
  %snd_stream = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %snd_stream, i32 noundef 4) #9
  %11 = ptrtoint ptr %snd_stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %snd_stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %frame_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 21
  %13 = ptrtoint ptr %frame_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_bits, align 8
  %shr = lshr i32 %14, 3
  %div = udiv i32 240, %shr
  %snd_buffer_pos = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %snd_buffer_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %snd_buffer_pos, align 4
  %snd_period_pos = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 27
  %17 = ptrtoint ptr %snd_period_pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %snd_period_pos, align 8
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp104.not = icmp eq i32 %20, 0
  br i1 %cmp104.not, label %if.end42.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %mul12 = mul i32 %div, %shr
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %period_elapsed.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %period_elapsed.1, %if.end18.for.body_crit_edge ]
  %period_pos.0107 = phi i32 [ %18, %for.body.lr.ph ], [ %period_pos.1, %if.end18.for.body_crit_edge ]
  %buffer_pos.0106 = phi i32 [ %16, %for.body.lr.ph ], [ %spec.select, %if.end18.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %add32, %if.end18.for.body_crit_edge ]
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %i.0105
  %add = add i32 %buffer_pos.0106, %div
  %23 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp5.not = icmp ult i32 %add, %24
  br i1 %cmp5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %24, %buffer_pos.0106
  %mul = mul i32 %sub, %shr
  %25 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_area, align 4
  %mul8 = mul i32 %buffer_pos.0106, %shr
  %add.ptr9 = getelementptr i8, ptr %26, i32 %mul8
  %27 = call ptr @memcpy(ptr %add.ptr9, ptr %add.ptr4, i32 %mul)
  %28 = load ptr, ptr %dma_area, align 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr4, i32 %mul
  %sub13 = sub i32 %mul12, %mul
  %29 = call ptr @memcpy(ptr %28, ptr %add.ptr11, i32 %sub13)
  br label %if.end18

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_area, align 4
  %mul15 = mul i32 %buffer_pos.0106, %shr
  %add.ptr16 = getelementptr i8, ptr %31, i32 %mul15
  %32 = call ptr @memcpy(ptr %add.ptr16, ptr %add.ptr4, i32 %mul12)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then6
  %add20 = add i32 %period_pos.0107, %div
  %33 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %34)
  %cmp22.not = icmp ult i32 %add, %34
  %sub25 = select i1 %cmp22.not, i32 0, i32 %34
  %spec.select = sub i32 %add, %sub25
  %35 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %36)
  %cmp27.not = icmp ult i32 %add20, %36
  %sub30 = select i1 %cmp27.not, i32 0, i32 %36
  %period_pos.1 = sub i32 %add20, %sub30
  %period_elapsed.1 = select i1 %cmp27.not, i32 %period_elapsed.0108, i32 1
  %add32 = add i32 %i.0105, 256
  %37 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actual_length, align 4
  %cmp = icmp ult i32 %add32, %38
  br i1 %cmp, label %if.end18.for.body_crit_edge, label %do.body33.loopexit

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body33.loopexit:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_elapsed.1)
  %phi.cmp = icmp eq i32 %period_elapsed.1, 0
  %call35 = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef %3) #9
  %39 = ptrtoint ptr %snd_buffer_pos to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.select, ptr %snd_buffer_pos, align 4
  %40 = ptrtoint ptr %snd_period_pos to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %period_pos.1, ptr %snd_period_pos, align 8
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef %3, i32 noundef %call35) #9
  br i1 %phi.cmp, label %do.body33.loopexit.if.end42_crit_edge, label %if.then41

do.body33.loopexit.if.end42_crit_edge:            ; preds = %do.body33.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %do.body33.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @snd_pcm_period_elapsed(ptr noundef %3) #9
  br label %if.end42

if.end42.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call35.c = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef %3) #9
  %41 = ptrtoint ptr %snd_buffer_pos to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %16, ptr %snd_buffer_pos, align 4
  %42 = ptrtoint ptr %snd_period_pos to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %18, ptr %snd_period_pos, align 8
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef %3, i32 noundef %call35.c) #9
  br label %if.end42

if.end42:                                         ; preds = %if.end42.critedge, %if.then41, %do.body33.loopexit.if.end42_crit_edge
  %call43 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge112, %entry.cleanup_crit_edge113, %entry.cleanup_crit_edge114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbtv_set_regs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_pcm_stream_lock_irqsave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_usbtv_pcm_open(ptr noundef %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %snd_substream = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %snd_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %snd_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_usbtv_digital_hw, i32 64)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usbtv_pcm_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %snd_stream = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %snd_stream, i32 noundef 4) #9
  %2 = ptrtoint ptr %snd_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %snd_stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %snd_stream, i32 noundef 4) #9
  %4 = ptrtoint ptr %snd_stream to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %snd_stream, align 4
  %snd_trigger = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i6 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %snd_trigger) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_usbtv_prepare(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %snd_buffer_pos = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %snd_buffer_pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %snd_buffer_pos, align 4
  %snd_period_pos = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %snd_period_pos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %snd_period_pos, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usbtv_card_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge7
    i32 4, label %entry.sw.bb_crit_edge8
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge9
    i32 3, label %entry.sw.bb1_crit_edge10
  ]

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8
  %snd_stream = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snd_stream, i32 noundef 4) #9
  %3 = ptrtoint ptr %snd_stream to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %snd_stream, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10
  %snd_stream2 = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 23
  %call.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %snd_stream2, i32 noundef 4) #9
  %4 = ptrtoint ptr %snd_stream2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %snd_stream2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %snd_trigger = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i6 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %snd_trigger) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_usbtv_pointer(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %snd_buffer_pos = getelementptr inbounds %struct.usbtv, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %snd_buffer_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_buffer_pos, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @usbtv_audio_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 326, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 329, i32 59}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 337, i32 3}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 344, i32 25}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 348, i32 21}
!11 = !{ptr @usbtv_audio_start.setup, !12, !"setup", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 175, i32 19}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 118, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @usbtv_audio_urb_received._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @usbtv_audio_urb_received._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @usbtv_audio_stop.setup, !22, !"setup", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 233, i32 19}
!23 = !{ptr @snd_usbtv_pcm_ops, !24, !"snd_usbtv_pcm_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 312, i32 33}
!25 = !{ptr @snd_usbtv_digital_hw, !26, !"snd_usbtv_digital_hw", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/usbtv/usbtv-audio.c", i32 46, i32 38}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
