; ModuleID = '/llk/IR_all_yes/sound/usb/hiface/pcm.c_pt.bc'
source_filename = "../sound/usb/hiface/pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.hiface_chip = type { ptr, ptr, ptr }
%struct.pcm_runtime = type { ptr, ptr, %struct.pcm_substream, i8, [8 x %struct.pcm_urb], %struct.mutex, i8, i8, %struct.wait_queue_head, i8 }
%struct.pcm_substream = type { %struct.spinlock, ptr, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pcm_urb = type { ptr, %struct.urb, %struct.usb_anchor, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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

@hiface_pcm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&rt->stream_wait_queue\00", [41 x i8] zeroinitializer }, align 32
@hiface_pcm_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rt->stream_mutex\00", [46 x i8] zeroinitializer }, align 32
@hiface_pcm_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&rt->playback.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"USB-SPDIF Audio\00", [16 x i8] zeroinitializer }, align 32
@hiface_pcm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 590, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot create pcm instance\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hiface_pcm_init\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/usb/hiface/pcm.c\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hiface_pcm_init._entry_ptr = internal global ptr @hiface_pcm_init._entry, section ".printk_index", align 4
@pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @hiface_pcm_open, ptr @hiface_pcm_close, ptr null, ptr null, ptr null, ptr @hiface_pcm_prepare, ptr @hiface_pcm_trigger, ptr null, ptr @hiface_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@hiface_pcm_playback.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.8, ptr @.str.16, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_usb_hiface\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hiface_pcm_playback\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: (1) buffer_size %#x dma_offset %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@hiface_pcm_playback.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.8, ptr @.str.17, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: (2) buffer_size %#x dma_offset %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590099, i64 1024, i32 7872, i32 44100, i32 192000, i32 2, i32 2, i32 65536, i32 4096, i32 65536, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hiface_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 368, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid stream type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hiface_pcm_open\00", [16 x i8] zeroinitializer }, align 32
@hiface_pcm_open._entry_ptr = internal global ptr @hiface_pcm_open._entry, section ".printk_index", align 4
@constraints_extra_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 8, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 352800, i32 384000], [32 x i8] zeroinitializer }, align 32
@hiface_pcm_get_substream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 178, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error getting pcm substream slot.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hiface_pcm_get_substream\00", [39 x i8] zeroinitializer }, align 32
@hiface_pcm_get_substream._entry_ptr = internal global ptr @hiface_pcm_get_substream._entry, section ".printk_index", align 4
@hiface_pcm_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 147, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unsupported rate %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hiface_pcm_set_rate\00", [44 x i8] zeroinitializer }, align 32
@hiface_pcm_set_rate._entry_ptr = internal global ptr @hiface_pcm_set_rate._entry, section ".printk_index", align 4
@hiface_pcm_set_rate._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.8, i32 164, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error setting samplerate %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@hiface_pcm_set_rate._entry_ptr.26 = internal global ptr @hiface_pcm_set_rate._entry.24, section ".printk_index", align 4
@hiface_pcm_stream_start.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.8, ptr @.str.28, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hiface_pcm_stream_start\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Stream is running wakeup event\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 32, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 577, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 578, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 579, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 588, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 590, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [8 x i8] c"pcm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 498, i32 33 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1367, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 1368, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 267, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 277, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"pcm_hw\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 72, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 368, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"constraints_extra_rates\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 66, i32 48 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 64, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 178, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 147, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 164, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [26 x i8] c"../sound/usb/hiface/pcm.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 233, i32 4 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @hiface_pcm_get_substream._entry, ptr @hiface_pcm_get_substream._entry_ptr, ptr @hiface_pcm_init._entry, ptr @hiface_pcm_init._entry_ptr, ptr @hiface_pcm_open._entry, ptr @hiface_pcm_open._entry_ptr, ptr @hiface_pcm_set_rate._entry, ptr @hiface_pcm_set_rate._entry.24, ptr @hiface_pcm_set_rate._entry_ptr, ptr @hiface_pcm_set_rate._entry_ptr.26, ptr @hiface_pcm_init.__key, ptr @.str, ptr @hiface_pcm_init.__key.1, ptr @.str.2, ptr @hiface_pcm_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @pcm_ops, ptr @init_usb_anchor.__key, ptr @.str.11, ptr @init_usb_anchor.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @pcm_hw, ptr @.str.18, ptr @.str.19, ptr @constraints_extra_rates, ptr @rates, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_extra_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_get_substream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hiface_pcm_set_rate._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hiface_pcm_abort(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.hiface_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %panic to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %panic, align 4
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #6
  tail call fastcc void @hiface_pcm_stream_stop(ptr noundef nonnull %1)
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hiface_pcm_stream_stop(ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %rt, i32 0, i32 6
  %0 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %stream_state, align 4
  %submitted = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 0, i32 2
  %call = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted) #6
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %instance = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 0, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance) #6
  %submitted.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 1, i32 2
  %call.1 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.1, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.then5.1, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.then5.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.1) #6
  br label %if.end.1

