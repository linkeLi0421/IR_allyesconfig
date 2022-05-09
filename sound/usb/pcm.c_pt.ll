; ModuleID = '/llk/IR_all_yes/sound/usb/pcm.c_pt.bc'
source_filename = "../sound/usb/pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.snd_usb_stream = type { ptr, ptr, i32, i32, [2 x %struct.snd_usb_substream], %struct.list_head }
%struct.snd_usb_substream = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, %struct.list_head, %struct.spinlock, i32, %struct.anon.78, i8, i8, ptr }
%struct.anon.78 = type { i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_usb_endpoint = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, [12 x %struct.snd_urb_ctx], [12 x %struct.snd_usb_packet_info], i32, i32, %struct.list_head, i32, i32, i32, %struct.atomic_t, ptr, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.snd_urb_ctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [48 x i32], %struct.list_head }
%struct.snd_usb_packet_info = type { [48 x i32], i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }

@snd_usb_init_pitch.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_usb_init_pitch\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sound/usb/pcm.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enable PITCH for EP 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_usb_init_pitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable PITCH for EP 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_init_pitch._entry_ptr = internal global ptr @snd_usb_init_pitch._entry, section ".printk_index", align 4
@snd_usb_audioformat_set_sync_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 337, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%d:%d : invalid sync pipe. bmAttributes %02x, bLength %d, bSynchAddress %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_usb_audioformat_set_sync_ep\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_audioformat_set_sync_ep._entry_ptr = internal global ptr @snd_usb_audioformat_set_sync_ep._entry, section ".printk_index", align 4
@snd_usb_audioformat_set_sync_ep._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%d:%d : invalid sync pipe. is_playback %d, ep %02x, bSynchAddress %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_usb_audioformat_set_sync_ep._entry_ptr.11 = internal global ptr @snd_usb_audioformat_set_sync_ep._entry.9, section ".printk_index", align 4
@snd_usb_audioformat_set_sync_ep.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%d:%d: found sync_ep=0x%x, iface=%d, alt=%d, implicit_fb=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_usb_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_usb_pcm_open, ptr @snd_usb_pcm_close, ptr null, ptr @snd_usb_hw_params, ptr @snd_usb_hw_free, ptr @snd_usb_pcm_prepare, ptr @snd_usb_substream_playback_trigger, ptr @snd_usb_pcm_sync_stop, ptr @snd_usb_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_usb_pcm_playback_ack }, [32 x i8] zeroinitializer }, align 32
@snd_usb_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_usb_pcm_open, ptr @snd_usb_pcm_close, ptr null, ptr @snd_usb_hw_params, ptr @snd_usb_hw_free, ptr @snd_usb_pcm_prepare, ptr @snd_usb_substream_capture_trigger, ptr @snd_usb_pcm_sync_stop, ptr @snd_usb_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_usb_use_vmalloc = external dso_local local_unnamed_addr global i8, align 1
@snd_usb_pcm_change_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cannot change Power Domain ID: %d to state: %d. Err: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_usb_pcm_change_state\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_pcm_change_state._entry_ptr = internal global ptr @snd_usb_pcm_change_state._entry, section ".printk_index", align 4
@snd_usb_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590099, i64 0, i32 0, i32 0, i32 0, i32 1, i32 256, i32 1048576, i32 64, i32 524288, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_usb_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_usb_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"cannot find format: format=%s, rate=%d, channels=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_usb_hw_params.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"cannot find sync format: ep=0x%x, iface=%d:%d, format=%s, rate=%d, channels=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_usb_substream_playback_trigger\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d:%d Start Playback PCM\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 1, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d:%d Stop Playback PCM\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 1, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d:%d Pause Playback PCM\0A\00", [38 x i8] zeroinitializer }, align 32
@__const.fill_playback_urb_dsd_dop.marker = private unnamed_addr constant [2 x i8] c"\05\FA", align 1
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd_usb_substream_capture_trigger\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%d:%d Start Capture PCM\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 1, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%d:%d Stop Capture PCM\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.retire_capture_urb = private unnamed_addr constant [19 x i8] c"retire_capture_urb\00", align 1
@retire_capture_urb.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.retire_capture_urb, ptr @.str.2, ptr @.str.25, i8 1, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"frame %d active: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@retire_capture_urb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@retire_capture_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.retire_capture_urb, ptr @.str.2, i32 1197, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Corrected urb data len. %d->%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@retire_capture_urb._entry_ptr = internal global ptr @retire_capture_urb._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 48, i64 49]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 200, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 214, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 332, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 347, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 363, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"snd_usb_playback_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1640, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"snd_usb_capture_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1652, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 379, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"snd_usb_hardware\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 662, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 482, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 495, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1571, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1581, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1592, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1619, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1631, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1178, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [19 x i8] c"../sound/usb/pcm.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1195, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @retire_capture_urb._entry, ptr @retire_capture_urb._entry_ptr, ptr @snd_usb_audioformat_set_sync_ep._entry, ptr @snd_usb_audioformat_set_sync_ep._entry.9, ptr @snd_usb_audioformat_set_sync_ep._entry_ptr, ptr @snd_usb_audioformat_set_sync_ep._entry_ptr.11, ptr @snd_usb_init_pitch._entry, ptr @snd_usb_init_pitch._entry_ptr, ptr @snd_usb_pcm_change_state._entry, ptr @snd_usb_pcm_change_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @snd_usb_playback_ops, ptr @snd_usb_capture_ops, ptr @.str.13, ptr @.str.14, ptr @snd_usb_hardware, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @retire_capture_urb._rs, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_init_pitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_audioformat_set_sync_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_audioformat_set_sync_ep._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_pcm_change_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retire_capture_urb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retire_capture_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_init_pitch(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %fmt) local_unnamed_addr #0 align 64 {
entry:
  %data.i35 = alloca [1 x i8], align 1
  %data.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attributes = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 10
  %0 = ptrtoint ptr %attributes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %attributes, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_init_pitch.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_init_pitch, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !80

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %endpoint = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 11
  %5 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %endpoint, align 1
  %conv6 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_init_pitch.__UNIQUE_ID_ddebug241, ptr noundef %dev5, ptr noundef nonnull @.str.3, i32 noundef %conv6) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %protocol = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 19
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %protocol, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %do.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 32, label %sw.bb12
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %endpoint9 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 11
  %10 = ptrtoint ptr %endpoint9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %endpoint9, align 1
  %dev1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %data.i, align 1
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %16, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = zext i8 %11 to i16
  %call2.i = call i32 @snd_usb_ctl_msg(ptr noundef %13, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 512, i16 noundef zeroext %conv.i, ptr noundef nonnull %data.i, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i36 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %17 = ptrtoint ptr %dev1.i36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i36, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i35) #8
  %19 = ptrtoint ptr %data.i35 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %data.i35, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %18, align 8
  %shl.i.i37 = shl i32 %21, 8
  %or.i38 = or i32 %shl.i.i37, -2147483648
  %call2.i39 = call i32 @snd_usb_ctl_msg(ptr noundef %18, i32 noundef %or.i38, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %data.i35, i16 noundef zeroext 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i35) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb
  %err.0 = phi i32 [ %call2.i39, %sw.bb12 ], [ %call2.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %do.end20, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %22 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev21, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  %endpoint23 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 11
  %24 = ptrtoint ptr %endpoint23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %endpoint23, align 1
  %conv24 = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.4, i32 noundef %conv24) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %sw.epilog.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_audioformat_set_sync_ep(ptr noundef %chip, ptr noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %iface = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface, align 8
  %conv = zext i8 %3 to i32
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %4 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %altsetting, align 1
  %conv2 = zext i8 %5 to i32
  %call = tail call ptr @snd_usb_get_host_interface(ptr noundef %chip, i32 noundef %conv, i32 noundef %conv2) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @snd_usb_parse_implicit_fb_quirk(ptr noundef %chip, ptr noundef %fmt, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp8 = icmp ult i8 %7, 2
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool14.not = icmp sgt i8 %11, -1
  %ep_attr = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 12
  %12 = ptrtoint ptr %ep_attr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ep_attr, align 2
  %14 = and i8 %13, 12
  br i1 %tobool14.not, label %land.lhs.true, label %land.lhs.true25.critedge

land.lhs.true:                                    ; preds = %if.end11
  %trunc = trunc i8 %14 to i4
  %15 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.29)
  switch i4 %trunc, label %land.lhs.true.if.end29_crit_edge [
    i4 -4, label %land.lhs.true.cleanup_crit_edge
    i4 -8, label %land.lhs.true.cleanup_crit_edge242
  ]

land.lhs.true.cleanup_crit_edge242:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.lhs.true25.critedge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp26.not = icmp eq i8 %14, 8
  br i1 %cmp26.not, label %land.lhs.true25.critedge.if.end29_crit_edge, label %land.lhs.true25.critedge.cleanup_crit_edge

land.lhs.true25.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true25.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true25.critedge.if.end29_crit_edge:      ; preds = %land.lhs.true25.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true25.critedge.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge
  %bmAttributes = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmAttributes, align 1
  %conv33 = zext i8 %17 to i32
  %and34 = and i32 %conv33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and34)
  %cmp35.not = icmp eq i32 %and34, 1
  br i1 %cmp35.not, label %lor.lhs.false37, label %if.end29.do.end_crit_edge

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false37:                                  ; preds = %if.end29
  %arrayidx31 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp42 = icmp ugt i8 %19, 8
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false37.if.end79_crit_edge

lor.lhs.false37.if.end79_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

land.lhs.true44:                                  ; preds = %lor.lhs.false37
  %bSynchAddress = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 0, i32 7
  %20 = ptrtoint ptr %bSynchAddress to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bSynchAddress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp49.not = icmp eq i8 %21, 0
  br i1 %cmp49.not, label %land.lhs.true44.if.end79_crit_edge, label %land.lhs.true44.do.end_crit_edge

land.lhs.true44.do.end_crit_edge:                 ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true44.if.end79_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

do.end:                                           ; preds = %land.lhs.true44.do.end_crit_edge, %if.end29.do.end_crit_edge
  %dev52 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iface, align 8
  %conv54 = zext i8 %23 to i32
  %24 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %altsetting, align 1
  %conv56 = zext i8 %25 to i32
  %arrayidx58 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx58, align 4
  %conv66 = zext i8 %27 to i32
  %bSynchAddress70 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 0, i32 7
  %28 = ptrtoint ptr %bSynchAddress70 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bSynchAddress70, align 4
  %conv71 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.7, i32 noundef %conv54, i32 noundef %conv56, i32 noundef %conv33, i32 noundef %conv66, i32 noundef %conv71) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp75 = icmp eq i8 %14, 0
  %or.cond = select i1 %tobool14.not, i1 %cmp75, i1 false
  %spec.select = select i1 %or.cond, i32 0, i32 -22
  br label %cleanup

if.end79:                                         ; preds = %land.lhs.true44.if.end79_crit_edge, %lor.lhs.false37.if.end79_crit_edge
  %bEndpointAddress83 = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress83 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress83, align 2
  %conv84 = zext i8 %31 to i32
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %33)
  %cmp90 = icmp ugt i8 %33, 8
  br i1 %cmp90, label %land.lhs.true92, label %if.end79.if.end145_crit_edge

if.end79.if.end145_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

land.lhs.true92:                                  ; preds = %if.end79
  %bSynchAddress96 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 7
  %34 = ptrtoint ptr %bSynchAddress96 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bSynchAddress96, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp98.not = icmp eq i8 %35, 0
  br i1 %cmp98.not, label %land.lhs.true92.if.end145_crit_edge, label %land.lhs.true100

land.lhs.true92.if.end145_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

land.lhs.true100:                                 ; preds = %land.lhs.true92
  %tobool14.not.not = xor i1 %tobool14.not, true
  %36 = or i8 %35, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %36)
  %cmp109.not = icmp eq i8 %31, %36
  %or.cond237 = select i1 %tobool14.not.not, i1 true, i1 %cmp109.not
  br i1 %or.cond237, label %lor.lhs.false111, label %land.lhs.true100.do.end125_crit_edge

land.lhs.true100.do.end125_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

lor.lhs.false111:                                 ; preds = %land.lhs.true100
  %37 = and i8 %35, 127
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %37)
  %cmp120.not = icmp eq i8 %31, %37
  %or.cond241 = select i1 %tobool14.not, i1 true, i1 %cmp120.not
  br i1 %or.cond241, label %lor.lhs.false111.if.end145_crit_edge, label %lor.lhs.false111.do.end125_crit_edge

lor.lhs.false111.do.end125_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

lor.lhs.false111.if.end145_crit_edge:             ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

do.end125:                                        ; preds = %lor.lhs.false111.do.end125_crit_edge, %land.lhs.true100.do.end125_crit_edge
  %dev126 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %iface, align 8
  %conv128 = zext i8 %39 to i32
  %40 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %altsetting, align 1
  %conv130 = zext i8 %41 to i32
  %42 = xor i8 %11, -1
  %43 = lshr i8 %42, 7
  %.not = zext i8 %43 to i32
  %conv137 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126, ptr noundef nonnull @.str.10, i32 noundef %conv128, i32 noundef %conv130, i32 noundef %.not, i32 noundef %conv84, i32 noundef %conv137) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp141 = icmp eq i8 %14, 0
  %or.cond238 = select i1 %tobool14.not, i1 %cmp141, i1 false
  %spec.select239 = select i1 %or.cond238, i32 0, i32 -22
  br label %cleanup

if.end145:                                        ; preds = %lor.lhs.false111.if.end145_crit_edge, %land.lhs.true92.if.end145_crit_edge, %if.end79.if.end145_crit_edge
  %sync_ep = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 14
  %44 = ptrtoint ptr %sync_ep to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %31, ptr %sync_ep, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call, i32 0, i32 2
  %45 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bInterfaceNumber, align 1
  %sync_iface = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 15
  %47 = ptrtoint ptr %sync_iface to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %sync_iface, align 1
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call, i32 0, i32 3
  %48 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bAlternateSetting, align 1
  %sync_altsetting = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 16
  %50 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %sync_altsetting, align 2
  %sync_ep_idx = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 17
  %51 = ptrtoint ptr %sync_ep_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %sync_ep_idx, align 1
  %and147 = and i32 %conv33, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and147)
  %cmp148 = icmp eq i32 %and147, 32
  br i1 %cmp148, label %if.then150, label %if.end145.do.body152_crit_edge

if.end145.do.body152_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body152

if.then150:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %implicit_fb = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 13
  %52 = ptrtoint ptr %implicit_fb to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %implicit_fb, align 1
  br label %do.body152

do.body152:                                       ; preds = %if.then150, %if.end145.do.body152_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_audioformat_set_sync_ep.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_audioformat_set_sync_ep, %if.then159)) #8
          to label %cleanup [label %if.then159], !srcloc !80

