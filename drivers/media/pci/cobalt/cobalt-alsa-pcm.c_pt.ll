; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-alsa-pcm.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-alsa-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_cobalt_card = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, ptr }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
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
%struct.v4l2_dv_timings = type { i32, %union.anon.91 }
%union.anon.91 = type { [32 x i32] }
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
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.98, i32 }
%union.anon.98 = type { i32 }

@__param_str_pcm_debug = internal constant [17 x i8] c"cobalt.pcm_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pcm_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pcm_debug = internal constant %struct.kernel_param { ptr @__param_str_pcm_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @pcm_debug } }, section "__param", align 4
@__UNIQUE_ID_pcm_debugtype302 = internal constant [30 x i8] c"cobalt.parmtype=pcm_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_debug303 = internal constant [52 x i8] c"cobalt.parm=pcm_debug:enable debug messages for pcm\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cobalt PCM-In HDMI\00", [45 x i8] zeroinitializer }, align 32
@snd_cobalt_pcm_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: snd_cobalt_pcm_create() failed for input with err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_cobalt_pcm_create\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/cobalt/cobalt-alsa-pcm.c\00", [53 x i8] zeroinitializer }, align 32
@snd_cobalt_pcm_create._entry_ptr = internal global ptr @snd_cobalt_pcm_create._entry, section ".printk_index", align 4
@snd_cobalt_pcm_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cobalt_pcm_capture_open, ptr @snd_cobalt_pcm_capture_close, ptr null, ptr null, ptr null, ptr @snd_cobalt_pcm_prepare, ptr @snd_cobalt_pcm_trigger, ptr null, ptr @snd_cobalt_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cobalt\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cobalt PCM-Out HDMI\00", [44 x i8] zeroinitializer }, align 32
@snd_cobalt_pcm_create._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: snd_cobalt_pcm_create() failed for output with err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_cobalt_pcm_create._entry_ptr.8 = internal global ptr @snd_cobalt_pcm_create._entry.6, section ".printk_index", align 4
@snd_cobalt_pcm_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cobalt_pcm_playback_open, ptr @snd_cobalt_pcm_playback_close, ptr null, ptr null, ptr null, ptr @snd_cobalt_pcm_pb_prepare, ptr @snd_cobalt_pcm_pb_trigger, ptr null, ptr @snd_cobalt_pcm_pb_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cobalt_hdmi_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 1028, i32 128, i32 48000, i32 48000, i32 1, i32 8, i32 30720, i32 1920, i32 7680, i32 1, i32 4, i32 0 }, [32 x i8] zeroinitializer }, align 32
@alsa_fnc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016alsa: \00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"alsa_fnc\00", [23 x i8] zeroinitializer }, align 32
@alsa_fnc._entry_ptr = internal global ptr @alsa_fnc._entry, section ".printk_index", align 4
@alsa_fnc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c \00", [28 x i8] zeroinitializer }, align 32
@alsa_fnc._entry_ptr.13 = internal global ptr @alsa_fnc._entry.11, section ".printk_index", align 4
@alsa_fnc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%02x\00", [25 x i8] zeroinitializer }, align 32
@alsa_fnc._entry_ptr.16 = internal global ptr @alsa_fnc._entry.14, section ".printk_index", align 4
@alsa_fnc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@alsa_fnc._entry_ptr.19 = internal global ptr @alsa_fnc._entry.17, section ".printk_index", align 4
@cobalt_alsa_announce_pcm_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016cobalt-alsa-pcm %s: cobalt alsa announce ptr=%p data=%p num_bytes=%zd\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cobalt_alsa_announce_pcm_data\00", [34 x i8] zeroinitializer }, align 32
@cobalt_alsa_announce_pcm_data._entry_ptr = internal global ptr @cobalt_alsa_announce_pcm_data._entry, section ".printk_index", align 4
@cobalt_alsa_announce_pcm_data._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cobalt-alsa-pcm %s: substream was NULL\0A\00", [54 x i8] zeroinitializer }, align 32
@cobalt_alsa_announce_pcm_data._entry_ptr.24 = internal global ptr @cobalt_alsa_announce_pcm_data._entry.22, section ".printk_index", align 4
@cobalt_alsa_announce_pcm_data._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016cobalt-alsa-pcm %s: runtime was NULL\0A\00", [56 x i8] zeroinitializer }, align 32
@cobalt_alsa_announce_pcm_data._entry_ptr.27 = internal global ptr @cobalt_alsa_announce_pcm_data._entry.25, section ".printk_index", align 4
@cobalt_alsa_announce_pcm_data._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cobalt-alsa-pcm %s: stride is zero\0A\00", [58 x i8] zeroinitializer }, align 32
@cobalt_alsa_announce_pcm_data._entry_ptr.30 = internal global ptr @cobalt_alsa_announce_pcm_data._entry.28, section ".printk_index", align 4
@cobalt_alsa_announce_pcm_data._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cobalt-alsa-pcm %s: %s: length was zero\0A\00", [53 x i8] zeroinitializer }, align 32
@cobalt_alsa_announce_pcm_data._entry_ptr.33 = internal global ptr @cobalt_alsa_announce_pcm_data._entry.31, section ".printk_index", align 4
@cobalt_alsa_announce_pcm_data._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.3, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016cobalt-alsa-pcm %s: dma area was NULL - ignoring\0A\00", [44 x i8] zeroinitializer }, align 32
@cobalt_alsa_announce_pcm_data._entry_ptr.36 = internal global ptr @cobalt_alsa_announce_pcm_data._entry.34, section ".printk_index", align 4
@sample_cpy.map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 5, i32 4, i32 2, i32 3, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@snd_cobalt_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 1028, i32 128, i32 48000, i32 48000, i32 1, i32 8, i32 30720, i32 1920, i32 7680, i32 1, i32 4, i32 0 }, [32 x i8] zeroinitializer }, align 32
@cobalt_alsa_pb_pcm_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016cobalt-alsa-pcm %s: cobalt alsa pb ptr=%p data=%p samples=%zd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cobalt_alsa_pb_pcm_data\00", [40 x i8] zeroinitializer }, align 32
@cobalt_alsa_pb_pcm_data._entry_ptr = internal global ptr @cobalt_alsa_pb_pcm_data._entry, section ".printk_index", align 4
@cobalt_alsa_pb_pcm_data._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.38, ptr @.str.3, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cobalt_alsa_pb_pcm_data._entry_ptr.40 = internal global ptr @cobalt_alsa_pb_pcm_data._entry.39, section ".printk_index", align 4
@cobalt_alsa_pb_pcm_data._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.38, ptr @.str.3, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cobalt_alsa_pb_pcm_data._entry_ptr.42 = internal global ptr @cobalt_alsa_pb_pcm_data._entry.41, section ".printk_index", align 4
@cobalt_alsa_pb_pcm_data._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.38, ptr @.str.3, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cobalt_alsa_pb_pcm_data._entry_ptr.44 = internal global ptr @cobalt_alsa_pb_pcm_data._entry.43, section ".printk_index", align 4
@cobalt_alsa_pb_pcm_data._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.3, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cobalt-alsa-pcm %s: %s: samples was zero\0A\00", [52 x i8] zeroinitializer }, align 32
@cobalt_alsa_pb_pcm_data._entry_ptr.47 = internal global ptr @cobalt_alsa_pb_pcm_data._entry.45, section ".printk_index", align 4
@cobalt_alsa_pb_pcm_data._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.38, ptr @.str.3, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cobalt_alsa_pb_pcm_data._entry_ptr.49 = internal global ptr @cobalt_alsa_pb_pcm_data._entry.48, section ".printk_index", align 4
@pb_sample_cpy.map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 5, i32 4, i32 2, i32 3, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"pcm_debug\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 23, i32 21 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 480, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 486, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"snd_cobalt_pcm_capture_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 444, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 497, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 506, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 512, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"snd_cobalt_pcm_playback_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 452, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"snd_cobalt_hdmi_capture\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 33, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 191, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 194, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 195, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 197, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 110, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 115, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 121, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 128, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 133, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 138, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 77, i32 24 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"snd_cobalt_playback\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 54, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 309, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 314, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 320, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 327, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 332, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 337, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.189 = private constant [46 x i8] c"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 275, i32 24 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_pcm_debug303, ptr @__UNIQUE_ID_pcm_debugtype302, ptr @__param_pcm_debug, ptr @alsa_fnc._entry, ptr @alsa_fnc._entry.11, ptr @alsa_fnc._entry.14, ptr @alsa_fnc._entry.17, ptr @alsa_fnc._entry_ptr, ptr @alsa_fnc._entry_ptr.13, ptr @alsa_fnc._entry_ptr.16, ptr @alsa_fnc._entry_ptr.19, ptr @cobalt_alsa_announce_pcm_data._entry, ptr @cobalt_alsa_announce_pcm_data._entry.22, ptr @cobalt_alsa_announce_pcm_data._entry.25, ptr @cobalt_alsa_announce_pcm_data._entry.28, ptr @cobalt_alsa_announce_pcm_data._entry.31, ptr @cobalt_alsa_announce_pcm_data._entry.34, ptr @cobalt_alsa_announce_pcm_data._entry_ptr, ptr @cobalt_alsa_announce_pcm_data._entry_ptr.24, ptr @cobalt_alsa_announce_pcm_data._entry_ptr.27, ptr @cobalt_alsa_announce_pcm_data._entry_ptr.30, ptr @cobalt_alsa_announce_pcm_data._entry_ptr.33, ptr @cobalt_alsa_announce_pcm_data._entry_ptr.36, ptr @cobalt_alsa_pb_pcm_data._entry, ptr @cobalt_alsa_pb_pcm_data._entry.39, ptr @cobalt_alsa_pb_pcm_data._entry.41, ptr @cobalt_alsa_pb_pcm_data._entry.43, ptr @cobalt_alsa_pb_pcm_data._entry.45, ptr @cobalt_alsa_pb_pcm_data._entry.48, ptr @cobalt_alsa_pb_pcm_data._entry_ptr, ptr @cobalt_alsa_pb_pcm_data._entry_ptr.40, ptr @cobalt_alsa_pb_pcm_data._entry_ptr.42, ptr @cobalt_alsa_pb_pcm_data._entry_ptr.44, ptr @cobalt_alsa_pb_pcm_data._entry_ptr.47, ptr @cobalt_alsa_pb_pcm_data._entry_ptr.49, ptr @snd_cobalt_pcm_create._entry, ptr @snd_cobalt_pcm_create._entry.6, ptr @snd_cobalt_pcm_create._entry_ptr, ptr @snd_cobalt_pcm_create._entry_ptr.8, ptr @pcm_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_cobalt_pcm_capture_ops, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @snd_cobalt_pcm_playback_ops, ptr @snd_cobalt_hdmi_capture, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @sample_cpy.map, ptr @snd_cobalt_playback, ptr @.str.37, ptr @.str.38, ptr @.str.46, ptr @pb_sample_cpy.map], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cobalt_pcm_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cobalt_pcm_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cobalt_pcm_create._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cobalt_pcm_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cobalt_hdmi_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_fnc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_fnc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_fnc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_fnc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_announce_pcm_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_announce_pcm_data._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_announce_pcm_data._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_announce_pcm_data._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_announce_pcm_data._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_announce_pcm_data._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_cpy.map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cobalt_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_pb_pcm_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_pb_pcm_data._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_pb_pcm_data._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_pb_pcm_data._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_pb_pcm_data._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_alsa_pb_pcm_data._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb_sample_cpy.map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cobalt_pcm_create(ptr noundef %cobsc) local_unnamed_addr #0 align 64 {
entry:
  %sp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sp) #8
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sp, align 4, !annotation !108
  %sc1 = getelementptr inbounds %struct.snd_cobalt_card, ptr %cobsc, i32 0, i32 1
  %1 = ptrtoint ptr %sc1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc1, align 4
  %3 = ptrtoint ptr %cobsc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cobsc, align 4
  %cobalt3 = getelementptr inbounds %struct.cobalt_stream, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %cobalt3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cobalt3, align 4
  %gfp_flags = getelementptr inbounds %struct.cobalt_stream, ptr %4, i32 0, i32 1, i32 14
  %7 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfp_flags, align 8
  %or = or i32 %8, 256
  store i32 %or, ptr %gfp_flags, align 8
  %is_output = getelementptr inbounds %struct.cobalt_stream, ptr %4, i32 0, i32 30
  %9 = ptrtoint ptr %is_output to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_output, align 8, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %video_channel = getelementptr inbounds %struct.cobalt_stream, ptr %4, i32 0, i32 21
  %11 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %video_channel, align 8
  %mul = shl i32 %12, 2
  %add = add i32 %mul, 7
  %pci_lock.i = getelementptr inbounds %struct.cobalt, ptr %6, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #8
  %bar1.i.i = getelementptr inbounds %struct.cobalt, ptr %6, i32 0, i32 5
  %13 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 1024
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !110
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %shl.i = shl nuw i32 1, %add
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %16, %neg.i
  %17 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %18, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %19) #8, !srcloc !113
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496000) #8
  %21 = ptrtoint ptr %video_channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %video_channel, align 8
  %mul5 = shl i32 %22, 2
  %add6 = add i32 %mul5, 7
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i, i32 noundef 0) #8
  %23 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i.i56 = getelementptr i8, ptr %24, i32 1024
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #8, !srcloc !110
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %shl.i57 = shl nuw i32 1, %add6
  %or.i = or i32 %26, %shl.i57
  %27 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bar1.i.i, align 8
  %add.ptr.i8.i60 = getelementptr i8, ptr %28, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i60, i32 %29) #8, !srcloc !113
  tail call void @mutex_unlock(ptr noundef %pci_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #8
  %call = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %sp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cobalt, ptr %6, i32 0, i32 2, i32 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sp, align 4
  call void @snd_pcm_set_ops(ptr noundef %32, i32 noundef 1, ptr noundef nonnull @snd_cobalt_pcm_capture_ops) #8
  %33 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sp, align 4
  %call10 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %34, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %35 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sp, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 11
  %38 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cobsc, ptr %private_data, align 8
  %name11 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 7
  %call13 = call i32 @strscpy(ptr noundef %name11, ptr noundef nonnull @.str.4, i32 noundef 80) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %pci_lock.i61 = getelementptr inbounds %struct.cobalt, ptr %6, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i61, i32 noundef 0) #8
  %bar1.i.i62 = getelementptr inbounds %struct.cobalt, ptr %6, i32 0, i32 5
  %39 = ptrtoint ptr %bar1.i.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bar1.i.i62, align 8
  %add.ptr.i.i63 = getelementptr i8, ptr %40, i32 1024
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i63) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %42 = and i32 %41, -9
  %43 = ptrtoint ptr %bar1.i.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bar1.i.i62, align 8
  %add.ptr.i8.i65 = getelementptr i8, ptr %44, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i65, i32 %42) #8, !srcloc !113
  tail call void @mutex_unlock(ptr noundef %pci_lock.i61) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 429496000) #8
  tail call void @mutex_lock_nested(ptr noundef %pci_lock.i61, i32 noundef 0) #8
  %46 = ptrtoint ptr %bar1.i.i62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bar1.i.i62, align 8
  %add.ptr.i.i68 = getelementptr i8, ptr %47, i32 1024
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %49 = or i32 %48, 8
  %50 = ptrtoint ptr %bar1.i.i62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bar1.i.i62, align 8
  %add.ptr.i8.i71 = getelementptr i8, ptr %51, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i71, i32 %49) #8, !srcloc !113
  tail call void @mutex_unlock(ptr noundef %pci_lock.i61) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #8
  %call14 = call i32 @snd_pcm_new(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %sp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end25, label %do.end19

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %name22 = getelementptr inbounds %struct.cobalt, ptr %6, i32 0, i32 2, i32 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name22, i32 noundef %call14) #11
  br label %cleanup