if.end.1:                                         ; preds = %if.then5.1, %if.end.if.end.1_crit_edge
  %instance.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 1, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.1) #6
  %submitted.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 2, i32 2
  %call.2 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.2, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.then5.2, label %if.end.1.if.end.2_crit_edge

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.then5.2:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.2) #6
  br label %if.end.2

if.end.2:                                         ; preds = %if.then5.2, %if.end.1.if.end.2_crit_edge
  %instance.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 2, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.2) #6
  %submitted.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 3, i32 2
  %call.3 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.3, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.then5.3, label %if.end.2.if.end.3_crit_edge

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

if.then5.3:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.3) #6
  br label %if.end.3

if.end.3:                                         ; preds = %if.then5.3, %if.end.2.if.end.3_crit_edge
  %instance.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 3, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.3) #6
  %submitted.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 4, i32 2
  %call.4 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.4, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %if.then5.4, label %if.end.3.if.end.4_crit_edge

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.4

if.then5.4:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.4) #6
  br label %if.end.4

if.end.4:                                         ; preds = %if.then5.4, %if.end.3.if.end.4_crit_edge
  %instance.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 4, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.4) #6
  %submitted.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 5, i32 2
  %call.5 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.5, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %if.then5.5, label %if.end.4.if.end.5_crit_edge

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.5

if.then5.5:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.5) #6
  br label %if.end.5

if.end.5:                                         ; preds = %if.then5.5, %if.end.4.if.end.5_crit_edge
  %instance.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 5, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.5) #6
  %submitted.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 6, i32 2
  %call.6 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.6, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %if.then5.6, label %if.end.5.if.end.6_crit_edge

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.6

if.then5.6:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.6) #6
  br label %if.end.6

if.end.6:                                         ; preds = %if.then5.6, %if.end.5.if.end.6_crit_edge
  %instance.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 6, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.6) #6
  %submitted.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 7, i32 2
  %call.7 = tail call i32 @usb_wait_anchor_empty_timeout(ptr noundef %submitted.7, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %if.then5.7, label %if.end.6.if.end.7_crit_edge

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.7

if.then5.7:                                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %submitted.7) #6
  br label %if.end.7

if.end.7:                                         ; preds = %if.then5.7, %if.end.6.if.end.7_crit_edge
  %instance.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 7, i32 1
  tail call void @usb_kill_urb(ptr noundef %instance.7) #6
  %3 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stream_state, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.7, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hiface_pcm_init(ptr noundef %chip, i8 noundef zeroext %extra_freq) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2176) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chip, ptr %call7.i.i, align 8
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extra_freq)
  %tobool2.not = icmp eq i8 %extra_freq, 0
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %extra_freq4 = getelementptr inbounds %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %extra_freq4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %extra_freq4, align 1
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  %stream_wait_queue = getelementptr inbounds %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %stream_wait_queue, ptr noundef nonnull @.str, ptr noundef nonnull @hiface_pcm_init.__key) #6
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %stream_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @hiface_pcm_init.__key.1) #6
  %playback = getelementptr inbounds %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %playback, ptr noundef nonnull @.str.4, ptr noundef nonnull @hiface_pcm_init.__key.3, i16 noundef signext 3) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %i.064 = phi i32 [ 0, %do.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %arrayidx, align 4
  %instance.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 1
  tail call void @usb_init_urb(ptr noundef %instance.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4096) #9
  %buffer.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 3
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %buffer.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.error_crit_edge, label %if.end.i

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end.i:                                         ; preds = %for.body
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -1073676288
  %dev1.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 1, i32 8
  %12 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 1, i32 10
  %13 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 1, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 1, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 1, i32 28
  %16 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hiface_pcm_out_urb_handler, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 1, i32 27
  %17 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx, ptr %context4.i.i, align 4
  %call8.i = tail call i32 @usb_urb_ep_type_check(ptr noundef %instance.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.inc, label %if.end.i.error_crit_edge

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.inc:                                          ; preds = %if.end.i
  %submitted.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 2
  %18 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 2, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 104)
  %20 = ptrtoint ptr %submitted.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %submitted.i, ptr %submitted.i, align 4
  %prev.i.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %submitted.i, ptr %prev.i.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_usb_anchor.__key) #6
  %lock.i.i = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 %i.064, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_usb_anchor.__key.12, i16 noundef signext 3) #6
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %card = getelementptr inbounds %struct.hiface_chip, ptr %chip, i32 0, i32 1
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %call17 = call i32 @snd_pcm_new(ptr noundef %23, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.6) #10
  br label %error

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm, ptr %27, i32 0, i32 12
  %29 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hiface_pcm_free, ptr %private_free, align 4
  %name = getelementptr inbounds %struct.snd_pcm, ptr %27, i32 0, i32 7
  %call25 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.5, i32 noundef 80) #6
  %30 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @pcm_ops) #6
  %32 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcm, align 4
  %call26 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %33, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %34 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcm, align 4
  %instance = getelementptr inbounds %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %instance, align 4
  %pcm27 = getelementptr inbounds %struct.hiface_chip, ptr %chip, i32 0, i32 2
  %37 = ptrtoint ptr %pcm27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %pcm27, align 4
  br label %cleanup

