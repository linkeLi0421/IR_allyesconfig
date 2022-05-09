; ModuleID = '/llk/IR_all_yes/sound/usb/caiaq/audio.c_pt.bc'
source_filename = "../sound/usb/caiaq/audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.snd_usb_caiaqdev = type { %struct.snd_usb_audio, %struct.urb, %struct.urb, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], %struct.caiaq_device_spec, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, ptr, ptr, i32, i32, i32, [32 x ptr], [32 x ptr], [256 x i8], [2 x i8], ptr, [64 x i8], [128 x i16], ptr, [512 x i8], ptr, %struct.snd_pcm_hardware, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.caiaq_device_spec = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_usb_caiaq_cb_info = type { ptr, i32 }
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

@snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_caiaq\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_usb_caiaq_audio_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/usb/caiaq/audio.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdev->n_audio_in = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdev->n_audio_out = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdev->n_streams = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 789, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to initialize device, too many streams.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_audio_init._entry_ptr = internal global ptr @snd_usb_caiaq_audio_init._entry, section ".printk_index", align 4
@snd_usb_caiaq_audio_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 794, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bogus number of streams: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_audio_init._entry_ptr.11 = internal global ptr @snd_usb_caiaq_audio_init._entry.9, section ".printk_index", align 4
@snd_usb_caiaq_audio_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 802, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_pcm_new() returned %d\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_audio_init._entry_ptr.14 = internal global ptr @snd_usb_caiaq_audio_init._entry.12, section ".printk_index", align 4
@snd_usb_caiaq_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65793, i64 8589934592, i32 1216, i32 44100, i32 0, i32 2, i32 2, i32 131072, i32 128, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_usb_caiaq_substream_open, ptr @snd_usb_caiaq_substream_close, ptr null, ptr null, ptr @snd_usb_caiaq_pcm_hw_free, ptr @snd_usb_caiaq_pcm_prepare, ptr @snd_usb_caiaq_pcm_trigger, ptr null, ptr @snd_usb_caiaq_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_audio_free.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_usb_caiaq_audio_free\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%p)\0A\00", [24 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_substream_open.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.16, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_usb_caiaq_substream_open\00", [35 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_substream_close.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.16, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_usb_caiaq_substream_close\00", [34 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_pcm_prepare.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.16, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_usb_caiaq_pcm_prepare\00", [38 x i8] zeroinitializer }, align 32
@stream_start.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.16, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stream_start\00", [19 x i8] zeroinitializer }, align 32
@stream_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.20, ptr @.str.2, i32 111, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to trigger read #%d! (ret %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@stream_start._entry_ptr = internal global ptr @stream_start._entry, section ".printk_index", align 4
@snd_usb_caiaq_pcm_trigger.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_usb_caiaq_pcm_trigger\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(%p) cmd %d\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@read_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 635, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to find an output urb to use\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_completed\00", [17 x i8] zeroinitializer }, align 32
@read_completed._entry_ptr = internal global ptr @read_completed._entry, section ".printk_index", align 4
@read_in_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 511, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"streaming error detected %s %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_in_urb\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@read_in_urb._entry_ptr = internal global ptr @read_in_urb._entry, section ".printk_index", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(input)\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(output)\00", [23 x i8] zeroinitializer }, align 32
@read_in_urb_mode3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 471, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c" EXPECTED: %02x got %02x, c %d, stream %d, i %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_in_urb_mode3\00", [46 x i8] zeroinitializer }, align 32
@read_in_urb_mode3._entry_ptr = internal global ptr @read_in_urb_mode3._entry, section ".printk_index", align 4
@stream_stop.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.16, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stream_stop\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 399246364, i64 399246365, i64 399247381, i64 399247417, i64 399248781, i64 399251733, i64 399251776, i64 399251832]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 784, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 785, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 786, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 789, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 794, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 802, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"snd_usb_caiaq_pcm_hardware\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 33, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"snd_usb_caiaq_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 321, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 876, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 146, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 158, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 193, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 94, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 110, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 276, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 635, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 509, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 470, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [27 x i8] c"../sound/usb/caiaq/audio.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 125, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @read_completed._entry, ptr @read_completed._entry_ptr, ptr @read_in_urb._entry, ptr @read_in_urb._entry_ptr, ptr @read_in_urb_mode3._entry, ptr @read_in_urb_mode3._entry_ptr, ptr @snd_usb_caiaq_audio_init._entry, ptr @snd_usb_caiaq_audio_init._entry.12, ptr @snd_usb_caiaq_audio_init._entry.9, ptr @snd_usb_caiaq_audio_init._entry_ptr, ptr @snd_usb_caiaq_audio_init._entry_ptr.11, ptr @snd_usb_caiaq_audio_init._entry_ptr.14, ptr @stream_start._entry, ptr @stream_start._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @snd_usb_caiaq_pcm_hardware, ptr @snd_usb_caiaq_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_audio_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_audio_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_in_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_in_urb_mode3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_audio_init(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %num_analog_audio_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 9, i32 7
  %4 = ptrtoint ptr %num_analog_audio_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_analog_audio_in, align 8
  %num_digital_audio_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 9, i32 9
  %6 = ptrtoint ptr %num_digital_audio_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_digital_audio_in, align 2
  %8 = tail call i8 @llvm.umax.i8(i8 %5, i8 %7)
  %9 = lshr i8 %8, 1
  %div = zext i8 %9 to i32
  %n_audio_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 19
  %10 = ptrtoint ptr %n_audio_in to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %n_audio_in, align 4
  %num_analog_audio_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 9, i32 6
  %11 = ptrtoint ptr %num_analog_audio_out to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_analog_audio_out, align 1
  %num_digital_audio_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %num_digital_audio_out to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_digital_audio_out, align 1
  %15 = tail call i8 @llvm.umax.i8(i8 %12, i8 %14)
  %16 = lshr i8 %15, 1
  %div20 = zext i8 %16 to i32
  %n_audio_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 20
  %17 = ptrtoint ptr %n_audio_out to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div20, ptr %n_audio_out, align 8
  %18 = tail call i32 @llvm.umax.i32(i32 %div, i32 %div20)
  %n_streams = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 18
  %19 = ptrtoint ptr %n_streams to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %n_streams, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_audio_init, %if.then)) #7
          to label %do.body34 [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %n_audio_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_audio_in, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %21) #7
  br label %do.body34

do.body34:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_audio_init, %if.then46)) #7
          to label %do.body51 [label %if.then46], !srcloc !87

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %n_audio_out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_audio_out, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug252, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %23) #7
  br label %do.body51

do.body51:                                        ; preds = %if.then46, %do.body34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_audio_init, %if.then63)) #7
          to label %do.end67 [label %if.then63], !srcloc !87

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %n_streams to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_streams, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug253, ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %25) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  %26 = ptrtoint ptr %n_streams to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_streams, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp69 = icmp sgt i32 %27, 32
  br i1 %cmp69, label %do.end74, label %if.end75

do.end74:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end75:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp77 = icmp slt i32 %27, 1
  br i1 %cmp77, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %27) #10
  br label %cleanup

if.end84:                                         ; preds = %if.end75
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 8
  %product_name = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 17
  %30 = ptrtoint ptr %n_audio_out to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_audio_out, align 8
  %32 = ptrtoint ptr %n_audio_in to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_audio_in, align 4
  %pcm = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 45
  %call89 = tail call i32 @snd_pcm_new(ptr noundef %29, ptr noundef %product_name, i32 noundef 0, i32 noundef %31, i32 noundef %33, ptr noundef %pcm) #7
  %34 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call89, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %do.end95, label %if.end96

do.end95:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %call89) #10
  br label %cleanup

if.end96:                                         ; preds = %if.end84
  %35 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cdev, ptr %private_data, align 8
  %38 = load ptr, ptr %pcm, align 4
  %name = getelementptr inbounds %struct.snd_pcm, ptr %38, i32 0, i32 7
  %call102 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %product_name, i32 noundef 80) #7
  %sub_playback = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 36
  %pcm_info = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 46
  %39 = call ptr @memset(ptr %sub_playback, i32 0, i32 256)
  %40 = call ptr @memcpy(ptr %pcm_info, ptr @snd_usb_caiaq_pcm_hardware, i32 64)
  %samplerates = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 33
  %41 = ptrtoint ptr %samplerates to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1216, ptr %samplerates, align 4
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 4
  %42 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %usb_id, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %if.end96.sw.epilog_crit_edge [
    i32 399247381, label %if.end96.sw.bb_crit_edge
    i32 399251776, label %if.end96.sw.bb_crit_edge247
    i32 399251733, label %if.end96.sw.bb_crit_edge248
    i32 399248781, label %if.end96.sw.bb_crit_edge249
    i32 399246364, label %if.end96.sw.bb108_crit_edge
    i32 399247417, label %if.end96.sw.bb108_crit_edge250
    i32 399251832, label %if.end96.sw.bb108_crit_edge251
    i32 399246365, label %if.end96.sw.bb108_crit_edge252
  ]

if.end96.sw.bb108_crit_edge252:                   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb108

if.end96.sw.bb108_crit_edge251:                   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb108

if.end96.sw.bb108_crit_edge250:                   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb108

if.end96.sw.bb108_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb108

if.end96.sw.bb_crit_edge249:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end96.sw.bb_crit_edge248:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end96.sw.bb_crit_edge247:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end96.sw.bb_crit_edge:                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end96.sw.epilog_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end96.sw.bb_crit_edge, %if.end96.sw.bb_crit_edge247, %if.end96.sw.bb_crit_edge248, %if.end96.sw.bb_crit_edge249
  %45 = ptrtoint ptr %samplerates to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 5312, ptr %samplerates, align 4
  br label %sw.bb108

sw.bb108:                                         ; preds = %sw.bb, %if.end96.sw.bb108_crit_edge, %if.end96.sw.bb108_crit_edge250, %if.end96.sw.bb108_crit_edge251, %if.end96.sw.bb108_crit_edge252
  %46 = ptrtoint ptr %samplerates to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %samplerates, align 4
  %or110 = or i32 %47, 512
  store i32 %or110, ptr %samplerates, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb108, %if.end96.sw.epilog_crit_edge
  %48 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcm, align 4
  tail call void @snd_pcm_set_ops(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @snd_usb_caiaq_ops) #7
  %50 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcm, align 4
  tail call void @snd_pcm_set_ops(ptr noundef %51, i32 noundef 1, ptr noundef nonnull @snd_usb_caiaq_ops) #7
  %52 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcm, align 4
  %call114 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %53, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3264, i32 noundef 256) #11
  %data_cb_info = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 5
  %55 = ptrtoint ptr %data_cb_info to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %data_cb_info, align 4
  %tobool117.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool117.not, label %sw.epilog.cleanup_crit_edge, label %if.end119

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end119:                                        ; preds = %sw.epilog
  %outurb_active_mask = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 35
  %56 = ptrtoint ptr %outurb_active_mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %outurb_active_mask, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end119
  %i.0246 = phi i32 [ 0, %if.end119 ], [ %inc, %for.body.for.body_crit_edge ]
  %57 = ptrtoint ptr %data_cb_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data_cb_info, align 4
  %arrayidx = getelementptr %struct.snd_usb_caiaq_cb_info, ptr %58, i32 %i.0246
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cdev, ptr %arrayidx, align 4
  %60 = load ptr, ptr %data_cb_info, align 4
  %index = getelementptr %struct.snd_usb_caiaq_cb_info, ptr %60, i32 %i.0246, i32 1
  %61 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %i.0246, ptr %index, align 4
  %inc = add nuw nsw i32 %i.0246, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %call129 = call fastcc ptr @alloc_urbs(ptr noundef %cdev, i32 noundef 1, ptr noundef nonnull %ret)
  %data_urbs_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 3
  %62 = ptrtoint ptr %data_urbs_in to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call129, ptr %data_urbs_in, align 4
  %63 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp130 = icmp slt i32 %64, 0
  br i1 %cmp130, label %if.then132, label %if.end135

if.then132:                                       ; preds = %for.end
  %65 = ptrtoint ptr %data_cb_info to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data_cb_info, align 4
  tail call void @kfree(ptr noundef %66) #7
  %67 = ptrtoint ptr %data_urbs_in to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data_urbs_in, align 4
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %if.then132.cleanup_crit_edge, label %if.then132.for.body.i_crit_edge

if.then132.for.body.i_crit_edge:                  ; preds = %if.then132
  br label %for.body.i

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then132.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then132.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %68, i32 %i.017.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %70, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end3.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %70) #7
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %74) #7
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_free_urb(ptr noundef %76) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %68) #7
  br label %cleanup

if.end135:                                        ; preds = %for.end
  %call136 = call fastcc ptr @alloc_urbs(ptr noundef %cdev, i32 noundef 0, ptr noundef nonnull %ret)
  %data_urbs_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 4
  %77 = ptrtoint ptr %data_urbs_out to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call136, ptr %data_urbs_out, align 8
  %78 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp137 = icmp slt i32 %79, 0
  br i1 %cmp137, label %if.then139, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then139:                                       ; preds = %if.end135
  %80 = ptrtoint ptr %data_cb_info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data_cb_info, align 4
  tail call void @kfree(ptr noundef %81) #7
  %82 = ptrtoint ptr %data_urbs_in to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data_urbs_in, align 4
  %tobool.not.i219 = icmp eq ptr %83, null
  br i1 %tobool.not.i219, label %if.then139.free_urbs.exit230_crit_edge, label %if.then139.for.body.i223_crit_edge

if.then139.for.body.i223_crit_edge:               ; preds = %if.then139
  br label %for.body.i223

if.then139.free_urbs.exit230_crit_edge:           ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_urbs.exit230

for.body.i223:                                    ; preds = %for.inc.i228.for.body.i223_crit_edge, %if.then139.for.body.i223_crit_edge
  %i.017.i220 = phi i32 [ %inc.i226, %for.inc.i228.for.body.i223_crit_edge ], [ 0, %if.then139.for.body.i223_crit_edge ]
  %arrayidx.i221 = getelementptr ptr, ptr %83, i32 %i.017.i220
  %84 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i221, align 4
  %tobool1.not.i222 = icmp eq ptr %85, null
  br i1 %tobool1.not.i222, label %for.body.i223.for.inc.i228_crit_edge, label %if.end3.i225

for.body.i223.for.inc.i228_crit_edge:             ; preds = %for.body.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i228

if.end3.i225:                                     ; preds = %for.body.i223
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %85) #7
  %86 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i221, align 4
  %transfer_buffer.i224 = getelementptr inbounds %struct.urb, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %transfer_buffer.i224 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %transfer_buffer.i224, align 4
  tail call void @kfree(ptr noundef %89) #7
  %90 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i221, align 4
  tail call void @usb_free_urb(ptr noundef %91) #7
  br label %for.inc.i228

for.inc.i228:                                     ; preds = %if.end3.i225, %for.body.i223.for.inc.i228_crit_edge
  %inc.i226 = add nuw nsw i32 %i.017.i220, 1
  %exitcond.not.i227 = icmp eq i32 %inc.i226, 32
  br i1 %exitcond.not.i227, label %for.end.i229, label %for.inc.i228.for.body.i223_crit_edge

for.inc.i228.for.body.i223_crit_edge:             ; preds = %for.inc.i228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i223

for.end.i229:                                     ; preds = %for.inc.i228
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %83) #7
  br label %free_urbs.exit230

free_urbs.exit230:                                ; preds = %for.end.i229, %if.then139.free_urbs.exit230_crit_edge
  %92 = ptrtoint ptr %data_urbs_out to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data_urbs_out, align 8
  %tobool.not.i231 = icmp eq ptr %93, null
  br i1 %tobool.not.i231, label %free_urbs.exit230.cleanup_crit_edge, label %free_urbs.exit230.for.body.i235_crit_edge

free_urbs.exit230.for.body.i235_crit_edge:        ; preds = %free_urbs.exit230
  br label %for.body.i235

free_urbs.exit230.cleanup_crit_edge:              ; preds = %free_urbs.exit230
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i235:                                    ; preds = %for.inc.i240.for.body.i235_crit_edge, %free_urbs.exit230.for.body.i235_crit_edge
  %i.017.i232 = phi i32 [ %inc.i238, %for.inc.i240.for.body.i235_crit_edge ], [ 0, %free_urbs.exit230.for.body.i235_crit_edge ]
  %arrayidx.i233 = getelementptr ptr, ptr %93, i32 %i.017.i232
  %94 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i233, align 4
  %tobool1.not.i234 = icmp eq ptr %95, null
  br i1 %tobool1.not.i234, label %for.body.i235.for.inc.i240_crit_edge, label %if.end3.i237

for.body.i235.for.inc.i240_crit_edge:             ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i240

if.end3.i237:                                     ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %95) #7
  %96 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i233, align 4
  %transfer_buffer.i236 = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %transfer_buffer.i236 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %transfer_buffer.i236, align 4
  tail call void @kfree(ptr noundef %99) #7
  %100 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i233, align 4
  tail call void @usb_free_urb(ptr noundef %101) #7
  br label %for.inc.i240

for.inc.i240:                                     ; preds = %if.end3.i237, %for.body.i235.for.inc.i240_crit_edge
  %inc.i238 = add nuw nsw i32 %i.017.i232, 1
  %exitcond.not.i239 = icmp eq i32 %inc.i238, 32
  br i1 %exitcond.not.i239, label %for.end.i241, label %for.inc.i240.for.body.i235_crit_edge

for.inc.i240.for.body.i235_crit_edge:             ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i235

