; ModuleID = '/llk/IR_all_yes/drivers/media/usb/tm6000/tm6000-alsa.c_pt.bc'
source_filename = "../drivers/media/usb/tm6000/tm6000-alsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.tm6000_ops = type { %struct.list_head, ptr, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm6000_core = type { [30 x i8], i32, i32, i32, [256 x i8], i32, i64, i32, i32, i32, %struct.tm6000_capabilities, %struct.work_struct, i32, i32, %struct.tm6000_gpio, ptr, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.list_head, i32, ptr, i8, %struct.video_device, %struct.video_device, %struct.tm6000_dmaqueue, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, [3 x %struct.tm6000_input], %struct.tm6000_input, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, %struct.mutex, %struct.mutex, ptr, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, i32, %struct.usb_isoc_ctl, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.tm6000_capabilities = type { i8, [3 x i8] }
%struct.tm6000_gpio = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tm6000_dmaqueue = type { %struct.list_head, %struct.list_head, ptr, %struct.wait_queue_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tm6000_input = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tm6000_endpoint = type { ptr, i8, i8, i32 }
%struct.usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.snd_tm6000_card = type { ptr, %struct.spinlock, ptr, ptr, i32, i32 }
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

@__param_str_enable = internal constant [19 x i8] c"tm6000_alsa.enable\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype309 = internal constant [42 x i8] c"tm6000_alsa.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable310 = internal constant [67 x i8] c"tm6000_alsa.parm=enable:Enable tm6000x soundcard. default enabled.\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"tm6000_alsa.index\00", align 1
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype311 = internal constant [40 x i8] c"tm6000_alsa.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index312 = internal constant [69 x i8] c"tm6000_alsa.parm=index:Index value for tm6000x capture interface(s).\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [83 x i8] c"tm6000_alsa.description=ALSA driver module for tm5600/tm6000/tm6010 based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [41 x i8] c"tm6000_alsa.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [54 x i8] c"tm6000_alsa.file=drivers/media/usb/tm6000/tm6000-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [27 x i8] c"tm6000_alsa.license=GPL v2\00", section ".modinfo", align 1
@__param_str_debug = internal constant [18 x i8] c"tm6000_alsa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype317 = internal constant [31 x i8] c"tm6000_alsa.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug318 = internal constant [45 x i8] c"tm6000_alsa.parm=debug:enable debug messages\00", section ".modinfo", align 1
@audio_ops = internal global { %struct.tm6000_ops, [36 x i8] } { %struct.tm6000_ops { %struct.list_head zeroinitializer, ptr @.str, i32 16, ptr @tm6000_audio_init, ptr @tm6000_audio_fini, ptr @tm6000_fillbuf }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_tm6000_alsa__319_439_tm6000_alsa_register6 = internal global ptr @tm6000_alsa_register, section ".initcall6.init", align 4
@__exitcall_tm6000_alsa_unregister = internal global ptr @tm6000_alsa_unregister, section ".exitcall.exit", align 4
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TM6000 Audio Extension\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tm6000\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/tm6000/tm6000-alsa.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cannot create card instance %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tm6000-alsa\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TM5600/60x0\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TM5600/60x0 Audio at bus %d device %d\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB%04x:%04x\00", [19 x i8] zeroinitializer }, align 32
@tm6000_audio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TM6000 Audio\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Trident TM5600/60x0\00", [44 x i8] zeroinitializer }, align 32
@snd_tm6000_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_tm6000_pcm_open, ptr @snd_tm6000_close, ptr null, ptr null, ptr null, ptr @snd_tm6000_prepare, ptr @snd_tm6000_card_trigger, ptr null, ptr @snd_tm6000_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tm6000_audio_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->wq_trigger)\00", [60 x i8] zeroinitializer }, align 32
@tm6000_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s/1: Registered audio driver for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tm6000_audio_init\00", [46 x i8] zeroinitializer }, align 32
@tm6000_audio_init._entry_ptr = internal global ptr @tm6000_audio_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_tm6000_digital_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 4, i32 -1073741824, i32 48000, i32 48000, i32 2, i32 2, i32 501760, i32 64, i32 12544, i32 2, i32 98, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_tm6000_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s/1: Error opening PCM!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_tm6000_pcm_open\00", [44 x i8] zeroinitializer }, align 32
@snd_tm6000_pcm_open._entry_ptr = internal global ptr @snd_tm6000_pcm_open._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@audio_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s/1: starting capture\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_trigger\00", [18 x i8] zeroinitializer }, align 32
@audio_trigger._entry_ptr = internal global ptr @audio_trigger._entry, section ".printk_index", align 4
@audio_trigger._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s/1: stopping capture\00", [39 x i8] zeroinitializer }, align 32
@audio_trigger._entry_ptr.21 = internal global ptr @audio_trigger._entry.19, section ".printk_index", align 4
@_tm6000_start_audio_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s/1: Starting audio DMA\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_tm6000_start_audio_dma\00", [40 x i8] zeroinitializer }, align 32
@_tm6000_start_audio_dma._entry_ptr = internal global ptr @_tm6000_start_audio_dma._entry, section ".printk_index", align 4
@_tm6000_stop_audio_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s/1: Stopping audio DMA\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_tm6000_stop_audio_dma\00", [41 x i8] zeroinitializer }, align 32
@_tm6000_stop_audio_dma._entry_ptr = internal global ptr @_tm6000_stop_audio_dma._entry, section ".printk_index", align 4
@tm6000_fillbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s/1: substream was NULL\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tm6000_fillbuf\00", [17 x i8] zeroinitializer }, align 32
@tm6000_fillbuf._entry_ptr = internal global ptr @tm6000_fillbuf._entry, section ".printk_index", align 4
@tm6000_fillbuf._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s/1: runtime was NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@tm6000_fillbuf._entry_ptr.30 = internal global ptr @tm6000_fillbuf._entry.28, section ".printk_index", align 4
@tm6000_fillbuf._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s/1: stride is zero\0A\00", [40 x i8] zeroinitializer }, align 32
@tm6000_fillbuf._entry_ptr.33 = internal global ptr @tm6000_fillbuf._entry.31, section ".printk_index", align 4
@tm6000_fillbuf._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s/1: %s: length was zero\0A\00", [35 x i8] zeroinitializer }, align 32
@tm6000_fillbuf._entry_ptr.36 = internal global ptr @tm6000_fillbuf._entry.34, section ".printk_index", align 4
@tm6000_fillbuf._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s/1: Copying %d bytes at %p[%d] - buf size=%d x %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tm6000_fillbuf._entry_ptr.39 = internal global ptr @tm6000_fillbuf._entry.37, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 54, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"audio_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 421, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 38, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 36, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 423, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 344, i32 51 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 347, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 350, i32 24 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 351, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 352, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 355, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 369, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 371, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 377, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"snd_tm6000_pcm_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 305, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 382, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 387, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"snd_tm6000_digital_hw\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 104, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 145, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 259, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 262, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 70, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 87, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 178, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 184, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 192, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 198, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [42 x i8] c"../drivers/media/usb/tm6000/tm6000-alsa.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 202, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_debug318, ptr @__UNIQUE_ID_debugtype317, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_enable310, ptr @__UNIQUE_ID_enabletype309, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_index312, ptr @__UNIQUE_ID_indextype311, ptr @__UNIQUE_ID_license316, ptr @__exitcall_tm6000_alsa_unregister, ptr @__initcall__kmod_tm6000_alsa__319_439_tm6000_alsa_register6, ptr @__param_debug, ptr @__param_enable, ptr @__param_index, ptr @_tm6000_start_audio_dma._entry, ptr @_tm6000_start_audio_dma._entry_ptr, ptr @_tm6000_stop_audio_dma._entry, ptr @_tm6000_stop_audio_dma._entry_ptr, ptr @audio_trigger._entry, ptr @audio_trigger._entry.19, ptr @audio_trigger._entry_ptr, ptr @audio_trigger._entry_ptr.21, ptr @snd_tm6000_pcm_open._entry, ptr @snd_tm6000_pcm_open._entry_ptr, ptr @tm6000_alsa_unregister, ptr @tm6000_audio_init._entry, ptr @tm6000_audio_init._entry_ptr, ptr @tm6000_fillbuf._entry, ptr @tm6000_fillbuf._entry.28, ptr @tm6000_fillbuf._entry.31, ptr @tm6000_fillbuf._entry.34, ptr @tm6000_fillbuf._entry.37, ptr @tm6000_fillbuf._entry_ptr, ptr @tm6000_fillbuf._entry_ptr.30, ptr @tm6000_fillbuf._entry_ptr.33, ptr @tm6000_fillbuf._entry_ptr.36, ptr @tm6000_fillbuf._entry_ptr.39, ptr @debug, ptr @audio_ops, ptr @enable, ptr @index, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tm6000_audio_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @snd_tm6000_pcm_ops, ptr @tm6000_audio_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @snd_tm6000_digital_hw, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_audio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tm6000_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_audio_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tm6000_digital_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_tm6000_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_trigger._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_tm6000_start_audio_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_tm6000_stop_audio_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_fillbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_fillbuf._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_fillbuf._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_fillbuf._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_fillbuf._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_alsa_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tm6000_unregister_extension(ptr noundef nonnull @audio_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_alsa_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tm6000_register_extension(ptr noundef nonnull @audio_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_audio_init(ptr noundef %dev) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %component = alloca [14 x i8], align 1
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %component) #10
  %1 = call ptr @memset(ptr %component, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #10
  %2 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !129
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %3 = load i8, ptr @enable, align 1, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 47
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 8
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %6 = load i32, ptr @index, align 4
  %call = call i32 @snd_card_new(ptr noundef %dev6, i32 noundef %6, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 347, ptr noundef nonnull @.str.3, i32 noundef 0) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 2
  %call11 = call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.4, i32 noundef 16) #10
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 3
  %call13 = call i32 @strscpy(ptr noundef %shortname, ptr noundef nonnull @.str.5, i32 noundef 32) #10
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 8
  %bus = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %busnum, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 8
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %20)
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 8
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 16, i32 7
  %23 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %idVendor, align 8
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %conv = zext i16 %25 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 16, i32 8
  %26 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %idProduct, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %conv22 = zext i16 %28 to i32
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %component, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv22)
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %call25 = call i32 @snd_component_add(ptr noundef %30, ptr noundef nonnull %component) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 64) #13
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end10.error_crit_edge, label %if.end29

