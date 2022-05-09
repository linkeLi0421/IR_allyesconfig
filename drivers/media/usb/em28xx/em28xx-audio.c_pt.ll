; ModuleID = '/llk/IR_all_yes/drivers/media/usb/em28xx/em28xx-audio.c_pt.bc'
source_filename = "../drivers/media/usb/em28xx/em28xx-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.em28xx_ops = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.em28xx = type { %struct.kref, ptr, ptr, %struct.em28xx_audio, ptr, i32, i32, i32, i8, i32, i32, [32 x i8], %struct.em28xx_board, i32, i32, %struct.list_head, i32, %struct.em28xx_audio_mode, i32, [2 x %struct.i2c_adapter], [2 x %struct.i2c_client], [2 x %struct.em28xx_i2c_bus], i8, i32, i32, %struct.rt_mutex, i32, i32, i32, [4 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.mutex, %struct.mutex, i32, ptr, i16, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_usb_ctl, %struct.spinlock, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i8, i32, i32, i32, i8, [80 x i8], ptr, ptr, ptr, ptr, ptr, i32, %struct.delayed_work, [5 x i8], [5 x i8], i8, i16, [30 x i8], ptr, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.em28xx_audio = type { [50 x i8], i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.work_struct, %struct.atomic_t }
%struct.em28xx_board = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }
%struct.em28xx_input = type { i32, i32, i32, i32, ptr }
%struct.em28xx_audio_mode = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.em28xx_i2c_bus = type { ptr, i32, i32 }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.em28xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head }
%struct.em28xx_usb_ctl = type { %struct.em28xx_usb_bufs, %struct.em28xx_usb_bufs, ptr, ptr, ptr }
%struct.em28xx_usb_bufs = type { i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, i32 }
%union.anon.114 = type { ptr }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.112, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.112 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.107, [128 x i8] }
%union.anon.107 = type { %union.anon.109 }
%union.anon.109 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.103, [64 x i8] }
%union.anon.103 = type { %struct.anon.106, [40 x i8] }
%struct.anon.106 = type { i32, i32, [64 x i8], i64, i32 }