for.end.i241:                                     ; preds = %for.inc.i240
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %93) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end.i241, %free_urbs.exit230.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %for.end.i, %if.then132.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end95, %do.end82, %do.end74
  %retval.0 = phi i32 [ -22, %do.end74 ], [ -22, %do.end82 ], [ %call89, %do.end95 ], [ -12, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end135.cleanup_crit_edge ], [ %64, %if.then132.cleanup_crit_edge ], [ %64, %for.end.i ], [ %79, %free_urbs.exit230.cleanup_crit_edge ], [ %79, %for.end.i241 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @alloc_urbs(ptr nocapture noundef readonly %cdev, i32 noundef %dir, ptr nocapture noundef writeonly %ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %. = select i1 %cmp, i32 196608, i32 65664
  %or3 = or i32 %shl.i, %.
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 128) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %data_cb_info = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp32 = icmp eq i32 %dir, 1
  %cond33 = select i1 %cmp32, ptr @read_completed, ptr @write_completed
  br label %for.body

for.body:                                         ; preds = %for.body20.preheader.for.body_crit_edge, %for.cond.preheader
  %i.086 = phi i32 [ 0, %for.cond.preheader ], [ %inc36, %for.body20.preheader.for.body_crit_edge ]
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 8, i32 noundef 3264) #7
  %arrayidx = getelementptr ptr, ptr %call7.i.i, i32 %i.086
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %for.body.cleanup_crit_edge, label %if.end10

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4096) #11
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i84, ptr %transfer_buffer, align 4
  %tobool15.not = icmp eq ptr %call7.i.i84, null
  br i1 %tobool15.not, label %if.end10.cleanup_crit_edge, label %for.body20.preheader

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body20.preheader:                             ; preds = %if.end10
  %arrayidx22 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 0
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx22, align 4
  %length = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 512, ptr %length, align 4
  %arrayidx22.1 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 1
  %10 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %arrayidx22.1, align 4
  %length.1 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 1, i32 1
  %11 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 512, ptr %length.1, align 4
  %arrayidx22.2 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 2
  %12 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %arrayidx22.2, align 4
  %length.2 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 2, i32 1
  %13 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 512, ptr %length.2, align 4
  %arrayidx22.3 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 3
  %14 = ptrtoint ptr %arrayidx22.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1536, ptr %arrayidx22.3, align 4
  %length.3 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 3, i32 1
  %15 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %length.3, align 4
  %arrayidx22.4 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 4
  %16 = ptrtoint ptr %arrayidx22.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2048, ptr %arrayidx22.4, align 4
  %length.4 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 4, i32 1
  %17 = ptrtoint ptr %length.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 512, ptr %length.4, align 4
  %arrayidx22.5 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 5
  %18 = ptrtoint ptr %arrayidx22.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2560, ptr %arrayidx22.5, align 4
  %length.5 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 5, i32 1
  %19 = ptrtoint ptr %length.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 512, ptr %length.5, align 4
  %arrayidx22.6 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 6
  %20 = ptrtoint ptr %arrayidx22.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3072, ptr %arrayidx22.6, align 4
  %length.6 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 6, i32 1
  %21 = ptrtoint ptr %length.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %length.6, align 4
  %arrayidx22.7 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 7
  %22 = ptrtoint ptr %arrayidx22.7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3584, ptr %arrayidx22.7, align 4
  %length.7 = getelementptr %struct.urb, ptr %call6, i32 0, i32 29, i32 7, i32 1
  %23 = ptrtoint ptr %length.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 512, ptr %length.7, align 4
  %dev24 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 8
  %24 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %dev24, align 4
  %pipe26 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 10
  %25 = ptrtoint ptr %pipe26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or3, ptr %pipe26, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4096, ptr %transfer_buffer_length, align 4
  %27 = ptrtoint ptr %data_cb_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data_cb_info, align 4
  %arrayidx28 = getelementptr %struct.snd_usb_caiaq_cb_info, ptr %28, i32 %i.086
  %context = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 27
  %29 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx28, ptr %context, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 25
  %30 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %interval, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 24
  %31 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %number_of_packets, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 28
  %32 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cond33, ptr %complete, align 4
  %inc36 = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc36, 32
  br i1 %exitcond.not, label %for.body20.preheader.cleanup_crit_edge, label %for.body20.preheader.for.body_crit_edge

for.body20.preheader.for.body_crit_edge:          ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body20.preheader.cleanup_crit_edge:           ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body20.preheader.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink87 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %for.body20.preheader.cleanup_crit_edge ]
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink87, ptr %ret, align 4
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_caiaq_audio_free(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %cdev, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_audio_free.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_audio_free, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_audio_free.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %cdev) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  %dev1.i = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stream_stop.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_audio_free, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stream_stop.__UNIQUE_ID_ddebug240, ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.34, ptr noundef %cdev) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %streaming.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 21
  %8 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %do.end.i.stream_stop.exit_crit_edge, label %if.end6.i

do.end.i.stream_stop.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stream_stop.exit

if.end6.i:                                        ; preds = %do.end.i
  %10 = ptrtoint ptr %streaming.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %streaming.i, align 4
  %data_urbs_in.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 3
  %outurb_active_mask.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 35
  %data_urbs_out.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i
  %i.027.i = phi i32 [ 0, %if.end6.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %data_urbs_in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_urbs_in.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.027.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #7
  %div3.i.i = lshr i32 %i.027.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %outurb_active_mask.i, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %17 = shl nuw i32 1, %i.027.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not.i = icmp eq i32 %18, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %data_urbs_out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_urbs_out.i, align 8
  %arrayidx11.i = getelementptr ptr, ptr %20, i32 %i.027.i
  %21 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11.i, align 4
  tail call void @usb_kill_urb(ptr noundef %22) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %outurb_active_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %outurb_active_mask.i, align 4
  br label %stream_stop.exit

stream_stop.exit:                                 ; preds = %for.end.i, %do.end.i.stream_stop.exit_crit_edge
  %data_urbs_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 3
  %24 = ptrtoint ptr %data_urbs_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_urbs_in, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %stream_stop.exit.free_urbs.exit_crit_edge, label %stream_stop.exit.for.body.i10_crit_edge

stream_stop.exit.for.body.i10_crit_edge:          ; preds = %stream_stop.exit
  br label %for.body.i10

stream_stop.exit.free_urbs.exit_crit_edge:        ; preds = %stream_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_urbs.exit

for.body.i10:                                     ; preds = %for.inc.i13.for.body.i10_crit_edge, %stream_stop.exit.for.body.i10_crit_edge
  %i.017.i = phi i32 [ %inc.i11, %for.inc.i13.for.body.i10_crit_edge ], [ 0, %stream_stop.exit.for.body.i10_crit_edge ]
  %arrayidx.i9 = getelementptr ptr, ptr %25, i32 %i.017.i
  %26 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i9, align 4
  %tobool1.not.i = icmp eq ptr %27, null
  br i1 %tobool1.not.i, label %for.body.i10.for.inc.i13_crit_edge, label %if.end3.i

for.body.i10.for.inc.i13_crit_edge:               ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i13

if.end3.i:                                        ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %27) #7
  %28 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i9, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transfer_buffer.i, align 4
  tail call void @kfree(ptr noundef %31) #7
  %32 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i9, align 4
  tail call void @usb_free_urb(ptr noundef %33) #7
  br label %for.inc.i13

for.inc.i13:                                      ; preds = %if.end3.i, %for.body.i10.for.inc.i13_crit_edge
  %inc.i11 = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i12 = icmp eq i32 %inc.i11, 32
  br i1 %exitcond.not.i12, label %for.end.i14, label %for.inc.i13.for.body.i10_crit_edge

for.inc.i13.for.body.i10_crit_edge:               ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i10

for.end.i14:                                      ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %25) #7
  br label %free_urbs.exit

free_urbs.exit:                                   ; preds = %for.end.i14, %stream_stop.exit.free_urbs.exit_crit_edge
  %data_urbs_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 4
  %34 = ptrtoint ptr %data_urbs_out to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data_urbs_out, align 8
  %tobool.not.i15 = icmp eq ptr %35, null
  br i1 %tobool.not.i15, label %free_urbs.exit.free_urbs.exit26_crit_edge, label %free_urbs.exit.for.body.i19_crit_edge

free_urbs.exit.for.body.i19_crit_edge:            ; preds = %free_urbs.exit
  br label %for.body.i19

free_urbs.exit.free_urbs.exit26_crit_edge:        ; preds = %free_urbs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_urbs.exit26

for.body.i19:                                     ; preds = %for.inc.i24.for.body.i19_crit_edge, %free_urbs.exit.for.body.i19_crit_edge
  %i.017.i16 = phi i32 [ %inc.i22, %for.inc.i24.for.body.i19_crit_edge ], [ 0, %free_urbs.exit.for.body.i19_crit_edge ]
  %arrayidx.i17 = getelementptr ptr, ptr %35, i32 %i.017.i16
  %36 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i17, align 4
  %tobool1.not.i18 = icmp eq ptr %37, null
  br i1 %tobool1.not.i18, label %for.body.i19.for.inc.i24_crit_edge, label %if.end3.i21

for.body.i19.for.inc.i24_crit_edge:               ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i24

if.end3.i21:                                      ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %37) #7
  %38 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i17, align 4
  %transfer_buffer.i20 = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %transfer_buffer.i20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transfer_buffer.i20, align 4
  tail call void @kfree(ptr noundef %41) #7
  %42 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i17, align 4
  tail call void @usb_free_urb(ptr noundef %43) #7
  br label %for.inc.i24

for.inc.i24:                                      ; preds = %if.end3.i21, %for.body.i19.for.inc.i24_crit_edge
  %inc.i22 = add nuw nsw i32 %i.017.i16, 1
  %exitcond.not.i23 = icmp eq i32 %inc.i22, 32
  br i1 %exitcond.not.i23, label %for.end.i25, label %for.inc.i24.for.body.i19_crit_edge

for.inc.i24.for.body.i19_crit_edge:               ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i19

for.end.i25:                                      ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %35) #7
  br label %free_urbs.exit26

free_urbs.exit26:                                 ; preds = %for.end.i25, %free_urbs.exit.free_urbs.exit26_crit_edge
  %data_cb_info = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 5
  %44 = ptrtoint ptr %data_cb_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data_cb_info, align 4
  tail call void @kfree(ptr noundef %45) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_substream_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_substream_open.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_substream_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_substream_open.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %substream) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46
  %pcm_info = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr %pcm_info, i32 64)
  %9 = load ptr, ptr %runtime, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 46
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_substream_close(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_substream_close.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_substream_close, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_substream_close.__UNIQUE_ID_ddebug242, ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef %substream) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sub_playback = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 36
  %call4 = tail call fastcc i32 @all_substreams_zero(ptr noundef %sub_playback)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end10_crit_edge, label %land.lhs.true

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true:                                    ; preds = %do.end
  %sub_capture = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 37
  %call7 = tail call fastcc i32 @all_substreams_zero(ptr noundef %sub_capture)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %if.then9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %dev1.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stream_stop.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_substream_close, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stream_stop.__UNIQUE_ID_ddebug240, ptr noundef %9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.34, ptr noundef %1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then9
  %streaming.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %do.end.i.stream_stop.exit_crit_edge, label %if.end6.i

do.end.i.stream_stop.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stream_stop.exit

if.end6.i:                                        ; preds = %do.end.i
  %12 = ptrtoint ptr %streaming.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %streaming.i, align 4
  %data_urbs_in.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 3
  %outurb_active_mask.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 35
  %data_urbs_out.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i
  %i.027.i = phi i32 [ 0, %if.end6.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %data_urbs_in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_urbs_in.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %i.027.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #7
  %div3.i.i = lshr i32 %i.027.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %outurb_active_mask.i, i32 %div3.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i, align 4
  %19 = shl nuw i32 1, %i.027.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not.i = icmp eq i32 %20, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %data_urbs_out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_urbs_out.i, align 8
  %arrayidx11.i = getelementptr ptr, ptr %22, i32 %i.027.i
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx11.i, align 4
  tail call void @usb_kill_urb(ptr noundef %24) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %outurb_active_mask.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %outurb_active_mask.i, align 4
  br label %stream_stop.exit

stream_stop.exit:                                 ; preds = %for.end.i, %do.end.i.stream_stop.exit_crit_edge
  %samplerates = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 33
  %26 = ptrtoint ptr %samplerates to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %samplerates, align 4
  %rates = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 46, i32 2
  %28 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rates, align 8
  br label %if.end10

if.end10:                                         ; preds = %stream_stop.exit, %land.lhs.true.if.end10_crit_edge, %do.end.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_pcm_hw_free(ptr nocapture noundef readonly %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spinlock.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.i = icmp eq i32 %3, 0
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 3
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %arrayidx8.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 37, i32 %5
  %arrayidx.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 36, i32 %5
  %arrayidx8.sink.i = select i1 %cmp5.i, ptr %arrayidx.i, ptr %arrayidx8.i
  %6 = ptrtoint ptr %arrayidx8.sink.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx8.sink.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_pcm_prepare(ptr noundef %substream) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %dev2 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_pcm_prepare.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_pcm_prepare, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_pcm_prepare.__UNIQUE_ID_ddebug243, ptr noundef %9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.19, ptr noundef %substream) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %data_alignment = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9, i32 12
  %12 = ptrtoint ptr %data_alignment to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_alignment, align 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.and = and i8 %13, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %14 = select i1 %switch.selectcmp, i32 4, i32 0
  %arrayidx = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 27, i32 %1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 25, i32 %1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %arrayidx7, align 4
  br label %if.end18

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %switch.selectcmp168 = icmp eq i8 %13, 2
  %switch.select = select i1 %switch.selectcmp168, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.selectcmp169 = icmp eq i8 %13, 0
  %switch.select170 = select i1 %switch.selectcmp169, i32 5, i32 %switch.select
  %arrayidx16 = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 26, i32 %1
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.select170, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 24, i32 %1
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.select170, ptr %arrayidx17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then5
  %streaming = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 21
  %19 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool19.not = icmp eq i32 %20, 0
  br i1 %tobool19.not, label %for.cond.preheader, label %if.end18.cleanup111_crit_edge

if.end18.cleanup111_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111

for.cond.preheader:                               ; preds = %if.end18
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %rates = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 46, i32 2
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5512, i32 %22)
  %cmp25 = icmp eq i32 %22, 5512
  br i1 %cmp25, label %if.then27, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then27:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rates, align 8
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr202 = load i32, ptr %rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.cond.preheader.for.inc_crit_edge
  %25 = phi i32 [ %22, %for.cond.preheader.for.inc_crit_edge ], [ %.pr202, %if.then27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %25)
  %cmp25.1 = icmp eq i32 %25, 8000
  br i1 %cmp25.1, label %if.then27.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then27.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %rates, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then27.1, %for.inc.for.inc.1_crit_edge
  %27 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %28)
  %cmp25.2 = icmp eq i32 %28, 11025
  br i1 %cmp25.2, label %if.then27.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then27.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %rates, align 8
  %30 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr203 = load i32, ptr %rate, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then27.2, %for.inc.1.for.inc.2_crit_edge
  %31 = phi i32 [ %.pr203, %if.then27.2 ], [ %28, %for.inc.1.for.inc.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %31)
  %cmp25.3 = icmp eq i32 %31, 16000
  br i1 %cmp25.3, label %if.then27.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then27.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %rates, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then27.3, %for.inc.2.for.inc.3_crit_edge
  %33 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %34)
  %cmp25.4 = icmp eq i32 %34, 22050
  br i1 %cmp25.4, label %if.then27.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then27.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %rates, align 8
  %36 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr204 = load i32, ptr %rate, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then27.4, %for.inc.3.for.inc.4_crit_edge
  %37 = phi i32 [ %.pr204, %if.then27.4 ], [ %34, %for.inc.3.for.inc.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %37)
  %cmp25.5 = icmp eq i32 %37, 32000
  br i1 %cmp25.5, label %if.then27.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then27.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32, ptr %rates, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then27.5, %for.inc.4.for.inc.5_crit_edge
  %39 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %40)
  %cmp25.6 = icmp eq i32 %40, 44100
  br i1 %cmp25.6, label %if.then27.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then27.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 64, ptr %rates, align 8
  %42 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr205 = load i32, ptr %rate, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then27.6, %for.inc.5.for.inc.6_crit_edge
  %43 = phi i32 [ %.pr205, %if.then27.6 ], [ %40, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %43)
  %cmp25.7 = icmp eq i32 %43, 48000
  br i1 %cmp25.7, label %if.then27.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then27.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %rates, align 8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then27.7, %for.inc.6.for.inc.7_crit_edge
  %45 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %46)
  %cmp25.8 = icmp eq i32 %46, 64000
  br i1 %cmp25.8, label %if.then27.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

if.then27.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 256, ptr %rates, align 8
  %48 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr206 = load i32, ptr %rate, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then27.8, %for.inc.7.for.inc.8_crit_edge
  %49 = phi i32 [ %.pr206, %if.then27.8 ], [ %46, %for.inc.7.for.inc.8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 88200, i32 %49)
  %cmp25.9 = icmp eq i32 %49, 88200
  br i1 %cmp25.9, label %if.then27.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9

if.then27.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 512, ptr %rates, align 8
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then27.9, %for.inc.8.for.inc.9_crit_edge
  %51 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %52)
  %cmp25.10 = icmp eq i32 %52, 96000
  br i1 %cmp25.10, label %if.then27.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10

if.then27.10:                                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1024, ptr %rates, align 8
  %54 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr207 = load i32, ptr %rate, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then27.10, %for.inc.9.for.inc.10_crit_edge
  %55 = phi i32 [ %.pr207, %if.then27.10 ], [ %52, %for.inc.9.for.inc.10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 176400, i32 %55)
  %cmp25.11 = icmp eq i32 %55, 176400
  br i1 %cmp25.11, label %if.then27.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.11

if.then27.11:                                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2048, ptr %rates, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then27.11, %for.inc.10.for.inc.11_crit_edge
  %57 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %58)
  %cmp25.12 = icmp eq i32 %58, 192000
  br i1 %cmp25.12, label %if.then27.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.12

if.then27.12:                                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4096, ptr %rates, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then27.12, %for.inc.11.for.inc.12_crit_edge
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw.i) #7
  %data_alignment31 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 9, i32 12
  %60 = ptrtoint ptr %data_alignment31 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %data_alignment31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp33 = icmp ugt i8 %61, 1
  %62 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rate, align 4
  %div = udiv i32 %63, 8000
  %add = add nuw nsw i32 %div, 5
  %n_streams = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 18
  %64 = ptrtoint ptr %n_streams to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_streams, align 8
  %mul = select i1 %cmp33, i32 8, i32 6
  %mul39 = mul i32 %mul, %65
  %mul40 = mul i32 %mul39, %add
  %66 = tail call i32 @llvm.smin.i32(i32 %mul40, i32 512)
  %sample_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 22
  %67 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sample_bits, align 4
  %call46 = tail call i32 @snd_usb_caiaq_set_audio_params(ptr noundef %3, i32 noundef %63, i32 noundef %68, i32 noundef %66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %for.inc.12.cleanup111_crit_edge

for.inc.12.cleanup111_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111

if.end49:                                         ; preds = %for.inc.12
  %69 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %card, align 8
  %dev1.i = getelementptr inbounds %struct.snd_card, ptr %70, i32 0, i32 27
  %71 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stream_start.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_pcm_prepare, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stream_start.__UNIQUE_ID_ddebug239, ptr noundef %72, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20, ptr noundef %3) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end49
  %73 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool4.not.i = icmp eq i32 %74, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i.cleanup111_crit_edge

