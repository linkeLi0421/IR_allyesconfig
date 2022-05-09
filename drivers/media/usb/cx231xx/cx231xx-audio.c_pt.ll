; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-audio.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.cx231xx_ops = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110 }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr }
%struct.anon.105 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { ptr, ptr }
%struct.anon.107 = type { ptr, ptr, ptr }
%struct.anon.108 = type { ptr, ptr }
%struct.anon.109 = type { ptr, ptr }
%struct.anon.110 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__param_str_debug = internal constant [19 x i8] c"cx231xx_alsa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype309 = internal constant [32 x i8] c"cx231xx_alsa.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug310 = internal constant [45 x i8] c"cx231xx_alsa.parm=debug:activates debug info\00", section ".modinfo", align 1
@audio_ops = internal global { %struct.cx231xx_ops, [40 x i8] } { %struct.cx231xx_ops { %struct.list_head zeroinitializer, ptr @.str, i32 16, ptr @cx231xx_audio_init, ptr @cx231xx_audio_fini }, [40 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file326 = internal constant [57 x i8] c"cx231xx_alsa.file=drivers/media/usb/cx231xx/cx231xx-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [25 x i8] c"cx231xx_alsa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [67 x i8] c"cx231xx_alsa.author=Srinivasa Deevi <srinivasa.deevi@conexant.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [46 x i8] c"cx231xx_alsa.description=Cx231xx Audio driver\00", section ".modinfo", align 1
@__initcall__kmod_cx231xx_alsa__330_702_cx231xx_alsa_register6 = internal global ptr @cx231xx_alsa_register, section ".initcall6.init", align 4
@__exitcall_cx231xx_alsa_unregister = internal global ptr @cx231xx_alsa_unregister, section ".exitcall.exit", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cx231xx Audio Extension\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_audio_init.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx231xx_alsa\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx231xx_audio_init\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/usb/cx231xx/cx231xx-audio.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"probing for cx231xx non standard usbaudio\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cx231xx Audio\00", [18 x i8] zeroinitializer }, align 32
@cx231xx_audio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&adev->slock\00", [19 x i8] zeroinitializer }, align 32
@snd_cx231xx_pcm_capture = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cx231xx_capture_open, ptr @snd_cx231xx_pcm_close, ptr null, ptr null, ptr null, ptr @snd_cx231xx_prepare, ptr @snd_cx231xx_capture_trigger, ptr null, ptr @snd_cx231xx_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Conexant cx231xx Capture\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Cx231xx-Audio\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Conexant cx231xx Audio\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_audio_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->wq_trigger)\00", [60 x i8] zeroinitializer }, align 32
@cx231xx_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 626, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"audio EndPoint Addr 0x%x, Alternate settings: %i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx231xx_audio_init._entry_ptr = internal global ptr @cx231xx_audio_init._entry, section ".printk_index", align 4
@cx231xx_audio_init.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"audio alternate setting %i, max size= %i\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_cx231xx_capture_open.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_cx231xx_capture_open\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"opening device and trying to acquire exclusive lock\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_cx231xx_capture_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 406, ptr @.str.19, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't open. the device was removed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_cx231xx_capture_open._entry_ptr = internal global ptr @snd_cx231xx_capture_open._entry, section ".printk_index", align 4
@snd_cx231xx_capture_open._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 420, ptr @.str.19, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to set alternate setting !\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_cx231xx_capture_open._entry_ptr.22 = internal global ptr @snd_cx231xx_capture_open._entry.20, section ".printk_index", align 4
@snd_cx231xx_hw_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 -1073741824, i32 48000, i32 48000, i32 2, i32 2, i32 501760, i32 64, i32 12544, i32 2, i32 98, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_cx231xx_pcm_close\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"closing device\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_cx231xx_pcm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.3, i32 457, ptr @.str.19, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@snd_cx231xx_pcm_close._entry_ptr = internal global ptr @snd_cx231xx_pcm_close._entry, section ".printk_index", align 4
@snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"audio users: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.26, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disabling audio stream!\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.27, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"released lock\0A\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@audio_trigger.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_trigger\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"starting capture\00", [47 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@audio_trigger.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stopping capture\00", [47 x i8] zeroinitializer }, align 32
@cx231xx_init_audio_isoc.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx231xx_init_audio_isoc\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Starting ISO AUDIO transfers\0A\00", [62 x i8] zeroinitializer }, align 32
@cx231xx_audio_isocirq.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx231xx_audio_isocirq\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"urb completion error %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@cx231xx_audio_isocirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 166, ptr @.str.19, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"resubmit of audio urb failed (error=%i)\0A\00", [55 x i8] zeroinitializer }, align 32
@cx231xx_audio_isocirq._entry_ptr = internal global ptr @cx231xx_audio_isocirq._entry, section ".printk_index", align 4
@cx231xx_init_audio_bulk.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx231xx_init_audio_bulk\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Starting BULK AUDIO transfers\0A\00", [61 x i8] zeroinitializer }, align 32
@cx231xx_audio_bulkirq.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.3, ptr @.str.34, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx231xx_audio_bulkirq\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_audio_bulkirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.38, ptr @.str.3, i32 253, ptr @.str.19, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_audio_bulkirq._entry_ptr = internal global ptr @cx231xx_audio_bulkirq._entry, section ".printk_index", align 4
@cx231xx_bulk_audio_deinit.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx231xx_bulk_audio_deinit\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Stopping bulk\0A\00", [17 x i8] zeroinitializer }, align 32
@cx231xx_isoc_audio_deinit.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx231xx_isoc_audio_deinit\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Stopping isoc\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 25, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"audio_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 681, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 683, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 576, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 579, i32 45 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 584, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"snd_cx231xx_pcm_capture\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 551, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 594, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 595, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 597, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 599, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 624, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 645, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 401, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 405, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 419, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"snd_cx231xx_hw_capture\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 374, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 446, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 456, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 467, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 468, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 470, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 494, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 502, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 263, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 103, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 164, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 324, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 194, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 251, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 59, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [45 x i8] c"../drivers/media/usb/cx231xx/cx231xx-audio.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 35, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_debug310, ptr @__UNIQUE_ID_debugtype309, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_cx231xx_alsa_unregister, ptr @__initcall__kmod_cx231xx_alsa__330_702_cx231xx_alsa_register6, ptr @__param_debug, ptr @cx231xx_alsa_unregister, ptr @cx231xx_audio_bulkirq._entry, ptr @cx231xx_audio_bulkirq._entry_ptr, ptr @cx231xx_audio_init._entry, ptr @cx231xx_audio_init._entry_ptr, ptr @cx231xx_audio_isocirq._entry, ptr @cx231xx_audio_isocirq._entry_ptr, ptr @snd_cx231xx_capture_open._entry, ptr @snd_cx231xx_capture_open._entry.20, ptr @snd_cx231xx_capture_open._entry_ptr, ptr @snd_cx231xx_capture_open._entry_ptr.22, ptr @snd_cx231xx_pcm_close._entry, ptr @snd_cx231xx_pcm_close._entry_ptr, ptr @debug, ptr @audio_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cx231xx_audio_init.__key, ptr @.str.6, ptr @snd_cx231xx_pcm_capture, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cx231xx_audio_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @snd_cx231xx_hw_capture, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_audio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx231xx_pcm_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_audio_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx231xx_capture_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx231xx_capture_open._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx231xx_hw_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx231xx_pcm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_audio_isocirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_audio_bulkirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx231xx_alsa_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @cx231xx_unregister_extension(ptr noundef nonnull @audio_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_alsa_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx231xx_register_extension(ptr noundef nonnull @audio_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_audio_init(ptr noundef %dev) #2 align 64 {
entry:
  %pcm = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #8
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %1 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !135
  %has_alsa_audio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %has_alsa_audio to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_alsa_audio, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not.not = icmp eq i8 %3, 0
  br i1 %cmp.not.not, label %entry.cleanup115_crit_edge, label %do.body

entry.cleanup115_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup115

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_audio_init.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_audio_init, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !136

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_audio_init.__UNIQUE_ID_ddebug324, ptr noundef %5, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %dev7 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 8
  %call8 = call i32 @snd_card_new(ptr noundef %7, i32 noundef -1, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end.cleanup115_crit_edge, label %do.body12

do.end.cleanup115_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup115

do.body12:                                        ; preds = %do.end
  %slock = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 10
  call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.6, ptr noundef nonnull @cx231xx_audio_init.__key, i16 noundef signext 3) #8
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %call16 = call i32 @snd_pcm_new(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body12.err_free_card_crit_edge, label %if.end19

do.body12.err_free_card_crit_edge:                ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_card

if.end19:                                         ; preds = %do.body12
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @snd_cx231xx_pcm_capture) #8
  %12 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm, align 4
  %call20 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %13, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %14 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 11
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 7
  %call21 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef 80) #8
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 2
  %call23 = call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.8, i32 noundef 16) #8
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 3
  %call25 = call i32 @strscpy(ptr noundef %shortname, ptr noundef nonnull @.str.5, i32 noundef 32) #8
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 4
  %call27 = call i32 @strscpy(ptr noundef %longname, ptr noundef nonnull @.str.9, i32 noundef 80) #8
  %wq_trigger = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 15
  call void @__init_work(ptr noundef %wq_trigger, i32 noundef 0) #8
  %24 = ptrtoint ptr %wq_trigger to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %wq_trigger, align 8
  %lockdep_map = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 15, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @cx231xx_audio_init.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry32 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 15, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 15, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @audio_trigger, ptr %func, align 4
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %call36 = call i32 @snd_card_register(ptr noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end19.err_free_card_crit_edge, label %if.end39

if.end19.err_free_card_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_card

if.end39:                                         ; preds = %if.end19
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %sndcard = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 7
  %32 = ptrtoint ptr %sndcard to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %sndcard, align 4
  %udev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 60
  %33 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev, align 8
  %udev40 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 3
  %35 = ptrtoint ptr %udev40 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %udev40, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 20
  %36 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %actconfig, align 4
  %audio_index = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 12, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %audio_index to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %audio_index, align 1
  %conv = zext i8 %39 to i32
  %add = add nuw nsw i32 %conv, 1
  %arrayidx43 = getelementptr %struct.usb_host_config, ptr %37, i32 0, i32 3, i32 %add
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx43, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp47 = icmp eq i8 %45, 0
  br i1 %cmp47, label %if.end39.err_free_card_crit_edge, label %if.end50

if.end39.err_free_card_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_card

if.end50:                                         ; preds = %if.end39
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bEndpointAddress, align 2
  %conv55 = zext i8 %49 to i16
  %end_point_addr = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 15
  %50 = ptrtoint ptr %end_point_addr to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv55, ptr %end_point_addr, align 4
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %41, i32 0, i32 2
  %51 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_altsetting, align 8
  %num_alt = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 13
  %53 = ptrtoint ptr %num_alt to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num_alt, align 4
  %54 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev7, align 8
  %conv61 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.12, i32 noundef %conv61, i32 noundef %52) #11
  %56 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_alt, align 4
  %58 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 32) #8
  %59 = extractvalue { i32, i1 } %58, 1
  br i1 %59, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !137