if.then159:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #10
  %dev160 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %53 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %iface, align 8
  %conv162 = zext i8 %54 to i32
  %55 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %altsetting, align 1
  %conv164 = zext i8 %56 to i32
  %57 = ptrtoint ptr %sync_ep to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sync_ep, align 8
  %conv166 = zext i8 %58 to i32
  %59 = ptrtoint ptr %sync_iface to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sync_iface, align 1
  %conv168 = zext i8 %60 to i32
  %61 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sync_altsetting, align 2
  %conv170 = zext i8 %62 to i32
  %implicit_fb171 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 13
  %63 = ptrtoint ptr %implicit_fb171 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %implicit_fb171, align 1, !range !81
  %65 = zext i8 %64 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_audioformat_set_sync_ep.__UNIQUE_ID_ddebug242, ptr noundef %dev160, ptr noundef nonnull @.str.12, i32 noundef %conv162, i32 noundef %conv164, i32 noundef %conv166, i32 noundef %conv168, i32 noundef %conv170, i32 noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then159, %do.body152, %do.end125, %do.end, %land.lhs.true25.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge242, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge242 ], [ 0, %land.lhs.true25.critedge.cleanup_crit_edge ], [ 0, %if.then159 ], [ %spec.select, %do.end ], [ %spec.select239, %do.end125 ], [ 0, %do.body152 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_host_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_implicit_fb_quirk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_pcm_suspend(ptr nocapture noundef readonly %as) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %str_pd.i = getelementptr inbounds %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 0, i32 6
  %0 = ptrtoint ptr %str_pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %str_pd.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %substream = getelementptr inbounds %struct.snd_usb_stream, ptr %as, i32 0, i32 4
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @snd_usb_power_domain_set(ptr noundef %5, ptr noundef nonnull %1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_usb_pcm_change_state.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

snd_usb_pcm_change_state.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 0, i32 1
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %str_pd.i11 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 1, i32 6
  %6 = ptrtoint ptr %str_pd.i11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %str_pd.i11, align 8
  %tobool.not.i12 = icmp eq ptr %7, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end.i15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i15:                                       ; preds = %if.end
  %arrayidx2 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %call.i13 = tail call i32 @snd_usb_power_domain_set(ptr noundef %11, ptr noundef nonnull %7, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp.i14 = icmp slt i32 %call.i13, 0
  br i1 %cmp.i14, label %12, label %if.end.i15.cleanup_crit_edge

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

12:                                               ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i16 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 1, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %12, %snd_usb_pcm_change_state.exit
  %dev.i16.sink = phi ptr [ %dev.i16, %12 ], [ %dev.i, %snd_usb_pcm_change_state.exit ]
  %str_pd.i11.sink = phi ptr [ %str_pd.i11, %12 ], [ %str_pd.i, %snd_usb_pcm_change_state.exit ]
  %call.i13.sink = phi i32 [ %call.i13, %12 ], [ %call.i, %snd_usb_pcm_change_state.exit ]
  %13 = ptrtoint ptr %dev.i16.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i16.sink, align 4
  %dev4.i17 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %str_pd.i11.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %str_pd.i11.sink, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i17, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef 2, i32 noundef %call.i13.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i15.cleanup_crit_edge ], [ %call.i13.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_pcm_resume(ptr nocapture noundef readonly %as) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %str_pd.i = getelementptr inbounds %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 0, i32 6
  %0 = ptrtoint ptr %str_pd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %str_pd.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %substream = getelementptr inbounds %struct.snd_usb_stream, ptr %as, i32 0, i32 4
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @snd_usb_power_domain_set(ptr noundef %5, ptr noundef nonnull %1, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_usb_pcm_change_state.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

snd_usb_pcm_change_state.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 0, i32 1
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %str_pd.i11 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 1, i32 6
  %6 = ptrtoint ptr %str_pd.i11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %str_pd.i11, align 8
  %tobool.not.i12 = icmp eq ptr %7, null
  br i1 %tobool.not.i12, label %if.end.cleanup_crit_edge, label %if.end.i15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i15:                                       ; preds = %if.end
  %arrayidx2 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %call.i13 = tail call i32 @snd_usb_power_domain_set(ptr noundef %11, ptr noundef nonnull %7, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp.i14 = icmp slt i32 %call.i13, 0
  br i1 %cmp.i14, label %12, label %if.end.i15.cleanup_crit_edge

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

12:                                               ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i16 = getelementptr %struct.snd_usb_stream, ptr %as, i32 0, i32 4, i32 1, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %12, %snd_usb_pcm_change_state.exit
  %dev.i16.sink = phi ptr [ %dev.i16, %12 ], [ %dev.i, %snd_usb_pcm_change_state.exit ]
  %str_pd.i11.sink = phi ptr [ %str_pd.i11, %12 ], [ %str_pd.i, %snd_usb_pcm_change_state.exit ]
  %call.i13.sink = phi i32 [ %call.i13, %12 ], [ %call.i, %snd_usb_pcm_change_state.exit ]
  %13 = ptrtoint ptr %dev.i16.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i16.sink, align 4
  %dev4.i17 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %str_pd.i11.sink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %str_pd.i11.sink, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i17, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef 1, i32 noundef %call.i13.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i15.cleanup_crit_edge ], [ %call.i13.sink, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_set_pcm_ops(ptr noundef %pcm, i32 noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp = icmp eq i32 %stream, 0
  %cond = select i1 %cmp, ptr @snd_usb_playback_ops, ptr @snd_usb_capture_ops
  tail call void @snd_pcm_set_ops(ptr noundef %pcm, i32 noundef %stream, ptr noundef nonnull %cond) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_preallocate_buffer(ptr nocapture noundef readonly %subs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subs, align 8
  %pcm1 = getelementptr inbounds %struct.snd_usb_stream, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm1, align 4
  %direction = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 3
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %3, i32 0, i32 8, i32 %5, i32 4
  %6 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @snd_usb_use_vmalloc to i32))
  %8 = load i8, ptr @snd_usb_use_vmalloc, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef %7, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 1
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 8
  %sysdev = getelementptr inbounds %struct.usb_bus, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sysdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sysdev, align 4
  %call3 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef %7, i32 noundef 2, ptr noundef %14, i32 noundef 65536, i32 noundef 524288) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_power_domain_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %arrayidx = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_usb_hardware, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %lowlatency = getelementptr inbounds %struct.snd_usb_audio, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %lowlatency to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lowlatency, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw, align 8
  %or = or i32 %12, 32
  store i32 %or, ptr %hw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %13 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %private_data4, align 8
  %pcm_substream = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 2
  %14 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %substream, ptr %pcm_substream, align 8
  %dsd_dop = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 29
  %byte_idx = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 29, i32 2
  %15 = ptrtoint ptr %byte_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %byte_idx, align 4
  %channel = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 29, i32 1
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %channel, align 4
  %17 = ptrtoint ptr %dsd_dop to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %dsd_dop, align 4
  %formats.i = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 24
  %18 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %formats.i, align 8
  %formats1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 1
  %20 = ptrtoint ptr %formats1.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %formats1.i, align 8
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 3
  %21 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2147483647, ptr %rate_min.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  %22 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rate_max.i, align 8
  %channels_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 5
  %23 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %24 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %channels_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 2
  %25 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %rates.i, align 8
  %fmt_list.i = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 26
  %26 = ptrtoint ptr %fmt_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %fp.0226.i = load ptr, ptr %fmt_list.i, align 4
  %cmp.not227.i = icmp eq ptr %fp.0226.i, %fmt_list.i
  br i1 %cmp.not227.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 9
  %period_bytes_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end50.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fp.0229.i = phi ptr [ %fp.0226.i, %for.body.lr.ph.i ], [ %fp.0.i, %if.end50.i.for.body.i_crit_edge ]
  %ptmin.0228.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %59, %if.end50.i.for.body.i_crit_edge ]
  %rates8.i = getelementptr inbounds %struct.audioformat, ptr %fp.0229.i, i32 0, i32 21
  %27 = ptrtoint ptr %rates8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rates8.i, align 4
  %29 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rates.i, align 8
  %or.i = or i32 %30, %28
  store i32 %or.i, ptr %rates.i, align 8
  %31 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate_min.i, align 4
  %rate_min13.i = getelementptr inbounds %struct.audioformat, ptr %fp.0229.i, i32 0, i32 22
  %33 = ptrtoint ptr %rate_min13.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate_min13.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp14.i = icmp ugt i32 %32, %34
  br i1 %cmp14.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rate_min.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %36 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate_max.i, align 8
  %rate_max20.i = getelementptr inbounds %struct.audioformat, ptr %fp.0229.i, i32 0, i32 23
  %38 = ptrtoint ptr %rate_max20.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate_max20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp21.i = icmp ult i32 %37, %39
  br i1 %cmp21.i, label %if.then22.i, label %if.end.i.if.end26.i_crit_edge

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rate_max.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end.i.if.end26.i_crit_edge
  %41 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channels_min.i, align 4
  %channels.i = getelementptr inbounds %struct.audioformat, ptr %fp.0229.i, i32 0, i32 2
  %43 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp29.i = icmp ugt i32 %42, %44
  br i1 %cmp29.i, label %if.then30.i, label %if.end26.i.if.end34.i_crit_edge

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %channels_min.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %if.end26.i.if.end34.i_crit_edge
  %46 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channels_max.i, align 8
  %48 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp38.i = icmp ult i32 %47, %49
  br i1 %cmp38.i, label %if.then39.i, label %if.end34.i.if.end43.i_crit_edge

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %channels_max.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %if.end34.i.if.end43.i_crit_edge
  %fmt_type.i = getelementptr inbounds %struct.audioformat, ptr %fp.0229.i, i32 0, i32 3
  %51 = ptrtoint ptr %fmt_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmt_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp44.i = icmp eq i32 %52, 2
  br i1 %cmp44.i, label %land.lhs.true.i, label %if.end43.i.if.end50.i_crit_edge

if.end43.i.if.end50.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

land.lhs.true.i:                                  ; preds = %if.end43.i
  %frame_size.i = getelementptr inbounds %struct.audioformat, ptr %fp.0229.i, i32 0, i32 5
  %53 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %frame_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp45.not.i = icmp eq i32 %54, 0
  br i1 %cmp45.not.i, label %land.lhs.true.i.if.end50.i_crit_edge, label %if.then46.i

land.lhs.true.i.if.end50.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.i

if.then46.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %period_bytes_max.i, align 4
  %56 = ptrtoint ptr %period_bytes_min.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %period_bytes_min.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %land.lhs.true.i.if.end50.i_crit_edge, %if.end43.i.if.end50.i_crit_edge
  %datainterval.i = getelementptr inbounds %struct.audioformat, ptr %fp.0229.i, i32 0, i32 18
  %57 = ptrtoint ptr %datainterval.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %datainterval.i, align 4
  %conv.i = zext i8 %58 to i32
  %mul.i = shl i32 125, %conv.i
  %59 = tail call i32 @llvm.umin.i32(i32 %ptmin.0228.i, i32 %mul.i) #8
  %60 = ptrtoint ptr %fp.0229.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %fp.0.i = load ptr, ptr %fp.0229.i, align 4
  %cmp.not.i = icmp eq ptr %fp.0.i, %fmt_list.i
  br i1 %cmp.not.i, label %if.end50.i.for.end.i_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end50.i.for.end.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end50.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %ptmin.0.lcssa.i = phi i32 [ -1, %if.end.for.end.i_crit_edge ], [ %59, %if.end50.i.for.end.i_crit_edge ]
  %speed.i = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 23
  %61 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp59.i = icmp eq i32 %62, 2
  %spec.select.i = select i1 %cmp59.i, i32 1000, i32 %ptmin.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %spec.select.i)
  %cmp63.i = icmp eq i32 %spec.select.i, 1000
  %param_period_time_if_needed.0.i = select i1 %cmp63.i, i32 -1, i32 12
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %5, i32 noundef 12, i32 noundef %spec.select.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp67.i = icmp slt i32 %call.i, 0
  br i1 %cmp67.i, label %for.end.i.cleanup_crit_edge, label %if.end70.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70.i:                                       ; preds = %for.end.i
  %call71.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate, ptr noundef %arrayidx, i32 noundef 11, i32 noundef 1, i32 noundef 10, i32 noundef %param_period_time_if_needed.0.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.end70.i.cleanup_crit_edge, label %if.end75.i

if.end70.i.cleanup_crit_edge:                     ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75.i:                                       ; preds = %if.end70.i
  %call76.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_channels, ptr noundef %arrayidx, i32 noundef 10, i32 noundef 1, i32 noundef 11, i32 noundef %param_period_time_if_needed.0.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %if.end75.i.cleanup_crit_edge, label %if.end80.i

if.end75.i.cleanup_crit_edge:                     ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end80.i:                                       ; preds = %if.end75.i
  %call81.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_format, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 11, i32 noundef 10, i32 noundef %param_period_time_if_needed.0.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %cmp82.i = icmp slt i32 %call81.i, 0
  br i1 %cmp82.i, label %if.end80.i.cleanup_crit_edge, label %if.end85.i

if.end80.i.cleanup_crit_edge:                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85.i:                                       ; preds = %if.end80.i
  br i1 %cmp63.i, label %if.end85.i.if.end94.i_crit_edge, label %if.then88.i

if.end85.i.if.end94.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then88.i:                                      ; preds = %if.end85.i
  %call89.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 12, ptr noundef nonnull @hw_rule_period_time, ptr noundef %arrayidx, i32 noundef 1, i32 noundef 10, i32 noundef 11, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %cmp90.i = icmp slt i32 %call89.i, 0
  br i1 %cmp90.i, label %if.then88.i.cleanup_crit_edge, label %if.then88.i.if.end94.i_crit_edge

if.then88.i.if.end94.i_crit_edge:                 ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94.i

if.then88.i.cleanup_crit_edge:                    ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end94.i:                                       ; preds = %if.then88.i.if.end94.i_crit_edge, %if.end85.i.if.end94.i_crit_edge
  %call95.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_format_implicit_fb, ptr noundef %arrayidx, i32 noundef 1, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %cmp96.i = icmp slt i32 %call95.i, 0
  br i1 %cmp96.i, label %if.end94.i.cleanup_crit_edge, label %if.end99.i

if.end94.i.cleanup_crit_edge:                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end99.i:                                       ; preds = %if.end94.i
  %call100.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_rate_implicit_fb, ptr noundef %arrayidx, i32 noundef 11, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %cmp101.i = icmp slt i32 %call100.i, 0
  br i1 %cmp101.i, label %if.end99.i.cleanup_crit_edge, label %if.end104.i

if.end99.i.cleanup_crit_edge:                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end104.i:                                      ; preds = %if.end99.i
  %call105.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 13, ptr noundef nonnull @hw_rule_period_size_implicit_fb, ptr noundef %arrayidx, i32 noundef 13, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %cmp106.i = icmp slt i32 %call105.i, 0
  br i1 %cmp106.i, label %if.end104.i.cleanup_crit_edge, label %if.end109.i

if.end104.i.cleanup_crit_edge:                    ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end109.i:                                      ; preds = %if.end104.i
  %call110.i = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %5, i32 noundef 0, i32 noundef 15, ptr noundef nonnull @hw_rule_periods_implicit_fb, ptr noundef %arrayidx, i32 noundef 15, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %cmp111.i = icmp slt i32 %call110.i, 0
  br i1 %cmp111.i, label %if.end109.i.cleanup_crit_edge, label %if.end109.i.for.cond120.i_crit_edge

if.end109.i.for.cond120.i_crit_edge:              ; preds = %if.end109.i
  br label %for.cond120.i

if.end109.i.cleanup_crit_edge:                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond120.i:                                    ; preds = %for.body126.i.for.cond120.i_crit_edge, %if.end109.i.for.cond120.i_crit_edge
  %fp.1.in.i = phi ptr [ %fp.1.i, %for.body126.i.for.cond120.i_crit_edge ], [ %fmt_list.i, %if.end109.i.for.cond120.i_crit_edge ]
  %63 = ptrtoint ptr %fp.1.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %fp.1.i = load ptr, ptr %fp.1.in.i, align 4
  %cmp123.not.i = icmp eq ptr %fp.1.i, %fmt_list.i
  br i1 %cmp123.not.i, label %for.cond120.i.if.end9_crit_edge, label %for.body126.i

for.cond120.i.if.end9_crit_edge:                  ; preds = %for.cond120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body126.i:                                    ; preds = %for.cond120.i
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fp.1.i, i32 0, i32 13
  %64 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %implicit_fb.i, align 1, !range !81
  %tobool.not.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i, label %for.body126.i.for.cond120.i_crit_edge, label %if.then127.i

for.body126.i.for.cond120.i_crit_edge:            ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond120.i

if.then127.i:                                     ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hw, align 8
  %or129.i = or i32 %67, 2097152
  store i32 %or129.i, ptr %hw, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then127.i, %for.cond120.i.if.end9_crit_edge
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %call12 = tail call i32 @snd_usb_autoresume(ptr noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %pcm = getelementptr inbounds %struct.snd_usb_stream, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcm, align 4
  %call16 = tail call i32 @snd_media_stream_init(ptr noundef %arrayidx, ptr noundef %73, i32 noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  tail call void @snd_usb_autosuspend(ptr noundef %77) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end109.i.cleanup_crit_edge, %if.end104.i.cleanup_crit_edge, %if.end99.i.cleanup_crit_edge, %if.end94.i.cleanup_crit_edge, %if.then88.i.cleanup_crit_edge, %if.end80.i.cleanup_crit_edge, %if.end75.i.cleanup_crit_edge, %if.end70.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9.cleanup_crit_edge ], [ %call16, %if.then18 ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call110.i, %if.end109.i.cleanup_crit_edge ], [ %call105.i, %if.end104.i.cleanup_crit_edge ], [ %call100.i, %if.end99.i.cleanup_crit_edge ], [ %call95.i, %if.end94.i.cleanup_crit_edge ], [ %call89.i, %if.then88.i.cleanup_crit_edge ], [ %call81.i, %if.end80.i.cleanup_crit_edge ], [ %call76.i, %if.end75.i.cleanup_crit_edge ], [ %call71.i, %if.end70.i.cleanup_crit_edge ], [ %call.i, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1
  tail call void @snd_media_stop_pipeline(ptr noundef %arrayidx) #8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %str_pd.i = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 6
  %8 = ptrtoint ptr %str_pd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %str_pd.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.snd_usb_pcm_change_state.exit_crit_edge, label %if.end.i

if.then.snd_usb_pcm_change_state.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_usb_pcm_change_state.exit

if.end.i:                                         ; preds = %if.then
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call.i = tail call i32 @snd_usb_power_domain_set(ptr noundef %13, ptr noundef nonnull %9, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.snd_usb_pcm_change_state.exit_crit_edge

if.end.i.snd_usb_pcm_change_state.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_usb_pcm_change_state.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %str_pd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %str_pd.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.13, i32 noundef %19, i32 noundef 1, i32 noundef %call.i) #11
  br label %snd_usb_pcm_change_state.exit

snd_usb_pcm_change_state.exit:                    ; preds = %do.end.i, %if.end.i.snd_usb_pcm_change_state.exit_crit_edge, %if.then.snd_usb_pcm_change_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.then.snd_usb_pcm_change_state.exit_crit_edge ], [ 0, %if.end.i.snd_usb_pcm_change_state.exit_crit_edge ]
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  tail call void @snd_usb_unlock_shutdown(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %snd_usb_pcm_change_state.exit.cleanup_crit_edge, label %snd_usb_pcm_change_state.exit.if.end7_crit_edge

snd_usb_pcm_change_state.exit.if.end7_crit_edge:  ; preds = %snd_usb_pcm_change_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

snd_usb_pcm_change_state.exit.cleanup_crit_edge:  ; preds = %snd_usb_pcm_change_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %snd_usb_pcm_change_state.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %pcm_substream = getelementptr %struct.snd_usb_stream, ptr %3, i32 0, i32 4, i32 %1, i32 2
  %24 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pcm_substream, align 8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  tail call void @snd_usb_autosuspend(ptr noundef %28) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %snd_usb_pcm_change_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %retval.0.i, %snd_usb_pcm_change_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call = tail call i32 @snd_media_start_pipeline(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt_list.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 26
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %if.end.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !82
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_format.exit.i_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %arrayidx.i.i7.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i7.i, align 4
  %arrayidx.i.i8.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i8.i, align 4
  %17 = ptrtoint ptr %fmt_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %fp.04.i.i = load ptr, ptr %fmt_list.i, align 4
  %cmp.not5.i.i = icmp eq ptr %fp.04.i.i, %fmt_list.i
  br i1 %cmp.not5.i.i, label %params_format.exit.i.do.body_crit_edge, label %if.then.lr.ph.i.i

params_format.exit.i.do.body_crit_edge:           ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then.lr.ph.i.i:                                ; preds = %params_format.exit.i
  %sh_prom.i.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %tobool30.not.i.i = icmp eq ptr %3, null
  %direction43.i.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 3
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc69.i.i.if.then.i.i_crit_edge, %if.then.lr.ph.i.i
  %fp.010.i.i = phi ptr [ %fp.04.i.i, %if.then.lr.ph.i.i ], [ %fp.0.i.i, %for.inc69.i.i.if.then.i.i_crit_edge ]
  %found.08.i.i = phi ptr [ null, %if.then.lr.ph.i.i ], [ %found.1.i.i, %for.inc69.i.i.if.then.i.i_crit_edge ]
  %cur_attr.06.i.i = phi i32 [ 0, %if.then.lr.ph.i.i ], [ %cur_attr.1.i.i, %for.inc69.i.i.if.then.i.i_crit_edge ]
  %formats.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %formats.i.i, align 8
  %and.i.i = and i64 %19, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool1.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.for.inc69.i.i_crit_edge, label %if.end.i.i

if.then.i.i.for.inc69.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %channels3.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %channels3.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %16)
  %cmp4.not.i.i = icmp eq i32 %21, %16
  br i1 %cmp4.not.i.i, label %if.end7.i.i, label %if.end.i.i.for.inc69.i.i_crit_edge

if.end.i.i.for.inc69.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %rate_min.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 22
  %22 = ptrtoint ptr %rate_min.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate_min.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %14)
  %cmp8.i.i = icmp ugt i32 %23, %14
  br i1 %cmp8.i.i, label %if.end7.i.i.for.inc69.i.i_crit_edge, label %lor.lhs.false.i.i

if.end7.i.i.for.inc69.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i.i
  %rate_max.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 23
  %24 = ptrtoint ptr %rate_max.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %14)
  %cmp9.i.i = icmp ult i32 %25, %14
  br i1 %cmp9.i.i, label %lor.lhs.false.i.i.for.inc69.i.i_crit_edge, label %if.end11.i.i

lor.lhs.false.i.i.for.inc69.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

if.end11.i.i:                                     ; preds = %lor.lhs.false.i.i
  %rates.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 21
  %26 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rates.i.i, align 4
  %and12.i.i = and i32 %27, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %for.cond15.preheader.i.i, label %if.end11.i.i.if.end25.i.i_crit_edge

if.end11.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

for.cond15.preheader.i.i:                         ; preds = %if.end11.i.i
  %nr_rates.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 24
  %28 = ptrtoint ptr %nr_rates.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_rates.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp162.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp162.not.i.i, label %for.cond15.preheader.i.i.for.inc69.i.i_crit_edge, label %for.body17.lr.ph.i.i

for.cond15.preheader.i.i.for.inc69.i.i_crit_edge: ; preds = %for.cond15.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

for.body17.lr.ph.i.i:                             ; preds = %for.cond15.preheader.i.i
  %rate_table.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 25
  %30 = ptrtoint ptr %rate_table.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rate_table.i.i, align 4
  br label %for.body17.i.i

for.cond15.i.i:                                   ; preds = %for.body17.i.i
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %29
  br i1 %exitcond.not.i.i, label %for.cond15.i.i.for.inc69.i.i_crit_edge, label %for.cond15.i.i.for.body17.i.i_crit_edge

for.cond15.i.i.for.body17.i.i_crit_edge:          ; preds = %for.cond15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17.i.i

for.cond15.i.i.for.inc69.i.i_crit_edge:           ; preds = %for.cond15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

for.body17.i.i:                                   ; preds = %for.cond15.i.i.for.body17.i.i_crit_edge, %for.body17.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body17.lr.ph.i.i ], [ %inc.i.i, %for.cond15.i.i.for.body17.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %31, i32 %i.03.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %14)
  %cmp18.i.i = icmp eq i32 %33, %14
  br i1 %cmp18.i.i, label %for.body17.i.i.if.end25.i.i_crit_edge, label %for.cond15.i.i

for.body17.i.i.if.end25.i.i_crit_edge:            ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %for.body17.i.i.if.end25.i.i_crit_edge, %if.end11.i.i.if.end25.i.i_crit_edge
  %ep_attr.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 12
  %34 = ptrtoint ptr %ep_attr.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ep_attr.i.i, align 2
  %36 = and i8 %35, 12
  %and26.i.i = zext i8 %36 to i32
  %tobool27.not.i.i = icmp eq ptr %found.08.i.i, null
  br i1 %tobool27.not.i.i, label %if.end25.i.i.for.inc69.i.i_crit_edge, label %if.end29.i.i

if.end25.i.i.for.inc69.i.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_attr.06.i.i, i32 %and26.i.i)
  %cmp31.not.i.i = icmp eq i32 %cur_attr.06.i.i, %and26.i.i
  %or.cond.i.i = select i1 %tobool30.not.i.i, i1 true, i1 %cmp31.not.i.i
  br i1 %or.cond.i.i, label %if.end29.i.i.if.end63.i.i_crit_edge, label %if.then33.i.i

if.end29.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i.i

if.then33.i.i:                                    ; preds = %if.end29.i.i
  %trunc.i.i = trunc i8 %36 to i4
  %37 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.30)
  switch i4 %trunc.i.i, label %if.then33.i.i.if.end47.i.i_crit_edge [
    i4 4, label %land.lhs.true36.i.i
    i4 -8, label %land.lhs.true42.i.i
  ]

if.then33.i.i.if.end47.i.i_crit_edge:             ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

land.lhs.true36.i.i:                              ; preds = %if.then33.i.i
  %38 = ptrtoint ptr %direction43.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %direction43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp37.i.i = icmp eq i32 %39, 0
  br i1 %cmp37.i.i, label %land.lhs.true36.i.i.for.inc69.i.i_crit_edge, label %land.lhs.true36.i.i.if.end47.i.i_crit_edge

land.lhs.true36.i.i.if.end47.i.i_crit_edge:       ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

land.lhs.true36.i.i.for.inc69.i.i_crit_edge:      ; preds = %land.lhs.true36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

land.lhs.true42.i.i:                              ; preds = %if.then33.i.i
  %40 = ptrtoint ptr %direction43.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %direction43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp44.i.i = icmp eq i32 %41, 1
  br i1 %cmp44.i.i, label %land.lhs.true42.i.i.for.inc69.i.i_crit_edge, label %land.lhs.true42.i.i.if.end47.i.i_crit_edge

land.lhs.true42.i.i.if.end47.i.i_crit_edge:       ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i

land.lhs.true42.i.i.for.inc69.i.i_crit_edge:      ; preds = %land.lhs.true42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

if.end47.i.i:                                     ; preds = %land.lhs.true42.i.i.if.end47.i.i_crit_edge, %land.lhs.true36.i.i.if.end47.i.i_crit_edge, %if.then33.i.i.if.end47.i.i_crit_edge
  %42 = zext i32 %cur_attr.06.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %cur_attr.06.i.i, label %if.end47.i.i.if.end63.i.i_crit_edge [
    i32 4, label %land.lhs.true50.i.i
    i32 8, label %land.lhs.true57.i.i
  ]

if.end47.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i.i

land.lhs.true50.i.i:                              ; preds = %if.end47.i.i
  %43 = ptrtoint ptr %direction43.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %direction43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp52.i.i = icmp eq i32 %44, 0
  br i1 %cmp52.i.i, label %land.lhs.true50.i.i.for.inc69.i.i_crit_edge, label %land.lhs.true50.i.i.if.end63.i.i_crit_edge

land.lhs.true50.i.i.if.end63.i.i_crit_edge:       ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i.i

land.lhs.true50.i.i.for.inc69.i.i_crit_edge:      ; preds = %land.lhs.true50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

land.lhs.true57.i.i:                              ; preds = %if.end47.i.i
  %45 = ptrtoint ptr %direction43.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %direction43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp59.i.i = icmp eq i32 %46, 1
  br i1 %cmp59.i.i, label %land.lhs.true57.i.i.for.inc69.i.i_crit_edge, label %land.lhs.true57.i.i.if.end63.i.i_crit_edge

land.lhs.true57.i.i.if.end63.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i.i

land.lhs.true57.i.i.for.inc69.i.i_crit_edge:      ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i.i

if.end63.i.i:                                     ; preds = %land.lhs.true57.i.i.if.end63.i.i_crit_edge, %land.lhs.true50.i.i.if.end63.i.i_crit_edge, %if.end47.i.i.if.end63.i.i_crit_edge, %if.end29.i.i.if.end63.i.i_crit_edge
  %maxpacksize.i.i = getelementptr inbounds %struct.audioformat, ptr %fp.010.i.i, i32 0, i32 20
  %47 = ptrtoint ptr %maxpacksize.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %maxpacksize.i.i, align 8
  %maxpacksize64.i.i = getelementptr inbounds %struct.audioformat, ptr %found.08.i.i, i32 0, i32 20
  %49 = ptrtoint ptr %maxpacksize64.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %maxpacksize64.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp65.i.i = icmp ugt i32 %48, %50
  %spec.select.i.i = select i1 %cmp65.i.i, i32 %and26.i.i, i32 %cur_attr.06.i.i
  %spec.select1.i.i = select i1 %cmp65.i.i, ptr %fp.010.i.i, ptr %found.08.i.i
  br label %for.inc69.i.i

for.inc69.i.i:                                    ; preds = %if.end63.i.i, %land.lhs.true57.i.i.for.inc69.i.i_crit_edge, %land.lhs.true50.i.i.for.inc69.i.i_crit_edge, %land.lhs.true42.i.i.for.inc69.i.i_crit_edge, %land.lhs.true36.i.i.for.inc69.i.i_crit_edge, %if.end25.i.i.for.inc69.i.i_crit_edge, %for.cond15.i.i.for.inc69.i.i_crit_edge, %for.cond15.preheader.i.i.for.inc69.i.i_crit_edge, %lor.lhs.false.i.i.for.inc69.i.i_crit_edge, %if.end7.i.i.for.inc69.i.i_crit_edge, %if.end.i.i.for.inc69.i.i_crit_edge, %if.then.i.i.for.inc69.i.i_crit_edge
  %cur_attr.1.i.i = phi i32 [ %cur_attr.06.i.i, %if.end.i.i.for.inc69.i.i_crit_edge ], [ %cur_attr.06.i.i, %if.end7.i.i.for.inc69.i.i_crit_edge ], [ %cur_attr.06.i.i, %lor.lhs.false.i.i.for.inc69.i.i_crit_edge ], [ %cur_attr.06.i.i, %land.lhs.true36.i.i.for.inc69.i.i_crit_edge ], [ %cur_attr.06.i.i, %land.lhs.true42.i.i.for.inc69.i.i_crit_edge ], [ %cur_attr.06.i.i, %if.then.i.i.for.inc69.i.i_crit_edge ], [ %and26.i.i, %if.end25.i.i.for.inc69.i.i_crit_edge ], [ %and26.i.i, %land.lhs.true57.i.i.for.inc69.i.i_crit_edge ], [ %and26.i.i, %land.lhs.true50.i.i.for.inc69.i.i_crit_edge ], [ %spec.select.i.i, %if.end63.i.i ], [ %cur_attr.06.i.i, %for.cond15.preheader.i.i.for.inc69.i.i_crit_edge ], [ %cur_attr.06.i.i, %for.cond15.i.i.for.inc69.i.i_crit_edge ]
  %found.1.i.i = phi ptr [ %found.08.i.i, %if.end.i.i.for.inc69.i.i_crit_edge ], [ %found.08.i.i, %if.end7.i.i.for.inc69.i.i_crit_edge ], [ %found.08.i.i, %lor.lhs.false.i.i.for.inc69.i.i_crit_edge ], [ %found.08.i.i, %land.lhs.true36.i.i.for.inc69.i.i_crit_edge ], [ %found.08.i.i, %land.lhs.true42.i.i.for.inc69.i.i_crit_edge ], [ %found.08.i.i, %if.then.i.i.for.inc69.i.i_crit_edge ], [ %fp.010.i.i, %if.end25.i.i.for.inc69.i.i_crit_edge ], [ %fp.010.i.i, %land.lhs.true57.i.i.for.inc69.i.i_crit_edge ], [ %fp.010.i.i, %land.lhs.true50.i.i.for.inc69.i.i_crit_edge ], [ %spec.select1.i.i, %if.end63.i.i ], [ %found.08.i.i, %for.cond15.preheader.i.i.for.inc69.i.i_crit_edge ], [ %found.08.i.i, %for.cond15.i.i.for.inc69.i.i_crit_edge ]
  %51 = ptrtoint ptr %fp.010.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %fp.0.i.i = load ptr, ptr %fp.010.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %fp.0.i.i, %fmt_list.i
  br i1 %cmp.not.i.i, label %find_substream_format.exit, label %for.inc69.i.i.if.then.i.i_crit_edge