@__param_str_debug = internal constant [18 x i8] c"em28xx_alsa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype309 = internal constant [31 x i8] c"em28xx_alsa.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug310 = internal constant [44 x i8] c"em28xx_alsa.parm=debug:activates debug info\00", section ".modinfo", align 1
@audio_ops = internal global { %struct.em28xx_ops, [32 x i8] } { %struct.em28xx_ops { %struct.list_head zeroinitializer, ptr @.str.3, i32 16, ptr @em28xx_audio_init, ptr @em28xx_audio_fini, ptr @em28xx_audio_suspend, ptr @em28xx_audio_resume }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file311 = internal constant [54 x i8] c"em28xx_alsa.file=drivers/media/usb/em28xx/em28xx-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [27 x i8] c"em28xx_alsa.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [61 x i8] c"em28xx_alsa.author=Markus Rechberger <mrechberger@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [41 x i8] c"em28xx_alsa.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_description315 = internal constant [69 x i8] c"em28xx_alsa.description=Empia em28xx device driver - audio interface\00", section ".modinfo", align 1
@__UNIQUE_ID_version316 = internal constant [26 x i8] c"em28xx_alsa.version=0.2.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"em28xx_alsa\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.2.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_em28xx_alsa__317_984_em28xx_alsa_register6 = internal global ptr @em28xx_alsa_register, section ".initcall6.init", align 4
@__exitcall_em28xx_alsa_unregister = internal global ptr @em28xx_alsa_unregister, section ".exitcall.exit", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Em28xx Audio Extension\00", [41 x i8] zeroinitializer }, align 32
@em28xx_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 830, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Binding audio extension\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_audio_init\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/em28xx/em28xx-audio.c\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em28xx_audio_init._entry_ptr = internal global ptr @em28xx_audio_init._entry, section ".printk_index", align 4
@em28xx_audio_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 835, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"em28xx-audio.c: Copyright (C) 2006 Markus Rechberger\0A\00", [42 x i8] zeroinitializer }, align 32
@em28xx_audio_init._entry_ptr.11 = internal global ptr @em28xx_audio_init._entry.9, section ".printk_index", align 4
@em28xx_audio_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 837, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"em28xx-audio.c: Copyright (C) 2007-2016 Mauro Carvalho Chehab\0A\00", [33 x i8] zeroinitializer }, align 32
@em28xx_audio_init._entry_ptr.14 = internal global ptr @em28xx_audio_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Em28xx Audio\00", [19 x i8] zeroinitializer }, align 32
@em28xx_audio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&adev->slock\00", [19 x i8] zeroinitializer }, align 32
@snd_em28xx_pcm_capture = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_em28xx_capture_open, ptr @snd_em28xx_pcm_close, ptr null, ptr null, ptr null, ptr @snd_em28xx_prepare, ptr @snd_em28xx_capture_trigger, ptr null, ptr @snd_em28xx_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Empia 28xx Capture\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Em28xx-Audio\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Empia Em28xx Audio\00", [45 x i8] zeroinitializer }, align 32
@em28xx_audio_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&adev->wq_trigger)\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Video\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Phone\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Microphone\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUX\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mono\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LFE\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Surround\00", [23 x i8] zeroinitializer }, align 32
@em28xx_audio_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 888, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Audio extension successfully initialized\0A\00", [54 x i8] zeroinitializer }, align 32
@em28xx_audio_init._entry_ptr.36 = internal global ptr @em28xx_audio_init._entry.34, section ".printk_index", align 4
@snd_em28xx_capture_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013em28xx-audio: BUG: em28xx can't find device struct. Can't proceed with open\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_em28xx_capture_open\00", [40 x i8] zeroinitializer }, align 32
@snd_em28xx_capture_open._entry_ptr = internal global ptr @snd_em28xx_capture_open._entry, section ".printk_index", align 4
@snd_em28xx_capture_open._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.6, i32 240, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"video: %s: opening device and trying to acquire exclusive lock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@snd_em28xx_capture_open._entry_ptr.42 = internal global ptr @snd_em28xx_capture_open._entry.39, section ".printk_index", align 4
@snd_em28xx_hw_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 501760, i32 11059, i32 13516, i32 2, i32 98, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_em28xx_capture_open._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.38, ptr @.str.6, i32 274, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"video: %s: changing alternate number on interface %d to %d\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_em28xx_capture_open._entry_ptr.45 = internal global ptr @snd_em28xx_capture_open._entry.43, section ".printk_index", align 4
@snd_em28xx_capture_open._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.38, ptr @.str.6, i32 302, ptr @.str.48, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error while configuring em28xx mixer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_em28xx_capture_open._entry_ptr.49 = internal global ptr @snd_em28xx_capture_open._entry.46, section ".printk_index", align 4
@snd_em28xx_pcm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 310, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"video: %s: closing device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_em28xx_pcm_close\00", [43 x i8] zeroinitializer }, align 32
@snd_em28xx_pcm_close._entry_ptr = internal global ptr @snd_em28xx_pcm_close._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@audio_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 347, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"video: %s: starting capture\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_trigger\00", [18 x i8] zeroinitializer }, align 32
@audio_trigger._entry_ptr = internal global ptr @audio_trigger._entry, section ".printk_index", align 4
@audio_trigger._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.6, i32 350, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"video: %s: stopping capture\00", [36 x i8] zeroinitializer }, align 32
@audio_trigger._entry_ptr.56 = internal global ptr @audio_trigger._entry.54, section ".printk_index", align 4
@em28xx_init_audio_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.6, i32 173, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"video: %s: Starting isoc transfers\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"em28xx_init_audio_isoc\00", [41 x i8] zeroinitializer }, align 32
@em28xx_init_audio_isoc._entry_ptr = internal global ptr @em28xx_init_audio_isoc._entry, section ".printk_index", align 4
@em28xx_init_audio_isoc._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.6, i32 184, ptr @.str.48, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"submit of audio urb failed (error=%i)\0A\00", [57 x i8] zeroinitializer }, align 32
@em28xx_init_audio_isoc._entry_ptr.61 = internal global ptr @em28xx_init_audio_isoc._entry.59, section ".printk_index", align 4
@em28xx_deinit_isoc_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 63, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"video: %s: Stopping isoc\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"em28xx_deinit_isoc_audio\00", [39 x i8] zeroinitializer }, align 32
@em28xx_deinit_isoc_audio._entry_ptr = internal global ptr @em28xx_deinit_isoc_audio._entry, section ".printk_index", align 4
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Switch\00", [22 x i8] zeroinitializer }, align 32
@em28xx_cvol_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 600, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"video: %s: Added control %s for ac97 volume control 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"em28xx_cvol_new\00", [16 x i8] zeroinitializer }, align 32
@em28xx_cvol_new._entry_ptr = internal global ptr @em28xx_cvol_new._entry, section ".printk_index", align 4
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Volume\00", [22 x i8] zeroinitializer }, align 32
@em28xx_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@em28xx_cvol_new._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 618, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@em28xx_cvol_new._entry_ptr.69 = internal global ptr @em28xx_cvol_new._entry.68, section ".printk_index", align 4
@em28xx_vol_get_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 570, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"video: %s: %sleft vol %d, right vol %d (0x%04x) from ac97 volume control 0x%04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"em28xx_vol_get_mute\00", [44 x i8] zeroinitializer }, align 32
@em28xx_vol_get_mute._entry_ptr = internal global ptr @em28xx_vol_get_mute._entry, section ".printk_index", align 4
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"muted \00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@em28xx_vol_put_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.6, i32 531, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"video: %s: %sleft vol %d, right vol %d (0x%04x) to ac97 volume control 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"em28xx_vol_put_mute\00", [44 x i8] zeroinitializer }, align 32
@em28xx_vol_put_mute._entry_ptr = internal global ptr @em28xx_vol_put_mute._entry, section ".printk_index", align 4
@em28xx_vol_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.76, ptr @.str.6, i32 487, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"em28xx_vol_get\00", [17 x i8] zeroinitializer }, align 32
@em28xx_vol_get._entry_ptr = internal global ptr @em28xx_vol_get._entry, section ".printk_index", align 4
@em28xx_vol_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.77, ptr @.str.6, i32 453, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"em28xx_vol_put\00", [17 x i8] zeroinitializer }, align 32
@em28xx_vol_put._entry_ptr = internal global ptr @em28xx_vol_put._entry, section ".printk_index", align 4
@em28xx_audio_urb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.6, i32 686, ptr @.str.48, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"alt %d doesn't exist on interface %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em28xx_audio_urb_init\00", [42 x i8] zeroinitializer }, align 32
@em28xx_audio_urb_init._entry_ptr = internal global ptr @em28xx_audio_urb_init._entry, section ".printk_index", align 4
@em28xx_audio_urb_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.6, i32 701, ptr @.str.48, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't find an audio endpoint\00", [32 x i8] zeroinitializer }, align 32
@em28xx_audio_urb_init._entry_ptr.82 = internal global ptr @em28xx_audio_urb_init._entry.80, section ".printk_index", align 4
@em28xx_audio_urb_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.6, i32 711, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Endpoint 0x%02x %s on intf %d alt %d interval = %d, size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@em28xx_audio_urb_init._entry_ptr.85 = internal global ptr @em28xx_audio_urb_init._entry.83, section ".printk_index", align 4
@em28xx_audio_urb_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.6, i32 750, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Number of URBs: %d, with %d packets and %d size\0A\00", [47 x i8] zeroinitializer }, align 32
@em28xx_audio_urb_init._entry_ptr.88 = internal global ptr @em28xx_audio_urb_init._entry.86, section ".printk_index", align 4
@em28xx_audio_urb_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.6, i32 787, ptr @.str.48, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_alloc_coherent failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_audio_urb_init._entry_ptr.91 = internal global ptr @em28xx_audio_urb_init._entry.89, section ".printk_index", align 4
@em28xx_audio_isocirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.6, i32 90, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"video: %s: device disconnected while streaming. URB status=%d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_audio_isocirq\00", [43 x i8] zeroinitializer }, align 32
@em28xx_audio_isocirq._entry_ptr = internal global ptr @em28xx_audio_isocirq._entry, section ".printk_index", align 4
@em28xx_audio_isocirq._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.6, i32 104, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"video: %s: urb completion error %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@em28xx_audio_isocirq._entry_ptr.96 = internal global ptr @em28xx_audio_isocirq._entry.94, section ".printk_index", align 4
@em28xx_audio_isocirq._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.6, i32 166, ptr @.str.48, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"resubmit of audio urb failed (error=%i)\0A\00", [55 x i8] zeroinitializer }, align 32
@em28xx_audio_isocirq._entry_ptr.99 = internal global ptr @em28xx_audio_isocirq._entry.97, section ".printk_index", align 4
@em28xx_audio_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.6, i32 915, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Closing audio extension\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_audio_fini\00", [46 x i8] zeroinitializer }, align 32
@em28xx_audio_fini._entry_ptr = internal global ptr @em28xx_audio_fini._entry, section ".printk_index", align 4
@em28xx_audio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.6, i32 939, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Suspending audio extension\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_audio_suspend\00", [43 x i8] zeroinitializer }, align 32
@em28xx_audio_suspend._entry_ptr = internal global ptr @em28xx_audio_suspend._entry, section ".printk_index", align 4
@em28xx_audio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.6, i32 953, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Resuming audio extension\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"em28xx_audio_resume\00", [44 x i8] zeroinitializer }, align 32
@em28xx_audio_resume._entry_ptr = internal global ptr @em28xx_audio_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.106 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 44, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [10 x i8] c"audio_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 959, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 982, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 961, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 830, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 834, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 836, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 839, i32 52 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 844, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"snd_em28xx_pcm_capture\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 626, i32 33 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 856, i32 21 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 858, i32 24 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 860, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 862, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 865, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 866, i32 30 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 867, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 868, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 869, i32 30 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 870, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 871, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 873, i32 30 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 874, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 875, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 876, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 877, i32 30 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 888, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 233, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 240, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [22 x i8] c"snd_em28xx_hw_capture\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 194, i32 38 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 273, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 301, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 310, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 347, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 350, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 173, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 182, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 63, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 591, i32 20 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 599, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 608, i32 20 }
@___asan_gen_.323 = private unnamed_addr constant [16 x i8] c"em28xx_db_scale\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 575, i32 14 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 617, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 567, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 528, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 484, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 450, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 685, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 701, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 708, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 748, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 786, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 89, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 104, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 164, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 915, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 939, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.444 = private constant [43 x i8] c"../drivers/media/usb/em28xx/em28xx-audio.c\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 953, i32 2 }
@llvm.compiler.used = appending global [157 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_debug310, ptr @__UNIQUE_ID_debugtype309, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__UNIQUE_ID_version316, ptr @__exitcall_em28xx_alsa_unregister, ptr @__initcall__kmod_em28xx_alsa__317_984_em28xx_alsa_register6, ptr @__modver_attr, ptr @__param_debug, ptr @audio_trigger._entry, ptr @audio_trigger._entry.54, ptr @audio_trigger._entry_ptr, ptr @audio_trigger._entry_ptr.56, ptr @em28xx_alsa_unregister, ptr @em28xx_audio_fini._entry, ptr @em28xx_audio_fini._entry_ptr, ptr @em28xx_audio_init._entry, ptr @em28xx_audio_init._entry.12, ptr @em28xx_audio_init._entry.34, ptr @em28xx_audio_init._entry.9, ptr @em28xx_audio_init._entry_ptr, ptr @em28xx_audio_init._entry_ptr.11, ptr @em28xx_audio_init._entry_ptr.14, ptr @em28xx_audio_init._entry_ptr.36, ptr @em28xx_audio_isocirq._entry, ptr @em28xx_audio_isocirq._entry.94, ptr @em28xx_audio_isocirq._entry.97, ptr @em28xx_audio_isocirq._entry_ptr, ptr @em28xx_audio_isocirq._entry_ptr.96, ptr @em28xx_audio_isocirq._entry_ptr.99, ptr @em28xx_audio_resume._entry, ptr @em28xx_audio_resume._entry_ptr, ptr @em28xx_audio_suspend._entry, ptr @em28xx_audio_suspend._entry_ptr, ptr @em28xx_audio_urb_init._entry, ptr @em28xx_audio_urb_init._entry.80, ptr @em28xx_audio_urb_init._entry.83, ptr @em28xx_audio_urb_init._entry.86, ptr @em28xx_audio_urb_init._entry.89, ptr @em28xx_audio_urb_init._entry_ptr, ptr @em28xx_audio_urb_init._entry_ptr.82, ptr @em28xx_audio_urb_init._entry_ptr.85, ptr @em28xx_audio_urb_init._entry_ptr.88, ptr @em28xx_audio_urb_init._entry_ptr.91, ptr @em28xx_cvol_new._entry, ptr @em28xx_cvol_new._entry.68, ptr @em28xx_cvol_new._entry_ptr, ptr @em28xx_cvol_new._entry_ptr.69, ptr @em28xx_deinit_isoc_audio._entry, ptr @em28xx_deinit_isoc_audio._entry_ptr, ptr @em28xx_init_audio_isoc._entry, ptr @em28xx_init_audio_isoc._entry.59, ptr @em28xx_init_audio_isoc._entry_ptr, ptr @em28xx_init_audio_isoc._entry_ptr.61, ptr @em28xx_vol_get._entry, ptr @em28xx_vol_get._entry_ptr, ptr @em28xx_vol_get_mute._entry, ptr @em28xx_vol_get_mute._entry_ptr, ptr @em28xx_vol_put._entry, ptr @em28xx_vol_put._entry_ptr, ptr @em28xx_vol_put_mute._entry, ptr @em28xx_vol_put_mute._entry_ptr, ptr @snd_em28xx_capture_open._entry, ptr @snd_em28xx_capture_open._entry.39, ptr @snd_em28xx_capture_open._entry.43, ptr @snd_em28xx_capture_open._entry.46, ptr @snd_em28xx_capture_open._entry_ptr, ptr @snd_em28xx_capture_open._entry_ptr.42, ptr @snd_em28xx_capture_open._entry_ptr.45, ptr @snd_em28xx_capture_open._entry_ptr.49, ptr @snd_em28xx_pcm_close._entry, ptr @snd_em28xx_pcm_close._entry_ptr, ptr @debug, ptr @audio_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @em28xx_audio_init.__key, ptr @.str.16, ptr @snd_em28xx_pcm_capture, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @em28xx_audio_init.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @snd_em28xx_hw_capture, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @em28xx_db_scale, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_em28xx_pcm_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_em28xx_capture_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_em28xx_capture_open._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_em28xx_hw_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_em28xx_capture_open._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_em28xx_capture_open._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_em28xx_pcm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_trigger._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_audio_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_audio_isoc._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_deinit_isoc_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_cvol_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_cvol_new._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_vol_get_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_vol_put_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_vol_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_vol_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_urb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_urb_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_urb_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_urb_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_urb_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_isocirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_isocirq._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_isocirq._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_audio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_alsa_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @em28xx_unregister_extension(ptr noundef nonnull @audio_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_unregister_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_alsa_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @em28xx_register_extension(ptr noundef nonnull @audio_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_audio_init(ptr noundef %dev) #2 align 64 {
entry:
  %pcm = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #10
  %4 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !236
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %5 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !236
  %usb_audio_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_audio_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_audio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.4) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %dev, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev, ptr %dev, i32 1, ptr elementtype(i32) %dev) #10, !srcloc !237
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !238

do.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !239

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dev, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str.10) #13
  %12 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf, align 4
  %dev13 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.13) #13
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %call16 = call i32 @snd_card_new(ptr noundef %dev15, i32 noundef -1, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %kref_get.exit.cleanup_crit_edge, label %do.body20

kref_get.exit.cleanup_crit_edge:                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body20:                                        ; preds = %kref_get.exit
  %slock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 11
  call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.16, ptr noundef nonnull @em28xx_audio_init.__key, i16 noundef signext 3) #10
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %sndcard = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %sndcard to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %sndcard, align 4
  %udev24 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %udev24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %udev24, align 4
  %call25 = call i32 @snd_pcm_new(ptr noundef %17, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.body20.card_free_crit_edge, label %if.end28

do.body20.card_free_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %card_free

if.end28:                                         ; preds = %do.body20
  %20 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %21, i32 noundef 1, ptr noundef nonnull @snd_em28xx_pcm_capture) #10
  %22 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcm, align 4
  %call29 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %23, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %25, i32 0, i32 11
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %25, i32 0, i32 7
  %call30 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef 80) #10
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 2
  %call32 = call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.18, i32 noundef 16) #10
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 3
  %call34 = call i32 @strscpy(ptr noundef %shortname, ptr noundef nonnull @.str.15, i32 noundef 32) #10
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 4
  %call36 = call i32 @strscpy(ptr noundef %longname, ptr noundef nonnull @.str.19, i32 noundef 80) #10
  %wq_trigger = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 12
  call void @__init_work(ptr noundef %wq_trigger, i32 noundef 0) #10
  %34 = ptrtoint ptr %wq_trigger to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %wq_trigger, align 4
  %lockdep_map = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 12, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @em28xx_audio_init.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry41 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 12, i32 1
  %35 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 12, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry41, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 12, i32 2
  %37 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @audio_trigger, ptr %func, align 4
  %audio_mode = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 17
  %38 = ptrtoint ptr %audio_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %audio_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp45.not = icmp eq i32 %39, 0
  br i1 %cmp45.not, label %if.end28.if.end59_crit_edge, label %if.then46

