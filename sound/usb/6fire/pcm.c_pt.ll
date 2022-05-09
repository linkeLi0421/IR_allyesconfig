; ModuleID = '/llk/IR_all_yes/sound/usb/6fire/pcm.c_pt.bc'
source_filename = "../sound/usb/6fire/pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pcm_runtime = type { ptr, ptr, %struct.pcm_substream, %struct.pcm_substream, i8, [16 x %struct.pcm_urb], [16 x %struct.pcm_urb], i32, i32, i32, i32, %struct.mutex, i8, i8, %struct.wait_queue_head, i8 }
%struct.pcm_substream = type { %struct.spinlock, ptr, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pcm_urb = type { ptr, %struct.urb, [8 x %struct.usb_iso_packet_descriptor], ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sfire_chip = type { ptr, ptr, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.control_runtime = type { ptr, ptr, ptr, ptr, [32 x ptr], i8, i8, i8, i8, [6 x i8], i8, i8, [2 x i8], i8 }

@usb6fire_pcm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&rt->stream_wait_queue\00", [41 x i8] zeroinitializer }, align 32
@usb6fire_pcm_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rt->stream_mutex\00", [46 x i8] zeroinitializer }, align 32
@usb6fire_pcm_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&rt->playback.lock\00", [45 x i8] zeroinitializer }, align 32
@usb6fire_pcm_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rt->capture.lock\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMX6FireUSB\00", [20 x i8] zeroinitializer }, align 32
@usb6fire_pcm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 638, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot create pcm instance.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb6fire_pcm_init\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/usb/6fire/pcm.c\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb6fire_pcm_init._entry_ptr = internal global ptr @usb6fire_pcm_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMX 6Fire USB\00", [18 x i8] zeroinitializer }, align 32
@pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @usb6fire_pcm_open, ptr @usb6fire_pcm_close, ptr null, ptr null, ptr null, ptr @usb6fire_pcm_prepare, ptr @usb6fire_pcm_trigger, ptr null, ptr @usb6fire_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb6fire_pcm_in_urb_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.10, i32 310, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"internal error: stream disabled in in-urb handler.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb6fire_pcm_in_urb_handler\00", [36 x i8] zeroinitializer }, align 32
@usb6fire_pcm_in_urb_handler._entry_ptr = internal global ptr @usb6fire_pcm_in_urb_handler._entry, section ".printk_index", align 4
@usb6fire_pcm_playback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 259, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown sample format.\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb6fire_pcm_playback\00", [42 x i8] zeroinitializer }, align 32
@usb6fire_pcm_playback._entry_ptr = internal global ptr @usb6fire_pcm_playback._entry, section ".printk_index", align 4
@pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 1088, i32 7872, i32 44100, i32 192000, i32 1, i32 0, i32 131072, i32 4800, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rates_alsaid = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 64, i32 128, i32 512, i32 1024, i32 2048, i32 4096], [40 x i8] zeroinitializer }, align 32
@usb6fire_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.10, i32 412, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid stream type.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb6fire_pcm_open\00", [46 x i8] zeroinitializer }, align 32
@usb6fire_pcm_open._entry_ptr = internal global ptr @usb6fire_pcm_open._entry, section ".printk_index", align 4
@usb6fire_pcm_get_substream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 126, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error getting pcm substream slot.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"usb6fire_pcm_get_substream\00", [37 x i8] zeroinitializer }, align 32
@usb6fire_pcm_get_substream._entry_ptr = internal global ptr @usb6fire_pcm_get_substream._entry, section ".printk_index", align 4
@rates = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [40 x i8] zeroinitializer }, align 32
@usb6fire_pcm_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.10, i32 473, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid rate %d in prepare.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb6fire_pcm_prepare\00", [43 x i8] zeroinitializer }, align 32
@usb6fire_pcm_prepare._entry_ptr = internal global ptr @usb6fire_pcm_prepare._entry, section ".printk_index", align 4
@usb6fire_pcm_prepare._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.10, i32 486, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not start pcm stream.\0A\00", [35 x i8] zeroinitializer }, align 32
@usb6fire_pcm_prepare._entry_ptr.26 = internal global ptr @usb6fire_pcm_prepare._entry.24, section ".printk_index", align 4
@usb6fire_pcm_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.10, i32 80, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"error stopping streaming while setting samplerate %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb6fire_pcm_set_rate\00", [42 x i8] zeroinitializer }, align 32
@usb6fire_pcm_set_rate._entry_ptr = internal global ptr @usb6fire_pcm_set_rate._entry, section ".printk_index", align 4
@usb6fire_pcm_set_rate._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.10, i32 88, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error setting samplerate %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@usb6fire_pcm_set_rate._entry_ptr.31 = internal global ptr @usb6fire_pcm_set_rate._entry.29, section ".printk_index", align 4
@usb6fire_pcm_set_rate._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.10, i32 97, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"error initializing channels while setting samplerate %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@usb6fire_pcm_set_rate._entry_ptr.34 = internal global ptr @usb6fire_pcm_set_rate._entry.32, section ".printk_index", align 4
@usb6fire_pcm_set_rate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.10, i32 106, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"error starting streaming while setting samplerate %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@usb6fire_pcm_set_rate._entry_ptr.37 = internal global ptr @usb6fire_pcm_set_rate._entry.35, section ".printk_index", align 4
@rates_in_packet_size = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 228, i32 228, i32 420, i32 420, i32 404, i32 404], [40 x i8] zeroinitializer }, align 32
@rates_out_packet_size = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 228, i32 228, i32 420, i32 420, i32 604, i32 604], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 618, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 619, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 621, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 622, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 634, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 638, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 643, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant [8 x i8] c"pcm_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 542, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 309, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 259, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"pcm_hw\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 43, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"rates_alsaid\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 27, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 412, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 126, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 26, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 471, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 485, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 78, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 86, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 95, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 104, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [21 x i8] c"rates_in_packet_size\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 24, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant [22 x i8] c"rates_out_packet_size\00", align 1
@___asan_gen_.187 = private constant [25 x i8] c"../sound/usb/6fire/pcm.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 25, i32 18 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @usb6fire_pcm_get_substream._entry, ptr @usb6fire_pcm_get_substream._entry_ptr, ptr @usb6fire_pcm_in_urb_handler._entry, ptr @usb6fire_pcm_in_urb_handler._entry_ptr, ptr @usb6fire_pcm_init._entry, ptr @usb6fire_pcm_init._entry_ptr, ptr @usb6fire_pcm_open._entry, ptr @usb6fire_pcm_open._entry_ptr, ptr @usb6fire_pcm_playback._entry, ptr @usb6fire_pcm_playback._entry_ptr, ptr @usb6fire_pcm_prepare._entry, ptr @usb6fire_pcm_prepare._entry.24, ptr @usb6fire_pcm_prepare._entry_ptr, ptr @usb6fire_pcm_prepare._entry_ptr.26, ptr @usb6fire_pcm_set_rate._entry, ptr @usb6fire_pcm_set_rate._entry.29, ptr @usb6fire_pcm_set_rate._entry.32, ptr @usb6fire_pcm_set_rate._entry.35, ptr @usb6fire_pcm_set_rate._entry_ptr, ptr @usb6fire_pcm_set_rate._entry_ptr.31, ptr @usb6fire_pcm_set_rate._entry_ptr.34, ptr @usb6fire_pcm_set_rate._entry_ptr.37, ptr @usb6fire_pcm_init.__key, ptr @.str, ptr @usb6fire_pcm_init.__key.1, ptr @.str.2, ptr @usb6fire_pcm_init.__key.3, ptr @.str.4, ptr @usb6fire_pcm_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pcm_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @pcm_hw, ptr @rates_alsaid, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rates, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @rates_in_packet_size, ptr @rates_out_packet_size], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_in_urb_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_playback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_alsaid to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_get_substream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_prepare._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_set_rate._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_set_rate._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_pcm_set_rate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_in_packet_size to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates_out_packet_size to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb6fire_pcm_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !91
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8748, i32 noundef 3520, i32 noundef 2) #9
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end4, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4832) #10
  %buffer.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.022.i, i32 3
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i.i, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.if.then3_crit_edge, label %if.end.i

for.body.i.if.then3_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i21.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4832) #10
  %buffer6.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.022.i, i32 3
  %4 = ptrtoint ptr %buffer6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i21.i, ptr %buffer6.i, align 4
  %tobool10.not.i = icmp eq ptr %call7.i.i.i21.i, null
  br i1 %tobool10.not.i, label %if.end.i.if.then3_crit_edge, label %for.cond.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %if.end.i.if.then3_crit_edge, %for.body.i.if.then3_crit_edge
  tail call fastcc void @usb6fire_pcm_buffers_destroy(ptr noundef nonnull %call1.i.i.i)
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #6
  br label %cleanup