if.end10.error_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end29:                                         ; preds = %if.end10
  %core = getelementptr inbounds %struct.snd_tm6000_card, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %core, align 8
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call7.i.i, align 8
  %adev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 41
  %36 = ptrtoint ptr %adev to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %adev, align 8
  %reg_lock = getelementptr inbounds %struct.snd_tm6000_card, ptr %call7.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @tm6000_audio_init.__key, i16 noundef signext 3) #10
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %call32 = call i32 @snd_pcm_new(ptr noundef %38, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end29.error_chip_crit_edge, label %if.end36

if.end29.error_chip_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_chip

if.end36:                                         ; preds = %if.end29
  %39 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %40, i32 0, i32 11
  %42 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %40, i32 0, i32 7
  %call38 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.10, i32 noundef 80) #10
  %43 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %44, i32 noundef 1, ptr noundef nonnull @snd_tm6000_pcm_ops) #10
  %45 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcm, align 4
  %call39 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %46, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %wq_trigger = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 42
  call void @__init_work(ptr noundef %wq_trigger, i32 noundef 0) #10
  %47 = ptrtoint ptr %wq_trigger to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -64, ptr %wq_trigger, align 4
  %lockdep_map = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 42, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @tm6000_audio_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry44 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 42, i32 1
  %48 = ptrtoint ptr %entry44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %entry44, ptr %entry44, align 4
  %prev.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 42, i32 1, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %entry44, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 42, i32 2
  %50 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @audio_trigger, ptr %func, align 4
  %51 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card, align 4
  %call48 = call i32 @snd_card_register(ptr noundef %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end36.error_chip_crit_edge, label %do.body53

if.end36.error_chip_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_chip

do.body53:                                        ; preds = %if.end36
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp54.not = icmp eq i32 %53, 0
  br i1 %cmp54.not, label %do.body53.cleanup_crit_edge, label %do.end59

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core, align 8
  %56 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card, align 4
  %longname63 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 4
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %55, ptr noundef %longname63) #14
  br label %cleanup