if.end28.if.end59_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then46:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %41, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef 20)
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %43, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 16)
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %45, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef 12)
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %47, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef 14)
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %49, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef 18)
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %51, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef 22)
  %52 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %53, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef 24)
  %54 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %55, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef 2)
  %56 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %57, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef 4)
  %58 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %59, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef 6)
  %60 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %61, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef 54)
  %62 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card, align 4
  call fastcc void @em28xx_cvol_new(ptr noundef %63, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 56)
  br label %if.end59

if.end59:                                         ; preds = %if.then46, %if.end28.if.end59_crit_edge
  %64 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %intf, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 -128
  %ifnum.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 45
  %68 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ifnum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  %..i = select i1 %tobool.not.i, i32 7, i32 1
  %conv.i = zext i8 %69 to i32
  %call3.i = call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i.i, i32 noundef %conv.i) #10
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %call3.i, i32 0, i32 2
  %70 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %..i)
  %cmp.not.i = icmp ugt i32 %71, %..i
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end59
  %72 = ptrtoint ptr %call3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call3.i, align 8
  %bNumEndpoints.i = getelementptr %struct.usb_host_interface, ptr %73, i32 %..i, i32 0, i32 4
  %74 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bNumEndpoints.i, align 4
  %conv13.i = zext i8 %75 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp14290.not.i = icmp eq i8 %75, 0
  br i1 %cmp14290.not.i, label %for.cond.preheader.i.do.end34.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.end34.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %endpoint.i = getelementptr %struct.usb_host_interface, ptr %73, i32 %..i, i32 3
  %76 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %endpoint.i, align 4
  br label %for.body.i

do.end.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %intf, align 4
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ifnum.i, align 8
  %conv10.i = zext i8 %81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.78, i32 noundef %conv10.i, i32 noundef %..i) #13
  br label %card_free

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0291.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv13.i
  br i1 %exitcond.not.i, label %for.cond.i.do.end34.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.end34.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0291.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx19.i = getelementptr %struct.usb_host_endpoint, ptr %77, i32 %i.0291.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx19.i, i32 0, i32 2
  %82 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %83)
  %cmp26.i = icmp eq i8 %83, -125
  br i1 %cmp26.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool30.not.i = icmp eq ptr %arrayidx19.i, null
  br i1 %tobool30.not.i, label %for.end.i.do.end34.i_crit_edge, label %if.end37.i

for.end.i.do.end34.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34.i

do.end34.i:                                       ; preds = %for.end.i.do.end34.i_crit_edge, %for.cond.i.do.end34.i_crit_edge, %for.cond.preheader.i.do.end34.i_crit_edge
  %84 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %intf, align 4
  %dev36.i = getelementptr inbounds %struct.usb_interface, ptr %85, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.81) #13
  br label %card_free

if.end37.i:                                       ; preds = %for.end.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx19.i, i32 0, i32 4
  %86 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87) #10
  %conv.i.i = zext i16 %88 to i32
  %speed.i.i = getelementptr i8, ptr %67, i32 -100
  %89 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp.i.i = icmp eq i32 %90, 3
  %and.i.i = and i32 %conv.i.i, 2047
  %91 = lshr i32 %conv.i.i, 11
  %and2.i.i = and i32 %91, 3
  %add.i.i = add nuw nsw i32 %and2.i.i, 1
  %mul.i.i = select i1 %cmp.i.i, i32 %add.i.i, i32 1
  %retval.0.i.i = mul nuw nsw i32 %mul.i.i, %and.i.i
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx19.i, i32 0, i32 5
  %92 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bInterval.i, align 1
  %conv39.i = zext i8 %93 to i32
  %sub.i = add nsw i32 %conv39.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %94 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %intf, align 4
  %dev44.i = getelementptr inbounds %struct.usb_interface, ptr %95, i32 0, i32 7
  %call45.i = call ptr @usb_speed_string(i32 noundef %90) #10
  %96 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ifnum.i, align 8
  %conv47.i = zext i8 %97 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev44.i, ptr noundef nonnull @.str.84, i32 noundef 131, ptr noundef %call45.i, i32 noundef %conv47.i, i32 noundef %..i, i32 noundef %shl.i, i32 noundef %retval.0.i.i) #13
  %mul.i = shl i32 125, %sub.i
  %sub49.i = add i32 %mul.i, 191999
  %div.i = sdiv i32 %sub49.i, %mul.i
  %add51.i = add nsw i32 %retval.0.i.i, -1
  %sub52.i = add i32 %add51.i, %div.i
  %div53.i = sdiv i32 %sub52.i, %retval.0.i.i
  %98 = call i32 @llvm.smin.i32(i32 %div53.i, i32 5) #10
  %div58.i = sdiv i32 %div.i, %98
  %mul59.i = shl nuw nsw i32 %retval.0.i.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div58.i, i32 %mul59.i)
  %cmp60.i = icmp sgt i32 %div58.i, %mul59.i
  br i1 %cmp60.i, label %if.then62.i, label %if.end37.i.do.end69.i_crit_edge

if.end37.i.do.end69.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69.i

if.then62.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub64.i = add i32 %div58.i, %add51.i
  %div65.i = sdiv i32 %sub64.i, %retval.0.i.i
  br label %do.end69.i

do.end69.i:                                       ; preds = %if.then62.i, %if.end37.i.do.end69.i_crit_edge
  %npackets.0.i = phi i32 [ %div65.i, %if.then62.i ], [ 64, %if.end37.i.do.end69.i_crit_edge ]
  %99 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %intf, align 4
  %dev71.i = getelementptr inbounds %struct.usb_interface, ptr %100, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71.i, ptr noundef nonnull @.str.87, i32 noundef %98, i32 noundef %npackets.0.i, i32 noundef %div58.i) #13
  %mul72.i = mul i32 %npackets.0.i, %div58.i
  %period.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 9
  %101 = ptrtoint ptr %period.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %mul72.i, ptr %period.i, align 4
  %102 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 4) #10
  %103 = extractvalue { i32, i1 } %102, 1
  %104 = extractvalue { i32, i1 } %102, 0
  br i1 %103, label %kcalloc.exit.thread.i, label %kcalloc.exit.thread304.i, !prof !238

kcalloc.exit.thread.i:                            ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer279.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 2
  %105 = ptrtoint ptr %transfer_buffer279.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %transfer_buffer279.i, align 4
  br label %card_free

kcalloc.exit.thread304.i:                         ; preds = %do.end69.i
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %104, i32 noundef 3520) #14
  %transfer_buffer306.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 2
  %106 = ptrtoint ptr %transfer_buffer306.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call8.i.i.i, ptr %transfer_buffer306.i, align 4
  %tobool77.not307.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool77.not307.i, label %kcalloc.exit.thread304.i.card_free_crit_edge, label %if.end7.i.i272.i

kcalloc.exit.thread304.i.card_free_crit_edge:     ; preds = %kcalloc.exit.thread304.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %card_free

if.end7.i.i272.i:                                 ; preds = %kcalloc.exit.thread304.i
  %call8.i.i271.i = call noalias align 128 ptr @__kmalloc(i32 noundef %104, i32 noundef 3520) #14
  %urb.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 3
  %107 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call8.i.i271.i, ptr %urb.i, align 4
  %tobool84.not.i = icmp eq ptr %call8.i.i271.i, null
  br i1 %tobool84.not.i, label %if.then85.i, label %if.end88.i

if.then85.i:                                      ; preds = %if.end7.i.i272.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %transfer_buffer306.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %transfer_buffer306.i, align 4
  call void @kfree(ptr noundef %109) #10
  br label %card_free

if.end88.i:                                       ; preds = %if.end7.i.i272.i
  %num_urb90.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 1
  %110 = ptrtoint ptr %num_urb90.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %98, ptr %num_urb90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div53.i)
  %cmp92295.i = icmp sgt i32 %div53.i, 0
  br i1 %cmp92295.i, label %for.body94.lr.ph.i, label %if.end88.i.if.end62_crit_edge

if.end88.i.if.end62_crit_edge:                    ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

for.body94.lr.ph.i:                               ; preds = %if.end88.i
  %mul103.i = mul i32 %npackets.0.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npackets.0.i)
  %cmp123292.i = icmp sgt i32 %npackets.0.i, 0
  %smax.i = call i32 @llvm.smax.i32(i32 %98, i32 1) #10
  br label %for.body94.i