if.end4:                                          ; preds = %for.cond.i
  %5 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %call1.i.i.i, align 4096
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 12
  %6 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stream_state, align 16
  %rate = getelementptr inbounds %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %rate, align 1
  %stream_wait_queue = getelementptr inbounds %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %stream_wait_queue, ptr noundef nonnull @.str, ptr noundef nonnull @usb6fire_pcm_init.__key) #6
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %stream_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @usb6fire_pcm_init.__key.1) #6
  %playback = getelementptr inbounds %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %playback, ptr noundef nonnull @.str.4, ptr noundef nonnull @usb6fire_pcm_init.__key.3, i16 noundef signext 3) #6
  %capture = getelementptr inbounds %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %capture, ptr noundef nonnull @.str.6, ptr noundef nonnull @usb6fire_pcm_init.__key.5, i16 noundef signext 3) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4
  %i.096 = phi i32 [ 0, %if.end4 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chip, ptr %arrayidx, align 4
  %instance.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1
  tail call void @usb_init_urb(ptr noundef %instance.i) #6
  %buffer.i78 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 3
  %9 = ptrtoint ptr %buffer.i78 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer.i78, align 4
  %transfer_buffer.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 14
  %11 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %transfer_buffer.i, align 8
  %transfer_buffer_length.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4832, ptr %transfer_buffer_length.i, align 4
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %dev5.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 8
  %15 = ptrtoint ptr %dev5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev5.i, align 8
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %17, 8
  %or7.i = or i32 %shl.i.i, 65664
  %pipe.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 10
  %18 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or7.i, ptr %pipe.i, align 8
  %interval.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 25
  %19 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %interval.i, align 4
  %complete.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @usb6fire_pcm_in_urb_handler, ptr %complete.i, align 8
  %context.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 27
  %21 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %context.i, align 4
  %number_of_packets.i = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 1, i32 24
  %22 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %number_of_packets.i, align 8
  %arrayidx18 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %chip, ptr %arrayidx18, align 4
  %instance.i79 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1
  tail call void @usb_init_urb(ptr noundef %instance.i79) #6
  %buffer.i80 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 3
  %24 = ptrtoint ptr %buffer.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.i80, align 4
  %transfer_buffer.i81 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 14
  %26 = ptrtoint ptr %transfer_buffer.i81 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %transfer_buffer.i81, align 8
  %transfer_buffer_length.i82 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 19
  %27 = ptrtoint ptr %transfer_buffer_length.i82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4832, ptr %transfer_buffer_length.i82, align 4
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 4
  %dev5.i83 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 8
  %30 = ptrtoint ptr %dev5.i83 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dev5.i83, align 8
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %29, align 8
  %shl.i.i84 = shl i32 %32, 8
  %or.i.i85 = or i32 %shl.i.i84, 196608
  %pipe.i88 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 10
  %33 = ptrtoint ptr %pipe.i88 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i85, ptr %pipe.i88, align 8
  %interval.i89 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 25
  %34 = ptrtoint ptr %interval.i89 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %interval.i89, align 4
  %complete.i90 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 28
  %35 = ptrtoint ptr %complete.i90 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @usb6fire_pcm_out_urb_handler, ptr %complete.i90, align 8
  %context.i91 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 27
  %36 = ptrtoint ptr %context.i91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx18, ptr %context.i91, align 4
  %number_of_packets.i92 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 1, i32 24
  %37 = ptrtoint ptr %number_of_packets.i92 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %number_of_packets.i92, align 8
  %peer = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 5, i32 %i.096, i32 4
  %38 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx18, ptr %peer, align 8
  %peer27 = getelementptr %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 6, i32 %i.096, i32 4
  %39 = ptrtoint ptr %peer27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx, ptr %peer27, align 8
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %card = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 1
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %call28 = call i32 @snd_pcm_new(ptr noundef %41, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @usb6fire_pcm_buffers_destroy(ptr noundef nonnull %call1.i.i.i)
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #6
  %42 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chip, align 4
  %dev34 = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call1.i.i.i, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %45, i32 0, i32 7
  %47 = call ptr @memcpy(ptr %name, ptr @.str.13, i32 14)
  call void @snd_pcm_set_ops(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @pcm_ops) #6
  %48 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %49, i32 noundef 1, ptr noundef nonnull @pcm_ops) #6
  %50 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcm, align 4
  %call37 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %51, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %52 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcm, align 4
  %instance = getelementptr inbounds %struct.pcm_runtime, ptr %call1.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %instance, align 4
  %pcm38 = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 6
  %55 = ptrtoint ptr %pcm38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call1.i.i.i, ptr %pcm38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then30, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ %call28, %if.then30 ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb6fire_pcm_buffers_destroy(ptr nocapture noundef readonly %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 0, i32 3
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %1) #6
  %buffer2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 0, i32 3
  %2 = ptrtoint ptr %buffer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer2, align 4
  tail call void @kfree(ptr noundef %3) #6
  %buffer.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 1, i32 3
  %4 = ptrtoint ptr %buffer.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.1, align 4
  tail call void @kfree(ptr noundef %5) #6
  %buffer2.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 1, i32 3
  %6 = ptrtoint ptr %buffer2.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer2.1, align 4
  tail call void @kfree(ptr noundef %7) #6
  %buffer.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 2, i32 3
  %8 = ptrtoint ptr %buffer.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.2, align 4
  tail call void @kfree(ptr noundef %9) #6
  %buffer2.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 2, i32 3
  %10 = ptrtoint ptr %buffer2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer2.2, align 4
  tail call void @kfree(ptr noundef %11) #6
  %buffer.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 3, i32 3
  %12 = ptrtoint ptr %buffer.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer.3, align 4
  tail call void @kfree(ptr noundef %13) #6
  %buffer2.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 3, i32 3
  %14 = ptrtoint ptr %buffer2.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer2.3, align 4
  tail call void @kfree(ptr noundef %15) #6
  %buffer.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 4, i32 3
  %16 = ptrtoint ptr %buffer.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer.4, align 4
  tail call void @kfree(ptr noundef %17) #6
  %buffer2.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 4, i32 3
  %18 = ptrtoint ptr %buffer2.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer2.4, align 4
  tail call void @kfree(ptr noundef %19) #6
  %buffer.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 5, i32 3
  %20 = ptrtoint ptr %buffer.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer.5, align 4
  tail call void @kfree(ptr noundef %21) #6
  %buffer2.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 5, i32 3
  %22 = ptrtoint ptr %buffer2.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer2.5, align 4
  tail call void @kfree(ptr noundef %23) #6
  %buffer.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 6, i32 3
  %24 = ptrtoint ptr %buffer.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.6, align 4
  tail call void @kfree(ptr noundef %25) #6
  %buffer2.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 6, i32 3
  %26 = ptrtoint ptr %buffer2.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer2.6, align 4
  tail call void @kfree(ptr noundef %27) #6
  %buffer.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 7, i32 3
  %28 = ptrtoint ptr %buffer.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer.7, align 4
  tail call void @kfree(ptr noundef %29) #6
  %buffer2.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 7, i32 3
  %30 = ptrtoint ptr %buffer2.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer2.7, align 4
  tail call void @kfree(ptr noundef %31) #6
  %buffer.8 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 8, i32 3
  %32 = ptrtoint ptr %buffer.8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buffer.8, align 4
  tail call void @kfree(ptr noundef %33) #6
  %buffer2.8 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 8, i32 3
  %34 = ptrtoint ptr %buffer2.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer2.8, align 4
  tail call void @kfree(ptr noundef %35) #6
  %buffer.9 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 9, i32 3
  %36 = ptrtoint ptr %buffer.9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer.9, align 4
  tail call void @kfree(ptr noundef %37) #6
  %buffer2.9 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 9, i32 3
  %38 = ptrtoint ptr %buffer2.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer2.9, align 4
  tail call void @kfree(ptr noundef %39) #6
  %buffer.10 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 10, i32 3
  %40 = ptrtoint ptr %buffer.10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer.10, align 4
  tail call void @kfree(ptr noundef %41) #6
  %buffer2.10 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 10, i32 3
  %42 = ptrtoint ptr %buffer2.10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer2.10, align 4
  tail call void @kfree(ptr noundef %43) #6
  %buffer.11 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 11, i32 3
  %44 = ptrtoint ptr %buffer.11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer.11, align 4
  tail call void @kfree(ptr noundef %45) #6
  %buffer2.11 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 11, i32 3
  %46 = ptrtoint ptr %buffer2.11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer2.11, align 4
  tail call void @kfree(ptr noundef %47) #6
  %buffer.12 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 12, i32 3
  %48 = ptrtoint ptr %buffer.12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer.12, align 4
  tail call void @kfree(ptr noundef %49) #6
  %buffer2.12 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 12, i32 3
  %50 = ptrtoint ptr %buffer2.12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer2.12, align 4
  tail call void @kfree(ptr noundef %51) #6
  %buffer.13 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 13, i32 3
  %52 = ptrtoint ptr %buffer.13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer.13, align 4
  tail call void @kfree(ptr noundef %53) #6
  %buffer2.13 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 13, i32 3
  %54 = ptrtoint ptr %buffer2.13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer2.13, align 4
  tail call void @kfree(ptr noundef %55) #6
  %buffer.14 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 14, i32 3
  %56 = ptrtoint ptr %buffer.14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buffer.14, align 4
  tail call void @kfree(ptr noundef %57) #6
  %buffer2.14 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 14, i32 3
  %58 = ptrtoint ptr %buffer2.14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buffer2.14, align 4
  tail call void @kfree(ptr noundef %59) #6
  %buffer.15 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 15, i32 3
  %60 = ptrtoint ptr %buffer.15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer.15, align 4
  tail call void @kfree(ptr noundef %61) #6
  %buffer2.15 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 15, i32 3
  %62 = ptrtoint ptr %buffer2.15 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer2.15, align 4
  tail call void @kfree(ptr noundef %63) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_pcm_in_urb_handler(ptr nocapture noundef readonly %usb_urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %usb_urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %peer = getelementptr inbounds %struct.pcm_urb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %pcm = getelementptr inbounds %struct.sfire_chip, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcm, align 4
  %status = getelementptr inbounds %struct.urb, ptr %usb_urb, i32 0, i32 12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %panic, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp = icmp eq i8 %13, 3
  br i1 %cmp, label %lor.lhs.false2.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false2
  %status6 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 0, i32 3
  %14 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.preheader.if.then8_crit_edge

for.body.preheader.if.then8_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond:                                         ; preds = %for.body.preheader
  %status6.1 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 1, i32 3
  %16 = ptrtoint ptr %status6.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status6.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.1 = icmp eq i32 %17, 0
  br i1 %tobool7.not.1, label %for.cond.1, label %for.cond.if.then8_crit_edge

for.cond.if.then8_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond.1:                                       ; preds = %for.cond
  %status6.2 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 2, i32 3
  %18 = ptrtoint ptr %status6.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status6.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not.2 = icmp eq i32 %19, 0
  br i1 %tobool7.not.2, label %for.cond.2, label %for.cond.1.if.then8_crit_edge

for.cond.1.if.then8_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond.2:                                       ; preds = %for.cond.1
  %status6.3 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 3, i32 3
  %20 = ptrtoint ptr %status6.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status6.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.3 = icmp eq i32 %21, 0
  br i1 %tobool7.not.3, label %for.cond.3, label %for.cond.2.if.then8_crit_edge

for.cond.2.if.then8_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond.3:                                       ; preds = %for.cond.2
  %status6.4 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 4, i32 3
  %22 = ptrtoint ptr %status6.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status6.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not.4 = icmp eq i32 %23, 0
  br i1 %tobool7.not.4, label %for.cond.4, label %for.cond.3.if.then8_crit_edge

for.cond.3.if.then8_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond.4:                                       ; preds = %for.cond.3
  %status6.5 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 5, i32 3
  %24 = ptrtoint ptr %status6.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status6.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool7.not.5 = icmp eq i32 %25, 0
  br i1 %tobool7.not.5, label %for.cond.5, label %for.cond.4.if.then8_crit_edge

for.cond.4.if.then8_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond.5:                                       ; preds = %for.cond.4
  %status6.6 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 6, i32 3
  %26 = ptrtoint ptr %status6.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status6.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not.6 = icmp eq i32 %27, 0
  br i1 %tobool7.not.6, label %for.cond.6, label %for.cond.5.if.then8_crit_edge

for.cond.5.if.then8_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond.6:                                       ; preds = %for.cond.5
  %status6.7 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 7, i32 3
  %28 = ptrtoint ptr %status6.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status6.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not.7 = icmp eq i32 %29, 0
  br i1 %tobool7.not.7, label %for.cond.7, label %for.cond.6.if.then8_crit_edge

for.cond.6.if.then8_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13 = icmp eq i8 %13, 0
  br i1 %cmp13, label %do.end, label %if.end18

if.then8:                                         ; preds = %for.cond.6.if.then8_crit_edge, %for.cond.5.if.then8_crit_edge, %for.cond.4.if.then8_crit_edge, %for.cond.3.if.then8_crit_edge, %for.cond.2.if.then8_crit_edge, %for.cond.1.if.then8_crit_edge, %for.cond.if.then8_crit_edge, %for.body.preheader.if.then8_crit_edge
  %30 = ptrtoint ptr %panic to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %panic, align 4
  br label %cleanup

do.end:                                           ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end18:                                         ; preds = %for.cond.7
  %capture = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 3
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %capture) #6
  %active = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %active, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool28.not = icmp eq i8 %36, 0
  br i1 %tobool28.not, label %if.else41, label %if.then29

if.then29:                                        ; preds = %if.end18
  %instance.i = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %instance.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %38, i32 0, i32 11
  %41 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 50
  %43 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_area.i, align 4
  %dma_off.i = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %dma_off.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_off.i, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 21
  %47 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frame_bits.i, align 8
  %shr.i = lshr i32 %48, 3
  %mul.i = mul i32 %shr.i, %46
  %add.ptr.i = getelementptr i8, ptr %44, i32 %mul.i
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 18
  %49 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buffer_size.i, align 4
  %mul5.i = mul i32 %50, %shr.i
  %add.ptr6.i = getelementptr i8, ptr %44, i32 %mul5.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 15
  %51 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channels.i, align 8
  %shl.i = shl i32 %52, 2
  %in_n_analog.i = getelementptr inbounds %struct.pcm_runtime, ptr %40, i32 0, i32 9
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 12
  %buffer20.i = getelementptr inbounds %struct.pcm_urb, ptr %1, i32 0, i32 3
  %period_off.i = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 3, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc43.i.for.body.i_crit_edge, %if.then29
  %dest.092.i = phi ptr [ %add.ptr.i, %if.then29 ], [ %dest.1.lcssa.i, %for.inc43.i.for.body.i_crit_edge ]
  %total_length.091.i = phi i32 [ 0, %if.then29 ], [ %add.i, %for.inc43.i.for.body.i_crit_edge ]
  %i.090.i = phi i32 [ 0, %if.then29 ], [ %inc44.i, %for.inc43.i.for.body.i_crit_edge ]
  %actual_length.i = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 %i.090.i, i32 2
  %53 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp7.i = icmp ugt i32 %54, 4
  br i1 %cmp7.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub11.i = add i32 %54, -4
  %55 = ptrtoint ptr %in_n_analog.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %in_n_analog.i, align 4
  %shl12.i = shl i32 %56, 2
  %div.i = udiv i32 %sub11.i, %shl12.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %frame_count.0.i = phi i32 [ %div.i, %if.then.i ], [ 0, %for.body.i.if.end.i_crit_edge ]
  %57 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %format.i, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %58, label %if.end.i.usb6fire_pcm_capture.exit_crit_edge [
    i32 6, label %if.then14.i
    i32 10, label %if.then19.i
  ]

if.end.i.usb6fire_pcm_capture.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb6fire_pcm_capture.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %buffer20.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer20.i, align 4
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %buffer20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer20.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %63, i32 -1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %if.then14.i
  %.pn.i = phi ptr [ %61, %if.then14.i ], [ %add.ptr21.i, %if.then19.i ]
  %length.i = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 %i.090.i, i32 1
  %64 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i, align 4
  %add.i = add i32 %65, %total_length.091.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_count.0.i)
  %cmp2986.i = icmp sgt i32 %frame_count.0.i, 0
  br i1 %cmp2986.i, label %for.body30.preheader.i, label %if.end25.i.for.inc43.i_crit_edge