error:                                            ; preds = %do.end22, %if.end.i.error_crit_edge, %for.body.error_crit_edge
  %ret.0 = phi i32 [ %call17, %do.end22 ], [ -12, %for.body.error_crit_edge ], [ -22, %if.end.i.error_crit_edge ]
  %buffer = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 8
  call void @kfree(ptr noundef %39) #6
  %buffer.1 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 3
  %40 = ptrtoint ptr %buffer.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer.1, align 4
  call void @kfree(ptr noundef %41) #6
  %buffer.2 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 2, i32 3
  %42 = ptrtoint ptr %buffer.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer.2, align 8
  call void @kfree(ptr noundef %43) #6
  %buffer.3 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 3, i32 3
  %44 = ptrtoint ptr %buffer.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer.3, align 4
  call void @kfree(ptr noundef %45) #6
  %buffer.4 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 3
  %46 = ptrtoint ptr %buffer.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer.4, align 8
  call void @kfree(ptr noundef %47) #6
  %buffer.5 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 5, i32 3
  %48 = ptrtoint ptr %buffer.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer.5, align 4
  call void @kfree(ptr noundef %49) #6
  %buffer.6 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 6, i32 3
  %50 = ptrtoint ptr %buffer.6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buffer.6, align 8
  call void @kfree(ptr noundef %51) #6
  %buffer.7 = getelementptr %struct.pcm_runtime, ptr %call7.i.i, i32 0, i32 4, i32 7, i32 3
  %52 = ptrtoint ptr %buffer.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer.7, align 4
  call void @kfree(ptr noundef %53) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hiface_pcm_out_urb_handler(ptr nocapture noundef readonly %usb_urb) #0 align 64 {
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
  %pcm = getelementptr inbounds %struct.hiface_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %panic, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp = icmp eq i8 %9, 3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.urb, ptr %usb_urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end18.critedge [
    i32 -2, label %if.end.out_fail_crit_edge
    i32 -19, label %if.end.out_fail_crit_edge68
    i32 -104, label %if.end.out_fail_crit_edge69
    i32 -108, label %if.end.out_fail_crit_edge70
  ], !prof !75

if.end.out_fail_crit_edge70:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end.out_fail_crit_edge69:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end.out_fail_crit_edge68:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end.out_fail_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

if.end18.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp21 = icmp eq i8 %9, 1
  br i1 %cmp21, label %if.then23, label %if.end18.critedge.if.end24_crit_edge

if.end18.critedge.if.end24_crit_edge:             ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %stream_wait_cond = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 9
  %13 = ptrtoint ptr %stream_wait_cond to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %stream_wait_cond, align 4
  %stream_wait_queue = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %stream_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end18.critedge.if.end24_crit_edge
  %playback = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 2
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %playback) #6
  %active = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool31.not = icmp eq i8 %15, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end24
  %call33 = tail call fastcc zeroext i1 @hiface_pcm_playback(ptr noundef %playback, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %playback, i32 noundef %call28) #6
  br i1 %call33, label %if.then37, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %buffer = getelementptr inbounds %struct.pcm_urb, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 4096)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %playback, i32 noundef %call28) #6
  br label %if.end38

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %instance = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %instance, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %20) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.else, %if.then32.if.end38_crit_edge
  %instance39 = getelementptr inbounds %struct.pcm_urb, ptr %1, i32 0, i32 1
  %call40 = tail call i32 @usb_submit_urb(ptr noundef %instance39, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end38.out_fail_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.out_fail_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_fail

out_fail:                                         ; preds = %if.end38.out_fail_crit_edge, %if.end.out_fail_crit_edge, %if.end.out_fail_crit_edge68, %if.end.out_fail_crit_edge69, %if.end.out_fail_crit_edge70
  %21 = ptrtoint ptr %panic to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %panic, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %if.end38.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hiface_pcm_free(ptr nocapture noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pcm.i = getelementptr inbounds %struct.hiface_chip, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm.i, align 4
  %buffer.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 0, i32 3
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 4
  tail call void @kfree(ptr noundef %7) #6
  %buffer.1.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 1, i32 3
  %8 = ptrtoint ptr %buffer.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.1.i, align 4
  tail call void @kfree(ptr noundef %9) #6
  %buffer.2.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 2, i32 3
  %10 = ptrtoint ptr %buffer.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer.2.i, align 4
  tail call void @kfree(ptr noundef %11) #6
  %buffer.3.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 3, i32 3
  %12 = ptrtoint ptr %buffer.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer.3.i, align 4
  tail call void @kfree(ptr noundef %13) #6
  %buffer.4.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 4, i32 3
  %14 = ptrtoint ptr %buffer.4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.4.i, align 4
  tail call void @kfree(ptr noundef %15) #6
  %buffer.5.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 5, i32 3
  %16 = ptrtoint ptr %buffer.5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer.5.i, align 4
  tail call void @kfree(ptr noundef %17) #6
  %buffer.6.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 6, i32 3
  %18 = ptrtoint ptr %buffer.6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.6.i, align 4
  tail call void @kfree(ptr noundef %19) #6
  %buffer.7.i = getelementptr %struct.pcm_runtime, ptr %5, i32 0, i32 4, i32 7, i32 3
  %20 = ptrtoint ptr %buffer.7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer.7.i, align 4
  tail call void @kfree(ptr noundef %21) #6
  %22 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcm.i, align 4
  tail call void @kfree(ptr noundef %23) #6
  %24 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pcm.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_wait_anchor_empty_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_init_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hiface_pcm_playback(ptr nocapture noundef %sub, ptr nocapture noundef readonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.pcm_substream, ptr %sub, i32 0, i32 1
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp.not = icmp eq i32 %9, 10
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !76

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 262, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %instance, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %17, %15
  %div1.i.i = lshr i32 %mul.i.i, 3
  %dma_off = getelementptr inbounds %struct.pcm_substream, ptr %sub, i32 0, i32 3
  %18 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_off, align 4
  %add = add i32 %19, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div1.i.i)
  %cmp21.not = icmp ugt i32 %add, %div1.i.i
  br i1 %cmp21.not, label %if.else, label %do.body23

do.body23:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hiface_pcm_playback.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hiface_pcm_playback, %if.then33)) #6
          to label %do.end37 [label %if.then33], !srcloc !77