for.body94.i:                                     ; preds = %for.inc136.i.for.body94.i_crit_edge, %for.body94.lr.ph.i
  %i.1296.i = phi i32 [ 0, %for.body94.lr.ph.i ], [ %inc137.i, %for.inc136.i.for.body94.i_crit_edge ]
  %call96.i = call ptr @usb_alloc_urb(i32 noundef %npackets.0.i, i32 noundef 3264) #10
  %tobool97.not.i = icmp eq ptr %call96.i, null
  br i1 %tobool97.not.i, label %if.then98.i, label %if.end99.i

if.then98.i:                                      ; preds = %for.body94.i
  %111 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %intf, align 4
  %parent.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %112, i32 0, i32 7, i32 1
  %113 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %114, i32 -128
  %115 = ptrtoint ptr %num_urb90.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_urb90.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp23.not.i.i = icmp eq i32 %116, 0
  br i1 %cmp23.not.i.i, label %if.then98.i.em28xx_audio_free_urb.exit.i_crit_edge, label %if.then98.i.for.body.i.i_crit_edge

if.then98.i.for.body.i.i_crit_edge:               ; preds = %if.then98.i
  br label %for.body.i.i

if.then98.i.em28xx_audio_free_urb.exit.i_crit_edge: ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_audio_free_urb.exit.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %if.then98.i.for.body.i.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %if.then98.i.for.body.i.i_crit_edge ]
  %117 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %urb.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %118, i32 %i.024.i.i
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %120, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %120, i32 0, i32 19
  %121 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %transfer_buffer_length.i.i, align 4
  %123 = ptrtoint ptr %transfer_buffer306.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %transfer_buffer306.i, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %124, i32 %i.024.i.i
  %125 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx4.i.i, align 4
  %transfer_dma.i.i = getelementptr inbounds %struct.urb, ptr %120, i32 0, i32 15
  %127 = ptrtoint ptr %transfer_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %transfer_dma.i.i, align 4
  call void @usb_free_coherent(ptr noundef %add.ptr.i.i.i, i32 noundef %122, ptr noundef %126, i32 noundef %128) #10
  call void @usb_free_urb(ptr noundef nonnull %120) #10
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.024.i.i, 1
  %129 = ptrtoint ptr %num_urb90.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_urb90.i, align 4
  %cmp.i275.i = icmp ult i32 %inc.i.i, %130
  br i1 %cmp.i275.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.em28xx_audio_free_urb.exit.i_crit_edge

cleanup.i.i.em28xx_audio_free_urb.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_audio_free_urb.exit.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

em28xx_audio_free_urb.exit.i:                     ; preds = %cleanup.i.i.em28xx_audio_free_urb.exit.i_crit_edge, %if.then98.i.em28xx_audio_free_urb.exit.i_crit_edge
  %131 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %urb.i, align 4
  call void @kfree(ptr noundef %132) #10
  %133 = ptrtoint ptr %transfer_buffer306.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %transfer_buffer306.i, align 4
  call void @kfree(ptr noundef %134) #10
  %135 = ptrtoint ptr %num_urb90.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %num_urb90.i, align 4
  br label %card_free

if.end99.i:                                       ; preds = %for.body94.i
  %136 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %urb.i, align 4
  %arrayidx102.i = getelementptr ptr, ptr %137, i32 %i.1296.i
  %138 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call96.i, ptr %arrayidx102.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 15
  %call104.i = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef %mul103.i, i32 noundef 3264, ptr noundef %transfer_dma.i) #10
  %tobool105.not.i = icmp eq ptr %call104.i, null
  br i1 %tobool105.not.i, label %do.end109.i, label %if.end112.i

do.end109.i:                                      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %intf, align 4
  %dev111.i = getelementptr inbounds %struct.usb_interface, ptr %140, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111.i, ptr noundef nonnull @.str.90) #13
  call fastcc void @em28xx_audio_free_urb(ptr noundef %dev) #10
  br label %card_free

if.end112.i:                                      ; preds = %if.end99.i
  %141 = ptrtoint ptr %transfer_buffer306.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %transfer_buffer306.i, align 4
  %arrayidx115.i = getelementptr ptr, ptr %142, i32 %i.1296.i
  %143 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call104.i, ptr %arrayidx115.i, align 4
  %dev116.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 8
  %144 = ptrtoint ptr %dev116.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %add.ptr.i.i, ptr %dev116.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 27
  %145 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %dev, ptr %context.i, align 4
  %146 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i.i = shl i32 %147, 8
  %or118.i = or i32 %shl.i.i, 4292736
  %pipe.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 10
  %148 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or118.i, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 13
  %149 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 6, ptr %transfer_flags.i, align 4
  %transfer_buffer119.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 14
  %150 = ptrtoint ptr %transfer_buffer119.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call104.i, ptr %transfer_buffer119.i, align 4
  %interval120.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 25
  %151 = ptrtoint ptr %interval120.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %shl.i, ptr %interval120.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 28
  %152 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @em28xx_audio_isocirq, ptr %complete.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 24
  %153 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %npackets.0.i, ptr %number_of_packets.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call96.i, i32 0, i32 19
  %154 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %mul103.i, ptr %transfer_buffer_length.i, align 4
  br i1 %cmp123292.i, label %if.end112.i.for.body125.i_crit_edge, label %if.end112.i.for.inc136.i_crit_edge

if.end112.i.for.inc136.i_crit_edge:               ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136.i

if.end112.i.for.body125.i_crit_edge:              ; preds = %if.end112.i
  br label %for.body125.i

for.body125.i:                                    ; preds = %for.body125.i.for.body125.i_crit_edge, %if.end112.i.for.body125.i_crit_edge
  %k.0294.i = phi i32 [ %add131.i, %for.body125.i.for.body125.i_crit_edge ], [ 0, %if.end112.i.for.body125.i_crit_edge ]
  %j.0293.i = phi i32 [ %inc130.i, %for.body125.i.for.body125.i_crit_edge ], [ 0, %if.end112.i.for.body125.i_crit_edge ]
  %arrayidx126.i = getelementptr %struct.urb, ptr %call96.i, i32 0, i32 29, i32 %j.0293.i
  %155 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %k.0294.i, ptr %arrayidx126.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call96.i, i32 0, i32 29, i32 %j.0293.i, i32 1
  %156 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %retval.0.i.i, ptr %length.i, align 4
  %inc130.i = add nuw nsw i32 %j.0293.i, 1
  %add131.i = add i32 %k.0294.i, %retval.0.i.i
  %exitcond298.not.i = icmp eq i32 %inc130.i, %npackets.0.i
  br i1 %exitcond298.not.i, label %for.body125.i.for.inc136.i_crit_edge, label %for.body125.i.for.body125.i_crit_edge

for.body125.i.for.body125.i_crit_edge:            ; preds = %for.body125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body125.i

for.body125.i.for.inc136.i_crit_edge:             ; preds = %for.body125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136.i

for.inc136.i:                                     ; preds = %for.body125.i.for.inc136.i_crit_edge, %if.end112.i.for.inc136.i_crit_edge
  %inc137.i = add nuw nsw i32 %i.1296.i, 1
  %exitcond299.not.i = icmp eq i32 %inc137.i, %smax.i
  br i1 %exitcond299.not.i, label %for.inc136.i.if.end62_crit_edge, label %for.inc136.i.for.body94.i_crit_edge

for.inc136.i.for.body94.i_crit_edge:              ; preds = %for.inc136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body94.i

for.inc136.i.if.end62_crit_edge:                  ; preds = %for.inc136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end62:                                         ; preds = %for.inc136.i.if.end62_crit_edge, %if.end88.i.if.end62_crit_edge
  %157 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %card, align 4
  %call63 = call i32 @snd_card_register(ptr noundef %158) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %urb_free, label %do.end69

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %intf, align 4
  %dev71 = getelementptr inbounds %struct.usb_interface, ptr %160, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.35) #13
  br label %cleanup

urb_free:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @em28xx_audio_free_urb(ptr noundef %dev)
  br label %card_free

card_free:                                        ; preds = %urb_free, %do.end109.i, %em28xx_audio_free_urb.exit.i, %if.then85.i, %kcalloc.exit.thread304.i.card_free_crit_edge, %kcalloc.exit.thread.i, %do.end34.i, %do.end.i, %do.body20.card_free_crit_edge
  %err.0 = phi i32 [ %call25, %do.body20.card_free_crit_edge ], [ %call63, %urb_free ], [ -12, %kcalloc.exit.thread304.i.card_free_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -12, %em28xx_audio_free_urb.exit.i ], [ -12, %do.end109.i ], [ -19, %do.end34.i ], [ -12, %if.then85.i ], [ -19, %do.end.i ]
  %161 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %card, align 4
  %call72 = call i32 @snd_card_free(ptr noundef %162) #10
  %163 = ptrtoint ptr %sndcard to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %sndcard, align 4
  br label %cleanup

cleanup:                                          ; preds = %card_free, %do.end69, %kref_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %card_free ], [ 0, %do.end69 ], [ 0, %entry.cleanup_crit_edge ], [ %call16, %kref_get.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_audio_fini(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %usb_audio_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_audio_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_audio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %do.end, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %if.end
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.100) #13
  %sndcard = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %sndcard to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sndcard, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end15_crit_edge, label %if.then5

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then5:                                         ; preds = %do.end
  %call = tail call i32 @snd_card_disconnect(ptr noundef nonnull %5) #10
  %wq_trigger = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 12
  %call9 = tail call zeroext i1 @flush_work(ptr noundef %wq_trigger) #10
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -128
  %num_urb.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_urb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp23.not.i = icmp eq i32 %11, 0
  br i1 %cmp23.not.i, label %if.then5.em28xx_audio_free_urb.exit_crit_edge, label %for.body.lr.ph.i

if.then5.em28xx_audio_free_urb.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_audio_free_urb.exit

for.body.lr.ph.i:                                 ; preds = %if.then5
  %urb2.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 3
  %transfer_buffer.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %urb2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb2.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %i.024.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_buffer_length.i, align 4
  %18 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %19, i32 %i.024.i
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 15
  %22 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transfer_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i.i, i32 noundef %17, ptr noundef %21, i32 noundef %23) #10
  tail call void @usb_free_urb(ptr noundef nonnull %15) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %24 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_urb.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %25
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.em28xx_audio_free_urb.exit_crit_edge