kmalloc_array.exit.thread:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %alt_max_pkt_size173 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 14
  %60 = ptrtoint ptr %alt_max_pkt_size173 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %alt_max_pkt_size173, align 4
  br label %err_free_card

if.end7.i:                                        ; preds = %if.end50
  %61 = extractvalue { i32, i1 } %58, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 3264) #12
  %alt_max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 14
  %62 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call8.i, ptr %alt_max_pkt_size, align 4
  %tobool66.not = icmp eq ptr %call8.i, null
  br i1 %tobool66.not, label %if.end7.i.err_free_card_crit_edge, label %for.cond.preheader

if.end7.i.err_free_card_crit_edge:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_card

for.cond.preheader:                               ; preds = %if.end7.i
  %63 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp70183 = icmp sgt i32 %64, 0
  br i1 %cmp70183, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup115_crit_edge

for.cond.preheader.cleanup115_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup115

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0184 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %65 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %41, align 8
  %bNumEndpoints76 = getelementptr %struct.usb_host_interface, ptr %66, i32 %i.0184, i32 0, i32 4
  %67 = ptrtoint ptr %bNumEndpoints76 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bNumEndpoints76, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp79 = icmp eq i8 %68, 0
  br i1 %cmp79, label %err_free_pkt_size, label %if.end82

if.end82:                                         ; preds = %for.body
  %endpoint85 = getelementptr %struct.usb_host_interface, ptr %66, i32 %i.0184, i32 3
  %69 = ptrtoint ptr %endpoint85 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %endpoint85, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %wMaxPacketSize, align 4
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %conv88 = zext i16 %73 to i32
  %and = and i32 %conv88, 2047
  %and90 = lshr i32 %conv88, 11
  %74 = and i32 %and90, 3
  %add91 = add nuw nsw i32 %74, 1
  %mul = mul nuw nsw i32 %add91, %and
  %75 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %alt_max_pkt_size, align 4
  %arrayidx93 = getelementptr i32, ptr %76, i32 %i.0184
  %77 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul, ptr %arrayidx93, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_audio_init.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_audio_init, %cleanup.thread)) #8
          to label %for.inc [label %cleanup.thread], !srcloc !136

cleanup.thread:                                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev7, align 8
  %80 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %alt_max_pkt_size, align 4
  %arrayidx109 = getelementptr i32, ptr %81, i32 %i.0184
  %82 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx109, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_audio_init.__UNIQUE_ID_ddebug325, ptr noundef %79, ptr noundef nonnull @.str.15, i32 noundef %i.0184, i32 noundef %83) #8
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %if.end82
  %inc = add nuw nsw i32 %i.0184, 1
  %84 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_alt, align 4
  %cmp70 = icmp slt i32 %inc, %85
  br i1 %cmp70, label %for.inc.for.body_crit_edge, label %for.inc.cleanup115_crit_edge

for.inc.cleanup115_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup115

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_free_pkt_size:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %alt_max_pkt_size, align 4
  call void @kfree(ptr noundef %87) #8
  br label %err_free_card