for.inc69.i.i.if.then.i.i_crit_edge:              ; preds = %for.inc69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

find_substream_format.exit:                       ; preds = %for.inc69.i.i
  %tobool3.not = icmp eq ptr %found.1.i.i, null
  br i1 %tobool3.not, label %find_substream_format.exit.do.body_crit_edge, label %if.end16

find_substream_format.exit.do.body_crit_edge:     ; preds = %find_substream_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %find_substream_format.exit.do.body_crit_edge, %params_format.exit.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_hw_params, %if.then9)) #8
          to label %stop_pipeline [label %if.then9], !srcloc !80

if.then9:                                         ; preds = %do.body
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then9.if.then.i.i164_crit_edge

if.then9.if.then.i.i164_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i164

if.then.i.i164:                                   ; preds = %for.inc.i.i.if.then.i.i164_crit_edge, %if.then9.if.then.i.i164_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.then9.if.then.i.i164_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i164_crit_edge ]
  %.lcssa.i.i = phi i32 [ %55, %if.then9.if.then.i.i164_crit_edge ], [ %58, %for.inc.i.i.if.then.i.i164_crit_edge ]
  %56 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !82
  %add.i.i = or i32 %56, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then9
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.1.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i164_crit_edge

for.inc.i.i.if.then.i.i164_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i164

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i164
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i164 ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call12 = tail call ptr @snd_pcm_format_name(i32 noundef %retval.0.i.i) #8
  %59 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i7.i, align 4
  %61 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_hw_params.__UNIQUE_ID_ddebug243, ptr noundef %dev10, ptr noundef nonnull @.str.16, ptr noundef %call12, i32 noundef %60, i32 noundef %62) #8
  br label %if.then95

if.end16:                                         ; preds = %find_substream_format.exit
  %implicit_fb = getelementptr inbounds %struct.audioformat, ptr %found.1.i.i, i32 0, i32 13
  %63 = ptrtoint ptr %implicit_fb to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %implicit_fb, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool17.not = icmp eq i8 %64, 0
  br i1 %tobool17.not, label %if.end16.if.end51_crit_edge, label %if.then18

if.end16.if.end51_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then18:                                        ; preds = %if.end16
  %stream19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %65 = ptrtoint ptr %stream19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stream19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool20.not = icmp eq i32 %66, 0
  %lnot.ext22 = zext i1 %tobool20.not to i32
  %call23 = tail call ptr @snd_usb_find_implicit_fb_sync_format(ptr noundef %7, ptr noundef nonnull %found.1.i.i, ptr noundef %hw_params, i32 noundef %lnot.ext22) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.body26, label %if.then18.if.end51_crit_edge

if.then18.if.end51_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body26:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_hw_params.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_hw_params, %if.then38)) #8
          to label %stop_pipeline [label %if.then38], !srcloc !80

if.then38:                                        ; preds = %do.body26
  %dev39 = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 1
  %67 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev39, align 4
  %dev40 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  %sync_ep = getelementptr inbounds %struct.audioformat, ptr %found.1.i.i, i32 0, i32 14
  %69 = ptrtoint ptr %sync_ep to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sync_ep, align 8
  %conv = zext i8 %70 to i32
  %sync_iface = getelementptr inbounds %struct.audioformat, ptr %found.1.i.i, i32 0, i32 15
  %71 = ptrtoint ptr %sync_iface to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sync_iface, align 1
  %conv41 = zext i8 %72 to i32
  %sync_altsetting = getelementptr inbounds %struct.audioformat, ptr %found.1.i.i, i32 0, i32 16
  %73 = ptrtoint ptr %sync_altsetting to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sync_altsetting, align 2
  %conv42 = zext i8 %74 to i32
  %75 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i168 = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i168, label %for.inc.i.i175, label %if.then38.if.then.i.i172_crit_edge

if.then38.if.then.i.i172_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i172

if.then.i.i172:                                   ; preds = %for.inc.i.i175.if.then.i.i172_crit_edge, %if.then38.if.then.i.i172_crit_edge
  %i.09.lcssa.i.i169 = phi i32 [ 0, %if.then38.if.then.i.i172_crit_edge ], [ 32, %for.inc.i.i175.if.then.i.i172_crit_edge ]
  %.lcssa.i.i170 = phi i32 [ %76, %if.then38.if.then.i.i172_crit_edge ], [ %79, %for.inc.i.i175.if.then.i.i172_crit_edge ]
  %77 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i170, i1 true) #8, !range !82
  %add.i.i171 = or i32 %77, %i.09.lcssa.i.i169
  br label %params_format.exit177

for.inc.i.i175:                                   ; preds = %if.then38
  %arrayidx.1.i.i173 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx.1.i.i173 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.1.i.i173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.1.i.i174 = icmp eq i32 %79, 0
  br i1 %tobool.not.1.i.i174, label %for.inc.i.i175.params_format.exit177_crit_edge, label %for.inc.i.i175.if.then.i.i172_crit_edge

for.inc.i.i175.if.then.i.i172_crit_edge:          ; preds = %for.inc.i.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i172

for.inc.i.i175.params_format.exit177_crit_edge:   ; preds = %for.inc.i.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit177

params_format.exit177:                            ; preds = %for.inc.i.i175.params_format.exit177_crit_edge, %if.then.i.i172
  %retval.0.i.i176 = phi i32 [ %add.i.i171, %if.then.i.i172 ], [ 0, %for.inc.i.i175.params_format.exit177_crit_edge ]
  %call44 = tail call ptr @snd_pcm_format_name(i32 noundef %retval.0.i.i176) #8
  %80 = ptrtoint ptr %arrayidx.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i7.i, align 4
  %82 = ptrtoint ptr %arrayidx.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.i8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_hw_params.__UNIQUE_ID_ddebug244, ptr noundef %dev40, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv41, i32 noundef %conv42, ptr noundef %call44, i32 noundef %81, i32 noundef %83) #8
  br label %if.then95

if.end51:                                         ; preds = %if.then18.if.end51_crit_edge, %if.end16.if.end51_crit_edge
  %sync_fmt.0 = phi ptr [ %call23, %if.then18.if.end51_crit_edge ], [ %found.1.i.i, %if.end16.if.end51_crit_edge ]
  %call52 = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp = icmp slt i32 %call52, 0
  br i1 %cmp, label %if.end51.if.then95_crit_edge, label %if.end55

if.end51.if.then95_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

if.end55:                                         ; preds = %if.end51
  %str_pd.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 6
  %84 = ptrtoint ptr %str_pd.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %str_pd.i, align 8
  %tobool.not.i = icmp eq ptr %85, null
  br i1 %tobool.not.i, label %if.end55.if.end60_crit_edge, label %if.end.i

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end.i:                                         ; preds = %if.end55
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %call.i = tail call i32 @snd_usb_power_domain_set(ptr noundef %89, ptr noundef nonnull %85, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_usb_pcm_change_state.exit, label %if.end.i.if.end60_crit_edge

if.end.i.if.end60_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

snd_usb_pcm_change_state.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 1
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  %92 = ptrtoint ptr %str_pd.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %str_pd.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4.i, ptr noundef nonnull @.str.13, i32 noundef %95, i32 noundef 0, i32 noundef %call.i) #11
  br label %if.then91

if.end60:                                         ; preds = %if.end.i.if.end60_crit_edge, %if.end55.if.end60_crit_edge
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %96 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data_endpoint, align 8
  %tobool61.not = icmp eq ptr %97, null
  br i1 %tobool61.not, label %if.end60.if.end67_crit_edge, label %if.then62

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then62:                                        ; preds = %if.end60
  %call64 = tail call zeroext i1 @snd_usb_endpoint_compatible(ptr noundef %7, ptr noundef nonnull %97, ptr noundef nonnull %found.1.i.i, ptr noundef %hw_params) #8
  br i1 %call64, label %if.then62.if.end92_crit_edge, label %if.end66

if.then62.if.end92_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.end66:                                         ; preds = %if.then62
  %98 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data_endpoint, align 8
  %tobool.not.i181 = icmp eq ptr %99, null
  br i1 %tobool.not.i181, label %if.end66.if.end.i182_crit_edge, label %if.then.i

if.end66.if.end.i182_crit_edge:                   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i182

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %7, ptr noundef nonnull %99, ptr noundef null) #8
  %100 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef %101) #8
  %102 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %data_endpoint, align 8
  br label %if.end.i182

if.end.i182:                                      ; preds = %if.then.i, %if.end66.if.end.i182_crit_edge
  %sync_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %103 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sync_endpoint.i, align 4
  %tobool4.not.i = icmp eq ptr %104, null
  br i1 %tobool4.not.i, label %if.end.i182.if.end67_crit_edge, label %if.then5.i

if.end.i182.if.end67_crit_edge:                   ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then5.i:                                       ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef nonnull %104) #8
  %105 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %sync_endpoint.i, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then5.i, %if.end.i182.if.end67_crit_edge, %if.end60.if.end67_crit_edge
  %call68 = tail call ptr @snd_usb_endpoint_open(ptr noundef %7, ptr noundef nonnull %found.1.i.i, ptr noundef %hw_params, i1 noundef zeroext false) #8
  %106 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call68, ptr %data_endpoint, align 8
  %tobool71.not = icmp eq ptr %call68, null
  br i1 %tobool71.not, label %if.end67.if.then91_crit_edge, label %if.end73

if.end67.if.then91_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91

if.end73:                                         ; preds = %if.end67
  %sync_ep74 = getelementptr inbounds %struct.audioformat, ptr %found.1.i.i, i32 0, i32 14
  %107 = ptrtoint ptr %sync_ep74 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %sync_ep74, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool75.not = icmp eq i8 %108, 0
  br i1 %tobool75.not, label %if.end73.unlock_crit_edge, label %if.then76

if.end73.unlock_crit_edge:                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then76:                                        ; preds = %if.end73
  %cmp77 = icmp eq ptr %found.1.i.i, %sync_fmt.0
  %call79 = tail call ptr @snd_usb_endpoint_open(ptr noundef %7, ptr noundef nonnull %sync_fmt.0, ptr noundef %hw_params, i1 noundef zeroext %cmp77) #8
  %sync_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %109 = ptrtoint ptr %sync_endpoint to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call79, ptr %sync_endpoint, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.then76.if.then91_crit_edge, label %if.end83

if.then76.if.then91_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91

if.end83:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %7, ptr noundef %111, ptr noundef nonnull %call79) #8
  br label %unlock

unlock:                                           ; preds = %if.end83, %if.end73.unlock_crit_edge
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %112 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %found.1.i.i, ptr %cur_audiofmt, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %call88 = tail call fastcc i32 @configure_endpoints(ptr noundef %7, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %unlock.if.then91_crit_edge, label %unlock.if.end92_crit_edge

unlock.if.end92_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

unlock.if.then91_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then91

if.then91:                                        ; preds = %unlock.if.then91_crit_edge, %if.then76.if.then91_crit_edge, %if.end67.if.then91_crit_edge, %snd_usb_pcm_change_state.exit
  %ret.0203 = phi i32 [ %call88, %unlock.if.then91_crit_edge ], [ -22, %if.then76.if.then91_crit_edge ], [ -22, %if.end67.if.then91_crit_edge ], [ %call.i, %snd_usb_pcm_change_state.exit ]
  %data_endpoint.i183 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %113 = ptrtoint ptr %data_endpoint.i183 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data_endpoint.i183, align 8
  %tobool.not.i184 = icmp eq ptr %114, null
  br i1 %tobool.not.i184, label %if.then91.if.end.i188_crit_edge, label %if.then.i185

if.then91.if.end.i188_crit_edge:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i188

if.then.i185:                                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %7, ptr noundef nonnull %114, ptr noundef null) #8
  %115 = ptrtoint ptr %data_endpoint.i183 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %data_endpoint.i183, align 8
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef %116) #8
  %117 = ptrtoint ptr %data_endpoint.i183 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %data_endpoint.i183, align 8
  br label %if.end.i188

if.end.i188:                                      ; preds = %if.then.i185, %if.then91.if.end.i188_crit_edge
  %sync_endpoint.i186 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %118 = ptrtoint ptr %sync_endpoint.i186 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sync_endpoint.i186, align 4
  %tobool4.not.i187 = icmp eq ptr %119, null
  br i1 %tobool4.not.i187, label %if.end.i188.if.end92_crit_edge, label %if.then5.i189

if.end.i188.if.end92_crit_edge:                   ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then5.i189:                                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef nonnull %119) #8
  %120 = ptrtoint ptr %sync_endpoint.i186 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %sync_endpoint.i186, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then5.i189, %if.end.i188.if.end92_crit_edge, %unlock.if.end92_crit_edge, %if.then62.if.end92_crit_edge
  %ret.0202 = phi i32 [ %call88, %unlock.if.end92_crit_edge ], [ %ret.0203, %if.end.i188.if.end92_crit_edge ], [ %ret.0203, %if.then5.i189 ], [ 0, %if.then62.if.end92_crit_edge ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %7) #8
  br label %stop_pipeline

stop_pipeline:                                    ; preds = %if.end92, %do.body26, %do.body
  %ret.1 = phi i32 [ %ret.0202, %if.end92 ], [ -22, %do.body ], [ -22, %do.body26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp93 = icmp slt i32 %ret.1, 0
  br i1 %cmp93, label %stop_pipeline.if.then95_crit_edge, label %stop_pipeline.cleanup_crit_edge

stop_pipeline.cleanup_crit_edge:                  ; preds = %stop_pipeline
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

stop_pipeline.if.then95_crit_edge:                ; preds = %stop_pipeline
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

if.then95:                                        ; preds = %stop_pipeline.if.then95_crit_edge, %if.end51.if.then95_crit_edge, %params_format.exit177, %params_format.exit
  %ret.1209 = phi i32 [ %ret.1, %stop_pipeline.if.then95_crit_edge ], [ -22, %params_format.exit177 ], [ -22, %params_format.exit ], [ %call52, %if.end51.if.then95_crit_edge ]
  tail call void @snd_media_stop_pipeline(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %stop_pipeline.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.1209, %if.then95 ], [ %ret.1, %stop_pipeline.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  tail call void @snd_media_stop_pipeline(ptr noundef %3) #8
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cur_audiofmt, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 22
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.i.thread

if.end.i:                                         ; preds = %if.then
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.stop_endpoints.exit.thread_crit_edge

if.end.i.stop_endpoints.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_endpoints.exit.thread

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.thread:                                  ; preds = %if.then
  %sync_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sync_endpoint.i, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %10, i1 noundef zeroext false) #8
  %call3.i25 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i25)
  %tobool4.not.i26 = icmp eq i32 %call3.i25, 0
  br i1 %tobool4.not.i26, label %if.end.i.thread.if.then4_crit_edge, label %if.end.i.thread.stop_endpoints.exit.thread_crit_edge

if.end.i.thread.stop_endpoints.exit.thread_crit_edge: ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_endpoints.exit.thread

if.end.i.thread.if.then4_crit_edge:               ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

stop_endpoints.exit.thread:                       ; preds = %if.end.i.thread.stop_endpoints.exit.thread_crit_edge, %if.end.i.stop_endpoints.exit.thread_crit_edge
  %data_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %11 = ptrtoint ptr %data_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data_endpoint.i, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %12, i1 noundef zeroext false) #8
  br label %if.then4

if.then4:                                         ; preds = %stop_endpoints.exit.thread, %if.end.i.thread.if.then4_crit_edge
  %sync_endpoint.i15 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %13 = ptrtoint ptr %sync_endpoint.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sync_endpoint.i15, align 4
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %14) #8
  %data_endpoint.i16 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %15 = ptrtoint ptr %data_endpoint.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_endpoint.i16, align 8
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %16) #8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.end.i.if.end_crit_edge
  %data_endpoint.i17 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %data_endpoint.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_endpoint.i17, align 8
  %tobool.not.i18 = icmp eq ptr %18, null
  br i1 %tobool.not.i18, label %if.end.if.end.i22_crit_edge, label %if.then.i19

if.end.if.end.i22_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i22

if.then.i19:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_usb_endpoint_set_sync(ptr noundef %7, ptr noundef nonnull %18, ptr noundef null) #8
  %19 = ptrtoint ptr %data_endpoint.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data_endpoint.i17, align 8
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef %20) #8
  %21 = ptrtoint ptr %data_endpoint.i17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data_endpoint.i17, align 8
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i19, %if.end.if.end.i22_crit_edge
  %sync_endpoint.i20 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %22 = ptrtoint ptr %sync_endpoint.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sync_endpoint.i20, align 4
  %tobool4.not.i21 = icmp eq ptr %23, null
  br i1 %tobool4.not.i21, label %if.end.i22.close_endpoints.exit_crit_edge, label %if.then5.i23

if.end.i22.close_endpoints.exit_crit_edge:        ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %close_endpoints.exit

if.then5.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_usb_endpoint_close(ptr noundef %7, ptr noundef nonnull %23) #8
  %24 = ptrtoint ptr %sync_endpoint.i20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sync_endpoint.i20, align 4
  br label %close_endpoints.exit

close_endpoints.exit:                             ; preds = %if.then5.i23, %if.end.i22.close_endpoints.exit_crit_edge
  tail call void @snd_usb_unlock_shutdown(ptr noundef %7) #8
  br label %if.end5

if.end5:                                          ; preds = %close_endpoints.exit, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call = tail call i32 @snd_usb_lock_shutdown(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_endpoint, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !83

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 624, i32 noundef 9, ptr noundef null) #8
  br label %unlock

if.end27:                                         ; preds = %if.end
  %call28 = tail call fastcc i32 @configure_endpoints(ptr noundef %7, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.unlock_crit_edge, label %if.end31

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end31:                                         ; preds = %if.end27
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %13, %11
  %div1.i = lshr i32 %mul.i, 3
  %buffer_bytes = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i, ptr %buffer_bytes, align 8
  %inflight_bytes = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 15
  %15 = ptrtoint ptr %inflight_bytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %inflight_bytes, align 4
  %hwptr_done = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 16
  %16 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %hwptr_done, align 8
  %transfer_done = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 17
  %17 = ptrtoint ptr %transfer_done to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %transfer_done, align 4
  %last_frame_number = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 28
  %18 = ptrtoint ptr %last_frame_number to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %last_frame_number, align 8
  %period_elapsed_pending = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %period_elapsed_pending to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %period_elapsed_pending, align 4
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %delay, align 4
  %direction.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  br i1 %cmp.i, label %if.end31.lowlatency_playback_available.exit_crit_edge, label %if.end.i

if.end31.lowlatency_playback_available.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %lowlatency_playback_available.exit

if.end.i:                                         ; preds = %if.end31
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %lowlatency.i = getelementptr inbounds %struct.snd_usb_audio, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %lowlatency.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lowlatency.i, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.end.i.lowlatency_playback_available.exit_crit_edge, label %if.end3.i

if.end.i.lowlatency_playback_available.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lowlatency_playback_available.exit

if.end3.i:                                        ; preds = %if.end.i
  %stop_threshold.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 30
  %29 = ptrtoint ptr %stop_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_threshold.i.i, align 4
  %31 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i.not.i = icmp ugt i32 %30, %32
  br i1 %cmp.i.not.i, label %if.end3.i.lowlatency_playback_available.exit_crit_edge, label %if.end6.i

if.end3.i.lowlatency_playback_available.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lowlatency_playback_available.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data_endpoint, align 8
  %call7.i = tail call i32 @snd_usb_endpoint_implicit_feedback_sink(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br label %lowlatency_playback_available.exit

lowlatency_playback_available.exit:               ; preds = %if.end6.i, %if.end3.i.lowlatency_playback_available.exit_crit_edge, %if.end.i.lowlatency_playback_available.exit_crit_edge, %if.end31.lowlatency_playback_available.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end31.lowlatency_playback_available.exit_crit_edge ], [ false, %if.end.i.lowlatency_playback_available.exit_crit_edge ], [ false, %if.end3.i.lowlatency_playback_available.exit_crit_edge ], [ %tobool8.not.i, %if.end6.i ]
  %lowlatency_playback = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 31
  %frombool = zext i1 %retval.0.i to i8
  %35 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool, ptr %lowlatency_playback, align 1
  %stream35 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %36 = ptrtoint ptr %stream35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stream35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp36 = icmp ne i32 %37, 0
  %brmerge = select i1 %cmp36, i1 true, i1 %retval.0.i
  br i1 %brmerge, label %lowlatency_playback_available.exit.unlock_crit_edge, label %if.then39

lowlatency_playback_available.exit.unlock_crit_edge: ; preds = %lowlatency_playback_available.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then39:                                        ; preds = %lowlatency_playback_available.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call fastcc i32 @start_endpoints(ptr noundef %3)
  br label %unlock

unlock:                                           ; preds = %if.then39, %lowlatency_playback_available.exit.unlock_crit_edge, %if.end27.unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ %call28, %if.end27.unlock_crit_edge ], [ %call40, %if.then39 ], [ %call28, %lowlatency_playback_available.exit.unlock_crit_edge ]
  tail call void @snd_usb_unlock_shutdown(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_substream_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb21_crit_edge
    i32 0, label %entry.sw.bb21_crit_edge121
    i32 3, label %sw.bb55
  ]

entry.sw.bb21_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %trigger_tstamp_pending_update = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 30
  %5 = ptrtoint ptr %trigger_tstamp_pending_update to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %trigger_tstamp_pending_update, align 8
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %7, ptr noundef nonnull @prepare_playback_urb, ptr noundef nonnull @retire_playback_urb, ptr noundef %3) #8
  %lowlatency_playback = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lowlatency_playback, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %sw.bb1.if.end11_crit_edge

sw.bb1.if.end11_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %sw.bb1
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %stop_threshold.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %stop_threshold.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stop_threshold.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i.not = icmp ugt i32 %13, %15
  br i1 %cmp.i.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %lowlatency_playback, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call6 = tail call fastcc i32 @start_endpoints(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef null) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %sw.bb1.if.end11_crit_edge
  %running = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %running, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %running, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_substream_playback_trigger, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !80

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_audiofmt, align 4
  %iface = getelementptr inbounds %struct.audioformat, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iface, align 8
  %conv = zext i8 %25 to i32
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %23, i32 0, i32 7
  %26 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %altsetting, align 1
  %conv19 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug268, ptr noundef %dev17, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv19) #8
  br label %cleanup

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge121
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 37
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %status, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp23 = icmp eq i32 %31, 5
  %flags.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 22
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb21.if.end.i_crit_edge, label %if.then.i

sw.bb21.if.end.i_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %sync_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %32 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sync_endpoint.i, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %33, i1 noundef zeroext %cmp23) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb21.if.end.i_crit_edge
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.stop_endpoints.exit_crit_edge, label %if.then5.i

if.end.i.stop_endpoints.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_endpoints.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %34 = ptrtoint ptr %data_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data_endpoint.i, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %35, i1 noundef zeroext %cmp23) #8
  br label %stop_endpoints.exit

stop_endpoints.exit:                              ; preds = %if.then5.i, %if.end.i.stop_endpoints.exit_crit_edge
  %data_endpoint26 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %36 = ptrtoint ptr %data_endpoint26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data_endpoint26, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %37, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %running27 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 12
  %38 = ptrtoint ptr %running27 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load28 = load i8, ptr %running27, align 8
  %bf.clear29 = and i8 %bf.load28, 127
  store i8 %bf.clear29, ptr %running27, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_substream_playback_trigger, %if.then43)) #8
          to label %cleanup [label %if.then43], !srcloc !80