if.end25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sp, align 4
  call void @snd_pcm_set_ops(ptr noundef %54, i32 noundef 0, ptr noundef nonnull @snd_cobalt_pcm_playback_ops) #8
  %55 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sp, align 4
  %call26 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %56, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %57 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sp, align 4
  %info_flags27 = getelementptr inbounds %struct.snd_pcm, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %info_flags27 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %info_flags27, align 8
  %private_data28 = getelementptr inbounds %struct.snd_pcm, ptr %58, i32 0, i32 11
  %60 = ptrtoint ptr %private_data28 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cobsc, ptr %private_data28, align 8
  %name29 = getelementptr inbounds %struct.snd_pcm, ptr %58, i32 0, i32 7
  %call31 = call i32 @strscpy(ptr noundef %name29, ptr noundef nonnull @.str.4, i32 noundef 80) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end19, %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 0, %if.end ], [ %call14, %do.end19 ], [ %call, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sp) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cobalt_pcm_capture_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_cobalt_hdmi_capture, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #8
  %capture_pcm_substream = getelementptr inbounds %struct.snd_cobalt_card, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %capture_pcm_substream, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %private_data3, align 8
  %alsa_record_cnt = getelementptr inbounds %struct.snd_cobalt_card, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %alsa_record_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alsa_record_cnt, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %alsa_record_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %entry.cleanup9_crit_edge

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.then:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.cobalt_stream, ptr %5, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %call5 = tail call i32 @vb2_thread_start(ptr noundef %q, ptr noundef nonnull @alsa_fnc, ptr noundef %5, ptr noundef %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.cleanup9_crit_edge, label %if.then6

if.then.cleanup9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %alsa_record_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alsa_record_cnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %alsa_record_cnt, align 4
  br label %cleanup9

cleanup9:                                         ; preds = %if.then6, %if.then.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ %call5, %if.then6 ], [ 0, %entry.cleanup9_crit_edge ], [ 0, %if.then.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cobalt_pcm_capture_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %alsa_record_cnt = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %alsa_record_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alsa_record_cnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %alsa_record_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %q = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 1
  %call = tail call i32 @vb2_thread_stop(ptr noundef %q) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cobalt_pcm_prepare(ptr nocapture noundef readonly %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hwptr_done_capture = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hwptr_done_capture, align 4
  %capture_transfer_done = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %capture_transfer_done, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cobalt_pcm_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %switch = icmp ult i32 %cmd, 2
  %. = select i1 %switch, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cobalt_pcm_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hwptr_done_capture = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwptr_done_capture, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_thread_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_fnc(ptr noundef %vb, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %0 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %do.end

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %for.body

for.body:                                         ; preds = %do.end11.for.body_crit_edge, %do.end
  %i.029 = phi i32 [ 0, %do.end ], [ %inc, %do.end11.for.body_crit_edge ]
  %and = and i32 %i.029, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end6, label %for.body.do.end11_crit_edge

for.body.do.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

do.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %do.end11

do.end11:                                         ; preds = %do.end6, %for.body.do.end11_crit_edge
  %arrayidx = getelementptr i8, ptr %call, i32 %i.029
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv) #11
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.end16, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end16:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %entry.if.end19_crit_edge
  %alsa = getelementptr inbounds %struct.cobalt_stream, ptr %priv, i32 0, i32 34
  %3 = ptrtoint ptr %alsa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alsa, align 8
  %call20 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %5 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %if.end19.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end19.vb2_get_plane_payload.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %7 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end19.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ 0, %if.end19.vb2_get_plane_payload.exit_crit_edge ]
  %div27 = lshr i32 %retval.0.i, 5
  %9 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %vb2_get_plane_payload.exit.do.end3.i_crit_edge, label %do.end.i

vb2_get_plane_payload.exit.do.end3.i_crit_edge:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %4, ptr noundef %call20, i32 noundef %div27) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %vb2_get_plane_payload.exit.do.end3.i_crit_edge
  %capture_pcm_substream.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %4, i32 0, i32 5
  %10 = ptrtoint ptr %capture_pcm_substream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capture_pcm_substream.i, align 4
  %cmp.i = icmp eq ptr %11, null
  br i1 %cmp.i, label %do.body5.i, label %if.end16.i