if.then33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_off, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hiface_pcm_playback.__UNIQUE_ID_ddebug240, ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %div1.i.i, i32 noundef %21) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body23
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %22 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_area, align 4
  %24 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_off, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %25
  %buffer = getelementptr inbounds %struct.pcm_urb, ptr %urb, i32 0, i32 3
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end37
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end37 ]
  %arrayidx.i = getelementptr i32, ptr %add.ptr, i32 %i.017.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 16) #6
  %arrayidx5.i = getelementptr i32, ptr %27, i32 %i.017.i
  %30 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.body.i.if.end66_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end66_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hiface_pcm_playback.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hiface_pcm_playback, %if.then51)) #6
          to label %do.end55 [label %if.then51], !srcloc !77

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_off, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hiface_pcm_playback.__UNIQUE_ID_ddebug241, ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %div1.i.i, i32 noundef %32) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %if.else
  %33 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_off, align 4
  %sub57 = sub i32 %div1.i.i, %34
  %dma_area58 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %35 = ptrtoint ptr %dma_area58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_area58, align 4
  %add.ptr60 = getelementptr i8, ptr %36, i32 %34
  %buffer61 = getelementptr inbounds %struct.pcm_urb, ptr %urb, i32 0, i32 3
  %37 = ptrtoint ptr %buffer61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub57)
  %cmp16.not.i = icmp ult i32 %sub57, 4
  br i1 %cmp16.not.i, label %do.end55.memcpy_swahw32.exit132_crit_edge, label %for.body.preheader.i

do.end55.memcpy_swahw32.exit132_crit_edge:        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %memcpy_swahw32.exit132

for.body.preheader.i:                             ; preds = %do.end55
  %div15.i = lshr i32 %sub57, 2
  br label %for.body.i122

for.body.i122:                                    ; preds = %for.body.i122.for.body.i122_crit_edge, %for.body.preheader.i
  %i.017.i120 = phi i32 [ %inc.i129, %for.body.i122.for.body.i122_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i121 = getelementptr i32, ptr %add.ptr60, i32 %i.017.i120
  %39 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i121, align 4
  %or.i123 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 16) #6
  %arrayidx5.i128 = getelementptr i32, ptr %38, i32 %i.017.i120
  %41 = ptrtoint ptr %arrayidx5.i128 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i123, ptr %arrayidx5.i128, align 4
  %inc.i129 = add nuw nsw i32 %i.017.i120, 1
  %exitcond.not.i130 = icmp eq i32 %inc.i129, %div15.i
  br i1 %exitcond.not.i130, label %for.body.i122.memcpy_swahw32.exit132_crit_edge, label %for.body.i122.for.body.i122_crit_edge

for.body.i122.for.body.i122_crit_edge:            ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i122

for.body.i122.memcpy_swahw32.exit132_crit_edge:   ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %memcpy_swahw32.exit132

memcpy_swahw32.exit132:                           ; preds = %for.body.i122.memcpy_swahw32.exit132_crit_edge, %do.end55.memcpy_swahw32.exit132_crit_edge
  %42 = ptrtoint ptr %dma_area58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_area58, align 4
  %44 = ptrtoint ptr %buffer61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer61, align 4
  %add.ptr64 = getelementptr i8, ptr %45, i32 %sub57
  %sub65 = sub i32 4096, %sub57
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub65)
  %cmp16.not.i133 = icmp ult i32 %sub65, 4
  br i1 %cmp16.not.i133, label %memcpy_swahw32.exit132.if.end66_crit_edge, label %for.body.preheader.i135

memcpy_swahw32.exit132.if.end66_crit_edge:        ; preds = %memcpy_swahw32.exit132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

for.body.preheader.i135:                          ; preds = %memcpy_swahw32.exit132
  %div15.i134 = lshr i32 %sub65, 2
  br label %for.body.i138