do.end.i.cleanup111_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111

if.end6.i:                                        ; preds = %do.end.i
  %sub_playback.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 36
  %input_panic.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 28
  %75 = ptrtoint ptr %input_panic.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %input_panic.i, align 8
  %output_panic.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 29
  %76 = ptrtoint ptr %output_panic.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %output_panic.i, align 4
  %first_packet.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 22
  %77 = call ptr @memset(ptr %sub_playback.i, i32 0, i32 256)
  %78 = ptrtoint ptr %first_packet.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %first_packet.i, align 8
  %79 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %streaming, align 4
  %warned.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 30
  %80 = ptrtoint ptr %warned.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %warned.i, align 8
  %data_urbs_in.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i
  %i.037.i = phi i32 [ 0, %if.end6.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %81 = ptrtoint ptr %data_urbs_in.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data_urbs_in.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %82, i32 %i.037.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %call9.i = tail call i32 @usb_submit_urb(ptr noundef %84, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.inc.i, label %do.end14.i

do.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.21, i32 noundef %i.037.i, i32 noundef %call9.i) #10
  br label %cleanup111.sink.split

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end53, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end53:                                         ; preds = %for.inc.i
  %output_running = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 23
  %85 = ptrtoint ptr %output_running to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %output_running, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 262) #7
  %86 = ptrtoint ptr %output_running to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %output_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool61.not = icmp eq i32 %87, 0
  br i1 %tobool61.not, label %if.then75, label %if.end53.cleanup111_crit_edge

if.end53.cleanup111_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111

if.then75:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %88 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %prepare_wait_queue = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 12
  %call78196 = call i32 @prepare_to_wait_event(ptr noundef %prepare_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %89 = ptrtoint ptr %output_running to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %output_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool81.not197.not = icmp eq i32 %90, 0
  br i1 %tobool81.not197.not, label %if.then75.cleanup_crit_edge, label %if.then75.if.end105_crit_edge

if.then75.if.end105_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then75.cleanup_crit_edge
  %__ret76.1199 = phi i32 [ %__ret76.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then75.cleanup_crit_edge ]
  %call101 = call i32 @schedule_timeout(i32 noundef %__ret76.1199) #7
  %call78 = call i32 @prepare_to_wait_event(ptr noundef %prepare_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %91 = ptrtoint ptr %output_running to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %output_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool81.not = icmp eq i32 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool86.not = icmp eq i32 %call101, 0
  %spec.store.select120 = select i1 %tobool86.not, i32 1, i32 %call101
  %__ret76.1 = select i1 %tobool81.not, i32 %call101, i32 %spec.store.select120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret76.1)
  %tobool93.not = icmp eq i32 %__ret76.1, 0
  %not.tobool81.not = xor i1 %tobool81.not, true
  %93 = select i1 %not.tobool81.not, i1 true, i1 %tobool93.not
  br i1 %93, label %cleanup.if.end105_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.if.end105_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.end105:                                        ; preds = %cleanup.if.end105_crit_edge, %if.then75.if.end105_crit_edge
  call void @finish_wait(ptr noundef %prepare_wait_queue, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %94 = ptrtoint ptr %output_running to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr = load i32, ptr %output_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool108.not = icmp eq i32 %.pr, 0
  br i1 %tobool108.not, label %if.then109, label %if.end105.cleanup111_crit_edge

if.end105.cleanup111_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111

if.then109:                                       ; preds = %if.end105
  %95 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card, align 8
  %dev1.i173 = getelementptr inbounds %struct.snd_card, ptr %96, i32 0, i32 27
  %97 = ptrtoint ptr %dev1.i173 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev1.i173, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stream_stop.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_pcm_prepare, %if.then.i174)) #7
          to label %do.end.i177 [label %if.then.i174], !srcloc !87

if.then.i174:                                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stream_stop.__UNIQUE_ID_ddebug240, ptr noundef %98, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.34, ptr noundef %3) #7
  br label %do.end.i177

do.end.i177:                                      ; preds = %if.then.i174, %if.then109
  %99 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool4.not.i176 = icmp eq i32 %100, 0
  br i1 %tobool4.not.i176, label %do.end.i177.cleanup111_crit_edge, label %if.end6.i179

do.end.i177.cleanup111_crit_edge:                 ; preds = %do.end.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111

if.end6.i179:                                     ; preds = %do.end.i177
  %101 = ptrtoint ptr %streaming to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %streaming, align 4
  %outurb_active_mask.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 35
  %data_urbs_out.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 4
  br label %for.body.i181

for.body.i181:                                    ; preds = %for.inc.i184.for.body.i181_crit_edge, %if.end6.i179
  %i.027.i = phi i32 [ 0, %if.end6.i179 ], [ %inc.i182, %for.inc.i184.for.body.i181_crit_edge ]
  %102 = ptrtoint ptr %data_urbs_in.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data_urbs_in.i, align 4
  %arrayidx.i180 = getelementptr ptr, ptr %103, i32 %i.027.i
  %104 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i180, align 4
  call void @usb_kill_urb(ptr noundef %105) #7
  %div3.i.i = lshr i32 %i.027.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %outurb_active_mask.i, i32 %div3.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %arrayidx.i.i, align 4
  %108 = shl nuw i32 1, %i.027.i
  %109 = and i32 %107, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool9.not.i = icmp eq i32 %109, 0
  br i1 %tobool9.not.i, label %for.body.i181.for.inc.i184_crit_edge, label %if.then10.i

for.body.i181.for.inc.i184_crit_edge:             ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i184

if.then10.i:                                      ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %data_urbs_out.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data_urbs_out.i, align 8
  %arrayidx11.i = getelementptr ptr, ptr %111, i32 %i.027.i
  %112 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx11.i, align 4
  call void @usb_kill_urb(ptr noundef %113) #7
  br label %for.inc.i184

for.inc.i184:                                     ; preds = %if.then10.i, %for.body.i181.for.inc.i184_crit_edge
  %inc.i182 = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i183 = icmp eq i32 %inc.i182, 32
  br i1 %exitcond.not.i183, label %for.inc.i184.cleanup111.sink.split_crit_edge, label %for.inc.i184.for.body.i181_crit_edge

for.inc.i184.for.body.i181_crit_edge:             ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i181

for.inc.i184.cleanup111.sink.split_crit_edge:     ; preds = %for.inc.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup111.sink.split

cleanup111.sink.split:                            ; preds = %for.inc.i184.cleanup111.sink.split_crit_edge, %do.end14.i
  %streaming.sink = phi ptr [ %streaming, %do.end14.i ], [ %outurb_active_mask.i, %for.inc.i184.cleanup111.sink.split_crit_edge ]
  %114 = ptrtoint ptr %streaming.sink to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %streaming.sink, align 4
  br label %cleanup111

cleanup111:                                       ; preds = %cleanup111.sink.split, %do.end.i177.cleanup111_crit_edge, %if.end105.cleanup111_crit_edge, %if.end53.cleanup111_crit_edge, %do.end.i.cleanup111_crit_edge, %for.inc.12.cleanup111_crit_edge, %if.end18.cleanup111_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.cleanup111_crit_edge ], [ %call46, %for.inc.12.cleanup111_crit_edge ], [ 0, %if.end105.cleanup111_crit_edge ], [ -32, %do.end.i177.cleanup111_crit_edge ], [ -22, %do.end.i.cleanup111_crit_edge ], [ 0, %if.end53.cleanup111_crit_edge ], [ -32, %cleanup111.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_pcm_trigger(ptr noundef %sub, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_caiaq_pcm_trigger.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_caiaq_pcm_trigger, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_caiaq_pcm_trigger.__UNIQUE_ID_ddebug244, ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef %sub, i32 noundef %cmd) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 4, label %do.end.sw.bb_crit_edge17
    i32 0, label %do.end.sw.bb4_crit_edge
    i32 3, label %do.end.sw.bb4_crit_edge18
  ]

do.end.sw.bb4_crit_edge18:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

do.end.sw.bb4_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

do.end.sw.bb_crit_edge17:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge17
  %spinlock.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %spinlock.i) #7
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 5
  %7 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 3
  %9 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number.i, align 4
  %arrayidx2.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 37, i32 %10
  %arrayidx.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 36, i32 %10
  %arrayidx2.sink.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx2.i
  %11 = ptrtoint ptr %arrayidx2.sink.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sub, ptr %arrayidx2.sink.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %spinlock.i) #7
  br label %cleanup