do.body5.i:                                       ; preds = %do.end3.i
  %12 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.i = icmp eq i32 %12, 0
  br i1 %tobool6.not.i, label %do.body5.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, label %do.end10.i

do.body5.i.cobalt_alsa_announce_pcm_data.exit_crit_edge: ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cobalt_alsa_announce_pcm_data.exit

do.end10.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #11
  br label %cobalt_alsa_announce_pcm_data.exit

if.end16.i:                                       ; preds = %do.end3.i
  %runtime17.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %11, i32 0, i32 11
  %13 = ptrtoint ptr %runtime17.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime17.i, align 4
  %cmp18.i = icmp eq ptr %14, null
  br i1 %cmp18.i, label %do.body20.i, label %if.end31.i

do.body20.i:                                      ; preds = %if.end16.i
  %15 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not.i = icmp eq i32 %15, 0
  br i1 %tobool21.not.i, label %do.body20.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, label %do.end25.i

do.body20.i.cobalt_alsa_announce_pcm_data.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cobalt_alsa_announce_pcm_data.exit

do.end25.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21) #11
  br label %cobalt_alsa_announce_pcm_data.exit

if.end31.i:                                       ; preds = %if.end16.i
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 12
  %16 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp32.i = icmp eq i32 %17, 10
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i, align 8
  %shr.i = lshr i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp33.i = icmp ult i32 %19, 8
  br i1 %cmp33.i, label %do.body35.i, label %if.end46.i

do.body35.i:                                      ; preds = %if.end31.i
  %20 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool36.not.i = icmp eq i32 %20, 0
  br i1 %tobool36.not.i, label %do.body35.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, label %do.end40.i