for.body.i138:                                    ; preds = %for.body.i138.for.body.i138_crit_edge, %for.body.preheader.i135
  %i.017.i136 = phi i32 [ %inc.i145, %for.body.i138.for.body.i138_crit_edge ], [ 0, %for.body.preheader.i135 ]
  %arrayidx.i137 = getelementptr i32, ptr %43, i32 %i.017.i136
  %46 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i137, align 4
  %or.i139 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 16) #6
  %arrayidx5.i144 = getelementptr i32, ptr %add.ptr64, i32 %i.017.i136
  %48 = ptrtoint ptr %arrayidx5.i144 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or.i139, ptr %arrayidx5.i144, align 4
  %inc.i145 = add nuw nsw i32 %i.017.i136, 1
  %exitcond.not.i146 = icmp eq i32 %inc.i145, %div15.i134
  br i1 %exitcond.not.i146, label %for.body.i138.if.end66_crit_edge, label %for.body.i138.for.body.i138_crit_edge

for.body.i138.for.body.i138_crit_edge:            ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i138

for.body.i138.if.end66_crit_edge:                 ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end66:                                         ; preds = %for.body.i138.if.end66_crit_edge, %memcpy_swahw32.exit132.if.end66_crit_edge, %for.body.i.if.end66_crit_edge
  %49 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_off, align 4
  %add68 = add i32 %50, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %div1.i.i)
  %cmp70.not = icmp ult i32 %add68, %div1.i.i
  %sub73 = select i1 %cmp70.not, i32 0, i32 %div1.i.i
  %spec.select = sub i32 %add68, %sub73
  %51 = ptrtoint ptr %dma_off to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.select, ptr %dma_off, align 4
  %period_off = getelementptr inbounds %struct.pcm_substream, ptr %sub, i32 0, i32 4
  %52 = ptrtoint ptr %period_off to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %period_off, align 4
  %add75 = add i32 %53, 4096
  store i32 %add75, ptr %period_off, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %54 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %55)
  %cmp77.not = icmp ult i32 %add75, %55
  br i1 %cmp77.not, label %if.end66.cleanup_crit_edge, label %if.then78

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then78:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %rem = urem i32 %add75, %55
  %56 = ptrtoint ptr %period_off to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %rem, ptr %period_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.end66.cleanup_crit_edge
  %57 = xor i1 %cmp77.not, true
  ret i1 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiface_pcm_open(ptr noundef %alsa_sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 11
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %panic, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #6
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @pcm_hw, i32 64)
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp ne i32 %8, 0
  %playback = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  %tobool3.not38 = icmp eq ptr %playback, null
  %tobool3.not = select i1 %cmp, i1 true, i1 %tobool3.not38
  br i1 %tobool3.not, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %extra_freq = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %extra_freq to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %extra_freq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.end7.if.end17_crit_edge, label %if.then9

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then9:                                         ; preds = %if.end7
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 2
  %15 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rates, align 8
  %or = or i32 %16, -2147483648
  store i32 %or, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  %17 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 384000, ptr %rate_max, align 8
  %18 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %19, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @constraints_extra_rates) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %if.then14, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %instance = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %alsa_sub, ptr %instance, align 4
  %active = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %active, align 4
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then14 ], [ 0, %if.end17 ], [ -22, %if.then4 ], [ -32, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiface_pcm_close(ptr nocapture noundef readonly %alsa_sub) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  br label %hiface_pcm_get_substream.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.20) #10
  br label %hiface_pcm_get_substream.exit

hiface_pcm_get_substream.exit:                    ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi ptr [ %playback.i, %if.then.i ], [ null, %do.end.i ]
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %panic, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %hiface_pcm_get_substream.exit.cleanup_crit_edge

hiface_pcm_get_substream.exit.cleanup_crit_edge:  ; preds = %hiface_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %hiface_pcm_get_substream.exit
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #6
  %tobool1.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @hiface_pcm_stream_stop(ptr noundef %1)
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %retval.0.i) #6
  %instance = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %instance, align 4
  %active = getelementptr inbounds %struct.pcm_substream, ptr %retval.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %retval.0.i, i32 noundef %call5) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %hiface_pcm_get_substream.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiface_pcm_prepare(ptr nocapture noundef readonly %alsa_sub) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %hiface_pcm_get_substream.exit, label %hiface_pcm_get_substream.exit.thread

hiface_pcm_get_substream.exit:                    ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %panic, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %hiface_pcm_get_substream.exit.cleanup_crit_edge

hiface_pcm_get_substream.exit.cleanup_crit_edge:  ; preds = %hiface_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hiface_pcm_get_substream.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.20) #10
  %panic39 = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %panic39 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %panic39, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not40 = icmp eq i8 %13, 0
  %spec.select = select i1 %tobool.not40, i32 -19, i32 -32
  br label %cleanup

if.end:                                           ; preds = %hiface_pcm_get_substream.exit
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  %tobool1.not = icmp eq ptr %playback.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %stream_mutex = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %stream_mutex, i32 noundef 0) #6
  tail call fastcc void @hiface_pcm_stream_stop(ptr noundef %1)
  %dma_off = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %dma_off to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dma_off, align 4
  %period_off = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %period_off to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %period_off, align 4
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp eq i8 %17, 0
  br i1 %cmp, label %if.then5, label %if.end3.if.end16_crit_edge

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then5:                                         ; preds = %if.end3
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rate, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %19, label %if.then5.if.then8_crit_edge [
    i32 44100, label %if.then5.sw.epilog.i_crit_edge
    i32 48000, label %sw.bb1.i
    i32 88200, label %sw.bb2.i
    i32 96000, label %sw.bb3.i
    i32 176400, label %sw.bb4.i
    i32 192000, label %sw.bb5.i
    i32 352800, label %sw.bb6.i
    i32 384000, label %sw.bb7.i
  ]