err_free_card:                                    ; preds = %err_free_pkt_size, %if.end7.i.err_free_card_crit_edge, %kmalloc_array.exit.thread, %if.end39.err_free_card_crit_edge, %if.end19.err_free_card_crit_edge, %do.body12.err_free_card_crit_edge
  %err.2 = phi i32 [ %call16, %do.body12.err_free_card_crit_edge ], [ %call36, %if.end19.err_free_card_crit_edge ], [ -19, %err_free_pkt_size ], [ -19, %if.end39.err_free_card_crit_edge ], [ -12, %if.end7.i.err_free_card_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %call114 = call i32 @snd_card_free(ptr noundef %89) #8
  br label %cleanup115

cleanup115:                                       ; preds = %err_free_card, %for.inc.cleanup115_crit_edge, %for.cond.preheader.cleanup115_crit_edge, %do.end.cleanup115_crit_edge, %entry.cleanup115_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_free_card ], [ 0, %entry.cleanup115_crit_edge ], [ %call8, %do.end.cleanup115_crit_edge ], [ 0, %for.cond.preheader.cleanup115_crit_edge ], [ 0, %for.inc.cleanup115_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_audio_fini(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %has_alsa_audio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %has_alsa_audio to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %has_alsa_audio, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1.not.not = icmp eq i8 %1, 0
  br i1 %cmp1.not.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  %sndcard = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 7
  %2 = ptrtoint ptr %sndcard to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sndcard, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end3.return_crit_edge, label %if.then4

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_card_free_when_closed(ptr noundef nonnull %3) #8
  %alt_max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 14
  %4 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alt_max_pkt_size, align 8
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %sndcard to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sndcard, align 4
  br label %return

return:                                           ; preds = %if.then4, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audio_trigger(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1096
  %stream_started = getelementptr i8, ptr %work, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #8
  %0 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body42, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_trigger.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@audio_trigger, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !136

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr i8, ptr %work, i32 -1056
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_trigger.__UNIQUE_ID_ddebug322, ptr noundef %3, ptr noundef nonnull @.str.29) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call8 = tail call i32 @is_fw_load(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then9, label %do.end.if.end34_crit_edge

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then9:                                         ; preds = %do.end
  %sd_cx25840 = getelementptr i8, ptr %work, i32 -708
  %4 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_cx25840, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.then9.if.end34_crit_edge, label %if.else

if.then9.if.end34_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else:                                          ; preds = %if.then9
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.else.if.end34_crit_edge, label %land.lhs.true

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.else
  %load_fw = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %load_fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %load_fw, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %land.lhs.true.if.end34_crit_edge, label %if.else17

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else17:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %12 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.else17.if.else25_crit_edge, label %land.lhs.true19

if.else17.if.else25_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else25

land.lhs.true19:                                  ; preds = %if.else17
  %load_fw20 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %load_fw20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %load_fw20, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %land.lhs.true19.if.else25_crit_edge, label %land.lhs.true19.if.end34.sink.split_crit_edge

land.lhs.true19.if.end34.sink.split_crit_edge:    ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.sink.split

land.lhs.true19.if.else25_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else25

if.else25:                                        ; preds = %land.lhs.true19.if.else25_crit_edge, %if.else17.if.else25_crit_edge
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else25, %land.lhs.true19.if.end34.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else25 ], [ %14, %land.lhs.true19.if.end34.sink.split_crit_edge ]
  %call24 = tail call i32 %.sink(ptr noundef nonnull %5) #8
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %land.lhs.true.if.end34_crit_edge, %if.else.if.end34_crit_edge, %if.then9.if.end34_crit_edge, %do.end.if.end34_crit_edge
  %USE_ISO = getelementptr i8, ptr %work, i32 12349
  %15 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool35.not = icmp eq i8 %16, 0
  br i1 %tobool35.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cx231xx_init_audio_isoc(ptr noundef %add.ptr)
  br label %if.end60

if.else38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cx231xx_init_audio_bulk(ptr noundef %add.ptr)
  br label %if.end60

do.body42:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_trigger.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@audio_trigger, %if.then54)) #8
          to label %do.end58 [label %if.then54], !srcloc !136

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr i8, ptr %work, i32 -1056
  %17 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev55, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_trigger.__UNIQUE_ID_ddebug323, ptr noundef %18, ptr noundef nonnull @.str.30) #8
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body42
  tail call fastcc void @cx231xx_isoc_audio_deinit(ptr noundef %add.ptr)
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.else38, %if.then36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx231xx_capture_open(ptr noundef %substream) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cx231xx_capture_open.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cx231xx_capture_open, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cx231xx_capture_open.__UNIQUE_ID_ddebug317, ptr noundef %5, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 85
  %10 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp ne i8 %11, 0
  %. = zext i1 %tobool12.not to i8
  %call15 = tail call i32 @cx231xx_set_alt_setting(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %.) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %14 = call ptr @memcpy(ptr %hw, ptr @snd_cx231xx_hw_capture, i32 64)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call25 = tail call i32 @cx231xx_capture_start(ptr noundef %1, i32 noundef 1, i8 noundef zeroext 1) #8
  %users = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 8
  %15 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %users, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %users, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %call27 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #8
  %capture_pcm_substream = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 5
  %17 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %substream, ptr %capture_pcm_substream, align 4
  %private_data29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %18 = ptrtoint ptr %private_data29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %private_data29, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end21, %do.end9
  %retval.0 = phi i32 [ -19, %do.end9 ], [ %call15, %do.end21 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx231xx_pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cx231xx_pcm_close, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug318, ptr noundef %3, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call4 = tail call i32 @cx231xx_capture_start(ptr noundef %1, i32 noundef 0, i8 noundef zeroext 1) #8
  %call5 = tail call i32 @cx231xx_set_alt_setting(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #11
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %users = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 8
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %users, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %8 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16 = icmp eq i32 %9, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end12
  %shutdown = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 9
  %10 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp18 = icmp eq i32 %11, 1
  br i1 %cmp18, label %do.body20, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body20:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cx231xx_pcm_close, %if.then32)) #8
          to label %do.body39 [label %if.then32], !srcloc !136

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev33, align 8
  %14 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %users, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug319, ptr noundef %13, ptr noundef nonnull @.str.25, i32 noundef %15) #8
  br label %do.body39

do.body39:                                        ; preds = %if.then32, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cx231xx_pcm_close, %if.then51)) #8
          to label %do.end55 [label %if.then51], !srcloc !136

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %dev52 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev52, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug320, ptr noundef %17, ptr noundef nonnull @.str.26) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body39
  %18 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %shutdown, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cx231xx_pcm_close, %if.then70)) #8
          to label %do.end74 [label %if.then70], !srcloc !136

if.then70:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %dev71 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev71, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug321, ptr noundef %20, ptr noundef nonnull @.str.27) #8
  br label %do.end74

do.end74:                                         ; preds = %if.then70, %do.end55
  %stream_started = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #8
  %21 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp76 = icmp sgt i32 %22, 0
  br i1 %cmp76, label %if.then77, label %do.end74.cleanup_crit_edge