error_chip:                                       ; preds = %if.end36.error_chip_crit_edge, %if.end29.error_chip_crit_edge
  %rc.0 = phi i32 [ %call32, %if.end29.error_chip_crit_edge ], [ %call48, %if.end36.error_chip_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %58 = ptrtoint ptr %adev to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %adev, align 8
  br label %error

error:                                            ; preds = %error_chip, %if.end10.error_crit_edge
  %rc.1 = phi i32 [ %rc.0, %error_chip ], [ -12, %if.end10.error_crit_edge ]
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 4
  %call70 = call i32 @snd_card_free(ptr noundef %60) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end59, %do.body53.cleanup_crit_edge, %if.then9, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then9 ], [ %rc.1, %error ], [ 0, %entry.cleanup_crit_edge ], [ -2, %if.end2.cleanup_crit_edge ], [ 0, %do.end59 ], [ 0, %do.body53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #10
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %component) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_audio_fini(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %adev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 41
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_card_free(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  tail call void @kfree(ptr noundef nonnull %1) #10
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %adev, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_fillbuf(ptr noundef %core, ptr nocapture noundef readonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr inbounds %struct.tm6000_core, ptr %core, i32 0, i32 41
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %substream1 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream1, align 4
  %stream_started = getelementptr inbounds %struct.tm6000_core, ptr %core, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #10
  %4 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not = icmp eq i32 %6, 0
  br i1 %cmp4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %core7 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %core7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core7, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %8) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %runtime13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %runtime13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime13, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.end12.do.body18_crit_edge, label %lor.lhs.false15

if.end12.do.body18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

lor.lhs.false15:                                  ; preds = %if.end12
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 50
  %11 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_area, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %lor.lhs.false15.do.body18_crit_edge, label %if.end32

lor.lhs.false15.do.body18_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.body18:                                        ; preds = %lor.lhs.false15.do.body18_crit_edge, %if.end12.do.body18_crit_edge
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19.not = icmp eq i32 %13, 0
  br i1 %cmp19.not, label %do.body18.cleanup_crit_edge, label %do.end23

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end23:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %core25 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %core25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %core25, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %15) #14
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false15
  %buf_pos33 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %buf_pos33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_pos33, align 4
  %frame_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits, align 8
  %shr = lshr i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp34 = icmp ult i32 %19, 8
  br i1 %cmp34, label %do.body36, label %if.end50

do.body36:                                        ; preds = %if.end32
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp37.not = icmp eq i32 %20, 0
  br i1 %cmp37.not, label %do.body36.cleanup_crit_edge, label %do.end41

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %core43 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %core43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core43, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %22) #14
  br label %cleanup