if.then43:                                        ; preds = %stop_endpoints.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev44, align 4
  %dev45 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %cur_audiofmt46 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %cur_audiofmt46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur_audiofmt46, align 4
  %iface47 = getelementptr inbounds %struct.audioformat, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %iface47 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %iface47, align 8
  %conv48 = zext i8 %44 to i32
  %altsetting50 = getelementptr inbounds %struct.audioformat, ptr %42, i32 0, i32 7
  %45 = ptrtoint ptr %altsetting50 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %altsetting50, align 1
  %conv51 = zext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug269, ptr noundef %dev45, ptr noundef nonnull @.str.20, i32 noundef %conv48, i32 noundef %conv51) #8
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data_endpoint56 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %47 = ptrtoint ptr %data_endpoint56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data_endpoint56, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %48, ptr noundef null, ptr noundef nonnull @retire_playback_urb, ptr noundef %3) #8
  %running57 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 12
  %49 = ptrtoint ptr %running57 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load58 = load i8, ptr %running57, align 8
  %bf.clear59 = and i8 %bf.load58, 127
  store i8 %bf.clear59, ptr %running57, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_substream_playback_trigger, %if.then73)) #8
          to label %cleanup [label %if.then73], !srcloc !80

if.then73:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %dev74 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev74, align 4
  %dev75 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  %cur_audiofmt76 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %cur_audiofmt76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_audiofmt76, align 4
  %iface77 = getelementptr inbounds %struct.audioformat, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %iface77 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %iface77, align 8
  %conv78 = zext i8 %55 to i32
  %altsetting80 = getelementptr inbounds %struct.audioformat, ptr %53, i32 0, i32 7
  %56 = ptrtoint ptr %altsetting80 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %altsetting80, align 1
  %conv81 = zext i8 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug270, ptr noundef %dev75, ptr noundef nonnull @.str.21, i32 noundef %conv78, i32 noundef %conv81) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %sw.bb55, %if.then43, %stop_endpoints.exit, %if.then16, %if.end11, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.then16 ], [ 0, %if.then43 ], [ 0, %if.then73 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end11 ], [ 0, %stop_endpoints.exit ], [ 0, %sw.bb55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_sync_stop(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %sync_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_endpoint.i, align 4
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %5) #8
  %data_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %data_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_endpoint.i, align 8
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %7, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #8
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %hwptr_done2 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %hwptr_done2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwptr_done2, align 8
  %direction.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %inflight_bytes.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %inflight_bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inflight_bytes.i, align 4
  %mul.i.i = shl i32 %15, 3
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i.i, align 8
  %div.i.i = udiv i32 %mul.i.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %mul.i.i)
  %tobool.not.i = icmp ugt i32 %17, %mul.i.i
  br i1 %tobool.not.i, label %if.then.i.snd_usb_pcm_delay.exit_crit_edge, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i.snd_usb_pcm_delay.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_usb_pcm_delay.exit

if.else.i:                                        ; preds = %if.end
  %running.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %running.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.else.i.snd_usb_pcm_delay.exit_crit_edge, label %if.else.i.if.end5.i_crit_edge

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.else.i.snd_usb_pcm_delay.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_usb_pcm_delay.exit

if.end5.i:                                        ; preds = %if.else.i.if.end5.i_crit_edge, %if.then.i.if.end5.i_crit_edge
  %queued.0.i = phi i32 [ %div.i.i, %if.then.i.if.end5.i_crit_edge ], [ -1, %if.else.i.if.end5.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call6.i = tail call i32 @usb_get_current_frame_number(ptr noundef %20) #8
  %last_frame_number.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 28
  %21 = ptrtoint ptr %last_frame_number.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_frame_number.i, align 8
  %sub.i = sub i32 %call6.i, %22
  %and.i = and i32 %sub.i, 255
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate.i, align 4
  %mul.i = mul i32 %and.i, %24
  %div.i = udiv i32 %mul.i, 1000
  %25 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.i = icmp eq i32 %26, 0
  %sub10.i = sub i32 %queued.0.i, %div.i
  %27 = tail call i32 @llvm.smax.i32(i32 %sub10.i, i32 0) #8
  %est_delay.0.i = select i1 %cmp8.i, i32 %27, i32 %div.i
  br label %snd_usb_pcm_delay.exit

snd_usb_pcm_delay.exit:                           ; preds = %if.end5.i, %if.else.i.snd_usb_pcm_delay.exit_crit_edge, %if.then.i.snd_usb_pcm_delay.exit_crit_edge
  %retval.0.i = phi i32 [ %est_delay.0.i, %if.end5.i ], [ 0, %if.then.i.snd_usb_pcm_delay.exit_crit_edge ], [ 0, %if.else.i.snd_usb_pcm_delay.exit_crit_edge ]
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %delay, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %mul.i15 = shl i32 %11, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %29 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frame_bits.i, align 8
  %div.i16 = udiv i32 %mul.i15, %30
  br label %cleanup

cleanup:                                          ; preds = %snd_usb_pcm_delay.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i16, %snd_usb_pcm_delay.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_pcm_playback_ack(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lowlatency_playback = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lowlatency_playback, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %running = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_endpoint, align 8
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %active_mask = getelementptr inbounds %struct.snd_usb_endpoint, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %active_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_usb_queue_pending_output_urbs(ptr noundef nonnull %8, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_autoresume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_media_stream_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_rate(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %fp.0158 = load ptr, ptr %fmt_list, align 4
  %cmp.not159 = icmp eq ptr %fp.0158, %fmt_list
  br i1 %cmp.not159, label %entry.cleanup.sink.split.i_crit_edge, label %for.body.lr.ph

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i104.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i105.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max18.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %speed.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 23
  %max54.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 1
  %openmax62.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %for.body.lr.ph
  %fp.0166 = phi ptr [ %fp.0158, %for.body.lr.ph ], [ %fp.0, %for.inc65.for.body_crit_edge ]
  %rmin.0163 = phi i32 [ -1, %for.body.lr.ph ], [ %rmin.3, %for.inc65.for.body_crit_edge ]
  %rmax.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %rmax.3, %for.inc65.for.body_crit_edge ]
  %formats.i = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 1
  %7 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %formats.i, align 8
  %conv.i = trunc i64 %8 to i32
  %9 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i105.i, align 4
  %and.i.i = and i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_mask_empty.exit.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i:                            ; preds = %for.body
  %shr.i = lshr i64 %8, 32
  %conv5.i = trunc i64 %shr.i to i32
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i, align 4
  %and.1.i.i = and i32 %12, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.not.i, label %snd_mask_empty.exit.i.for.inc65_crit_edge, label %snd_mask_empty.exit.i.if.end.i_crit_edge

snd_mask_empty.exit.i.if.end.i_crit_edge:         ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i.for.inc65_crit_edge:        ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

if.end.i:                                         ; preds = %snd_mask_empty.exit.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %channels.i = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 2
  %13 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channels.i, align 8
  %15 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i104.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i = icmp ult i32 %14, %16
  br i1 %cmp.i, label %if.end.i.for.inc65_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc65_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

lor.lhs.false.i:                                  ; preds = %if.end.i
  %17 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp11.i = icmp ugt i32 %14, %18
  br i1 %cmp11.i, label %lor.lhs.false.i.for.inc65_crit_edge, label %if.end17.i

lor.lhs.false.i.for.inc65_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 22
  %19 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate_min.i, align 8
  %21 = ptrtoint ptr %max18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp19.i = icmp ugt i32 %20, %22
  br i1 %cmp19.i, label %if.end17.i.for.inc65_crit_edge, label %lor.lhs.false21.i

if.end17.i.for.inc65_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

lor.lhs.false21.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp24.i = icmp eq i32 %20, %22
  br i1 %cmp24.i, label %land.lhs.true.i, label %lor.lhs.false21.i.if.end31.i_crit_edge

lor.lhs.false21.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false21.i
  %23 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %openmax.i, align 4
  %24 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not.i = icmp eq i8 %24, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true.i.for.inc65_crit_edge

land.lhs.true.i.for.inc65_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %lor.lhs.false21.i.if.end31.i_crit_edge
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 23
  %25 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rate_max.i, align 4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp33.i = icmp ult i32 %26, %28
  br i1 %cmp33.i, label %if.end31.i.for.inc65_crit_edge, label %lor.lhs.false35.i

if.end31.i.for.inc65_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

lor.lhs.false35.i:                                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp38.i = icmp eq i32 %26, %28
  br i1 %cmp38.i, label %land.lhs.true40.i, label %lor.lhs.false35.i.if.end49.i_crit_edge

lor.lhs.false35.i.if.end49.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

land.lhs.true40.i:                                ; preds = %lor.lhs.false35.i
  %29 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load41.i = load i8, ptr %openmax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41.i)
  %tobool44.not.i = icmp sgt i8 %bf.load41.i, -1
  br i1 %tobool44.not.i, label %land.lhs.true40.i.if.end49.i_crit_edge, label %land.lhs.true40.i.for.inc65_crit_edge

land.lhs.true40.i.for.inc65_crit_edge:            ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

land.lhs.true40.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true40.i.if.end49.i_crit_edge, %lor.lhs.false35.i.if.end49.i_crit_edge
  %30 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp50.not.i = icmp eq i32 %31, 2
  br i1 %cmp50.not.i, label %if.end49.i.if.end_crit_edge, label %if.then52.i

if.end49.i.if.end_crit_edge:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then52.i:                                      ; preds = %if.end49.i
  %datainterval.i = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 18
  %32 = ptrtoint ptr %datainterval.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %datainterval.i, align 4
  %conv53.i = zext i8 %33 to i32
  %mul.i = shl i32 125, %conv53.i
  %34 = ptrtoint ptr %max54.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %35)
  %cmp55.i = icmp ugt i32 %mul.i, %35
  br i1 %cmp55.i, label %if.then52.i.for.inc65_crit_edge, label %lor.lhs.false57.i

if.then52.i.for.inc65_crit_edge:                  ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

lor.lhs.false57.i:                                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %35)
  %cmp59.i = icmp eq i32 %mul.i, %35
  br i1 %cmp59.i, label %land.lhs.true61.i, label %lor.lhs.false57.i.if.end_crit_edge

lor.lhs.false57.i.if.end_crit_edge:               ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true61.i:                                ; preds = %lor.lhs.false57.i
  %36 = ptrtoint ptr %openmax62.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load63.i = load i8, ptr %openmax62.i, align 4
  %37 = and i8 %bf.load63.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool67.not.i = icmp eq i8 %37, 0
  br i1 %tobool67.not.i, label %land.lhs.true61.i.if.end_crit_edge, label %land.lhs.true61.i.for.inc65_crit_edge

land.lhs.true61.i.for.inc65_crit_edge:            ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

land.lhs.true61.i.if.end_crit_edge:               ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true61.i.if.end_crit_edge, %lor.lhs.false57.i.if.end_crit_edge, %if.end49.i.if.end_crit_edge
  %clock = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 26
  %38 = ptrtoint ptr %clock to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %clock, align 8
  %conv = zext i8 %39 to i32
  %call4 = tail call i32 @snd_usb_endpoint_get_clock_rate(ptr noundef %5, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end22, label %if.then7

if.then7:                                         ; preds = %if.end
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %call4)
  %cmp.i116 = icmp ugt i32 %41, %call4
  br i1 %cmp.i116, label %if.then7.for.inc65_crit_edge, label %lor.lhs.false.i117

if.then7.for.inc65_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

lor.lhs.false.i117:                               ; preds = %if.then7
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %call4)
  %cmp2.i = icmp eq i32 %41, %call4
  br i1 %cmp2.i, label %land.lhs.true.i120, label %lor.lhs.false.i117.lor.lhs.false3.i_crit_edge

lor.lhs.false.i117.lor.lhs.false3.i_crit_edge:    ; preds = %lor.lhs.false.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false3.i

land.lhs.true.i120:                               ; preds = %lor.lhs.false.i117
  %42 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i119 = load i8, ptr %openmax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i119)
  %tobool.not.i = icmp sgt i8 %bf.load.i119, -1
  br i1 %tobool.not.i, label %land.lhs.true.i120.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i120.for.inc65_crit_edge

land.lhs.true.i120.for.inc65_crit_edge:           ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

land.lhs.true.i120.lor.lhs.false3.i_crit_edge:    ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i120.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i117.lor.lhs.false3.i_crit_edge
  %43 = ptrtoint ptr %max18.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %call4)
  %cmp4.i = icmp ult i32 %44, %call4
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc65_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc65_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %call4)
  %cmp6.i = icmp eq i32 %44, %call4
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end11_crit_edge

lor.rhs.i.if.end11_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %45 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load7.i = load i8, ptr %openmax.i, align 4
  %46 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool9.not.not = icmp eq i8 %46, 0
  br i1 %tobool9.not.not, label %snd_interval_test.exit.if.end11_crit_edge, label %snd_interval_test.exit.for.inc65_crit_edge

snd_interval_test.exit.for.inc65_crit_edge:       ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

snd_interval_test.exit.if.end11_crit_edge:        ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %snd_interval_test.exit.if.end11_crit_edge, %lor.rhs.i.if.end11_crit_edge
  %47 = tail call i32 @llvm.umin.i32(i32 %rmin.0163, i32 %call4)
  %48 = tail call i32 @llvm.umax.i32(i32 %rmax.0160, i32 %call4)
  br label %for.inc65

if.end22:                                         ; preds = %if.end
  %rate_table = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 25
  %49 = ptrtoint ptr %rate_table to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rate_table, align 4
  %tobool23.not = icmp eq ptr %50, null
  br i1 %tobool23.not, label %if.end22.if.else_crit_edge, label %land.lhs.true

if.end22.if.else_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end22
  %nr_rates = getelementptr inbounds %struct.audioformat, ptr %fp.0166, i32 0, i32 24
  %51 = ptrtoint ptr %nr_rates to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr_rates, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool24.not = icmp eq i32 %52, 0
  br i1 %tobool24.not, label %land.lhs.true.if.else_crit_edge, label %for.cond26.preheader

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.cond26.preheader:                             ; preds = %land.lhs.true
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i, align 4
  br label %for.body30

for.body30:                                       ; preds = %snd_interval_test.exit140.for.body30_crit_edge, %for.cond26.preheader
  %rmin.1156 = phi i32 [ %rmin.0163, %for.cond26.preheader ], [ %rmin.2, %snd_interval_test.exit140.for.body30_crit_edge ]
  %rmax.1155 = phi i32 [ %rmax.0160, %for.cond26.preheader ], [ %rmax.2, %snd_interval_test.exit140.for.body30_crit_edge ]
  %i.0154 = phi i32 [ 0, %for.cond26.preheader ], [ %inc, %snd_interval_test.exit140.for.body30_crit_edge ]
  %arrayidx = getelementptr i32, ptr %50, i32 %i.0154
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i123 = icmp ugt i32 %54, %56
  br i1 %cmp.i123, label %for.body30.snd_interval_test.exit140_crit_edge, label %lor.lhs.false.i125

for.body30.snd_interval_test.exit140_crit_edge:   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_interval_test.exit140

lor.lhs.false.i125:                               ; preds = %for.body30
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp2.i124 = icmp eq i32 %54, %56
  br i1 %cmp2.i124, label %land.lhs.true.i129, label %lor.lhs.false.i125.lor.lhs.false3.i132_crit_edge

lor.lhs.false.i125.lor.lhs.false3.i132_crit_edge: ; preds = %lor.lhs.false.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false3.i132

land.lhs.true.i129:                               ; preds = %lor.lhs.false.i125
  %57 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i127 = load i8, ptr %openmax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i127)
  %tobool.not.i128 = icmp sgt i8 %bf.load.i127, -1
  br i1 %tobool.not.i128, label %land.lhs.true.i129.lor.lhs.false3.i132_crit_edge, label %land.lhs.true.i129.snd_interval_test.exit140_crit_edge

land.lhs.true.i129.snd_interval_test.exit140_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_interval_test.exit140

land.lhs.true.i129.lor.lhs.false3.i132_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false3.i132

lor.lhs.false3.i132:                              ; preds = %land.lhs.true.i129.lor.lhs.false3.i132_crit_edge, %lor.lhs.false.i125.lor.lhs.false3.i132_crit_edge
  %58 = ptrtoint ptr %max18.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %56)
  %cmp4.i131 = icmp ult i32 %59, %56
  br i1 %cmp4.i131, label %lor.lhs.false3.i132.snd_interval_test.exit140_crit_edge, label %lor.rhs.i134

lor.lhs.false3.i132.snd_interval_test.exit140_crit_edge: ; preds = %lor.lhs.false3.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_interval_test.exit140

lor.rhs.i134:                                     ; preds = %lor.lhs.false3.i132
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %56)
  %cmp6.i133 = icmp eq i32 %59, %56
  br i1 %cmp6.i133, label %land.rhs.i139, label %lor.rhs.i134.snd_interval_test.exit140_crit_edge

lor.rhs.i134.snd_interval_test.exit140_crit_edge: ; preds = %lor.rhs.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_interval_test.exit140

land.rhs.i139:                                    ; preds = %lor.rhs.i134
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load7.i136 = load i8, ptr %openmax.i, align 4
  %bf.lshr8.i137 = lshr i8 %bf.load7.i136, 6
  %bf.clear.i138 = and i8 %bf.lshr8.i137, 1
  %61 = xor i8 %bf.clear.i138, 1
  %62 = zext i8 %61 to i32
  br label %snd_interval_test.exit140

snd_interval_test.exit140:                        ; preds = %land.rhs.i139, %lor.rhs.i134.snd_interval_test.exit140_crit_edge, %lor.lhs.false3.i132.snd_interval_test.exit140_crit_edge, %land.lhs.true.i129.snd_interval_test.exit140_crit_edge, %for.body30.snd_interval_test.exit140_crit_edge
  %63 = phi i32 [ 0, %lor.lhs.false3.i132.snd_interval_test.exit140_crit_edge ], [ 0, %land.lhs.true.i129.snd_interval_test.exit140_crit_edge ], [ 0, %for.body30.snd_interval_test.exit140_crit_edge ], [ 1, %lor.rhs.i134.snd_interval_test.exit140_crit_edge ], [ %62, %land.rhs.i139 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool33.not = icmp eq i32 %63, 0
  %64 = tail call i32 @llvm.umin.i32(i32 %rmin.1156, i32 %56)
  %65 = tail call i32 @llvm.umax.i32(i32 %rmax.1155, i32 %56)
  %rmax.2 = select i1 %tobool33.not, i32 %rmax.1155, i32 %65
  %rmin.2 = select i1 %tobool33.not, i32 %rmin.1156, i32 %64
  %inc = add nuw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %52
  br i1 %exitcond.not, label %snd_interval_test.exit140.for.inc65_crit_edge, label %snd_interval_test.exit140.for.body30_crit_edge

snd_interval_test.exit140.for.body30_crit_edge:   ; preds = %snd_interval_test.exit140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

snd_interval_test.exit140.for.inc65_crit_edge:    ; preds = %snd_interval_test.exit140
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc65

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end22.if.else_crit_edge
  %66 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rate_min.i, align 8
  %68 = tail call i32 @llvm.umin.i32(i32 %rmin.0163, i32 %67)
  %69 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rate_max.i, align 4
  %71 = tail call i32 @llvm.umax.i32(i32 %rmax.0160, i32 %70)
  br label %for.inc65

for.inc65:                                        ; preds = %if.else, %snd_interval_test.exit140.for.inc65_crit_edge, %if.end11, %snd_interval_test.exit.for.inc65_crit_edge, %lor.lhs.false3.i.for.inc65_crit_edge, %land.lhs.true.i120.for.inc65_crit_edge, %if.then7.for.inc65_crit_edge, %land.lhs.true61.i.for.inc65_crit_edge, %if.then52.i.for.inc65_crit_edge, %land.lhs.true40.i.for.inc65_crit_edge, %if.end31.i.for.inc65_crit_edge, %land.lhs.true.i.for.inc65_crit_edge, %if.end17.i.for.inc65_crit_edge, %lor.lhs.false.i.for.inc65_crit_edge, %if.end.i.for.inc65_crit_edge, %snd_mask_empty.exit.i.for.inc65_crit_edge
  %rmax.3 = phi i32 [ %48, %if.end11 ], [ %rmax.0160, %snd_interval_test.exit.for.inc65_crit_edge ], [ %71, %if.else ], [ %rmax.0160, %snd_mask_empty.exit.i.for.inc65_crit_edge ], [ %rmax.0160, %if.end.i.for.inc65_crit_edge ], [ %rmax.0160, %lor.lhs.false.i.for.inc65_crit_edge ], [ %rmax.0160, %if.end17.i.for.inc65_crit_edge ], [ %rmax.0160, %land.lhs.true.i.for.inc65_crit_edge ], [ %rmax.0160, %if.end31.i.for.inc65_crit_edge ], [ %rmax.0160, %land.lhs.true40.i.for.inc65_crit_edge ], [ %rmax.0160, %if.then52.i.for.inc65_crit_edge ], [ %rmax.0160, %land.lhs.true61.i.for.inc65_crit_edge ], [ %rmax.0160, %lor.lhs.false3.i.for.inc65_crit_edge ], [ %rmax.0160, %land.lhs.true.i120.for.inc65_crit_edge ], [ %rmax.0160, %if.then7.for.inc65_crit_edge ], [ %rmax.2, %snd_interval_test.exit140.for.inc65_crit_edge ]
  %rmin.3 = phi i32 [ %47, %if.end11 ], [ %rmin.0163, %snd_interval_test.exit.for.inc65_crit_edge ], [ %68, %if.else ], [ %rmin.0163, %snd_mask_empty.exit.i.for.inc65_crit_edge ], [ %rmin.0163, %if.end.i.for.inc65_crit_edge ], [ %rmin.0163, %lor.lhs.false.i.for.inc65_crit_edge ], [ %rmin.0163, %if.end17.i.for.inc65_crit_edge ], [ %rmin.0163, %land.lhs.true.i.for.inc65_crit_edge ], [ %rmin.0163, %if.end31.i.for.inc65_crit_edge ], [ %rmin.0163, %land.lhs.true40.i.for.inc65_crit_edge ], [ %rmin.0163, %if.then52.i.for.inc65_crit_edge ], [ %rmin.0163, %land.lhs.true61.i.for.inc65_crit_edge ], [ %rmin.0163, %lor.lhs.false3.i.for.inc65_crit_edge ], [ %rmin.0163, %land.lhs.true.i120.for.inc65_crit_edge ], [ %rmin.0163, %if.then7.for.inc65_crit_edge ], [ %rmin.2, %snd_interval_test.exit140.for.inc65_crit_edge ]
  %72 = ptrtoint ptr %fp.0166 to i32
  call void @__asan_load4_noabort(i32 %72)
  %fp.0 = load ptr, ptr %fp.0166, align 4
  %cmp.not = icmp eq ptr %fp.0, %fmt_list
  br i1 %cmp.not, label %for.end71, label %for.inc65.for.body_crit_edge

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end71:                                        ; preds = %for.inc65
  call void @__sanitizer_cov_trace_cmp4(i32 %rmin.3, i32 %rmax.3)
  %cmp.i141 = icmp ugt i32 %rmin.3, %rmax.3
  br i1 %cmp.i141, label %for.end71.cleanup.sink.split.i_crit_edge, label %if.end.i142

for.end71.cleanup.sink.split.i_crit_edge:         ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i142:                                      ; preds = %for.end71
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %rmin.3)
  %cmp1.i = icmp ult i32 %74, %rmin.3
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i142.if.end7.i_crit_edge

if.end.i142.if.end7.i_crit_edge:                  ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %rmin.3, ptr %arrayidx.i, align 4
  %openmin.i143 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %76 = ptrtoint ptr %openmin.i143 to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load4.i = load i8, ptr %openmin.i143, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %openmin.i143, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end.i142.if.end7.i_crit_edge
  %changed.0.i = phi i32 [ 1, %if.then2.i ], [ 0, %if.end.i142.if.end7.i_crit_edge ]
  %max.i144 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %77 = ptrtoint ptr %max.i144 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max.i144, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %rmax.3)
  %cmp8.i = icmp ugt i32 %78, %rmax.3
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %max.i144 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %rmax.3, ptr %max.i144, align 4
  %openmax.i145 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %80 = ptrtoint ptr %openmax.i145 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load11.i = load i8, ptr %openmax.i145, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -65
  store i8 %bf.clear12.i, ptr %openmax.i145, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end14.i_crit_edge
  %changed.1.i = phi i32 [ 1, %if.then9.i ], [ %changed.0.i, %if.end7.i.if.end14.i_crit_edge ]
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i, align 4
  %83 = ptrtoint ptr %max.i144 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max.i144, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.i.i = icmp ugt i32 %82, %84
  br i1 %cmp.i.i, label %if.end14.i.cleanup.sink.split.i_crit_edge, label %lor.rhs.i.i

