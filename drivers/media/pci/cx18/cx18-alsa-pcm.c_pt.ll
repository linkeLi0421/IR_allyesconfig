; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-alsa-pcm.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-alsa-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_cx18_card = type { ptr, ptr, i32, i32, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
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
%struct.snd_pcm_oss = type { i32, i32 }
%struct.cx18_open_id = type { %struct.v4l2_fh, i32, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }

@__param_str_pcm_debug = internal constant [20 x i8] c"cx18_alsa.pcm_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pcm_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pcm_debug = internal constant %struct.kernel_param { ptr @__param_str_pcm_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @pcm_debug } }, section "__param", align 4
@__UNIQUE_ID_pcm_debugtype387 = internal constant [33 x i8] c"cx18_alsa.parmtype=pcm_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_debug388 = internal constant [55 x i8] c"cx18_alsa.parm=pcm_debug:enable debug messages for pcm\00", section ".modinfo", align 1
@cx18_alsa_announce_pcm_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016cx18-alsa-pcm %s: cx18 alsa announce ptr=%p data=%p num_bytes=%zu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cx18_alsa_announce_pcm_data\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/cx18/cx18-alsa-pcm.c\00", [57 x i8] zeroinitializer }, align 32
@cx18_alsa_announce_pcm_data._entry_ptr = internal global ptr @cx18_alsa_announce_pcm_data._entry, section ".printk_index", align 4
@cx18_alsa_announce_pcm_data._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016cx18-alsa-pcm %s: substream was NULL\0A\00", [56 x i8] zeroinitializer }, align 32
@cx18_alsa_announce_pcm_data._entry_ptr.5 = internal global ptr @cx18_alsa_announce_pcm_data._entry.3, section ".printk_index", align 4
@cx18_alsa_announce_pcm_data._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cx18-alsa-pcm %s: runtime was NULL\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_alsa_announce_pcm_data._entry_ptr.8 = internal global ptr @cx18_alsa_announce_pcm_data._entry.6, section ".printk_index", align 4
@cx18_alsa_announce_pcm_data._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016cx18-alsa-pcm %s: stride is zero\0A\00", [60 x i8] zeroinitializer }, align 32
@cx18_alsa_announce_pcm_data._entry_ptr.11 = internal global ptr @cx18_alsa_announce_pcm_data._entry.9, section ".printk_index", align 4
@cx18_alsa_announce_pcm_data._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016cx18-alsa-pcm %s: %s: length was zero\0A\00", [55 x i8] zeroinitializer }, align 32
@cx18_alsa_announce_pcm_data._entry_ptr.14 = internal global ptr @cx18_alsa_announce_pcm_data._entry.12, section ".printk_index", align 4
@cx18_alsa_announce_pcm_data._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cx18-alsa-pcm %s: dma area was NULL - ignoring\0A\00", [46 x i8] zeroinitializer }, align 32
@cx18_alsa_announce_pcm_data._entry_ptr.17 = internal global ptr @cx18_alsa_announce_pcm_data._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CX23418 PCM\00", [20 x i8] zeroinitializer }, align 32
@snd_cx18_pcm_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s-alsa: %s: snd_cx18_pcm_create() failed with err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_cx18_pcm_create\00", [44 x i8] zeroinitializer }, align 32
@snd_cx18_pcm_create._entry_ptr = internal global ptr @snd_cx18_pcm_create._entry, section ".printk_index", align 4
@snd_cx18_pcm_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cxsc->slock\00", [19 x i8] zeroinitializer }, align 32
@snd_cx18_pcm_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cx18_pcm_capture_open, ptr @snd_cx18_pcm_capture_close, ptr null, ptr null, ptr null, ptr @snd_cx18_pcm_prepare, ptr @snd_cx18_pcm_trigger, ptr null, ptr @snd_cx18_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cx18_hw_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 501760, i32 64, i32 12544, i32 2, i32 98, i32 0 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"pcm_debug\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 27, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 68, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 73, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 79, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 85, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 91, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 96, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 248, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 254, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 259, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [25 x i8] c"snd_cx18_pcm_capture_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 232, i32 33 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"snd_cx18_hw_capture\00", align 1
@___asan_gen_.89 = private constant [42 x i8] c"../drivers/media/pci/cx18/cx18-alsa-pcm.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 37, i32 38 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_pcm_debug388, ptr @__UNIQUE_ID_pcm_debugtype387, ptr @__param_pcm_debug, ptr @cx18_alsa_announce_pcm_data._entry, ptr @cx18_alsa_announce_pcm_data._entry.12, ptr @cx18_alsa_announce_pcm_data._entry.15, ptr @cx18_alsa_announce_pcm_data._entry.3, ptr @cx18_alsa_announce_pcm_data._entry.6, ptr @cx18_alsa_announce_pcm_data._entry.9, ptr @cx18_alsa_announce_pcm_data._entry_ptr, ptr @cx18_alsa_announce_pcm_data._entry_ptr.11, ptr @cx18_alsa_announce_pcm_data._entry_ptr.14, ptr @cx18_alsa_announce_pcm_data._entry_ptr.17, ptr @cx18_alsa_announce_pcm_data._entry_ptr.5, ptr @cx18_alsa_announce_pcm_data._entry_ptr.8, ptr @snd_cx18_pcm_create._entry, ptr @snd_cx18_pcm_create._entry_ptr, ptr @pcm_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @snd_cx18_pcm_create.__key, ptr @.str.21, ptr @snd_cx18_pcm_capture_ops, ptr @snd_cx18_hw_capture], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_announce_pcm_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_announce_pcm_data._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_announce_pcm_data._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_announce_pcm_data._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_announce_pcm_data._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_announce_pcm_data._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_pcm_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_pcm_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_pcm_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_hw_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_alsa_announce_pcm_data(ptr noundef %cxsc, ptr noundef %pcm_data, i32 noundef %num_bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %cxsc, ptr noundef %pcm_data, i32 noundef %num_bytes) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %capture_pcm_substream = getelementptr inbounds %struct.snd_cx18_card, ptr %cxsc, i32 0, i32 4
  %1 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %capture_pcm_substream, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %do.body5, label %if.end16

do.body5:                                         ; preds = %do.end3
  %3 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.end10

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end16:                                         ; preds = %do.end3
  %runtime17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %4 = ptrtoint ptr %runtime17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime17, align 4
  %cmp18 = icmp eq ptr %5, null
  br i1 %cmp18, label %do.body20, label %if.end31

do.body20:                                        ; preds = %if.end16
  %6 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool21.not = icmp eq i32 %6, 0
  br i1 %tobool21.not, label %do.body20.cleanup_crit_edge, label %do.end25

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end16
  %frame_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 21
  %7 = ptrtoint ptr %frame_bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frame_bits, align 8
  %shr = lshr i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp32 = icmp ult i32 %8, 8
  br i1 %cmp32, label %do.body34, label %if.end45

do.body34:                                        ; preds = %if.end31
  %9 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool35.not = icmp eq i32 %9, 0
  br i1 %tobool35.not, label %do.body34.cleanup_crit_edge, label %do.end39

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end31
  %div = udiv i32 %num_bytes, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %num_bytes)
  %cmp46 = icmp ugt i32 %shr, %num_bytes
  br i1 %cmp46, label %do.body48, label %if.end59