do.end74.cleanup_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i110 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #8
  %23 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %stream_started, align 4
  %wq_trigger = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i111 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %wq_trigger) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.end74.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ %call5, %do.end9 ], [ 0, %do.end74.cleanup_crit_edge ], [ 0, %if.then77 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cx231xx_prepare(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %hwptr_done_capture = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 6
  %2 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hwptr_done_capture, align 8
  %capture_transfer_done = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 4
  %3 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %capture_transfer_done, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx231xx_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %slock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 10
  tail call void @_raw_spin_lock(ptr noundef %slock) #8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %stream_started = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #8
  %5 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %stream_started, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %stream_started3 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 16
  %call.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started3, i32 noundef 4) #8
  %6 = ptrtoint ptr %stream_started3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %stream_started3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %slock) #8
  %wq_trigger = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i13 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %wq_trigger) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx231xx_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %slock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %hwptr_done_capture = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 6
  %2 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwptr_done_capture, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #8
  ret i32 %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_alt_setting(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_capture_start(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_fw_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx231xx_init_audio_isoc(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_init_audio_isoc.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_init_audio_isoc, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_init_audio_isoc.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup78_crit_edge

do.end.cleanup78_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end6:                                          ; preds = %do.end
  %max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 12
  %4 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pkt_size, align 8
  %mul = shl i32 %5, 6
  %udev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 60
  %end_point_addr = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 15
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.end53.if.end8.i_crit_edge, %if.end6
  %i.013 = phi i32 [ 0, %if.end6 ], [ %inc60, %for.end53.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2592) #12
  %arrayidx = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 %i.013
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %call9.i, null
  br i1 %tobool12.not, label %if.end8.i.cleanup78_crit_edge, label %if.end14

if.end8.i.cleanup78_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end14:                                         ; preds = %if.end8.i
  %7 = call ptr @memset(ptr %call9.i, i32 128, i32 %mul)
  %call18 = tail call ptr @usb_alloc_urb(i32 noundef 64, i32 noundef 2592) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %for.cond21.preheader, label %if.end30

for.cond21.preheader:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013)
  %cmp2215.not = icmp eq i32 %i.013, 0
  br i1 %cmp2215.not, label %for.cond21.preheader.cleanup78_crit_edge, label %for.body23

for.cond21.preheader.cleanup78_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

for.body23:                                       ; preds = %for.cond21.preheader
  %arrayidx26 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx26, align 4
  tail call void @usb_free_urb(ptr noundef %9) #8
  %arrayidx29 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx29, align 4
  tail call void @kfree(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.013)
  %exitcond25.not = icmp eq i32 %i.013, 1
  br i1 %exitcond25.not, label %for.body23.cleanup78_crit_edge, label %for.body23.1

for.body23.cleanup78_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

for.body23.1:                                     ; preds = %for.body23
  %arrayidx26.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx26.1, align 4
  tail call void @usb_free_urb(ptr noundef %13) #8
  %arrayidx29.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx29.1, align 4
  tail call void @kfree(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.013)
  %exitcond25.not.1 = icmp eq i32 %i.013, 2
  br i1 %exitcond25.not.1, label %for.body23.1.cleanup78_crit_edge, label %for.body23.2

for.body23.1.cleanup78_crit_edge:                 ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

for.body23.2:                                     ; preds = %for.body23.1
  %arrayidx26.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx26.2, align 4
  tail call void @usb_free_urb(ptr noundef %17) #8
  %arrayidx29.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29.2, align 4
  tail call void @kfree(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.013)
  %exitcond25.not.2 = icmp eq i32 %i.013, 3
  br i1 %exitcond25.not.2, label %for.body23.2.cleanup78_crit_edge, label %for.body23.3

for.body23.2.cleanup78_crit_edge:                 ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

for.body23.3:                                     ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx26.3, align 4
  tail call void @usb_free_urb(ptr noundef %21) #8
  %arrayidx29.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx29.3, align 4
  tail call void @kfree(ptr noundef %23) #8
  br label %cleanup78

if.end30:                                         ; preds = %if.end14
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 8
  %dev31 = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 8
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dev31, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 27
  %27 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %context, align 4
  %28 = load ptr, ptr %udev, align 8
  %29 = ptrtoint ptr %end_point_addr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %end_point_addr, align 4
  %conv = zext i16 %30 to i32
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 8
  %shl.i = shl i32 %32, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or35 = or i32 %or.i, 128
  %pipe = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 10
  %33 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or35, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 13
  %34 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %transfer_flags, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer39 = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %transfer_buffer39, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 25
  %38 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %interval, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 28
  %39 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cx231xx_audio_isocirq, ptr %complete, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 24
  %40 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 64, ptr %number_of_packets, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 19
  %41 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %if.end30
  %k.012 = phi i32 [ 0, %if.end30 ], [ %add, %for.body43.for.body43_crit_edge ]
  %j.111 = phi i32 [ 0, %if.end30 ], [ %inc50, %for.body43.for.body43_crit_edge ]
  %arrayidx44 = getelementptr %struct.urb, ptr %call18, i32 0, i32 29, i32 %j.111
  %42 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %k.012, ptr %arrayidx44, align 4
  %43 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_pkt_size, align 8
  %length = getelementptr %struct.urb, ptr %call18, i32 0, i32 29, i32 %j.111, i32 1
  %45 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %length, align 4
  %inc50 = add nuw nsw i32 %j.111, 1
  %46 = load i32, ptr %max_pkt_size, align 8
  %add = add i32 %46, %k.012
  %exitcond.not = icmp eq i32 %inc50, 64
  br i1 %exitcond.not, label %for.end53, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.end53:                                        ; preds = %for.body43
  %arrayidx56 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 %i.013
  %47 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call18, ptr %arrayidx56, align 4
  %inc60 = add nuw nsw i32 %i.013, 1
  %exitcond23.not = icmp eq i32 %inc60, 5
  br i1 %exitcond23.not, label %for.body65.preheader, label %for.end53.if.end8.i_crit_edge

for.end53.if.end8.i_crit_edge:                    ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

for.body65.preheader:                             ; preds = %for.end53
  %arrayidx68 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 0
  %48 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx68, align 4
  %call69 = tail call i32 @usb_submit_urb(ptr noundef %49, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %for.body65.preheader.if.then72_crit_edge, label %for.cond62

for.body65.preheader.if.then72_crit_edge:         ; preds = %for.body65.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

for.cond62:                                       ; preds = %for.body65.preheader
  %arrayidx68.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx68.1, align 4
  %call69.1 = tail call i32 @usb_submit_urb(ptr noundef %51, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.1)
  %cmp70.1 = icmp slt i32 %call69.1, 0
  br i1 %cmp70.1, label %for.cond62.if.then72_crit_edge, label %for.cond62.1

for.cond62.if.then72_crit_edge:                   ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

for.cond62.1:                                     ; preds = %for.cond62
  %arrayidx68.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 2
  %52 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx68.2, align 4
  %call69.2 = tail call i32 @usb_submit_urb(ptr noundef %53, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.2)
  %cmp70.2 = icmp slt i32 %call69.2, 0
  br i1 %cmp70.2, label %for.cond62.1.if.then72_crit_edge, label %for.cond62.2

for.cond62.1.if.then72_crit_edge:                 ; preds = %for.cond62.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

for.cond62.2:                                     ; preds = %for.cond62.1
  %arrayidx68.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 3
  %54 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx68.3, align 4
  %call69.3 = tail call i32 @usb_submit_urb(ptr noundef %55, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.3)
  %cmp70.3 = icmp slt i32 %call69.3, 0
  br i1 %cmp70.3, label %for.cond62.2.if.then72_crit_edge, label %for.cond62.3

for.cond62.2.if.then72_crit_edge:                 ; preds = %for.cond62.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

for.cond62.3:                                     ; preds = %for.cond62.2
  %arrayidx68.4 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 4
  %56 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx68.4, align 4
  %call69.4 = tail call i32 @usb_submit_urb(ptr noundef %57, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.4)
  %cmp70.4 = icmp slt i32 %call69.4, 0
  br i1 %cmp70.4, label %for.cond62.3.if.then72_crit_edge, label %for.cond62.3.cleanup78_crit_edge

for.cond62.3.cleanup78_crit_edge:                 ; preds = %for.cond62.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

for.cond62.3.if.then72_crit_edge:                 ; preds = %for.cond62.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

if.then72:                                        ; preds = %for.cond62.3.if.then72_crit_edge, %for.cond62.2.if.then72_crit_edge, %for.cond62.1.if.then72_crit_edge, %for.cond62.if.then72_crit_edge, %for.body65.preheader.if.then72_crit_edge
  tail call fastcc void @cx231xx_isoc_audio_deinit(ptr noundef %dev)
  br label %cleanup78

cleanup78:                                        ; preds = %if.then72, %for.cond62.3.cleanup78_crit_edge, %for.body23.3, %for.body23.2.cleanup78_crit_edge, %for.body23.1.cleanup78_crit_edge, %for.body23.cleanup78_crit_edge, %for.cond21.preheader.cleanup78_crit_edge, %if.end8.i.cleanup78_crit_edge, %do.end.cleanup78_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx231xx_init_audio_bulk(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_init_audio_bulk.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_init_audio_bulk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_init_audio_bulk.__UNIQUE_ID_ddebug316, ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup63_crit_edge

do.end.cleanup63_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end6:                                          ; preds = %do.end
  %max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 12
  %4 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pkt_size, align 8
  %mul = shl i32 %5, 4
  %udev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 60
  %end_point_addr = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 15
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end30.if.end8.i_crit_edge, %if.end6
  %i.011 = phi i32 [ 0, %if.end6 ], [ %inc45, %if.end30.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2592) #12
  %arrayidx = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 %i.011
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %call9.i, null
  br i1 %tobool12.not, label %if.end8.i.cleanup63_crit_edge, label %if.end14

if.end8.i.cleanup63_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end14:                                         ; preds = %if.end8.i
  %7 = call ptr @memset(ptr %call9.i, i32 128, i32 %mul)
  %call18 = tail call ptr @usb_alloc_urb(i32 noundef 16, i32 noundef 2592) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %for.cond21.preheader, label %if.end30

for.cond21.preheader:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.011)
  %cmp2213.not = icmp eq i32 %i.011, 0
  br i1 %cmp2213.not, label %for.cond21.preheader.cleanup63_crit_edge, label %for.body23

for.cond21.preheader.cleanup63_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

for.body23:                                       ; preds = %for.cond21.preheader
  %arrayidx26 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx26, align 4
  tail call void @usb_free_urb(ptr noundef %9) #8
  %arrayidx29 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx29, align 4
  tail call void @kfree(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.011)
  %exitcond22.not = icmp eq i32 %i.011, 1
  br i1 %exitcond22.not, label %for.body23.cleanup63_crit_edge, label %for.body23.1

for.body23.cleanup63_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

for.body23.1:                                     ; preds = %for.body23
  %arrayidx26.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx26.1, align 4
  tail call void @usb_free_urb(ptr noundef %13) #8
  %arrayidx29.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx29.1, align 4
  tail call void @kfree(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.011)
  %exitcond22.not.1 = icmp eq i32 %i.011, 2
  br i1 %exitcond22.not.1, label %for.body23.1.cleanup63_crit_edge, label %for.body23.2

for.body23.1.cleanup63_crit_edge:                 ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

for.body23.2:                                     ; preds = %for.body23.1
  %arrayidx26.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx26.2, align 4
  tail call void @usb_free_urb(ptr noundef %17) #8
  %arrayidx29.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29.2, align 4
  tail call void @kfree(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.011)
  %exitcond22.not.2 = icmp eq i32 %i.011, 3
  br i1 %exitcond22.not.2, label %for.body23.2.cleanup63_crit_edge, label %for.body23.3

for.body23.2.cleanup63_crit_edge:                 ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

for.body23.3:                                     ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx26.3, align 4
  tail call void @usb_free_urb(ptr noundef %21) #8
  %arrayidx29.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx29.3, align 4
  tail call void @kfree(ptr noundef %23) #8
  br label %cleanup63

if.end30:                                         ; preds = %if.end14
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 8
  %dev31 = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 8
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %dev31, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 27
  %27 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %context, align 4
  %28 = load ptr, ptr %udev, align 8
  %29 = ptrtoint ptr %end_point_addr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %end_point_addr, align 4
  %conv = zext i16 %30 to i32
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 8
  %shl.i = shl i32 %32, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or35 = or i32 %or.i, -1073741696
  %pipe = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 10
  %33 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or35, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 13
  %34 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %transfer_flags, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %transfer_buffer39 = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %transfer_buffer39, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 28
  %38 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @cx231xx_audio_bulkirq, ptr %complete, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call18, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  %arrayidx42 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 %i.011
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call18, ptr %arrayidx42, align 4
  %inc45 = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc45, 5
  br i1 %exitcond.not, label %for.body50.preheader, label %if.end30.if.end8.i_crit_edge

if.end30.if.end8.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

for.body50.preheader:                             ; preds = %if.end30
  %arrayidx53 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 0
  %41 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx53, align 4
  %call54 = tail call i32 @usb_submit_urb(ptr noundef %42, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %for.body50.preheader.if.then57_crit_edge, label %for.cond47

for.body50.preheader.if.then57_crit_edge:         ; preds = %for.body50.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

for.cond47:                                       ; preds = %for.body50.preheader
  %arrayidx53.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx53.1, align 4
  %call54.1 = tail call i32 @usb_submit_urb(ptr noundef %44, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.1)
  %cmp55.1 = icmp slt i32 %call54.1, 0
  br i1 %cmp55.1, label %for.cond47.if.then57_crit_edge, label %for.cond47.1

for.cond47.if.then57_crit_edge:                   ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

for.cond47.1:                                     ; preds = %for.cond47
  %arrayidx53.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 2
  %45 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx53.2, align 4
  %call54.2 = tail call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.2)
  %cmp55.2 = icmp slt i32 %call54.2, 0
  br i1 %cmp55.2, label %for.cond47.1.if.then57_crit_edge, label %for.cond47.2

for.cond47.1.if.then57_crit_edge:                 ; preds = %for.cond47.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

for.cond47.2:                                     ; preds = %for.cond47.1
  %arrayidx53.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 3
  %47 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx53.3, align 4
  %call54.3 = tail call i32 @usb_submit_urb(ptr noundef %48, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.3)
  %cmp55.3 = icmp slt i32 %call54.3, 0
  br i1 %cmp55.3, label %for.cond47.2.if.then57_crit_edge, label %for.cond47.3

for.cond47.2.if.then57_crit_edge:                 ; preds = %for.cond47.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

for.cond47.3:                                     ; preds = %for.cond47.2
  %arrayidx53.4 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 4
  %49 = ptrtoint ptr %arrayidx53.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx53.4, align 4
  %call54.4 = tail call i32 @usb_submit_urb(ptr noundef %50, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.4)
  %cmp55.4 = icmp slt i32 %call54.4, 0
  br i1 %cmp55.4, label %for.cond47.3.if.then57_crit_edge, label %for.cond47.3.cleanup63_crit_edge

for.cond47.3.cleanup63_crit_edge:                 ; preds = %for.cond47.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

for.cond47.3.if.then57_crit_edge:                 ; preds = %for.cond47.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %for.cond47.3.if.then57_crit_edge, %for.cond47.2.if.then57_crit_edge, %for.cond47.1.if.then57_crit_edge, %for.cond47.if.then57_crit_edge, %for.body50.preheader.if.then57_crit_edge
  tail call fastcc void @cx231xx_bulk_audio_deinit(ptr noundef %dev)
  br label %cleanup63

cleanup63:                                        ; preds = %if.then57, %for.cond47.3.cleanup63_crit_edge, %for.body23.3, %for.body23.2.cleanup63_crit_edge, %for.body23.1.cleanup63_crit_edge, %for.body23.cleanup63_crit_edge, %for.cond21.preheader.cleanup63_crit_edge, %if.end8.i.cleanup63_crit_edge, %do.end.cleanup63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx231xx_isoc_audio_deinit(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_isoc_audio_deinit.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_isoc_audio_deinit, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_isoc_audio_deinit.__UNIQUE_ID_ddebug311, ptr noundef %1, ptr noundef nonnull @.str.42) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.for.inc_crit_edge, label %if.then5

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %do.end
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not = icmp eq i32 %and.i, 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %6) #8
  br label %if.end29

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @usb_unlink_urb(ptr noundef %6) #8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then21
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %8) #8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx37 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx37, align 4
  tail call void @kfree(ptr noundef %11) #8
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %do.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool4.not.1 = icmp eq ptr %14, null
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.1 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool20.not.1 = icmp eq i32 %and.i.1, 0
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  br i1 %tobool20.not.1, label %if.then21.1, label %if.else.1

if.else.1:                                        ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #10
  %call28.1 = tail call i32 @usb_unlink_urb(ptr noundef %17) #8
  br label %if.end29.1

if.then21.1:                                      ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %17) #8
  br label %if.end29.1