sw.bb4:                                           ; preds = %do.end.sw.bb4_crit_edge, %do.end.sw.bb4_crit_edge18
  %spinlock.i12 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i12) #7
  %stream.i13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp5.i = icmp eq i32 %13, 0
  %number.i14 = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 3
  %14 = ptrtoint ptr %number.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number.i14, align 4
  %arrayidx8.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 37, i32 %15
  %arrayidx.i15 = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 36, i32 %15
  %arrayidx8.sink.i = select i1 %cmp5.i, ptr %arrayidx.i15, ptr %arrayidx8.i
  %16 = ptrtoint ptr %arrayidx8.sink.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx8.sink.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i12, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_pcm_pointer(ptr nocapture noundef readonly %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %spinlock = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #7
  %input_panic = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %input_panic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input_panic, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

lor.lhs.false:                                    ; preds = %entry
  %output_panic = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 29
  %6 = ptrtoint ptr %output_panic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output_panic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.unlock_crit_edge

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %sub, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %arrayidx = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 25, i32 %1
  %arrayidx4 = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 24, i32 %1
  %arrayidx.sink = select i1 %cmp, ptr %arrayidx, ptr %arrayidx4
  %12 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.sink, align 4
  %mul.i = shl i32 %13, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %15
  br label %unlock

unlock:                                           ; preds = %if.end, %lor.lhs.false.unlock_crit_edge, %entry.unlock_crit_edge
  %ptr.0 = phi i32 [ -1, %lor.lhs.false.unlock_crit_edge ], [ -1, %entry.unlock_crit_edge ], [ %div.i, %if.end ]
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #7
  ret i32 %ptr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @all_substreams_zero(ptr nocapture noundef readonly %subs) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subs, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr ptr, ptr %subs, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.not.1 = icmp eq ptr %3, null
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr ptr, ptr %subs, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.not.2 = icmp eq ptr %5, null
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr ptr, ptr %subs, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.not.3 = icmp eq ptr %7, null
  br i1 %cmp1.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr ptr, ptr %subs, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %cmp1.not.4 = icmp eq ptr %9, null
  br i1 %cmp1.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr ptr, ptr %subs, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %cmp1.not.5 = icmp eq ptr %11, null
  br i1 %cmp1.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr ptr, ptr %subs, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  %cmp1.not.6 = icmp eq ptr %13, null
  br i1 %cmp1.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr ptr, ptr %subs, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.7, align 4
  %cmp1.not.7 = icmp eq ptr %15, null
  br i1 %cmp1.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx.8 = getelementptr ptr, ptr %subs, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.8, align 4
  %cmp1.not.8 = icmp eq ptr %17, null
  br i1 %cmp1.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx.9 = getelementptr ptr, ptr %subs, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.9, align 4
  %cmp1.not.9 = icmp eq ptr %19, null
  br i1 %cmp1.not.9, label %for.cond.9, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %arrayidx.10 = getelementptr ptr, ptr %subs, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.10, align 4
  %cmp1.not.10 = icmp eq ptr %21, null
  br i1 %cmp1.not.10, label %for.cond.10, label %for.cond.9.cleanup_crit_edge

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %arrayidx.11 = getelementptr ptr, ptr %subs, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.11, align 4
  %cmp1.not.11 = icmp eq ptr %23, null
  br i1 %cmp1.not.11, label %for.cond.11, label %for.cond.10.cleanup_crit_edge

for.cond.10.cleanup_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.11:                                      ; preds = %for.cond.10
  %arrayidx.12 = getelementptr ptr, ptr %subs, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.12, align 4
  %cmp1.not.12 = icmp eq ptr %25, null
  br i1 %cmp1.not.12, label %for.cond.12, label %for.cond.11.cleanup_crit_edge

for.cond.11.cleanup_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.12:                                      ; preds = %for.cond.11
  %arrayidx.13 = getelementptr ptr, ptr %subs, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.13, align 4
  %cmp1.not.13 = icmp eq ptr %27, null
  br i1 %cmp1.not.13, label %for.cond.13, label %for.cond.12.cleanup_crit_edge

for.cond.12.cleanup_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.13:                                      ; preds = %for.cond.12
  %arrayidx.14 = getelementptr ptr, ptr %subs, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.14, align 4
  %cmp1.not.14 = icmp eq ptr %29, null
  br i1 %cmp1.not.14, label %for.cond.14, label %for.cond.13.cleanup_crit_edge

for.cond.13.cleanup_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.14:                                      ; preds = %for.cond.13
  %arrayidx.15 = getelementptr ptr, ptr %subs, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.15, align 4
  %cmp1.not.15 = icmp eq ptr %31, null
  br i1 %cmp1.not.15, label %for.cond.15, label %for.cond.14.cleanup_crit_edge

for.cond.14.cleanup_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.15:                                      ; preds = %for.cond.14
  %arrayidx.16 = getelementptr ptr, ptr %subs, i32 16
  %32 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.16, align 4
  %cmp1.not.16 = icmp eq ptr %33, null
  br i1 %cmp1.not.16, label %for.cond.16, label %for.cond.15.cleanup_crit_edge

for.cond.15.cleanup_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.16:                                      ; preds = %for.cond.15
  %arrayidx.17 = getelementptr ptr, ptr %subs, i32 17
  %34 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.17, align 4
  %cmp1.not.17 = icmp eq ptr %35, null
  br i1 %cmp1.not.17, label %for.cond.17, label %for.cond.16.cleanup_crit_edge

for.cond.16.cleanup_crit_edge:                    ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.17:                                      ; preds = %for.cond.16
  %arrayidx.18 = getelementptr ptr, ptr %subs, i32 18
  %36 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.18, align 4
  %cmp1.not.18 = icmp eq ptr %37, null
  br i1 %cmp1.not.18, label %for.cond.18, label %for.cond.17.cleanup_crit_edge

for.cond.17.cleanup_crit_edge:                    ; preds = %for.cond.17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.18:                                      ; preds = %for.cond.17
  %arrayidx.19 = getelementptr ptr, ptr %subs, i32 19
  %38 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.19, align 4
  %cmp1.not.19 = icmp eq ptr %39, null
  br i1 %cmp1.not.19, label %for.cond.19, label %for.cond.18.cleanup_crit_edge

for.cond.18.cleanup_crit_edge:                    ; preds = %for.cond.18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.19:                                      ; preds = %for.cond.18
  %arrayidx.20 = getelementptr ptr, ptr %subs, i32 20
  %40 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.20, align 4
  %cmp1.not.20 = icmp eq ptr %41, null
  br i1 %cmp1.not.20, label %for.cond.20, label %for.cond.19.cleanup_crit_edge

for.cond.19.cleanup_crit_edge:                    ; preds = %for.cond.19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.20:                                      ; preds = %for.cond.19
  %arrayidx.21 = getelementptr ptr, ptr %subs, i32 21
  %42 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.21, align 4
  %cmp1.not.21 = icmp eq ptr %43, null
  br i1 %cmp1.not.21, label %for.cond.21, label %for.cond.20.cleanup_crit_edge

for.cond.20.cleanup_crit_edge:                    ; preds = %for.cond.20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.21:                                      ; preds = %for.cond.20
  %arrayidx.22 = getelementptr ptr, ptr %subs, i32 22
  %44 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.22, align 4
  %cmp1.not.22 = icmp eq ptr %45, null
  br i1 %cmp1.not.22, label %for.cond.22, label %for.cond.21.cleanup_crit_edge

for.cond.21.cleanup_crit_edge:                    ; preds = %for.cond.21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.22:                                      ; preds = %for.cond.21
  %arrayidx.23 = getelementptr ptr, ptr %subs, i32 23
  %46 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.23, align 4
  %cmp1.not.23 = icmp eq ptr %47, null
  br i1 %cmp1.not.23, label %for.cond.23, label %for.cond.22.cleanup_crit_edge

for.cond.22.cleanup_crit_edge:                    ; preds = %for.cond.22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.23:                                      ; preds = %for.cond.22
  %arrayidx.24 = getelementptr ptr, ptr %subs, i32 24
  %48 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.24, align 4
  %cmp1.not.24 = icmp eq ptr %49, null
  br i1 %cmp1.not.24, label %for.cond.24, label %for.cond.23.cleanup_crit_edge

for.cond.23.cleanup_crit_edge:                    ; preds = %for.cond.23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.24:                                      ; preds = %for.cond.23
  %arrayidx.25 = getelementptr ptr, ptr %subs, i32 25
  %50 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.25, align 4
  %cmp1.not.25 = icmp eq ptr %51, null
  br i1 %cmp1.not.25, label %for.cond.25, label %for.cond.24.cleanup_crit_edge

for.cond.24.cleanup_crit_edge:                    ; preds = %for.cond.24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.25:                                      ; preds = %for.cond.24
  %arrayidx.26 = getelementptr ptr, ptr %subs, i32 26
  %52 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.26, align 4
  %cmp1.not.26 = icmp eq ptr %53, null
  br i1 %cmp1.not.26, label %for.cond.26, label %for.cond.25.cleanup_crit_edge

for.cond.25.cleanup_crit_edge:                    ; preds = %for.cond.25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.26:                                      ; preds = %for.cond.25
  %arrayidx.27 = getelementptr ptr, ptr %subs, i32 27
  %54 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.27, align 4
  %cmp1.not.27 = icmp eq ptr %55, null
  br i1 %cmp1.not.27, label %for.cond.27, label %for.cond.26.cleanup_crit_edge

for.cond.26.cleanup_crit_edge:                    ; preds = %for.cond.26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.27:                                      ; preds = %for.cond.26
  %arrayidx.28 = getelementptr ptr, ptr %subs, i32 28
  %56 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.28, align 4
  %cmp1.not.28 = icmp eq ptr %57, null
  br i1 %cmp1.not.28, label %for.cond.28, label %for.cond.27.cleanup_crit_edge

for.cond.27.cleanup_crit_edge:                    ; preds = %for.cond.27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.28:                                      ; preds = %for.cond.27
  %arrayidx.29 = getelementptr ptr, ptr %subs, i32 29
  %58 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.29, align 4
  %cmp1.not.29 = icmp eq ptr %59, null
  br i1 %cmp1.not.29, label %for.cond.29, label %for.cond.28.cleanup_crit_edge

for.cond.28.cleanup_crit_edge:                    ; preds = %for.cond.28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.29:                                      ; preds = %for.cond.28
  %arrayidx.30 = getelementptr ptr, ptr %subs, i32 30
  %60 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.30, align 4
  %cmp1.not.30 = icmp eq ptr %61, null
  br i1 %cmp1.not.30, label %for.cond.30, label %for.cond.29.cleanup_crit_edge

for.cond.29.cleanup_crit_edge:                    ; preds = %for.cond.29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.30:                                      ; preds = %for.cond.29
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.31 = getelementptr ptr, ptr %subs, i32 31
  %62 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.31, align 4
  %cmp1.not.31 = icmp eq ptr %63, null
  %spec.select = zext i1 %cmp1.not.31 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.30, %for.cond.29.cleanup_crit_edge, %for.cond.28.cleanup_crit_edge, %for.cond.27.cleanup_crit_edge, %for.cond.26.cleanup_crit_edge, %for.cond.25.cleanup_crit_edge, %for.cond.24.cleanup_crit_edge, %for.cond.23.cleanup_crit_edge, %for.cond.22.cleanup_crit_edge, %for.cond.21.cleanup_crit_edge, %for.cond.20.cleanup_crit_edge, %for.cond.19.cleanup_crit_edge, %for.cond.18.cleanup_crit_edge, %for.cond.17.cleanup_crit_edge, %for.cond.16.cleanup_crit_edge, %for.cond.15.cleanup_crit_edge, %for.cond.14.cleanup_crit_edge, %for.cond.13.cleanup_crit_edge, %for.cond.12.cleanup_crit_edge, %for.cond.11.cleanup_crit_edge, %for.cond.10.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ 0, %for.cond.2.cleanup_crit_edge ], [ 0, %for.cond.3.cleanup_crit_edge ], [ 0, %for.cond.4.cleanup_crit_edge ], [ 0, %for.cond.5.cleanup_crit_edge ], [ 0, %for.cond.6.cleanup_crit_edge ], [ 0, %for.cond.7.cleanup_crit_edge ], [ 0, %for.cond.8.cleanup_crit_edge ], [ 0, %for.cond.9.cleanup_crit_edge ], [ 0, %for.cond.10.cleanup_crit_edge ], [ 0, %for.cond.11.cleanup_crit_edge ], [ 0, %for.cond.12.cleanup_crit_edge ], [ 0, %for.cond.13.cleanup_crit_edge ], [ 0, %for.cond.14.cleanup_crit_edge ], [ 0, %for.cond.15.cleanup_crit_edge ], [ 0, %for.cond.16.cleanup_crit_edge ], [ 0, %for.cond.17.cleanup_crit_edge ], [ 0, %for.cond.18.cleanup_crit_edge ], [ 0, %for.cond.19.cleanup_crit_edge ], [ 0, %for.cond.20.cleanup_crit_edge ], [ 0, %for.cond.21.cleanup_crit_edge ], [ 0, %for.cond.22.cleanup_crit_edge ], [ 0, %for.cond.23.cleanup_crit_edge ], [ 0, %for.cond.24.cleanup_crit_edge ], [ 0, %for.cond.25.cleanup_crit_edge ], [ 0, %for.cond.26.cleanup_crit_edge ], [ 0, %for.cond.27.cleanup_crit_edge ], [ 0, %for.cond.28.cleanup_crit_edge ], [ 0, %for.cond.29.cleanup_crit_edge ], [ %spec.select, %for.cond.30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_caiaq_set_audio_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_completed(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %dev3 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 8
  %streaming = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 21
  %10 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %outurb_active_mask = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0221 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @_test_and_set_bit(i32 noundef %i.0221, ptr noundef %outurb_active_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp eq i32 %call, 0
  br i1 %cmp7, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.end:                                          ; preds = %for.body
  %data_urbs_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %data_urbs_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_urbs_out, align 8
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.0221
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %for.end.do.end_crit_edge, label %for.cond13.preheader

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond13.preheader:                             ; preds = %for.end
  %spinlock = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 10
  %data_alignment.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 9, i32 12
  %transfer_buffer.i6.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 14
  %n_streams.i9.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 18
  %bpp.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 34
  %transfer_buffer.i51.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %input_panic.i58.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 28
  %first_packet.i59.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 22
  %output_panic.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 29
  %sub_capture.i.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 37
  %warned.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 30
  %sub_playback = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 36
  br label %for.body15

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.24) #10
  br label %requeue

for.body15:                                       ; preds = %for.inc50.for.body15_crit_edge, %for.cond13.preheader
  %offset.0230 = phi i32 [ 0, %for.cond13.preheader ], [ %offset.1, %for.inc50.for.body15_crit_edge ]
  %outframe.0227 = phi i32 [ 0, %for.cond13.preheader ], [ %outframe.1, %for.inc50.for.body15_crit_edge ]
  %send_it.0226 = phi i32 [ 0, %for.cond13.preheader ], [ %send_it.2, %for.inc50.for.body15_crit_edge ]
  %frame.0222 = phi i32 [ 0, %for.cond13.preheader ], [ %inc51, %for.inc50.for.body15_crit_edge ]
  %arrayidx16 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %frame.0222
  %status17 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %frame.0222, i32 3
  %16 = ptrtoint ptr %status17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.end20, label %for.body15.for.inc50_crit_edge

for.body15.for.inc50_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50

if.end20:                                         ; preds = %for.body15
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %outframe.0227, i32 2
  %18 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length, align 4
  %arrayidx24 = getelementptr %struct.urb, ptr %15, i32 0, i32 29, i32 %outframe.0227
  %length = getelementptr %struct.urb, ptr %15, i32 0, i32 29, i32 %outframe.0227, i32 1
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %length, align 4
  %actual_length27 = getelementptr %struct.urb, ptr %15, i32 0, i32 29, i32 %outframe.0227, i32 2
  %21 = ptrtoint ptr %actual_length27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %actual_length27, align 4
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %offset.0230, ptr %arrayidx24, align 4
  %add = add i32 %19, %offset.0230
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp31 = icmp sgt i32 %19, 0
  br i1 %cmp31, label %do.body34, label %if.end20.if.end48_crit_edge

if.end20.if.end48_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.body34:                                        ; preds = %if.end20
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %23 = ptrtoint ptr %data_alignment.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data_alignment.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %24, label %do.body34.fill_out_urb.exit_crit_edge [
    i8 0, label %do.body34.sw.bb.i_crit_edge
    i8 2, label %do.body34.sw.bb.i_crit_edge252
    i8 3, label %sw.bb1.i
  ]

do.body34.sw.bb.i_crit_edge252:                   ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

do.body34.sw.bb.i_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

do.body34.fill_out_urb.exit_crit_edge:            ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_out_urb.exit

sw.bb.i:                                          ; preds = %do.body34.sw.bb.i_crit_edge, %do.body34.sw.bb.i_crit_edge252
  %26 = ptrtoint ptr %transfer_buffer.i6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transfer_buffer.i6.i, align 4
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx24, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp90.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp90.not.i.i, label %sw.bb.i.fill_out_urb.exit_crit_edge, label %sw.bb.i.for.cond1.preheader.i.i_crit_edge

sw.bb.i.for.cond1.preheader.i.i_crit_edge:        ; preds = %sw.bb.i
  br label %for.cond1.preheader.i.i

sw.bb.i.fill_out_urb.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_out_urb.exit

for.cond1.preheader.i.i:                          ; preds = %if.end42.i.i.for.cond1.preheader.i.i_crit_edge, %sw.bb.i.for.cond1.preheader.i.i_crit_edge
  %i.091.i.i = phi i32 [ %i.3.i.i, %if.end42.i.i.for.cond1.preheader.i.i_crit_edge ], [ 0, %sw.bb.i.for.cond1.preheader.i.i_crit_edge ]
  %32 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_streams.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp280.i.i = icmp sgt i32 %33, 0
  br i1 %cmp280.i.i, label %for.cond1.preheader.i.i.for.body3.i.i_crit_edge, label %for.cond1.preheader.i.i.for.end.i.i_crit_edge

for.cond1.preheader.i.i.for.end.i.i_crit_edge:    ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.cond1.preheader.i.i.for.body3.i.i_crit_edge:  ; preds = %for.cond1.preheader.i.i
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.inc.i.i.for.body3.i.i_crit_edge, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge
  %stream.083.i.i = phi i32 [ %inc19.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ 0, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge ]
  %i.181.i.i = phi i32 [ %inc20.i.i, %for.inc.i.i.for.body3.i.i_crit_edge ], [ %i.091.i.i, %for.cond1.preheader.i.i.for.body3.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 36, i32 %stream.083.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %runtime.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime.i.i, align 4
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 50
  %38 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_area.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 18
  %40 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 21
  %42 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %43, %41
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %arrayidx4.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 25, i32 %stream.083.i.i
  %44 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx5.i.i = getelementptr i8, ptr %39, i32 %45
  %46 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx5.i.i, align 1
  %arrayidx6.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.181.i.i
  %48 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx6.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 27, i32 %stream.083.i.i
  %49 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx7.i.i, align 4
  %inc.i.i = add i32 %50, 1
  store i32 %inc.i.i, ptr %arrayidx7.i.i, align 4
  %51 = load i32, ptr %arrayidx4.i.i, align 4
  %inc10.i.i = add i32 %51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc10.i.i, i32 %div1.i.i.i)
  %cmp13.i.i = icmp eq i32 %inc10.i.i, %div1.i.i.i
  %spec.select.i.i = select i1 %cmp13.i.i, i32 0, i32 %inc10.i.i
  %52 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select.i.i, ptr %arrayidx4.i.i, align 4
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.181.i.i
  %53 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx17.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %inc19.i.i = add nuw nsw i32 %stream.083.i.i, 1
  %inc20.i.i = add i32 %i.181.i.i, 1
  %54 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_streams.i9.i, align 8
  %cmp2.i.i = icmp slt i32 %inc19.i.i, %55
  br i1 %cmp2.i.i, label %for.inc.i.i.for.body3.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.i.i.for.body3.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond1.preheader.i.i.for.end.i.i_crit_edge
  %i.1.lcssa.i.i = phi i32 [ %i.091.i.i, %for.cond1.preheader.i.i.for.end.i.i_crit_edge ], [ %inc20.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %33, %for.cond1.preheader.i.i.for.end.i.i_crit_edge ], [ %55, %for.inc.i.i.for.end.i.i_crit_edge ]
  %56 = ptrtoint ptr %data_alignment.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data_alignment.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp21.i.i = icmp eq i8 %57, 2
  br i1 %cmp21.i.i, label %land.lhs.true.i.i, label %for.end.i.i.if.end42.i.i_crit_edge

for.end.i.i.if.end42.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %mul.i.i = shl i32 %.lcssa.i.i, 2
  %rem.i.i = srem i32 %i.1.lcssa.i.i, %mul.i.i
  %mul25.i.i = shl i32 %.lcssa.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %mul25.i.i)
  %cmp26.i.i = icmp eq i32 %rem.i.i, %mul25.i.i
  br i1 %cmp26.i.i, label %for.cond29.preheader.i.i, label %land.lhs.true.i.i.if.end42.i.i_crit_edge

land.lhs.true.i.i.if.end42.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

for.cond29.preheader.i.i:                         ; preds = %land.lhs.true.i.i
  %58 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_streams.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp3186.i.i = icmp sgt i32 %59, 0
  br i1 %cmp3186.i.i, label %for.cond29.preheader.i.i.for.body33.i.i_crit_edge, label %for.cond29.preheader.i.i.if.end42.i.i_crit_edge

for.cond29.preheader.i.i.if.end42.i.i_crit_edge:  ; preds = %for.cond29.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

for.cond29.preheader.i.i.for.body33.i.i_crit_edge: ; preds = %for.cond29.preheader.i.i
  br label %for.body33.i.i

for.body33.i.i:                                   ; preds = %for.body33.i.i.for.body33.i.i_crit_edge, %for.cond29.preheader.i.i.for.body33.i.i_crit_edge
  %60 = phi i32 [ %65, %for.body33.i.i.for.body33.i.i_crit_edge ], [ %59, %for.cond29.preheader.i.i.for.body33.i.i_crit_edge ]
  %stream.188.i.i = phi i32 [ %inc39.i.i, %for.body33.i.i.for.body33.i.i_crit_edge ], [ 0, %for.cond29.preheader.i.i.for.body33.i.i_crit_edge ]
  %i.287.i.i = phi i32 [ %inc40.i.i, %for.body33.i.i.for.body33.i.i_crit_edge ], [ %i.1.lcssa.i.i, %for.cond29.preheader.i.i.for.body33.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 %stream.188.i.i, 1
  %mul35.i.i = shl i32 %60, 2
  %div.i.i = sdiv i32 %i.287.i.i, %mul35.i.i
  %neg.i.i = and i32 %div.i.i, 1
  %61 = or i32 %neg.i.i, %shl.i.i
  %62 = trunc i32 %61 to i8
  %conv36.i.i = xor i8 %62, 1
  %arrayidx37.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.287.i.i
  %63 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv36.i.i, ptr %arrayidx37.i.i, align 1
  %inc39.i.i = add nuw nsw i32 %stream.188.i.i, 1
  %inc40.i.i = add i32 %i.287.i.i, 1
  %64 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_streams.i9.i, align 8
  %cmp31.i.i = icmp slt i32 %inc39.i.i, %65
  br i1 %cmp31.i.i, label %for.body33.i.i.for.body33.i.i_crit_edge, label %for.body33.i.i.if.end42.i.i_crit_edge

for.body33.i.i.if.end42.i.i_crit_edge:            ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

for.body33.i.i.for.body33.i.i_crit_edge:          ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.i.i

if.end42.i.i:                                     ; preds = %for.body33.i.i.if.end42.i.i_crit_edge, %for.cond29.preheader.i.i.if.end42.i.i_crit_edge, %land.lhs.true.i.i.if.end42.i.i_crit_edge, %for.end.i.i.if.end42.i.i_crit_edge
  %i.3.i.i = phi i32 [ %i.1.lcssa.i.i, %land.lhs.true.i.i.if.end42.i.i_crit_edge ], [ %i.1.lcssa.i.i, %for.end.i.i.if.end42.i.i_crit_edge ], [ %i.1.lcssa.i.i, %for.cond29.preheader.i.i.if.end42.i.i_crit_edge ], [ %inc40.i.i, %for.body33.i.i.if.end42.i.i_crit_edge ]
  %66 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length, align 4
  %cmp.i.i = icmp ult i32 %i.3.i.i, %67
  br i1 %cmp.i.i, label %if.end42.i.i.for.cond1.preheader.i.i_crit_edge, label %if.end42.i.i.fill_out_urb.exit_crit_edge

if.end42.i.i.fill_out_urb.exit_crit_edge:         ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_out_urb.exit

if.end42.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i.i

sw.bb1.i:                                         ; preds = %do.body34
  %68 = ptrtoint ptr %transfer_buffer.i6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %transfer_buffer.i6.i, align 4
  %70 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx24, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %69, i32 %71
  %72 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp77.not.i.i = icmp eq i32 %73, 0
  br i1 %cmp77.not.i.i, label %sw.bb1.i.fill_out_urb.exit_crit_edge, label %sw.bb1.i.for.cond1.preheader.i13.i_crit_edge

sw.bb1.i.for.cond1.preheader.i13.i_crit_edge:     ; preds = %sw.bb1.i
  br label %for.cond1.preheader.i13.i

sw.bb1.i.fill_out_urb.exit_crit_edge:             ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_out_urb.exit

for.cond.loopexit.i.i:                            ; preds = %if.end30.1.i.i.for.cond.loopexit.i.i_crit_edge, %for.cond1.preheader.i13.i.for.cond.loopexit.i.i_crit_edge
  %i.1.lcssa.i11.i = phi i32 [ %i.078.i.i, %for.cond1.preheader.i13.i.for.cond.loopexit.i.i_crit_edge ], [ %inc32.1.i.i, %if.end30.1.i.i.for.cond.loopexit.i.i_crit_edge ]
  %74 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length, align 4
  %cmp.i12.i = icmp ult i32 %i.1.lcssa.i11.i, %75
  br i1 %cmp.i12.i, label %for.cond.loopexit.i.i.for.cond1.preheader.i13.i_crit_edge, label %for.cond.loopexit.i.i.fill_out_urb.exit_crit_edge

for.cond.loopexit.i.i.fill_out_urb.exit_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fill_out_urb.exit

for.cond.loopexit.i.i.for.cond1.preheader.i13.i_crit_edge: ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i13.i

for.cond1.preheader.i13.i:                        ; preds = %for.cond.loopexit.i.i.for.cond1.preheader.i13.i_crit_edge, %sw.bb1.i.for.cond1.preheader.i13.i_crit_edge
  %i.078.i.i = phi i32 [ %i.1.lcssa.i11.i, %for.cond.loopexit.i.i.for.cond1.preheader.i13.i_crit_edge ], [ 0, %sw.bb1.i.for.cond1.preheader.i13.i_crit_edge ]
  %76 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %n_streams.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp274.i.i = icmp sgt i32 %77, 0
  br i1 %cmp274.i.i, label %for.cond1.preheader.i13.i.for.body3.i16.i_crit_edge, label %for.cond1.preheader.i13.i.for.cond.loopexit.i.i_crit_edge

for.cond1.preheader.i13.i.for.cond.loopexit.i.i_crit_edge: ; preds = %for.cond1.preheader.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i.i

for.cond1.preheader.i13.i.for.body3.i16.i_crit_edge: ; preds = %for.cond1.preheader.i13.i
  br label %for.body3.i16.i

for.body3.i16.i:                                  ; preds = %if.end30.1.i.i.for.body3.i16.i_crit_edge, %for.cond1.preheader.i13.i.for.body3.i16.i_crit_edge
  %i.176.i.i = phi i32 [ %inc32.1.i.i, %if.end30.1.i.i.for.body3.i16.i_crit_edge ], [ %i.078.i.i, %for.cond1.preheader.i13.i.for.body3.i16.i_crit_edge ]
  %stream.075.i.i = phi i32 [ %inc38.i.i, %if.end30.1.i.i.for.body3.i16.i_crit_edge ], [ 0, %for.cond1.preheader.i13.i.for.body3.i16.i_crit_edge ]
  %arrayidx.i14.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 36, i32 %stream.075.i.i
  %78 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i14.i, align 4
  %tobool.not.i15.i = icmp eq ptr %79, null
  br i1 %tobool.not.i15.i, label %if.end.thread.i.i, label %if.end.i.i

if.end.thread.i.i:                                ; preds = %for.body3.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl92.i.i = shl nuw i32 %stream.075.i.i, 1
  br label %for.inc.2.1.i.i

if.end.i.i:                                       ; preds = %for.body3.i16.i
  %runtime.i17.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %runtime.i17.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %runtime.i17.i, align 4
  %dma_area.i18.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 50
  %82 = ptrtoint ptr %dma_area.i18.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dma_area.i18.i, align 4
  %buffer_size.i19.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 18
  %84 = ptrtoint ptr %buffer_size.i19.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %buffer_size.i19.i, align 4
  %frame_bits.i.i20.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 21
  %86 = ptrtoint ptr %frame_bits.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %frame_bits.i.i20.i, align 8
  %mul.i.i21.i = mul i32 %87, %85
  %div1.i.i22.i = lshr i32 %mul.i.i21.i, 3
  %tobool10.not.i.i = icmp eq ptr %83, null
  %arrayidx12.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 25, i32 %stream.075.i.i
  %shl.i23.i = shl nuw i32 %stream.075.i.i, 1
  %arrayidx28.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 27, i32 %stream.075.i.i
  br i1 %tobool10.not.i.i, label %if.end.i.i.for.inc.2.1.i.i_crit_edge, label %if.then11.i.i

if.end.i.i.for.inc.2.1.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.1.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  %88 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx12.i.i, align 4
  %inc.i24.i = add i32 %89, 1
  store i32 %inc.i24.i, ptr %arrayidx12.i.i, align 4
  %arrayidx13.i.i = getelementptr i8, ptr %83, i32 %89
  %90 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx13.i.i, align 1
  %arrayidx14.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %i.176.i.i
  %92 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx14.i.i, align 1
  %93 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %div1.i.i22.i)
  %cmp17.i.i = icmp eq i32 %93, %div1.i.i22.i
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.then11.i.i.if.then11.1.i.i_crit_edge

if.then11.i.i.if.then11.1.i.i_crit_edge:          ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.1.i.i

if.then18.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %arrayidx12.i.i, align 4
  br label %if.then11.1.i.i

if.then11.1.i.i:                                  ; preds = %if.then18.i.i, %if.then11.i.i.if.then11.1.i.i_crit_edge
  %95 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx12.i.i, align 4
  %inc.1.i.i = add i32 %96, 1
  store i32 %inc.1.i.i, ptr %arrayidx12.i.i, align 4
  %arrayidx13.1.i.i = getelementptr i8, ptr %83, i32 %96
  %97 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx13.1.i.i, align 1
  %add.1.i.i = add i32 %i.176.i.i, 1
  %arrayidx14.1.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add.1.i.i
  %99 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %arrayidx14.1.i.i, align 1
  %100 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %div1.i.i22.i)
  %cmp17.1.i.i = icmp eq i32 %100, %div1.i.i22.i
  br i1 %cmp17.1.i.i, label %if.then18.1.i.i, label %if.then11.1.i.i.if.then11.2.i.i_crit_edge