do.body35.i.cobalt_alsa_announce_pcm_data.exit_crit_edge: ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cobalt_alsa_announce_pcm_data.exit

do.end40.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21) #11
  br label %cobalt_alsa_announce_pcm_data.exit

if.end46.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %retval.0.i)
  %cmp47.i = icmp ult i32 %retval.0.i, 32
  br i1 %cmp47.i, label %do.body49.i, label %if.end60.i

do.body49.i:                                      ; preds = %if.end46.i
  %21 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool50.not.i = icmp eq i32 %21, 0
  br i1 %tobool50.not.i, label %do.body49.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, label %do.end54.i

do.body49.i.cobalt_alsa_announce_pcm_data.exit_crit_edge: ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cobalt_alsa_announce_pcm_data.exit

do.end54.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.21) #11
  br label %cobalt_alsa_announce_pcm_data.exit

if.end60.i:                                       ; preds = %if.end46.i
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 50
  %22 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_area.i, align 4
  %cmp61.i = icmp eq ptr %23, null
  br i1 %cmp61.i, label %do.body63.i, label %if.end74.i

do.body63.i:                                      ; preds = %if.end60.i
  %24 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool64.not.i = icmp eq i32 %24, 0
  br i1 %tobool64.not.i, label %do.body63.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, label %do.end68.i

do.body63.i.cobalt_alsa_announce_pcm_data.exit_crit_edge: ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cobalt_alsa_announce_pcm_data.exit

do.end68.i:                                       ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.21) #11
  br label %cobalt_alsa_announce_pcm_data.exit

if.end74.i:                                       ; preds = %if.end60.i
  %hwptr_done_capture.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %hwptr_done_capture.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwptr_done_capture.i, align 4
  %add.i = add i32 %26, %div27
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 18
  %27 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %28)
  %cmp75.not.i = icmp ult i32 %add.i, %28
  br i1 %cmp75.not.i, label %for.body100.preheader.i, label %if.then76.i

for.body100.preheader.i:                          ; preds = %if.end74.i
  %cond.i26.i = select i1 %cmp32.i, i32 4, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i26.i, i32 %shr.i)
  %cmp.not37.i27.i = icmp ugt i32 %cond.i26.i, %shr.i
  br label %for.body100.i

if.then76.i:                                      ; preds = %if.end74.i
  %sub.i = sub i32 %28, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp7852.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp7852.not.i, label %if.then76.i.for.cond84.preheader.i_crit_edge, label %for.body.lr.ph.i

if.then76.i.for.cond84.preheader.i_crit_edge:     ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond84.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.then76.i
  %cond.i.i = select i1 %cmp32.i, i32 4, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %shr.i)
  %cmp.not37.i.i = icmp ugt i32 %cond.i.i, %shr.i
  br label %for.body.i

for.cond84.preheader.i:                           ; preds = %sample_cpy.exit.i.for.cond84.preheader.i_crit_edge, %if.then76.i.for.cond84.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div27)
  %cmp8554.i = icmp ult i32 %sub.i, %div27
  br i1 %cmp8554.i, label %for.body86.lr.ph.i, label %for.cond84.preheader.i.do.body112.i_crit_edge

for.cond84.preheader.i.do.body112.i_crit_edge:    ; preds = %for.cond84.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112.i

for.body86.lr.ph.i:                               ; preds = %for.cond84.preheader.i
  %cond.i1.i = select i1 %cmp32.i, i32 4, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i1.i, i32 %shr.i)
  %cmp.not37.i2.i = icmp ugt i32 %cond.i1.i, %shr.i
  br label %for.body86.i

for.body.i:                                       ; preds = %sample_cpy.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %sample_cpy.exit.i.for.body.i_crit_edge ]
  %mul81.i = shl i32 %i.053.i, 5
  %add.ptr82.i = getelementptr i8, ptr %call20, i32 %mul81.i
  br i1 %cmp.not37.i.i, label %for.body.i.sample_cpy.exit.i_crit_edge, label %while.body.i.preheader.i

for.body.i.sample_cpy.exit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_cpy.exit.i

while.body.i.preheader.i:                         ; preds = %for.body.i
  %29 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_area.i, align 4
  %add80.i = add i32 %i.053.i, %26
  %mul.i = mul i32 %add80.i, %shr.i
  %add.ptr.i = getelementptr i8, ptr %30, i32 %mul.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %dst.addr.040.i.i = phi ptr [ %incdec.ptr20.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i, %while.body.i.preheader.i ]
  %idx.039.i.i = phi i32 [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.preheader.i ]
  %len.addr.038.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %shr.i, %while.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr [8 x i32], ptr @sample_cpy.map, i32 0, i32 %idx.039.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i32 %32, 2
  %add2.i.i = or i32 %mul.i.i, 2
  %arrayidx3.i.i = getelementptr i8, ptr %add.ptr82.i, i32 %add2.i.i
  %33 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx3.i.i, align 1
  %add6.i.i = or i32 %mul.i.i, 3
  %arrayidx7.i.i = getelementptr i8, ptr %add.ptr82.i, i32 %add6.i.i
  %35 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx7.i.i, align 1
  br i1 %cmp32.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = or i32 %mul.i.i, 1
  %arrayidx1.i.i = getelementptr i8, ptr %add.ptr82.i, i32 %add.i.i
  %37 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx1.i.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %dst.addr.040.i.i, i32 1
  %39 = ptrtoint ptr %dst.addr.040.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %dst.addr.040.i.i, align 1
  %incdec.ptr13.i.i = getelementptr i8, ptr %dst.addr.040.i.i, i32 2
  %40 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %incdec.ptr.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %dst.addr.1.i.i = phi ptr [ %incdec.ptr13.i.i, %if.then.i.i ], [ %dst.addr.040.i.i, %while.body.i.i.if.end.i.i_crit_edge ]
  %incdec.ptr16.i.i = getelementptr i8, ptr %dst.addr.1.i.i, i32 1
  %41 = ptrtoint ptr %dst.addr.1.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %34, ptr %dst.addr.1.i.i, align 1
  %incdec.ptr20.i.i = getelementptr i8, ptr %dst.addr.1.i.i, i32 2
  %42 = ptrtoint ptr %incdec.ptr16.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %36, ptr %incdec.ptr16.i.i, align 1
  %sub.i.i = sub i32 %len.addr.038.i.i, %cond.i.i
  %inc.i.i = add i32 %idx.039.i.i, 1
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %cond.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.sample_cpy.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.sample_cpy.exit.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_cpy.exit.i

sample_cpy.exit.i:                                ; preds = %if.end.i.i.sample_cpy.exit.i_crit_edge, %for.body.i.sample_cpy.exit.i_crit_edge
  %inc.i = add nuw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %sample_cpy.exit.i.for.cond84.preheader.i_crit_edge, label %sample_cpy.exit.i.for.body.i_crit_edge

sample_cpy.exit.i.for.body.i_crit_edge:           ; preds = %sample_cpy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

sample_cpy.exit.i.for.cond84.preheader.i_crit_edge: ; preds = %sample_cpy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond84.preheader.i