if.end14.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

lor.rhs.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp3.i.i = icmp eq i32 %82, %84
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge

lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply_hw_params_minmax.exit

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %openmin.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %85 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool.not.i146 = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool.not.i146, label %land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge, label %land.rhs.i.i.cleanup.sink.split.i_crit_edge

land.rhs.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply_hw_params_minmax.exit

cleanup.sink.split.i:                             ; preds = %land.rhs.i.i.cleanup.sink.split.i_crit_edge, %if.end14.i.cleanup.sink.split.i_crit_edge, %for.end71.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %empty.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %86 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load17.i = load i8, ptr %empty.i, align 4
  %bf.set19.i = or i8 %bf.load17.i, 16
  store i8 %bf.set19.i, ptr %empty.i, align 4
  br label %apply_hw_params_minmax.exit

apply_hw_params_minmax.exit:                      ; preds = %cleanup.sink.split.i, %land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge, %lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge
  %retval.0.i147 = phi i32 [ %changed.1.i, %lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge ], [ %changed.1.i, %land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i147
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_channels(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %fp.040 = load ptr, ptr %fmt_list, align 4
  %cmp.not41 = icmp eq ptr %fp.040, %fmt_list
  br i1 %cmp.not41, label %entry.cleanup.sink.split.i_crit_edge, label %for.body.lr.ph

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %arrayidx.i105.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i105.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max18.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %speed.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 23
  %max54.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 1
  %openmax62.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fp.044 = phi ptr [ %fp.040, %for.body.lr.ph ], [ %fp.0, %for.inc.for.body_crit_edge ]
  %rmin.043 = phi i32 [ -1, %for.body.lr.ph ], [ %rmin.1, %for.inc.for.body_crit_edge ]
  %rmax.042 = phi i32 [ 0, %for.body.lr.ph ], [ %rmax.1, %for.inc.for.body_crit_edge ]
  %formats.i = getelementptr inbounds %struct.audioformat, ptr %fp.044, i32 0, i32 1
  %5 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %formats.i, align 8
  %conv.i = trunc i64 %6 to i32
  %and.i.i = and i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_mask_empty.exit.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i:                            ; preds = %for.body
  %shr.i = lshr i64 %6, 32
  %conv5.i = trunc i64 %shr.i to i32
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i, align 4
  %and.1.i.i = and i32 %8, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.not.i, label %snd_mask_empty.exit.i.for.inc_crit_edge, label %snd_mask_empty.exit.i.if.end.i_crit_edge

snd_mask_empty.exit.i.if.end.i_crit_edge:         ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i.for.inc_crit_edge:          ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %snd_mask_empty.exit.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %channels.i = getelementptr inbounds %struct.audioformat, ptr %fp.044, i32 0, i32 2
  %9 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels.i, align 8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp ult i32 %10, %12
  br i1 %cmp.i, label %if.end.i.for.inc_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end.i
  %13 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp11.i = icmp ugt i32 %10, %14
  br i1 %cmp11.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end17.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fp.044, i32 0, i32 22
  %15 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate_min.i, align 8
  %17 = ptrtoint ptr %max18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp19.i = icmp ugt i32 %16, %18
  br i1 %cmp19.i, label %if.end17.i.for.inc_crit_edge, label %lor.lhs.false21.i

if.end17.i.for.inc_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false21.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp24.i = icmp eq i32 %16, %18
  br i1 %cmp24.i, label %land.lhs.true.i, label %lor.lhs.false21.i.if.end31.i_crit_edge

lor.lhs.false21.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false21.i
  %19 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %openmax.i, align 4
  %20 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not.i = icmp eq i8 %20, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %lor.lhs.false21.i.if.end31.i_crit_edge
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %fp.044, i32 0, i32 23
  %21 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate_max.i, align 4
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp33.i = icmp ult i32 %22, %24
  br i1 %cmp33.i, label %if.end31.i.for.inc_crit_edge, label %lor.lhs.false35.i

if.end31.i.for.inc_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false35.i:                                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp38.i = icmp eq i32 %22, %24
  br i1 %cmp38.i, label %land.lhs.true40.i, label %lor.lhs.false35.i.if.end49.i_crit_edge

lor.lhs.false35.i.if.end49.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

land.lhs.true40.i:                                ; preds = %lor.lhs.false35.i
  %25 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load41.i = load i8, ptr %openmax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41.i)
  %tobool44.not.i = icmp sgt i8 %bf.load41.i, -1
  br i1 %tobool44.not.i, label %land.lhs.true40.i.if.end49.i_crit_edge, label %land.lhs.true40.i.for.inc_crit_edge

land.lhs.true40.i.for.inc_crit_edge:              ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true40.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true40.i.if.end49.i_crit_edge, %lor.lhs.false35.i.if.end49.i_crit_edge
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp50.not.i = icmp eq i32 %27, 2
  br i1 %cmp50.not.i, label %if.end49.i.if.end_crit_edge, label %if.then52.i

if.end49.i.if.end_crit_edge:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then52.i:                                      ; preds = %if.end49.i
  %datainterval.i = getelementptr inbounds %struct.audioformat, ptr %fp.044, i32 0, i32 18
  %28 = ptrtoint ptr %datainterval.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %datainterval.i, align 4
  %conv53.i = zext i8 %29 to i32
  %mul.i = shl i32 125, %conv53.i
  %30 = ptrtoint ptr %max54.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %31)
  %cmp55.i = icmp ugt i32 %mul.i, %31
  br i1 %cmp55.i, label %if.then52.i.for.inc_crit_edge, label %lor.lhs.false57.i

if.then52.i.for.inc_crit_edge:                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false57.i:                                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %31)
  %cmp59.i = icmp eq i32 %mul.i, %31
  br i1 %cmp59.i, label %land.lhs.true61.i, label %lor.lhs.false57.i.if.end_crit_edge

lor.lhs.false57.i.if.end_crit_edge:               ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true61.i:                                ; preds = %lor.lhs.false57.i
  %32 = ptrtoint ptr %openmax62.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load63.i = load i8, ptr %openmax62.i, align 4
  %33 = and i8 %bf.load63.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool67.not.i = icmp eq i8 %33, 0
  br i1 %tobool67.not.i, label %land.lhs.true61.i.if.end_crit_edge, label %land.lhs.true61.i.for.inc_crit_edge

land.lhs.true61.i.for.inc_crit_edge:              ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true61.i.if.end_crit_edge:               ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true61.i.if.end_crit_edge, %lor.lhs.false57.i.if.end_crit_edge, %if.end49.i.if.end_crit_edge
  %34 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channels.i, align 8
  %36 = tail call i32 @llvm.umin.i32(i32 %rmin.043, i32 %35)
  %37 = tail call i32 @llvm.umax.i32(i32 %rmax.042, i32 %35)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true61.i.for.inc_crit_edge, %if.then52.i.for.inc_crit_edge, %land.lhs.true40.i.for.inc_crit_edge, %if.end31.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end17.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %snd_mask_empty.exit.i.for.inc_crit_edge
  %rmax.1 = phi i32 [ %37, %if.end ], [ %rmax.042, %snd_mask_empty.exit.i.for.inc_crit_edge ], [ %rmax.042, %if.end.i.for.inc_crit_edge ], [ %rmax.042, %lor.lhs.false.i.for.inc_crit_edge ], [ %rmax.042, %if.end17.i.for.inc_crit_edge ], [ %rmax.042, %land.lhs.true.i.for.inc_crit_edge ], [ %rmax.042, %if.end31.i.for.inc_crit_edge ], [ %rmax.042, %land.lhs.true40.i.for.inc_crit_edge ], [ %rmax.042, %if.then52.i.for.inc_crit_edge ], [ %rmax.042, %land.lhs.true61.i.for.inc_crit_edge ]
  %rmin.1 = phi i32 [ %36, %if.end ], [ %rmin.043, %snd_mask_empty.exit.i.for.inc_crit_edge ], [ %rmin.043, %if.end.i.for.inc_crit_edge ], [ %rmin.043, %lor.lhs.false.i.for.inc_crit_edge ], [ %rmin.043, %if.end17.i.for.inc_crit_edge ], [ %rmin.043, %land.lhs.true.i.for.inc_crit_edge ], [ %rmin.043, %if.end31.i.for.inc_crit_edge ], [ %rmin.043, %land.lhs.true40.i.for.inc_crit_edge ], [ %rmin.043, %if.then52.i.for.inc_crit_edge ], [ %rmin.043, %land.lhs.true61.i.for.inc_crit_edge ]
  %38 = ptrtoint ptr %fp.044 to i32
  call void @__asan_load4_noabort(i32 %38)
  %fp.0 = load ptr, ptr %fp.044, align 4
  %cmp.not = icmp eq ptr %fp.0, %fmt_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %rmin.1, i32 %rmax.1)
  %cmp.i32 = icmp ugt i32 %rmin.1, %rmax.1
  br i1 %cmp.i32, label %for.end.cleanup.sink.split.i_crit_edge, label %if.end.i33

for.end.cleanup.sink.split.i_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i33:                                       ; preds = %for.end
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %rmin.1)
  %cmp1.i = icmp ult i32 %40, %rmin.1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i33.if.end7.i_crit_edge

if.end.i33.if.end7.i_crit_edge:                   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rmin.1, ptr %arrayidx.i, align 4
  %openmin.i34 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %42 = ptrtoint ptr %openmin.i34 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load4.i = load i8, ptr %openmin.i34, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %openmin.i34, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end.i33.if.end7.i_crit_edge
  %changed.0.i = phi i32 [ 1, %if.then2.i ], [ 0, %if.end.i33.if.end7.i_crit_edge ]
  %max.i35 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %43 = ptrtoint ptr %max.i35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %rmax.1)
  %cmp8.i = icmp ugt i32 %44, %rmax.1
  br i1 %cmp8.i, label %if.then9.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %max.i35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %rmax.1, ptr %max.i35, align 4
  %openmax.i36 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %46 = ptrtoint ptr %openmax.i36 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load11.i = load i8, ptr %openmax.i36, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -65
  store i8 %bf.clear12.i, ptr %openmax.i36, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end14.i_crit_edge
  %changed.1.i = phi i32 [ 1, %if.then9.i ], [ %changed.0.i, %if.end7.i.if.end14.i_crit_edge ]
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %49 = ptrtoint ptr %max.i35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp.i.i = icmp ugt i32 %48, %50
  br i1 %cmp.i.i, label %if.end14.i.cleanup.sink.split.i_crit_edge, label %lor.rhs.i.i

if.end14.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

lor.rhs.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp3.i.i = icmp eq i32 %48, %50
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge

lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply_hw_params_minmax.exit

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %openmin.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %51 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool.not.i = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool.not.i, label %land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge, label %land.rhs.i.i.cleanup.sink.split.i_crit_edge

land.rhs.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply_hw_params_minmax.exit

cleanup.sink.split.i:                             ; preds = %land.rhs.i.i.cleanup.sink.split.i_crit_edge, %if.end14.i.cleanup.sink.split.i_crit_edge, %for.end.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %empty.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 2
  %52 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load17.i = load i8, ptr %empty.i, align 4
  %bf.set19.i = or i8 %bf.load17.i, 16
  store i8 %bf.set19.i, ptr %empty.i, align 4
  br label %apply_hw_params_minmax.exit

apply_hw_params_minmax.exit:                      ; preds = %cleanup.sink.split.i, %land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge, %lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge
  %retval.0.i37 = phi i32 [ %changed.1.i, %lor.rhs.i.i.apply_hw_params_minmax.exit_crit_edge ], [ %changed.1.i, %land.rhs.i.i.apply_hw_params_minmax.exit_crit_edge ], [ -22, %cleanup.sink.split.i ]
  ret i32 %retval.0.i37
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_format(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %fp.022 = load ptr, ptr %fmt_list, align 4
  %cmp.not23 = icmp eq ptr %fp.022, %fmt_list
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %arrayidx.i104.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max18.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %speed.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 23
  %max54.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 1
  %openmax62.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fp.026 = phi ptr [ %fp.022, %for.body.lr.ph ], [ %fp.0, %for.inc.for.body_crit_edge ]
  %fbits.024 = phi i64 [ 0, %for.body.lr.ph ], [ %fbits.1, %for.inc.for.body_crit_edge ]
  %formats.i = getelementptr inbounds %struct.audioformat, ptr %fp.026, i32 0, i32 1
  %5 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %formats.i, align 8
  %conv.i = trunc i64 %6 to i32
  %and.i.i = and i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_mask_empty.exit.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i:                            ; preds = %for.body
  %shr.i = lshr i64 %6, 32
  %conv5.i = trunc i64 %shr.i to i32
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i, align 4
  %and.1.i.i = and i32 %8, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.not.i, label %snd_mask_empty.exit.i.for.inc_crit_edge, label %snd_mask_empty.exit.i.if.end.i_crit_edge

snd_mask_empty.exit.i.if.end.i_crit_edge:         ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i.for.inc_crit_edge:          ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %snd_mask_empty.exit.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %channels.i = getelementptr inbounds %struct.audioformat, ptr %fp.026, i32 0, i32 2
  %9 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels.i, align 8
  %11 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i104.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp ult i32 %10, %12
  br i1 %cmp.i, label %if.end.i.for.inc_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end.i
  %13 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp11.i = icmp ugt i32 %10, %14
  br i1 %cmp11.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end17.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fp.026, i32 0, i32 22
  %15 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate_min.i, align 8
  %17 = ptrtoint ptr %max18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp19.i = icmp ugt i32 %16, %18
  br i1 %cmp19.i, label %if.end17.i.for.inc_crit_edge, label %lor.lhs.false21.i

if.end17.i.for.inc_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false21.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp24.i = icmp eq i32 %16, %18
  br i1 %cmp24.i, label %land.lhs.true.i, label %lor.lhs.false21.i.if.end31.i_crit_edge

lor.lhs.false21.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false21.i
  %19 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %openmax.i, align 4
  %20 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not.i = icmp eq i8 %20, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %lor.lhs.false21.i.if.end31.i_crit_edge
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %fp.026, i32 0, i32 23
  %21 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate_max.i, align 4
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp33.i = icmp ult i32 %22, %24
  br i1 %cmp33.i, label %if.end31.i.for.inc_crit_edge, label %lor.lhs.false35.i

if.end31.i.for.inc_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false35.i:                                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp38.i = icmp eq i32 %22, %24
  br i1 %cmp38.i, label %land.lhs.true40.i, label %lor.lhs.false35.i.if.end49.i_crit_edge

lor.lhs.false35.i.if.end49.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

land.lhs.true40.i:                                ; preds = %lor.lhs.false35.i
  %25 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load41.i = load i8, ptr %openmax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41.i)
  %tobool44.not.i = icmp sgt i8 %bf.load41.i, -1
  br i1 %tobool44.not.i, label %land.lhs.true40.i.if.end49.i_crit_edge, label %land.lhs.true40.i.for.inc_crit_edge

land.lhs.true40.i.for.inc_crit_edge:              ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true40.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true40.i.if.end49.i_crit_edge, %lor.lhs.false35.i.if.end49.i_crit_edge
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp50.not.i = icmp eq i32 %27, 2
  br i1 %cmp50.not.i, label %if.end49.i.if.end_crit_edge, label %if.then52.i

if.end49.i.if.end_crit_edge:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then52.i:                                      ; preds = %if.end49.i
  %datainterval.i = getelementptr inbounds %struct.audioformat, ptr %fp.026, i32 0, i32 18
  %28 = ptrtoint ptr %datainterval.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %datainterval.i, align 4
  %conv53.i = zext i8 %29 to i32
  %mul.i = shl i32 125, %conv53.i
  %30 = ptrtoint ptr %max54.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %31)
  %cmp55.i = icmp ugt i32 %mul.i, %31
  br i1 %cmp55.i, label %if.then52.i.for.inc_crit_edge, label %lor.lhs.false57.i

if.then52.i.for.inc_crit_edge:                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false57.i:                                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %31)
  %cmp59.i = icmp eq i32 %mul.i, %31
  br i1 %cmp59.i, label %land.lhs.true61.i, label %lor.lhs.false57.i.if.end_crit_edge

lor.lhs.false57.i.if.end_crit_edge:               ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true61.i:                                ; preds = %lor.lhs.false57.i
  %32 = ptrtoint ptr %openmax62.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load63.i = load i8, ptr %openmax62.i, align 4
  %33 = and i8 %bf.load63.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool67.not.i = icmp eq i8 %33, 0
  br i1 %tobool67.not.i, label %land.lhs.true61.i.if.end_crit_edge, label %land.lhs.true61.i.for.inc_crit_edge

land.lhs.true61.i.for.inc_crit_edge:              ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true61.i.if.end_crit_edge:               ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true61.i.if.end_crit_edge, %lor.lhs.false57.i.if.end_crit_edge, %if.end49.i.if.end_crit_edge
  %or = or i64 %6, %fbits.024
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true61.i.for.inc_crit_edge, %if.then52.i.for.inc_crit_edge, %land.lhs.true40.i.for.inc_crit_edge, %if.end31.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end17.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %snd_mask_empty.exit.i.for.inc_crit_edge
  %fbits.1 = phi i64 [ %or, %if.end ], [ %fbits.024, %snd_mask_empty.exit.i.for.inc_crit_edge ], [ %fbits.024, %if.end.i.for.inc_crit_edge ], [ %fbits.024, %lor.lhs.false.i.for.inc_crit_edge ], [ %fbits.024, %if.end17.i.for.inc_crit_edge ], [ %fbits.024, %land.lhs.true.i.for.inc_crit_edge ], [ %fbits.024, %if.end31.i.for.inc_crit_edge ], [ %fbits.024, %land.lhs.true40.i.for.inc_crit_edge ], [ %fbits.024, %if.then52.i.for.inc_crit_edge ], [ %fbits.024, %land.lhs.true61.i.for.inc_crit_edge ]
  %34 = ptrtoint ptr %fp.026 to i32
  call void @__asan_load4_noabort(i32 %34)
  %fp.0 = load ptr, ptr %fp.026, align 4
  %cmp.not = icmp eq ptr %fp.0, %fmt_list
  br i1 %cmp.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %extract = lshr i64 %fbits.1, 32
  %extract.t27 = trunc i64 %extract to i32
  %extract.t = trunc i64 %fbits.1 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %fbits.0.lcssa.off0 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %extract.t, %for.end.loopexit ]
  %fbits.0.lcssa.off32 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %extract.t27, %for.end.loopexit ]
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx3.i, align 4
  %and.i = and i32 %36, %fbits.0.lcssa.off0
  store i32 %and.i, ptr %arrayidx.i, align 4
  %and10.i = and i32 %38, %fbits.0.lcssa.off32
  store i32 %and10.i, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool15.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool15.not.i, i1 false
  br i1 %or.cond.i, label %for.end.apply_hw_params_format_bits.exit_crit_edge, label %if.end.i18

for.end.apply_hw_params_format_bits.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply_hw_params_format_bits.exit

if.end.i18:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %and.i)
  %cmp.not.i = icmp eq i32 %36, %and.i
  br i1 %cmp.not.i, label %lor.rhs.i, label %if.end.i18.apply_hw_params_format_bits.exit_crit_edge

if.end.i18.apply_hw_params_format_bits.exit_crit_edge: ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %apply_hw_params_format_bits.exit

lor.rhs.i:                                        ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %and10.i)
  %cmp23.i = icmp ne i32 %38, %and10.i
  %phi.cast.i = zext i1 %cmp23.i to i32
  br label %apply_hw_params_format_bits.exit

apply_hw_params_format_bits.exit:                 ; preds = %lor.rhs.i, %if.end.i18.apply_hw_params_format_bits.exit_crit_edge, %for.end.apply_hw_params_format_bits.exit_crit_edge
  %retval.0.i19 = phi i32 [ -22, %for.end.apply_hw_params_format_bits.exit_crit_edge ], [ 1, %if.end.i18.apply_hw_params_format_bits.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  ret i32 %retval.0.i19
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_period_time(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4
  %fmt_list = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %fmt_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %fp.046 = load ptr, ptr %fmt_list, align 4
  %cmp.not47 = icmp eq ptr %fp.046, %fmt_list
  br i1 %cmp.not47, label %entry.cleanup.sink.split_crit_edge, label %for.body.lr.ph

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %arrayidx.i104.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i105.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i105.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %max18.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %speed.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 23
  %max54.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 1
  %openmax62.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fp.049 = phi ptr [ %fp.046, %for.body.lr.ph ], [ %fp.0, %for.inc.for.body_crit_edge ]
  %min_datainterval.048 = phi i8 [ -1, %for.body.lr.ph ], [ %min_datainterval.1, %for.inc.for.body_crit_edge ]
  %formats.i = getelementptr inbounds %struct.audioformat, ptr %fp.049, i32 0, i32 1
  %5 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %formats.i, align 8
  %conv.i = trunc i64 %6 to i32
  %and.i.i = and i32 %4, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %snd_mask_empty.exit.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i:                            ; preds = %for.body
  %shr.i = lshr i64 %6, 32
  %conv5.i = trunc i64 %shr.i to i32
  %7 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i, align 4
  %and.1.i.i = and i32 %8, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.not.i, label %snd_mask_empty.exit.i.for.inc_crit_edge, label %snd_mask_empty.exit.i.if.end.i_crit_edge

snd_mask_empty.exit.i.if.end.i_crit_edge:         ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

snd_mask_empty.exit.i.for.inc_crit_edge:          ; preds = %snd_mask_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %snd_mask_empty.exit.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %channels.i = getelementptr inbounds %struct.audioformat, ptr %fp.049, i32 0, i32 2
  %9 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels.i, align 8
  %11 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i104.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp ult i32 %10, %12
  br i1 %cmp.i, label %if.end.i.for.inc_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end.i
  %13 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp11.i = icmp ugt i32 %10, %14
  br i1 %cmp11.i, label %lor.lhs.false.i.for.inc_crit_edge, label %if.end17.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %rate_min.i = getelementptr inbounds %struct.audioformat, ptr %fp.049, i32 0, i32 22
  %15 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate_min.i, align 8
  %17 = ptrtoint ptr %max18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp19.i = icmp ugt i32 %16, %18
  br i1 %cmp19.i, label %if.end17.i.for.inc_crit_edge, label %lor.lhs.false21.i

if.end17.i.for.inc_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false21.i:                                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp24.i = icmp eq i32 %16, %18
  br i1 %cmp24.i, label %land.lhs.true.i, label %lor.lhs.false21.i.if.end31.i_crit_edge

lor.lhs.false21.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false21.i
  %19 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %openmax.i, align 4
  %20 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not.i = icmp eq i8 %20, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %lor.lhs.false21.i.if.end31.i_crit_edge
  %rate_max.i = getelementptr inbounds %struct.audioformat, ptr %fp.049, i32 0, i32 23
  %21 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate_max.i, align 4
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp33.i = icmp ult i32 %22, %24
  br i1 %cmp33.i, label %if.end31.i.for.inc_crit_edge, label %lor.lhs.false35.i

if.end31.i.for.inc_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false35.i:                                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp38.i = icmp eq i32 %22, %24
  br i1 %cmp38.i, label %land.lhs.true40.i, label %lor.lhs.false35.i.if.end49.i_crit_edge

lor.lhs.false35.i.if.end49.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

land.lhs.true40.i:                                ; preds = %lor.lhs.false35.i
  %25 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load41.i = load i8, ptr %openmax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41.i)
  %tobool44.not.i = icmp sgt i8 %bf.load41.i, -1
  br i1 %tobool44.not.i, label %land.lhs.true40.i.if.end49.i_crit_edge, label %land.lhs.true40.i.for.inc_crit_edge

land.lhs.true40.i.for.inc_crit_edge:              ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true40.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true40.i.if.end49.i_crit_edge, %lor.lhs.false35.i.if.end49.i_crit_edge
  %26 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp50.not.i = icmp eq i32 %27, 2
  br i1 %cmp50.not.i, label %if.end49.i.if.end_crit_edge, label %if.then52.i

if.end49.i.if.end_crit_edge:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then52.i:                                      ; preds = %if.end49.i
  %datainterval.i = getelementptr inbounds %struct.audioformat, ptr %fp.049, i32 0, i32 18
  %28 = ptrtoint ptr %datainterval.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %datainterval.i, align 4
  %conv53.i = zext i8 %29 to i32
  %mul.i = shl i32 125, %conv53.i
  %30 = ptrtoint ptr %max54.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %31)
  %cmp55.i = icmp ugt i32 %mul.i, %31
  br i1 %cmp55.i, label %if.then52.i.for.inc_crit_edge, label %lor.lhs.false57.i