if.then11.1.i.i.if.then11.2.i.i_crit_edge:        ; preds = %if.then11.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.2.i.i

if.then18.1.i.i:                                  ; preds = %if.then11.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx12.i.i, align 4
  br label %if.then11.2.i.i

if.then11.2.i.i:                                  ; preds = %if.then18.1.i.i, %if.then11.1.i.i.if.then11.2.i.i_crit_edge
  %102 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx12.i.i, align 4
  %inc.2.i.i = add i32 %103, 1
  store i32 %inc.2.i.i, ptr %arrayidx12.i.i, align 4
  %arrayidx13.2.i.i = getelementptr i8, ptr %83, i32 %103
  %104 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx13.2.i.i, align 1
  %add.2.i.i = add i32 %i.176.i.i, 2
  %arrayidx14.2.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add.2.i.i
  %106 = ptrtoint ptr %arrayidx14.2.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx14.2.i.i, align 1
  %107 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %div1.i.i22.i)
  %cmp17.2.i.i = icmp eq i32 %107, %div1.i.i22.i
  br i1 %cmp17.2.i.i, label %if.then18.2.i.i, label %if.then11.2.i.i.if.then11.183.i.i_crit_edge

if.then11.2.i.i.if.then11.183.i.i_crit_edge:      ; preds = %if.then11.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.183.i.i

if.then18.2.i.i:                                  ; preds = %if.then11.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %arrayidx12.i.i, align 4
  br label %if.then11.183.i.i

if.then11.183.i.i:                                ; preds = %if.then18.2.i.i, %if.then11.2.i.i.if.then11.183.i.i_crit_edge
  %109 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx28.i.i, align 4
  %add29.i.i = add i32 %110, 3
  store i32 %add29.i.i, ptr %arrayidx28.i.i, align 4
  %add31.i.i = add i32 %i.176.i.i, 3
  %conv.i.i = trunc i32 %shl.i23.i to i8
  %inc32.i.i = add i32 %i.176.i.i, 4
  %arrayidx33.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add31.i.i
  %111 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv.i.i, ptr %arrayidx33.i.i, align 1
  %112 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx12.i.i, align 4
  %inc.179.i.i = add i32 %113, 1
  store i32 %inc.179.i.i, ptr %arrayidx12.i.i, align 4
  %arrayidx13.180.i.i = getelementptr i8, ptr %83, i32 %113
  %114 = ptrtoint ptr %arrayidx13.180.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx13.180.i.i, align 1
  %arrayidx14.181.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %inc32.i.i
  %116 = ptrtoint ptr %arrayidx14.181.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx14.181.i.i, align 1
  %117 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %div1.i.i22.i)
  %cmp17.182.i.i = icmp eq i32 %117, %div1.i.i22.i
  br i1 %cmp17.182.i.i, label %if.then18.184.i.i, label %if.then11.183.i.i.if.then11.1.1.i.i_crit_edge

if.then11.183.i.i.if.then11.1.1.i.i_crit_edge:    ; preds = %if.then11.183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.1.1.i.i

if.then18.184.i.i:                                ; preds = %if.then11.183.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %arrayidx12.i.i, align 4
  br label %if.then11.1.1.i.i

if.then11.1.1.i.i:                                ; preds = %if.then18.184.i.i, %if.then11.183.i.i.if.then11.1.1.i.i_crit_edge
  %119 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx12.i.i, align 4
  %inc.1.1.i.i = add i32 %120, 1
  store i32 %inc.1.1.i.i, ptr %arrayidx12.i.i, align 4
  %arrayidx13.1.1.i.i = getelementptr i8, ptr %83, i32 %120
  %121 = ptrtoint ptr %arrayidx13.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx13.1.1.i.i, align 1
  %add.1.1.i.i = add i32 %i.176.i.i, 5
  %arrayidx14.1.1.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add.1.1.i.i
  %123 = ptrtoint ptr %arrayidx14.1.1.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx14.1.1.i.i, align 1
  %124 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %div1.i.i22.i)
  %cmp17.1.1.i.i = icmp eq i32 %124, %div1.i.i22.i
  br i1 %cmp17.1.1.i.i, label %if.then18.1.1.i.i, label %if.then11.1.1.i.i.if.then11.2.1.i.i_crit_edge

if.then11.1.1.i.i.if.then11.2.1.i.i_crit_edge:    ; preds = %if.then11.1.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.2.1.i.i

if.then18.1.1.i.i:                                ; preds = %if.then11.1.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx12.i.i, align 4
  br label %if.then11.2.1.i.i

if.then11.2.1.i.i:                                ; preds = %if.then18.1.1.i.i, %if.then11.1.1.i.i.if.then11.2.1.i.i_crit_edge
  %126 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx12.i.i, align 4
  %inc.2.1.i.i = add i32 %127, 1
  store i32 %inc.2.1.i.i, ptr %arrayidx12.i.i, align 4
  %arrayidx13.2.1.i.i = getelementptr i8, ptr %83, i32 %127
  %128 = ptrtoint ptr %arrayidx13.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx13.2.1.i.i, align 1
  %add.2.1.i.i = add i32 %i.176.i.i, 6
  %arrayidx14.2.1.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add.2.1.i.i
  %130 = ptrtoint ptr %arrayidx14.2.1.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx14.2.1.i.i, align 1
  %131 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %div1.i.i22.i)
  %cmp17.2.1.i.i = icmp eq i32 %131, %div1.i.i22.i
  br i1 %cmp17.2.1.i.i, label %if.then18.2.1.i.i, label %if.then11.2.1.i.i.if.then27.1.i.i_crit_edge

if.then11.2.1.i.i.if.then27.1.i.i_crit_edge:      ; preds = %if.then11.2.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.1.i.i

if.then18.2.1.i.i:                                ; preds = %if.then11.2.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %arrayidx12.i.i, align 4
  br label %if.then27.1.i.i

for.inc.2.1.i.i:                                  ; preds = %if.end.i.i.for.inc.2.1.i.i_crit_edge, %if.end.thread.i.i
  %shl115.i.i = phi i32 [ %shl92.i.i, %if.end.thread.i.i ], [ %shl.i23.i, %if.end.i.i.for.inc.2.1.i.i_crit_edge ]
  %arrayidx23.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %i.176.i.i
  %133 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %arrayidx23.i.i, align 1
  %add22.1.i.i = add i32 %i.176.i.i, 1
  %arrayidx23.1.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add22.1.i.i
  %134 = ptrtoint ptr %arrayidx23.1.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %arrayidx23.1.i.i, align 1
  %add22.2.i.i = add i32 %i.176.i.i, 2
  %arrayidx23.2.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add22.2.i.i
  %135 = ptrtoint ptr %arrayidx23.2.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx23.2.i.i, align 1
  %add31172.i.i = add i32 %i.176.i.i, 3
  %conv173.i.i = trunc i32 %shl115.i.i to i8
  %inc32174.i.i = add i32 %i.176.i.i, 4
  %arrayidx33175.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add31172.i.i
  %136 = ptrtoint ptr %arrayidx33175.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv173.i.i, ptr %arrayidx33175.i.i, align 1
  %arrayidx23.185.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %inc32174.i.i
  %137 = ptrtoint ptr %arrayidx23.185.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %arrayidx23.185.i.i, align 1
  %add22.1.1.i.i = add i32 %i.176.i.i, 5
  %arrayidx23.1.1.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add22.1.1.i.i
  %138 = ptrtoint ptr %arrayidx23.1.1.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %arrayidx23.1.1.i.i, align 1
  %add22.2.1.i.i = add i32 %i.176.i.i, 6
  %arrayidx23.2.1.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add22.2.1.i.i
  %139 = ptrtoint ptr %arrayidx23.2.1.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %arrayidx23.2.1.i.i, align 1
  br label %if.end30.1.i.i

if.then27.1.i.i:                                  ; preds = %if.then18.2.1.i.i, %if.then11.2.1.i.i.if.then27.1.i.i_crit_edge
  %140 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx28.i.i, align 4
  %add29.1.i.i = add i32 %141, 3
  store i32 %add29.1.i.i, ptr %arrayidx28.i.i, align 4
  br label %if.end30.1.i.i

if.end30.1.i.i:                                   ; preds = %if.then27.1.i.i, %for.inc.2.1.i.i
  %.pre-phi.i = phi i8 [ %conv.i.i, %if.then27.1.i.i ], [ %conv173.i.i, %for.inc.2.1.i.i ]
  %add31.1.i.i = add i32 %i.176.i.i, 7
  %conv.1.i.i = or i8 %.pre-phi.i, 1
  %inc32.1.i.i = add i32 %i.176.i.i, 8
  %arrayidx33.1.i.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %add31.1.i.i
  %142 = ptrtoint ptr %arrayidx33.1.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv.1.i.i, ptr %arrayidx33.1.i.i, align 1
  %inc38.i.i = add nuw nsw i32 %stream.075.i.i, 1
  %143 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %n_streams.i9.i, align 8
  %cmp2.i25.i = icmp slt i32 %inc38.i.i, %144
  br i1 %cmp2.i25.i, label %if.end30.1.i.i.for.body3.i16.i_crit_edge, label %if.end30.1.i.i.for.cond.loopexit.i.i_crit_edge

if.end30.1.i.i.for.cond.loopexit.i.i_crit_edge:   ; preds = %if.end30.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i.i

if.end30.1.i.i.for.body3.i16.i_crit_edge:         ; preds = %if.end30.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i16.i

fill_out_urb.exit:                                ; preds = %for.cond.loopexit.i.i.fill_out_urb.exit_crit_edge, %sw.bb1.i.fill_out_urb.exit_crit_edge, %if.end42.i.i.fill_out_urb.exit_crit_edge, %sw.bb.i.fill_out_urb.exit_crit_edge, %do.body34.fill_out_urb.exit_crit_edge
  %145 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %card, align 8
  %dev1.i = getelementptr inbounds %struct.snd_card, ptr %146, i32 0, i32 27
  %147 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev1.i, align 8
  %149 = ptrtoint ptr %streaming to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i = icmp eq i32 %150, 0
  br i1 %tobool.not.i, label %fill_out_urb.exit.read_in_urb.exit_crit_edge, label %if.end.i

fill_out_urb.exit.read_in_urb.exit_crit_edge:     ; preds = %fill_out_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_in_urb.exit

if.end.i:                                         ; preds = %fill_out_urb.exit
  %actual_length.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %frame.0222, i32 2
  %151 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %actual_length.i, align 4
  %153 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %bpp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %154)
  %cmp.i = icmp ult i32 %152, %154
  br i1 %cmp.i, label %if.end.i.read_in_urb.exit_crit_edge, label %if.end3.i

if.end.i.read_in_urb.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_in_urb.exit

if.end3.i:                                        ; preds = %if.end.i
  %155 = ptrtoint ptr %data_alignment.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %data_alignment.i, align 1
  %157 = zext i8 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %156, label %if.end3.i.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i143
    i8 2, label %sw.bb4.i
    i8 3, label %sw.bb5.i
  ]

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i143:                                       ; preds = %if.end3.i
  %158 = ptrtoint ptr %transfer_buffer.i51.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %transfer_buffer.i51.i, align 4
  %160 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx16, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %159, i32 %161
  %call.i.i = tail call fastcc i32 @all_substreams_zero(ptr noundef %sub_capture.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i142 = icmp ne i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp49.not.i.i = icmp eq i32 %152, 0
  %or.cond.i = select i1 %tobool.not.i.i142, i1 true, i1 %cmp49.not.i.i
  br i1 %or.cond.i, label %sw.bb.i143.sw.epilog.i_crit_edge, label %sw.bb.i143.for.cond1.preheader.i.i149_crit_edge

sw.bb.i143.for.cond1.preheader.i.i149_crit_edge:  ; preds = %sw.bb.i143
  br label %for.cond1.preheader.i.i149

sw.bb.i143.sw.epilog.i_crit_edge:                 ; preds = %sw.bb.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.cond.loopexit.i.i148:                         ; preds = %for.inc.i.i160.for.cond.loopexit.i.i148_crit_edge, %for.cond1.preheader.i.i149.for.cond.loopexit.i.i148_crit_edge
  %i.1.lcssa.i.i146 = phi i32 [ %i.050.i.i, %for.cond1.preheader.i.i149.for.cond.loopexit.i.i148_crit_edge ], [ %inc22.i.i, %for.inc.i.i160.for.cond.loopexit.i.i148_crit_edge ]
  %162 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %actual_length.i, align 4
  %cmp.i.i147 = icmp ult i32 %i.1.lcssa.i.i146, %163
  br i1 %cmp.i.i147, label %for.cond.loopexit.i.i148.for.cond1.preheader.i.i149_crit_edge, label %for.cond.loopexit.i.i148.sw.epilog.i_crit_edge

for.cond.loopexit.i.i148.sw.epilog.i_crit_edge:   ; preds = %for.cond.loopexit.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.cond.loopexit.i.i148.for.cond1.preheader.i.i149_crit_edge: ; preds = %for.cond.loopexit.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i.i149

for.cond1.preheader.i.i149:                       ; preds = %for.cond.loopexit.i.i148.for.cond1.preheader.i.i149_crit_edge, %sw.bb.i143.for.cond1.preheader.i.i149_crit_edge
  %i.050.i.i = phi i32 [ %i.1.lcssa.i.i146, %for.cond.loopexit.i.i148.for.cond1.preheader.i.i149_crit_edge ], [ 0, %sw.bb.i143.for.cond1.preheader.i.i149_crit_edge ]
  %164 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %n_streams.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp245.i.i = icmp sgt i32 %165, 0
  br i1 %cmp245.i.i, label %for.cond1.preheader.i.i149.for.body3.i.i151_crit_edge, label %for.cond1.preheader.i.i149.for.cond.loopexit.i.i148_crit_edge

for.cond1.preheader.i.i149.for.cond.loopexit.i.i148_crit_edge: ; preds = %for.cond1.preheader.i.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i.i148

for.cond1.preheader.i.i149.for.body3.i.i151_crit_edge: ; preds = %for.cond1.preheader.i.i149
  br label %for.body3.i.i151

for.body3.i.i151:                                 ; preds = %for.inc.i.i160.for.body3.i.i151_crit_edge, %for.cond1.preheader.i.i149.for.body3.i.i151_crit_edge
  %stream.047.i.i = phi i32 [ %inc21.i.i, %for.inc.i.i160.for.body3.i.i151_crit_edge ], [ 0, %for.cond1.preheader.i.i149.for.body3.i.i151_crit_edge ]
  %i.146.i.i = phi i32 [ %inc22.i.i, %for.inc.i.i160.for.body3.i.i151_crit_edge ], [ %i.050.i.i, %for.cond1.preheader.i.i149.for.body3.i.i151_crit_edge ]
  %arrayidx.i.i150 = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 37, i32 %stream.047.i.i
  %166 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i150, align 4
  %tobool5.not.i.i = icmp eq ptr %167, null
  br i1 %tobool5.not.i.i, label %for.body3.i.i151.for.inc.i.i160_crit_edge, label %if.then6.i.i

for.body3.i.i151.for.inc.i.i160_crit_edge:        ; preds = %for.body3.i.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i160

if.then6.i.i:                                     ; preds = %for.body3.i.i151
  %runtime.i.i152 = getelementptr inbounds %struct.snd_pcm_substream, ptr %167, i32 0, i32 11
  %168 = ptrtoint ptr %runtime.i.i152 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %runtime.i.i152, align 4
  %dma_area.i.i153 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %169, i32 0, i32 50
  %170 = ptrtoint ptr %dma_area.i.i153 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dma_area.i.i153, align 4
  %buffer_size.i.i154 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %169, i32 0, i32 18
  %172 = ptrtoint ptr %buffer_size.i.i154 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %buffer_size.i.i154, align 4
  %frame_bits.i.i.i155 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %169, i32 0, i32 21
  %174 = ptrtoint ptr %frame_bits.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %frame_bits.i.i.i155, align 8
  %mul.i.i.i156 = mul i32 %175, %173
  %div1.i.i.i157 = lshr i32 %mul.i.i.i156, 3
  %arrayidx8.i.i = getelementptr i8, ptr %add.ptr.i.i141, i32 %i.146.i.i
  %176 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx8.i.i, align 1
  %arrayidx9.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 24, i32 %stream.047.i.i
  %178 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx9.i.i, align 4
  %inc.i.i158 = add i32 %179, 1
  store i32 %inc.i.i158, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %171, i32 %179
  %180 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %177, ptr %arrayidx10.i.i, align 1
  %arrayidx11.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 26, i32 %stream.047.i.i
  %181 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx11.i.i, align 4
  %inc12.i.i = add i32 %182, 1
  store i32 %inc12.i.i, ptr %arrayidx11.i.i, align 4
  %183 = load i32, ptr %arrayidx9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %div1.i.i.i157)
  %cmp15.i.i = icmp eq i32 %183, %div1.i.i.i157
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.then6.i.i.for.inc.i.i160_crit_edge