if.then5.sw.epilog.i_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then5.if.then8_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then5.sw.epilog.i_crit_edge
  %rate_value.0.i = phi i16 [ 104, %sw.bb7.i ], [ 88, %sw.bb6.i ], [ 72, %sw.bb5.i ], [ 64, %sw.bb4.i ], [ 74, %sw.bb3.i ], [ 66, %sw.bb2.i ], [ 75, %sw.bb1.i ], [ 67, %if.then5.sw.epilog.i_crit_edge ]
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %23, i8 noundef zeroext 0, i8 noundef zeroext -80, i8 noundef zeroext 67, i16 noundef zeroext %rate_value.0.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10, label %sw.epilog.i.if.then8_crit_edge

sw.epilog.i.if.then8_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %sw.epilog.i.if.then8_crit_edge, %if.then5.if.then8_crit_edge
  %.str.25.sink.i = phi ptr [ @.str.22, %if.then5.if.then8_crit_edge ], [ @.str.25, %sw.epilog.i.if.then8_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.then5.if.then8_crit_edge ], [ %call.i, %sw.epilog.i.if.then8_crit_edge ]
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull %.str.25.sink.i, i32 noundef %19) #10
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

if.end10:                                         ; preds = %sw.epilog.i
  %call11 = tail call fastcc i32 @hiface_pcm_stream_start(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end10.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %stream_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13, %if.then8, %if.end.cleanup_crit_edge, %hiface_pcm_get_substream.exit.thread, %hiface_pcm_get_substream.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph.i, %if.then8 ], [ %call11, %if.then13 ], [ 0, %if.end16 ], [ -32, %hiface_pcm_get_substream.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %spec.select, %hiface_pcm_get_substream.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiface_pcm_trigger(ptr nocapture noundef readonly %alsa_sub, i32 noundef %cmd) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %hiface_pcm_get_substream.exit, label %hiface_pcm_get_substream.exit.thread

hiface_pcm_get_substream.exit:                    ; preds = %entry
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %panic, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %hiface_pcm_get_substream.exit.cleanup_crit_edge

hiface_pcm_get_substream.exit.cleanup_crit_edge:  ; preds = %hiface_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hiface_pcm_get_substream.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.20) #10
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %panic18 = getelementptr inbounds %struct.pcm_runtime, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %panic18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %panic18, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not19 = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool.not19, i32 -19, i32 -32
  br label %cleanup

if.end:                                           ; preds = %hiface_pcm_get_substream.exit
  %tobool1.not = icmp eq ptr %playback.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %16 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %cmd, label %if.end3.cleanup_crit_edge [
    i32 1, label %if.end3.sw.bb_crit_edge
    i32 4, label %if.end3.sw.bb_crit_edge23
    i32 0, label %if.end3.sw.bb5_crit_edge
    i32 3, label %if.end3.sw.bb5_crit_edge24
  ]

if.end3.sw.bb5_crit_edge24:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end3.sw.bb5_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

if.end3.sw.bb_crit_edge23:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge23
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %playback.i) #6
  %active = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %active, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull %playback.i) #6
  br label %cleanup

sw.bb5:                                           ; preds = %if.end3.sw.bb5_crit_edge, %if.end3.sw.bb5_crit_edge24
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %playback.i) #6
  %active7 = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %active7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %active7, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull %playback.i) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hiface_pcm_get_substream.exit.thread, %hiface_pcm_get_substream.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -32, %hiface_pcm_get_substream.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %spec.select, %hiface_pcm_get_substream.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hiface_pcm_pointer(ptr nocapture noundef readonly %alsa_sub) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %hiface_pcm_get_substream.exit, label %hiface_pcm_get_substream.exit.thread

hiface_pcm_get_substream.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

hiface_pcm_get_substream.exit:                    ; preds = %entry
  %playback.i = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %panic, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp ne i8 %11, 0
  %tobool1.not = icmp eq ptr %playback.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %hiface_pcm_get_substream.exit.cleanup_crit_edge, label %do.body2