if.end50:                                         ; preds = %if.end32
  %div = udiv i32 %size, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %size)
  %cmp51 = icmp ugt i32 %shr, %size
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp54.not = icmp eq i32 %23, 0
  br i1 %cmp51, label %do.body53, label %do.body68

do.body53:                                        ; preds = %if.end50
  br i1 %cmp54.not, label %do.body53.cleanup_crit_edge, label %do.end58

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %core60 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %core60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core60, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %25, ptr noundef nonnull @.str.27) #14
  br label %cleanup

do.body68:                                        ; preds = %if.end50
  br i1 %cmp54.not, label %do.body68.do.end82_crit_edge, label %do.end73

do.body68.do.end82_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end82

do.end73:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #12
  %core75 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %core75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core75, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 18
  %28 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_size, align 4
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %27, i32 noundef %size, ptr noundef nonnull %12, i32 noundef %17, i32 noundef %29, i32 noundef %shr) #14
  br label %do.end82

do.end82:                                         ; preds = %do.end73, %do.body68.do.end82_crit_edge
  %add = add i32 %div, %17
  %buffer_size83 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 18
  %30 = ptrtoint ptr %buffer_size83 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buffer_size83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp84.not = icmp ult i32 %add, %31
  br i1 %cmp84.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %31, %17
  %32 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_area, align 4
  %mul = mul i32 %shr, %17
  %add.ptr = getelementptr i8, ptr %33, i32 %mul
  %mul88 = mul i32 %sub, %shr
  %34 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %mul88)
  %35 = load ptr, ptr %dma_area, align 4
  %add.ptr91 = getelementptr i8, ptr %buf, i32 %mul88
  %mul92 = mul i32 %div, %shr
  %sub94 = sub i32 %mul92, %mul88
  %36 = call ptr @memcpy(ptr %35, ptr %add.ptr91, i32 %sub94)
  br label %if.end99