for.body86.i:                                     ; preds = %sample_cpy.exit25.i.for.body86.i_crit_edge, %for.body86.lr.ph.i
  %i.155.i = phi i32 [ %sub.i, %for.body86.lr.ph.i ], [ %inc95.i, %sample_cpy.exit25.i.for.body86.i_crit_edge ]
  %mul91.i = shl i32 %i.155.i, 5
  %add.ptr92.i = getelementptr i8, ptr %call20, i32 %mul91.i
  br i1 %cmp.not37.i2.i, label %for.body86.i.sample_cpy.exit25.i_crit_edge, label %while.body.i12.preheader.i

for.body86.i.sample_cpy.exit25.i_crit_edge:       ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_cpy.exit25.i

while.body.i12.preheader.i:                       ; preds = %for.body86.i
  %43 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_area.i, align 4
  %sub88.i = sub nuw i32 %i.155.i, %sub.i
  %mul89.i = mul i32 %sub88.i, %shr.i
  %add.ptr90.i = getelementptr i8, ptr %44, i32 %mul89.i
  br label %while.body.i12.i

while.body.i12.i:                                 ; preds = %if.end.i24.i.while.body.i12.i_crit_edge, %while.body.i12.preheader.i
  %dst.addr.040.i3.i = phi ptr [ %incdec.ptr20.i20.i, %if.end.i24.i.while.body.i12.i_crit_edge ], [ %add.ptr90.i, %while.body.i12.preheader.i ]
  %idx.039.i4.i = phi i32 [ %inc.i22.i, %if.end.i24.i.while.body.i12.i_crit_edge ], [ 0, %while.body.i12.preheader.i ]
  %len.addr.038.i5.i = phi i32 [ %sub.i21.i, %if.end.i24.i.while.body.i12.i_crit_edge ], [ %shr.i, %while.body.i12.preheader.i ]
  %arrayidx.i6.i = getelementptr [8 x i32], ptr @sample_cpy.map, i32 0, i32 %idx.039.i4.i
  %45 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i6.i, align 4
  %mul.i7.i = shl i32 %46, 2
  %add2.i8.i = or i32 %mul.i7.i, 2
  %arrayidx3.i9.i = getelementptr i8, ptr %add.ptr92.i, i32 %add2.i8.i
  %47 = ptrtoint ptr %arrayidx3.i9.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx3.i9.i, align 1
  %add6.i10.i = or i32 %mul.i7.i, 3
  %arrayidx7.i11.i = getelementptr i8, ptr %add.ptr92.i, i32 %add6.i10.i
  %49 = ptrtoint ptr %arrayidx7.i11.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx7.i11.i, align 1
  br i1 %cmp32.i, label %if.then.i17.i, label %while.body.i12.i.if.end.i24.i_crit_edge

while.body.i12.i.if.end.i24.i_crit_edge:          ; preds = %while.body.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i24.i

if.then.i17.i:                                    ; preds = %while.body.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i13.i = or i32 %mul.i7.i, 1
  %arrayidx1.i14.i = getelementptr i8, ptr %add.ptr92.i, i32 %add.i13.i
  %51 = ptrtoint ptr %arrayidx1.i14.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx1.i14.i, align 1
  %incdec.ptr.i15.i = getelementptr i8, ptr %dst.addr.040.i3.i, i32 1
  %53 = ptrtoint ptr %dst.addr.040.i3.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %dst.addr.040.i3.i, align 1
  %incdec.ptr13.i16.i = getelementptr i8, ptr %dst.addr.040.i3.i, i32 2
  %54 = ptrtoint ptr %incdec.ptr.i15.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %52, ptr %incdec.ptr.i15.i, align 1
  br label %if.end.i24.i

if.end.i24.i:                                     ; preds = %if.then.i17.i, %while.body.i12.i.if.end.i24.i_crit_edge
  %dst.addr.1.i18.i = phi ptr [ %incdec.ptr13.i16.i, %if.then.i17.i ], [ %dst.addr.040.i3.i, %while.body.i12.i.if.end.i24.i_crit_edge ]
  %incdec.ptr16.i19.i = getelementptr i8, ptr %dst.addr.1.i18.i, i32 1
  %55 = ptrtoint ptr %dst.addr.1.i18.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %48, ptr %dst.addr.1.i18.i, align 1
  %incdec.ptr20.i20.i = getelementptr i8, ptr %dst.addr.1.i18.i, i32 2
  %56 = ptrtoint ptr %incdec.ptr16.i19.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %50, ptr %incdec.ptr16.i19.i, align 1
  %sub.i21.i = sub i32 %len.addr.038.i5.i, %cond.i1.i
  %inc.i22.i = add i32 %idx.039.i4.i, 1
  %cmp.not.i23.i = icmp ult i32 %sub.i21.i, %cond.i1.i
  br i1 %cmp.not.i23.i, label %if.end.i24.i.sample_cpy.exit25.i_crit_edge, label %if.end.i24.i.while.body.i12.i_crit_edge

if.end.i24.i.while.body.i12.i_crit_edge:          ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i12.i

if.end.i24.i.sample_cpy.exit25.i_crit_edge:       ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_cpy.exit25.i

sample_cpy.exit25.i:                              ; preds = %if.end.i24.i.sample_cpy.exit25.i_crit_edge, %for.body86.i.sample_cpy.exit25.i_crit_edge
  %inc95.i = add nuw i32 %i.155.i, 1
  %exitcond59.not.i = icmp eq i32 %inc95.i, %div27
  br i1 %exitcond59.not.i, label %sample_cpy.exit25.i.do.body112.i_crit_edge, label %sample_cpy.exit25.i.for.body86.i_crit_edge

sample_cpy.exit25.i.for.body86.i_crit_edge:       ; preds = %sample_cpy.exit25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body86.i

sample_cpy.exit25.i.do.body112.i_crit_edge:       ; preds = %sample_cpy.exit25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112.i

for.body100.i:                                    ; preds = %sample_cpy.exit50.i.for.body100.i_crit_edge, %for.body100.preheader.i
  %i97.057.i = phi i32 [ %inc109.i, %sample_cpy.exit50.i.for.body100.i_crit_edge ], [ 0, %for.body100.preheader.i ]
  %mul105.i = shl i32 %i97.057.i, 5
  %add.ptr106.i = getelementptr i8, ptr %call20, i32 %mul105.i
  br i1 %cmp.not37.i27.i, label %for.body100.i.sample_cpy.exit50.i_crit_edge, label %while.body.i37.preheader.i

for.body100.i.sample_cpy.exit50.i_crit_edge:      ; preds = %for.body100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_cpy.exit50.i

while.body.i37.preheader.i:                       ; preds = %for.body100.i
  %57 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_area.i, align 4
  %add102.i = add i32 %i97.057.i, %26
  %mul103.i = mul i32 %add102.i, %shr.i
  %add.ptr104.i = getelementptr i8, ptr %58, i32 %mul103.i
  br label %while.body.i37.i