if.end29.1:                                       ; preds = %if.then21.1, %if.else.1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %19) #8
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx37.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx37.1, align 4
  tail call void @kfree(ptr noundef %22) #8
  %23 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx37.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end29.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  %tobool4.not.2 = icmp eq ptr %25, null
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.2 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool20.not.2 = icmp eq i32 %and.i.2, 0
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.2, align 4
  br i1 %tobool20.not.2, label %if.then21.2, label %if.else.2

if.else.2:                                        ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #10
  %call28.2 = tail call i32 @usb_unlink_urb(ptr noundef %28) #8
  br label %if.end29.2

if.then21.2:                                      ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %28) #8
  br label %if.end29.2

if.end29.2:                                       ; preds = %if.then21.2, %if.else.2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %30) #8
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx37.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx37.2, align 4
  tail call void @kfree(ptr noundef %33) #8
  %34 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx37.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end29.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.3, align 4
  %tobool4.not.3 = icmp eq ptr %36, null
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.3 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool20.not.3 = icmp eq i32 %and.i.3, 0
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.3, align 4
  br i1 %tobool20.not.3, label %if.then21.3, label %if.else.3

if.else.3:                                        ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #10
  %call28.3 = tail call i32 @usb_unlink_urb(ptr noundef %39) #8
  br label %if.end29.3