if.else:                                          ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_area, align 4
  %mul96 = mul i32 %shr, %17
  %add.ptr97 = getelementptr i8, ptr %38, i32 %mul96
  %mul98 = mul i32 %div, %shr
  %39 = call ptr @memcpy(ptr %add.ptr97, ptr %buf, i32 %mul98)
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then85
  tail call void @snd_pcm_stream_lock(ptr noundef nonnull %3) #10
  %40 = ptrtoint ptr %buf_pos33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_pos33, align 4
  %add101 = add i32 %41, %div
  store i32 %add101, ptr %buf_pos33, align 4
  %42 = ptrtoint ptr %buffer_size83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buffer_size83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add101, i32 %43)
  %cmp104.not = icmp ult i32 %add101, %43
  br i1 %cmp104.not, label %if.end99.if.end109_crit_edge, label %if.then105

if.end99.if.end109_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %sub108 = sub i32 %add101, %43
  %44 = ptrtoint ptr %buf_pos33 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub108, ptr %buf_pos33, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.end99.if.end109_crit_edge
  %period_pos = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %period_pos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %period_pos, align 4
  %add110 = add i32 %46, %div
  store i32 %add110, ptr %period_pos, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 16
  %47 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add110, i32 %48)
  %cmp112.not = icmp ult i32 %add110, %48
  br i1 %cmp112.not, label %if.end120.critedge, label %if.then113

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  %sub116 = sub i32 %add110, %48
  %49 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub116, ptr %period_pos, align 4
  tail call void @snd_pcm_stream_unlock(ptr noundef nonnull %3) #10
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %3) #10
  br label %cleanup

if.end120.critedge:                               ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_pcm_stream_unlock(ptr noundef nonnull %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end120.critedge, %if.then113, %do.end58, %do.body53.cleanup_crit_edge, %do.end41, %do.body36.cleanup_crit_edge, %do.end23, %do.body18.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end23 ], [ -22, %do.body18.cleanup_crit_edge ], [ -22, %do.end41 ], [ -22, %do.body36.cleanup_crit_edge ], [ -22, %do.end58 ], [ -22, %do.body53.cleanup_crit_edge ], [ 0, %if.end120.critedge ], [ 0, %if.then113 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audio_trigger(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 8
  %stream_started = getelementptr i8, ptr %work, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #10
  %2 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10.not = icmp eq i32 %4, 0
  %core1.i2937 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %core1.i2937 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core1.i2937, align 4
  br i1 %tobool.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp10.not, label %do.body._tm6000_start_audio_dma.exit_crit_edge, label %do.end7

do.body._tm6000_start_audio_dma.exit_crit_edge:   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tm6000_start_audio_dma.exit

do.end7:                                          ; preds = %do.body
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %6) #14
  %.pr = load i32, ptr @debug, align 4
  %7 = ptrtoint ptr %core1.i2937 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core1.i2937, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %do.end7._tm6000_start_audio_dma.exit_crit_edge, label %do.end.i

do.end7._tm6000_start_audio_dma.exit_crit_edge:   ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tm6000_start_audio_dma.exit

do.end.i:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %8) #14
  br label %_tm6000_start_audio_dma.exit