do.body48:                                        ; preds = %if.end45
  %10 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool49.not = icmp eq i32 %10, 0
  br i1 %tobool49.not, label %do.body48.cleanup_crit_edge, label %do.end53

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end59:                                         ; preds = %if.end45
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %11 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_area, align 4
  %cmp60 = icmp eq ptr %12, null
  br i1 %cmp60, label %do.body62, label %if.end73

do.body62:                                        ; preds = %if.end59
  %13 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool63.not = icmp eq i32 %13, 0
  br i1 %tobool63.not, label %do.body62.cleanup_crit_edge, label %do.end67

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end67:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end73:                                         ; preds = %if.end59
  %hwptr_done_capture = getelementptr inbounds %struct.snd_cx18_card, ptr %cxsc, i32 0, i32 3
  %14 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwptr_done_capture, align 4
  %add = add i32 %15, %div
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp74.not = icmp ult i32 %add, %17
  br i1 %cmp74.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %17, %15
  %mul = mul i32 %15, %shr
  %add.ptr = getelementptr i8, ptr %12, i32 %mul
  %mul78 = mul i32 %sub, %shr
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %pcm_data, i32 %mul78)
  %19 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_area, align 4
  %add.ptr81 = getelementptr i8, ptr %pcm_data, i32 %mul78
  %mul82 = mul i32 %div, %shr
  %sub84 = sub i32 %mul82, %mul78
  %21 = call ptr @memcpy(ptr %20, ptr %add.ptr81, i32 %sub84)
  br label %if.end89