if.then21.3:                                      ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %39) #8
  br label %if.end29.3

if.end29.3:                                       ; preds = %if.then21.3, %if.else.3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %41) #8
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx37.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 3
  %43 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx37.3, align 4
  tail call void @kfree(ptr noundef %44) #8
  %45 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx37.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end29.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.4, align 4
  %tobool4.not.4 = icmp eq ptr %47, null
  br i1 %tobool4.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then5.4:                                       ; preds = %for.inc.3
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.4 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool20.not.4 = icmp eq i32 %and.i.4, 0
  %49 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.4, align 4
  br i1 %tobool20.not.4, label %if.then21.4, label %if.else.4

if.else.4:                                        ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #10
  %call28.4 = tail call i32 @usb_unlink_urb(ptr noundef %50) #8
  br label %if.end29.4

if.then21.4:                                      ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %50) #8
  br label %if.end29.4

if.end29.4:                                       ; preds = %if.then21.4, %if.else.4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_free_urb(ptr noundef %52) #8
  %53 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx37.4 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx37.4, align 4
  tail call void @kfree(ptr noundef %55) #8
  %56 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx37.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end29.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx231xx_audio_isocirq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup88_crit_edge

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end:                                           ; preds = %entry
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %5, label %do.body [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -110, label %if.end.sw.epilog_crit_edge161
    i32 -104, label %if.end.cleanup88_crit_edge
    i32 -2, label %if.end.cleanup88_crit_edge162
    i32 -108, label %if.end.cleanup88_crit_edge163
  ]

if.end.cleanup88_crit_edge163:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end.cleanup88_crit_edge162:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end.sw.epilog_crit_edge161:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_audio_isocirq.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_audio_isocirq, %if.then6)) #8
          to label %sw.epilog [label %if.then6], !srcloc !136

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 8
  %9 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_audio_isocirq.__UNIQUE_ID_ddebug313, ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef %10) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %do.body, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge161
  %stream_started = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #8
  %11 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %sw.epilog.cleanup88_crit_edge, label %if.end12

sw.epilog.cleanup88_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end12:                                         ; preds = %sw.epilog
  %capture_pcm_substream = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 5
  %13 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %capture_pcm_substream, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end12.if.end77_crit_edge, label %if.then14

if.end12.if.end77_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then14:                                        ; preds = %if.end12
  %runtime17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %runtime17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime17, align 4
  %frame_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %frame_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_bits, align 8
  %shr = lshr i32 %18, 3
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %19 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18156 = icmp sgt i32 %20, 0
  br i1 %cmp18156, label %for.body.lr.ph, label %if.then14.if.end77_crit_edge

if.then14.if.end77_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

for.body.lr.ph:                                   ; preds = %if.then14
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %hwptr_done_capture = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 6
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 18
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 50
  %capture_transfer_done = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %period_elapsed.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %period_elapsed.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0158
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0158, i32 2
  %21 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length, align 4
  %div = udiv i32 %22, %shr
  %23 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer_buffer, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %26
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %22)
  %tobool21.not = icmp ugt i32 %shr, %22
  br i1 %tobool21.not, label %for.body.cleanup_crit_edge, label %if.end23

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %for.body
  %27 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwptr_done_capture, align 8
  %add = add i32 %28, %div
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp25.not = icmp ult i32 %add, %30
  br i1 %cmp25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %30, %28
  %31 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_area, align 4
  %mul = mul i32 %28, %shr
  %add.ptr28 = getelementptr i8, ptr %32, i32 %mul
  %mul29 = mul i32 %sub, %shr
  %33 = call ptr @memcpy(ptr %add.ptr28, ptr %add.ptr, i32 %mul29)
  %34 = load ptr, ptr %dma_area, align 4
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %mul29
  %mul33 = mul i32 %div, %shr
  %sub35 = sub i32 %mul33, %mul29
  %35 = call ptr @memcpy(ptr %34, ptr %add.ptr32, i32 %sub35)
  br label %do.body41

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_area, align 4
  %mul37 = mul i32 %28, %shr
  %add.ptr38 = getelementptr i8, ptr %37, i32 %mul37
  %mul39 = mul i32 %div, %shr
  %38 = call ptr @memcpy(ptr %add.ptr38, ptr %add.ptr, i32 %mul39)
  br label %do.body41