cleanup.i.em28xx_audio_free_urb.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_audio_free_urb.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

em28xx_audio_free_urb.exit:                       ; preds = %cleanup.i.em28xx_audio_free_urb.exit_crit_edge, %if.then5.em28xx_audio_free_urb.exit_crit_edge
  %urb6.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %urb6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb6.i, align 4
  tail call void @kfree(ptr noundef %27) #10
  %transfer_buffer8.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %transfer_buffer8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transfer_buffer8.i, align 4
  tail call void @kfree(ptr noundef %29) #10
  %30 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_urb.i, align 4
  %31 = ptrtoint ptr %sndcard to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sndcard, align 4
  %call12 = tail call i32 @snd_card_free(ptr noundef %32) #10
  %33 = ptrtoint ptr %sndcard to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sndcard, align 4
  br label %if.end15

if.end15:                                         ; preds = %em28xx_audio_free_urb.exit, %do.end.if.end15_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dev, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @llvm.prefetch.p0(ptr nonnull %dev, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %dev, ptr nonnull %dev, i32 1, ptr nonnull elementtype(i32) %dev) #10, !srcloc !241
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !239

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %dev, i32 noundef 3) #10
  br label %return

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @em28xx_free_device(ptr noundef nonnull %dev) #10
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_audio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %usb_audio_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_audio_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_audio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %do.end, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %if.end
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.102) #13
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.end.do.end4.i_crit_edge, label %do.end.i

do.end.do.end4.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev2.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end.do.end4.i_crit_edge
  %num_urb.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_urb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.not.i = icmp eq i32 %8, 0
  br i1 %cmp1.not.i, label %do.end4.i.em28xx_deinit_isoc_audio.exit_crit_edge, label %for.body.lr.ph.i

do.end4.i.em28xx_deinit_isoc_audio.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_deinit_isoc_audio.exit

for.body.lr.ph.i:                                 ; preds = %do.end4.i
  %urb6.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end22.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %urb6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urb6.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %i.02.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !243
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool19.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef %12) #10
  br label %if.end22.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @usb_unlink_urb(ptr noundef %12) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then20.i
  %inc.i = add nuw i32 %i.02.i, 1
  %14 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_urb.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %if.end22.i.for.body.i_crit_edge, label %if.end22.i.em28xx_deinit_isoc_audio.exit_crit_edge

if.end22.i.em28xx_deinit_isoc_audio.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_deinit_isoc_audio.exit

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

em28xx_deinit_isoc_audio.exit:                    ; preds = %if.end22.i.em28xx_deinit_isoc_audio.exit_crit_edge, %do.end4.i.em28xx_deinit_isoc_audio.exit_crit_edge
  %stream_started = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #10
  %16 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %stream_started, align 4
  br label %return

return:                                           ; preds = %em28xx_deinit_isoc_audio.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_audio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %usb_audio_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_audio_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_audio_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %do.end, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 4
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3, ptr noundef nonnull @.str.104) #13
  %wq_trigger = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wq_trigger) #10
  br label %return

return:                                           ; preds = %do.end, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_started = getelementptr i8, ptr %work, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #10
  %0 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool12.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body11, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool12.not, label %do.body.do.end4.i_crit_edge, label %do.end9

do.body.do.end4.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end9:                                          ; preds = %do.body
  %intf = getelementptr i8, ptr %work, i32 5616
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev7, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #13
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.end9.do.end4.i_crit_edge, label %do.end.i

do.end9.do.end4.i_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev2.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end9.do.end4.i_crit_edge, %do.body.do.end4.i_crit_edge
  %num_urb.i = getelementptr i8, ptr %work, i32 -84
  %7 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_urb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.not.i = icmp eq i32 %8, 0
  br i1 %cmp2.not.i, label %do.end4.i.if.end23_crit_edge, label %for.body.lr.ph.i

do.end4.i.if.end23_crit_edge:                     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %do.end4.i
  %transfer_buffer.i = getelementptr i8, ptr %work, i32 -80
  %urb.i = getelementptr i8, ptr %work, i32 -76
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.03.i, 1
  %9 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_urb.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end23_crit_edge

for.cond.i.if.end23_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %i.03.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %16, i32 %i.03.i
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transfer_buffer_length.i, align 4
  %21 = call ptr @memset(ptr %14, i32 128, i32 %20)
  %22 = load ptr, ptr %urb.i, align 4
  %arrayidx10.i = getelementptr ptr, ptr %22, i32 %i.03.i
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx10.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %24, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %for.cond.i, label %do.end15.i

do.end15.i:                                       ; preds = %for.body.i
  %intf16.i = getelementptr i8, ptr %work, i32 5616
  %25 = ptrtoint ptr %intf16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf16.i, align 4
  %dev17.i = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.60, i32 noundef %call.i) #13
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %do.end15.i.do.end4.i.i_crit_edge, label %do.end.i.i

do.end15.i.do.end4.i.i_crit_edge:                 ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %intf16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf16.i, align 4
  %dev2.i.i = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev2.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #13
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %do.end15.i.do.end4.i.i_crit_edge
  %30 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_urb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp1.not.i.i, label %do.end4.i.i.em28xx_deinit_isoc_audio.exit.i_crit_edge, label %do.end4.i.i.for.body.i.i_crit_edge

do.end4.i.i.for.body.i.i_crit_edge:               ; preds = %do.end4.i.i
  br label %for.body.i.i

do.end4.i.i.em28xx_deinit_isoc_audio.exit.i_crit_edge: ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_deinit_isoc_audio.exit.i

for.body.i.i:                                     ; preds = %if.end22.i.i.for.body.i.i_crit_edge, %do.end4.i.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %if.end22.i.i.for.body.i.i_crit_edge ], [ 0, %do.end4.i.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %urb.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %33, i32 %i.02.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !243
  %and.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool19.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool19.not.i.i, label %if.then20.i.i, label %if.else.i.i

if.then20.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef %35) #10
  br label %if.end22.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i.i = tail call i32 @usb_unlink_urb(ptr noundef %35) #10
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else.i.i, %if.then20.i.i
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %37 = ptrtoint ptr %num_urb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_urb.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %38
  br i1 %cmp.i.i, label %if.end22.i.i.for.body.i.i_crit_edge, label %if.end22.i.i.em28xx_deinit_isoc_audio.exit.i_crit_edge

if.end22.i.i.em28xx_deinit_isoc_audio.exit.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %em28xx_deinit_isoc_audio.exit.i

if.end22.i.i.for.body.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

em28xx_deinit_isoc_audio.exit.i:                  ; preds = %if.end22.i.i.em28xx_deinit_isoc_audio.exit.i_crit_edge, %do.end4.i.i.em28xx_deinit_isoc_audio.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #10
  %39 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %stream_started, align 4
  br label %if.end23

do.body11:                                        ; preds = %entry
  br i1 %tobool12.not, label %do.body11.do.end4.i33_crit_edge, label %do.end21

do.body11.do.end4.i33_crit_edge:                  ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i33

do.end21:                                         ; preds = %do.body11
  %intf17 = getelementptr i8, ptr %work, i32 5616
  %40 = ptrtoint ptr %intf17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intf17, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %41, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev18, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53) #13
  %.pr40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr40)
  %tobool.not.i28 = icmp eq i32 %.pr40, 0
  br i1 %tobool.not.i28, label %do.end21.do.end4.i33_crit_edge, label %do.end.i31

do.end21.do.end4.i33_crit_edge:                   ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i33

do.end.i31:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %intf17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intf17, align 4
  %dev2.i30 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev2.i30, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63) #13
  br label %do.end4.i33

do.end4.i33:                                      ; preds = %do.end.i31, %do.end21.do.end4.i33_crit_edge, %do.body11.do.end4.i33_crit_edge
  %num_urb.i32 = getelementptr i8, ptr %work, i32 -84
  %44 = ptrtoint ptr %num_urb.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_urb.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp1.not.i = icmp eq i32 %45, 0
  br i1 %cmp1.not.i, label %do.end4.i33.if.end23_crit_edge, label %for.body.lr.ph.i34

do.end4.i33.if.end23_crit_edge:                   ; preds = %do.end4.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.body.lr.ph.i34:                               ; preds = %do.end4.i33
  %urb6.i = getelementptr i8, ptr %work, i32 -76
  br label %for.body.i36

for.body.i36:                                     ; preds = %if.end22.i.for.body.i36_crit_edge, %for.body.lr.ph.i34
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i34 ], [ %inc.i37, %if.end22.i.for.body.i36_crit_edge ]
  %46 = ptrtoint ptr %urb6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %urb6.i, align 4
  %arrayidx.i35 = getelementptr ptr, ptr %47, i32 %i.02.i
  %48 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i35, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !243
  %and.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool19.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef %49) #10
  br label %if.end22.i

if.else.i:                                        ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @usb_unlink_urb(ptr noundef %49) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then20.i
  %inc.i37 = add nuw i32 %i.02.i, 1
  %51 = ptrtoint ptr %num_urb.i32 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_urb.i32, align 4
  %cmp.i38 = icmp ult i32 %inc.i37, %52
  br i1 %cmp.i38, label %if.end22.i.for.body.i36_crit_edge, label %if.end22.i.if.end23_crit_edge

if.end22.i.if.end23_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end22.i.for.body.i36_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i36