if.then52.i.for.inc_crit_edge:                    ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false57.i:                                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %31)
  %cmp59.i = icmp eq i32 %mul.i, %31
  br i1 %cmp59.i, label %land.lhs.true61.i, label %lor.lhs.false57.i.if.end_crit_edge

lor.lhs.false57.i.if.end_crit_edge:               ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true61.i:                                ; preds = %lor.lhs.false57.i
  %32 = ptrtoint ptr %openmax62.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load63.i = load i8, ptr %openmax62.i, align 4
  %33 = and i8 %bf.load63.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool67.not.i = icmp eq i8 %33, 0
  br i1 %tobool67.not.i, label %land.lhs.true61.i.if.end_crit_edge, label %land.lhs.true61.i.for.inc_crit_edge

land.lhs.true61.i.for.inc_crit_edge:              ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true61.i.if.end_crit_edge:               ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true61.i.if.end_crit_edge, %lor.lhs.false57.i.if.end_crit_edge, %if.end49.i.if.end_crit_edge
  %datainterval = getelementptr inbounds %struct.audioformat, ptr %fp.049, i32 0, i32 18
  %34 = ptrtoint ptr %datainterval to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %datainterval, align 4
  %36 = tail call i8 @llvm.umin.i8(i8 %min_datainterval.048, i8 %35)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true61.i.for.inc_crit_edge, %if.then52.i.for.inc_crit_edge, %land.lhs.true40.i.for.inc_crit_edge, %if.end31.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end17.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %snd_mask_empty.exit.i.for.inc_crit_edge
  %min_datainterval.1 = phi i8 [ %36, %if.end ], [ %min_datainterval.048, %snd_mask_empty.exit.i.for.inc_crit_edge ], [ %min_datainterval.048, %if.end.i.for.inc_crit_edge ], [ %min_datainterval.048, %lor.lhs.false.i.for.inc_crit_edge ], [ %min_datainterval.048, %if.end17.i.for.inc_crit_edge ], [ %min_datainterval.048, %land.lhs.true.i.for.inc_crit_edge ], [ %min_datainterval.048, %if.end31.i.for.inc_crit_edge ], [ %min_datainterval.048, %land.lhs.true40.i.for.inc_crit_edge ], [ %min_datainterval.048, %if.then52.i.for.inc_crit_edge ], [ %min_datainterval.048, %land.lhs.true61.i.for.inc_crit_edge ]
  %37 = ptrtoint ptr %fp.049 to i32
  call void @__asan_load4_noabort(i32 %37)
  %fp.0 = load ptr, ptr %fp.049, align 4
  %cmp.not = icmp eq ptr %fp.0, %fmt_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %min_datainterval.1)
  %cmp16 = icmp eq i8 %min_datainterval.1, -1
  br i1 %cmp16, label %for.end.cleanup.sink.split_crit_edge, label %if.end22

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end22:                                         ; preds = %for.end
  %conv15 = zext i8 %min_datainterval.1 to i32
  %mul = shl i32 125, %conv15
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %mul)
  %cmp1.i = icmp ult i32 %39, %mul
  br i1 %cmp1.i, label %if.then2.i, label %if.end22.if.end7.i_crit_edge

if.end22.if.end7.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %arrayidx.i, align 4
  %openmin.i41 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 2
  %41 = ptrtoint ptr %openmin.i41 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load4.i = load i8, ptr %openmin.i41, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %openmin.i41, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end22.if.end7.i_crit_edge
  %changed.0.i = phi i32 [ 1, %if.then2.i ], [ 0, %if.end22.if.end7.i_crit_edge ]
  %max.i42 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %max.i42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max.i42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.i.i = icmp ugt i32 %43, %45
  br i1 %cmp.i.i, label %if.end7.i.cleanup.sink.split_crit_edge, label %lor.rhs.i.i

if.end7.i.cleanup.sink.split_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.rhs.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp3.i.i = icmp eq i32 %43, %45
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.cleanup_crit_edge

lor.rhs.i.i.cleanup_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %openmin.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 2
  %46 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool.not.i = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool.not.i, label %land.rhs.i.i.cleanup_crit_edge, label %land.rhs.i.i.cleanup.sink.split_crit_edge

land.rhs.i.i.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.rhs.i.i.cleanup.sink.split_crit_edge, %if.end7.i.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %empty = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 4, i32 2
  %47 = ptrtoint ptr %empty to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load17.i = load i8, ptr %empty, align 4
  %bf.set19.i = or i8 %bf.load17.i, 16
  store i8 %bf.set19.i, ptr %empty, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.i.i.cleanup_crit_edge, %lor.rhs.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %changed.0.i, %lor.rhs.i.i.cleanup_crit_edge ], [ %changed.0.i, %land.rhs.i.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_format_implicit_fb(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %fmt_list.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %cur_audiofmt5.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fmt_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %fp.045.i = load ptr, ptr %fmt_list.i, align 4
  %cmp.not46.i = icmp eq ptr %fp.045.i, %fmt_list.i
  br i1 %cmp.not46.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %fp.047.i = phi ptr [ %fp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fp.045.i, %entry.for.body.i_crit_edge ]
  %endpoint.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 11
  %7 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %endpoint.i, align 1
  %conv.i = zext i8 %8 to i32
  %call.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end11.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cur_audiofmt.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 51
  %9 = ptrtoint ptr %cur_audiofmt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_audiofmt.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %cur_audiofmt5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_audiofmt5.i, align 4
  %cmp6.not.i = icmp eq ptr %10, %12
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then.i
  %opened.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp8.i = icmp sgt i32 %14, 1
  br i1 %cmp8.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end11.i:                                       ; preds = %lor.lhs.false.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %for.body.i.if.end11.i_crit_edge
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 13
  %15 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %implicit_fb.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %if.end11.i.for.inc.i_crit_edge, label %if.end14.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.end11.i
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 14
  %17 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sync_ep.i, align 8
  %conv15.i = zext i8 %18 to i32
  %call16.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv15.i) #8
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end14.i.for.inc.i_crit_edge, label %land.lhs.true18.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %if.end14.i
  %cur_audiofmt19.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call16.i, i32 0, i32 51
  %19 = ptrtoint ptr %cur_audiofmt19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_audiofmt19.i, align 4
  %tobool20.not.i = icmp eq ptr %20, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true18.i.do.end_crit_edge

land.lhs.true18.i.do.end_crit_edge:               ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %fp.047.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %fp.0.i = load ptr, ptr %fp.047.i, align 4
  %cmp.not.i = icmp eq ptr %fp.0.i, %fmt_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true18.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call.i, %lor.lhs.false.i.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call16.i, %land.lhs.true18.i.do.end_crit_edge ]
  %cur_format = getelementptr inbounds %struct.snd_usb_endpoint, ptr %retval.0.i.ph, i32 0, i32 53
  %22 = ptrtoint ptr %cur_format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_format, align 4
  %sh_prom.i = zext i32 %23 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.i, align 4
  %conv.i7 = trunc i64 %shl.i to i32
  %and.i = and i32 %25, %conv.i7
  store i32 %and.i, ptr %arrayidx.i, align 4
  %shr.i = lshr i64 %shl.i, 32
  %conv7.i = trunc i64 %shr.i to i32
  %and10.i = and i32 %27, %conv7.i
  store i32 %and10.i, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i8 = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool15.not.i = icmp eq i32 %and10.i, 0
  %or.cond.i = select i1 %tobool.not.i8, i1 %tobool15.not.i, i1 false
  br i1 %or.cond.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %and.i)
  %cmp.not.i9 = icmp eq i32 %25, %and.i
  br i1 %cmp.not.i9, label %lor.rhs.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and10.i)
  %cmp23.i = icmp ne i32 %27, %and10.i
  %phi.cast.i = zext i1 %cmp23.i to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i, %if.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ %phi.cast.i, %lor.rhs.i ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_rate_implicit_fb(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %fmt_list.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %cur_audiofmt5.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fmt_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %fp.045.i = load ptr, ptr %fmt_list.i, align 4
  %cmp.not46.i = icmp eq ptr %fp.045.i, %fmt_list.i
  br i1 %cmp.not46.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %fp.047.i = phi ptr [ %fp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fp.045.i, %entry.for.body.i_crit_edge ]
  %endpoint.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 11
  %7 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %endpoint.i, align 1
  %conv.i = zext i8 %8 to i32
  %call.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end11.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cur_audiofmt.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 51
  %9 = ptrtoint ptr %cur_audiofmt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_audiofmt.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %cur_audiofmt5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_audiofmt5.i, align 4
  %cmp6.not.i = icmp eq ptr %10, %12
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then.i
  %opened.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp8.i = icmp sgt i32 %14, 1
  br i1 %cmp8.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end11.i:                                       ; preds = %lor.lhs.false.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %for.body.i.if.end11.i_crit_edge
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 13
  %15 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %implicit_fb.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %if.end11.i.for.inc.i_crit_edge, label %if.end14.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.end11.i
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 14
  %17 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sync_ep.i, align 8
  %conv15.i = zext i8 %18 to i32
  %call16.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv15.i) #8
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end14.i.for.inc.i_crit_edge, label %land.lhs.true18.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %if.end14.i
  %cur_audiofmt19.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call16.i, i32 0, i32 51
  %19 = ptrtoint ptr %cur_audiofmt19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_audiofmt19.i, align 4
  %tobool20.not.i = icmp eq ptr %20, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true18.i.do.end_crit_edge

land.lhs.true18.i.do.end_crit_edge:               ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %fp.047.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %fp.0.i = load ptr, ptr %fp.047.i, align 4
  %cmp.not.i = icmp eq ptr %fp.0.i, %fmt_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true18.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call.i, %lor.lhs.false.i.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call16.i, %land.lhs.true18.i.do.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %cur_rate = getelementptr inbounds %struct.snd_usb_endpoint, ptr %retval.0.i.ph, i32 0, i32 52
  %22 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_rate, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp1.i = icmp ult i32 %25, %23
  br i1 %cmp1.i, label %if.then2.i, label %do.end.if.end7.i_crit_edge

do.end.if.end7.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then2.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx.i, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %27 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load4.i = load i8, ptr %openmin.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %openmin.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %do.end.if.end7.i_crit_edge
  %changed.0.i = phi i32 [ 1, %if.then2.i ], [ 0, %do.end.if.end7.i_crit_edge ]
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %28 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %23)
  %cmp8.i8 = icmp ugt i32 %29, %23
  br i1 %cmp8.i8, label %if.then9.i, label %if.end7.i.if.end14.i9_crit_edge

if.end7.i.if.end14.i9_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i9

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %23, ptr %max.i, align 4
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %31 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load11.i = load i8, ptr %openmax.i, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -65
  store i8 %bf.clear12.i, ptr %openmax.i, align 4
  br label %if.end14.i9

if.end14.i9:                                      ; preds = %if.then9.i, %if.end7.i.if.end14.i9_crit_edge
  %changed.1.i = phi i32 [ 1, %if.then9.i ], [ %changed.0.i, %if.end7.i.if.end14.i9_crit_edge ]
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i.i = icmp ugt i32 %33, %35
  br i1 %cmp.i.i, label %if.end14.i9.cleanup.sink.split.i_crit_edge, label %lor.rhs.i.i

if.end14.i9.cleanup.sink.split.i_crit_edge:       ; preds = %if.end14.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

lor.rhs.i.i:                                      ; preds = %if.end14.i9
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.i.i = icmp eq i32 %33, %35
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.cleanup_crit_edge

lor.rhs.i.i.cleanup_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %openmin.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %36 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool.not.i10 = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool.not.i10, label %land.rhs.i.i.cleanup_crit_edge, label %land.rhs.i.i.cleanup.sink.split.i_crit_edge

land.rhs.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %land.rhs.i.i.cleanup.sink.split.i_crit_edge, %if.end14.i9.cleanup.sink.split.i_crit_edge
  %empty.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 2
  %37 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load17.i = load i8, ptr %empty.i, align 4
  %bf.set19.i = or i8 %bf.load17.i, 16
  store i8 %bf.set19.i, ptr %empty.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %land.rhs.i.i.cleanup_crit_edge, %lor.rhs.i.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %changed.1.i, %lor.rhs.i.i.cleanup_crit_edge ], [ %changed.1.i, %land.rhs.i.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split.i ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_period_size_implicit_fb(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %fmt_list.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %cur_audiofmt5.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fmt_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %fp.045.i = load ptr, ptr %fmt_list.i, align 4
  %cmp.not46.i = icmp eq ptr %fp.045.i, %fmt_list.i
  br i1 %cmp.not46.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %fp.047.i = phi ptr [ %fp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fp.045.i, %entry.for.body.i_crit_edge ]
  %endpoint.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 11
  %7 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %endpoint.i, align 1
  %conv.i = zext i8 %8 to i32
  %call.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end11.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cur_audiofmt.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 51
  %9 = ptrtoint ptr %cur_audiofmt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_audiofmt.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %cur_audiofmt5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_audiofmt5.i, align 4
  %cmp6.not.i = icmp eq ptr %10, %12
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then.i
  %opened.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp8.i = icmp sgt i32 %14, 1
  br i1 %cmp8.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end11.i:                                       ; preds = %lor.lhs.false.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %for.body.i.if.end11.i_crit_edge
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 13
  %15 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %implicit_fb.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %if.end11.i.for.inc.i_crit_edge, label %if.end14.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.end11.i
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 14
  %17 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sync_ep.i, align 8
  %conv15.i = zext i8 %18 to i32
  %call16.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv15.i) #8
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end14.i.for.inc.i_crit_edge, label %land.lhs.true18.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %if.end14.i
  %cur_audiofmt19.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call16.i, i32 0, i32 51
  %19 = ptrtoint ptr %cur_audiofmt19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_audiofmt19.i, align 4
  %tobool20.not.i = icmp eq ptr %20, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true18.i.do.end_crit_edge

land.lhs.true18.i.do.end_crit_edge:               ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %fp.047.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %fp.0.i = load ptr, ptr %fp.047.i, align 4
  %cmp.not.i = icmp eq ptr %fp.0.i, %fmt_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true18.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call.i, %lor.lhs.false.i.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call16.i, %land.lhs.true18.i.do.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %cur_period_frames = getelementptr inbounds %struct.snd_usb_endpoint, ptr %retval.0.i.ph, i32 0, i32 56
  %22 = ptrtoint ptr %cur_period_frames to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_period_frames, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp1.i = icmp ult i32 %25, %23
  br i1 %cmp1.i, label %if.then2.i, label %do.end.if.end7.i_crit_edge

do.end.if.end7.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then2.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx.i, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5, i32 2
  %27 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load4.i = load i8, ptr %openmin.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %openmin.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %do.end.if.end7.i_crit_edge
  %changed.0.i = phi i32 [ 1, %if.then2.i ], [ 0, %do.end.if.end7.i_crit_edge ]
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5, i32 1
  %28 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %23)
  %cmp8.i8 = icmp ugt i32 %29, %23
  br i1 %cmp8.i8, label %if.then9.i, label %if.end7.i.if.end14.i9_crit_edge

if.end7.i.if.end14.i9_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i9

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %23, ptr %max.i, align 4
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5, i32 2
  %31 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load11.i = load i8, ptr %openmax.i, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -65
  store i8 %bf.clear12.i, ptr %openmax.i, align 4
  br label %if.end14.i9

if.end14.i9:                                      ; preds = %if.then9.i, %if.end7.i.if.end14.i9_crit_edge
  %changed.1.i = phi i32 [ 1, %if.then9.i ], [ %changed.0.i, %if.end7.i.if.end14.i9_crit_edge ]
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i.i = icmp ugt i32 %33, %35
  br i1 %cmp.i.i, label %if.end14.i9.cleanup.sink.split.i_crit_edge, label %lor.rhs.i.i

if.end14.i9.cleanup.sink.split.i_crit_edge:       ; preds = %if.end14.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

lor.rhs.i.i:                                      ; preds = %if.end14.i9
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.i.i = icmp eq i32 %33, %35
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.cleanup_crit_edge

lor.rhs.i.i.cleanup_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %openmin.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5, i32 2
  %36 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool.not.i10 = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool.not.i10, label %land.rhs.i.i.cleanup_crit_edge, label %land.rhs.i.i.cleanup.sink.split.i_crit_edge