if.then6.i.i.for.inc.i.i160_crit_edge:            ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i160

if.then16.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %arrayidx9.i.i, align 4
  br label %for.inc.i.i160

for.inc.i.i160:                                   ; preds = %if.then16.i.i, %if.then6.i.i.for.inc.i.i160_crit_edge, %for.body3.i.i151.for.inc.i.i160_crit_edge
  %inc21.i.i = add nuw nsw i32 %stream.047.i.i, 1
  %inc22.i.i = add i32 %i.146.i.i, 1
  %185 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %n_streams.i9.i, align 8
  %cmp2.i.i159 = icmp slt i32 %inc21.i.i, %186
  br i1 %cmp2.i.i159, label %for.inc.i.i160.for.body3.i.i151_crit_edge, label %for.inc.i.i160.for.cond.loopexit.i.i148_crit_edge

for.inc.i.i160.for.cond.loopexit.i.i148_crit_edge: ; preds = %for.inc.i.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i.i148

for.inc.i.i160.for.body3.i.i151_crit_edge:        ; preds = %for.inc.i.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i.i151

sw.bb4.i:                                         ; preds = %if.end3.i
  %187 = ptrtoint ptr %transfer_buffer.i51.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %transfer_buffer.i51.i, align 4
  %189 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx16, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %188, i32 %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp105.not.i.i = icmp eq i32 %152, 0
  br i1 %cmp105.not.i.i, label %sw.bb4.i.sw.epilog.i_crit_edge, label %sw.bb4.i.for.body.i.i_crit_edge

sw.bb4.i.for.body.i.i_crit_edge:                  ; preds = %sw.bb4.i
  br label %for.body.i.i

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.cond.loopexit.i39.i:                          ; preds = %for.inc53.i.i.for.cond.loopexit.i39.i_crit_edge, %if.end23.i.i.for.cond.loopexit.i39.i_crit_edge
  %i.3.lcssa.i.i = phi i32 [ %i.2.i.i, %if.end23.i.i.for.cond.loopexit.i39.i_crit_edge ], [ %inc55.i.i, %for.inc53.i.i.for.cond.loopexit.i39.i_crit_edge ]
  %191 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %actual_length.i, align 4
  %cmp.i38.i = icmp ult i32 %i.3.lcssa.i.i, %192
  br i1 %cmp.i38.i, label %for.cond.loopexit.i39.i.for.body.i.i_crit_edge, label %for.cond.loopexit.i39.i.sw.epilog.i_crit_edge

for.cond.loopexit.i39.i.sw.epilog.i_crit_edge:    ; preds = %for.cond.loopexit.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.cond.loopexit.i39.i.for.body.i.i_crit_edge:   ; preds = %for.cond.loopexit.i39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i39.i.for.body.i.i_crit_edge, %sw.bb4.i.for.body.i.i_crit_edge
  %i.0106.i.i = phi i32 [ %i.3.lcssa.i.i, %for.cond.loopexit.i39.i.for.body.i.i_crit_edge ], [ 0, %sw.bb4.i.for.body.i.i_crit_edge ]
  %193 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %n_streams.i9.i, align 8
  %mul.i.i161 = shl i32 %194, 2
  %rem.i.i162 = srem i32 %i.0106.i.i, %mul.i.i161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i162)
  %cmp1.i.i = icmp eq i32 %rem.i.i162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp496.i.i = icmp sgt i32 %194, 0
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp496.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body5.lr.ph.i.i, label %for.body.i.i.if.end23.i.i_crit_edge

for.body.i.i.if.end23.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i.i

for.body5.lr.ph.i.i:                              ; preds = %for.body.i.i
  %195 = ptrtoint ptr %first_packet.i59.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %first_packet.i59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i40.i = icmp eq i32 %196, 0
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.inc.i44.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %i.198.i.i = phi i32 [ %i.0106.i.i, %for.body5.lr.ph.i.i ], [ %inc22.i43.i, %for.inc.i44.i.for.body5.i.i_crit_edge ]
  %stream.097.i.i = phi i32 [ 0, %for.body5.lr.ph.i.i ], [ %inc.i42.i, %for.inc.i44.i.for.body5.i.i_crit_edge ]
  br i1 %tobool.not.i40.i, label %if.end.i.i167, label %for.body5.i.i.for.inc.i44.i_crit_edge

for.body5.i.i.for.inc.i44.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i44.i

if.end.i.i167:                                    ; preds = %for.body5.i.i
  %shl.i.i163 = shl nuw i32 %stream.097.i.i, 1
  %div.i.i164 = sdiv i32 %i.198.i.i, %mul.i.i161
  %neg.i.i165 = and i32 %div.i.i164, 1
  %arrayidx.i41.i = getelementptr i8, ptr %add.ptr.i35.i, i32 %i.198.i.i
  %197 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.i41.i, align 1
  %199 = and i8 %198, 63
  %and10.i.i = zext i8 %199 to i32
  %shl.masked.i.i = and i32 %shl.i.i163, 254
  %conv.i.i166 = or i32 %neg.i.i165, %shl.masked.i.i
  %conv11.i.i = xor i32 %conv.i.i166, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i.i, i32 %and10.i.i)
  %cmp12.not.i.i = icmp eq i32 %conv11.i.i, %and10.i.i
  br i1 %cmp12.not.i.i, label %if.end.i.i167.if.end15.i.i_crit_edge, label %if.then14.i.i

if.end.i.i167.if.end15.i.i_crit_edge:             ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1, ptr %input_panic.i58.i, align 8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i167.if.end15.i.i_crit_edge
  %201 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx.i41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %202)
  %tobool19.not.i.i = icmp sgt i8 %202, -1
  br i1 %tobool19.not.i.i, label %if.end15.i.i.for.inc.i44.i_crit_edge, label %if.then20.i.i

if.end15.i.i.for.inc.i44.i_crit_edge:             ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i44.i

if.then20.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %203 = ptrtoint ptr %output_panic.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 1, ptr %output_panic.i.i, align 4
  br label %for.inc.i44.i

for.inc.i44.i:                                    ; preds = %if.then20.i.i, %if.end15.i.i.for.inc.i44.i_crit_edge, %for.body5.i.i.for.inc.i44.i_crit_edge
  %inc.i42.i = add nuw nsw i32 %stream.097.i.i, 1
  %inc22.i43.i = add i32 %i.198.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i42.i, %194
  br i1 %exitcond.not.i.i, label %if.end23.loopexit.i.i, label %for.inc.i44.i.for.body5.i.i_crit_edge

for.inc.i44.i.for.body5.i.i_crit_edge:            ; preds = %for.inc.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i.i

if.end23.loopexit.i.i:                            ; preds = %for.inc.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  %204 = add i32 %194, %i.0106.i.i
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end23.loopexit.i.i, %for.body.i.i.if.end23.i.i_crit_edge
  %i.2.i.i = phi i32 [ %i.0106.i.i, %for.body.i.i.if.end23.i.i_crit_edge ], [ %204, %if.end23.loopexit.i.i ]
  %205 = ptrtoint ptr %first_packet.i59.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %first_packet.i59.i, align 8
  br i1 %cmp496.i.i, label %if.end23.i.i.for.body29.i.i_crit_edge, label %if.end23.i.i.for.cond.loopexit.i39.i_crit_edge

if.end23.i.i.for.cond.loopexit.i39.i_crit_edge:   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i39.i

if.end23.i.i.for.body29.i.i_crit_edge:            ; preds = %if.end23.i.i
  br label %for.body29.i.i

for.body29.i.i:                                   ; preds = %for.inc53.i.i.for.body29.i.i_crit_edge, %if.end23.i.i.for.body29.i.i_crit_edge
  %i.3103.i.i = phi i32 [ %inc55.i.i, %for.inc53.i.i.for.body29.i.i_crit_edge ], [ %i.2.i.i, %if.end23.i.i.for.body29.i.i_crit_edge ]
  %stream.1101.i.i = phi i32 [ %inc54.i.i, %for.inc53.i.i.for.body29.i.i_crit_edge ], [ 0, %if.end23.i.i.for.body29.i.i_crit_edge ]
  %arrayidx30.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 37, i32 %stream.1101.i.i
  %206 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx30.i.i, align 4
  %208 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %input_panic.i58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool32.not.i.i = icmp eq i32 %209, 0
  br i1 %tobool32.not.i.i, label %for.body29.i.i.if.end35.i.i_crit_edge, label %if.then33.i.i

for.body29.i.i.if.end35.i.i_crit_edge:            ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i.i

if.then33.i.i:                                    ; preds = %for.body29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx34.i.i = getelementptr i8, ptr %add.ptr.i35.i, i32 %i.3103.i.i
  %210 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %arrayidx34.i.i, align 1
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then33.i.i, %for.body29.i.i.if.end35.i.i_crit_edge
  %tobool36.not.i.i = icmp eq ptr %207, null
  br i1 %tobool36.not.i.i, label %if.end35.i.i.for.inc53.i.i_crit_edge, label %if.then37.i.i

if.end35.i.i.for.inc53.i.i_crit_edge:             ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  %runtime.i45.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %207, i32 0, i32 11
  %211 = ptrtoint ptr %runtime.i45.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %runtime.i45.i, align 4
  %dma_area.i46.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %212, i32 0, i32 50
  %213 = ptrtoint ptr %dma_area.i46.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dma_area.i46.i, align 4
  %buffer_size.i47.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %212, i32 0, i32 18
  %215 = ptrtoint ptr %buffer_size.i47.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %buffer_size.i47.i, align 4
  %frame_bits.i.i48.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %212, i32 0, i32 21
  %217 = ptrtoint ptr %frame_bits.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %frame_bits.i.i48.i, align 8
  %mul.i.i49.i = mul i32 %218, %216
  %div1.i.i50.i = lshr i32 %mul.i.i49.i, 3
  %arrayidx38.i.i = getelementptr i8, ptr %add.ptr.i35.i, i32 %i.3103.i.i
  %219 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx38.i.i, align 1
  %arrayidx39.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 24, i32 %stream.1101.i.i
  %221 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx39.i.i, align 4
  %inc40.i.i168 = add i32 %222, 1
  store i32 %inc40.i.i168, ptr %arrayidx39.i.i, align 4
  %arrayidx41.i.i = getelementptr i8, ptr %214, i32 %222
  %223 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %220, ptr %arrayidx41.i.i, align 1
  %arrayidx42.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 26, i32 %stream.1101.i.i
  %224 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx42.i.i, align 4
  %inc43.i.i = add i32 %225, 1
  store i32 %inc43.i.i, ptr %arrayidx42.i.i, align 4
  %226 = load i32, ptr %arrayidx39.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %div1.i.i50.i)
  %cmp46.i.i = icmp eq i32 %226, %div1.i.i50.i
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.then37.i.i.for.inc53.i.i_crit_edge

if.then37.i.i.for.inc53.i.i_crit_edge:            ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53.i.i

if.then48.i.i:                                    ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %227 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %arrayidx39.i.i, align 4
  br label %for.inc53.i.i

for.inc53.i.i:                                    ; preds = %if.then48.i.i, %if.then37.i.i.for.inc53.i.i_crit_edge, %if.end35.i.i.for.inc53.i.i_crit_edge
  %inc54.i.i = add nuw nsw i32 %stream.1101.i.i, 1
  %inc55.i.i = add i32 %i.3103.i.i, 1
  %228 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %n_streams.i9.i, align 8
  %cmp27.i.i = icmp slt i32 %inc54.i.i, %229
  br i1 %cmp27.i.i, label %for.inc53.i.i.for.body29.i.i_crit_edge, label %for.inc53.i.i.for.cond.loopexit.i39.i_crit_edge

for.inc53.i.i.for.cond.loopexit.i39.i_crit_edge:  ; preds = %for.inc53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i39.i

for.inc53.i.i.for.body29.i.i_crit_edge:           ; preds = %for.inc53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i.i

sw.bb5.i:                                         ; preds = %if.end3.i
  %230 = ptrtoint ptr %transfer_buffer.i51.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %transfer_buffer.i51.i, align 4
  %232 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx16, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %231, i32 %233
  %rem.i54.i = and i32 %152, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i54.i)
  %tobool.not.i55.i = icmp eq i32 %rem.i54.i, 0
  br i1 %tobool.not.i55.i, label %for.cond.preheader.i56.i, label %sw.bb5.i.sw.epilog.i_crit_edge

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.cond.preheader.i56.i:                         ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp116.not.i.i = icmp eq i32 %152, 0
  br i1 %cmp116.not.i.i, label %for.cond.preheader.i56.i.for.end56.i.i_crit_edge, label %for.cond.preheader.i56.i.for.cond3.preheader.i.i_crit_edge

for.cond.preheader.i56.i.for.cond3.preheader.i.i_crit_edge: ; preds = %for.cond.preheader.i56.i
  br label %for.cond3.preheader.i.i

for.cond.preheader.i56.i.for.end56.i.i_crit_edge: ; preds = %for.cond.preheader.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56.i.i

for.cond.loopexit.i62.i:                          ; preds = %if.end48.1.i.i.for.cond.loopexit.i62.i_crit_edge, %for.cond3.preheader.i.i.for.cond.loopexit.i62.i_crit_edge
  %i.1.lcssa.i60.i = phi i32 [ %i.0117.i.i, %for.cond3.preheader.i.i.for.cond.loopexit.i62.i_crit_edge ], [ %inc49.1.i.i, %if.end48.1.i.i.for.cond.loopexit.i62.i_crit_edge ]
  %234 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %actual_length.i, align 4
  %cmp.i61.i = icmp ult i32 %i.1.lcssa.i60.i, %235
  br i1 %cmp.i61.i, label %for.cond.loopexit.i62.i.for.cond3.preheader.i.i_crit_edge, label %for.cond.loopexit.i62.i.for.end56.i.i_crit_edge

for.cond.loopexit.i62.i.for.end56.i.i_crit_edge:  ; preds = %for.cond.loopexit.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56.i.i

for.cond.loopexit.i62.i.for.cond3.preheader.i.i_crit_edge: ; preds = %for.cond.loopexit.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.cond.loopexit.i62.i.for.cond3.preheader.i.i_crit_edge, %for.cond.preheader.i56.i.for.cond3.preheader.i.i_crit_edge
  %i.0117.i.i = phi i32 [ %i.1.lcssa.i60.i, %for.cond.loopexit.i62.i.for.cond3.preheader.i.i_crit_edge ], [ 0, %for.cond.preheader.i56.i.for.cond3.preheader.i.i_crit_edge ]
  %236 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %n_streams.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp4113.i.i = icmp sgt i32 %237, 0
  br i1 %cmp4113.i.i, label %for.cond3.preheader.i.i.for.body5.i64.i_crit_edge, label %for.cond3.preheader.i.i.for.cond.loopexit.i62.i_crit_edge

for.cond3.preheader.i.i.for.cond.loopexit.i62.i_crit_edge: ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i62.i

for.cond3.preheader.i.i.for.body5.i64.i_crit_edge: ; preds = %for.cond3.preheader.i.i
  br label %for.body5.i64.i

for.body5.i64.i:                                  ; preds = %if.end48.1.i.i.for.body5.i64.i_crit_edge, %for.cond3.preheader.i.i.for.body5.i64.i_crit_edge
  %i.1115.i.i = phi i32 [ %inc49.1.i.i, %if.end48.1.i.i.for.body5.i64.i_crit_edge ], [ %i.0117.i.i, %for.cond3.preheader.i.i.for.body5.i64.i_crit_edge ]
  %stream.0114.i.i = phi i32 [ %inc54.i74.i, %if.end48.1.i.i.for.body5.i64.i_crit_edge ], [ 0, %for.cond3.preheader.i.i.for.body5.i64.i_crit_edge ]
  %arrayidx.i63.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 37, i32 %stream.0114.i.i
  %238 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx.i63.i, align 4
  %tobool6.not.i.i = icmp eq ptr %239, null
  br i1 %tobool6.not.i.i, label %for.body5.i64.i.if.end9.thread.i.i_crit_edge, label %land.lhs.true.i.i169