if.end23:                                         ; preds = %if.end22.i.if.end23_crit_edge, %do.end4.i33.if.end23_crit_edge, %em28xx_deinit_isoc_audio.exit.i, %for.cond.i.if.end23_crit_edge, %do.end4.i.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_cvol_new(ptr noundef %card, ptr noundef %dev, ptr noundef %name, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %ctl_name = alloca [44 x i8], align 1
  %tmp = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ctl_name) #10
  %0 = call ptr @memset(ptr %ctl_name, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tmp) #10
  %1 = getelementptr inbounds i8, ptr %tmp, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %tmp, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp, i32 0, i32 11
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %id, ptr %private_value, align 4
  %name1 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp, i32 0, i32 3
  %5 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctl_name, ptr %name1, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ctl_name, ptr noundef nonnull @.str.64, ptr noundef %name)
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp, i32 0, i32 8
  %6 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @em28xx_vol_get_mute, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp, i32 0, i32 9
  %7 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @em28xx_vol_put_mute, ptr %put, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp, i32 0, i32 7
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_ctl_boolean_mono_info, ptr %info, align 4
  %call3 = call ptr @snd_ctl_new1(ptr noundef nonnull %tmp, ptr noundef %dev) #10
  %call4 = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf, align 4
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev7, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull %ctl_name, i32 noundef %id) #13
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %12 = getelementptr inbounds i8, ptr %tmp, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %tmp, align 4
  %15 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %id, ptr %private_value, align 4
  %16 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ctl_name, ptr %name1, align 4
  %call17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ctl_name, ptr noundef nonnull @.str.67, ptr noundef %name)
  %17 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @em28xx_vol_get, ptr %get, align 4
  %18 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @em28xx_vol_put, ptr %put, align 4
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @em28xx_vol_info, ptr %info, align 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %tmp, i32 0, i32 10
  %20 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @em28xx_db_scale, ptr %tlv, align 4
  %call21 = call ptr @snd_ctl_new1(ptr noundef nonnull %tmp, ptr noundef %dev) #10
  %call22 = call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end11.cleanup_crit_edge, label %do.body26

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body26:                                        ; preds = %do.end11
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %do.body26.cleanup_crit_edge, label %do.end31

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %intf32 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %22 = ptrtoint ptr %intf32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf32, align 4
  %dev33 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev33, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull %ctl_name, i32 noundef %id) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.body26.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tmp) #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ctl_name) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_audio_free_urb(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %num_urb = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %num_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_urb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not = icmp eq i32 %5, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %urb2 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 3
  %transfer_buffer = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %6 = ptrtoint ptr %urb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb2, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.024
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_buffer_length, align 4
  %12 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx4 = getelementptr ptr, ptr %13, i32 %i.024
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %9, i32 0, i32 15
  %16 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %add.ptr.i, i32 noundef %11, ptr noundef %15, i32 noundef %17) #10
  tail call void @usb_free_urb(ptr noundef nonnull %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.024, 1
  %18 = ptrtoint ptr %num_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_urb, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %urb6 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %urb6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %urb6, align 4
  tail call void @kfree(ptr noundef %21) #10
  %transfer_buffer8 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %transfer_buffer8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer8, align 4
  tail call void @kfree(ptr noundef %23) #10
  %24 = ptrtoint ptr %num_urb to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %num_urb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_em28xx_capture_open(ptr noundef %substream) #2 align 64 {
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
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %do.body5.do.end14_crit_edge, label %do.end10

do.body5.do.end14_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %intf, align 4
  %dev11 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev11, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end10, %do.body5.do.end14_crit_edge
  %f_flags = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 21
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %lock23 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  br i1 %tobool15.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %do.end14
  %call19 = tail call i32 @mutex_trylock(ptr noundef %lock23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %lock23, i32 noundef 0) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18.if.end24_crit_edge
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %11 = call ptr @memcpy(ptr %hw, ptr @snd_em28xx_hw_capture, i32 64)
  %users = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 10
  %12 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then25, label %if.end24.if.end68_crit_edge

if.end24.if.end68_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then25:                                        ; preds = %if.end24
  %alt = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 52
  %14 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool26.not = icmp eq i32 %15, 0
  br i1 %tobool26.not, label %if.then25.if.then32_crit_edge, label %lor.lhs.false

if.then25.if.then32_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.then25
  %16 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load27 = load i8, ptr %disconnected, align 4
  %17 = and i8 %bf.load27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool31.not = icmp eq i8 %17, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.end62_crit_edge, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.then25.if.then32_crit_edge
  %intf33 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %18 = ptrtoint ptr %intf33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf33, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 -128
  %22 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load36 = load i8, ptr %disconnected, align 4
  %23 = and i8 %bf.load36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool40.not = icmp eq i8 %23, 0
  %. = select i1 %tobool40.not, i32 7, i32 1
  %24 = ptrtoint ptr %alt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %., ptr %alt, align 8
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool47.not = icmp eq i32 %25, 0
  br i1 %tobool47.not, label %if.then32.do.end57_crit_edge, label %do.end51

if.then32.do.end57_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end57

do.end51:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %dev53 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %ifnum = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 45
  %26 = ptrtoint ptr %ifnum to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ifnum, align 8
  %conv = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev53, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %.) #13
  br label %do.end57

do.end57:                                         ; preds = %do.end51, %if.then32.do.end57_crit_edge
  %ifnum58 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 45
  %28 = ptrtoint ptr %ifnum58 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ifnum58, align 8
  %conv59 = zext i8 %29 to i32
  %30 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %alt, align 8
  %call61 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv59, i32 noundef %31) #10
  br label %if.end62

if.end62:                                         ; preds = %do.end57, %lor.lhs.false.if.end62_crit_edge
  %mute = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 30
  %32 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %mute, align 4
  %call63 = tail call i32 @em28xx_audio_analog_set(ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %err, label %if.end62.if.end68_crit_edge

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %if.end62.if.end68_crit_edge, %if.end24.if.end68_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !237
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end68.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !238

if.end68.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end68
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !239

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end68.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end68.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %35 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %users, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %users, align 4
  %lock71 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_unlock(ptr noundef %lock71) #10
  %call72 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  %period = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 9
  %37 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %period, align 4
  %mul = mul i32 %38, 95
  %div = udiv i32 %mul, 100
  %mul76 = mul i32 %38, 105
  %div77 = udiv i32 %mul76, 100
  %call78 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 14, i32 noundef %div, i32 noundef %div77) #10
  %capture_pcm_substream = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 6
  %39 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %substream, ptr %capture_pcm_substream, align 4
  br label %cleanup

err:                                              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %lock80 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_unlock(ptr noundef %lock80) #10
  %intf84 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %40 = ptrtoint ptr %intf84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intf84, align 4
  %dev85 = getelementptr inbounds %struct.usb_interface, ptr %41, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.47) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %kref_get.exit, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call63, %err ], [ 0, %kref_get.exit ], [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ -11, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_em28xx_pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev2, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mute = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 30
  %5 = ptrtoint ptr %mute to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %mute, align 4
  %lock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %users = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %users, align 4
  %stream_started = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started, i32 noundef 4) #10
  %8 = ptrtoint ptr %stream_started to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %stream_started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then6, label %do.end4.if.end11_crit_edge

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #10
  %10 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %stream_started, align 4
  %wq_trigger = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i25 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %wq_trigger) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end4.if.end11_crit_edge
  %call12 = tail call i32 @em28xx_audio_analog_set(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !241
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !239

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @em28xx_free_device(ptr noundef %1) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_em28xx_prepare(ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hwptr_done_capture = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hwptr_done_capture, align 4
  %capture_transfer_done = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %capture_transfer_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_em28xx_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 4, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge12
    i32 1, label %if.end.sw.bb_crit_edge13
    i32 3, label %if.end.sw.bb2_crit_edge
    i32 5, label %if.end.sw.bb2_crit_edge14
    i32 0, label %if.end.sw.bb2_crit_edge15
  ]

if.end.sw.bb2_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.sw.bb2_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge12, %if.end.sw.bb_crit_edge13
  %stream_started = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #10
  %5 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %stream_started, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge14, %if.end.sw.bb2_crit_edge15
  %stream_started4 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 13
  %call.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started4, i32 noundef 4) #10
  %6 = ptrtoint ptr %stream_started4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %stream_started4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -22, %if.end.sw.epilog_crit_edge ]
  %wq_trigger = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i11 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %wq_trigger) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_em28xx_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %slock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #10
  %hwptr_done_capture = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwptr_done_capture, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.body1 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_audio_analog_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_vol_get_mute(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_pcm_substream = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %capture_pcm_substream, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %if.then2

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then2:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.then2.if.else_crit_edge, label %if.then7

if.then2.if.else_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then7:                                         ; preds = %if.then2
  %lock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then2.if.else_crit_edge, %if.end.if.else_crit_edge
  %lock11 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock11, i32 noundef 0) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7.if.end12_crit_edge
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %9 to i8
  %call13 = tail call i32 @em28xx_read_ac97(ptr noundef %1, i8 noundef zeroext %conv) #10
  %lock14 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_unlock(ptr noundef %lock14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %and18 = and i32 %call13, 32768
  %and18.lobit = lshr exact i32 %and18, 15
  %10 = xor i32 %and18.lobit, 1
  %11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %11, align 8
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool26.not = icmp eq i32 %13, 0
  br i1 %tobool26.not, label %if.end17.cleanup_crit_edge, label %do.end

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %14 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf, align 4
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %cond = select i1 %tobool19.not, ptr @.str.73, ptr @.str.72
  %16 = lshr i32 %call13, 8
  %and32 = and i32 %16, 31
  %sub = xor i32 %and32, 31
  %and33 = and i32 %call13, 31
  %sub34 = xor i32 %and33, 31
  %17 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private_value, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev29, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond, i32 noundef %sub, i32 noundef %sub34, i32 noundef %call13, i32 noundef %18) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -11, %if.then7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_vol_put_mute(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %conv = trunc i32 %3 to i16
  %capture_pcm_substream = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %capture_pcm_substream, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %disconnected, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %if.then3

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then3:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %if.then3.if.else_crit_edge, label %if.then8

if.then3.if.else_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then8:                                         ; preds = %if.then3
  %lock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then3.if.else_crit_edge, %if.end.if.else_crit_edge
  %lock12 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock12, i32 noundef 0) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8.if.end13_crit_edge
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %10 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private_value, align 4
  %conv14 = trunc i32 %11 to i8
  %call15 = tail call i32 @em28xx_read_ac97(ptr noundef %1, i8 noundef zeroext %conv14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end13.err_crit_edge, label %if.end18

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool19.not = icmp eq i16 %conv, 0
  %and21 = and i32 %call15, 7967
  %or = or i32 %call15, 32768
  %rc.0 = select i1 %tobool19.not, i32 %or, i32 %and21
  %12 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private_value, align 4
  %conv25 = trunc i32 %13 to i8
  %conv26 = trunc i32 %rc.0 to i16
  %call27 = tail call i32 @em28xx_write_ac97(ptr noundef %1, i8 noundef zeroext %conv25, i16 noundef zeroext %conv26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end18.err_crit_edge, label %do.body

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body:                                          ; preds = %if.end18
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool32.not = icmp eq i32 %14, 0
  br i1 %tobool32.not, label %do.body.err_crit_edge, label %do.end

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %15 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf, align 4
  %dev35 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  %conv36 = and i32 %3, 65535
  %and37 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond = select i1 %tobool38.not, ptr @.str.73, ptr @.str.72
  %17 = lshr i32 %3, 8
  %and40 = and i32 %17, 31
  %sub = xor i32 %and40, 31
  %and42 = and i32 %3, 31
  %sub43 = xor i32 %and42, 31
  %18 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private_value, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev35, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef nonnull %cond, i32 noundef %sub, i32 noundef %sub43, i32 noundef %conv36, i32 noundef %19) #13
  br label %err

err:                                              ; preds = %do.end, %do.body.err_crit_edge, %if.end18.err_crit_edge, %if.end13.err_crit_edge
  %rc.1 = phi i32 [ %call15, %if.end13.err_crit_edge ], [ %call27, %if.end18.err_crit_edge ], [ %call27, %do.end ], [ %call27, %do.body.err_crit_edge ]
  %lock49 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_unlock(ptr noundef %lock49) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %err ], [ -19, %entry.cleanup_crit_edge ], [ -11, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_pcm_substream = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %capture_pcm_substream, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %if.then2

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then2:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.then2.if.else_crit_edge, label %if.then7

if.then2.if.else_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then7:                                         ; preds = %if.then2
  %lock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then2.if.else_crit_edge, %if.end.if.else_crit_edge
  %lock11 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock11, i32 noundef 0) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7.if.end12_crit_edge
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %9 to i8
  %call13 = tail call i32 @em28xx_read_ac97(ptr noundef %1, i8 noundef zeroext %conv) #10
  %lock14 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_unlock(ptr noundef %lock14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %do.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end12
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not = icmp eq i32 %10, 0
  br i1 %tobool18.not, label %do.body.do.end30_crit_edge, label %do.end

do.body.do.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = and i32 %call13, 31
  %.pre59 = xor i32 %.pre, 31
  %.pre60 = lshr i32 %call13, 8
  %.pre61 = and i32 %.pre60, 31
  %.pre62 = xor i32 %.pre61, 31
  br label %do.end30

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %11 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %and22 = and i32 %call13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond = select i1 %tobool23.not, ptr @.str.73, ptr @.str.72
  %13 = lshr i32 %call13, 8
  %and24 = and i32 %13, 31
  %sub = xor i32 %and24, 31
  %and25 = and i32 %call13, 31
  %sub26 = xor i32 %and25, 31
  %14 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private_value, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev21, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond, i32 noundef %sub, i32 noundef %sub26, i32 noundef %call13, i32 noundef %15) #13
  br label %do.end30