if.end25.i.for.inc43.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43.i

for.body30.preheader.i:                           ; preds = %if.end25.i
  %src.0.i = getelementptr i8, ptr %.pn.i, i32 %total_length.091.i
  %incdec.ptr.i = getelementptr i32, ptr %src.0.i, i32 1
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.inc.i.for.body30.i_crit_edge, %for.body30.preheader.i
  %dest.189.i = phi ptr [ %dest.2.i, %for.inc.i.for.body30.i_crit_edge ], [ %dest.092.i, %for.body30.preheader.i ]
  %src.188.i = phi ptr [ %add.ptr34.i, %for.inc.i.for.body30.i_crit_edge ], [ %incdec.ptr.i, %for.body30.preheader.i ]
  %frame.087.i = phi i32 [ %inc42.i, %for.inc.i.for.body30.i_crit_edge ], [ 0, %for.body30.preheader.i ]
  %66 = call ptr @memcpy(ptr %dest.189.i, ptr %src.188.i, i32 %shl.i)
  %67 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channels.i, align 8
  %add.ptr32.i = getelementptr i32, ptr %dest.189.i, i32 %68
  %69 = ptrtoint ptr %in_n_analog.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %in_n_analog.i, align 4
  %add.ptr34.i = getelementptr i32, ptr %src.188.i, i32 %70
  %71 = ptrtoint ptr %dma_off.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_off.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %dma_off.i, align 4
  %73 = ptrtoint ptr %period_off.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %period_off.i, align 4
  %inc36.i = add i32 %74, 1
  store i32 %inc36.i, ptr %period_off.i, align 4
  %cmp37.i = icmp eq ptr %add.ptr32.i, %add.ptr6.i
  br i1 %cmp37.i, label %if.then38.i, label %for.body30.i.for.inc.i_crit_edge

for.body30.i.for.inc.i_crit_edge:                 ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then38.i:                                      ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %dma_off.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %dma_off.i, align 4
  %76 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dma_area.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then38.i, %for.body30.i.for.inc.i_crit_edge
  %dest.2.i = phi ptr [ %77, %if.then38.i ], [ %add.ptr32.i, %for.body30.i.for.inc.i_crit_edge ]
  %inc42.i = add nuw nsw i32 %frame.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc42.i, %frame_count.0.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc43.i_crit_edge, label %for.inc.i.for.body30.i_crit_edge

for.inc.i.for.body30.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.i

for.inc.i.for.inc43.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43.i

for.inc43.i:                                      ; preds = %for.inc.i.for.inc43.i_crit_edge, %if.end25.i.for.inc43.i_crit_edge
  %dest.1.lcssa.i = phi ptr [ %dest.092.i, %if.end25.i.for.inc43.i_crit_edge ], [ %dest.2.i, %for.inc.i.for.inc43.i_crit_edge ]
  %inc44.i = add nuw nsw i32 %i.090.i, 1
  %exitcond93.not.i = icmp eq i32 %inc44.i, 8
  br i1 %exitcond93.not.i, label %for.inc43.i.usb6fire_pcm_capture.exit_crit_edge, label %for.inc43.i.for.body.i_crit_edge

for.inc43.i.for.body.i_crit_edge:                 ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc43.i.usb6fire_pcm_capture.exit_crit_edge:  ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb6fire_pcm_capture.exit

usb6fire_pcm_capture.exit:                        ; preds = %for.inc43.i.usb6fire_pcm_capture.exit_crit_edge, %if.end.i.usb6fire_pcm_capture.exit_crit_edge
  %78 = ptrtoint ptr %period_off.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %period_off.i, align 4
  %80 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %instance.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %runtime, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %85)
  %cmp30.not = icmp ult i32 %79, %85
  br i1 %cmp30.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %usb6fire_pcm_capture.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rem = urem i32 %79, %85
  %86 = ptrtoint ptr %period_off.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %rem, ptr %period_off.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %capture, i32 noundef %call23) #6
  %87 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %instance.i, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %88) #6
  br label %if.end43

if.else:                                          ; preds = %usb6fire_pcm_capture.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %capture, i32 noundef %call23) #6
  br label %if.end43