while.body.i37.i:                                 ; preds = %if.end.i49.i.while.body.i37.i_crit_edge, %while.body.i37.preheader.i
  %dst.addr.040.i28.i = phi ptr [ %incdec.ptr20.i45.i, %if.end.i49.i.while.body.i37.i_crit_edge ], [ %add.ptr104.i, %while.body.i37.preheader.i ]
  %idx.039.i29.i = phi i32 [ %inc.i47.i, %if.end.i49.i.while.body.i37.i_crit_edge ], [ 0, %while.body.i37.preheader.i ]
  %len.addr.038.i30.i = phi i32 [ %sub.i46.i, %if.end.i49.i.while.body.i37.i_crit_edge ], [ %shr.i, %while.body.i37.preheader.i ]
  %arrayidx.i31.i = getelementptr [8 x i32], ptr @sample_cpy.map, i32 0, i32 %idx.039.i29.i
  %59 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i31.i, align 4
  %mul.i32.i = shl i32 %60, 2
  %add2.i33.i = or i32 %mul.i32.i, 2
  %arrayidx3.i34.i = getelementptr i8, ptr %add.ptr106.i, i32 %add2.i33.i
  %61 = ptrtoint ptr %arrayidx3.i34.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx3.i34.i, align 1
  %add6.i35.i = or i32 %mul.i32.i, 3
  %arrayidx7.i36.i = getelementptr i8, ptr %add.ptr106.i, i32 %add6.i35.i
  %63 = ptrtoint ptr %arrayidx7.i36.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx7.i36.i, align 1
  br i1 %cmp32.i, label %if.then.i42.i, label %while.body.i37.i.if.end.i49.i_crit_edge

while.body.i37.i.if.end.i49.i_crit_edge:          ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i49.i

if.then.i42.i:                                    ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i38.i = or i32 %mul.i32.i, 1
  %arrayidx1.i39.i = getelementptr i8, ptr %add.ptr106.i, i32 %add.i38.i
  %65 = ptrtoint ptr %arrayidx1.i39.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.i39.i, align 1
  %incdec.ptr.i40.i = getelementptr i8, ptr %dst.addr.040.i28.i, i32 1
  %67 = ptrtoint ptr %dst.addr.040.i28.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %dst.addr.040.i28.i, align 1
  %incdec.ptr13.i41.i = getelementptr i8, ptr %dst.addr.040.i28.i, i32 2
  %68 = ptrtoint ptr %incdec.ptr.i40.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %66, ptr %incdec.ptr.i40.i, align 1
  br label %if.end.i49.i

if.end.i49.i:                                     ; preds = %if.then.i42.i, %while.body.i37.i.if.end.i49.i_crit_edge
  %dst.addr.1.i43.i = phi ptr [ %incdec.ptr13.i41.i, %if.then.i42.i ], [ %dst.addr.040.i28.i, %while.body.i37.i.if.end.i49.i_crit_edge ]
  %incdec.ptr16.i44.i = getelementptr i8, ptr %dst.addr.1.i43.i, i32 1
  %69 = ptrtoint ptr %dst.addr.1.i43.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %62, ptr %dst.addr.1.i43.i, align 1
  %incdec.ptr20.i45.i = getelementptr i8, ptr %dst.addr.1.i43.i, i32 2
  %70 = ptrtoint ptr %incdec.ptr16.i44.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %64, ptr %incdec.ptr16.i44.i, align 1
  %sub.i46.i = sub i32 %len.addr.038.i30.i, %cond.i26.i
  %inc.i47.i = add i32 %idx.039.i29.i, 1
  %cmp.not.i48.i = icmp ult i32 %sub.i46.i, %cond.i26.i
  br i1 %cmp.not.i48.i, label %if.end.i49.i.sample_cpy.exit50.i_crit_edge, label %if.end.i49.i.while.body.i37.i_crit_edge

if.end.i49.i.while.body.i37.i_crit_edge:          ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i37.i

if.end.i49.i.sample_cpy.exit50.i_crit_edge:       ; preds = %if.end.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_cpy.exit50.i

sample_cpy.exit50.i:                              ; preds = %if.end.i49.i.sample_cpy.exit50.i_crit_edge, %for.body100.i.sample_cpy.exit50.i_crit_edge
  %inc109.i = add nuw nsw i32 %i97.057.i, 1
  %exitcond60.not.i = icmp eq i32 %inc109.i, %div27
  br i1 %exitcond60.not.i, label %sample_cpy.exit50.i.do.body112.i_crit_edge, label %sample_cpy.exit50.i.for.body100.i_crit_edge

sample_cpy.exit50.i.for.body100.i_crit_edge:      ; preds = %sample_cpy.exit50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body100.i

sample_cpy.exit50.i.do.body112.i_crit_edge:       ; preds = %sample_cpy.exit50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112.i

do.body112.i:                                     ; preds = %sample_cpy.exit50.i.do.body112.i_crit_edge, %sample_cpy.exit25.i.do.body112.i_crit_edge, %for.cond84.preheader.i.do.body112.i_crit_edge
  %call115.i = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef nonnull %11) #8
  %71 = ptrtoint ptr %hwptr_done_capture.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hwptr_done_capture.i, align 4
  %add119.i = add i32 %72, %div27
  store i32 %add119.i, ptr %hwptr_done_capture.i, align 4
  %73 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add119.i, i32 %74)
  %cmp122.not.i = icmp ult i32 %add119.i, %74
  br i1 %cmp122.not.i, label %do.body112.i.if.end128.i_crit_edge, label %if.then124.i

do.body112.i.if.end128.i_crit_edge:               ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.then124.i:                                     ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub127.i = sub i32 %add119.i, %74
  %75 = ptrtoint ptr %hwptr_done_capture.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub127.i, ptr %hwptr_done_capture.i, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then124.i, %do.body112.i.if.end128.i_crit_edge
  %capture_transfer_done.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %4, i32 0, i32 2
  %76 = ptrtoint ptr %capture_transfer_done.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %capture_transfer_done.i, align 4
  %add129.i = add i32 %77, %div27
  store i32 %add129.i, ptr %capture_transfer_done.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 16
  %78 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %79)
  %cmp131.not.i = icmp ult i32 %add129.i, %79
  br i1 %cmp131.not.i, label %if.end140.critedge.i, label %if.then133.i

if.then133.i:                                     ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub136.i = sub i32 %add129.i, %79
  %80 = ptrtoint ptr %capture_transfer_done.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub136.i, ptr %capture_transfer_done.i, align 4
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %call115.i) #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %11) #8
  br label %cobalt_alsa_announce_pcm_data.exit

if.end140.critedge.i:                             ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %call115.i) #8
  br label %cobalt_alsa_announce_pcm_data.exit