do.end30:                                         ; preds = %do.end, %do.body.do.end30_crit_edge
  %sub36.pre-phi = phi i32 [ %.pre62, %do.body.do.end30_crit_edge ], [ %sub, %do.end ]
  %sub32.pre-phi = phi i32 [ %.pre59, %do.body.do.end30_crit_edge ], [ %sub26, %do.end ]
  %value33 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %16 = ptrtoint ptr %value33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub32.pre-phi, ptr %value33, align 8
  %arrayidx38 = getelementptr [128 x i32], ptr %value33, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub36.pre-phi, ptr %arrayidx38, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end12.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end30 ], [ -19, %entry.cleanup_crit_edge ], [ -11, %if.then7.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_pcm_substream = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %capture_pcm_substream, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value1, align 8
  %and = and i32 %5, 31
  %arrayidx3 = getelementptr [128 x i32], ptr %value1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %and4 = shl i32 %7, 8
  %sub5 = and i32 %and4, 7936
  %8 = or i32 %sub5, %and
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %disconnected, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.if.else_crit_edge, label %if.then7

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then7:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 21
  %11 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags, align 4
  %and8 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9 = icmp eq i32 %and8, 0
  br i1 %tobool9, label %if.then7.if.else_crit_edge, label %if.then13

if.then7.if.else_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then13:                                        ; preds = %if.then7
  %lock = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.then13.cleanup_crit_edge, label %if.then13.if.end18_crit_edge

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.then7.if.else_crit_edge, %if.end.if.else_crit_edge
  %lock17 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock17, i32 noundef 0) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13.if.end18_crit_edge
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %13 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private_value, align 4
  %conv19 = trunc i32 %14 to i8
  %call20 = tail call i32 @em28xx_read_ac97(ptr noundef %1, i8 noundef zeroext %conv19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end18.err_crit_edge, label %if.end23

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end23:                                         ; preds = %if.end18
  %and24 = and i32 %call20, 32768
  %15 = or i32 %8, %and24
  %16 = trunc i32 %15 to i16
  %conv27 = xor i16 %16, 7967
  %17 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private_value, align 4
  %conv29 = trunc i32 %18 to i8
  %call30 = tail call i32 @em28xx_write_ac97(ptr noundef %1, i8 noundef zeroext %conv29, i16 noundef zeroext %conv27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end23.err_crit_edge, label %do.body

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body:                                          ; preds = %if.end23
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool35.not = icmp eq i32 %19, 0
  br i1 %tobool35.not, label %do.body.err_crit_edge, label %do.end

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %20 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf, align 4
  %dev38 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  %conv39 = zext i16 %conv27 to i32
  %and40 = and i32 %conv39, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %cond = select i1 %tobool41.not, ptr @.str.73, ptr @.str.72
  %22 = lshr i32 %conv39, 8
  %and43 = and i32 %22, 31
  %sub44 = xor i32 %and43, 31
  %and46 = and i32 %conv39, 31
  %sub47 = xor i32 %and46, 31
  %23 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private_value, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev38, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.77, ptr noundef nonnull %cond, i32 noundef %sub44, i32 noundef %sub47, i32 noundef %conv39, i32 noundef %24) #13
  br label %err

err:                                              ; preds = %do.end, %do.body.err_crit_edge, %if.end23.err_crit_edge, %if.end18.err_crit_edge
  %rc.0 = phi i32 [ %call20, %if.end18.err_crit_edge ], [ %call30, %if.end23.err_crit_edge ], [ %call30, %do.end ], [ %call30, %do.body.err_crit_edge ]
  %lock53 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 35
  tail call void @mutex_unlock(ptr noundef %lock53) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ -19, %entry.cleanup_crit_edge ], [ -11, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @em28xx_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 31, ptr %max, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_ac97(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_ac97(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_audio_isocirq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %intf = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  %status5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status5, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev4, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef %8) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %stream_started = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stream_started, i32 noundef 4) #10
  %9 = ptrtoint ptr %stream_started to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %stream_started, align 4
  br label %cleanup103

if.end8:                                          ; preds = %entry
  %status9 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status9, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %11, label %do.body11 [
    i32 0, label %if.end8.sw.epilog_crit_edge
    i32 -110, label %if.end8.sw.epilog_crit_edge181
    i32 -104, label %if.end8.cleanup103_crit_edge
    i32 -2, label %if.end8.cleanup103_crit_edge182
    i32 -108, label %if.end8.cleanup103_crit_edge183
  ]

if.end8.cleanup103_crit_edge183:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.end8.cleanup103_crit_edge182:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.end8.cleanup103_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.end8.sw.epilog_crit_edge181:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body11:                                        ; preds = %if.end8
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %do.body11.sw.epilog_crit_edge, label %do.end16

do.body11.sw.epilog_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %intf17 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %14 = ptrtoint ptr %intf17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf17, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.41, ptr noundef %dev18, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef %11) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end16, %do.body11.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge181
  %stream_started24 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 13
  %call.i.i175 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_started24, i32 noundef 4) #10
  %16 = ptrtoint ptr %stream_started24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %stream_started24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %sw.epilog.cleanup103_crit_edge, label %if.end26

sw.epilog.cleanup103_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.end26:                                         ; preds = %sw.epilog
  %capture_pcm_substream = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %capture_pcm_substream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %capture_pcm_substream, align 4
  %tobool28.not = icmp eq ptr %19, null
  br i1 %tobool28.not, label %if.end26.if.end91_crit_edge, label %if.then29

if.end26.if.end91_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then29:                                        ; preds = %if.end26
  %runtime32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %runtime32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime32, align 4
  %frame_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %frame_bits to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_bits, align 8
  %shr = lshr i32 %23, 3
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %24 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp33176 = icmp sgt i32 %25, 0
  br i1 %cmp33176, label %for.body.lr.ph, label %if.then29.if.end91_crit_edge

if.then29.if.end91_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

for.body.lr.ph:                                   ; preds = %if.then29
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %hwptr_done_capture = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 7
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 18
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 50
  %capture_transfer_done = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 3, i32 5
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %period_elapsed.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %period_elapsed.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0178
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0178, i32 2
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_length, align 4
  %div = udiv i32 %27, %shr
  %28 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transfer_buffer, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 %31
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %27)
  %tobool36.not = icmp ugt i32 %shr, %27
  br i1 %tobool36.not, label %for.body.cleanup_crit_edge, label %if.end38

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %for.body
  %32 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hwptr_done_capture, align 4
  %add = add i32 %33, %div
  %34 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %35)
  %cmp40.not = icmp ult i32 %add, %35
  br i1 %cmp40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %35, %33
  %36 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_area, align 4
  %mul = mul i32 %33, %shr
  %add.ptr43 = getelementptr i8, ptr %37, i32 %mul
  %mul44 = mul i32 %sub, %shr
  %38 = call ptr @memcpy(ptr %add.ptr43, ptr %add.ptr, i32 %mul44)
  %39 = load ptr, ptr %dma_area, align 4
  %add.ptr47 = getelementptr i8, ptr %add.ptr, i32 %mul44
  %mul48 = mul i32 %div, %shr
  %sub50 = sub i32 %mul48, %mul44
  %40 = call ptr @memcpy(ptr %39, ptr %add.ptr47, i32 %sub50)
  br label %do.body56

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_area, align 4
  %mul52 = mul i32 %33, %shr
  %add.ptr53 = getelementptr i8, ptr %42, i32 %mul52
  %mul54 = mul i32 %div, %shr
  %43 = call ptr @memcpy(ptr %add.ptr53, ptr %add.ptr, i32 %mul54)
  br label %do.body56