land.rhs.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %land.rhs.i.i.cleanup.sink.split.i_crit_edge, %if.end14.i9.cleanup.sink.split.i_crit_edge
  %empty.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5, i32 2
  %37 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load17.i = load i8, ptr %empty.i, align 4
  %bf.set19.i = or i8 %bf.load17.i, 16
  store i8 %bf.set19.i, ptr %empty.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %land.rhs.i.i.cleanup_crit_edge, %lor.rhs.i.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %changed.1.i, %lor.rhs.i.i.cleanup_crit_edge ], [ %changed.1.i, %land.rhs.i.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split.i ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_periods_implicit_fb(ptr nocapture noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %fmt_list.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 26
  %cur_audiofmt5.i = getelementptr inbounds %struct.snd_usb_substream, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fmt_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %fp.045.i = load ptr, ptr %fmt_list.i, align 4
  %cmp.not46.i = icmp eq ptr %fp.045.i, %fmt_list.i
  br i1 %cmp.not46.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %fp.047.i = phi ptr [ %fp.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fp.045.i, %entry.for.body.i_crit_edge ]
  %endpoint.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 11
  %7 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %endpoint.i, align 1
  %conv.i = zext i8 %8 to i32
  %call.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end11.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %cur_audiofmt.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 51
  %9 = ptrtoint ptr %cur_audiofmt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cur_audiofmt.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %cur_audiofmt5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_audiofmt5.i, align 4
  %cmp6.not.i = icmp eq ptr %10, %12
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.then.i.do.end_crit_edge

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then.i
  %opened.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %opened.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp8.i = icmp sgt i32 %14, 1
  br i1 %cmp8.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end11.i:                                       ; preds = %lor.lhs.false.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %for.body.i.if.end11.i_crit_edge
  %implicit_fb.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 13
  %15 = ptrtoint ptr %implicit_fb.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %implicit_fb.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %if.end11.i.for.inc.i_crit_edge, label %if.end14.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.end11.i
  %sync_ep.i = getelementptr inbounds %struct.audioformat, ptr %fp.047.i, i32 0, i32 14
  %17 = ptrtoint ptr %sync_ep.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sync_ep.i, align 8
  %conv15.i = zext i8 %18 to i32
  %call16.i = tail call ptr @snd_usb_get_endpoint(ptr noundef %5, i32 noundef %conv15.i) #8
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end14.i.for.inc.i_crit_edge, label %land.lhs.true18.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %if.end14.i
  %cur_audiofmt19.i = getelementptr inbounds %struct.snd_usb_endpoint, ptr %call16.i, i32 0, i32 51
  %19 = ptrtoint ptr %cur_audiofmt19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_audiofmt19.i, align 4
  %tobool20.not.i = icmp eq ptr %20, null
  br i1 %tobool20.not.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true18.i.do.end_crit_edge

land.lhs.true18.i.do.end_crit_edge:               ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge
  %21 = ptrtoint ptr %fp.047.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %fp.0.i = load ptr, ptr %fp.047.i, align 4
  %cmp.not.i = icmp eq ptr %fp.0.i, %fmt_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true18.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then.i.do.end_crit_edge
  %retval.0.i.ph = phi ptr [ %call.i, %lor.lhs.false.i.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call16.i, %land.lhs.true18.i.do.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %cur_buffer_periods = getelementptr inbounds %struct.snd_usb_endpoint, ptr %retval.0.i.ph, i32 0, i32 58
  %22 = ptrtoint ptr %cur_buffer_periods to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_buffer_periods, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp1.i = icmp ult i32 %25, %23
  br i1 %cmp1.i, label %if.then2.i, label %do.end.if.end7.i_crit_edge

do.end.if.end7.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then2.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx.i, align 4
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7, i32 2
  %27 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load4.i = load i8, ptr %openmin.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear5.i, ptr %openmin.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %do.end.if.end7.i_crit_edge
  %changed.0.i = phi i32 [ 1, %if.then2.i ], [ 0, %do.end.if.end7.i_crit_edge ]
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7, i32 1
  %28 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %23)
  %cmp8.i8 = icmp ugt i32 %29, %23
  br i1 %cmp8.i8, label %if.then9.i, label %if.end7.i.if.end14.i9_crit_edge

if.end7.i.if.end14.i9_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i9

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %23, ptr %max.i, align 4
  %openmax.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7, i32 2
  %31 = ptrtoint ptr %openmax.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load11.i = load i8, ptr %openmax.i, align 4
  %bf.clear12.i = and i8 %bf.load11.i, -65
  store i8 %bf.clear12.i, ptr %openmax.i, align 4
  br label %if.end14.i9

if.end14.i9:                                      ; preds = %if.then9.i, %if.end7.i.if.end14.i9_crit_edge
  %changed.1.i = phi i32 [ 1, %if.then9.i ], [ %changed.0.i, %if.end7.i.if.end14.i9_crit_edge ]
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i.i = icmp ugt i32 %33, %35
  br i1 %cmp.i.i, label %if.end14.i9.cleanup.sink.split.i_crit_edge, label %lor.rhs.i.i

if.end14.i9.cleanup.sink.split.i_crit_edge:       ; preds = %if.end14.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

lor.rhs.i.i:                                      ; preds = %if.end14.i9
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.i.i = icmp eq i32 %33, %35
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %lor.rhs.i.i.cleanup_crit_edge

lor.rhs.i.i.cleanup_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i.i:                                     ; preds = %lor.rhs.i.i
  %openmin.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7, i32 2
  %36 = ptrtoint ptr %openmin.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i = load i8, ptr %openmin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i.i)
  %tobool.not.i10 = icmp ult i8 %bf.load.i.i, 64
  br i1 %tobool.not.i10, label %land.rhs.i.i.cleanup_crit_edge, label %land.rhs.i.i.cleanup.sink.split.i_crit_edge

land.rhs.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %land.rhs.i.i.cleanup.sink.split.i_crit_edge, %if.end14.i9.cleanup.sink.split.i_crit_edge
  %empty.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7, i32 2
  %37 = ptrtoint ptr %empty.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load17.i = load i8, ptr %empty.i, align 4
  %bf.set19.i = or i8 %bf.load17.i, 16
  store i8 %bf.set19.i, ptr %empty.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %land.rhs.i.i.cleanup_crit_edge, %lor.rhs.i.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %changed.1.i, %lor.rhs.i.i.cleanup_crit_edge ], [ %changed.1.i, %land.rhs.i.i.cleanup_crit_edge ], [ -22, %cleanup.sink.split.i ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_get_clock_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_get_endpoint(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_media_stop_pipeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_lock_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_unlock_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_media_start_pipeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pcm_format_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_implicit_fb_sync_format(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_endpoint_compatible(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_endpoint_open(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_set_sync(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_endpoints(ptr noundef %chip, ptr noundef %subs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 20
  %0 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_endpoint, align 8
  %need_setup = getelementptr inbounds %struct.snd_usb_endpoint, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %need_setup to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_setup, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 22
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.i.thread

if.end.i:                                         ; preds = %if.then
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.stop_endpoints.exit.thread_crit_edge

if.end.i.stop_endpoints.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_endpoints.exit.thread

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.thread:                                  ; preds = %if.then
  %sync_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 21
  %4 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_endpoint.i, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %5, i1 noundef zeroext false) #8
  %call3.i29 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i29)
  %tobool4.not.i30 = icmp eq i32 %call3.i29, 0
  br i1 %tobool4.not.i30, label %if.end.i.thread.if.then1_crit_edge, label %if.end.i.thread.stop_endpoints.exit.thread_crit_edge

if.end.i.thread.stop_endpoints.exit.thread_crit_edge: ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_endpoints.exit.thread

if.end.i.thread.if.then1_crit_edge:               ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

stop_endpoints.exit.thread:                       ; preds = %if.end.i.thread.stop_endpoints.exit.thread_crit_edge, %if.end.i.stop_endpoints.exit.thread_crit_edge
  %6 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %7, i1 noundef zeroext false) #8
  br label %if.then1

if.then1:                                         ; preds = %stop_endpoints.exit.thread, %if.end.i.thread.if.then1_crit_edge
  %sync_endpoint.i26 = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 21
  %8 = ptrtoint ptr %sync_endpoint.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sync_endpoint.i26, align 4
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %9) #8
  %10 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_sync_pending_stop(ptr noundef %11) #8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.end.i.if.end_crit_edge
  %12 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_endpoint, align 8
  %call3 = tail call i32 @snd_usb_endpoint_configure(ptr noundef %chip, ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 5
  %14 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_audiofmt, align 4
  tail call void @snd_usb_set_format_quirk(ptr noundef %subs, ptr noundef %15) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %entry.if.end6_crit_edge
  %sync_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 21
  %16 = ptrtoint ptr %sync_endpoint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sync_endpoint, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call10 = tail call i32 @snd_usb_endpoint_configure(ptr noundef %chip, ptr noundef nonnull %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_set_format_quirk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_sync_pending_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_endpoints(ptr noundef %subs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 20
  %0 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_endpoint, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 22
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_endpoint, align 8
  %call4 = tail call i32 @snd_usb_endpoint_start(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then2.error_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then2.error_crit_edge:                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %sync_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 21
  %4 = ptrtoint ptr %sync_endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_endpoint, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  %6 = ptrtoint ptr %sync_endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sync_endpoint, align 4
  %call15 = tail call i32 @snd_usb_endpoint_start(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then13.error_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.error_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %if.then13.error_crit_edge, %if.then2.error_crit_edge
  %.sink = phi i32 [ 0, %if.then2.error_crit_edge ], [ 1, %if.then13.error_crit_edge ]
  %err.0 = phi i32 [ %call4, %if.then2.error_crit_edge ], [ %call15, %if.then13.error_crit_edge ]
  tail call void @_clear_bit(i32 noundef %.sink, ptr noundef %flags) #8
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %error.if.end.i_crit_edge, label %if.then.i

error.if.end.i_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  %sync_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 21
  %8 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sync_endpoint.i, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %9, i1 noundef zeroext false) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %error.if.end.i_crit_edge
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.then5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %11, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %err.0, %if.end.i.cleanup_crit_edge ], [ %err.0, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_implicit_feedback_sink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_set_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prepare_playback_urb(ptr noundef %subs, ptr nocapture noundef %urb, i1 noundef zeroext %in_stream_lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_substream = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_substream, align 8
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 20
  %4 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_endpoint, align 8
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %stride2 = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 46
  %8 = ptrtoint ptr %stride2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stride2, align 4
  %queued = getelementptr inbounds %struct.snd_urb_ctx, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %queued to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %queued, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %11 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %number_of_packets, align 4
  %lock = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 27
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %frame_limit7 = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 18
  %12 = ptrtoint ptr %frame_limit7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_limit7, align 8
  %max_urb_frames = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 38
  %14 = ptrtoint ptr %max_urb_frames to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_urb_frames, align 4
  %add = add i32 %15, %13
  %transfer_done8 = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 17
  %16 = ptrtoint ptr %transfer_done8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_done8, align 4
  %lowlatency_playback = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 31
  %18 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lowlatency_playback, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %status, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp10.not = icmp eq i32 %23, 5
  br i1 %cmp10.not, label %land.lhs.true.if.end18_crit_edge, label %if.then

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %hwptr_done = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 16
  %24 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwptr_done, align 8
  %div = udiv i32 %25, %9
  %control = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 38
  %26 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %control, align 8
  %appl_ptr = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %appl_ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %appl_ptr, align 4
  %hw_ptr_base = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %hw_ptr_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_ptr_base, align 4
  %sub = sub i32 %29, %31
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size, align 4
  %rem = urem i32 %sub, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %div)
  %cmp12.not = icmp ugt i32 %rem, %div
  %add16 = select i1 %cmp12.not, i32 0, i32 %33
  %spec.select = sub i32 %rem, %div
  %sub17 = add i32 %spec.select, %add16
  br label %if.end18

if.end18:                                         ; preds = %if.then, %land.lhs.true.if.end18_crit_edge, %entry.if.end18_crit_edge
  %avail.1 = phi i32 [ %sub17, %if.then ], [ 0, %land.lhs.true.if.end18_crit_edge ], [ 0, %entry.if.end18_crit_edge ]
  %packets = getelementptr inbounds %struct.snd_urb_ctx, ptr %7, i32 0, i32 5
  %34 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp19284 = icmp sgt i32 %35, 0
  br i1 %cmp19284, label %for.body.lr.ph, label %if.end18.unlock.thread_crit_edge

if.end18.unlock.thread_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

for.body.lr.ph:                                   ; preds = %if.end18
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %fmt_type = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %period_elapsed.0292 = phi i32 [ 0, %for.body.lr.ph ], [ %period_elapsed.1276, %for.inc.for.body_crit_edge ]
  %i.0289 = phi i32 [ 0, %for.body.lr.ph ], [ %inc76, %for.inc.for.body_crit_edge ]
  %avail.2288 = phi i32 [ %avail.1, %for.body.lr.ph ], [ %sub30, %for.inc.for.body_crit_edge ]
  %frame_limit.0287 = phi i32 [ %add, %for.body.lr.ph ], [ %frame_limit.1274, %for.inc.for.body_crit_edge ]
  %transfer_done.0286 = phi i32 [ %17, %for.body.lr.ph ], [ %transfer_done.2272, %for.inc.for.body_crit_edge ]
  %frames.0285 = phi i32 [ 0, %for.body.lr.ph ], [ %add29, %for.inc.for.body_crit_edge ]
  %call21 = tail call i32 @snd_usb_endpoint_next_packet_size(ptr noundef %5, ptr noundef %7, i32 noundef %i.0289, i32 noundef %avail.2288) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %for.body.for.end_crit_edge, label %if.end25

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end25:                                         ; preds = %for.body
  %mul = mul i32 %frames.0285, %9
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0289
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %arrayidx, align 4
  %mul26 = mul i32 %call21, %9
  %length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0289, i32 1
  %37 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul26, ptr %length, align 4
  %add29 = add i32 %call21, %frames.0285
  %sub30 = sub i32 %avail.2288, %call21
  %38 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %number_of_packets, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %number_of_packets, align 4
  %add32 = add i32 %call21, %transfer_done.0286
  %40 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %41)
  %cmp33.not = icmp ult i32 %add32, %41
  br i1 %cmp33.not, label %if.end67, label %if.then35

if.then35:                                        ; preds = %if.end25
  %sub37 = sub i32 %add32, %41
  %42 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp38 = icmp eq i32 %43, 2
  br i1 %cmp38, label %if.then40, label %if.then35.land.lhs.true71_crit_edge

if.then35.land.lhs.true71_crit_edge:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true71

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub37)
  %cmp41.not = icmp eq i32 %sub37, 0
  br i1 %cmp41.not, label %if.then40.if.end50_crit_edge, label %if.then43

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %sub44 = sub i32 %add29, %sub37
  %sub45 = sub i32 %call21, %sub37
  %mul46 = mul i32 %sub45, %9
  %44 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul46, ptr %length, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %if.then40.if.end50_crit_edge
  %frames.1 = phi i32 [ %sub44, %if.then43 ], [ %add29, %if.then40.if.end50_crit_edge ]
  %inc51 = add nuw nsw i32 %i.0289, 1
  %45 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %packets, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc51, i32 %46)
  %cmp53 = icmp slt i32 %inc51, %46
  br i1 %cmp53, label %if.then55, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %mul56 = mul i32 %frames.1, %9
  %arrayidx58 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %inc51
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul56, ptr %arrayidx58, align 4
  %length62 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %inc51, i32 1
  %48 = ptrtoint ptr %length62 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %length62, align 4
  %inc64 = add i32 %39, 2
  %49 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc64, ptr %number_of_packets, align 4
  br label %for.end

if.end67:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_elapsed.0292)
  %tobool68.not = icmp eq i32 %period_elapsed.0292, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %frame_limit.0287)
  %cmp69.not = icmp ult i32 %add32, %frame_limit.0287
  %or.cond = select i1 %tobool68.not, i1 %cmp69.not, i1 false
  br i1 %or.cond, label %if.end67.for.inc_crit_edge, label %if.end67.land.lhs.true71_crit_edge

if.end67.land.lhs.true71_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true71

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true71:                                  ; preds = %if.end67.land.lhs.true71_crit_edge, %if.then35.land.lhs.true71_crit_edge
  %period_elapsed.1275 = phi i32 [ %period_elapsed.0292, %if.end67.land.lhs.true71_crit_edge ], [ 1, %if.then35.land.lhs.true71_crit_edge ]
  %frame_limit.1273 = phi i32 [ %frame_limit.0287, %if.end67.land.lhs.true71_crit_edge ], [ 0, %if.then35.land.lhs.true71_crit_edge ]
  %transfer_done.2271 = phi i32 [ %add32, %if.end67.land.lhs.true71_crit_edge ], [ %sub37, %if.then35.land.lhs.true71_crit_edge ]
  %call72 = tail call i32 @snd_usb_endpoint_implicit_feedback_sink(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.for.end_crit_edge, label %land.lhs.true71.for.inc_crit_edge

land.lhs.true71.for.inc_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true71.for.end_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true71.for.inc_crit_edge, %if.end67.for.inc_crit_edge
  %period_elapsed.1276 = phi i32 [ 0, %if.end67.for.inc_crit_edge ], [ %period_elapsed.1275, %land.lhs.true71.for.inc_crit_edge ]
  %frame_limit.1274 = phi i32 [ %frame_limit.0287, %if.end67.for.inc_crit_edge ], [ %frame_limit.1273, %land.lhs.true71.for.inc_crit_edge ]
  %transfer_done.2272 = phi i32 [ %add32, %if.end67.for.inc_crit_edge ], [ %transfer_done.2271, %land.lhs.true71.for.inc_crit_edge ]
  %inc76 = add nuw nsw i32 %i.0289, 1
  %50 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %packets, align 4
  %cmp19 = icmp slt i32 %inc76, %51
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true71.for.end_crit_edge, %if.then55, %if.end50.for.end_crit_edge, %for.body.for.end_crit_edge
  %frames.2 = phi i32 [ %frames.1, %if.then55 ], [ %frames.1, %if.end50.for.end_crit_edge ], [ %add29, %for.inc.for.end_crit_edge ], [ %frames.0285, %for.body.for.end_crit_edge ], [ %add29, %land.lhs.true71.for.end_crit_edge ]
  %transfer_done.3 = phi i32 [ 0, %if.then55 ], [ 0, %if.end50.for.end_crit_edge ], [ %transfer_done.2272, %for.inc.for.end_crit_edge ], [ %transfer_done.0286, %for.body.for.end_crit_edge ], [ %transfer_done.2271, %land.lhs.true71.for.end_crit_edge ]
  %frame_limit.2 = phi i32 [ 0, %if.then55 ], [ 0, %if.end50.for.end_crit_edge ], [ %frame_limit.1274, %for.inc.for.end_crit_edge ], [ %frame_limit.0287, %for.body.for.end_crit_edge ], [ %frame_limit.1273, %land.lhs.true71.for.end_crit_edge ]
  %period_elapsed.2 = phi i32 [ 1, %if.then55 ], [ 1, %if.end50.for.end_crit_edge ], [ %period_elapsed.1276, %for.inc.for.end_crit_edge ], [ %period_elapsed.0292, %for.body.for.end_crit_edge ], [ %period_elapsed.1275, %land.lhs.true71.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frames.2)
  %tobool77.not = icmp eq i32 %frames.2, 0
  br i1 %tobool77.not, label %for.end.unlock.thread_crit_edge, label %if.end79

for.end.unlock.thread_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread

unlock.thread:                                    ; preds = %for.end.unlock.thread_crit_edge, %if.end18.unlock.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br label %cleanup

if.end79:                                         ; preds = %for.end
  %mul80 = mul i32 %frames.2, %9
  %52 = ptrtoint ptr %transfer_done8 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %transfer_done.3, ptr %transfer_done8, align 4
  %53 = ptrtoint ptr %frame_limit7 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %frame_limit.2, ptr %frame_limit7, align 8
  %cur_format = getelementptr inbounds %struct.snd_usb_endpoint, ptr %5, i32 0, i32 53
  %54 = ptrtoint ptr %cur_format to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_format, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %55, label %if.end79.if.else105_crit_edge [
    i32 49, label %land.rhs
    i32 48, label %land.rhs93
  ]

if.end79.if.else105_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105

land.rhs:                                         ; preds = %if.end79
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 5
  %57 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cur_audiofmt, align 4
  %dsd_dop = getelementptr inbounds %struct.audioformat, ptr %58, i32 0, i32 28
  %59 = ptrtoint ptr %dsd_dop to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dsd_dop, align 8, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool85.not = icmp eq i8 %60, 0
  br i1 %tobool85.not, label %land.rhs.if.else105_crit_edge, label %if.then89, !prof !84

land.rhs.if.else105_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105

if.then89:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fill_playback_urb_dsd_dop(ptr noundef %subs, ptr noundef %urb, i32 noundef %mul80)
  br label %if.end112

land.rhs93:                                       ; preds = %if.end79
  %cur_audiofmt94 = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 5
  %61 = ptrtoint ptr %cur_audiofmt94 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur_audiofmt94, align 4
  %dsd_bitrev = getelementptr inbounds %struct.audioformat, ptr %62, i32 0, i32 29
  %63 = ptrtoint ptr %dsd_bitrev to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dsd_bitrev, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool95.not = icmp eq i8 %64, 0
  br i1 %tobool95.not, label %land.rhs93.if.else105_crit_edge, label %if.then104, !prof !84

land.rhs93.if.else105_crit_edge:                  ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else105

if.then104:                                       ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @fill_playback_urb_dsd_bitrev(ptr noundef %subs, ptr noundef %urb, i32 noundef %mul80)
  br label %if.end112

if.else105:                                       ; preds = %land.rhs93.if.else105_crit_edge, %land.rhs.if.else105_crit_edge, %if.end79.if.else105_crit_edge
  %tx_length_quirk = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 8
  %65 = ptrtoint ptr %tx_length_quirk to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load = load i8, ptr %tx_length_quirk, align 8
  %66 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool106.not = icmp eq i8 %66, 0
  br i1 %tobool106.not, label %if.then107, label %if.else108

if.then107:                                       ; preds = %if.else105
  %67 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcm_substream, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %runtime1.i, align 4
  %hwptr_done.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 16
  %71 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hwptr_done.i, align 8
  %add.i = add i32 %72, %mul80
  %buffer_bytes.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 14
  %73 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buffer_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %74)
  %cmp.i = icmp ugt i32 %add.i, %74
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %74, %72
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %75 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %transfer_buffer.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %70, i32 0, i32 50
  %77 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_area.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %78, i32 %72
  %79 = call ptr @memcpy(ptr %76, ptr %add.ptr5.i, i32 %sub.i)
  %80 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %80, i32 %sub.i
  %81 = load ptr, ptr %dma_area.i, align 4
  %sub10.i = sub i32 %mul80, %sub.i
  %82 = call ptr @memcpy(ptr %add.ptr8.i, ptr %81, i32 %sub10.i)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %transfer_buffer11.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer11.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %transfer_buffer11.i, align 4
  %dma_area13.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %70, i32 0, i32 50
  %85 = ptrtoint ptr %dma_area13.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dma_area13.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %86, i32 %72
  %87 = call ptr @memcpy(ptr %84, ptr %add.ptr15.i, i32 %mul80)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %88 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %context, align 4
  %queued.i.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %queued.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %queued.i.i, align 4
  %add.i.i = add i32 %91, %mul80
  store i32 %add.i.i, ptr %queued.i.i, align 4
  %inflight_bytes.i.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 15
  %92 = ptrtoint ptr %inflight_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %inflight_bytes.i.i, align 4
  %add1.i.i = add i32 %93, %mul80
  store i32 %add1.i.i, ptr %inflight_bytes.i.i, align 4
  %94 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hwptr_done.i, align 8
  %add2.i.i = add i32 %95, %mul80
  store i32 %add2.i.i, ptr %hwptr_done.i, align 8
  %96 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %buffer_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i, i32 %97)
  %cmp.not.i.i = icmp ult i32 %add2.i.i, %97
  br i1 %cmp.not.i.i, label %if.end.i.if.end112_crit_edge, label %if.then.i.i

if.end.i.if.end112_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %add2.i.i, %97
  %98 = ptrtoint ptr %hwptr_done.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %sub.i.i, ptr %hwptr_done.i, align 8
  br label %if.end112

if.else108:                                       ; preds = %if.else105
  %99 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp1.i = icmp sgt i32 %100, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.else108.copy_to_urb_quirk.exit_crit_edge

if.else108.copy_to_urb_quirk.exit_crit_edge:      ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_urb_quirk.exit

for.body.lr.ph.i:                                 ; preds = %if.else108
  %transfer_buffer.i259 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %hwptr_done.i.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 16
  %buffer_bytes.i.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 14
  %inflight_bytes.i.i.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %copy_to_urb.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %copy_to_urb.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.02.i
  %length1.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.02.i, i32 1
  %101 = ptrtoint ptr %length1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %length1.i, align 4
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %102) #8
  %mul.i = shl i32 %i.02.i, 2
  %add.i260 = add i32 %104, %mul.i
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add.i260, ptr %arrayidx.i, align 4
  %add11.i = add i32 %102, 4
  %107 = ptrtoint ptr %length1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add11.i, ptr %length1.i, align 4
  %108 = ptrtoint ptr %transfer_buffer.i259 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %transfer_buffer.i259, align 4
  %add.ptr.i = getelementptr i8, ptr %109, i32 %add.i260
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %105, ptr %add.ptr.i, align 1
  %add12.i = add i32 %add.i260, 4
  %111 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pcm_substream, align 8
  %runtime1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %runtime1.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %runtime1.i.i, align 4
  %115 = ptrtoint ptr %hwptr_done.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %hwptr_done.i.i, align 8
  %add.i.i261 = add i32 %116, %102
  %117 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i261, i32 %118)
  %cmp.i.i = icmp ugt i32 %add.i.i261, %118
  br i1 %cmp.i.i, label %if.then.i.i263, label %if.else.i.i

if.then.i.i263:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i262 = sub i32 %118, %116
  %119 = ptrtoint ptr %transfer_buffer.i259 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %transfer_buffer.i259, align 4
  %add.ptr.i.i = getelementptr i8, ptr %120, i32 %add12.i
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %114, i32 0, i32 50
  %121 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %122, i32 %116
  %123 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr5.i.i, i32 %sub.i.i262)
  %124 = load ptr, ptr %transfer_buffer.i259, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %124, i32 %add12.i
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr7.i.i, i32 %sub.i.i262
  %125 = load ptr, ptr %dma_area.i.i, align 4
  %sub10.i.i = sub i32 %102, %sub.i.i262
  %126 = call ptr @memcpy(ptr %add.ptr8.i.i, ptr %125, i32 %sub10.i.i)
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %transfer_buffer.i259 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %transfer_buffer.i259, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %128, i32 %add12.i
  %dma_area13.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %114, i32 0, i32 50
  %129 = ptrtoint ptr %dma_area13.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dma_area13.i.i, align 4
  %add.ptr15.i.i = getelementptr i8, ptr %130, i32 %116
  %131 = call ptr @memcpy(ptr %add.ptr12.i.i, ptr %add.ptr15.i.i, i32 %102)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i263
  %132 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %context, align 4
  %queued.i.i.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %queued.i.i.i, align 4
  %add.i.i.i = add i32 %135, %102
  store i32 %add.i.i.i, ptr %queued.i.i.i, align 4
  %136 = ptrtoint ptr %inflight_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %inflight_bytes.i.i.i, align 4
  %add1.i.i.i = add i32 %137, %102
  store i32 %add1.i.i.i, ptr %inflight_bytes.i.i.i, align 4
  %138 = ptrtoint ptr %hwptr_done.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hwptr_done.i.i, align 8
  %add2.i.i.i = add i32 %139, %102
  store i32 %add2.i.i.i, ptr %hwptr_done.i.i, align 8
  %140 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i.i.i, i32 %141)
  %cmp.not.i.i.i = icmp ult i32 %add2.i.i.i, %141
  br i1 %cmp.not.i.i.i, label %if.end.i.i.copy_to_urb.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.i.copy_to_urb.exit.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_urb.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = sub i32 %add2.i.i.i, %141
  %142 = ptrtoint ptr %hwptr_done.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %sub.i.i.i, ptr %hwptr_done.i.i, align 8
  br label %copy_to_urb.exit.i

copy_to_urb.exit.i:                               ; preds = %if.then.i.i.i, %if.end.i.i.copy_to_urb.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %143 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %number_of_packets, align 4
  %cmp.i264 = icmp slt i32 %inc.i, %144
  br i1 %cmp.i264, label %copy_to_urb.exit.i.for.body.i_crit_edge, label %copy_to_urb.exit.i.copy_to_urb_quirk.exit_crit_edge

copy_to_urb.exit.i.copy_to_urb_quirk.exit_crit_edge: ; preds = %copy_to_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_urb_quirk.exit

copy_to_urb.exit.i.for.body.i_crit_edge:          ; preds = %copy_to_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

copy_to_urb_quirk.exit:                           ; preds = %copy_to_urb.exit.i.copy_to_urb_quirk.exit_crit_edge, %if.else108.copy_to_urb_quirk.exit_crit_edge
  %.lcssa.i = phi i32 [ %100, %if.else108.copy_to_urb_quirk.exit_crit_edge ], [ %144, %copy_to_urb.exit.i.copy_to_urb_quirk.exit_crit_edge ]
  %mul14.i = shl i32 %.lcssa.i, 2
  %add15.i = add i32 %mul14.i, %mul80
  br label %if.end112

if.end112:                                        ; preds = %copy_to_urb_quirk.exit, %if.then.i.i, %if.end.i.if.end112_crit_edge, %if.then104, %if.then89
  %bytes.0 = phi i32 [ %mul80, %if.then89 ], [ %mul80, %if.then104 ], [ %add15.i, %copy_to_urb_quirk.exit ], [ %mul80, %if.end.i.if.end112_crit_edge ], [ %mul80, %if.then.i.i ]
  %dev = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 1
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 4
  %call113 = tail call i32 @usb_get_current_frame_number(ptr noundef %146) #8
  %last_frame_number = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 28
  %147 = ptrtoint ptr %last_frame_number to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %call113, ptr %last_frame_number, align 8
  %trigger_tstamp_pending_update = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 30
  %148 = ptrtoint ptr %trigger_tstamp_pending_update to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %trigger_tstamp_pending_update, align 8, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool114.not = icmp eq i8 %149, 0
  br i1 %tobool114.not, label %if.end112.if.end117_crit_edge, label %if.then115

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then115:                                       ; preds = %if.end112
  %trigger_tstamp = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 1
  %tstamp_type.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 49
  %150 = ptrtoint ptr %tstamp_type.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tstamp_type.i, align 8
  %152 = zext i32 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %151, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ktime_get_ts64(ptr noundef %trigger_tstamp) #8
  br label %snd_pcm_gettime.exit