if.else41:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %capture, i32 noundef %call23) #6
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.else, %if.then32
  %in_n_analog = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 9
  %out_n_analog = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 10
  %arrayidx49 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 0
  %89 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx49, align 4
  %actual_length = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 0, i32 2
  %90 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %actual_length, align 4
  %sub52 = add i32 %91, -4
  %92 = ptrtoint ptr %in_n_analog to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %in_n_analog, align 4
  %shl = shl i32 %93, 2
  %div = udiv i32 %sub52, %shl
  %94 = ptrtoint ptr %out_n_analog to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %out_n_analog, align 4
  %shl53 = shl i32 %div, 2
  %mul = mul i32 %shl53, %95
  %add = add i32 %mul, 4
  %length = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 0, i32 1
  %96 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add, ptr %length, align 4
  %status58 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 0, i32 3
  %97 = ptrtoint ptr %status58 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %status58, align 4
  %arrayidx49.1 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 1
  %98 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add, ptr %arrayidx49.1, align 4
  %actual_length.1 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 1, i32 2
  %99 = ptrtoint ptr %actual_length.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %actual_length.1, align 4
  %sub52.1 = add i32 %100, -4
  %101 = load i32, ptr %in_n_analog, align 4
  %shl.1 = shl i32 %101, 2
  %div.1 = udiv i32 %sub52.1, %shl.1
  %102 = load i32, ptr %out_n_analog, align 4
  %shl53.1 = shl i32 %div.1, 2
  %mul.1 = mul i32 %shl53.1, %102
  %add.1 = add i32 %mul.1, 4
  %length.1 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 1, i32 1
  %103 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add.1, ptr %length.1, align 4
  %status58.1 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 1, i32 3
  %104 = ptrtoint ptr %status58.1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %status58.1, align 4
  %add62.1 = add i32 %add.1, %add
  %arrayidx49.2 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 2
  %105 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add62.1, ptr %arrayidx49.2, align 4
  %actual_length.2 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 2, i32 2
  %106 = ptrtoint ptr %actual_length.2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %actual_length.2, align 4
  %sub52.2 = add i32 %107, -4
  %108 = load i32, ptr %in_n_analog, align 4
  %shl.2 = shl i32 %108, 2
  %div.2 = udiv i32 %sub52.2, %shl.2
  %109 = load i32, ptr %out_n_analog, align 4
  %shl53.2 = shl i32 %div.2, 2
  %mul.2 = mul i32 %shl53.2, %109
  %add.2 = add i32 %mul.2, 4
  %length.2 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 2, i32 1
  %110 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add.2, ptr %length.2, align 4
  %status58.2 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 2, i32 3
  %111 = ptrtoint ptr %status58.2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %status58.2, align 4
  %add62.2 = add i32 %add.2, %add62.1
  %arrayidx49.3 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 3
  %112 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add62.2, ptr %arrayidx49.3, align 4
  %actual_length.3 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 3, i32 2
  %113 = ptrtoint ptr %actual_length.3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %actual_length.3, align 4
  %sub52.3 = add i32 %114, -4
  %115 = load i32, ptr %in_n_analog, align 4
  %shl.3 = shl i32 %115, 2
  %div.3 = udiv i32 %sub52.3, %shl.3
  %116 = load i32, ptr %out_n_analog, align 4
  %shl53.3 = shl i32 %div.3, 2
  %mul.3 = mul i32 %shl53.3, %116
  %add.3 = add i32 %mul.3, 4
  %length.3 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 3, i32 1
  %117 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add.3, ptr %length.3, align 4
  %status58.3 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 3, i32 3
  %118 = ptrtoint ptr %status58.3 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %status58.3, align 4
  %add62.3 = add i32 %add.3, %add62.2
  %arrayidx49.4 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 4
  %119 = ptrtoint ptr %arrayidx49.4 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add62.3, ptr %arrayidx49.4, align 4
  %actual_length.4 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 4, i32 2
  %120 = ptrtoint ptr %actual_length.4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %actual_length.4, align 4
  %sub52.4 = add i32 %121, -4
  %122 = load i32, ptr %in_n_analog, align 4
  %shl.4 = shl i32 %122, 2
  %div.4 = udiv i32 %sub52.4, %shl.4
  %123 = load i32, ptr %out_n_analog, align 4
  %shl53.4 = shl i32 %div.4, 2
  %mul.4 = mul i32 %shl53.4, %123
  %add.4 = add i32 %mul.4, 4
  %length.4 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 4, i32 1
  %124 = ptrtoint ptr %length.4 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add.4, ptr %length.4, align 4
  %status58.4 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 4, i32 3
  %125 = ptrtoint ptr %status58.4 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %status58.4, align 4
  %add62.4 = add i32 %add.4, %add62.3
  %arrayidx49.5 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 5
  %126 = ptrtoint ptr %arrayidx49.5 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add62.4, ptr %arrayidx49.5, align 4
  %actual_length.5 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 5, i32 2
  %127 = ptrtoint ptr %actual_length.5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %actual_length.5, align 4
  %sub52.5 = add i32 %128, -4
  %129 = load i32, ptr %in_n_analog, align 4
  %shl.5 = shl i32 %129, 2
  %div.5 = udiv i32 %sub52.5, %shl.5
  %130 = load i32, ptr %out_n_analog, align 4
  %shl53.5 = shl i32 %div.5, 2
  %mul.5 = mul i32 %shl53.5, %130
  %add.5 = add i32 %mul.5, 4
  %length.5 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 5, i32 1
  %131 = ptrtoint ptr %length.5 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add.5, ptr %length.5, align 4
  %status58.5 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 5, i32 3
  %132 = ptrtoint ptr %status58.5 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %status58.5, align 4
  %add62.5 = add i32 %add.5, %add62.4
  %arrayidx49.6 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 6
  %133 = ptrtoint ptr %arrayidx49.6 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add62.5, ptr %arrayidx49.6, align 4
  %actual_length.6 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 6, i32 2
  %134 = ptrtoint ptr %actual_length.6 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %actual_length.6, align 4
  %sub52.6 = add i32 %135, -4
  %136 = load i32, ptr %in_n_analog, align 4
  %shl.6 = shl i32 %136, 2
  %div.6 = udiv i32 %sub52.6, %shl.6
  %137 = load i32, ptr %out_n_analog, align 4
  %shl53.6 = shl i32 %div.6, 2
  %mul.6 = mul i32 %shl53.6, %137
  %add.6 = add i32 %mul.6, 4
  %length.6 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 6, i32 1
  %138 = ptrtoint ptr %length.6 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %add.6, ptr %length.6, align 4
  %status58.6 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 6, i32 3
  %139 = ptrtoint ptr %status58.6 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %status58.6, align 4
  %add62.6 = add i32 %add.6, %add62.5
  %arrayidx49.7 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 7
  %140 = ptrtoint ptr %arrayidx49.7 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add62.6, ptr %arrayidx49.7, align 4
  %actual_length.7 = getelementptr %struct.pcm_urb, ptr %1, i32 0, i32 2, i32 7, i32 2
  %141 = ptrtoint ptr %actual_length.7 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %actual_length.7, align 4
  %sub52.7 = add i32 %142, -4
  %143 = load i32, ptr %in_n_analog, align 4
  %shl.7 = shl i32 %143, 2
  %div.7 = udiv i32 %sub52.7, %shl.7
  %144 = load i32, ptr %out_n_analog, align 4
  %shl53.7 = shl i32 %div.7, 2
  %mul.7 = mul i32 %shl53.7, %144
  %add.7 = add i32 %mul.7, 4
  %length.7 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 7, i32 1
  %145 = ptrtoint ptr %length.7 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add.7, ptr %length.7, align 4
  %status58.7 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 7, i32 3
  %146 = ptrtoint ptr %status58.7 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %status58.7, align 4
  %add62.7 = add i32 %add.7, %add62.6
  %buffer = getelementptr inbounds %struct.pcm_urb, ptr %3, i32 0, i32 3
  %147 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %buffer, align 4
  %149 = call ptr @memset(ptr %148, i32 0, i32 %add62.7)
  %playback = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 2
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %playback) #6
  %active80 = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 2, i32 2
  %150 = ptrtoint ptr %active80 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %active80, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool81.not = icmp eq i8 %151, 0
  br i1 %tobool81.not, label %if.else100, label %if.then82

if.then82:                                        ; preds = %if.end43
  %instance.i237 = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 2, i32 1
  %152 = ptrtoint ptr %instance.i237 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %instance.i237, align 4
  %private_data.i238 = getelementptr inbounds %struct.snd_pcm_substream, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %private_data.i238 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %private_data.i238, align 4
  %runtime.i239 = getelementptr inbounds %struct.snd_pcm_substream, ptr %153, i32 0, i32 11
  %156 = ptrtoint ptr %runtime.i239 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %runtime.i239, align 4
  %dma_area.i240 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %157, i32 0, i32 50
  %158 = ptrtoint ptr %dma_area.i240 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dma_area.i240, align 4
  %dma_off.i241 = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 2, i32 3
  %160 = ptrtoint ptr %dma_off.i241 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dma_off.i241, align 4
  %frame_bits.i242 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %157, i32 0, i32 21
  %162 = ptrtoint ptr %frame_bits.i242 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %frame_bits.i242, align 8
  %shr.i243 = lshr i32 %163, 3
  %mul.i244 = mul i32 %shr.i243, %161
  %add.ptr.i245 = getelementptr i8, ptr %159, i32 %mul.i244
  %buffer_size.i246 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %157, i32 0, i32 18
  %164 = ptrtoint ptr %buffer_size.i246 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %buffer_size.i246, align 4
  %mul5.i247 = mul i32 %165, %shr.i243
  %add.ptr6.i248 = getelementptr i8, ptr %159, i32 %mul5.i247
  %channels.i249 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %157, i32 0, i32 15
  %166 = ptrtoint ptr %channels.i249 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %channels.i249, align 8
  %shl.i250 = shl i32 %167, 2
  %format.i251 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %157, i32 0, i32 12
  %168 = ptrtoint ptr %format.i251 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %format.i251, align 4
  %170 = zext i32 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %169, label %do.end.i [
    i32 10, label %if.then.i252
    i32 6, label %if.then10.i
  ]

if.then.i252:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %buffer, align 4
  %add.ptr7.i = getelementptr i8, ptr %172, i32 -1
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %173 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %buffer, align 4
  br label %if.end14.i

do.end.i:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %175 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %155, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %178, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.16) #11
  br label %usb6fire_pcm_playback.exit

if.end14.i:                                       ; preds = %if.then10.i, %if.then.i252
  %dest.0.i = phi ptr [ %add.ptr7.i, %if.then.i252 ], [ %174, %if.then10.i ]
  %out_n_analog.i = getelementptr inbounds %struct.pcm_runtime, ptr %155, i32 0, i32 10
  %period_off.i253 = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 2, i32 4
  br label %for.body.i255

for.body.i255:                                    ; preds = %for.inc40.i.for.body.i255_crit_edge, %if.end14.i
  %dest.186.i = phi ptr [ %dest.0.i, %if.end14.i ], [ %dest.2.lcssa.i, %for.inc40.i.for.body.i255_crit_edge ]
  %src.085.i = phi ptr [ %add.ptr.i245, %if.end14.i ], [ %src.1.lcssa.i, %for.inc40.i.for.body.i255_crit_edge ]
  %i.084.i = phi i32 [ 0, %if.end14.i ], [ %inc41.i, %for.inc40.i.for.body.i255_crit_edge ]
  %length.i254 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 %i.084.i, i32 1
  %179 = ptrtoint ptr %length.i254 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %length.i254, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %180)
  %cmp16.i = icmp ugt i32 %180, 4
  br i1 %cmp16.i, label %if.end24.i, label %if.end24.thread.i

if.end24.thread.i:                                ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr89.i = getelementptr i32, ptr %dest.186.i, i32 1
  br label %for.inc40.i

if.end24.i:                                       ; preds = %for.body.i255
  %sub21.i = add i32 %180, -4
  %181 = ptrtoint ptr %out_n_analog.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %out_n_analog.i, align 4
  %shl22.i = shl i32 %182, 2
  %div.i256 = udiv i32 %sub21.i, %shl22.i
  %incdec.ptr.i257 = getelementptr i32, ptr %dest.186.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i256)
  %cmp2679.i = icmp sgt i32 %div.i256, 0
  br i1 %cmp2679.i, label %if.end24.i.for.body27.i_crit_edge, label %if.end24.i.for.inc40.i_crit_edge

if.end24.i.for.inc40.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40.i