for.body5.i64.i.if.end9.thread.i.i_crit_edge:     ; preds = %for.body5.i64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread.i.i

land.lhs.true.i.i169:                             ; preds = %for.body5.i64.i
  %240 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %input_panic.i58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool7.not.i.i = icmp eq i32 %241, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %land.lhs.true.i.i169.if.end9.thread.i.i_crit_edge

land.lhs.true.i.i169.if.end9.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread.i.i

if.end9.thread.i.i:                               ; preds = %land.lhs.true.i.i169.if.end9.thread.i.i_crit_edge, %for.body5.i64.i.if.end9.thread.i.i_crit_edge
  %arrayidx19128.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 24, i32 %stream.0114.i.i
  %arrayidx29129.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 26, i32 %stream.0114.i.i
  br label %if.end31.i.i

if.end9.i.i:                                      ; preds = %land.lhs.true.i.i169
  %runtime.i65.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %239, i32 0, i32 11
  %242 = ptrtoint ptr %runtime.i65.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %runtime.i65.i, align 4
  %dma_area.i66.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %243, i32 0, i32 50
  %244 = ptrtoint ptr %dma_area.i66.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dma_area.i66.i, align 4
  %buffer_size.i67.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %243, i32 0, i32 18
  %246 = ptrtoint ptr %buffer_size.i67.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %buffer_size.i67.i, align 4
  %frame_bits.i.i68.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %243, i32 0, i32 21
  %248 = ptrtoint ptr %frame_bits.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %frame_bits.i.i68.i, align 8
  %mul.i.i69.i = mul i32 %249, %247
  %div1.i.i70.i = lshr i32 %mul.i.i69.i, 3
  %tobool13.not.i.i = icmp eq ptr %245, null
  %arrayidx19.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 24, i32 %stream.0114.i.i
  %arrayidx29.i.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 26, i32 %stream.0114.i.i
  br i1 %tobool13.not.i.i, label %if.end9.i.i.if.end31.i.i_crit_edge, label %for.body17.preheader.i.i

if.end9.i.i.if.end31.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

for.body17.preheader.i.i:                         ; preds = %if.end9.i.i
  %arrayidx18.i.i = getelementptr i8, ptr %add.ptr.i52.i, i32 %i.1115.i.i
  %250 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx18.i.i, align 1
  %252 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx19.i.i, align 4
  %inc.i71.i = add i32 %253, 1
  store i32 %inc.i71.i, ptr %arrayidx19.i.i, align 4
  %arrayidx20.i.i = getelementptr i8, ptr %245, i32 %253
  %254 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %251, ptr %arrayidx20.i.i, align 1
  %255 = load i32, ptr %arrayidx19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %div1.i.i70.i)
  %cmp23.i.i = icmp eq i32 %255, %div1.i.i70.i
  br i1 %cmp23.i.i, label %if.then24.i.i, label %for.body17.preheader.i.i.for.inc.i72.i_crit_edge

for.body17.preheader.i.i.for.inc.i72.i_crit_edge: ; preds = %for.body17.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i72.i

if.then24.i.i:                                    ; preds = %for.body17.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %256 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %arrayidx19.i.i, align 4
  br label %for.inc.i72.i

for.inc.i72.i:                                    ; preds = %if.then24.i.i, %for.body17.preheader.i.i.for.inc.i72.i_crit_edge
  %add.1.i.i170 = add i32 %i.1115.i.i, 1
  %arrayidx18.1.i.i = getelementptr i8, ptr %add.ptr.i52.i, i32 %add.1.i.i170
  %257 = ptrtoint ptr %arrayidx18.1.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx18.1.i.i, align 1
  %259 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx19.i.i, align 4
  %inc.1.i.i171 = add i32 %260, 1
  store i32 %inc.1.i.i171, ptr %arrayidx19.i.i, align 4
  %arrayidx20.1.i.i = getelementptr i8, ptr %245, i32 %260
  %261 = ptrtoint ptr %arrayidx20.1.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %258, ptr %arrayidx20.1.i.i, align 1
  %262 = load i32, ptr %arrayidx19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %div1.i.i70.i)
  %cmp23.1.i.i = icmp eq i32 %262, %div1.i.i70.i
  br i1 %cmp23.1.i.i, label %if.then24.1.i.i, label %for.inc.i72.i.for.inc.1.i.i_crit_edge

for.inc.i72.i.for.inc.1.i.i_crit_edge:            ; preds = %for.inc.i72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

if.then24.1.i.i:                                  ; preds = %for.inc.i72.i
  call void @__sanitizer_cov_trace_pc() #9
  %263 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %arrayidx19.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then24.1.i.i, %for.inc.i72.i.for.inc.1.i.i_crit_edge
  %add.2.i.i172 = add i32 %i.1115.i.i, 2
  %arrayidx18.2.i.i = getelementptr i8, ptr %add.ptr.i52.i, i32 %add.2.i.i172
  %264 = ptrtoint ptr %arrayidx18.2.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx18.2.i.i, align 1
  %266 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx19.i.i, align 4
  %inc.2.i.i173 = add i32 %267, 1
  store i32 %inc.2.i.i173, ptr %arrayidx19.i.i, align 4
  %arrayidx20.2.i.i = getelementptr i8, ptr %245, i32 %267
  %268 = ptrtoint ptr %arrayidx20.2.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %265, ptr %arrayidx20.2.i.i, align 1
  %269 = load i32, ptr %arrayidx19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %269, i32 %div1.i.i70.i)
  %cmp23.2.i.i = icmp eq i32 %269, %div1.i.i70.i
  br i1 %cmp23.2.i.i, label %if.then24.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

if.then24.2.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %arrayidx19.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then24.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %271 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx29.i.i, align 4
  %add30.i.i = add i32 %272, 3
  store i32 %add30.i.i, ptr %arrayidx29.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %for.inc.2.i.i, %if.end9.i.i.if.end31.i.i_crit_edge, %if.end9.thread.i.i
  %arrayidx29140.i.i = phi ptr [ %arrayidx29129.i.i, %if.end9.thread.i.i ], [ %arrayidx29.i.i, %for.inc.2.i.i ], [ %arrayidx29.i.i, %if.end9.i.i.if.end31.i.i_crit_edge ]
  %arrayidx19136.i.i = phi ptr [ %arrayidx19128.i.i, %if.end9.thread.i.i ], [ %arrayidx19.i.i, %for.inc.2.i.i ], [ %arrayidx19.i.i, %if.end9.i.i.if.end31.i.i_crit_edge ]
  %tobool13.not132.i.i = phi i1 [ true, %if.end9.thread.i.i ], [ false, %for.inc.2.i.i ], [ true, %if.end9.i.i.if.end31.i.i_crit_edge ]
  %sz.0131.i.i = phi i32 [ 0, %if.end9.thread.i.i ], [ %div1.i.i70.i, %for.inc.2.i.i ], [ %div1.i.i70.i, %if.end9.i.i.if.end31.i.i_crit_edge ]
  %audio_buf.0130.i.i = phi ptr [ null, %if.end9.thread.i.i ], [ %245, %for.inc.2.i.i ], [ null, %if.end9.i.i.if.end31.i.i_crit_edge ]
  %shl133.i.i = shl nuw i32 %stream.0114.i.i, 1
  %add32.i.i = add i32 %i.1115.i.i, 3
  %arrayidx33.i.i174 = getelementptr i8, ptr %add.ptr.i52.i, i32 %add32.i.i
  %273 = ptrtoint ptr %arrayidx33.i.i174 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx33.i.i174, align 1
  %conv.i73.i = zext i8 %274 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shl133.i.i, i32 %conv.i73.i)
  %cmp34.not.i.i = icmp eq i32 %shl133.i.i, %conv.i73.i
  br i1 %cmp34.not.i.i, label %if.end31.i.i.if.end48.i.i_crit_edge, label %land.lhs.true36.i.i

if.end31.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

land.lhs.true36.i.i:                              ; preds = %if.end31.i.i
  %275 = ptrtoint ptr %first_packet.i59.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %first_packet.i59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool37.not.i.i = icmp eq i32 %276, 0
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %land.lhs.true36.i.i.if.end48.i.i_crit_edge

land.lhs.true36.i.i.if.end48.i.i_crit_edge:       ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i

if.then38.i.i:                                    ; preds = %land.lhs.true36.i.i
  %277 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %input_panic.i58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool40.not.i.i = icmp eq i32 %278, 0
  br i1 %tobool40.not.i.i, label %do.end.i.i, label %if.then38.i.i.if.end46.i.i_crit_edge

if.then38.i.i.if.end46.i.i_crit_edge:             ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i.i

do.end.i.i:                                       ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.32, i32 noundef %shl133.i.i, i32 noundef %conv.i73.i, i32 noundef 0, i32 noundef %stream.0114.i.i, i32 noundef %add32.i.i) #10
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %do.end.i.i, %if.then38.i.i.if.end46.i.i_crit_edge
  %279 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 1, ptr %input_panic.i58.i, align 8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.end46.i.i, %land.lhs.true36.i.i.if.end48.i.i_crit_edge, %if.end31.i.i.if.end48.i.i_crit_edge
  br i1 %tobool13.not132.i.i, label %if.end48.i.i.if.end31.1.i.i_crit_edge, label %for.body17.preheader.1.i.i

if.end48.i.i.if.end31.1.i.i_crit_edge:            ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.1.i.i

for.body17.preheader.1.i.i:                       ; preds = %if.end48.i.i
  %inc49.i.i = add i32 %i.1115.i.i, 4
  %arrayidx18.1118.i.i = getelementptr i8, ptr %add.ptr.i52.i, i32 %inc49.i.i
  %280 = ptrtoint ptr %arrayidx18.1118.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx18.1118.i.i, align 1
  %282 = ptrtoint ptr %arrayidx19136.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx19136.i.i, align 4
  %inc.1119.i.i = add i32 %283, 1
  store i32 %inc.1119.i.i, ptr %arrayidx19136.i.i, align 4
  %arrayidx20.1120.i.i = getelementptr i8, ptr %audio_buf.0130.i.i, i32 %283
  %284 = ptrtoint ptr %arrayidx20.1120.i.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %281, ptr %arrayidx20.1120.i.i, align 1
  %285 = load i32, ptr %arrayidx19136.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %285, i32 %sz.0131.i.i)
  %cmp23.1121.i.i = icmp eq i32 %285, %sz.0131.i.i
  br i1 %cmp23.1121.i.i, label %if.then24.1122.i.i, label %for.body17.preheader.1.i.i.for.inc.1123.i.i_crit_edge

for.body17.preheader.1.i.i.for.inc.1123.i.i_crit_edge: ; preds = %for.body17.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1123.i.i

if.then24.1122.i.i:                               ; preds = %for.body17.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %286 = ptrtoint ptr %arrayidx19136.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %arrayidx19136.i.i, align 4
  br label %for.inc.1123.i.i

for.inc.1123.i.i:                                 ; preds = %if.then24.1122.i.i, %for.body17.preheader.1.i.i.for.inc.1123.i.i_crit_edge
  %add.1.1.i.i175 = add i32 %i.1115.i.i, 5
  %arrayidx18.1.1.i.i = getelementptr i8, ptr %add.ptr.i52.i, i32 %add.1.1.i.i175
  %287 = ptrtoint ptr %arrayidx18.1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx18.1.1.i.i, align 1
  %289 = ptrtoint ptr %arrayidx19136.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx19136.i.i, align 4
  %inc.1.1.i.i176 = add i32 %290, 1
  store i32 %inc.1.1.i.i176, ptr %arrayidx19136.i.i, align 4
  %arrayidx20.1.1.i.i = getelementptr i8, ptr %audio_buf.0130.i.i, i32 %290
  %291 = ptrtoint ptr %arrayidx20.1.1.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %288, ptr %arrayidx20.1.1.i.i, align 1
  %292 = load i32, ptr %arrayidx19136.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %292, i32 %sz.0131.i.i)
  %cmp23.1.1.i.i = icmp eq i32 %292, %sz.0131.i.i
  br i1 %cmp23.1.1.i.i, label %if.then24.1.1.i.i, label %for.inc.1123.i.i.for.inc.1.1.i.i_crit_edge

for.inc.1123.i.i.for.inc.1.1.i.i_crit_edge:       ; preds = %for.inc.1123.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.1.i.i

if.then24.1.1.i.i:                                ; preds = %for.inc.1123.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %293 = ptrtoint ptr %arrayidx19136.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 0, ptr %arrayidx19136.i.i, align 4
  br label %for.inc.1.1.i.i

for.inc.1.1.i.i:                                  ; preds = %if.then24.1.1.i.i, %for.inc.1123.i.i.for.inc.1.1.i.i_crit_edge
  %add.2.1.i.i177 = add i32 %i.1115.i.i, 6
  %arrayidx18.2.1.i.i = getelementptr i8, ptr %add.ptr.i52.i, i32 %add.2.1.i.i177
  %294 = ptrtoint ptr %arrayidx18.2.1.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx18.2.1.i.i, align 1
  %296 = ptrtoint ptr %arrayidx19136.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx19136.i.i, align 4
  %inc.2.1.i.i178 = add i32 %297, 1
  store i32 %inc.2.1.i.i178, ptr %arrayidx19136.i.i, align 4
  %arrayidx20.2.1.i.i = getelementptr i8, ptr %audio_buf.0130.i.i, i32 %297
  %298 = ptrtoint ptr %arrayidx20.2.1.i.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %295, ptr %arrayidx20.2.1.i.i, align 1
  %299 = load i32, ptr %arrayidx19136.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %299, i32 %sz.0131.i.i)
  %cmp23.2.1.i.i = icmp eq i32 %299, %sz.0131.i.i
  br i1 %cmp23.2.1.i.i, label %if.then24.2.1.i.i, label %for.inc.1.1.i.i.for.inc.2.1.i.i179_crit_edge

for.inc.1.1.i.i.for.inc.2.1.i.i179_crit_edge:     ; preds = %for.inc.1.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.1.i.i179

if.then24.2.1.i.i:                                ; preds = %for.inc.1.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %300 = ptrtoint ptr %arrayidx19136.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 0, ptr %arrayidx19136.i.i, align 4
  br label %for.inc.2.1.i.i179

for.inc.2.1.i.i179:                               ; preds = %if.then24.2.1.i.i, %for.inc.1.1.i.i.for.inc.2.1.i.i179_crit_edge
  %301 = ptrtoint ptr %arrayidx29140.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx29140.i.i, align 4
  %add30.1.i.i = add i32 %302, 3
  store i32 %add30.1.i.i, ptr %arrayidx29140.i.i, align 4
  br label %if.end31.1.i.i

if.end31.1.i.i:                                   ; preds = %for.inc.2.1.i.i179, %if.end48.i.i.if.end31.1.i.i_crit_edge
  %add32.1.i.i = add i32 %i.1115.i.i, 7
  %arrayidx33.1.i.i180 = getelementptr i8, ptr %add.ptr.i52.i, i32 %add32.1.i.i
  %303 = ptrtoint ptr %arrayidx33.1.i.i180 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx33.1.i.i180, align 1
  %conv.1.i.i181 = zext i8 %304 to i32
  %or.1.i.i = or i32 %shl133.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or.1.i.i, i32 %conv.1.i.i181)
  %cmp34.not.1.i.i = icmp eq i32 %or.1.i.i, %conv.1.i.i181
  br i1 %cmp34.not.1.i.i, label %if.end31.1.i.i.if.end48.1.i.i_crit_edge, label %land.lhs.true36.1.i.i

if.end31.1.i.i.if.end48.1.i.i_crit_edge:          ; preds = %if.end31.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.1.i.i

land.lhs.true36.1.i.i:                            ; preds = %if.end31.1.i.i
  %305 = ptrtoint ptr %first_packet.i59.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %first_packet.i59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %tobool37.not.1.i.i = icmp eq i32 %306, 0
  br i1 %tobool37.not.1.i.i, label %if.then38.1.i.i, label %land.lhs.true36.1.i.i.if.end48.1.i.i_crit_edge

land.lhs.true36.1.i.i.if.end48.1.i.i_crit_edge:   ; preds = %land.lhs.true36.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.1.i.i

if.then38.1.i.i:                                  ; preds = %land.lhs.true36.1.i.i
  %307 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %input_panic.i58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool40.not.1.i.i = icmp eq i32 %308, 0
  br i1 %tobool40.not.1.i.i, label %do.end.1.i.i, label %if.then38.1.i.i.if.end46.1.i.i_crit_edge

if.then38.1.i.i.if.end46.1.i.i_crit_edge:         ; preds = %if.then38.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.1.i.i

do.end.1.i.i:                                     ; preds = %if.then38.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.32, i32 noundef %or.1.i.i, i32 noundef %conv.1.i.i181, i32 noundef 1, i32 noundef %stream.0114.i.i, i32 noundef %add32.1.i.i) #10
  br label %if.end46.1.i.i

if.end46.1.i.i:                                   ; preds = %do.end.1.i.i, %if.then38.1.i.i.if.end46.1.i.i_crit_edge
  %309 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 1, ptr %input_panic.i58.i, align 8
  br label %if.end48.1.i.i

if.end48.1.i.i:                                   ; preds = %if.end46.1.i.i, %land.lhs.true36.1.i.i.if.end48.1.i.i_crit_edge, %if.end31.1.i.i.if.end48.1.i.i_crit_edge
  %inc49.1.i.i = add i32 %i.1115.i.i, 8
  %inc54.i74.i = add nuw nsw i32 %stream.0114.i.i, 1
  %310 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %n_streams.i9.i, align 8
  %cmp4.i.i = icmp slt i32 %inc54.i74.i, %311
  br i1 %cmp4.i.i, label %if.end48.1.i.i.for.body5.i64.i_crit_edge, label %if.end48.1.i.i.for.cond.loopexit.i62.i_crit_edge

if.end48.1.i.i.for.cond.loopexit.i62.i_crit_edge: ; preds = %if.end48.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i62.i