cobalt_alsa_announce_pcm_data.exit:               ; preds = %if.end140.critedge.i, %if.then133.i, %do.end68.i, %do.body63.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, %do.end54.i, %do.body49.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, %do.end40.i, %do.body35.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, %do.end25.i, %do.body20.i.cobalt_alsa_announce_pcm_data.exit_crit_edge, %do.end10.i, %do.body5.i.cobalt_alsa_announce_pcm_data.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_pcm_stream_lock_irqsave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_thread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cobalt_pcm_playback_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_cobalt_playback, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #8
  %playback_pcm_substream = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %playback_pcm_substream to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %playback_pcm_substream, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %private_data3, align 8
  %alsa_playback_cnt = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %alsa_playback_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alsa_playback_cnt, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %alsa_playback_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %entry.cleanup9_crit_edge

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.then:                                          ; preds = %entry
  %q = getelementptr inbounds %struct.cobalt_stream, ptr %5, i32 0, i32 1
  %name = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %call5 = tail call i32 @vb2_thread_start(ptr noundef %q, ptr noundef nonnull @alsa_pb_fnc, ptr noundef %5, ptr noundef %name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.cleanup9_crit_edge, label %if.then6

if.then.cleanup9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %alsa_playback_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alsa_playback_cnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %alsa_playback_cnt, align 4
  br label %cleanup9

cleanup9:                                         ; preds = %if.then6, %if.then.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ %call5, %if.then6 ], [ 0, %entry.cleanup9_crit_edge ], [ 0, %if.then.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cobalt_pcm_playback_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %alsa_playback_cnt = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %alsa_playback_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alsa_playback_cnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %alsa_playback_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %q = getelementptr inbounds %struct.cobalt_stream, ptr %3, i32 0, i32 1
  %call = tail call i32 @vb2_thread_stop(ptr noundef %q) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cobalt_pcm_pb_prepare(ptr nocapture noundef readonly %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %pb_size = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %pb_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %pb_size, align 4
  %9 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i7 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i7, align 8
  %mul.i.i8 = mul i32 %13, %11
  %div1.i.i9 = lshr i32 %mul.i.i8, 3
  %pb_count = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %pb_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i9, ptr %pb_count, align 4
  %pb_pos = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %pb_pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pb_pos, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cobalt_pcm_pb_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %alsa_pb_channel = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %alsa_pb_channel to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %alsa_pb_channel, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %alsa_pb_channel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %alsa_pb_channel, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %alsa_pb_channel3 = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %alsa_pb_channel3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %alsa_pb_channel3, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %if.end ], [ -16, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cobalt_pcm_pb_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pb_pos = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pb_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pb_pos, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %3, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %7
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 4
  %rem = urem i32 %div.i, %9
  ret i32 %rem
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_pb_fnc(ptr noundef %vb, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %alsa = getelementptr inbounds %struct.cobalt_stream, ptr %priv, i32 0, i32 34
  %0 = ptrtoint ptr %alsa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alsa, align 8
  %alsa_pb_channel = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %alsa_pb_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alsa_pb_channel, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.then.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.then.vb2_get_plane_payload.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytesused.i, align 4
  %phi.bo = lshr i32 %7, 5
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.then.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.then.i ], [ 0, %if.then.vb2_get_plane_payload.exit_crit_edge ]
  %8 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %vb2_get_plane_payload.exit.do.end3.i_crit_edge, label %do.end.i

vb2_get_plane_payload.exit.do.end3.i_crit_edge:   ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %1, ptr noundef %call, i32 noundef %retval.0.i) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %vb2_get_plane_payload.exit.do.end3.i_crit_edge
  %playback_pcm_substream.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %playback_pcm_substream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %playback_pcm_substream.i, align 4
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %do.body5.i, label %if.end16.i

do.body5.i:                                       ; preds = %do.end3.i
  %11 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %do.body5.i.if.end_crit_edge, label %do.end10.i

do.body5.i.if.end_crit_edge:                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end10.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.38) #11
  br label %if.end

if.end16.i:                                       ; preds = %do.end3.i
  %runtime17.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 11
  %12 = ptrtoint ptr %runtime17.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime17.i, align 4
  %cmp18.i = icmp eq ptr %13, null
  br i1 %cmp18.i, label %do.body20.i, label %if.end31.i

do.body20.i:                                      ; preds = %if.end16.i
  %14 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not.i = icmp eq i32 %14, 0
  br i1 %tobool21.not.i, label %do.body20.i.if.end_crit_edge, label %do.end25.i

do.body20.i.if.end_crit_edge:                     ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end25.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.38) #11
  br label %if.end

if.end31.i:                                       ; preds = %if.end16.i
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 12
  %15 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %16)
  %cmp32.i = icmp eq i32 %16, 10
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 21
  %17 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_bits.i, align 8
  %shr.i = lshr i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp33.i = icmp ult i32 %18, 8
  br i1 %cmp33.i, label %do.body35.i, label %if.end46.i

do.body35.i:                                      ; preds = %if.end31.i
  %19 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool36.not.i = icmp eq i32 %19, 0
  br i1 %tobool36.not.i, label %do.body35.i.if.end_crit_edge, label %do.end40.i

do.body35.i.if.end_crit_edge:                     ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end40.i:                                       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.38) #11
  br label %if.end

if.end46.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp47.i = icmp eq i32 %retval.0.i, 0
  br i1 %cmp47.i, label %do.body49.i, label %if.end60.i

do.body49.i:                                      ; preds = %if.end46.i
  %20 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool50.not.i = icmp eq i32 %20, 0
  br i1 %tobool50.not.i, label %do.body49.i.if.end_crit_edge, label %do.end54.i

do.body49.i.if.end_crit_edge:                     ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end54.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #11
  br label %if.end

if.end60.i:                                       ; preds = %if.end46.i
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 50
  %21 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_area.i, align 4
  %cmp61.i = icmp eq ptr %22, null
  br i1 %cmp61.i, label %do.body63.i, label %if.end74.i

do.body63.i:                                      ; preds = %if.end60.i
  %23 = load i32, ptr @pcm_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool64.not.i = icmp eq i32 %23, 0
  br i1 %tobool64.not.i, label %do.body63.i.if.end_crit_edge, label %do.end68.i

do.body63.i.if.end_crit_edge:                     ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end68.i:                                       ; preds = %do.body63.i
  call void @__sanitizer_cov_trace_pc() #10
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38) #11
  br label %if.end

if.end74.i:                                       ; preds = %if.end60.i
  %pb_pos.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %pb_pos.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pb_pos.i, align 4
  %pb_size.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %pb_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pb_size.i, align 4
  %rem.i = urem i32 %25, %27
  %pb_count.i = getelementptr inbounds %struct.snd_cobalt_card, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pb_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp753.not.i = icmp ult i32 %29, 32
  br i1 %cmp753.not.i, label %if.end74.i.do.body81.i_crit_edge, label %for.body.lr.ph.i

if.end74.i.do.body81.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i

for.body.lr.ph.i:                                 ; preds = %if.end74.i
  %cond.i.i = select i1 %cmp32.i, i32 4, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %shr.i)
  %cmp.not22.i.i = icmp ugt i32 %cond.i.i, %shr.i
  br label %for.body.i

for.body.i:                                       ; preds = %pb_sample_cpy.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %pb_sample_cpy.exit.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.04.i, 5
  %add.ptr.i = getelementptr i8, ptr %call, i32 %mul.i
  br i1 %cmp.not22.i.i, label %for.body.i.pb_sample_cpy.exit.i_crit_edge, label %while.body.i.preheader.i

for.body.i.pb_sample_cpy.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pb_sample_cpy.exit.i