if.else:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %mul86 = mul i32 %15, %shr
  %add.ptr87 = getelementptr i8, ptr %12, i32 %mul86
  %mul88 = mul i32 %div, %shr
  %22 = call ptr @memcpy(ptr %add.ptr87, ptr %pcm_data, i32 %mul88)
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then75
  tail call void @snd_pcm_stream_lock(ptr noundef nonnull %2) #6
  %23 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwptr_done_capture, align 4
  %add91 = add i32 %24, %div
  store i32 %add91, ptr %hwptr_done_capture, align 4
  %25 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add91, i32 %26)
  %cmp94.not = icmp ult i32 %add91, %26
  br i1 %cmp94.not, label %if.end89.if.end99_crit_edge, label %if.then95

if.end89.if.end99_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then95:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %sub98 = sub i32 %add91, %26
  %27 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub98, ptr %hwptr_done_capture, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end89.if.end99_crit_edge
  %capture_transfer_done = getelementptr inbounds %struct.snd_cx18_card, ptr %cxsc, i32 0, i32 2
  %28 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %capture_transfer_done, align 4
  %add100 = add i32 %29, %div
  store i32 %add100, ptr %capture_transfer_done, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 16
  %30 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add100, i32 %31)
  %cmp102.not = icmp ult i32 %add100, %31
  br i1 %cmp102.not, label %if.end110.critedge, label %if.then103

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %sub106 = sub i32 %add100, %31
  %32 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub106, ptr %capture_transfer_done, align 4
  tail call void @snd_pcm_stream_unlock(ptr noundef nonnull %2) #6
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %2) #6
  br label %cleanup

if.end110.critedge:                               ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_stream_unlock(ptr noundef nonnull %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end110.critedge, %if.then103, %do.end67, %do.body62.cleanup_crit_edge, %do.end53, %do.body48.cleanup_crit_edge, %do.end39, %do.body34.cleanup_crit_edge, %do.end25, %do.body20.cleanup_crit_edge, %do.end10, %do.body5.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cx18_pcm_create(ptr noundef %cxsc) local_unnamed_addr #0 align 64 {
entry:
  %sp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sp) #6
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sp, align 4, !annotation !57
  %sc1 = getelementptr inbounds %struct.snd_cx18_card, ptr %cxsc, i32 0, i32 1
  %1 = ptrtoint ptr %sc1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc1, align 4
  %3 = ptrtoint ptr %cxsc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cxsc, align 4
  %call3 = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %sp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull @.str.20, i32 noundef %call3) #9
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slock = getelementptr inbounds %struct.snd_cx18_card, ptr %cxsc, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.21, ptr noundef nonnull @snd_cx18_pcm_create.__key, i16 noundef signext 3) #6
  %5 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sp, align 4
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @snd_cx18_pcm_capture_ops) #6
  %7 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sp, align 4
  %call9 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %8, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %9 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sp, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 11
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cxsc, ptr %private_data, align 8
  %name10 = getelementptr inbounds %struct.snd_pcm, ptr %10, i32 0, i32 7
  %card_name = getelementptr i8, ptr %4, i32 140
  %13 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card_name, align 4
  %call12 = call i32 @strscpy(ptr noundef %name10, ptr noundef %14, i32 noundef 80) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sp) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx18_pcm_capture_open(ptr noundef %substream) #0 align 64 {