if.end48.1.i.i.for.body5.i64.i_crit_edge:         ; preds = %if.end48.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i64.i

for.end56.i.i:                                    ; preds = %for.cond.loopexit.i62.i.for.end56.i.i_crit_edge, %for.cond.preheader.i56.i.for.end56.i.i_crit_edge
  %312 = ptrtoint ptr %first_packet.i59.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %first_packet.i59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %cmp58.i.i = icmp sgt i32 %313, 0
  br i1 %cmp58.i.i, label %if.then60.i.i, label %for.end56.i.i.sw.epilog.i_crit_edge

for.end56.i.i.sw.epilog.i_crit_edge:              ; preds = %for.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then60.i.i:                                    ; preds = %for.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.i = add nsw i32 %313, -1
  %314 = ptrtoint ptr %first_packet.i59.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %dec.i.i, ptr %first_packet.i59.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then60.i.i, %for.end56.i.i.sw.epilog.i_crit_edge, %sw.bb5.i.sw.epilog.i_crit_edge, %for.cond.loopexit.i39.i.sw.epilog.i_crit_edge, %sw.bb4.i.sw.epilog.i_crit_edge, %for.cond.loopexit.i.i148.sw.epilog.i_crit_edge, %sw.bb.i143.sw.epilog.i_crit_edge, %if.end3.i.sw.epilog.i_crit_edge
  %315 = ptrtoint ptr %input_panic.i58.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %input_panic.i58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool6.not.i = icmp eq i32 %316, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %sw.epilog.i.land.lhs.true.i_crit_edge

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %317 = ptrtoint ptr %output_panic.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %output_panic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool7.not.i = icmp eq i32 %318, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.read_in_urb.exit_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

lor.lhs.false.i.read_in_urb.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_in_urb.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %sw.epilog.i.land.lhs.true.i_crit_edge
  %319 = ptrtoint ptr %warned.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %warned.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool8.not.i = icmp eq i32 %320, 0
  br i1 %tobool8.not.i, label %do.end.i, label %land.lhs.true.i.read_in_urb.exit_crit_edge

land.lhs.true.i.read_in_urb.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_in_urb.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %cond.i = select i1 %tobool6.not.i, ptr @.str.30, ptr @.str.29
  %321 = ptrtoint ptr %output_panic.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %output_panic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool13.not.i = icmp eq i32 %322, 0
  %cond14.i = select i1 %tobool13.not.i, ptr @.str.30, ptr @.str.31
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond14.i) #10
  %323 = ptrtoint ptr %warned.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 1, ptr %warned.i, align 8
  br label %read_in_urb.exit

read_in_urb.exit:                                 ; preds = %do.end.i, %land.lhs.true.i.read_in_urb.exit_crit_edge, %lor.lhs.false.i.read_in_urb.exit_crit_edge, %if.end.i.read_in_urb.exit_crit_edge, %fill_out_urb.exit.read_in_urb.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call37) #7
  %324 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %n_streams.i9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %cmp19.i = icmp sgt i32 %325, 0
  br i1 %cmp19.i, label %read_in_urb.exit.for.body.i_crit_edge, label %read_in_urb.exit.if.end48_crit_edge

read_in_urb.exit.if.end48_crit_edge:              ; preds = %read_in_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

read_in_urb.exit.for.body.i_crit_edge:            ; preds = %read_in_urb.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %read_in_urb.exit.for.body.i_crit_edge
  %stream.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %read_in_urb.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %sub_playback, i32 %stream.020.i
  %326 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i182 = icmp eq ptr %327, null
  br i1 %tobool.not.i182, label %for.body.i.for.inc.i_crit_edge, label %if.end.i187

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i187:                                      ; preds = %for.body.i
  %runtime1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %327, i32 0, i32 11
  %328 = ptrtoint ptr %runtime1.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %runtime1.i.i, align 4
  %period_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %329, i32 0, i32 16
  %330 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %period_size.i.i, align 4
  %frame_bits.i.i.i183 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %329, i32 0, i32 21
  %332 = ptrtoint ptr %frame_bits.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %frame_bits.i.i.i183, align 8
  %mul.i.i.i184 = mul i32 %333, %331
  %div1.i.i.i185 = lshr i32 %mul.i.i.i184, 3
  %stream1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %327, i32 0, i32 5
  %334 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %stream1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %cmp2.i = icmp eq i32 %335, 0
  %arrayidx3.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 27, i32 %stream.020.i
  %arrayidx4.i = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 26, i32 %stream.020.i
  %cond.i186 = select i1 %cmp2.i, ptr %arrayidx3.i, ptr %arrayidx4.i
  %336 = ptrtoint ptr %cond.i186 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %cond.i186, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %337, i32 %div1.i.i.i185)
  %cmp5.not.i = icmp slt i32 %337, %div1.i.i.i185
  br i1 %cmp5.not.i, label %if.end.i187.for.inc.i_crit_edge, label %if.then6.i

if.end.i187.for.inc.i_crit_edge:                  ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %327) #7
  %338 = ptrtoint ptr %cond.i186 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %cond.i186, align 4
  %rem.i = srem i32 %339, %div1.i.i.i185
  store i32 %rem.i, ptr %cond.i186, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i187.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %stream.020.i, 1
  %340 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %n_streams.i9.i, align 8
  %cmp.i188 = icmp slt i32 %inc.i, %341
  br i1 %cmp.i188, label %for.inc.i.for.body.i_crit_edge, label %check_for_elapsed_periods.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

check_for_elapsed_periods.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %cmp19.i190 = icmp sgt i32 %341, 0
  br i1 %cmp19.i190, label %check_for_elapsed_periods.exit.for.body.i194_crit_edge, label %check_for_elapsed_periods.exit.if.end48_crit_edge

check_for_elapsed_periods.exit.if.end48_crit_edge: ; preds = %check_for_elapsed_periods.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

check_for_elapsed_periods.exit.for.body.i194_crit_edge: ; preds = %check_for_elapsed_periods.exit
  br label %for.body.i194

for.body.i194:                                    ; preds = %for.inc.i211.for.body.i194_crit_edge, %check_for_elapsed_periods.exit.for.body.i194_crit_edge
  %stream.020.i191 = phi i32 [ %inc.i209, %for.inc.i211.for.body.i194_crit_edge ], [ 0, %check_for_elapsed_periods.exit.for.body.i194_crit_edge ]
  %arrayidx.i192 = getelementptr ptr, ptr %sub_capture.i.i, i32 %stream.020.i191
  %342 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %arrayidx.i192, align 4
  %tobool.not.i193 = icmp eq ptr %343, null
  br i1 %tobool.not.i193, label %for.body.i194.for.inc.i211_crit_edge, label %if.end.i206

for.body.i194.for.inc.i211_crit_edge:             ; preds = %for.body.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i211

if.end.i206:                                      ; preds = %for.body.i194
  %runtime1.i.i195 = getelementptr inbounds %struct.snd_pcm_substream, ptr %343, i32 0, i32 11
  %344 = ptrtoint ptr %runtime1.i.i195 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %runtime1.i.i195, align 4
  %period_size.i.i196 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %345, i32 0, i32 16
  %346 = ptrtoint ptr %period_size.i.i196 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %period_size.i.i196, align 4
  %frame_bits.i.i.i197 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %345, i32 0, i32 21
  %348 = ptrtoint ptr %frame_bits.i.i.i197 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %frame_bits.i.i.i197, align 8
  %mul.i.i.i198 = mul i32 %349, %347
  %div1.i.i.i199 = lshr i32 %mul.i.i.i198, 3
  %stream1.i200 = getelementptr inbounds %struct.snd_pcm_substream, ptr %343, i32 0, i32 5
  %350 = ptrtoint ptr %stream1.i200 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %stream1.i200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %cmp2.i201 = icmp eq i32 %351, 0
  %arrayidx3.i202 = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 27, i32 %stream.020.i191
  %arrayidx4.i203 = getelementptr %struct.snd_usb_caiaqdev, ptr %5, i32 0, i32 26, i32 %stream.020.i191
  %cond.i204 = select i1 %cmp2.i201, ptr %arrayidx3.i202, ptr %arrayidx4.i203
  %352 = ptrtoint ptr %cond.i204 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %cond.i204, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %353, i32 %div1.i.i.i199)
  %cmp5.not.i205 = icmp slt i32 %353, %div1.i.i.i199
  br i1 %cmp5.not.i205, label %if.end.i206.for.inc.i211_crit_edge, label %if.then6.i208

if.end.i206.for.inc.i211_crit_edge:               ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i211

if.then6.i208:                                    ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %343) #7
  %354 = ptrtoint ptr %cond.i204 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %cond.i204, align 4
  %rem.i207 = srem i32 %355, %div1.i.i.i199
  store i32 %rem.i207, ptr %cond.i204, align 4
  br label %for.inc.i211

for.inc.i211:                                     ; preds = %if.then6.i208, %if.end.i206.for.inc.i211_crit_edge, %for.body.i194.for.inc.i211_crit_edge
  %inc.i209 = add nuw nsw i32 %stream.020.i191, 1
  %356 = ptrtoint ptr %n_streams.i9.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %n_streams.i9.i, align 8
  %cmp.i210 = icmp slt i32 %inc.i209, %357
  br i1 %cmp.i210, label %for.inc.i211.for.body.i194_crit_edge, label %for.inc.i211.if.end48_crit_edge

for.inc.i211.if.end48_crit_edge:                  ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

for.inc.i211.for.body.i194_crit_edge:             ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i194

if.end48:                                         ; preds = %for.inc.i211.if.end48_crit_edge, %check_for_elapsed_periods.exit.if.end48_crit_edge, %read_in_urb.exit.if.end48_crit_edge, %if.end20.if.end48_crit_edge
  %send_it.1 = phi i32 [ %send_it.0226, %if.end20.if.end48_crit_edge ], [ 1, %check_for_elapsed_periods.exit.if.end48_crit_edge ], [ 1, %read_in_urb.exit.if.end48_crit_edge ], [ 1, %for.inc.i211.if.end48_crit_edge ]
  %inc49 = add i32 %outframe.0227, 1
  br label %for.inc50

for.inc50:                                        ; preds = %if.end48, %for.body15.for.inc50_crit_edge
  %send_it.2 = phi i32 [ %send_it.0226, %for.body15.for.inc50_crit_edge ], [ %send_it.1, %if.end48 ]
  %outframe.1 = phi i32 [ %outframe.0227, %for.body15.for.inc50_crit_edge ], [ %inc49, %if.end48 ]
  %offset.1 = phi i32 [ %offset.0230, %for.body15.for.inc50_crit_edge ], [ %add, %if.end48 ]
  %inc51 = add nuw nsw i32 %frame.0222, 1
  %exitcond236.not = icmp eq i32 %inc51, 8
  br i1 %exitcond236.not, label %for.end52, label %for.inc50.for.body15_crit_edge

for.inc50.for.body15_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.end52:                                        ; preds = %for.inc50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_it.2)
  %tobool53.not = icmp eq i32 %send_it.2, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #9
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 24
  %358 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %outframe.1, ptr %number_of_packets, align 4
  %call55 = tail call i32 @usb_submit_urb(ptr noundef nonnull %15, i32 noundef 2592) #7
  br label %requeue

if.else:                                          ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #9
  %context56 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 27
  %359 = ptrtoint ptr %context56 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %context56, align 4
  %index = getelementptr inbounds %struct.snd_usb_caiaq_cb_info, ptr %360, i32 0, i32 1
  %361 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %index, align 4
  tail call void @_clear_bit(i32 noundef %362, ptr noundef %outurb_active_mask) #7
  br label %requeue

requeue:                                          ; preds = %if.else, %if.then54, %do.end
  %arrayidx64 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 0
  %363 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 0, ptr %arrayidx64, align 4
  %length68 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 0, i32 1
  %364 = ptrtoint ptr %length68 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 512, ptr %length68, align 4
  %actual_length71 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 0, i32 2
  %365 = ptrtoint ptr %actual_length71 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 0, ptr %actual_length71, align 4
  %arrayidx64.1 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 1
  %366 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 512, ptr %arrayidx64.1, align 4
  %length68.1 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 1, i32 1
  %367 = ptrtoint ptr %length68.1 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 512, ptr %length68.1, align 4
  %actual_length71.1 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 1, i32 2
  %368 = ptrtoint ptr %actual_length71.1 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 0, ptr %actual_length71.1, align 4
  %arrayidx64.2 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 2
  %369 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 1024, ptr %arrayidx64.2, align 4
  %length68.2 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 2, i32 1
  %370 = ptrtoint ptr %length68.2 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 512, ptr %length68.2, align 4
  %actual_length71.2 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 2, i32 2
  %371 = ptrtoint ptr %actual_length71.2 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 0, ptr %actual_length71.2, align 4
  %arrayidx64.3 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 3
  %372 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 1536, ptr %arrayidx64.3, align 4
  %length68.3 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 3, i32 1
  %373 = ptrtoint ptr %length68.3 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 512, ptr %length68.3, align 4
  %actual_length71.3 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 3, i32 2
  %374 = ptrtoint ptr %actual_length71.3 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 0, ptr %actual_length71.3, align 4
  %arrayidx64.4 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 4
  %375 = ptrtoint ptr %arrayidx64.4 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 2048, ptr %arrayidx64.4, align 4
  %length68.4 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 4, i32 1
  %376 = ptrtoint ptr %length68.4 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 512, ptr %length68.4, align 4
  %actual_length71.4 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 4, i32 2
  %377 = ptrtoint ptr %actual_length71.4 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %actual_length71.4, align 4
  %arrayidx64.5 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 5
  %378 = ptrtoint ptr %arrayidx64.5 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 2560, ptr %arrayidx64.5, align 4
  %length68.5 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 5, i32 1
  %379 = ptrtoint ptr %length68.5 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 512, ptr %length68.5, align 4
  %actual_length71.5 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 5, i32 2
  %380 = ptrtoint ptr %actual_length71.5 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 0, ptr %actual_length71.5, align 4
  %arrayidx64.6 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 6
  %381 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 3072, ptr %arrayidx64.6, align 4
  %length68.6 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 6, i32 1
  %382 = ptrtoint ptr %length68.6 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 512, ptr %length68.6, align 4
  %actual_length71.6 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 6, i32 2
  %383 = ptrtoint ptr %actual_length71.6 to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 0, ptr %actual_length71.6, align 4
  %arrayidx64.7 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 7
  %384 = ptrtoint ptr %arrayidx64.7 to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 3584, ptr %arrayidx64.7, align 4
  %length68.7 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 7, i32 1
  %385 = ptrtoint ptr %length68.7 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 512, ptr %length68.7, align 4
  %actual_length71.7 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 7, i32 2
  %386 = ptrtoint ptr %actual_length71.7 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 0, ptr %actual_length71.7, align 4
  %number_of_packets75 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %387 = ptrtoint ptr %number_of_packets75 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 8, ptr %number_of_packets75, align 4
  %call76 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  br label %cleanup

cleanup:                                          ; preds = %requeue, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_completed(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %output_running = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %output_running to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %output_running to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %output_running, align 4
  %prepare_wait_queue = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %prepare_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index = getelementptr inbounds %struct.snd_usb_caiaq_cb_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %outurb_active_mask = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 35
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %outurb_active_mask) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/caiaq/audio.c", i32 784, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug251, !1, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/caiaq/audio.c", i32 785, i32 2}
!8 = !{ptr @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug252, !7, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/usb/caiaq/audio.c", i32 786, i32 2}
!11 = !{ptr @snd_usb_caiaq_audio_init.__UNIQUE_ID_ddebug253, !10, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/caiaq/audio.c", i32 789, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_usb_caiaq_audio_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_usb_caiaq_audio_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/caiaq/audio.c", i32 794, i32 3}
!20 = !{ptr @snd_usb_caiaq_audio_init._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @snd_usb_caiaq_audio_init._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/caiaq/audio.c", i32 802, i32 3}
!24 = !{ptr @snd_usb_caiaq_audio_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @snd_usb_caiaq_audio_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/usb/caiaq/audio.c", i32 876, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @snd_usb_caiaq_audio_free.__UNIQUE_ID_ddebug255, !27, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!30 = !{ptr @snd_usb_caiaq_pcm_hardware, !31, !"snd_usb_caiaq_pcm_hardware", i1 false, i1 false}
!31 = !{!"../sound/usb/caiaq/audio.c", i32 33, i32 38}
!32 = !{ptr @snd_usb_caiaq_ops, !33, !"snd_usb_caiaq_ops", i1 false, i1 false}
!33 = !{!"../sound/usb/caiaq/audio.c", i32 321, i32 33}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/usb/caiaq/audio.c", i32 146, i32 2}
!36 = !{ptr @snd_usb_caiaq_substream_open.__UNIQUE_ID_ddebug241, !35, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/usb/caiaq/audio.c", i32 158, i32 2}
!39 = !{ptr @snd_usb_caiaq_substream_close.__UNIQUE_ID_ddebug242, !38, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/usb/caiaq/audio.c", i32 193, i32 2}
!42 = !{ptr @snd_usb_caiaq_pcm_prepare.__UNIQUE_ID_ddebug243, !41, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!43 = distinct !{null, !44, !"rates", i1 false, i1 false}
!44 = !{!"../sound/usb/caiaq/audio.c", i32 182, i32 27}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/caiaq/audio.c", i32 94, i32 2}
!47 = !{ptr @stream_start.__UNIQUE_ID_ddebug239, !46, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/usb/caiaq/audio.c", i32 110, i32 4}
!50 = !{ptr @stream_start._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @stream_start._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/usb/caiaq/audio.c", i32 276, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @snd_usb_caiaq_pcm_trigger.__UNIQUE_ID_ddebug244, !53, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/caiaq/audio.c", i32 635, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @read_completed._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @read_completed._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/usb/caiaq/audio.c", i32 509, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @read_in_urb._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @read_in_urb._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/usb/caiaq/audio.c", i32 470, i32 7}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @read_in_urb_mode3._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @read_in_urb_mode3._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/usb/caiaq/audio.c", i32 125, i32 2}
!77 = !{ptr @stream_stop.__UNIQUE_ID_ddebug240, !76, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148297925, i64 2148297930, i64 2148297943, i64 2148297987, i64 2148298021, i64 2148298042}