do.body41:                                        ; preds = %if.else, %if.then26
  %call44 = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef nonnull %14) #8
  %39 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hwptr_done_capture, align 8
  %add49 = add i32 %40, %div
  store i32 %add49, ptr %hwptr_done_capture, align 8
  %41 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add49, i32 %42)
  %cmp53.not = icmp ult i32 %add49, %42
  br i1 %cmp53.not, label %do.body41.if.end60_crit_edge, label %if.then55

do.body41.if.end60_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %sub59 = sub i32 %add49, %42
  %43 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub59, ptr %hwptr_done_capture, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %do.body41.if.end60_crit_edge
  %44 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %capture_transfer_done, align 8
  %add62 = add i32 %45, %div
  store i32 %add62, ptr %capture_transfer_done, align 8
  %46 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %47)
  %cmp65.not = icmp ult i32 %add62, %47
  br i1 %cmp65.not, label %if.end60.if.end72_crit_edge, label %if.then67

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then67:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %sub71 = sub i32 %add62, %47
  %48 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub71, ptr %capture_transfer_done, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end60.if.end72_crit_edge
  %period_elapsed.1 = phi i32 [ 1, %if.then67 ], [ %period_elapsed.0157, %if.end60.if.end72_crit_edge ]
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %14, i32 noundef %call44) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %for.body.cleanup_crit_edge
  %period_elapsed.2 = phi i32 [ %period_elapsed.1, %if.end72 ], [ %period_elapsed.0157, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0158, 1
  %49 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %number_of_packets, align 4
  %cmp18 = icmp slt i32 %inc, %50
  br i1 %cmp18, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_elapsed.2)
  %tobool74.not = icmp eq i32 %period_elapsed.2, 0
  br i1 %tobool74.not, label %for.end.if.end77_crit_edge, label %if.then75

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then75:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %14) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %for.end.if.end77_crit_edge, %if.then14.if.end77_crit_edge, %if.end12.if.end77_crit_edge
  %51 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %status1, align 4
  %call79 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.end77.cleanup88_crit_edge

if.end77.cleanup88_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev86, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.35, i32 noundef %call79) #11
  br label %cleanup88

cleanup88:                                        ; preds = %do.end85, %if.end77.cleanup88_crit_edge, %sw.epilog.cleanup88_crit_edge, %if.end.cleanup88_crit_edge, %if.end.cleanup88_crit_edge162, %if.end.cleanup88_crit_edge163, %entry.cleanup88_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_pcm_stream_lock_irqsave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx231xx_audio_bulkirq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %5, label %do.body [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -110, label %if.end.sw.epilog_crit_edge140
    i32 -104, label %if.end.cleanup_crit_edge
    i32 -2, label %if.end.cleanup_crit_edge141
    i32 -108, label %if.end.cleanup_crit_edge142
  ]

if.end.cleanup_crit_edge142:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge141:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.sw.epilog_crit_edge140:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_audio_bulkirq.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_audio_bulkirq, %if.then6)) #8
          to label %sw.epilog [label %if.then6], !srcloc !136

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 8
  %9 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_audio_bulkirq.__UNIQUE_ID_ddebug314, ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef %10) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %do.body, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge140
  %stream_started = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #8
  %11 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  %capture_pcm_substream = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 5
  %13 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %capture_pcm_substream, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end12.if.end69_crit_edge, label %if.then14

if.end12.if.end69_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then14:                                        ; preds = %if.end12
  %runtime17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %runtime17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime17, align 4
  %frame_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %17 = ptrtoint ptr %frame_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_bits, align 8
  %shr = lshr i32 %18, 3
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length, align 4
  %div = udiv i32 %20, %shr
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 4
  %hwptr_done_capture = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 6
  %23 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwptr_done_capture, align 8
  %add = add i32 %24, %div
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 18
  %25 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp19.not = icmp ult i32 %add, %26
  br i1 %cmp19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %26, %24
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 50
  %27 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_area, align 4
  %mul = mul i32 %24, %shr
  %add.ptr = getelementptr i8, ptr %28, i32 %mul
  %mul22 = mul i32 %sub, %shr
  %29 = call ptr @memcpy(ptr %add.ptr, ptr %22, i32 %mul22)
  %30 = load ptr, ptr %dma_area, align 4
  %add.ptr25 = getelementptr i8, ptr %22, i32 %mul22
  %mul26 = mul i32 %div, %shr
  %sub28 = sub i32 %mul26, %mul22
  %31 = call ptr @memcpy(ptr %30, ptr %add.ptr25, i32 %sub28)
  br label %do.body34

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %dma_area29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 50
  %32 = ptrtoint ptr %dma_area29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_area29, align 4
  %mul30 = mul i32 %24, %shr
  %add.ptr31 = getelementptr i8, ptr %33, i32 %mul30
  %mul32 = mul i32 %div, %shr
  %34 = call ptr @memcpy(ptr %add.ptr31, ptr %22, i32 %mul32)
  br label %do.body34

do.body34:                                        ; preds = %if.else, %if.then20
  %call37 = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef nonnull %14) #8
  %35 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwptr_done_capture, align 8
  %add42 = add i32 %36, %div
  store i32 %add42, ptr %hwptr_done_capture, align 8
  %37 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %38)
  %cmp46.not = icmp ult i32 %add42, %38
  br i1 %cmp46.not, label %do.body34.if.end53_crit_edge, label %if.then48

do.body34.if.end53_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %sub52 = sub i32 %add42, %38
  %39 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub52, ptr %hwptr_done_capture, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %do.body34.if.end53_crit_edge
  %capture_transfer_done = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 35, i32 4
  %40 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %capture_transfer_done, align 8
  %add55 = add i32 %41, %div
  store i32 %add55, ptr %capture_transfer_done, align 8
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 16
  %42 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %43)
  %cmp58.not = icmp ult i32 %add55, %43
  br i1 %cmp58.not, label %if.end69.critedge, label %if.then60

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %sub64 = sub i32 %add55, %43
  %44 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub64, ptr %capture_transfer_done, align 8
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %14, i32 noundef %call37) #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %14) #8
  br label %if.end69

if.end69.critedge:                                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %14, i32 noundef %call37) #8
  br label %if.end69

if.end69:                                         ; preds = %if.end69.critedge, %if.then60, %if.end12.if.end69_crit_edge
  %45 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %status1, align 4
  %call71 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end77, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev78, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.35, i32 noundef %call71) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.end69.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge141, %if.end.cleanup_crit_edge142, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx231xx_bulk_audio_deinit(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_bulk_audio_deinit.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_bulk_audio_deinit, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !136

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_bulk_audio_deinit.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.40) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.for.inc_crit_edge, label %if.then5

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %do.end
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not = icmp eq i32 %and.i, 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %6) #8
  br label %if.end29

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 @usb_unlink_urb(ptr noundef %6) #8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then21
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %8) #8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx37 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx37, align 4
  tail call void @kfree(ptr noundef %11) #8
  %12 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %do.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool4.not.1 = icmp eq ptr %14, null
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then5.1:                                       ; preds = %for.inc
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.1 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool20.not.1 = icmp eq i32 %and.i.1, 0
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  br i1 %tobool20.not.1, label %if.then21.1, label %if.else.1

if.else.1:                                        ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #10
  %call28.1 = tail call i32 @usb_unlink_urb(ptr noundef %17) #8
  br label %if.end29.1