entry:
  %item = alloca %struct.cx18_open_id, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -8
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %item) #6
  %6 = call ptr @memset(ptr %item, i32 255, i32 192)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %serialize_lock.i = getelementptr i8, ptr %8, i32 1136
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock.i, i32 noundef 0) #6
  %arrayidx = getelementptr i8, ptr %5, i32 10320
  %cx3 = getelementptr inbounds %struct.cx18_open_id, ptr %item, i32 0, i32 3
  %9 = ptrtoint ptr %cx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %cx3, align 4
  %type = getelementptr i8, ptr %5, i32 11684
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %type4 = getelementptr inbounds %struct.cx18_open_id, ptr %item, i32 0, i32 2
  %12 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type4, align 4
  %open_id = getelementptr i8, ptr %5, i32 17088
  %13 = ptrtoint ptr %open_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %open_id, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %open_id, align 8
  %open_id5 = getelementptr inbounds %struct.cx18_open_id, ptr %item, i32 0, i32 1
  %15 = ptrtoint ptr %open_id5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %open_id5, align 4
  %16 = load i32, ptr %type4, align 4
  %call7 = call i32 @cx18_claim_stream(ptr noundef nonnull %item, i32 noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_flags = getelementptr i8, ptr %5, i32 11704
  %17 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %s_flags, align 4
  %19 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call11 = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %s_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %20 = call ptr @memcpy(ptr %hw, ptr @snd_cx18_hw_capture, i32 64)
  %call15 = call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #6
  %capture_pcm_substream = getelementptr inbounds %struct.snd_cx18_card, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %substream, ptr %capture_pcm_substream, align 4
  %private_data16 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %22 = ptrtoint ptr %private_data16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %private_data16, align 8
  %pcm_announce_callback = getelementptr i8, ptr %5, i32 17068
  %23 = ptrtoint ptr %pcm_announce_callback to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cx18_alsa_announce_pcm_data, ptr %pcm_announce_callback, align 4
  call void @_set_bit(i32 noundef 4, ptr noundef %s_flags) #6
  %call18 = call i32 @cx18_start_v4l2_encode_stream(ptr noundef %arrayidx) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end14 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %serialize_lock.i44 = getelementptr i8, ptr %25, i32 1136
  call void @mutex_unlock(ptr noundef %serialize_lock.i44) #6
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %item) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx18_pcm_capture_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %serialize_lock.i = getelementptr i8, ptr %3, i32 1136
  tail call void @mutex_lock_nested(ptr noundef %serialize_lock.i, i32 noundef 0) #6
  %arrayidx = getelementptr i8, ptr %3, i32 10320
  %call2 = tail call i32 @cx18_stop_v4l2_encode_stream(ptr noundef %arrayidx, i32 noundef 0) #6
  %s_flags = getelementptr i8, ptr %3, i32 11704
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %s_flags) #6
  tail call void @cx18_release_stream(ptr noundef %arrayidx) #6
  %pcm_announce_callback = getelementptr i8, ptr %3, i32 17068
  %4 = ptrtoint ptr %pcm_announce_callback to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pcm_announce_callback, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %serialize_lock.i8 = getelementptr i8, ptr %6, i32 1136
  tail call void @mutex_unlock(ptr noundef %serialize_lock.i8) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cx18_pcm_prepare(ptr nocapture noundef readonly %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hwptr_done_capture = getelementptr inbounds %struct.snd_cx18_card, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hwptr_done_capture, align 4
  %capture_transfer_done = getelementptr inbounds %struct.snd_cx18_card, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %capture_transfer_done, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cx18_pcm_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx18_pcm_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %slock = getelementptr inbounds %struct.snd_cx18_card, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #6
  %hwptr_done_capture = getelementptr inbounds %struct.snd_cx18_card, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwptr_done_capture, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_claim_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_start_v4l2_encode_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_stop_v4l2_encode_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_release_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__param_pcm_debug, !1, !"__param_pcm_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_pcm_debugtype387, !1, !"__UNIQUE_ID_pcm_debugtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pcm_debug388, !4, !"__UNIQUE_ID_pcm_debug388", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 29, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 68, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx18_alsa_announce_pcm_data._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cx18_alsa_announce_pcm_data._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 73, i32 3}
!13 = !{ptr @cx18_alsa_announce_pcm_data._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @cx18_alsa_announce_pcm_data._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 79, i32 3}
!17 = !{ptr @cx18_alsa_announce_pcm_data._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cx18_alsa_announce_pcm_data._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 85, i32 3}
!21 = !{ptr @cx18_alsa_announce_pcm_data._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cx18_alsa_announce_pcm_data._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 91, i32 3}
!25 = !{ptr @cx18_alsa_announce_pcm_data._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cx18_alsa_announce_pcm_data._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 96, i32 3}
!29 = !{ptr @cx18_alsa_announce_pcm_data._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cx18_alsa_announce_pcm_data._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 248, i32 24}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 254, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_cx18_pcm_create._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @snd_cx18_pcm_create._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @snd_cx18_pcm_create.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 259, i32 2}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pcm_debug, !42, !"pcm_debug", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 27, i32 21}
!43 = !{ptr @__param_str_pcm_debug, !1, !"__param_str_pcm_debug", i1 false, i1 false}
!44 = !{ptr @snd_cx18_pcm_capture_ops, !45, !"snd_cx18_pcm_capture_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 232, i32 33}
!46 = !{ptr @snd_cx18_hw_capture, !47, !"snd_cx18_hw_capture", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx18/cx18-alsa-pcm.c", i32 37, i32 38}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