if.end24.i.for.body27.i_crit_edge:                ; preds = %if.end24.i
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.inc.i260.for.body27.i_crit_edge, %if.end24.i.for.body27.i_crit_edge
  %dest.282.i = phi ptr [ %add.ptr31.i, %for.inc.i260.for.body27.i_crit_edge ], [ %incdec.ptr.i257, %if.end24.i.for.body27.i_crit_edge ]
  %src.181.i = phi ptr [ %src.2.i, %for.inc.i260.for.body27.i_crit_edge ], [ %src.085.i, %if.end24.i.for.body27.i_crit_edge ]
  %frame.080.i = phi i32 [ %inc39.i, %for.inc.i260.for.body27.i_crit_edge ], [ 0, %if.end24.i.for.body27.i_crit_edge ]
  %183 = call ptr @memcpy(ptr %dest.282.i, ptr %src.181.i, i32 %shl.i250)
  %184 = ptrtoint ptr %channels.i249 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %channels.i249, align 8
  %add.ptr29.i = getelementptr i32, ptr %src.181.i, i32 %185
  %186 = ptrtoint ptr %out_n_analog.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %out_n_analog.i, align 4
  %add.ptr31.i = getelementptr i32, ptr %dest.282.i, i32 %187
  %188 = ptrtoint ptr %dma_off.i241 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %dma_off.i241, align 4
  %inc.i258 = add i32 %189, 1
  store i32 %inc.i258, ptr %dma_off.i241, align 4
  %190 = ptrtoint ptr %period_off.i253 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %period_off.i253, align 4
  %inc33.i = add i32 %191, 1
  store i32 %inc33.i, ptr %period_off.i253, align 4
  %cmp34.i = icmp eq ptr %add.ptr29.i, %add.ptr6.i248
  br i1 %cmp34.i, label %if.then35.i, label %for.body27.i.for.inc.i260_crit_edge

for.body27.i.for.inc.i260_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i260

if.then35.i:                                      ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %dma_area.i240 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dma_area.i240, align 4
  %194 = ptrtoint ptr %dma_off.i241 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %dma_off.i241, align 4
  br label %for.inc.i260

for.inc.i260:                                     ; preds = %if.then35.i, %for.body27.i.for.inc.i260_crit_edge
  %src.2.i = phi ptr [ %193, %if.then35.i ], [ %add.ptr29.i, %for.body27.i.for.inc.i260_crit_edge ]
  %inc39.i = add nuw nsw i32 %frame.080.i, 1
  %exitcond.not.i259 = icmp eq i32 %inc39.i, %div.i256
  br i1 %exitcond.not.i259, label %for.inc.i260.for.inc40.i_crit_edge, label %for.inc.i260.for.body27.i_crit_edge

for.inc.i260.for.body27.i_crit_edge:              ; preds = %for.inc.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27.i

for.inc.i260.for.inc40.i_crit_edge:               ; preds = %for.inc.i260
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40.i

for.inc40.i:                                      ; preds = %for.inc.i260.for.inc40.i_crit_edge, %if.end24.i.for.inc40.i_crit_edge, %if.end24.thread.i
  %src.1.lcssa.i = phi ptr [ %src.085.i, %if.end24.i.for.inc40.i_crit_edge ], [ %src.085.i, %if.end24.thread.i ], [ %src.2.i, %for.inc.i260.for.inc40.i_crit_edge ]
  %dest.2.lcssa.i = phi ptr [ %incdec.ptr.i257, %if.end24.i.for.inc40.i_crit_edge ], [ %incdec.ptr89.i, %if.end24.thread.i ], [ %add.ptr31.i, %for.inc.i260.for.inc40.i_crit_edge ]
  %inc41.i = add nuw nsw i32 %i.084.i, 1
  %exitcond87.not.i = icmp eq i32 %inc41.i, 8
  br i1 %exitcond87.not.i, label %for.inc40.i.usb6fire_pcm_playback.exit_crit_edge, label %for.inc40.i.for.body.i255_crit_edge

for.inc40.i.for.body.i255_crit_edge:              ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i255

for.inc40.i.usb6fire_pcm_playback.exit_crit_edge: ; preds = %for.inc40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb6fire_pcm_playback.exit

usb6fire_pcm_playback.exit:                       ; preds = %for.inc40.i.usb6fire_pcm_playback.exit_crit_edge, %do.end.i
  %period_off83 = getelementptr inbounds %struct.pcm_runtime, ptr %7, i32 0, i32 2, i32 4
  %195 = ptrtoint ptr %period_off83 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %period_off83, align 4
  %197 = ptrtoint ptr %instance.i237 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %instance.i237, align 4
  %runtime85 = getelementptr inbounds %struct.snd_pcm_substream, ptr %198, i32 0, i32 11
  %199 = ptrtoint ptr %runtime85 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %runtime85, align 4
  %period_size86 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %200, i32 0, i32 16
  %201 = ptrtoint ptr %period_size86 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %period_size86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %202)
  %cmp87.not = icmp ult i32 %196, %202
  br i1 %cmp87.not, label %if.else97, label %if.then89

if.then89:                                        ; preds = %usb6fire_pcm_playback.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rem94 = urem i32 %196, %202
  %203 = ptrtoint ptr %period_off83 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %rem94, ptr %period_off83, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %playback, i32 noundef %call75) #6
  %204 = ptrtoint ptr %instance.i237 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %instance.i237, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %205) #6
  br label %if.end102

if.else97:                                        ; preds = %usb6fire_pcm_playback.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %playback, i32 noundef %call75) #6
  br label %if.end102

if.else100:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %playback, i32 noundef %call75) #6
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.else97, %if.then89
  %206 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %buffer, align 4
  br label %for.body107

for.body107:                                      ; preds = %for.inc142.for.body107_crit_edge, %if.end102
  %dest.0272 = phi ptr [ %207, %if.end102 ], [ %dest.3, %for.inc142.for.body107_crit_edge ]
  %i.2271 = phi i32 [ 0, %if.end102 ], [ %inc143, %for.inc142.for.body107_crit_edge ]
  %length110 = getelementptr %struct.pcm_urb, ptr %3, i32 0, i32 2, i32 %i.2271, i32 1
  %208 = ptrtoint ptr %length110 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %length110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %209)
  %cmp111 = icmp ugt i32 %209, 3
  br i1 %cmp111, label %if.then113, label %for.body107.for.inc142_crit_edge

for.body107.for.inc142_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

if.then113:                                       ; preds = %for.body107
  %sub117 = add i32 %209, -4
  %210 = ptrtoint ptr %out_n_analog to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %out_n_analog, align 4
  %shl119 = shl i32 %211, 2
  %div120 = udiv i32 %sub117, %shl119
  %incdec.ptr = getelementptr i8, ptr %dest.0272, i32 1
  %212 = ptrtoint ptr %dest.0272 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 -86, ptr %dest.0272, align 1
  %incdec.ptr121 = getelementptr i8, ptr %dest.0272, i32 2
  %213 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -86, ptr %incdec.ptr, align 1
  %conv122 = trunc i32 %div120 to i8
  %incdec.ptr123 = getelementptr i8, ptr %dest.0272, i32 3
  %214 = ptrtoint ptr %incdec.ptr121 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv122, ptr %incdec.ptr121, align 1
  %incdec.ptr124 = getelementptr i8, ptr %dest.0272, i32 4
  %215 = ptrtoint ptr %incdec.ptr123 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %incdec.ptr123, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div120)
  %cmp126267 = icmp sgt i32 %div120, 0
  br i1 %cmp126267, label %if.then113.for.cond129.preheader_crit_edge, label %if.then113.for.inc142_crit_edge

if.then113.for.inc142_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

if.then113.for.cond129.preheader_crit_edge:       ; preds = %if.then113
  br label %for.cond129.preheader

for.cond129.preheader:                            ; preds = %for.inc138.for.cond129.preheader_crit_edge, %if.then113.for.cond129.preheader_crit_edge
  %dest.1269 = phi ptr [ %dest.2.lcssa, %for.inc138.for.cond129.preheader_crit_edge ], [ %incdec.ptr124, %if.then113.for.cond129.preheader_crit_edge ]
  %frame.0268 = phi i32 [ %inc139, %for.inc138.for.cond129.preheader_crit_edge ], [ 0, %if.then113.for.cond129.preheader_crit_edge ]
  %216 = ptrtoint ptr %out_n_analog to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %out_n_analog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp131264 = icmp sgt i32 %217, 0
  br i1 %cmp131264, label %for.cond129.preheader.for.body133_crit_edge, label %for.cond129.preheader.for.inc138_crit_edge

for.cond129.preheader.for.inc138_crit_edge:       ; preds = %for.cond129.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc138

for.cond129.preheader.for.body133_crit_edge:      ; preds = %for.cond129.preheader
  br label %for.body133

for.body133:                                      ; preds = %for.body133.for.body133_crit_edge, %for.cond129.preheader.for.body133_crit_edge
  %dest.2266 = phi ptr [ %incdec.ptr134, %for.body133.for.body133_crit_edge ], [ %dest.1269, %for.cond129.preheader.for.body133_crit_edge ]
  %channel.0265 = phi i32 [ %inc136, %for.body133.for.body133_crit_edge ], [ 0, %for.cond129.preheader.for.body133_crit_edge ]
  %add.ptr = getelementptr i8, ptr %dest.2266, i32 3
  %incdec.ptr134 = getelementptr i8, ptr %dest.2266, i32 4
  %218 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 64, ptr %add.ptr, align 1
  %inc136 = add nuw nsw i32 %channel.0265, 1
  %219 = ptrtoint ptr %out_n_analog to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %out_n_analog, align 4
  %cmp131 = icmp slt i32 %inc136, %220
  br i1 %cmp131, label %for.body133.for.body133_crit_edge, label %for.body133.for.inc138_crit_edge

for.body133.for.inc138_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc138

for.body133.for.body133_crit_edge:                ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body133

for.inc138:                                       ; preds = %for.body133.for.inc138_crit_edge, %for.cond129.preheader.for.inc138_crit_edge
  %dest.2.lcssa = phi ptr [ %dest.1269, %for.cond129.preheader.for.inc138_crit_edge ], [ %incdec.ptr134, %for.body133.for.inc138_crit_edge ]
  %inc139 = add nuw nsw i32 %frame.0268, 1
  %exitcond.not = icmp eq i32 %inc139, %div120
  br i1 %exitcond.not, label %for.inc138.for.inc142_crit_edge, label %for.inc138.for.cond129.preheader_crit_edge

for.inc138.for.cond129.preheader_crit_edge:       ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond129.preheader

for.inc138.for.inc142_crit_edge:                  ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc142