sw.bb1.i:                                         ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ktime_get_raw_ts64(ptr noundef %trigger_tstamp) #8
  br label %snd_pcm_gettime.exit

sw.default.i:                                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ktime_get_real_ts64(ptr noundef %trigger_tstamp) #8
  br label %snd_pcm_gettime.exit

snd_pcm_gettime.exit:                             ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i
  %153 = ptrtoint ptr %trigger_tstamp_pending_update to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %trigger_tstamp_pending_update, align 8
  br label %if.end117

if.end117:                                        ; preds = %snd_pcm_gettime.exit, %if.end112.if.end117_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_elapsed.2)
  %tobool118.not = icmp eq i32 %period_elapsed.2, 0
  br i1 %tobool118.not, label %if.end117.if.end134.thread_crit_edge, label %land.lhs.true119

if.end117.if.end134.thread_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134.thread

land.lhs.true119:                                 ; preds = %if.end117
  %running = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 12
  %154 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load120 = load i8, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load120)
  %tobool123.not = icmp sgt i8 %bf.load120, -1
  br i1 %tobool123.not, label %land.lhs.true124, label %land.lhs.true119.if.then136_crit_edge

land.lhs.true119.if.then136_crit_edge:            ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136

land.lhs.true124:                                 ; preds = %land.lhs.true119
  %155 = ptrtoint ptr %lowlatency_playback to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %lowlatency_playback, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool126.not = icmp eq i8 %156, 0
  br i1 %tobool126.not, label %land.lhs.true124.if.then136_crit_edge, label %if.then128

land.lhs.true124.if.then136_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136

if.then128:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  %period_elapsed_pending = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 13
  %157 = ptrtoint ptr %period_elapsed_pending to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %period_elapsed_pending, align 4
  br label %if.end134.thread

if.end134.thread:                                 ; preds = %if.then128, %if.end117.if.end134.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %transfer_buffer_length313 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %158 = ptrtoint ptr %transfer_buffer_length313 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %bytes.0, ptr %transfer_buffer_length313, align 4
  br label %cleanup

if.then136:                                       ; preds = %land.lhs.true124.if.then136_crit_edge, %land.lhs.true119.if.then136_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %159 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %bytes.0, ptr %transfer_buffer_length, align 4
  %160 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pcm_substream, align 8
  br i1 %in_stream_lock, label %if.then138, label %if.else140

if.then138:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed_under_stream_lock(ptr noundef %161) #8
  br label %cleanup

if.else140:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef %161) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else140, %if.then138, %if.end134.thread, %unlock.thread
  %retval.0 = phi i32 [ 0, %if.then138 ], [ 0, %if.else140 ], [ -11, %unlock.thread ], [ 0, %if.end134.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @retire_playback_urb(ptr noundef %subs, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 27
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %queued = getelementptr inbounds %struct.snd_urb_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inflight_bytes = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 15
  %4 = ptrtoint ptr %inflight_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inflight_bytes, align 4
  %6 = call i32 @llvm.usub.sat.i32(i32 %5, i32 %3)
  %7 = ptrtoint ptr %inflight_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inflight_bytes, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then, %entry.if.end12_crit_edge
  %dev = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call13 = tail call i32 @usb_get_current_frame_number(ptr noundef %9) #8
  %last_frame_number = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 28
  %10 = ptrtoint ptr %last_frame_number to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call13, ptr %last_frame_number, align 8
  %running = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 12
  %11 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %running, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %if.end22.critedge, label %if.then15

if.then15:                                        ; preds = %if.end12
  %period_elapsed_pending = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 13
  %12 = ptrtoint ptr %period_elapsed_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_elapsed_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %period_elapsed_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %period_elapsed_pending, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br i1 %tobool16.not, label %if.then15.if.end22_crit_edge, label %if.then21

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %pcm_substream = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 2
  %15 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm_substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %16) #8
  br label %if.end22

if.end22.critedge:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end22.critedge, %if.then21, %if.then15.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_endpoint_next_packet_size(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_playback_urb_dsd_dop(ptr nocapture noundef %subs, ptr nocapture noundef readonly %urb, i32 noundef %bytes) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %pcm_substream = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_substream, align 8
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %hwptr_done = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 16
  %buffer_bytes = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 14
  %4 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_bytes, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_area, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not88 = icmp eq i32 %bytes, 0
  br i1 %tobool.not88, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %10 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwptr_done, align 8
  %dsd_dop = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 29
  %byte_idx = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 29, i32 2
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 5
  %channel = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 29, i32 1
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %dec92.in = phi i32 [ %bytes, %while.body.lr.ph ], [ %dec92, %if.end56.while.body_crit_edge ]
  %dst_idx.091 = phi i32 [ 0, %while.body.lr.ph ], [ %dst_idx.2, %if.end56.while.body_crit_edge ]
  %queued.090 = phi i32 [ 0, %while.body.lr.ph ], [ %queued.1, %if.end56.while.body_crit_edge ]
  %src_idx.089 = phi i32 [ %11, %while.body.lr.ph ], [ %src_idx.1, %if.end56.while.body_crit_edge ]
  %dec92 = add i32 %dec92.in, -1
  %12 = ptrtoint ptr %byte_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %byte_idx, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %byte_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp = icmp eq i32 %inc, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %14 = ptrtoint ptr %dsd_dop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsd_dop, align 4
  %arrayidx = getelementptr [2 x i8], ptr @__const.fill_playback_urb_dsd_dop.marker, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr i8, ptr %7, i32 %dst_idx.091
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx5, align 1
  %add = add i32 %src_idx.089, 2
  %19 = ptrtoint ptr %byte_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %byte_idx, align 4
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  %inc9 = add i32 %21, 1
  store i32 %inc9, ptr %channel, align 4
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels, align 8
  %rem = urem i32 %inc9, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %if.then11, label %if.then.if.end56_crit_edge

if.then.if.end56_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dsd_dop to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dsd_dop, align 4
  %26 = and i32 %25, 1
  %rem17 = xor i32 %26, 1
  store i32 %rem17, ptr %dsd_dop, align 4
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %channel, align 4
  br label %if.end56

if.else:                                          ; preds = %while.body
  %sub = add i32 %13, %src_idx.089
  %rem23 = urem i32 %sub, %5
  %28 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_audiofmt, align 4
  %dsd_bitrev = getelementptr inbounds %struct.audioformat, ptr %29, i32 0, i32 29
  %30 = ptrtoint ptr %dsd_bitrev to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dsd_bitrev, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool24.not = icmp eq i8 %31, 0
  %arrayidx51 = getelementptr i8, ptr %9, i32 %rem23
  %32 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx51, align 1
  br i1 %tobool24.not, label %if.else.if.end54_crit_edge, label %cond.false

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i8 %33 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  br label %if.end54

if.end54:                                         ; preds = %cond.false, %if.else.if.end54_crit_edge
  %.sink = phi i8 [ %35, %cond.false ], [ %33, %if.else.if.end54_crit_edge ]
  %arrayidx53 = getelementptr i8, ptr %7, i32 %dst_idx.091
  %36 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %arrayidx53, align 1
  %inc55 = add i32 %queued.090, 1
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.then11, %if.then.if.end56_crit_edge
  %src_idx.1 = phi i32 [ %add, %if.then11 ], [ %add, %if.then.if.end56_crit_edge ], [ %src_idx.089, %if.end54 ]
  %queued.1 = phi i32 [ %queued.090, %if.then11 ], [ %queued.090, %if.then.if.end56_crit_edge ], [ %inc55, %if.end54 ]
  %dst_idx.2 = add nuw i32 %dst_idx.091, 1
  %tobool.not = icmp eq i32 %dec92, 0
  br i1 %tobool.not, label %if.end56.while.end_crit_edge, label %if.end56.while.body_crit_edge

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end56.while.end_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end56.while.end_crit_edge, %entry.while.end_crit_edge
  %queued.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %queued.1, %if.end56.while.end_crit_edge ]
  %context.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %37 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %context.i, align 4
  %queued.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %queued.i, align 4
  %add.i = add i32 %40, %queued.0.lcssa
  store i32 %add.i, ptr %queued.i, align 4
  %inflight_bytes.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 15
  %41 = ptrtoint ptr %inflight_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %inflight_bytes.i, align 4
  %add1.i = add i32 %42, %queued.0.lcssa
  store i32 %add1.i, ptr %inflight_bytes.i, align 4
  %43 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hwptr_done, align 8
  %add2.i = add i32 %44, %queued.0.lcssa
  store i32 %add2.i, ptr %hwptr_done, align 8
  %45 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %46)
  %cmp.not.i = icmp ult i32 %add2.i, %46
  br i1 %cmp.not.i, label %while.end.urb_ctx_queue_advance.exit_crit_edge, label %if.then.i

while.end.urb_ctx_queue_advance.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %urb_ctx_queue_advance.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %add2.i, %46
  %47 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %hwptr_done, align 8
  br label %urb_ctx_queue_advance.exit

urb_ctx_queue_advance.exit:                       ; preds = %if.then.i, %while.end.urb_ctx_queue_advance.exit_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_playback_urb_dsd_bitrev(ptr nocapture noundef %subs, ptr nocapture noundef readonly %urb, i32 noundef %bytes) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_substream = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_substream, align 8
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %hwptr_done = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp41.not = icmp eq i32 %bytes, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %6 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwptr_done, align 8
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  %buffer_bytes = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 14
  br label %cond.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.body.lr.ph
  %buf.044 = phi ptr [ %9, %for.body.lr.ph ], [ %incdec.ptr, %cond.end.cond.end_crit_edge ]
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %cond.end.cond.end_crit_edge ]
  %ofs.042 = phi i32 [ %7, %for.body.lr.ph ], [ %spec.store.select, %cond.end.cond.end_crit_edge ]
  %arrayidx = getelementptr i8, ptr %5, i32 %ofs.042
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %idxprom.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.044, i32 1
  %14 = ptrtoint ptr %buf.044 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %buf.044, align 1
  %inc = add i32 %ofs.042, 1
  %15 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp23.not = icmp ult i32 %inc, %16
  %spec.store.select = select i1 %cmp23.not, i32 %inc, i32 0
  %inc25 = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc25, %bytes
  br i1 %exitcond.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %entry.for.end_crit_edge
  %context.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %17 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context.i, align 4
  %queued.i = getelementptr inbounds %struct.snd_urb_ctx, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queued.i, align 4
  %add.i = add i32 %20, %bytes
  store i32 %add.i, ptr %queued.i, align 4
  %inflight_bytes.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 15
  %21 = ptrtoint ptr %inflight_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %inflight_bytes.i, align 4
  %add1.i = add i32 %22, %bytes
  store i32 %add1.i, ptr %inflight_bytes.i, align 4
  %23 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwptr_done, align 8
  %add2.i = add i32 %24, %bytes
  store i32 %add2.i, ptr %hwptr_done, align 8
  %buffer_bytes.i = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 14
  %25 = ptrtoint ptr %buffer_bytes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_bytes.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %26)
  %cmp.not.i = icmp ult i32 %add2.i, %26
  br i1 %cmp.not.i, label %for.end.urb_ctx_queue_advance.exit_crit_edge, label %if.then.i

for.end.urb_ctx_queue_advance.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %urb_ctx_queue_advance.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %add2.i, %26
  %27 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %hwptr_done, align 8
  br label %urb_ctx_queue_advance.exit

urb_ctx_queue_advance.exit:                       ; preds = %if.then.i, %for.end.urb_ctx_queue_advance.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_current_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed_under_stream_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_queue_pending_output_urbs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_substream_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb12_crit_edge
    i32 0, label %entry.sw.bb12_crit_edge65
    i32 3, label %entry.sw.bb14_crit_edge
  ]

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

entry.sw.bb12_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call fastcc i32 @start_endpoints(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.bb1_crit_edge

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %data_endpoint = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %data_endpoint to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data_endpoint, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %6, ptr noundef null, ptr noundef nonnull @retire_capture_urb, ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @usb_get_current_frame_number(ptr noundef %8) #8
  %last_frame_number = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 28
  %9 = ptrtoint ptr %last_frame_number to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2, ptr %last_frame_number, align 8
  %running = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %running, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %running, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_substream_capture_trigger, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !80

if.then6:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %cur_audiofmt = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %cur_audiofmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_audiofmt, align 4
  %iface = getelementptr inbounds %struct.audioformat, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %iface, align 8
  %conv = zext i8 %16 to i32
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %altsetting, align 1
  %conv10 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug271, ptr noundef %dev8, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv10) #8
  br label %cleanup

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge65
  %flags.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 22
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb12.if.end.i_crit_edge, label %if.then.i

sw.bb12.if.end.i_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %sync_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 21
  %19 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sync_endpoint.i, align 4
  tail call void @snd_usb_endpoint_stop(ptr noundef %20, i1 noundef zeroext false) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb12.if.end.i_crit_edge
  %call3.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.sw.bb14_crit_edge, label %if.then5.i

if.end.i.sw.bb14_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_endpoint.i = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %21 = ptrtoint ptr %data_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_endpoint.i, align 8
  tail call void @snd_usb_endpoint_stop(ptr noundef %22, i1 noundef zeroext false) #8
  br label %sw.bb14

sw.bb14:                                          ; preds = %if.then5.i, %if.end.i.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge
  %data_endpoint15 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 20
  %23 = ptrtoint ptr %data_endpoint15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_endpoint15, align 8
  tail call void @snd_usb_endpoint_set_callback(ptr noundef %24, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %running16 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 12
  %25 = ptrtoint ptr %running16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load17 = load i8, ptr %running16, align 8
  %bf.clear18 = and i8 %bf.load17, 127
  store i8 %bf.clear18, ptr %running16, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_substream_capture_trigger, %if.then32)) #8
          to label %cleanup [label %if.then32], !srcloc !80

if.then32:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev33, align 4
  %dev34 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  %cur_audiofmt35 = getelementptr inbounds %struct.snd_usb_substream, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %cur_audiofmt35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_audiofmt35, align 4
  %iface36 = getelementptr inbounds %struct.audioformat, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %iface36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %iface36, align 8
  %conv37 = zext i8 %31 to i32
  %altsetting39 = getelementptr inbounds %struct.audioformat, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %altsetting39 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %altsetting39, align 1
  %conv40 = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug272, ptr noundef %dev34, ptr noundef nonnull @.str.24, i32 noundef %conv37, i32 noundef %conv40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %sw.bb14, %if.then6, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then32 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @retire_capture_urb(ptr noundef %subs, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_substream = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_substream, align 8
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dev = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call i32 @usb_get_current_frame_number(ptr noundef %5) #8
  %frame_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits, align 8
  %shr = lshr i32 %7, 3
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %8 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp174 = icmp sgt i32 %9, 0
  br i1 %cmp174, label %for.body.lr.ph, label %entry.if.end98_crit_edge

entry.if.end98_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

for.body.lr.ph:                                   ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %pkt_offset_adj = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 10
  %stream_offset_adj = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 11
  %txfr_quirk = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 8
  %sample_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 22
  %lock = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 27
  %hwptr_done = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 16
  %buffer_bytes = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 14
  %transfer_done = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 17
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %last_frame_number = getelementptr inbounds %struct.snd_usb_substream, ptr %subs, i32 0, i32 28
  %dma_area92 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %period_elapsed.0176 = phi i32 [ 0, %for.body.lr.ph ], [ %period_elapsed.1, %for.inc.for.body_crit_edge ]
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0175
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %14 = ptrtoint ptr %pkt_offset_adj to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pkt_offset_adj, align 8
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %15
  %status = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0175, i32 3
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %for.body.if.end17_crit_edge, label %land.lhs.true

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.retire_capture_urb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end17_crit_edge, label %do.body

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @retire_capture_urb.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@retire_capture_urb, %if.then11)) #8
          to label %if.end17 [label %if.then11], !srcloc !80

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %dev13 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @retire_capture_urb.__UNIQUE_ID_ddebug265, ptr noundef %dev13, ptr noundef nonnull @.str.25, i32 noundef %i.0175, i32 noundef %21) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %do.body, %land.lhs.true.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0175, i32 2
  %22 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length, align 4
  %24 = ptrtoint ptr %stream_offset_adj to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream_offset_adj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp20.not = icmp eq i32 %25, 0
  br i1 %cmp20.not, label %if.end17.if.end28_crit_edge, label %if.then21

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %23)
  %add.ptr25 = getelementptr i8, ptr %add.ptr2, i32 %26
  %sub = sub i32 %23, %26
  %sub27 = sub i32 %25, %26
  %27 = ptrtoint ptr %stream_offset_adj to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub27, ptr %stream_offset_adj, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end17.if.end28_crit_edge
  %cp.0 = phi ptr [ %add.ptr25, %if.then21 ], [ %add.ptr2, %if.end17.if.end28_crit_edge ]
  %bytes.0 = phi i32 [ %sub, %if.then21 ], [ %23, %if.end17.if.end28_crit_edge ]
  %28 = ptrtoint ptr %txfr_quirk to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %txfr_quirk, align 8
  %29 = urem i32 %bytes.0, %shr
  %mul = sub i32 %bytes.0, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool29.not173 = icmp slt i8 %bf.load, 0
  %spec.select = select i1 %tobool29.not173, i32 %bytes.0, i32 %mul
  %30 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample_bits, align 4
  %shr32 = lshr i32 %31, 3
  %rem = urem i32 %spec.select, %shr32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp33.not = icmp eq i32 %rem, 0
  br i1 %cmp33.not, label %if.end28.do.body50_crit_edge, label %if.then34

if.end28.do.body50_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

if.then34:                                        ; preds = %if.end28
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @retire_capture_urb._rs, ptr noundef nonnull @__func__.retire_capture_urb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then34.do.body50_crit_edge, label %do.end42

if.then34.do.body50_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

do.end42:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev44 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev44, ptr noundef nonnull @.str.27, i32 noundef %spec.select, i32 noundef %mul) #11
  br label %do.body50

do.body50:                                        ; preds = %do.end42, %if.then34.do.body50_crit_edge, %if.end28.do.body50_crit_edge
  %bytes.2 = phi i32 [ %spec.select, %if.end28.do.body50_crit_edge ], [ %mul, %do.end42 ], [ %mul, %if.then34.do.body50_crit_edge ]
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %34 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwptr_done, align 8
  %add = add i32 %35, %bytes.2
  store i32 %add, ptr %hwptr_done, align 8
  %36 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %37)
  %cmp61.not = icmp ult i32 %add, %37
  br i1 %cmp61.not, label %do.body50.if.end67_crit_edge, label %if.then63

do.body50.if.end67_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then63:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %sub66 = sub i32 %add, %37
  %38 = ptrtoint ptr %hwptr_done to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub66, ptr %hwptr_done, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %do.body50.if.end67_crit_edge
  %rem68 = urem i32 %35, %shr
  %add69 = add i32 %rem68, %bytes.2
  %div70 = udiv i32 %add69, %shr
  %39 = ptrtoint ptr %transfer_done to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %transfer_done, align 4
  %add71 = add i32 %40, %div70
  store i32 %add71, ptr %transfer_done, align 4
  %41 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add71, i32 %42)
  %cmp73.not = icmp ult i32 %add71, %42
  br i1 %cmp73.not, label %if.end67.if.end79_crit_edge, label %if.then75

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then75:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %sub78 = sub i32 %add71, %42
  %43 = ptrtoint ptr %transfer_done to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub78, ptr %transfer_done, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.end67.if.end79_crit_edge
  %period_elapsed.1 = phi i32 [ 1, %if.then75 ], [ %period_elapsed.0176, %if.end67.if.end79_crit_edge ]
  %44 = ptrtoint ptr %last_frame_number to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call, ptr %last_frame_number, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call54) #8
  %45 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %46)
  %cmp83 = icmp ugt i32 %add, %46
  br i1 %cmp83, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %sub87 = sub i32 %46, %35
  %47 = ptrtoint ptr %dma_area92 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_area92, align 4
  %add.ptr88 = getelementptr i8, ptr %48, i32 %35
  %49 = call ptr @memcpy(ptr %add.ptr88, ptr %cp.0, i32 %sub87)
  %50 = load ptr, ptr %dma_area92, align 4
  %add.ptr90 = getelementptr i8, ptr %cp.0, i32 %sub87
  %sub91 = sub i32 %bytes.2, %sub87
  %51 = call ptr @memcpy(ptr %50, ptr %add.ptr90, i32 %sub91)
  br label %for.inc

if.else:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %dma_area92 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_area92, align 4
  %add.ptr93 = getelementptr i8, ptr %53, i32 %35
  %54 = call ptr @memcpy(ptr %add.ptr93, ptr %cp.0, i32 %bytes.2)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then85
  %inc = add nuw nsw i32 %i.0175, 1
  %55 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc, %56
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_elapsed.1)
  %tobool95.not = icmp eq i32 %period_elapsed.1, 0
  br i1 %tobool95.not, label %for.end.if.end98_crit_edge, label %if.then96

for.end.if.end98_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %pcm_substream to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcm_substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %58) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %for.end.if.end98_crit_edge, %entry.if.end98_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !64, !66, !67, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/pcm.c", i32 200, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @snd_usb_init_pitch.__UNIQUE_ID_ddebug241, !1, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/pcm.c", i32 214, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_usb_init_pitch._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_usb_init_pitch._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/pcm.c", i32 332, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_usb_audioformat_set_sync_ep._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @snd_usb_audioformat_set_sync_ep._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/usb/pcm.c", i32 347, i32 3}
!19 = !{ptr @snd_usb_audioformat_set_sync_ep._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @snd_usb_audioformat_set_sync_ep._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/usb/pcm.c", i32 363, i32 2}
!23 = !{ptr @snd_usb_audioformat_set_sync_ep.__UNIQUE_ID_ddebug242, !22, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/pcm.c", i32 379, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @snd_usb_pcm_change_state._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @snd_usb_pcm_change_state._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @snd_usb_playback_ops, !30, !"snd_usb_playback_ops", i1 false, i1 false}
!30 = !{!"../sound/usb/pcm.c", i32 1640, i32 33}
!31 = !{ptr @snd_usb_hardware, !32, !"snd_usb_hardware", i1 false, i1 false}
!32 = !{!"../sound/usb/pcm.c", i32 662, i32 38}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/usb/pcm.c", i32 482, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_usb_hw_params.__UNIQUE_ID_ddebug243, !34, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/usb/pcm.c", i32 495, i32 4}
!39 = !{ptr @snd_usb_hw_params.__UNIQUE_ID_ddebug244, !38, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/usb/pcm.c", i32 1571, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug268, !41, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/usb/pcm.c", i32 1581, i32 3}
!46 = !{ptr @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug269, !45, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/usb/pcm.c", i32 1592, i32 3}
!49 = !{ptr @snd_usb_substream_playback_trigger.__UNIQUE_ID_ddebug270, !48, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!50 = !{ptr @snd_usb_capture_ops, !51, !"snd_usb_capture_ops", i1 false, i1 false}
!51 = !{!"../sound/usb/pcm.c", i32 1652, i32 33}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/usb/pcm.c", i32 1619, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug271, !53, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/usb/pcm.c", i32 1631, i32 3}
!58 = !{ptr @snd_usb_substream_capture_trigger.__UNIQUE_ID_ddebug272, !57, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!59 = !{ptr @__func__.retire_capture_urb, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/pcm.c", i32 1177, i32 40}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/usb/pcm.c", i32 1178, i32 4}
!63 = !{ptr @retire_capture_urb.__UNIQUE_ID_ddebug265, !62, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/usb/pcm.c", i32 1195, i32 4}
!66 = !{ptr @retire_capture_urb._rs, !65, !"_rs", i1 false, i1 false}
!67 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @retire_capture_urb._entry, !65, !"_entry", i1 false, i1 false}
!70 = !{ptr @retire_capture_urb._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2148246299, i64 2148246304, i64 2148246317, i64 2148246361, i64 2148246395, i64 2148246416}
!81 = !{i8 0, i8 2}
!82 = !{i32 0, i32 33}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"branch_weights", i32 2000, i32 1}