hiface_pcm_get_substream.exit.cleanup_crit_edge:  ; preds = %hiface_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %hiface_pcm_get_substream.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %playback.i) #6
  %dma_off = getelementptr inbounds %struct.pcm_runtime, ptr %1, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_off, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %playback.i, i32 noundef %call4) #6
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %alsa_sub, i32 0, i32 11
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %13, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %hiface_pcm_get_substream.exit.cleanup_crit_edge, %hiface_pcm_get_substream.exit.thread
  %retval.0 = phi i32 [ %div.i, %do.body2 ], [ -1, %hiface_pcm_get_substream.exit.cleanup_crit_edge ], [ -1, %hiface_pcm_get_substream.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hiface_pcm_stream_start(ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_state = getelementptr inbounds %struct.pcm_runtime, ptr %rt, i32 0, i32 6
  %0 = ptrtoint ptr %stream_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.cleanup76_crit_edge

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.then:                                          ; preds = %entry
  %panic = getelementptr inbounds %struct.pcm_runtime, ptr %rt, i32 0, i32 3
  %2 = ptrtoint ptr %panic to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %panic, align 4
  %3 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %stream_state, align 4
  %buffer = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 4096)
  %instance = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 0, i32 1
  %submitted = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 0, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance, ptr noundef %submitted) #6
  %call = tail call i32 @usb_submit_urb(ptr noundef %instance, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %if.then.if.then12_crit_edge

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond:                                         ; preds = %if.then
  %buffer.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 1, i32 3
  %7 = ptrtoint ptr %buffer.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer.1, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 4096)
  %instance.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 1, i32 1
  %submitted.1 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 1, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance.1, ptr noundef %submitted.1) #6
  %call.1 = tail call i32 @usb_submit_urb(ptr noundef %instance.1, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.if.then12_crit_edge

for.cond.if.then12_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond.1:                                       ; preds = %for.cond
  %buffer.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 2, i32 3
  %10 = ptrtoint ptr %buffer.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer.2, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 4096)
  %instance.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 2, i32 1
  %submitted.2 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 2, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance.2, ptr noundef %submitted.2) #6
  %call.2 = tail call i32 @usb_submit_urb(ptr noundef %instance.2, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.if.then12_crit_edge

for.cond.1.if.then12_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond.2:                                       ; preds = %for.cond.1
  %buffer.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 3, i32 3
  %13 = ptrtoint ptr %buffer.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer.3, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 4096)
  %instance.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 3, i32 1
  %submitted.3 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 3, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance.3, ptr noundef %submitted.3) #6
  %call.3 = tail call i32 @usb_submit_urb(ptr noundef %instance.3, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.if.then12_crit_edge

for.cond.2.if.then12_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond.3:                                       ; preds = %for.cond.2
  %buffer.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 4, i32 3
  %16 = ptrtoint ptr %buffer.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer.4, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 4096)
  %instance.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 4, i32 1
  %submitted.4 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 4, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance.4, ptr noundef %submitted.4) #6
  %call.4 = tail call i32 @usb_submit_urb(ptr noundef %instance.4, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.if.then12_crit_edge

for.cond.3.if.then12_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond.4:                                       ; preds = %for.cond.3
  %buffer.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 5, i32 3
  %19 = ptrtoint ptr %buffer.5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer.5, align 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 4096)
  %instance.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 5, i32 1
  %submitted.5 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 5, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance.5, ptr noundef %submitted.5) #6
  %call.5 = tail call i32 @usb_submit_urb(ptr noundef %instance.5, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.if.then12_crit_edge

for.cond.4.if.then12_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond.5:                                       ; preds = %for.cond.4
  %buffer.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 6, i32 3
  %22 = ptrtoint ptr %buffer.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer.6, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 4096)
  %instance.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 6, i32 1
  %submitted.6 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 6, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance.6, ptr noundef %submitted.6) #6
  %call.6 = tail call i32 @usb_submit_urb(ptr noundef %instance.6, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.if.then12_crit_edge

for.cond.5.if.then12_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond.6:                                       ; preds = %for.cond.5
  %buffer.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 7, i32 3
  %25 = ptrtoint ptr %buffer.7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer.7, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 4096)
  %instance.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 7, i32 1
  %submitted.7 = getelementptr %struct.pcm_runtime, ptr %rt, i32 0, i32 4, i32 7, i32 2
  tail call void @usb_anchor_urb(ptr noundef %instance.7, ptr noundef %submitted.7) #6
  %call.7 = tail call i32 @usb_submit_urb(ptr noundef %instance.7, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %for.cond.6.if.then12_crit_edge

for.cond.6.if.then12_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 230) #6
  %stream_wait_cond = getelementptr inbounds %struct.pcm_runtime, ptr %rt, i32 0, i32 9
  %28 = ptrtoint ptr %stream_wait_cond to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %stream_wait_cond, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool16.not = icmp eq i8 %29, 0
  br i1 %tobool16.not, label %if.then26, label %for.cond.7.if.then59_crit_edge

for.cond.7.if.then59_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.then12:                                        ; preds = %for.cond.6.if.then12_crit_edge, %for.cond.5.if.then12_crit_edge, %for.cond.4.if.then12_crit_edge, %for.cond.3.if.then12_crit_edge, %for.cond.2.if.then12_crit_edge, %for.cond.1.if.then12_crit_edge, %for.cond.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %call.lcssa = phi i32 [ %call, %if.then.if.then12_crit_edge ], [ %call.1, %for.cond.if.then12_crit_edge ], [ %call.2, %for.cond.1.if.then12_crit_edge ], [ %call.3, %for.cond.2.if.then12_crit_edge ], [ %call.4, %for.cond.3.if.then12_crit_edge ], [ %call.5, %for.cond.4.if.then12_crit_edge ], [ %call.6, %for.cond.5.if.then12_crit_edge ], [ %call.7, %for.cond.6.if.then12_crit_edge ]
  tail call fastcc void @hiface_pcm_stream_stop(ptr noundef %rt)
  br label %cleanup76

