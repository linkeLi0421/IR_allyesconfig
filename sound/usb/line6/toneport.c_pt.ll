; ModuleID = '/llk/IR_all_yes/sound/usb/line6/toneport.c_pt.bc'
source_filename = "../sound/usb/line6/toneport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.line6_properties = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.line6_pcm_properties = type { %struct.snd_pcm_hardware, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraint_ratdens, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratdens = type { i32, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.snd_ratden = type { i32, i32, i32, i32 }
%struct.anon.86 = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_line6_toneport = type { %struct.usb_line6, i32, i32, i8, i32, [2 x %struct.toneport_led] }
%struct.usb_line6 = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.anon.82, %struct.delayed_work, ptr, ptr, ptr }
%struct.anon.82 = type { %struct.mutex, %struct.wait_queue_head, i8, %struct.anon.83 }
%struct.anon.83 = type { %union.anon.84, [8192 x i8] }
%union.anon.84 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.toneport_led = type { %struct.led_classdev, [64 x i8], ptr, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.72, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.72 = type { %struct.anon.75, [40 x i8] }
%struct.anon.75 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_line6_pcm = type { ptr, ptr, ptr, %struct.mutex, %struct.line6_pcm_stream, %struct.line6_pcm_stream, ptr, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.line6_pcm_stream = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }

@__initcall__kmod_snd_usb_toneport__243_579_toneport_driver_init6 = internal global ptr @toneport_driver_init, section ".initcall6.init", align 4
@toneport_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @toneport_probe, ptr @line6_disconnect, ptr null, ptr @line6_suspend, ptr @line6_resume, ptr @toneport_reset_resume, ptr null, ptr null, ptr @toneport_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_toneport_driver_exit = internal global ptr @toneport_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [49 x i8] c"snd_usb_toneport.description=TonePort USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [55 x i8] c"snd_usb_toneport.file=sound/usb/line6/snd-usb-toneport\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [29 x i8] c"snd_usb_toneport.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_usb_toneport\00", [47 x i8] zeroinitializer }, align 32
@toneport_id_table = internal constant { [8 x %struct.usb_device_id], [32 x i8] } { [8 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3649, i16 18256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3649, i16 16723, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3649, i16 16720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 1027, i16 3649, i16 16721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 3649, i16 16711, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 3649, i16 16705, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 1027, i16 3649, i16 16706, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Line6-TonePort\00", [17 x i8] zeroinitializer }, align 32
@toneport_properties_table = internal constant { [7 x %struct.line6_properties], [36 x i8] } { [7 x %struct.line6_properties] [%struct.line6_properties { ptr @.str.2, ptr @.str.2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.3, ptr @.str.4, i32 2, i32 2, i32 0, i32 0, i32 0, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.5, ptr @.str.6, i32 2, i32 2, i32 0, i32 0, i32 0, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.7, ptr @.str.8, i32 2, i32 2, i32 0, i32 0, i32 0, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.9, ptr @.str.10, i32 2, i32 2, i32 0, i32 0, i32 0, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.11, ptr @.str.12, i32 2, i32 2, i32 0, i32 0, i32 0, i32 130, i32 1 }, %struct.line6_properties { ptr @.str.13, ptr @.str.14, i32 2, i32 2, i32 0, i32 0, i32 0, i32 130, i32 1 }], [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GuitarPort\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PODStudioGX\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"POD Studio GX\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PODStudioUX1\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"POD Studio UX1\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PODStudioUX2\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"POD Studio UX2\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TonePortGX\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TonePort GX\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TonePortUX1\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TonePort UX1\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TonePortUX2\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TonePort UX2\00", [19 x i8] zeroinitializer }, align 32
@toneport_pcm_properties = internal global { %struct.line6_pcm_properties, [48 x i8] } { %struct.line6_pcm_properties { %struct.snd_pcm_hardware { i32 4784387, i64 4, i32 -2147483648, i32 44100, i32 44100, i32 2, i32 2, i32 60000, i32 64, i32 8192, i32 1, i32 1024, i32 0 }, %struct.snd_pcm_hardware { i32 4260099, i64 4, i32 -2147483648, i32 44100, i32 44100, i32 2, i32 2, i32 60000, i32 64, i32 8192, i32 1, i32 1024, i32 0 }, %struct.snd_pcm_hw_constraint_ratdens { i32 1, ptr @toneport_ratden }, i32 2 }, [48 x i8] zeroinitializer }, align 32
@toneport_control_monitor = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 3, i32 0, ptr @snd_toneport_monitor_info, ptr @snd_toneport_monitor_get, ptr @snd_toneport_monitor_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@toneport_control_source = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 3, i32 0, ptr @snd_toneport_source_info, ptr @snd_toneport_source_get, ptr @snd_toneport_source_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@toneport_ratden = internal constant { %struct.snd_ratden, [16 x i8] } { %struct.snd_ratden { i32 44100, i32 44100, i32 1, i32 1 }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Monitor Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Source\00", [45 x i8] zeroinitializer }, align 32
@toneport_source_info = internal constant { [4 x %struct.anon.86], [32 x i8] } { [4 x %struct.anon.86] [%struct.anon.86 { ptr @.str.17, i32 2561 }, %struct.anon.86 { ptr @.str.18, i32 2049 }, %struct.anon.86 { ptr @.str.19, i32 2817 }, %struct.anon.86 { ptr @.str.20, i32 2305 }], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Microphone\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Instrument\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Inst & Mic\00", [21 x i8] zeroinitializer }, align 32
@toneport_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 135, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"send failed (error %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"toneport_send_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/usb/line6/toneport.c\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@toneport_send_cmd._entry_ptr = internal global ptr @toneport_send_cmd._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s::%s\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"red\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"green\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"toneport_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 567, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 579, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"toneport_id_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 477, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 562, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"toneport_properties_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 490, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 492, i32 9 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 501, i32 9 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 502, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 510, i32 9 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 511, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 519, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 520, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 528, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 529, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 537, i32 9 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 538, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 546, i32 9 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 547, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"toneport_pcm_properties\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 73, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"toneport_control_monitor\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 245, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"toneport_control_source\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 256, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"toneport_ratden\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 66, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 247, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 258, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"toneport_source_info\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 118, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 119, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 120, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 121, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 122, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 135, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 314, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 286, i32 54 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [30 x i8] c"../sound/usb/line6/toneport.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 286, i32 61 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_toneport_driver_exit, ptr @__initcall__kmod_snd_usb_toneport__243_579_toneport_driver_init6, ptr @toneport_driver_exit, ptr @toneport_send_cmd._entry, ptr @toneport_send_cmd._entry_ptr, ptr @toneport_driver, ptr @.str, ptr @toneport_id_table, ptr @.str.1, ptr @toneport_properties_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @toneport_pcm_properties, ptr @toneport_control_monitor, ptr @toneport_control_source, ptr @toneport_ratden, ptr @.str.15, ptr @.str.16, ptr @toneport_source_info, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_id_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_properties_table to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_pcm_properties to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_control_monitor to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_control_source to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_ratden to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_source_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @toneport_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @toneport_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @toneport_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @toneport_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @toneport_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toneport_probe(ptr noundef %interface, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %arrayidx = getelementptr [7 x %struct.line6_properties], ptr @toneport_properties_table, i32 0, i32 %1
  %call = tail call i32 @line6_probe(ptr noundef %interface, ptr noundef %id, ptr noundef nonnull @.str.1, ptr noundef %arrayidx, ptr noundef nonnull @toneport_init, i32 noundef 9488) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toneport_reset_resume(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @toneport_setup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @line6_resume(ptr noundef %interface) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @toneport_init(ptr noundef %line6, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %type = getelementptr inbounds %struct.usb_line6_toneport, ptr %line6, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %type, align 4
  %disconnect = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 17
  %3 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @line6_toneport_disconnect, ptr %disconnect, align 4
  %startup = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 18
  %4 = ptrtoint ptr %startup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @toneport_startup, ptr %startup, align 4
  %call = tail call i32 @line6_init_pcm(ptr noundef %line6, ptr noundef nonnull @toneport_pcm_properties) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %card = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %line6pcm = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 8
  %7 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %line6pcm, align 4
  %call1 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @toneport_control_monitor, ptr noundef %8) #10
  %call2 = tail call i32 @snd_ctl_add(ptr noundef %6, ptr noundef %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end5.if.end15_crit_edge [
    i32 5, label %if.end5.if.then7_crit_edge
    i32 6, label %if.end5.if.then7_crit_edge60
    i32 2, label %if.end5.if.then7_crit_edge61
    i32 3, label %if.end5.if.then7_crit_edge62
  ]

if.end5.if.then7_crit_edge62:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end5.if.then7_crit_edge61:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end5.if.then7_crit_edge60:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end5.if.then7_crit_edge60, %if.end5.if.then7_crit_edge61, %if.end5.if.then7_crit_edge62
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %14 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %line6pcm, align 4
  %call10 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @toneport_control_source, ptr noundef %15) #10
  %call11 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then7.cleanup_crit_edge, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %serial_number = getelementptr inbounds %struct.usb_line6_toneport, ptr %line6, i32 0, i32 2
  %call16 = tail call i32 @line6_read_serial_number(ptr noundef %line6, ptr noundef %serial_number) #10
  %firmware_version = getelementptr inbounds %struct.usb_line6_toneport, ptr %line6, i32 0, i32 3
  %call17 = tail call i32 @line6_read_data(ptr noundef %line6, i32 noundef 32962, ptr noundef %firmware_version, i32 noundef 1) #10
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  %switch.and.i = and i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.then19, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  %18 = ptrtoint ptr %line6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %line6, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %init_name.i.i = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15, i32 3
  %arrayidx.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0
  %toneport3.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0, i32 2
  %20 = ptrtoint ptr %toneport3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %line6, ptr %toneport3.i, align 4
  %name.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then19.dev_name.exit.i_crit_edge

if.then19.dev_name.exit.i_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then19.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then19.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 64, ptr noundef nonnull @.str.26, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.27) #10
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name.i, ptr %arrayidx.i, align 4
  %brightness.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %brightness.i, align 4
  %max_brightness.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 38, ptr %max_brightness.i, align 4
  %brightness_set.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0, i32 0, i32 5
  %28 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @toneport_led_brightness_set, ptr %brightness_set.i, align 4
  %call.i.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev1.i, ptr noundef %arrayidx.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %dev_name.exit.i.toneport_init_leds.exit_crit_edge

dev_name.exit.i.toneport_init_leds.exit_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toneport_init_leds.exit

for.inc.i:                                        ; preds = %dev_name.exit.i
  %registered.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0, i32 3
  %29 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %registered.i, align 4
  %arrayidx.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1
  %toneport3.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1, i32 2
  %30 = ptrtoint ptr %toneport3.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %line6, ptr %toneport3.1.i, align 4
  %name.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1, i32 1
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.1.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %for.inc.i.dev_name.exit.1.i_crit_edge

for.inc.i.dev_name.exit.1.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.1.i

if.end.i.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.1.i

dev_name.exit.1.i:                                ; preds = %if.end.i.1.i, %for.inc.i.dev_name.exit.1.i_crit_edge
  %retval.0.i.1.i = phi ptr [ %34, %if.end.i.1.i ], [ %32, %for.inc.i.dev_name.exit.1.i_crit_edge ]
  %call5.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.1.i, i32 noundef 64, ptr noundef nonnull @.str.26, ptr noundef %retval.0.i.1.i, ptr noundef nonnull @.str.28) #10
  %35 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %name.1.i, ptr %arrayidx.1.i, align 4
  %brightness.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %brightness.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 38, ptr %brightness.1.i, align 4
  %max_brightness.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %max_brightness.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 38, ptr %max_brightness.1.i, align 4
  %brightness_set.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1, i32 0, i32 5
  %38 = ptrtoint ptr %brightness_set.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @toneport_led_brightness_set, ptr %brightness_set.1.i, align 4
  %call.i.1.i = tail call i32 @led_classdev_register_ext(ptr noundef %dev1.i, ptr noundef %arrayidx.1.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %toneport_init_leds.exit.thread, label %dev_name.exit.1.i.toneport_init_leds.exit_crit_edge

dev_name.exit.1.i.toneport_init_leds.exit_crit_edge: ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toneport_init_leds.exit

toneport_init_leds.exit.thread:                   ; preds = %dev_name.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %registered.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1, i32 3
  %39 = ptrtoint ptr %registered.1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %registered.1.i, align 4
  br label %if.end24

toneport_init_leds.exit:                          ; preds = %dev_name.exit.1.i.toneport_init_leds.exit_crit_edge, %dev_name.exit.i.toneport_init_leds.exit_crit_edge
  %retval.2.i = phi i32 [ %call.i.i, %dev_name.exit.i.toneport_init_leds.exit_crit_edge ], [ %call.i.1.i, %dev_name.exit.1.i.toneport_init_leds.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp21 = icmp slt i32 %retval.2.i, 0
  br i1 %cmp21, label %toneport_init_leds.exit.cleanup_crit_edge, label %toneport_init_leds.exit.if.end24_crit_edge

toneport_init_leds.exit.if.end24_crit_edge:       ; preds = %toneport_init_leds.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

toneport_init_leds.exit.cleanup_crit_edge:        ; preds = %toneport_init_leds.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %toneport_init_leds.exit.if.end24_crit_edge, %toneport_init_leds.exit.thread, %if.end15.if.end24_crit_edge
  %call25 = tail call fastcc i32 @toneport_setup(ptr noundef %line6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %call29 = tail call i32 @snd_card_register(ptr noundef %41) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end24.cleanup_crit_edge, %toneport_init_leds.exit.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.end27 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call11, %if.then7.cleanup_crit_edge ], [ %retval.2.i, %toneport_init_leds.exit.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @line6_toneport_disconnect(ptr noundef %line6) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.usb_line6_toneport, ptr %line6, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %switch.and.i = and i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %registered.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0, i32 3
  %2 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %arrayidx.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 0
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.i) #10
  %4 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %registered.i, align 4
  %registered.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1, i32 3
  %5 = ptrtoint ptr %registered.1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %registered.1.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.1.i = icmp eq i8 %6, 0
  br i1 %tobool.not.1.i, label %if.end.i.if.end_crit_edge, label %if.end.1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1.i = getelementptr %struct.usb_line6_toneport, ptr %line6, i32 0, i32 5, i32 1
  tail call void @led_classdev_unregister(ptr noundef %arrayidx.1.i) #10
  %7 = ptrtoint ptr %registered.1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %registered.1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.1.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toneport_startup(ptr nocapture noundef readonly %line6) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %line6pcm = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 8
  %0 = ptrtoint ptr %line6pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6pcm, align 4
  %call = tail call i32 @line6_pcm_acquire(ptr noundef %1, i32 noundef 1, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_init_pcm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_read_serial_number(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_read_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @toneport_setup(ptr noundef %toneport) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %toneport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %toneport, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i64 @ktime_get_real_seconds() #10
  %conv = trunc i64 %call3 to i32
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %call7.i, align 8
  %call4 = tail call i32 @line6_write_data(ptr noundef %toneport, i32 noundef 32966, ptr noundef nonnull %call7.i, i32 noundef 4) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 103, i8 noundef zeroext 64, i16 noundef zeroext 769, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.toneport_send_cmd.exit_crit_edge, label %do.end.i

if.end.toneport_send_cmd.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %toneport_send_cmd.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i) #14
  br label %toneport_send_cmd.exit

toneport_send_cmd.exit:                           ; preds = %do.end.i, %if.end.toneport_send_cmd.exit_crit_edge
  %type.i = getelementptr inbounds %struct.usb_line6_toneport, ptr %toneport, i32 0, i32 4
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %toneport_send_cmd.exit.if.end9_crit_edge [
    i32 5, label %toneport_send_cmd.exit.if.then7_crit_edge
    i32 6, label %toneport_send_cmd.exit.if.then7_crit_edge36
    i32 2, label %toneport_send_cmd.exit.if.then7_crit_edge37
    i32 3, label %toneport_send_cmd.exit.if.then7_crit_edge38
  ]

toneport_send_cmd.exit.if.then7_crit_edge38:      ; preds = %toneport_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

toneport_send_cmd.exit.if.then7_crit_edge37:      ; preds = %toneport_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

toneport_send_cmd.exit.if.then7_crit_edge36:      ; preds = %toneport_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

toneport_send_cmd.exit.if.then7_crit_edge:        ; preds = %toneport_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

toneport_send_cmd.exit.if.end9_crit_edge:         ; preds = %toneport_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %toneport_send_cmd.exit.if.then7_crit_edge, %toneport_send_cmd.exit.if.then7_crit_edge36, %toneport_send_cmd.exit.if.then7_crit_edge37, %toneport_send_cmd.exit.if.then7_crit_edge38
  %source = getelementptr inbounds %struct.usb_line6_toneport, ptr %toneport, i32 0, i32 1
  %7 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %source, align 4
  %code = getelementptr [4 x %struct.anon.86], ptr @toneport_source_info, i32 0, i32 %8, i32 1
  %9 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %code, align 4
  %conv.i = trunc i32 %10 to i16
  %call.i28 = tail call i32 @usb_control_msg_send(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 103, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.then7.if.end9_crit_edge, label %do.end.i31

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end.i31:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i30 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i30, ptr noundef nonnull @.str.21, i32 noundef %call.i28) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end.i31, %if.then7.if.end9_crit_edge, %toneport_send_cmd.exit.if.end9_crit_edge
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %switch.and.i = and i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  %13 = ptrtoint ptr %toneport to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %toneport, align 4
  %brightness.i = getelementptr inbounds %struct.usb_line6_toneport, ptr %toneport, i32 0, i32 5, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %brightness.i, align 4
  %brightness4.i = getelementptr %struct.usb_line6_toneport, ptr %toneport, i32 0, i32 5, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brightness4.i, align 4
  %.tr.i = trunc i32 %16 to i16
  %19 = shl i16 %.tr.i, 8
  %conv.i.i = or i16 %19, 2
  %conv1.i.i = trunc i32 %18 to i16
  %call.i.i = tail call i32 @usb_control_msg_send(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 103, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %conv1.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then11.if.end12_crit_edge, label %do.end.i.i

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end.i.i, %if.then11.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  %startup_work = getelementptr inbounds %struct.usb_line6, ptr %toneport, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i34 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %startup_work, i32 noundef 100) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_pcm_acquire(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_toneport_monitor_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_toneport_monitor_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %volume_monitor = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %volume_monitor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %volume_monitor, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_toneport_monitor_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %volume_monitor = getelementptr inbounds %struct.snd_line6_pcm, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %volume_monitor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %volume_monitor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %volume_monitor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %volume_monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then6:                                         ; preds = %if.end
  %call = tail call i32 @line6_pcm_acquire(ptr noundef %1, i32 noundef 1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %volume_monitor to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %volume_monitor, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call, %if.then8 ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @line6_pcm_release(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_pcm_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_toneport_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %value, align 8
  %item = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %item, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %item, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %6 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %item, align 4
  %arrayidx = getelementptr [4 x %struct.anon.86], ptr @toneport_source_info, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @strcpy(ptr noundef %name, ptr noundef %9) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_toneport_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %source = getelementptr inbounds %struct.usb_line6_toneport, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %source, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_toneport_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %source1 = getelementptr inbounds %struct.usb_line6_toneport, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %source1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %source1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %source1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %source1, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %code = getelementptr [4 x %struct.anon.86], ptr @toneport_source_info, i32 0, i32 %5, i32 1
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code, align 4
  %conv.i = trunc i32 %12 to i16
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 103, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %do.end.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toneport_led_brightness_set(ptr nocapture noundef readonly %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %toneport = getelementptr inbounds %struct.toneport_led, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %toneport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %toneport, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %brightness.i = getelementptr inbounds %struct.usb_line6_toneport, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brightness.i, align 4
  %brightness4.i = getelementptr %struct.usb_line6_toneport, ptr %1, i32 0, i32 5, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness4.i, align 4
  %.tr.i = trunc i32 %5 to i16
  %8 = shl i16 %.tr.i, 8
  %conv.i.i = or i16 %8, 2
  %conv1.i.i = trunc i32 %7 to i16
  %call.i.i = tail call i32 @usb_control_msg_send(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 103, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext %conv1.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.toneport_update_led.exit_crit_edge, label %do.end.i.i

entry.toneport_update_led.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %toneport_update_led.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #14
  br label %toneport_update_led.exit

toneport_update_led.exit:                         ; preds = %do.end.i.i, %entry.toneport_update_led.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_write_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !70, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_snd_usb_toneport__243_579_toneport_driver_init6, !1, !"__initcall__kmod_snd_usb_toneport__243_579_toneport_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/toneport.c", i32 579, i32 1}
!2 = !{ptr @__exitcall_toneport_driver_exit, !1, !"__exitcall_toneport_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description244, !4, !"__UNIQUE_ID_description244", i1 false, i1 false}
!4 = !{!"../sound/usb/line6/toneport.c", i32 581, i32 1}
!5 = !{ptr @__UNIQUE_ID_file245, !6, !"__UNIQUE_ID_file245", i1 false, i1 false}
!6 = !{!"../sound/usb/line6/toneport.c", i32 582, i32 1}
!7 = !{ptr @__UNIQUE_ID_license246, !6, !"__UNIQUE_ID_license246", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @toneport_driver, !10, !"toneport_driver", i1 false, i1 false}
!10 = !{!"../sound/usb/line6/toneport.c", i32 567, i32 26}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/usb/line6/toneport.c", i32 562, i32 36}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/usb/line6/toneport.c", i32 492, i32 9}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/usb/line6/toneport.c", i32 501, i32 9}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/usb/line6/toneport.c", i32 502, i32 11}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/usb/line6/toneport.c", i32 510, i32 9}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/usb/line6/toneport.c", i32 511, i32 11}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/usb/line6/toneport.c", i32 519, i32 9}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/usb/line6/toneport.c", i32 520, i32 11}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/usb/line6/toneport.c", i32 528, i32 9}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/usb/line6/toneport.c", i32 529, i32 11}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/usb/line6/toneport.c", i32 537, i32 9}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/usb/line6/toneport.c", i32 538, i32 11}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/usb/line6/toneport.c", i32 546, i32 9}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/usb/line6/toneport.c", i32 547, i32 11}
!39 = !{ptr @toneport_properties_table, !40, !"toneport_properties_table", i1 false, i1 false}
!40 = !{!"../sound/usb/line6/toneport.c", i32 490, i32 38}
!41 = !{ptr @toneport_pcm_properties, !42, !"toneport_pcm_properties", i1 false, i1 false}
!42 = !{!"../sound/usb/line6/toneport.c", i32 73, i32 36}
!43 = !{ptr @toneport_ratden, !44, !"toneport_ratden", i1 false, i1 false}
!44 = !{!"../sound/usb/line6/toneport.c", i32 66, i32 32}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/line6/toneport.c", i32 247, i32 10}
!47 = !{ptr @toneport_control_monitor, !48, !"toneport_control_monitor", i1 false, i1 false}
!48 = !{!"../sound/usb/line6/toneport.c", i32 245, i32 38}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/usb/line6/toneport.c", i32 258, i32 10}
!51 = !{ptr @toneport_control_source, !52, !"toneport_control_source", i1 false, i1 false}
!52 = !{!"../sound/usb/line6/toneport.c", i32 256, i32 38}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/usb/line6/toneport.c", i32 119, i32 3}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/line6/toneport.c", i32 120, i32 3}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/line6/toneport.c", i32 121, i32 3}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/line6/toneport.c", i32 122, i32 3}
!61 = !{ptr @toneport_source_info, !62, !"toneport_source_info", i1 false, i1 false}
!62 = !{!"../sound/usb/line6/toneport.c", i32 118, i32 3}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/line6/toneport.c", i32 135, i32 3}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @toneport_send_cmd._entry, !64, !"_entry", i1 false, i1 false}
!70 = !{ptr @toneport_send_cmd._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/usb/line6/toneport.c", i32 314, i32 42}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/usb/line6/toneport.c", i32 286, i32 54}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/usb/line6/toneport.c", i32 286, i32 61}
!77 = distinct !{null, !78, !"toneport_led_colors", i1 false, i1 false}
!78 = !{!"../sound/usb/line6/toneport.c", i32 286, i32 27}
!79 = distinct !{null, !80, !"toneport_led_init_vals", i1 false, i1 false}
!80 = !{!"../sound/usb/line6/toneport.c", i32 287, i32 18}
!81 = !{ptr @toneport_id_table, !82, !"toneport_id_table", i1 false, i1 false}
!82 = !{!"../sound/usb/line6/toneport.c", i32 477, i32 35}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i8 0, i8 2}