for.inc142:                                       ; preds = %for.inc138.for.inc142_crit_edge, %if.then113.for.inc142_crit_edge, %for.body107.for.inc142_crit_edge
  %dest.3 = phi ptr [ %dest.0272, %for.body107.for.inc142_crit_edge ], [ %incdec.ptr124, %if.then113.for.inc142_crit_edge ], [ %dest.2.lcssa, %for.inc138.for.inc142_crit_edge ]
  %inc143 = add nuw nsw i32 %i.2271, 1
  %exitcond273.not = icmp eq i32 %inc143, 8
  br i1 %exitcond273.not, label %for.end144, label %for.inc142.for.body107_crit_edge

for.inc142.for.body107_crit_edge:                 ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body107

for.end144:                                       ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  %instance145 = getelementptr inbounds %struct.pcm_urb, ptr %3, i32 0, i32 1
  %call146 = tail call i32 @usb_submit_urb(ptr noundef %instance145, i32 noundef 2592) #6
  %instance147 = getelementptr inbounds %struct.pcm_urb, ptr %1, i32 0, i32 1
  %call148 = tail call i32 @usb_submit_urb(ptr noundef %instance147, i32 noundef 2592) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end144, %do.end, %if.then8, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_pcm_out_urb_handler(ptr nocapture noundef readonly %usb_urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %usb_urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pcm = getelementptr inbounds %struct.sfire_chip, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm, align 4
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stream_wait_cond = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %stream_wait_cond to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %stream_wait_cond, align 4
  %stream_wait_queue = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %stream_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb6fire_pcm_abort(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %entry
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %panic to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %panic, align 4
  %instance = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %instance, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %instance5 = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %instance5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instance5, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %6) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %instance12 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 0, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12) #6
  %instance14 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 0, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14) #6
  %instance12.1 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 1, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.1) #6
  %instance14.1 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 1, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.1) #6
  %instance12.2 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 2, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.2) #6
  %instance14.2 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 2, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.2) #6
  %instance12.3 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 3, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.3) #6
  %instance14.3 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 3, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.3) #6
  %instance12.4 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 4, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.4) #6
  %instance14.4 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 4, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.4) #6
  %instance12.5 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 5, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.5) #6
  %instance14.5 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 5, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.5) #6
  %instance12.6 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 6, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.6) #6
  %instance14.6 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 6, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.6) #6
  %instance12.7 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 7, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.7) #6
  %instance14.7 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 7, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.7) #6
  %instance12.8 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 8, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.8) #6
  %instance14.8 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 8, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.8) #6
  %instance12.9 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 9, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.9) #6
  %instance14.9 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 9, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.9) #6
  %instance12.10 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 10, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.10) #6
  %instance14.10 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 10, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.10) #6
  %instance12.11 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 11, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.11) #6
  %instance14.11 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 11, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.11) #6
  %instance12.12 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 12, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.12) #6
  %instance14.12 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 12, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.12) #6
  %instance12.13 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 13, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.13) #6
  %instance14.13 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 13, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.13) #6
  %instance12.14 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 14, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.14) #6
  %instance14.14 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 14, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.14) #6
  %instance12.15 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 15, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance12.15) #6
  %instance14.15 = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 6, i32 15, i32 1
  tail call void @usb_poison_urb(ptr noundef %instance14.15) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb6fire_pcm_destroy(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  tail call fastcc void @usb6fire_pcm_buffers_destroy(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pcm, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_init_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_pcm_open(ptr noundef %alsa_sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %panic, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #6
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @pcm_hw, i32 64)
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %8, label %if.end.if.then29_crit_edge [
    i32 0, label %if.then1
    i32 1, label %if.then12
  ]

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then1:                                         ; preds = %if.end
  %rate = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp2 = icmp ult i8 %11, 6
  br i1 %cmp2, label %if.then4, label %if.then1.if.end7_crit_edge

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %11 to i32
  %arrayidx = getelementptr [6 x i32], ptr @rates_alsaid, i32 0, i32 %conv
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 2
  %14 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rates, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then1.if.end7_crit_edge
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %15 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %channels_max, align 8
  %playback = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  br label %if.end27

if.then12:                                        ; preds = %if.end
  %rate13 = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %rate13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rate13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %17)
  %cmp15 = icmp ult i8 %17, 6
  br i1 %cmp15, label %if.then17, label %if.then12.if.end23_crit_edge

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = zext i8 %17 to i32
  %arrayidx20 = getelementptr [6 x i32], ptr @rates_alsaid, i32 0, i32 %conv14
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20, align 4
  %rates22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 2
  %20 = ptrtoint ptr %rates22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rates22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.then12.if.end23_crit_edge
  %channels_max25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %21 = ptrtoint ptr %channels_max25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %channels_max25, align 8
  %capture = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  br label %if.end27

if.end27:                                         ; preds = %if.end23, %if.end7
  %sub.0 = phi ptr [ %playback, %if.end7 ], [ %capture, %if.end23 ]
  %tobool28.not = icmp eq ptr %sub.0, null
  br i1 %tobool28.not, label %if.end27.if.then29_crit_edge, label %if.end32

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %if.end.if.then29_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dev31 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %instance = getelementptr inbounds %struct.pcm_substream, ptr %sub.0, i32 0, i32 1
  %26 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %alsa_sub, ptr %instance, align 4
  %active = getelementptr inbounds %struct.pcm_substream, ptr %sub.0, i32 0, i32 2
  %27 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %active, align 4
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %if.then29 ], [ -32, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_pcm_close(ptr nocapture noundef readonly %alsa_sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %3, label %do.end.i [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  br label %usb6fire_pcm_get_substream.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %capture.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  br label %usb6fire_pcm_get_substream.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.20) #11
  br label %usb6fire_pcm_get_substream.exit

usb6fire_pcm_get_substream.exit:                  ; preds = %do.end.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %playback.i, %if.then.i ], [ %capture.i, %if.then3.i ], [ null, %do.end.i ]
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %panic, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %usb6fire_pcm_get_substream.exit.cleanup_crit_edge

usb6fire_pcm_get_substream.exit.cleanup_crit_edge: ; preds = %usb6fire_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %usb6fire_pcm_get_substream.exit
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #6
  %tobool1.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %do.body3

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body3:                                         ; preds = %if.end
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %retval.0.i) #6
  %instance = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %instance, align 4
  %active = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %retval.0.i, i32 noundef %call5) #6
  %instance9 = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %instance9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %instance9, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true, label %do.body3.if.end15_crit_edge

do.body3.if.end15_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %do.body3
  %instance11 = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %instance11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %instance11, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @usb6fire_pcm_stream_stop(ptr noundef %1)
  %rate = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 6, ptr %rate, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %do.body3.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %usb6fire_pcm_get_substream.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_pcm_prepare(ptr nocapture noundef readonly %alsa_sub) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %3, label %usb6fire_pcm_get_substream.exit.thread [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  br label %usb6fire_pcm_get_substream.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %capture.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  br label %usb6fire_pcm_get_substream.exit

usb6fire_pcm_get_substream.exit:                  ; preds = %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %playback.i, %if.then.i ], [ %capture.i, %if.then3.i ]
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 11
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %panic, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %usb6fire_pcm_get_substream.exit.cleanup_crit_edge

usb6fire_pcm_get_substream.exit.cleanup_crit_edge: ; preds = %usb6fire_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

usb6fire_pcm_get_substream.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.20) #11
  %panic80 = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %panic80 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %panic80, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not81 = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool.not81, i32 -19, i32 -32
  br label %cleanup

if.end:                                           ; preds = %usb6fire_pcm_get_substream.exit
  %tobool1.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #6
  %dma_off = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %dma_off to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dma_off, align 4
  %period_off = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 4
  %16 = ptrtoint ptr %period_off to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %period_off, align 4
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %if.then5, label %if.end3.if.end42_crit_edge

if.end3.if.end42_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then5:                                         ; preds = %if.end3
  %rate = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 13
  %rate10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %6, i32 0, i32 14
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %rate, align 1
  %20 = ptrtoint ptr %rate10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %21)
  %cmp12 = icmp eq i32 %21, 44100
  br i1 %cmp12, label %if.then5.if.end25_crit_edge, label %for.inc

if.then5.if.end25_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

for.inc:                                          ; preds = %if.then5
  %22 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %rate, align 1
  %23 = ptrtoint ptr %rate10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %24)
  %cmp12.1 = icmp eq i32 %24, 48000
  br i1 %cmp12.1, label %for.inc.if.end25_crit_edge, label %for.inc.1

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

for.inc.1:                                        ; preds = %for.inc
  %25 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %rate, align 1
  %26 = ptrtoint ptr %rate10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rate10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %27)
  %cmp12.2 = icmp eq i32 %27, 88200
  br i1 %cmp12.2, label %for.inc.1.if.end25_crit_edge, label %for.inc.2

for.inc.1.if.end25_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

for.inc.2:                                        ; preds = %for.inc.1
  %28 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %rate, align 1
  %29 = ptrtoint ptr %rate10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %30)
  %cmp12.3 = icmp eq i32 %30, 96000
  br i1 %cmp12.3, label %for.inc.2.if.end25_crit_edge, label %for.inc.3

for.inc.2.if.end25_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

for.inc.3:                                        ; preds = %for.inc.2
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %rate, align 1
  %32 = ptrtoint ptr %rate10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %33)
  %cmp12.4 = icmp eq i32 %33, 176400
  br i1 %cmp12.4, label %for.inc.3.if.end25_crit_edge, label %for.inc.4

for.inc.3.if.end25_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

for.inc.4:                                        ; preds = %for.inc.3
  %34 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %rate, align 1
  %35 = ptrtoint ptr %rate10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %36)
  %cmp12.5 = icmp eq i32 %36, 192000
  br i1 %cmp12.5, label %for.inc.4.if.end25_crit_edge, label %if.then21

for.inc.4.if.end25_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then21:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 6, ptr %rate, align 1
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %rate10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rate10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.22, i32 noundef %43) #11
  br label %cleanup