if.then21.1:                                      ; preds = %if.then5.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %17) #8
  br label %if.end29.1

if.end29.1:                                       ; preds = %if.then21.1, %if.else.1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %19) #8
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx37.1 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx37.1, align 4
  tail call void @kfree(ptr noundef %22) #8
  %23 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx37.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end29.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.2, align 4
  %tobool4.not.2 = icmp eq ptr %25, null
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then5.2:                                       ; preds = %for.inc.1
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.2 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool20.not.2 = icmp eq i32 %and.i.2, 0
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.2, align 4
  br i1 %tobool20.not.2, label %if.then21.2, label %if.else.2

if.else.2:                                        ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #10
  %call28.2 = tail call i32 @usb_unlink_urb(ptr noundef %28) #8
  br label %if.end29.2

if.then21.2:                                      ; preds = %if.then5.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %28) #8
  br label %if.end29.2

if.end29.2:                                       ; preds = %if.then21.2, %if.else.2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %30) #8
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx37.2 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx37.2, align 4
  tail call void @kfree(ptr noundef %33) #8
  %34 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx37.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end29.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.3, align 4
  %tobool4.not.3 = icmp eq ptr %36, null
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then5.3:                                       ; preds = %for.inc.2
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.3 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool20.not.3 = icmp eq i32 %and.i.3, 0
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.3, align 4
  br i1 %tobool20.not.3, label %if.then21.3, label %if.else.3

if.else.3:                                        ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #10
  %call28.3 = tail call i32 @usb_unlink_urb(ptr noundef %39) #8
  br label %if.end29.3

if.then21.3:                                      ; preds = %if.then5.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %39) #8
  br label %if.end29.3

if.end29.3:                                       ; preds = %if.then21.3, %if.else.3
  %40 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %41) #8
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx37.3 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 3
  %43 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx37.3, align 4
  tail call void @kfree(ptr noundef %44) #8
  %45 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx37.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end29.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 2, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.4, align 4
  %tobool4.not.4 = icmp eq ptr %47, null
  br i1 %tobool4.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then5.4:                                       ; preds = %for.inc.3
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !138
  %and.i.4 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool20.not.4 = icmp eq i32 %and.i.4, 0
  %49 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.4, align 4
  br i1 %tobool20.not.4, label %if.then21.4, label %if.else.4

if.else.4:                                        ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #10
  %call28.4 = tail call i32 @usb_unlink_urb(ptr noundef %50) #8
  br label %if.end29.4

if.then21.4:                                      ; preds = %if.then5.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef %50) #8
  br label %if.end29.4

if.end29.4:                                       ; preds = %if.then21.4, %if.else.4
  %51 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.4, align 4
  tail call void @usb_free_urb(ptr noundef %52) #8
  %53 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx37.4 = getelementptr %struct.cx231xx, ptr %dev, i32 0, i32 35, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx37.4, align 4
  tail call void @kfree(ptr noundef %55) #8
  %56 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx37.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end29.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !35, !36, !38, !40, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !56, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype309, !1, !"__UNIQUE_ID_debugtype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug310, !4, !"__UNIQUE_ID_debug310", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 27, i32 1}
!5 = !{ptr @__UNIQUE_ID_file326, !6, !"__UNIQUE_ID_file326", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 698, i32 1}
!7 = !{ptr @__UNIQUE_ID_license327, !6, !"__UNIQUE_ID_license327", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author328, !9, !"__UNIQUE_ID_author328", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 699, i32 1}
!10 = !{ptr @__UNIQUE_ID_description329, !11, !"__UNIQUE_ID_description329", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 700, i32 1}
!12 = !{ptr @__initcall__kmod_cx231xx_alsa__330_702_cx231xx_alsa_register6, !13, !"__initcall__kmod_cx231xx_alsa__330_702_cx231xx_alsa_register6", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 702, i32 1}
!14 = !{ptr @__exitcall_cx231xx_alsa_unregister, !15, !"__exitcall_cx231xx_alsa_unregister", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 703, i32 1}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 25, i32 12}
!18 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 683, i32 10}
!21 = !{ptr @audio_ops, !22, !"audio_ops", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 681, i32 27}
!23 = distinct !{null, !24, !"devnr", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 564, i32 13}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 576, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cx231xx_audio_init.__UNIQUE_ID_ddebug324, !26, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 579, i32 45}
!33 = !{ptr @cx231xx_audio_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 584, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 594, i32 21}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 595, i32 24}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 597, i32 26}
!42 = !{ptr @cx231xx_audio_init.__key.10, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 599, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 624, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cx231xx_audio_init._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @cx231xx_audio_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 645, i32 3}
!53 = !{ptr @cx231xx_audio_init.__UNIQUE_ID_ddebug325, !52, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!54 = distinct !{null, !55, !"index", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 29, i32 12}
!56 = !{ptr @snd_cx231xx_pcm_capture, !57, !"snd_cx231xx_pcm_capture", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 551, i32 33}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 401, i32 2}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @snd_cx231xx_capture_open.__UNIQUE_ID_ddebug317, !59, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 405, i32 3}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @snd_cx231xx_capture_open._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_cx231xx_capture_open._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 419, i32 3}
!69 = !{ptr @snd_cx231xx_capture_open._entry.20, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @snd_cx231xx_capture_open._entry_ptr.22, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @snd_cx231xx_hw_capture, !72, !"snd_cx231xx_hw_capture", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 374, i32 38}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 446, i32 2}
!75 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug318, !74, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!77 = !{ptr @snd_cx231xx_pcm_close._entry, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 456, i32 3}
!79 = !{ptr @snd_cx231xx_pcm_close._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 467, i32 3}
!82 = !{ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug319, !81, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 468, i32 3}
!85 = !{ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug320, !84, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 470, i32 3}
!88 = !{ptr @snd_cx231xx_pcm_close.__UNIQUE_ID_ddebug321, !87, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 494, i32 3}
!91 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @audio_trigger.__UNIQUE_ID_ddebug322, !90, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 502, i32 3}
!95 = !{ptr @audio_trigger.__UNIQUE_ID_ddebug323, !94, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 263, i32 2}
!98 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cx231xx_init_audio_isoc.__UNIQUE_ID_ddebug315, !97, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 103, i32 3}
!102 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cx231xx_audio_isocirq.__UNIQUE_ID_ddebug313, !101, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 164, i32 3}
!106 = !{ptr @cx231xx_audio_isocirq._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cx231xx_audio_isocirq._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 324, i32 2}
!110 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cx231xx_init_audio_bulk.__UNIQUE_ID_ddebug316, !109, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 194, i32 3}
!114 = !{ptr @cx231xx_audio_bulkirq.__UNIQUE_ID_ddebug314, !113, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!115 = !{ptr @cx231xx_audio_bulkirq._entry, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 251, i32 3}
!117 = !{ptr @cx231xx_audio_bulkirq._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 59, i32 2}
!120 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cx231xx_bulk_audio_deinit.__UNIQUE_ID_ddebug312, !119, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/cx231xx/cx231xx-audio.c", i32 35, i32 2}
!124 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cx231xx_isoc_audio_deinit.__UNIQUE_ID_ddebug311, !123, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i64 2148801582, i64 2148801587, i64 2148801600, i64 2148801644, i64 2148801678, i64 2148801699}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{i64 642948}