_tm6000_start_audio_dma.exit:                     ; preds = %do.end.i, %do.end7._tm6000_start_audio_dma.exit_crit_edge, %do.body._tm6000_start_audio_dma.exit_crit_edge
  %9 = phi ptr [ %8, %do.end7._tm6000_start_audio_dma.exit_crit_edge ], [ %8, %do.end.i ], [ %6, %do.body._tm6000_start_audio_dma.exit_crit_edge ]
  %call6.i = tail call i32 @tm6000_set_reg_mask(ptr noundef %9, i8 noundef zeroext 7, i16 noundef zeroext 204, i16 noundef zeroext 64, i16 noundef zeroext 64) #10
  %call7.i = tail call i32 @tm6000_set_audio_bitrate(ptr noundef %9, i32 noundef 48000) #10
  br label %if.end24

do.body9:                                         ; preds = %entry
  br i1 %cmp10.not, label %do.body9._tm6000_stop_audio_dma.exit_crit_edge, label %do.end22

do.body9._tm6000_stop_audio_dma.exit_crit_edge:   ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tm6000_stop_audio_dma.exit

do.end22:                                         ; preds = %do.body9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %6) #14
  %.pr36 = load i32, ptr @debug, align 4
  %10 = ptrtoint ptr %core1.i2937 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core1.i2937, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr36)
  %cmp.not.i30 = icmp eq i32 %.pr36, 0
  br i1 %cmp.not.i30, label %do.end22._tm6000_stop_audio_dma.exit_crit_edge, label %do.end.i32

do.end22._tm6000_stop_audio_dma.exit_crit_edge:   ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %_tm6000_stop_audio_dma.exit

do.end.i32:                                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %11) #14
  br label %_tm6000_stop_audio_dma.exit

_tm6000_stop_audio_dma.exit:                      ; preds = %do.end.i32, %do.end22._tm6000_stop_audio_dma.exit_crit_edge, %do.body9._tm6000_stop_audio_dma.exit_crit_edge
  %12 = phi ptr [ %11, %do.end22._tm6000_stop_audio_dma.exit_crit_edge ], [ %11, %do.end.i32 ], [ %6, %do.body9._tm6000_stop_audio_dma.exit_crit_edge ]
  %call6.i33 = tail call i32 @tm6000_set_reg_mask(ptr noundef %12, i8 noundef zeroext 7, i16 noundef zeroext 204, i16 noundef zeroext 0, i16 noundef zeroext 64) #10
  br label %if.end24

if.end24:                                         ; preds = %_tm6000_stop_audio_dma.exit, %_tm6000_start_audio_dma.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_tm6000_pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_pow2(ptr noundef %3, i32 noundef 0, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %substream2 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_tm6000_digital_hw, i32 64)
  %call3 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not = icmp eq i32 %6, 0
  br i1 %cmp4.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %core = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %8) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_tm6000_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %core1 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %stream_started = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #10
  %4 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #10
  %6 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %stream_started, align 4
  %wq_trigger = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i7 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %wq_trigger) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_tm6000_prepare(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buf_pos = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %buf_pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf_pos, align 4
  %period_pos = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %period_pos, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_tm6000_card_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %core1 = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core1, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge8
    i32 1, label %entry.sw.bb_crit_edge9
    i32 3, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge10
    i32 0, label %entry.sw.bb2_crit_edge11
  ]