if.end25:                                         ; preds = %for.inc.4.if.end25_crit_edge, %for.inc.3.if.end25_crit_edge, %for.inc.2.if.end25_crit_edge, %for.inc.1.if.end25_crit_edge, %for.inc.if.end25_crit_edge, %if.then5.if.end25_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %control.i = getelementptr inbounds %struct.sfire_chip, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %control.i, align 4
  %usb_streaming.i = getelementptr inbounds %struct.control_runtime, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %usb_streaming.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %usb_streaming.i, align 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %47, align 4
  %call.i = tail call i32 %50(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end25.if.then28_crit_edge, label %if.end.i

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end.i:                                         ; preds = %if.end25
  %set_rate.i = getelementptr inbounds %struct.control_runtime, ptr %47, i32 0, i32 1
  %51 = ptrtoint ptr %set_rate.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_rate.i, align 4
  %53 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rate, align 1
  %conv.i = zext i8 %54 to i32
  %call4.i = tail call i32 %52(ptr noundef %47, i32 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.if.then28_crit_edge, label %if.end17.i

if.end.i.if.then28_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end17.i:                                       ; preds = %if.end.i
  %set_channels.i = getelementptr inbounds %struct.control_runtime, ptr %47, i32 0, i32 2
  %55 = ptrtoint ptr %set_channels.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_channels.i, align 4
  %call18.i = tail call i32 %56(ptr noundef %47, i32 noundef 6, i32 noundef 4, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end17.i.if.then28_crit_edge, label %if.end31.i

if.end17.i.if.then28_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end31.i:                                       ; preds = %if.end17.i
  %57 = ptrtoint ptr %usb_streaming.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %usb_streaming.i, align 1
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %47, align 4
  %call34.i = tail call i32 %59(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end31.i.if.then28_crit_edge, label %if.end30

if.end31.i.if.then28_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %if.end31.i.if.then28_crit_edge, %if.end17.i.if.then28_crit_edge, %if.end.i.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  %.str.27.sink = phi ptr [ @.str.27, %if.end25.if.then28_crit_edge ], [ @.str.30, %if.end.i.if.then28_crit_edge ], [ @.str.33, %if.end17.i.if.then28_crit_edge ], [ @.str.36, %if.end31.i.if.then28_crit_edge ]
  %retval.0.i71.ph = phi i32 [ %call.i, %if.end25.if.then28_crit_edge ], [ %call4.i, %if.end.i.if.then28_crit_edge ], [ %call18.i, %if.end17.i.if.then28_crit_edge ], [ %call34.i, %if.end31.i.if.then28_crit_edge ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rate, align 1
  %idxprom.i = zext i8 %65 to i32
  %arrayidx.i = getelementptr [6 x i32], ptr @rates, i32 0, i32 %idxprom.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull %.str.27.sink, i32 noundef %67) #11
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end31.i
  %in_n_analog.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 9
  %68 = ptrtoint ptr %in_n_analog.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %in_n_analog.i, align 4
  %out_n_analog.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %out_n_analog.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 6, ptr %out_n_analog.i, align 4
  %70 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %rate, align 1
  %idxprom49.i = zext i8 %71 to i32
  %arrayidx50.i = getelementptr [6 x i32], ptr @rates_in_packet_size, i32 0, i32 %idxprom49.i
  %72 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx50.i, align 4
  %in_packet_size.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %in_packet_size.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %in_packet_size.i, align 4
  %arrayidx53.i = getelementptr [6 x i32], ptr @rates_out_packet_size, i32 0, i32 %idxprom49.i
  %75 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx53.i, align 4
  %out_packet_size.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 8
  %77 = ptrtoint ptr %out_packet_size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %out_packet_size.i, align 4
  %78 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp.i72 = icmp eq i8 %79, 0
  br i1 %cmp.i72, label %if.then.i74, label %if.end30.if.end42_crit_edge

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then.i74:                                      ; preds = %if.end30
  %stream_wait_cond.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 15
  %80 = ptrtoint ptr %stream_wait_cond.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %stream_wait_cond.i, align 4
  %81 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %stream_state, align 4
  br label %for.cond5.preheader.i

for.cond.i:                                       ; preds = %for.cond5.preheader.i
  %inc15.i = add nuw nsw i32 %i.0109.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 16
  br i1 %exitcond.not.i, label %for.end16.i, label %for.cond.i.for.cond5.preheader.i_crit_edge

for.cond.i.for.cond5.preheader.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.cond.i.for.cond5.preheader.i_crit_edge, %if.then.i74
  %i.0109.i = phi i32 [ 0, %if.then.i74 ], [ %inc15.i, %for.cond.i.for.cond5.preheader.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 0
  %82 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx9.i, align 4
  %83 = ptrtoint ptr %in_packet_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %in_packet_size.i, align 4
  %length.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 0, i32 1
  %85 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %length.i, align 4
  %actual_length.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 0, i32 2
  %86 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %actual_length.i, align 4
  %status.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 0, i32 3
  %87 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %status.i, align 4
  %arrayidx9.1.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 1
  %88 = load i32, ptr %in_packet_size.i, align 4
  %89 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx9.1.i, align 4
  %90 = load i32, ptr %in_packet_size.i, align 4
  %length.1.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 1, i32 1
  %91 = ptrtoint ptr %length.1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %length.1.i, align 4
  %actual_length.1.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 1, i32 2
  %92 = ptrtoint ptr %actual_length.1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %actual_length.1.i, align 4
  %status.1.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 1, i32 3
  %93 = ptrtoint ptr %status.1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %status.1.i, align 4
  %arrayidx9.2.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 2
  %94 = load i32, ptr %in_packet_size.i, align 4
  %mul.2.i = shl i32 %94, 1
  %95 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %mul.2.i, ptr %arrayidx9.2.i, align 4
  %96 = load i32, ptr %in_packet_size.i, align 4
  %length.2.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 2, i32 1
  %97 = ptrtoint ptr %length.2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %length.2.i, align 4
  %actual_length.2.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 2, i32 2
  %98 = ptrtoint ptr %actual_length.2.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %actual_length.2.i, align 4
  %status.2.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 2, i32 3
  %99 = ptrtoint ptr %status.2.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %status.2.i, align 4
  %arrayidx9.3.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 3
  %100 = load i32, ptr %in_packet_size.i, align 4
  %mul.3.i = mul i32 %100, 3
  %101 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul.3.i, ptr %arrayidx9.3.i, align 4
  %102 = load i32, ptr %in_packet_size.i, align 4
  %length.3.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 3, i32 1
  %103 = ptrtoint ptr %length.3.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %length.3.i, align 4
  %actual_length.3.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 3, i32 2
  %104 = ptrtoint ptr %actual_length.3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %actual_length.3.i, align 4
  %status.3.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 3, i32 3
  %105 = ptrtoint ptr %status.3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %status.3.i, align 4
  %arrayidx9.4.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 4
  %106 = load i32, ptr %in_packet_size.i, align 4
  %mul.4.i = shl i32 %106, 2
  %107 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %mul.4.i, ptr %arrayidx9.4.i, align 4
  %108 = load i32, ptr %in_packet_size.i, align 4
  %length.4.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 4, i32 1
  %109 = ptrtoint ptr %length.4.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %length.4.i, align 4
  %actual_length.4.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 4, i32 2
  %110 = ptrtoint ptr %actual_length.4.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %actual_length.4.i, align 4
  %status.4.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 4, i32 3
  %111 = ptrtoint ptr %status.4.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %status.4.i, align 4
  %arrayidx9.5.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 5
  %112 = load i32, ptr %in_packet_size.i, align 4
  %mul.5.i = mul i32 %112, 5
  %113 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %mul.5.i, ptr %arrayidx9.5.i, align 4
  %114 = load i32, ptr %in_packet_size.i, align 4
  %length.5.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 5, i32 1
  %115 = ptrtoint ptr %length.5.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %length.5.i, align 4
  %actual_length.5.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 5, i32 2
  %116 = ptrtoint ptr %actual_length.5.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %actual_length.5.i, align 4
  %status.5.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 5, i32 3
  %117 = ptrtoint ptr %status.5.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %status.5.i, align 4
  %arrayidx9.6.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 6
  %118 = load i32, ptr %in_packet_size.i, align 4
  %mul.6.i = mul i32 %118, 6
  %119 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %mul.6.i, ptr %arrayidx9.6.i, align 4
  %120 = load i32, ptr %in_packet_size.i, align 4
  %length.6.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 6, i32 1
  %121 = ptrtoint ptr %length.6.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %length.6.i, align 4
  %actual_length.6.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 6, i32 2
  %122 = ptrtoint ptr %actual_length.6.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %actual_length.6.i, align 4
  %status.6.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 6, i32 3
  %123 = ptrtoint ptr %status.6.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %status.6.i, align 4
  %arrayidx9.7.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 7
  %124 = load i32, ptr %in_packet_size.i, align 4
  %mul.7.i = mul i32 %124, 7
  %125 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul.7.i, ptr %arrayidx9.7.i, align 4
  %126 = load i32, ptr %in_packet_size.i, align 4
  %length.7.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 7, i32 1
  %127 = ptrtoint ptr %length.7.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %length.7.i, align 4
  %actual_length.7.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 7, i32 2
  %128 = ptrtoint ptr %actual_length.7.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %actual_length.7.i, align 4
  %status.7.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 2, i32 7, i32 3
  %129 = ptrtoint ptr %status.7.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %status.7.i, align 4
  %instance.i = getelementptr %struct.pcm_runtime, ptr %1, i32 0, i32 5, i32 %i.0109.i, i32 1
  %call.i75 = tail call i32 @usb_submit_urb(ptr noundef %instance.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.then13.i

if.then13.i:                                      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @usb6fire_pcm_stream_stop(ptr noundef %1) #6
  br label %if.then33

for.end16.i:                                      ; preds = %for.cond.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 180) #6
  %130 = ptrtoint ptr %stream_wait_cond.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %stream_wait_cond.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool21.not.i = icmp eq i8 %131, 0
  br i1 %tobool21.not.i, label %if.then31.i, label %for.end16.i.if.then64.i_crit_edge

for.end16.i.if.then64.i_crit_edge:                ; preds = %for.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64.i

if.then31.i:                                      ; preds = %for.end16.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %132 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %stream_wait_queue.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 14
  %call34110.i = call i32 @prepare_to_wait_event(ptr noundef %stream_wait_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #6
  %133 = ptrtoint ptr %stream_wait_cond.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %stream_wait_cond.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool37.not111.not.i = icmp eq i8 %134, 0
  br i1 %tobool37.not111.not.i, label %if.then31.i.cleanup.i_crit_edge, label %if.then31.i.if.end60.i_crit_edge

if.then31.i.if.end60.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

if.then31.i.cleanup.i_crit_edge:                  ; preds = %if.then31.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then31.i.cleanup.i_crit_edge
  %__ret32.1113.i = phi i32 [ %__ret32.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 100, %if.then31.i.cleanup.i_crit_edge ]
  %call56.i = call i32 @schedule_timeout(i32 noundef %__ret32.1113.i) #6
  %call34.i76 = call i32 @prepare_to_wait_event(ptr noundef %stream_wait_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #6
  %135 = ptrtoint ptr %stream_wait_cond.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %stream_wait_cond.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool37.not.i = icmp eq i8 %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool42.not.i = icmp eq i32 %call56.i, 0
  %spec.store.select72.i = select i1 %tobool42.not.i, i32 1, i32 %call56.i
  %__ret32.1.i = select i1 %tobool37.not.i, i32 %call56.i, i32 %spec.store.select72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret32.1.i)
  %tobool49.not.i = icmp eq i32 %__ret32.1.i, 0
  %not.tobool37.not.i = xor i1 %tobool37.not.i, true
  %137 = select i1 %not.tobool37.not.i, i1 true, i1 %tobool49.not.i
  br i1 %137, label %cleanup.i.if.end60.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i.if.end60.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

if.end60.i:                                       ; preds = %cleanup.i.if.end60.i_crit_edge, %if.then31.i.if.end60.i_crit_edge
  call void @finish_wait(ptr noundef %stream_wait_queue.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %138 = ptrtoint ptr %stream_wait_cond.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %.pr.i = load i8, ptr %stream_wait_cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool63.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool63.not.i, label %if.else.i, label %if.end60.i.if.then64.i_crit_edge

if.end60.i.if.then64.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then64.i

if.then64.i:                                      ; preds = %if.end60.i.if.then64.i_crit_edge, %for.end16.i.if.then64.i_crit_edge
  %139 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 2, ptr %stream_state, align 4
  br label %if.end42

if.else.i:                                        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @usb6fire_pcm_stream_stop(ptr noundef %1) #6
  br label %if.then33

if.then33:                                        ; preds = %if.else.i, %if.then13.i
  %retval.0.i77 = phi i32 [ %call.i75, %if.then13.i ], [ -5, %if.else.i ]
  call void @mutex_unlock(ptr noundef %stream_mutex) #6
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %dev40 = getelementptr inbounds %struct.usb_device, ptr %143, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end42:                                         ; preds = %if.then64.i, %if.end30.if.end42_crit_edge, %if.end3.if.end42_crit_edge
  call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then33, %if.then28, %if.then21, %if.end.cleanup_crit_edge, %usb6fire_pcm_get_substream.exit.thread, %usb6fire_pcm_get_substream.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then21 ], [ %retval.0.i71.ph, %if.then28 ], [ %retval.0.i77, %if.then33 ], [ 0, %if.end42 ], [ -32, %usb6fire_pcm_get_substream.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %spec.select, %usb6fire_pcm_get_substream.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_pcm_trigger(ptr nocapture noundef readonly %alsa_sub, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %usb6fire_pcm_get_substream.exit.thread [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  br label %usb6fire_pcm_get_substream.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %capture.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  br label %usb6fire_pcm_get_substream.exit

usb6fire_pcm_get_substream.exit:                  ; preds = %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %playback.i, %if.then.i ], [ %capture.i, %if.then3.i ]
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %panic, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end, label %usb6fire_pcm_get_substream.exit.cleanup_crit_edge

usb6fire_pcm_get_substream.exit.cleanup_crit_edge: ; preds = %usb6fire_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

usb6fire_pcm_get_substream.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.20) #11
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data.i, align 4
  %panic38 = getelementptr inbounds %struct.pcm_runtime, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %panic38 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %panic38, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not39 = icmp eq i8 %16, 0
  %spec.select = select i1 %tobool.not39, i32 -19, i32 -32
  br label %cleanup

if.end:                                           ; preds = %usb6fire_pcm_get_substream.exit
  %tobool1.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %17 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %cmd, label %if.end3.cleanup_crit_edge [
    i32 1, label %if.end3.do.body4_crit_edge
    i32 4, label %if.end3.do.body4_crit_edge43
    i32 0, label %if.end3.do.body12_crit_edge
    i32 3, label %if.end3.do.body12_crit_edge44
  ]

if.end3.do.body12_crit_edge44:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

if.end3.do.body12_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

if.end3.do.body4_crit_edge43:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

if.end3.do.body4_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body4:                                         ; preds = %if.end3.do.body4_crit_edge, %if.end3.do.body4_crit_edge43
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %retval.0.i) #6
  %active = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %retval.0.i, i32 noundef %call6) #6
  br label %cleanup

do.body12:                                        ; preds = %if.end3.do.body12_crit_edge, %if.end3.do.body12_crit_edge44
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %retval.0.i) #6
  %active25 = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %active25 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %active25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %retval.0.i, i32 noundef %call20) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %do.body4, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %usb6fire_pcm_get_substream.exit.thread, %usb6fire_pcm_get_substream.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body12 ], [ 0, %do.body4 ], [ -32, %usb6fire_pcm_get_substream.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %spec.select, %usb6fire_pcm_get_substream.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb6fire_pcm_pointer(ptr nocapture noundef readonly %alsa_sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %3, label %usb6fire_pcm_get_substream.exit.thread [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  br label %usb6fire_pcm_get_substream.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %capture.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  br label %usb6fire_pcm_get_substream.exit

usb6fire_pcm_get_substream.exit.thread:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev5.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.20) #11
  br label %cleanup

usb6fire_pcm_get_substream.exit:                  ; preds = %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %playback.i, %if.then.i ], [ %capture.i, %if.then3.i ]
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %panic, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp ne i8 %12, 0
  %tobool1.not = icmp eq ptr %retval.0.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %usb6fire_pcm_get_substream.exit.cleanup_crit_edge, label %do.body2

usb6fire_pcm_get_substream.exit.cleanup_crit_edge: ; preds = %usb6fire_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %usb6fire_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %retval.0.i) #6
  %dma_off = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_off, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %retval.0.i, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %usb6fire_pcm_get_substream.exit.cleanup_crit_edge, %usb6fire_pcm_get_substream.exit.thread
  %retval.0 = phi i32 [ %14, %do.body2 ], [ -1, %usb6fire_pcm_get_substream.exit.cleanup_crit_edge ], [ -1, %usb6fire_pcm_get_substream.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb6fire_pcm_stream_stop(ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %rt, i32 0, i32 12
  %0 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt, align 4
  %control = getelementptr inbounds %struct.sfire_chip, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %6 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %stream_state, align 4
  %instance = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 0, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance) #6
  %instance6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 0, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6) #6
  %instance.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 1, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.1) #6
  %instance6.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 1, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.1) #6
  %instance.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 2, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.2) #6
  %instance6.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 2, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.2) #6
  %instance.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 3, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.3) #6
  %instance6.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 3, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.3) #6
  %instance.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 4, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.4) #6
  %instance6.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 4, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.4) #6
  %instance.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 5, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.5) #6
  %instance6.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 5, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.5) #6
  %instance.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 6, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.6) #6
  %instance6.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 6, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.6) #6
  %instance.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 7, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.7) #6
  %instance6.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 7, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.7) #6
  %instance.8 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 8, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.8) #6
  %instance6.8 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 8, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.8) #6
  %instance.9 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 9, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.9) #6
  %instance6.9 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 9, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.9) #6
  %instance.10 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 10, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.10) #6
  %instance6.10 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 10, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.10) #6
  %instance.11 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 11, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.11) #6
  %instance6.11 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 11, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.11) #6
  %instance.12 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 12, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.12) #6
  %instance6.12 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 12, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.12) #6
  %instance.13 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 13, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.13) #6
  %instance6.13 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 13, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.13) #6
  %instance.14 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 14, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.14) #6
  %instance6.14 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 14, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.14) #6
  %instance.15 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 5, i32 15, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.15) #6
  %instance6.15 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 6, i32 15, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance6.15) #6
  %usb_streaming = getelementptr inbounds %struct.control_runtime, ptr %5, i32 0, i32 8
  %7 = ptrtoint ptr %usb_streaming to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %usb_streaming, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call = tail call i32 %9(ptr noundef %5) #6
  %10 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %stream_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @usb6fire_pcm_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/usb/6fire/pcm.c", i32 618, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @usb6fire_pcm_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/usb/6fire/pcm.c", i32 619, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usb6fire_pcm_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/usb/6fire/pcm.c", i32 621, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @usb6fire_pcm_init.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../sound/usb/6fire/pcm.c", i32 622, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/6fire/pcm.c", i32 634, i32 32}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/6fire/pcm.c", i32 638, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @usb6fire_pcm_init._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @usb6fire_pcm_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/6fire/pcm.c", i32 643, i32 20}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/6fire/pcm.c", i32 309, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usb6fire_pcm_in_urb_handler._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @usb6fire_pcm_in_urb_handler._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/usb/6fire/pcm.c", i32 259, i32 3}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @usb6fire_pcm_playback._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @usb6fire_pcm_playback._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @pcm_ops, !35, !"pcm_ops", i1 false, i1 false}