if.then26:                                        ; preds = %for.cond.7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %30 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %stream_wait_queue = getelementptr inbounds %struct.pcm_runtime, ptr %rt, i32 0, i32 8
  %call29114 = call i32 @prepare_to_wait_event(ptr noundef %stream_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %31 = ptrtoint ptr %stream_wait_cond to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %stream_wait_cond, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool32.not115.not = icmp eq i8 %32, 0
  br i1 %tobool32.not115.not, label %if.then26.cleanup_crit_edge, label %if.then26.if.end55_crit_edge

if.then26.if.end55_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %__ret27.1117 = phi i32 [ %__ret27.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then26.cleanup_crit_edge ]
  %call51 = call i32 @schedule_timeout(i32 noundef %__ret27.1117) #6
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %stream_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %33 = ptrtoint ptr %stream_wait_cond to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %stream_wait_cond, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool37.not = icmp eq i32 %call51, 0
  %spec.store.select78 = select i1 %tobool37.not, i32 1, i32 %call51
  %__ret27.1 = select i1 %tobool32.not, i32 %call51, i32 %spec.store.select78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret27.1)
  %tobool44.not = icmp eq i32 %__ret27.1, 0
  %not.tobool32.not = xor i1 %tobool32.not, true
  %35 = select i1 %not.tobool32.not, i1 true, i1 %tobool44.not
  br i1 %35, label %cleanup.if.end55_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.if.end55_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.end55:                                         ; preds = %cleanup.if.end55_crit_edge, %if.then26.if.end55_crit_edge
  call void @finish_wait(ptr noundef %stream_wait_queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  %36 = ptrtoint ptr %stream_wait_cond to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %stream_wait_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool58.not = icmp eq i8 %.pr, 0
  br i1 %tobool58.not, label %if.else, label %if.end55.if.then59_crit_edge

if.end55.if.then59_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.then59:                                        ; preds = %if.end55.if.then59_crit_edge, %for.cond.7.if.then59_crit_edge
  %37 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rt, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hiface_pcm_stream_start.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hiface_pcm_stream_start, %if.then69)) #6
          to label %do.end72 [label %if.then69], !srcloc !77

if.then69:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %dev60 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hiface_pcm_stream_start.__UNIQUE_ID_ddebug239, ptr noundef %dev60, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %if.then59
  %41 = ptrtoint ptr %stream_state to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %stream_state, align 4
  br label %cleanup76

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @hiface_pcm_stream_stop(ptr noundef %rt)
  br label %cleanup76

cleanup76:                                        ; preds = %if.else, %do.end72, %if.then12, %entry.cleanup76_crit_edge
  %retval.0 = phi i32 [ %call.lcssa, %if.then12 ], [ -5, %if.else ], [ 0, %do.end72 ], [ 0, %entry.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @hiface_pcm_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/usb/hiface/pcm.c", i32 577, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @hiface_pcm_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/usb/hiface/pcm.c", i32 578, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hiface_pcm_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/usb/hiface/pcm.c", i32 579, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/usb/hiface/pcm.c", i32 588, i32 32}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/usb/hiface/pcm.c", i32 590, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hiface_pcm_init._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @hiface_pcm_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @init_usb_anchor.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @init_usb_anchor.__key.12, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/usb/hiface/pcm.c", i32 267, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hiface_pcm_playback.__UNIQUE_ID_ddebug240, !26, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/usb/hiface/pcm.c", i32 277, i32 3}
!32 = !{ptr @hiface_pcm_playback.__UNIQUE_ID_ddebug241, !31, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!33 = !{ptr @pcm_ops, !34, !"pcm_ops", i1 false, i1 false}
!34 = !{!"../sound/usb/hiface/pcm.c", i32 498, i32 33}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/usb/hiface/pcm.c", i32 368, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hiface_pcm_open._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hiface_pcm_open._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @pcm_hw, !41, !"pcm_hw", i1 false, i1 false}
!41 = !{!"../sound/usb/hiface/pcm.c", i32 72, i32 38}
!42 = !{ptr @constraints_extra_rates, !43, !"constraints_extra_rates", i1 false, i1 false}
!43 = !{!"../sound/usb/hiface/pcm.c", i32 66, i32 48}
!44 = !{ptr @rates, !45, !"rates", i1 false, i1 false}
!45 = !{!"../sound/usb/hiface/pcm.c", i32 64, i32 27}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/hiface/pcm.c", i32 178, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hiface_pcm_get_substream._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @hiface_pcm_get_substream._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/usb/hiface/pcm.c", i32 147, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hiface_pcm_set_rate._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hiface_pcm_set_rate._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/hiface/pcm.c", i32 164, i32 3}
!58 = !{ptr @hiface_pcm_set_rate._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hiface_pcm_set_rate._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/usb/hiface/pcm.c", i32 233, i32 4}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hiface_pcm_stream_start.__UNIQUE_ID_ddebug239, !61, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 2000000000, i32 2002000, i32 2001000, i32 2000000, i32 2000000000}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148214102, i64 2148214107, i64 2148214120, i64 2148214164, i64 2148214198, i64 2148214219}