entry.sw.bb2_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %stream_started = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #10
  %5 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %stream_started, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge10, %entry.sw.bb2_crit_edge11
  %stream_started3 = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 43
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started3, i32 noundef 4) #10
  %6 = ptrtoint ptr %stream_started3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %stream_started3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  %wq_trigger = getelementptr inbounds %struct.tm6000_core, ptr %3, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i7 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %wq_trigger) #10
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_tm6000_pointer(ptr nocapture noundef readonly %substream) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buf_pos = getelementptr inbounds %struct.snd_tm6000_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %buf_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_pos, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_pow2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_reg_mask(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_audio_bitrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__param_enable, !1, !"__param_enable", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_enabletype309, !1, !"__UNIQUE_ID_enabletype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable310, !4, !"__UNIQUE_ID_enable310", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 41, i32 1}
!5 = !{ptr @__param_index, !6, !"__param_index", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 43, i32 1}
!7 = !{ptr @__UNIQUE_ID_indextype311, !6, !"__UNIQUE_ID_indextype311", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_index312, !9, !"__UNIQUE_ID_index312", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 44, i32 1}
!10 = !{ptr @__UNIQUE_ID_description313, !11, !"__UNIQUE_ID_description313", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 51, i32 1}
!12 = !{ptr @__UNIQUE_ID_author314, !13, !"__UNIQUE_ID_author314", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 52, i32 1}
!14 = !{ptr @__UNIQUE_ID_file315, !15, !"__UNIQUE_ID_file315", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 53, i32 1}
!16 = !{ptr @__UNIQUE_ID_license316, !15, !"__UNIQUE_ID_license316", i1 false, i1 false}
!17 = !{ptr @__param_debug, !18, !"__param_debug", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 55, i32 1}
!19 = !{ptr @__UNIQUE_ID_debugtype317, !18, !"__UNIQUE_ID_debugtype317", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_debug318, !21, !"__UNIQUE_ID_debug318", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 56, i32 1}
!22 = !{ptr @__initcall__kmod_tm6000_alsa__319_439_tm6000_alsa_register6, !23, !"__initcall__kmod_tm6000_alsa__319_439_tm6000_alsa_register6", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 439, i32 1}
!24 = !{ptr @__exitcall_tm6000_alsa_unregister, !25, !"__exitcall_tm6000_alsa_unregister", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 440, i32 1}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 54, i32 21}
!28 = !{ptr @__param_str_enable, !1, !"__param_str_enable", i1 false, i1 false}
!29 = !{ptr @__param_arr_enable, !1, !"__param_arr_enable", i1 false, i1 false}
!30 = !{ptr @enable, !31, !"enable", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 38, i32 13}
!32 = !{ptr @__param_str_index, !6, !"__param_str_index", i1 false, i1 false}
!33 = !{ptr @__param_arr_index, !6, !"__param_arr_index", i1 false, i1 false}
!34 = !{ptr @index, !35, !"index", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 36, i32 12}
!36 = !{ptr @__param_str_debug, !18, !"__param_str_debug", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 423, i32 10}
!39 = !{ptr @audio_ops, !40, !"audio_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 421, i32 26}
!41 = distinct !{null, !42, !"devnr", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 331, i32 14}
!43 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 344, i32 51}
!45 = !{ptr @.str.2, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 347, i32 3}
!47 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 350, i32 24}
!50 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 351, i32 27}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 352, i32 26}
!54 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 355, i32 21}
!56 = !{ptr @tm6000_audio_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 369, i32 2}
!58 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 371, i32 25}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 377, i32 21}
!63 = !{ptr @tm6000_audio_init.__key.11, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 382, i32 2}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 387, i32 2}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tm6000_audio_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @tm6000_audio_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @snd_tm6000_pcm_ops, !72, !"snd_tm6000_pcm_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 305, i32 33}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 145, i32 2}
!75 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @snd_tm6000_pcm_open._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @snd_tm6000_pcm_open._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @snd_tm6000_digital_hw, !79, !"snd_tm6000_digital_hw", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 104, i32 38}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 259, i32 3}
!82 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @audio_trigger._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @audio_trigger._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 262, i32 3}
!87 = !{ptr @audio_trigger._entry.19, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @audio_trigger._entry_ptr.21, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 70, i32 2}
!91 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @_tm6000_start_audio_dma._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @_tm6000_start_audio_dma._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 87, i32 2}
!96 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @_tm6000_stop_audio_dma._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @_tm6000_stop_audio_dma._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 178, i32 3}
!101 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tm6000_fillbuf._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @tm6000_fillbuf._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 184, i32 3}
!106 = !{ptr @tm6000_fillbuf._entry.28, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tm6000_fillbuf._entry_ptr.30, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 192, i32 3}
!110 = !{ptr @tm6000_fillbuf._entry.31, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tm6000_fillbuf._entry_ptr.33, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 198, i32 3}
!114 = !{ptr @tm6000_fillbuf._entry.34, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tm6000_fillbuf._entry_ptr.36, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/tm6000/tm6000-alsa.c", i32 202, i32 2}
!118 = !{ptr @tm6000_fillbuf._entry.37, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tm6000_fillbuf._entry_ptr.39, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i8 0, i8 2}