!35 = !{!"../sound/usb/6fire/pcm.c", i32 542, i32 33}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/6fire/pcm.c", i32 412, i32 3}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @usb6fire_pcm_open._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @usb6fire_pcm_open._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @pcm_hw, !42, !"pcm_hw", i1 false, i1 false}
!42 = !{!"../sound/usb/6fire/pcm.c", i32 43, i32 38}
!43 = !{ptr @rates_alsaid, !44, !"rates_alsaid", i1 false, i1 false}
!44 = !{!"../sound/usb/6fire/pcm.c", i32 27, i32 18}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/6fire/pcm.c", i32 126, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @usb6fire_pcm_get_substream._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @usb6fire_pcm_get_substream._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/6fire/pcm.c", i32 471, i32 4}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @usb6fire_pcm_prepare._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @usb6fire_pcm_prepare._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/6fire/pcm.c", i32 485, i32 4}
!57 = !{ptr @usb6fire_pcm_prepare._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @usb6fire_pcm_prepare._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @rates, !60, !"rates", i1 false, i1 false}
!60 = !{!"../sound/usb/6fire/pcm.c", i32 26, i32 18}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/usb/6fire/pcm.c", i32 78, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @usb6fire_pcm_set_rate._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @usb6fire_pcm_set_rate._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/usb/6fire/pcm.c", i32 86, i32 3}
!68 = !{ptr @usb6fire_pcm_set_rate._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @usb6fire_pcm_set_rate._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/usb/6fire/pcm.c", i32 95, i32 3}
!72 = !{ptr @usb6fire_pcm_set_rate._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @usb6fire_pcm_set_rate._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/6fire/pcm.c", i32 104, i32 3}
!76 = !{ptr @usb6fire_pcm_set_rate._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @usb6fire_pcm_set_rate._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @rates_in_packet_size, !79, !"rates_in_packet_size", i1 false, i1 false}
!79 = !{!"../sound/usb/6fire/pcm.c", i32 24, i32 18}
!80 = !{ptr @rates_out_packet_size, !81, !"rates_out_packet_size", i1 false, i1 false}
!81 = !{!"../sound/usb/6fire/pcm.c", i32 25, i32 18}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i8 0, i8 2}