do.body56:                                        ; preds = %if.else, %if.then41
  %call58 = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef nonnull %19) #10
  %44 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwptr_done_capture, align 4
  %add63 = add i32 %45, %div
  store i32 %add63, ptr %hwptr_done_capture, align 4
  %46 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %47)
  %cmp67.not = icmp ult i32 %add63, %47
  br i1 %cmp67.not, label %do.body56.if.end74_crit_edge, label %if.then69

do.body56.if.end74_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then69:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %sub73 = sub i32 %add63, %47
  %48 = ptrtoint ptr %hwptr_done_capture to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub73, ptr %hwptr_done_capture, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %do.body56.if.end74_crit_edge
  %49 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %capture_transfer_done, align 4
  %add76 = add i32 %50, %div
  store i32 %add76, ptr %capture_transfer_done, align 4
  %51 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add76, i32 %52)
  %cmp79.not = icmp ult i32 %add76, %52
  br i1 %cmp79.not, label %if.end74.if.end86_crit_edge, label %if.then81

if.end74.if.end86_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %sub85 = sub i32 %add76, %52
  %53 = ptrtoint ptr %capture_transfer_done to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub85, ptr %capture_transfer_done, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %if.end74.if.end86_crit_edge
  %period_elapsed.1 = phi i32 [ 1, %if.then81 ], [ %period_elapsed.0177, %if.end74.if.end86_crit_edge ]
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef nonnull %19, i32 noundef %call58) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %for.body.cleanup_crit_edge
  %period_elapsed.2 = phi i32 [ %period_elapsed.1, %if.end86 ], [ %period_elapsed.0177, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0178, 1
  %54 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %number_of_packets, align 4
  %cmp33 = icmp slt i32 %inc, %55
  br i1 %cmp33, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_elapsed.2)
  %tobool88.not = icmp eq i32 %period_elapsed.2, 0
  br i1 %tobool88.not, label %for.end.if.end91_crit_edge, label %if.then89

for.end.if.end91_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then89:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %19) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %for.end.if.end91_crit_edge, %if.then29.if.end91_crit_edge, %if.end26.if.end91_crit_edge
  %56 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %status9, align 4
  %call93 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end99, label %if.end91.cleanup103_crit_edge

if.end91.cleanup103_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

do.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %intf100 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %57 = ptrtoint ptr %intf100 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %intf100, align 4
  %dev101 = getelementptr inbounds %struct.usb_interface, ptr %58, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101, ptr noundef nonnull @.str.98, i32 noundef %call93) #13
  br label %cleanup103

cleanup103:                                       ; preds = %do.end99, %if.end91.cleanup103_crit_edge, %sw.epilog.cleanup103_crit_edge, %if.end8.cleanup103_crit_edge, %if.end8.cleanup103_crit_edge182, %if.end8.cleanup103_crit_edge183, %do.end7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_pcm_stream_lock_irqsave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_register_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !148, !149, !150, !151, !153, !155, !156, !158, !159, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype309, !1, !"__UNIQUE_ID_debugtype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug310, !4, !"__UNIQUE_ID_debug310", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 46, i32 1}
!5 = !{ptr @__UNIQUE_ID_file311, !6, !"__UNIQUE_ID_file311", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 978, i32 1}
!7 = !{ptr @__UNIQUE_ID_license312, !6, !"__UNIQUE_ID_license312", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author313, !9, !"__UNIQUE_ID_author313", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 979, i32 1}
!10 = !{ptr @__UNIQUE_ID_author314, !11, !"__UNIQUE_ID_author314", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 980, i32 1}
!12 = !{ptr @__UNIQUE_ID_description315, !13, !"__UNIQUE_ID_description315", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 981, i32 1}
!14 = !{ptr @__UNIQUE_ID_version316, !15, !"__UNIQUE_ID_version316", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 982, i32 1}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_em28xx_alsa__317_984_em28xx_alsa_register6, !21, !"__initcall__kmod_em28xx_alsa__317_984_em28xx_alsa_register6", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 984, i32 1}
!22 = !{ptr @__exitcall_em28xx_alsa_unregister, !23, !"__exitcall_em28xx_alsa_unregister", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 985, i32 1}
!24 = !{ptr @debug, !25, !"debug", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 44, i32 12}
!26 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 961, i32 10}
!29 = !{ptr @audio_ops, !30, !"audio_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 959, i32 26}
!31 = distinct !{null, !32, !"devnr", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 818, i32 22}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 830, i32 2}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @em28xx_audio_init._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @em28xx_audio_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 834, i32 2}
!43 = !{ptr @em28xx_audio_init._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @em28xx_audio_init._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 836, i32 2}
!47 = !{ptr @em28xx_audio_init._entry.12, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @em28xx_audio_init._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 839, i32 52}
!51 = !{ptr @em28xx_audio_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 844, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 856, i32 21}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 858, i32 24}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 860, i32 26}
!60 = !{ptr @em28xx_audio_init.__key.20, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 862, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 865, i32 30}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 866, i32 30}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 867, i32 30}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 868, i32 30}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 869, i32 30}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 870, i32 30}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 871, i32 30}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 873, i32 30}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 874, i32 30}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 875, i32 30}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 876, i32 30}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 877, i32 30}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 888, i32 2}
!89 = !{ptr @em28xx_audio_init._entry.34, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @em28xx_audio_init._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"index", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 57, i32 12}
!93 = !{ptr @snd_em28xx_pcm_capture, !94, !"snd_em28xx_pcm_capture", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 626, i32 33}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 233, i32 3}
!97 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @snd_em28xx_capture_open._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_em28xx_capture_open._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 240, i32 2}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @snd_em28xx_capture_open._entry.39, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @snd_em28xx_capture_open._entry_ptr.42, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 273, i32 4}
!107 = !{ptr @snd_em28xx_capture_open._entry.43, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @snd_em28xx_capture_open._entry_ptr.45, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 301, i32 2}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @snd_em28xx_capture_open._entry.46, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @snd_em28xx_capture_open._entry_ptr.49, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @snd_em28xx_hw_capture, !115, !"snd_em28xx_hw_capture", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 194, i32 38}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 310, i32 2}
!118 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @snd_em28xx_pcm_close._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @snd_em28xx_pcm_close._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 347, i32 3}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @audio_trigger._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @audio_trigger._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 350, i32 3}
!128 = !{ptr @audio_trigger._entry.54, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @audio_trigger._entry_ptr.56, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 173, i32 2}
!132 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @em28xx_init_audio_isoc._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @em28xx_init_audio_isoc._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 182, i32 4}
!137 = !{ptr @em28xx_init_audio_isoc._entry.59, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @em28xx_init_audio_isoc._entry_ptr.61, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 63, i32 2}
!141 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @em28xx_deinit_isoc_audio._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @em28xx_deinit_isoc_audio._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 591, i32 20}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 599, i32 2}
!148 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @em28xx_cvol_new._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @em28xx_cvol_new._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 608, i32 20}
!153 = !{ptr @em28xx_cvol_new._entry.68, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 617, i32 2}
!155 = !{ptr @em28xx_cvol_new._entry_ptr.69, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 567, i32 2}
!158 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @em28xx_vol_get_mute._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @em28xx_vol_get_mute._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 528, i32 2}
!165 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @em28xx_vol_put_mute._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @em28xx_vol_put_mute._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 484, i32 2}
!170 = !{ptr @em28xx_vol_get._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @em28xx_vol_get._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 450, i32 2}
!174 = !{ptr @em28xx_vol_put._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @em28xx_vol_put._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @em28xx_db_scale, !177, !"em28xx_db_scale", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 575, i32 14}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 685, i32 3}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @em28xx_audio_urb_init._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @em28xx_audio_urb_init._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 701, i32 3}
!185 = !{ptr @em28xx_audio_urb_init._entry.80, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @em28xx_audio_urb_init._entry_ptr.82, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 708, i32 2}
!189 = !{ptr @em28xx_audio_urb_init._entry.83, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @em28xx_audio_urb_init._entry_ptr.85, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 748, i32 2}
!193 = !{ptr @em28xx_audio_urb_init._entry.86, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @em28xx_audio_urb_init._entry_ptr.88, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 786, i32 4}
!197 = !{ptr @em28xx_audio_urb_init._entry.89, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @em28xx_audio_urb_init._entry_ptr.91, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 89, i32 3}
!201 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @em28xx_audio_isocirq._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @em28xx_audio_isocirq._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 104, i32 3}
!206 = !{ptr @em28xx_audio_isocirq._entry.94, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @em28xx_audio_isocirq._entry_ptr.96, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 164, i32 3}
!210 = !{ptr @em28xx_audio_isocirq._entry.97, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @em28xx_audio_isocirq._entry_ptr.99, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 915, i32 2}
!214 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @em28xx_audio_fini._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @em28xx_audio_fini._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 939, i32 2}
!219 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @em28xx_audio_suspend._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @em28xx_audio_suspend._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/em28xx/em28xx-audio.c", i32 953, i32 2}
!224 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @em28xx_audio_resume._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @em28xx_audio_resume._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{!"auto-init"}
!237 = !{i64 2148449760, i64 2148449792, i64 2148449821, i64 2148449855, i64 2148449886, i64 2148449909}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{!"branch_weights", i32 2000, i32 1}
!240 = !{i64 2148541846}
!241 = !{i64 2148452225, i64 2148452257, i64 2148452286, i64 2148452320, i64 2148452351, i64 2148452374}
!242 = !{i64 2150324257}
!243 = !{i64 854662}