while.body.i.preheader.i:                         ; preds = %for.body.i
  %30 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_area.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %31, i32 %rem.i
  %mul78.i = mul i32 %i.04.i, %shr.i
  %add.ptr79.i = getelementptr i8, ptr %add.ptr77.i, i32 %mul78.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.i.preheader.i
  %src.addr.025.i.i = phi ptr [ %incdec.ptr8.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %add.ptr79.i, %while.body.i.preheader.i ]
  %idx.024.i.i = phi i32 [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.preheader.i ]
  %len.addr.023.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %shr.i, %while.body.i.preheader.i ]
  %arrayidx.i.i = getelementptr [8 x i32], ptr @pb_sample_cpy.map, i32 0, i32 %idx.024.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i32 %33, 2
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %add.ptr.i.i, align 1
  br i1 %cmp32.i, label %if.then.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr2.i.i = getelementptr i8, ptr %src.addr.025.i.i, i32 1
  %incdec.ptr3.i.i = getelementptr i8, ptr %src.addr.025.i.i, i32 2
  %35 = ptrtoint ptr %incdec.ptr2.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr2.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %storemerge.i.i = phi i8 [ %36, %if.then.i.i ], [ 0, %while.body.i.i.if.end.i.i_crit_edge ]
  %src.addr.1.i.i = phi ptr [ %incdec.ptr3.i.i, %if.then.i.i ], [ %src.addr.025.i.i, %while.body.i.i.if.end.i.i_crit_edge ]
  %out.0.i.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 1
  %37 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge.i.i, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr6.i.i = getelementptr i8, ptr %src.addr.1.i.i, i32 1
  %38 = ptrtoint ptr %src.addr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %src.addr.1.i.i, align 1
  %incdec.ptr7.i.i = getelementptr i8, ptr %out.0.i.i, i32 1
  %40 = ptrtoint ptr %out.0.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %out.0.i.i, align 1
  %incdec.ptr8.i.i = getelementptr i8, ptr %src.addr.1.i.i, i32 2
  %41 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr6.i.i, align 1
  %43 = ptrtoint ptr %incdec.ptr7.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %incdec.ptr7.i.i, align 1
  %sub.i.i = sub i32 %len.addr.023.i.i, %cond.i.i
  %inc.i.i = add i32 %idx.024.i.i, 1
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %cond.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i.pb_sample_cpy.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.pb_sample_cpy.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pb_sample_cpy.exit.i

pb_sample_cpy.exit.i:                             ; preds = %if.end.i.i.pb_sample_cpy.exit.i_crit_edge, %for.body.i.pb_sample_cpy.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %44 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pb_count.i, align 4
  %div1.i = lshr i32 %45, 5
  %cmp75.i = icmp ult i32 %inc.i, %div1.i
  br i1 %cmp75.i, label %pb_sample_cpy.exit.i.for.body.i_crit_edge, label %pb_sample_cpy.exit.i.do.body81.i_crit_edge

pb_sample_cpy.exit.i.do.body81.i_crit_edge:       ; preds = %pb_sample_cpy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i

pb_sample_cpy.exit.i.for.body.i_crit_edge:        ; preds = %pb_sample_cpy.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body81.i:                                      ; preds = %pb_sample_cpy.exit.i.do.body81.i_crit_edge, %if.end74.i.do.body81.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end74.i.do.body81.i_crit_edge ], [ %inc.i, %pb_sample_cpy.exit.i.do.body81.i_crit_edge ]
  %call84.i = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef nonnull %10) #8
  %mul87.i = mul i32 %i.0.lcssa.i, %shr.i
  %46 = ptrtoint ptr %pb_pos.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pb_pos.i, align 4
  %add.i = add i32 %47, %mul87.i
  store i32 %add.i, ptr %pb_pos.i, align 4
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %call84.i) #8
  %48 = ptrtoint ptr %pb_pos.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pb_pos.i, align 4
  %50 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pb_count.i, align 4
  %rem91.i = urem i32 %49, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem91.i)
  %cmp92.i = icmp eq i32 %rem91.i, 0
  br i1 %cmp92.i, label %if.then94.i, label %do.body81.i.if.end_crit_edge

do.body81.i.if.end_crit_edge:                     ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then94.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then94.i, %do.body81.i.if.end_crit_edge, %do.end68.i, %do.body63.i.if.end_crit_edge, %do.end54.i, %do.body49.i.if.end_crit_edge, %do.end40.i, %do.body35.i.if.end_crit_edge, %do.end25.i, %do.body20.i.if.end_crit_edge, %do.end10.i, %do.body5.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__param_pcm_debug, !1, !"__param_pcm_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_pcm_debugtype302, !1, !"__UNIQUE_ID_pcm_debugtype302", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pcm_debug303, !4, !"__UNIQUE_ID_pcm_debug303", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 25, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 480, i32 25}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 486, i32 4}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_cobalt_pcm_create._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_cobalt_pcm_create._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 497, i32 21}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 506, i32 25}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 512, i32 4}
!19 = !{ptr @snd_cobalt_pcm_create._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @snd_cobalt_pcm_create._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @pcm_debug, !22, !"pcm_debug", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 23, i32 21}
!23 = !{ptr @__param_str_pcm_debug, !1, !"__param_str_pcm_debug", i1 false, i1 false}
!24 = !{ptr @snd_cobalt_pcm_capture_ops, !25, !"snd_cobalt_pcm_capture_ops", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 444, i32 33}
!26 = !{ptr @snd_cobalt_hdmi_capture, !27, !"snd_cobalt_hdmi_capture", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 33, i32 38}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 191, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @alsa_fnc._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @alsa_fnc._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 194, i32 5}
!35 = !{ptr @alsa_fnc._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @alsa_fnc._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 195, i32 4}
!39 = !{ptr @alsa_fnc._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @alsa_fnc._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 197, i32 3}
!43 = !{ptr @alsa_fnc._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @alsa_fnc._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 110, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cobalt_alsa_announce_pcm_data._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cobalt_alsa_announce_pcm_data._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 115, i32 3}
!52 = !{ptr @cobalt_alsa_announce_pcm_data._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cobalt_alsa_announce_pcm_data._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 121, i32 3}
!56 = !{ptr @cobalt_alsa_announce_pcm_data._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cobalt_alsa_announce_pcm_data._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 128, i32 3}
!60 = !{ptr @cobalt_alsa_announce_pcm_data._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cobalt_alsa_announce_pcm_data._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 133, i32 3}
!64 = !{ptr @cobalt_alsa_announce_pcm_data._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cobalt_alsa_announce_pcm_data._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 138, i32 3}
!68 = !{ptr @cobalt_alsa_announce_pcm_data._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cobalt_alsa_announce_pcm_data._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @sample_cpy.map, !71, !"map", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 77, i32 24}
!72 = !{ptr @snd_cobalt_pcm_playback_ops, !73, !"snd_cobalt_pcm_playback_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 452, i32 33}
!74 = !{ptr @snd_cobalt_playback, !75, !"snd_cobalt_playback", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 54, i32 38}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 309, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cobalt_alsa_pb_pcm_data._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @cobalt_alsa_pb_pcm_data._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @cobalt_alsa_pb_pcm_data._entry.39, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 314, i32 3}
!83 = !{ptr @cobalt_alsa_pb_pcm_data._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @cobalt_alsa_pb_pcm_data._entry.41, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 320, i32 3}
!86 = !{ptr @cobalt_alsa_pb_pcm_data._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @cobalt_alsa_pb_pcm_data._entry.43, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 327, i32 3}
!89 = !{ptr @cobalt_alsa_pb_pcm_data._entry_ptr.44, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 332, i32 3}
!92 = !{ptr @cobalt_alsa_pb_pcm_data._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cobalt_alsa_pb_pcm_data._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @cobalt_alsa_pb_pcm_data._entry.48, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 337, i32 3}
!96 = !{ptr @cobalt_alsa_pb_pcm_data._entry_ptr.49, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @pb_sample_cpy.map, !98, !"map", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cobalt/cobalt-alsa-pcm.c", i32 275, i32 24}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i8 0, i8 2}
!110 = !{i64 7281048}
!111 = !{i64 2154813907}
!112 = !{i64 2154815262}
!113 = !{i64 7280630}
