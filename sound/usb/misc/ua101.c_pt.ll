; ModuleID = '/llk/IR_all_yes/sound/usb/misc/ua101.c_pt.bc'
source_filename = "../sound/usb/misc/ua101.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ua101 = type { ptr, ptr, [3 x ptr], i32, ptr, %struct.list_head, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, i32, i32, [30 x i8], %struct.list_head, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ua101_stream, %struct.ua101_stream }
%struct.ua101_stream = type { ptr, i32, i32, i32, i32, i32, i32, i32, [30 x ptr], [5 x %struct.anon.72] }
%struct.anon.72 = type { i32, ptr, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.uac_format_type_i_discrete_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, [0 x [3 x i8]] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
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
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ua101_urb = type { %struct.urb, [1 x %struct.usb_iso_packet_descriptor], %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_description239 = internal constant [48 x i8] c"snd_ua101.description=Edirol UA-101/1000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [54 x i8] c"snd_ua101.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [40 x i8] c"snd_ua101.file=sound/usb/misc/snd-ua101\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [25 x i8] c"snd_ua101.license=GPL v2\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_ua101.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype243 = internal constant [38 x i8] c"snd_ua101.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index244 = internal constant [32 x i8] c"snd_ua101.parm=index:card index\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_ua101.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype245 = internal constant [37 x i8] c"snd_ua101.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id246 = internal constant [28 x i8] c"snd_ua101.parm=id:ID string\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_ua101.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype247 = internal constant [40 x i8] c"snd_ua101.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable248 = internal constant [34 x i8] c"snd_ua101.parm=enable:enable card\00", section ".modinfo", align 1
@__param_str_queue_length = internal constant [23 x i8] c"snd_ua101.queue_length\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@queue_length = internal global { i32, [28 x i8] } { i32 21, [28 x i8] zeroinitializer }, align 32
@__param_queue_length = internal constant %struct.kernel_param { ptr @__param_str_queue_length, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @queue_length } }, section "__param", align 4
@__UNIQUE_ID_queue_lengthtype249 = internal constant [37 x i8] c"snd_ua101.parmtype=queue_length:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_queue_length250 = internal constant [67 x i8] c"snd_ua101.parm=queue_length:USB queue length in microframes, 12-30\00", section ".modinfo", align 1
@__initcall__kmod_snd_ua101__257_1357_ua101_driver_init6 = internal global ptr @ua101_driver_init, section ".initcall6.init", align 4
@ua101_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @ua101_probe, ptr @ua101_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ua101_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ua101_driver_exit = internal global ptr @ua101_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_ua101\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd-ua101\00", [22 x i8] zeroinitializer }, align 32
@ua101_ids = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1410, i16 68, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1410, i16 125, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1410, i16 141, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ua101_probe.midi_ep = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ua101_probe.midi_quirk = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @ua101_probe.midi_ep }, [16 x i8] zeroinitializer }, align 32
@ua101_probe.intf_numbers = internal constant { [2 x [3 x i32]], [40 x i8] } { [2 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2], [3 x i32] [i32 2, i32 1, i32 3]], [40 x i8] zeroinitializer }, align 32
@devices_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @devices_mutex, i64 52), ptr getelementptr (i8, ptr @devices_mutex, i64 52) }, ptr @devices_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@devices_used = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ua101_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ua->lock\00", [22 x i8] zeroinitializer }, align 32
@ua101_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ua->mutex\00", [21 x i8] zeroinitializer }, align 32
@ua101_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ua->playback_work)\00", [58 x i8] zeroinitializer }, align 32
@ua101_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ua->alsa_capture_wait\00", [41 x i8] zeroinitializer }, align 32
@ua101_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ua->rate_feedback_wait\00", [40 x i8] zeroinitializer }, align 32
@ua101_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ua->alsa_playback_wait\00", [40 x i8] zeroinitializer }, align 32
@ua101_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 1231, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interface %u not found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ua101_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/usb/misc/ua101.c\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ua101_probe._entry_ptr = internal global ptr @ua101_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UA-1000\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UA-101\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"EDIROL %s (serial %s), %u Hz at %s, %s speed\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@playback_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @playback_pcm_open, ptr @playback_pcm_close, ptr null, ptr @playback_pcm_hw_params, ptr null, ptr @playback_pcm_prepare, ptr @playback_pcm_trigger, ptr null, ptr @playback_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@capture_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @capture_pcm_open, ptr @capture_pcm_close, ptr null, ptr @capture_pcm_hw_params, ptr null, ptr @capture_pcm_prepare, ptr @capture_pcm_trigger, ptr null, ptr @capture_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"devices_mutex.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"devices_mutex\00", [18 x i8] zeroinitializer }, align 32
@playback_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.15, i32 303, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"USB request error %d: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"playback_work\00", [18 x i8] zeroinitializer }, align 32
@playback_work._entry_ptr = internal global ptr @playback_work._entry, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no device\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"endpoint not enabled\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"endpoint stalled\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not enough bandwidth\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device disabled\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device suspended\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown error\00", [18 x i8] zeroinitializer }, align 32
@detect_usb_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.15, i32 959, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sample width is not 24 or 32 bits\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"detect_usb_format\00", [46 x i8] zeroinitializer }, align 32
@detect_usb_format._entry_ptr = internal global ptr @detect_usb_format._entry, section ".printk_index", align 4
@detect_usb_format._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.15, i32 964, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"playback/capture sample widths do not match\0A\00", [51 x i8] zeroinitializer }, align 32
@detect_usb_format._entry_ptr.40 = internal global ptr @detect_usb_format._entry.38, section ".printk_index", align 4
@detect_usb_format._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.15, i32 970, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sample width is not 24 bits\0A\00", [35 x i8] zeroinitializer }, align 32
@detect_usb_format._entry_ptr.43 = internal global ptr @detect_usb_format._entry.41, section ".printk_index", align 4
@detect_usb_format._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.15, i32 979, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"playback/capture rates do not match: %u/%u\0A\00", [52 x i8] zeroinitializer }, align 32
@detect_usb_format._entry_ptr.46 = internal global ptr @detect_usb_format._entry.44, section ".printk_index", align 4
@detect_usb_format._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.15, i32 991, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown device speed\0A\00", [42 x i8] zeroinitializer }, align 32
@detect_usb_format._entry_ptr.49 = internal global ptr @detect_usb_format._entry.47, section ".printk_index", align 4
@detect_usb_format._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.15, i32 1004, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid capture endpoint\0A\00", [38 x i8] zeroinitializer }, align 32
@detect_usb_format._entry_ptr.52 = internal global ptr @detect_usb_format._entry.50, section ".printk_index", align 4
@detect_usb_format._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.37, ptr @.str.15, i32 1012, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid playback endpoint\0A\00", [37 x i8] zeroinitializer }, align 32
@detect_usb_format._entry_ptr.55 = internal global ptr @detect_usb_format._entry.53, section ".printk_index", align 4
@find_format_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.15, i32 895, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid num_altsetting\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"find_format_descriptor\00", [41 x i8] zeroinitializer }, align 32
@find_format_descriptor._entry_ptr = internal global ptr @find_format_descriptor._entry, section ".printk_index", align 4
@find_format_descriptor._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.15, i32 901, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid bNumEndpoints\0A\00", [41 x i8] zeroinitializer }, align 32
@find_format_descriptor._entry_ptr.60 = internal global ptr @find_format_descriptor._entry.58, section ".printk_index", align 4
@find_format_descriptor._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.15, i32 907, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@find_format_descriptor._entry_ptr.62 = internal global ptr @find_format_descriptor._entry.61, section ".printk_index", align 4
@find_format_descriptor._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.15, i32 918, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"descriptor overflow\0A\00", [43 x i8] zeroinitializer }, align 32
@find_format_descriptor._entry_ptr.65 = internal global ptr @find_format_descriptor._entry.63, section ".printk_index", align 4
@find_format_descriptor._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.15, i32 927, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid format type\0A\00", [43 x i8] zeroinitializer }, align 32
@find_format_descriptor._entry_ptr.68 = internal global ptr @find_format_descriptor._entry.66, section ".printk_index", align 4
@find_format_descriptor._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.15, i32 935, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sample format descriptor not found\0A\00", [60 x i8] zeroinitializer }, align 32
@find_format_descriptor._entry_ptr.71 = internal global ptr @find_format_descriptor._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@alloc_stream_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.15, i32 1053, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"too many packets\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alloc_stream_buffers\00", [43 x i8] zeroinitializer }, align 32
@alloc_stream_buffers._entry_ptr = internal global ptr @alloc_stream_buffers._entry, section ".printk_index", align 4
@alloc_stream_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.15, i32 1110, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"internal buffer size error\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_stream_urbs\00", [46 x i8] zeroinitializer }, align 32
@alloc_stream_urbs._entry_ptr = internal global ptr @alloc_stream_urbs._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@capture_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.77, ptr @.str.15, i32 379, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"capture_urb_complete\00", [43 x i8] zeroinitializer }, align 32
@capture_urb_complete._entry_ptr = internal global ptr @capture_urb_complete._entry, section ".printk_index", align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@enable_iso_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.15, i32 466, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cannot initialize interface; error %d: %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable_iso_interface\00", [43 x i8] zeroinitializer }, align 32
@enable_iso_interface._entry_ptr = internal global ptr @enable_iso_interface._entry, section ".printk_index", align 4
@submit_stream_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.80, ptr @.str.15, i32 439, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"submit_stream_urbs\00", [45 x i8] zeroinitializer }, align 32
@submit_stream_urbs._entry_ptr = internal global ptr @submit_stream_urbs._entry, section ".printk_index", align 4
@disable_iso_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.15, i32 487, ptr @.str.83, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"interface reset failed; error %d: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disable_iso_interface\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@disable_iso_interface._entry_ptr = internal global ptr @disable_iso_interface._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 32, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.87 = internal global [12 x i64] [i64 10, i64 32, i64 4294967183, i64 4294967188, i64 4294967206, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967274, i64 4294967277, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [12 x i64] [i64 10, i64 32, i64 4294967183, i64 4294967188, i64 4294967206, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967274, i64 4294967277, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.90 = internal global [12 x i64] [i64 10, i64 32, i64 4294967183, i64 4294967188, i64 4294967206, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967274, i64 4294967277, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.91 = internal global [12 x i64] [i64 10, i64 32, i64 4294967183, i64 4294967188, i64 4294967206, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967274, i64 4294967277, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.92 = internal global [12 x i64] [i64 10, i64 32, i64 4294967183, i64 4294967188, i64 4294967206, i64 4294967264, i64 4294967268, i64 4294967269, i64 4294967274, i64 4294967277, i64 4294967285, i64 4294967294]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"queue_length\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 45, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"ua101_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1346, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 42, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 43, i32 14 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 44, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1357, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1347, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"ua101_ids\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1338, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [8 x i8] c"midi_ep\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1161, i32 49 }
@___asan_gen_.121 = private unnamed_addr constant [11 x i8] c"midi_quirk\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1165, i32 42 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"intf_numbers\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1169, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"devices_mutex\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"devices_used\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 125, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1217, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1218, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1220, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1221, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1222, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1223, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1230, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1248, i32 39 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1248, i32 51 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1253, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1254, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1255, i32 39 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1255, i32 48 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"playback_pcm_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 878, i32 33 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"capture_pcm_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 869, i32 33 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 124, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 302, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 135, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 137, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 139, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 141, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 143, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 145, i32 10 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 150, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 152, i32 10 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 959, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 963, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 970, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 977, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 991, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1004, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1012, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 895, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 901, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 907, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 918, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 926, i32 5 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 935, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 912, i32 31 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1053, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 1110, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 378, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 464, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 438, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.383 = private constant [26 x i8] c"../sound/usb/misc/ua101.c\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 485, i32 4 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable248, ptr @__UNIQUE_ID_enabletype247, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id246, ptr @__UNIQUE_ID_idtype245, ptr @__UNIQUE_ID_index244, ptr @__UNIQUE_ID_indextype243, ptr @__UNIQUE_ID_license242, ptr @__UNIQUE_ID_queue_length250, ptr @__UNIQUE_ID_queue_lengthtype249, ptr @__exitcall_ua101_driver_exit, ptr @__initcall__kmod_snd_ua101__257_1357_ua101_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_queue_length, ptr @alloc_stream_buffers._entry, ptr @alloc_stream_buffers._entry_ptr, ptr @alloc_stream_urbs._entry, ptr @alloc_stream_urbs._entry_ptr, ptr @capture_urb_complete._entry, ptr @capture_urb_complete._entry_ptr, ptr @detect_usb_format._entry, ptr @detect_usb_format._entry.38, ptr @detect_usb_format._entry.41, ptr @detect_usb_format._entry.44, ptr @detect_usb_format._entry.47, ptr @detect_usb_format._entry.50, ptr @detect_usb_format._entry.53, ptr @detect_usb_format._entry_ptr, ptr @detect_usb_format._entry_ptr.40, ptr @detect_usb_format._entry_ptr.43, ptr @detect_usb_format._entry_ptr.46, ptr @detect_usb_format._entry_ptr.49, ptr @detect_usb_format._entry_ptr.52, ptr @detect_usb_format._entry_ptr.55, ptr @disable_iso_interface._entry, ptr @disable_iso_interface._entry_ptr, ptr @enable_iso_interface._entry, ptr @enable_iso_interface._entry_ptr, ptr @find_format_descriptor._entry, ptr @find_format_descriptor._entry.58, ptr @find_format_descriptor._entry.61, ptr @find_format_descriptor._entry.63, ptr @find_format_descriptor._entry.66, ptr @find_format_descriptor._entry.69, ptr @find_format_descriptor._entry_ptr, ptr @find_format_descriptor._entry_ptr.60, ptr @find_format_descriptor._entry_ptr.62, ptr @find_format_descriptor._entry_ptr.65, ptr @find_format_descriptor._entry_ptr.68, ptr @find_format_descriptor._entry_ptr.71, ptr @playback_work._entry, ptr @playback_work._entry_ptr, ptr @submit_stream_urbs._entry, ptr @submit_stream_urbs._entry_ptr, ptr @ua101_driver_exit, ptr @ua101_probe._entry, ptr @ua101_probe._entry_ptr, ptr @queue_length, ptr @ua101_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @.str.1, ptr @ua101_ids, ptr @ua101_probe.midi_ep, ptr @ua101_probe.midi_quirk, ptr @ua101_probe.intf_numbers, ptr @devices_mutex, ptr @devices_used, ptr @ua101_probe.__key, ptr @.str.2, ptr @ua101_probe.__key.3, ptr @.str.4, ptr @ua101_probe.__key.5, ptr @.str.6, ptr @ua101_probe.__key.7, ptr @.str.8, ptr @ua101_probe.__key.9, ptr @.str.10, ptr @ua101_probe.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @playback_pcm_ops, ptr @capture_pcm_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_length to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.midi_ep to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.midi_quirk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.intf_numbers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_used to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ua101_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_usb_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_usb_format._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_usb_format._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_usb_format._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_usb_format._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_usb_format._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_usb_format._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_format_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_format_descriptor._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_format_descriptor._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_format_descriptor._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_format_descriptor._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_format_descriptor._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_stream_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_stream_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_iso_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @submit_stream_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_iso_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ua101_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ua101_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ua101_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @ua101_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ua101_probe(ptr noundef %interface, ptr nocapture noundef readonly %usb_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %usb_path = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !220
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %usb_path) #10
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %usb_id, i32 0, i32 2
  %1 = call ptr @memset(ptr %usb_path, i32 255, i32 32)
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %3)
  %cmp = icmp eq i16 %3, 68
  %conv1 = zext i1 %cmp to i32
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber, align 2
  %conv2 = zext i8 %7 to i32
  %arrayidx = getelementptr [2 x [3 x i32]], ptr @ua101_probe.intf_numbers, i32 0, i32 %conv1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv2)
  %cmp4.not = icmp eq i32 %9, %conv2
  br i1 %cmp4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %card_index.0266 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr [32 x i8], ptr @enable, i32 0, i32 %card_index.0266
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, ptr @devices_used, align 4
  %shl = shl nuw i32 1, %card_index.0266
  %and = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end16, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %card_index.0266, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.then15, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then15:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #10
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %arrayidx17 = getelementptr [32 x i32], ptr @index, i32 0, i32 %card_index.0266
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %card_index.0266
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx18, align 4
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %14, ptr noundef %16, ptr noundef null, i32 noundef 872, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp19 = icmp slt i32 %call, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ua101_card_free, ptr %private_free, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 9
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data, align 8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 -128
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %21, align 8
  %25 = load ptr, ptr %card, align 4
  %card25 = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %card25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %card25, align 4
  %card_index26 = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 3
  %27 = ptrtoint ptr %card_index26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %card_index.0266, ptr %card_index26, align 4
  %midi_list = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 5
  %28 = ptrtoint ptr %midi_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %midi_list, ptr %midi_list, align 4
  %prev.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %midi_list, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ua101_probe.__key, i16 noundef signext 3) #10
  %mutex = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 10
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @ua101_probe.__key.3) #10
  %ready_playback_urbs = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 15
  %30 = ptrtoint ptr %ready_playback_urbs to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %ready_playback_urbs, ptr %ready_playback_urbs, align 4
  %prev.i255 = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %prev.i255 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ready_playback_urbs, ptr %prev.i255, align 4
  %playback_work = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 16
  call void @__init_work(ptr noundef %playback_work, i32 noundef 0) #10
  %32 = ptrtoint ptr %playback_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %playback_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 16, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @ua101_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry35 = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 16, i32 1
  %33 = ptrtoint ptr %entry35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry35, ptr %entry35, align 4
  %prev.i256 = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 16, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry35, ptr %prev.i256, align 4
  %func = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 16, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @playback_work, ptr %func, align 4
  %alsa_capture_wait = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 17
  call void @__init_waitqueue_head(ptr noundef %alsa_capture_wait, ptr noundef nonnull @.str.8, ptr noundef nonnull @ua101_probe.__key.7) #10
  %rate_feedback_wait = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 18
  call void @__init_waitqueue_head(ptr noundef %rate_feedback_wait, ptr noundef nonnull @.str.10, ptr noundef nonnull @ua101_probe.__key.9) #10
  %alsa_playback_wait = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 19
  call void @__init_waitqueue_head(ptr noundef %alsa_playback_wait, ptr noundef nonnull @.str.12, ptr noundef nonnull @ua101_probe.__key.11) #10
  %intf = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 2
  %36 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %interface, ptr %intf, align 8
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %21, align 8
  %arrayidx55 = getelementptr [2 x [3 x i32]], ptr @ua101_probe.intf_numbers, i32 0, i32 %conv1, i32 1
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx55, align 4
  %call56 = call ptr @usb_ifnum_to_if(ptr noundef %38, i32 noundef %40) #10
  %arrayidx58 = getelementptr %struct.ua101, ptr %21, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call56, ptr %arrayidx58, align 4
  %tobool61.not = icmp eq ptr %call56, null
  br i1 %tobool61.not, label %if.end22.do.end65_crit_edge, label %if.end70

if.end22.do.end65_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

for.cond49:                                       ; preds = %if.end70
  %42 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %21, align 8
  %arrayidx55.1 = getelementptr [2 x [3 x i32]], ptr @ua101_probe.intf_numbers, i32 0, i32 %conv1, i32 2
  %44 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx55.1, align 4
  %call56.1 = call ptr @usb_ifnum_to_if(ptr noundef %43, i32 noundef %45) #10
  %arrayidx58.1 = getelementptr %struct.ua101, ptr %21, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call56.1, ptr %arrayidx58.1, align 4
  %tobool61.not.1 = icmp eq ptr %call56.1, null
  br i1 %tobool61.not.1, label %for.cond49.do.end65_crit_edge, label %if.end70.1

for.cond49.do.end65_crit_edge:                    ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end65

if.end70.1:                                       ; preds = %for.cond49
  %call73.1 = call i32 @usb_driver_claim_interface(ptr noundef nonnull @ua101_driver, ptr noundef nonnull %call56.1, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.1)
  %cmp74.1 = icmp slt i32 %call73.1, 0
  br i1 %cmp74.1, label %if.end70.1.if.then76_crit_edge, label %for.cond49.1

if.end70.1.if.then76_crit_edge:                   ; preds = %if.end70.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

for.cond49.1:                                     ; preds = %if.end70.1
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx58, align 4
  %num_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %num_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_altsetting.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.not.i.i = icmp eq i32 %50, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.cond49.1.cleanup69.sink.split.i.i_crit_edge

for.cond49.1.cleanup69.sink.split.i.i_crit_edge:  ; preds = %for.cond49.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

do.end65:                                         ; preds = %for.cond49.do.end65_crit_edge, %if.end22.do.end65_crit_edge
  %.lcssa = phi i32 [ %40, %if.end22.do.end65_crit_edge ], [ %45, %for.cond49.do.end65_crit_edge ]
  %51 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %21, align 8
  %dev67 = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.13, i32 noundef %.lcssa) #13
  br label %probe_error

if.end70:                                         ; preds = %if.end22
  %call73 = call i32 @usb_driver_claim_interface(ptr noundef nonnull @ua101_driver, ptr noundef nonnull %call56, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end70.if.then76_crit_edge, label %for.cond49

if.end70.if.then76_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.then76:                                        ; preds = %if.end70.if.then76_crit_edge, %if.end70.1.if.then76_crit_edge
  %arrayidx58.lcssa271 = phi ptr [ %arrayidx58, %if.end70.if.then76_crit_edge ], [ %arrayidx58.1, %if.end70.1.if.then76_crit_edge ]
  %53 = ptrtoint ptr %arrayidx58.lcssa271 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx58.lcssa271, align 4
  br label %probe_error

if.end.i.i:                                       ; preds = %for.cond49.1
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %48, align 8
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bNumEndpoints.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp1.not.i.i = icmp eq i8 %57, 0
  br i1 %cmp1.not.i.i, label %if.end8.i.i, label %if.end.i.i.cleanup69.sink.split.i.i_crit_edge

if.end.i.i.cleanup69.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %bNumEndpoints12.i.i = getelementptr %struct.usb_host_interface, ptr %55, i32 1, i32 0, i32 4
  %58 = ptrtoint ptr %bNumEndpoints12.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bNumEndpoints12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp14.not.i.i = icmp eq i8 %59, 1
  br i1 %cmp14.not.i.i, label %if.end21.i.i, label %if.end8.i.i.cleanup69.sink.split.i.i_crit_edge

if.end8.i.i.cleanup69.sink.split.i.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

if.end21.i.i:                                     ; preds = %if.end8.i.i
  %extralen23.i.i = getelementptr %struct.usb_host_interface, ptr %55, i32 1, i32 1
  %60 = ptrtoint ptr %extralen23.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %extralen23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp24100.i.i = icmp ugt i32 %61, 1
  br i1 %cmp24100.i.i, label %while.body.preheader.i.i, label %if.end21.i.i.cleanup69.sink.split.i.i_crit_edge

if.end21.i.i.cleanup69.sink.split.i.i_crit_edge:  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

while.body.preheader.i.i:                         ; preds = %if.end21.i.i
  %extra22.i.i = getelementptr %struct.usb_host_interface, ptr %55, i32 1, i32 2
  %62 = ptrtoint ptr %extra22.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extra22.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %extralen.0103.i.i = phi i32 [ %sub.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %61, %while.body.preheader.i.i ]
  %extra.0101.i.i = phi ptr [ %add.ptr.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %63, %while.body.preheader.i.i ]
  %64 = ptrtoint ptr %extra.0101.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %extra.0101.i.i, align 1
  %conv27.i.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extralen.0103.i.i, i32 %conv27.i.i)
  %cmp28.i.i = icmp slt i32 %extralen.0103.i.i, %conv27.i.i
  br i1 %cmp28.i.i, label %while.body.i.i.cleanup69.sink.split.i.i_crit_edge, label %if.end35.i.i

while.body.i.i.cleanup69.sink.split.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

if.end35.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %65)
  %cmp38.i.i = icmp eq i8 %65, 11
  br i1 %cmp38.i.i, label %land.lhs.true.i.i, label %if.end35.i.i.cleanup.i.i_crit_edge

if.end35.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %if.end35.i.i
  %bDescriptorType.i.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %bDescriptorType.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bDescriptorType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %67)
  %cmp41.i.i = icmp eq i8 %67, 36
  br i1 %cmp41.i.i, label %land.lhs.true43.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

land.lhs.true43.i.i:                              ; preds = %land.lhs.true.i.i
  %bDescriptorSubtype.i.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %bDescriptorSubtype.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bDescriptorSubtype.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp45.i.i = icmp eq i8 %69, 2
  br i1 %cmp45.i.i, label %if.then47.i.i, label %land.lhs.true43.i.i.cleanup.i.i_crit_edge

land.lhs.true43.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.then47.i.i:                                    ; preds = %land.lhs.true43.i.i
  %bFormatType.i.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %bFormatType.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bFormatType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp49.not.i.i = icmp eq i8 %71, 1
  br i1 %cmp49.not.i.i, label %lor.lhs.false.i.i, label %if.then47.i.i.cleanup69.sink.split.i.i_crit_edge

if.then47.i.i.cleanup69.sink.split.i.i_crit_edge: ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

lor.lhs.false.i.i:                                ; preds = %if.then47.i.i
  %bSamFreqType.i.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %bSamFreqType.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bSamFreqType.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp52.not.i.i = icmp eq i8 %73, 1
  br i1 %cmp52.not.i.i, label %lor.lhs.false.i.i.find_format_descriptor.exit.i_crit_edge, label %lor.lhs.false.i.i.cleanup69.sink.split.i.i_crit_edge

lor.lhs.false.i.i.cleanup69.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

lor.lhs.false.i.i.find_format_descriptor.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit.i

cleanup.i.i:                                      ; preds = %land.lhs.true43.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %if.end35.i.i.cleanup.i.i_crit_edge
  %sub.i.i = sub i32 %extralen.0103.i.i, %conv27.i.i
  %add.ptr.i.i = getelementptr i8, ptr %extra.0101.i.i, i32 %conv27.i.i
  %cmp24.i.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp24.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.cleanup69.sink.split.i.i_crit_edge

cleanup.i.i.cleanup69.sink.split.i.i_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup69.sink.split.i.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

cleanup69.sink.split.i.i:                         ; preds = %cleanup.i.i.cleanup69.sink.split.i.i_crit_edge, %lor.lhs.false.i.i.cleanup69.sink.split.i.i_crit_edge, %if.then47.i.i.cleanup69.sink.split.i.i_crit_edge, %while.body.i.i.cleanup69.sink.split.i.i_crit_edge, %if.end21.i.i.cleanup69.sink.split.i.i_crit_edge, %if.end8.i.i.cleanup69.sink.split.i.i_crit_edge, %if.end.i.i.cleanup69.sink.split.i.i_crit_edge, %for.cond49.1.cleanup69.sink.split.i.i_crit_edge
  %.str.67.sink.i.i = phi ptr [ @.str.56, %for.cond49.1.cleanup69.sink.split.i.i_crit_edge ], [ @.str.59, %if.end.i.i.cleanup69.sink.split.i.i_crit_edge ], [ @.str.59, %if.end8.i.i.cleanup69.sink.split.i.i_crit_edge ], [ @.str.67, %if.then47.i.i.cleanup69.sink.split.i.i_crit_edge ], [ @.str.67, %lor.lhs.false.i.i.cleanup69.sink.split.i.i_crit_edge ], [ @.str.70, %if.end21.i.i.cleanup69.sink.split.i.i_crit_edge ], [ @.str.64, %while.body.i.i.cleanup69.sink.split.i.i_crit_edge ], [ @.str.70, %cleanup.i.i.cleanup69.sink.split.i.i_crit_edge ]
  %dev58.i.i = getelementptr inbounds %struct.usb_interface, ptr %48, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58.i.i, ptr noundef nonnull %.str.67.sink.i.i) #13
  br label %find_format_descriptor.exit.i

find_format_descriptor.exit.i:                    ; preds = %cleanup69.sink.split.i.i, %lor.lhs.false.i.i.find_format_descriptor.exit.i_crit_edge
  %retval.2.i.i = phi ptr [ %extra.0101.i.i, %lor.lhs.false.i.i.find_format_descriptor.exit.i_crit_edge ], [ null, %cleanup69.sink.split.i.i ]
  %74 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %intf, align 8
  %num_altsetting.i211.i = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %num_altsetting.i211.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_altsetting.i211.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp.not.i212.i = icmp eq i32 %77, 2
  br i1 %cmp.not.i212.i, label %if.end.i215.i, label %find_format_descriptor.exit.i.find_format_descriptor.exit251.thread.i_crit_edge

find_format_descriptor.exit.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %find_format_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

if.end.i215.i:                                    ; preds = %find_format_descriptor.exit.i
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 8
  %bNumEndpoints.i213.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %bNumEndpoints.i213.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bNumEndpoints.i213.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp1.not.i214.i = icmp eq i8 %81, 0
  br i1 %cmp1.not.i214.i, label %if.end8.i218.i, label %if.end.i215.i.find_format_descriptor.exit251.thread.i_crit_edge

if.end.i215.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %if.end.i215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

if.end8.i218.i:                                   ; preds = %if.end.i215.i
  %bNumEndpoints12.i216.i = getelementptr %struct.usb_host_interface, ptr %79, i32 1, i32 0, i32 4
  %82 = ptrtoint ptr %bNumEndpoints12.i216.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bNumEndpoints12.i216.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp14.not.i217.i = icmp eq i8 %83, 1
  br i1 %cmp14.not.i217.i, label %if.end21.i221.i, label %if.end8.i218.i.find_format_descriptor.exit251.thread.i_crit_edge

if.end8.i218.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %if.end8.i218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

if.end21.i221.i:                                  ; preds = %if.end8.i218.i
  %extralen23.i219.i = getelementptr %struct.usb_host_interface, ptr %79, i32 1, i32 1
  %84 = ptrtoint ptr %extralen23.i219.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %extralen23.i219.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp24100.i220.i = icmp ugt i32 %85, 1
  br i1 %cmp24100.i220.i, label %while.body.preheader.i223.i, label %if.end21.i221.i.find_format_descriptor.exit251.thread.i_crit_edge

if.end21.i221.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %if.end21.i221.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

while.body.preheader.i223.i:                      ; preds = %if.end21.i221.i
  %extra22.i222.i = getelementptr %struct.usb_host_interface, ptr %79, i32 1, i32 2
  %86 = ptrtoint ptr %extra22.i222.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %extra22.i222.i, align 4
  br label %while.body.i228.i

while.body.i228.i:                                ; preds = %cleanup.i246.i.while.body.i228.i_crit_edge, %while.body.preheader.i223.i
  %extralen.0103.i224.i = phi i32 [ %sub.i243.i, %cleanup.i246.i.while.body.i228.i_crit_edge ], [ %85, %while.body.preheader.i223.i ]
  %extra.0101.i225.i = phi ptr [ %add.ptr.i244.i, %cleanup.i246.i.while.body.i228.i_crit_edge ], [ %87, %while.body.preheader.i223.i ]
  %88 = ptrtoint ptr %extra.0101.i225.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %extra.0101.i225.i, align 1
  %conv27.i226.i = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %extralen.0103.i224.i, i32 %conv27.i226.i)
  %cmp28.i227.i = icmp slt i32 %extralen.0103.i224.i, %conv27.i226.i
  br i1 %cmp28.i227.i, label %while.body.i228.i.find_format_descriptor.exit251.thread.i_crit_edge, label %if.end35.i230.i

while.body.i228.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %while.body.i228.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

if.end35.i230.i:                                  ; preds = %while.body.i228.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %89)
  %cmp38.i229.i = icmp eq i8 %89, 11
  br i1 %cmp38.i229.i, label %land.lhs.true.i233.i, label %if.end35.i230.i.cleanup.i246.i_crit_edge

if.end35.i230.i.cleanup.i246.i_crit_edge:         ; preds = %if.end35.i230.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i246.i

land.lhs.true.i233.i:                             ; preds = %if.end35.i230.i
  %bDescriptorType.i231.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 1
  %90 = ptrtoint ptr %bDescriptorType.i231.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bDescriptorType.i231.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %91)
  %cmp41.i232.i = icmp eq i8 %91, 36
  br i1 %cmp41.i232.i, label %land.lhs.true43.i236.i, label %land.lhs.true.i233.i.cleanup.i246.i_crit_edge

land.lhs.true.i233.i.cleanup.i246.i_crit_edge:    ; preds = %land.lhs.true.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i246.i

land.lhs.true43.i236.i:                           ; preds = %land.lhs.true.i233.i
  %bDescriptorSubtype.i234.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 2
  %92 = ptrtoint ptr %bDescriptorSubtype.i234.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bDescriptorSubtype.i234.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %93)
  %cmp45.i235.i = icmp eq i8 %93, 2
  br i1 %cmp45.i235.i, label %if.then47.i239.i, label %land.lhs.true43.i236.i.cleanup.i246.i_crit_edge

land.lhs.true43.i236.i.cleanup.i246.i_crit_edge:  ; preds = %land.lhs.true43.i236.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i246.i

if.then47.i239.i:                                 ; preds = %land.lhs.true43.i236.i
  %bFormatType.i237.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 3
  %94 = ptrtoint ptr %bFormatType.i237.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bFormatType.i237.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp49.not.i238.i = icmp eq i8 %95, 1
  br i1 %cmp49.not.i238.i, label %lor.lhs.false.i242.i, label %if.then47.i239.i.find_format_descriptor.exit251.thread.i_crit_edge

if.then47.i239.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %if.then47.i239.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

lor.lhs.false.i242.i:                             ; preds = %if.then47.i239.i
  %bSamFreqType.i240.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 7
  %96 = ptrtoint ptr %bSamFreqType.i240.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bSamFreqType.i240.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %97)
  %cmp52.not.i241.i = icmp eq i8 %97, 1
  br i1 %cmp52.not.i241.i, label %find_format_descriptor.exit251.i, label %lor.lhs.false.i242.i.find_format_descriptor.exit251.thread.i_crit_edge

lor.lhs.false.i242.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %lor.lhs.false.i242.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

cleanup.i246.i:                                   ; preds = %land.lhs.true43.i236.i.cleanup.i246.i_crit_edge, %land.lhs.true.i233.i.cleanup.i246.i_crit_edge, %if.end35.i230.i.cleanup.i246.i_crit_edge
  %sub.i243.i = sub i32 %extralen.0103.i224.i, %conv27.i226.i
  %add.ptr.i244.i = getelementptr i8, ptr %extra.0101.i225.i, i32 %conv27.i226.i
  %cmp24.i245.i = icmp ugt i32 %sub.i243.i, 1
  br i1 %cmp24.i245.i, label %cleanup.i246.i.while.body.i228.i_crit_edge, label %cleanup.i246.i.find_format_descriptor.exit251.thread.i_crit_edge

cleanup.i246.i.find_format_descriptor.exit251.thread.i_crit_edge: ; preds = %cleanup.i246.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_format_descriptor.exit251.thread.i

cleanup.i246.i.while.body.i228.i_crit_edge:       ; preds = %cleanup.i246.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i228.i

find_format_descriptor.exit251.thread.i:          ; preds = %cleanup.i246.i.find_format_descriptor.exit251.thread.i_crit_edge, %lor.lhs.false.i242.i.find_format_descriptor.exit251.thread.i_crit_edge, %if.then47.i239.i.find_format_descriptor.exit251.thread.i_crit_edge, %while.body.i228.i.find_format_descriptor.exit251.thread.i_crit_edge, %if.end21.i221.i.find_format_descriptor.exit251.thread.i_crit_edge, %if.end8.i218.i.find_format_descriptor.exit251.thread.i_crit_edge, %if.end.i215.i.find_format_descriptor.exit251.thread.i_crit_edge, %find_format_descriptor.exit.i.find_format_descriptor.exit251.thread.i_crit_edge
  %.str.67.sink.i247.i = phi ptr [ @.str.56, %find_format_descriptor.exit.i.find_format_descriptor.exit251.thread.i_crit_edge ], [ @.str.59, %if.end.i215.i.find_format_descriptor.exit251.thread.i_crit_edge ], [ @.str.59, %if.end8.i218.i.find_format_descriptor.exit251.thread.i_crit_edge ], [ @.str.67, %if.then47.i239.i.find_format_descriptor.exit251.thread.i_crit_edge ], [ @.str.67, %lor.lhs.false.i242.i.find_format_descriptor.exit251.thread.i_crit_edge ], [ @.str.70, %if.end21.i221.i.find_format_descriptor.exit251.thread.i_crit_edge ], [ @.str.64, %while.body.i228.i.find_format_descriptor.exit251.thread.i_crit_edge ], [ @.str.70, %cleanup.i246.i.find_format_descriptor.exit251.thread.i_crit_edge ]
  %dev58.i248.i = getelementptr inbounds %struct.usb_interface, ptr %75, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58.i248.i, ptr noundef nonnull %.str.67.sink.i247.i) #13
  br label %probe_error

find_format_descriptor.exit251.i:                 ; preds = %lor.lhs.false.i242.i
  %tobool.not.i = icmp eq ptr %retval.2.i.i, null
  %tobool4.not.i = icmp eq ptr %extra.0101.i225.i, null
  %or.cond.i = or i1 %tobool.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %find_format_descriptor.exit251.i.probe_error_crit_edge, label %if.end.i

find_format_descriptor.exit251.i.probe_error_crit_edge: ; preds = %find_format_descriptor.exit251.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end.i:                                         ; preds = %find_format_descriptor.exit251.i
  %bSubframeSize.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %retval.2.i.i, i32 0, i32 5
  %98 = ptrtoint ptr %bSubframeSize.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bSubframeSize.i, align 1
  %100 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values)
  switch i8 %99, label %do.end.i [
    i8 3, label %if.end.i.sw.epilog.i_crit_edge
    i8 4, label %sw.bb5.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %21, align 8
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %102, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.36) #13
  br label %probe_error

sw.epilog.i:                                      ; preds = %sw.bb5.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i64 [ 1024, %sw.bb5.i ], [ 4294967296, %if.end.i.sw.epilog.i_crit_edge ]
  %format_bit6.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 6
  %103 = ptrtoint ptr %format_bit6.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %.sink.i, ptr %format_bit6.i, align 8
  %104 = ptrtoint ptr %bSubframeSize.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bSubframeSize.i, align 1
  %bSubframeSize10.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 5
  %106 = ptrtoint ptr %bSubframeSize10.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bSubframeSize10.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %107)
  %cmp.not.i = icmp eq i8 %105, %107
  br i1 %cmp.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %21, align 8
  %dev18.i = getelementptr inbounds %struct.usb_device, ptr %109, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.39) #13
  br label %probe_error

if.end19.i:                                       ; preds = %sw.epilog.i
  %bBitResolution.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %retval.2.i.i, i32 0, i32 6
  %110 = ptrtoint ptr %bBitResolution.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bBitResolution.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %111)
  %cmp21.not.i = icmp eq i8 %111, 24
  br i1 %cmp21.not.i, label %lor.lhs.false23.i, label %if.end19.i.do.end31.i_crit_edge

if.end19.i.do.end31.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

lor.lhs.false23.i:                                ; preds = %if.end19.i
  %bBitResolution24.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 6
  %112 = ptrtoint ptr %bBitResolution24.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bBitResolution24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %113)
  %cmp26.not.i = icmp eq i8 %113, 24
  br i1 %cmp26.not.i, label %if.end34.i, label %lor.lhs.false23.i.do.end31.i_crit_edge

lor.lhs.false23.i.do.end31.i_crit_edge:           ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i

do.end31.i:                                       ; preds = %lor.lhs.false23.i.do.end31.i_crit_edge, %if.end19.i.do.end31.i_crit_edge
  %114 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %21, align 8
  %dev33.i = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33.i, ptr noundef nonnull @.str.42) #13
  br label %probe_error

if.end34.i:                                       ; preds = %lor.lhs.false23.i
  %tSamFreq.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %retval.2.i.i, i32 0, i32 8
  %116 = ptrtoint ptr %tSamFreq.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tSamFreq.i, align 1
  %conv36.i = zext i8 %117 to i32
  %arrayidx39.i = getelementptr %struct.uac_format_type_i_discrete_descriptor, ptr %retval.2.i.i, i32 1, i32 1
  %118 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %119 to i32
  %shl.i = shl nuw nsw i32 %conv40.i, 8
  %or.i = or i32 %shl.i, %conv36.i
  %arrayidx43.i = getelementptr %struct.uac_format_type_i_discrete_descriptor, ptr %retval.2.i.i, i32 1, i32 2
  %120 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx43.i, align 1
  %conv44.i = zext i8 %121 to i32
  %shl45.i = shl nuw nsw i32 %conv44.i, 16
  %or46.i = or i32 %or.i, %shl45.i
  %rate.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 7
  %122 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or46.i, ptr %rate.i, align 8
  %tSamFreq47.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 8
  %123 = ptrtoint ptr %tSamFreq47.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %tSamFreq47.i, align 1
  %conv50.i = zext i8 %124 to i32
  %arrayidx53.i = getelementptr %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 1, i32 1
  %125 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %126 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 8
  %or56.i = or i32 %shl55.i, %conv50.i
  %arrayidx59.i = getelementptr %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 1, i32 2
  %127 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = zext i8 %128 to i32
  %shl61.i = shl nuw nsw i32 %conv60.i, 16
  %or62.i = or i32 %or56.i, %shl61.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or46.i, i32 %or62.i)
  %cmp64.not.i = icmp eq i32 %or46.i, %or62.i
  %129 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %21, align 8
  br i1 %cmp64.not.i, label %if.end73.i, label %do.end69.i

do.end69.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev71.i = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71.i, ptr noundef nonnull @.str.45, i32 noundef %or62.i, i32 noundef %or46.i) #13
  br label %probe_error

if.end73.i:                                       ; preds = %if.end34.i
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 4
  %131 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %speed.i, align 4
  %133 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %132, label %do.end81.i [
    i32 2, label %if.end73.i.sw.epilog84.i_crit_edge
    i32 3, label %sw.bb76.i
  ]

if.end73.i.sw.epilog84.i_crit_edge:               ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog84.i

sw.bb76.i:                                        ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog84.i

do.end81.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev83.i = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83.i, ptr noundef nonnull @.str.48) #13
  br label %probe_error

sw.epilog84.i:                                    ; preds = %sw.bb76.i, %if.end73.i.sw.epilog84.i_crit_edge
  %.sink280.i = phi i32 [ 8000, %sw.bb76.i ], [ 1000, %if.end73.i.sw.epilog84.i_crit_edge ]
  %packets_per_second77.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 8
  %134 = ptrtoint ptr %packets_per_second77.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %.sink280.i, ptr %packets_per_second77.i, align 4
  %bNrChannels.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %retval.2.i.i, i32 0, i32 4
  %135 = ptrtoint ptr %bNrChannels.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bNrChannels.i, align 1
  %conv85.i = zext i8 %136 to i32
  %channels.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 20, i32 2
  %137 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv85.i, ptr %channels.i, align 4
  %bNrChannels86.i = getelementptr inbounds %struct.uac_format_type_i_discrete_descriptor, ptr %extra.0101.i225.i, i32 0, i32 4
  %138 = ptrtoint ptr %bNrChannels86.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %bNrChannels86.i, align 1
  %conv87.i = zext i8 %139 to i32
  %channels88.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 21, i32 2
  %140 = ptrtoint ptr %channels88.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %conv87.i, ptr %channels88.i, align 8
  %141 = ptrtoint ptr %bSubframeSize.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %bSubframeSize.i, align 1
  %conv90.i = zext i8 %142 to i32
  %mul.i = mul nuw nsw i32 %conv90.i, %conv85.i
  %frame_bytes.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 20, i32 3
  %143 = ptrtoint ptr %frame_bytes.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %mul.i, ptr %frame_bytes.i, align 4
  %144 = ptrtoint ptr %bSubframeSize10.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bSubframeSize10.i, align 1
  %conv95.i = zext i8 %145 to i32
  %mul98.i = mul nuw nsw i32 %conv95.i, %conv87.i
  %frame_bytes100.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 21, i32 3
  %146 = ptrtoint ptr %frame_bytes100.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %mul98.i, ptr %frame_bytes100.i, align 4
  %147 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx58, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 8
  %endpoint.i = getelementptr %struct.usb_host_interface, ptr %150, i32 1, i32 3
  %151 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %endpoint.i, align 4
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %bmAttributes.i.i.i, align 1
  %155 = and i8 %154, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp.i.not.i.i = icmp eq i8 %155, 1
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_isoc_in.exit.i, label %sw.epilog84.i.do.end114.i_crit_edge

sw.epilog84.i.do.end114.i_crit_edge:              ; preds = %sw.epilog84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114.i

usb_endpoint_is_isoc_in.exit.i:                   ; preds = %sw.epilog84.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %152, i32 0, i32 2
  %156 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %157)
  %tobool106.not.i = icmp sgt i8 %157, -1
  br i1 %tobool106.not.i, label %usb_endpoint_is_isoc_in.exit.i.do.end114.i_crit_edge, label %lor.lhs.false107.i

usb_endpoint_is_isoc_in.exit.i.do.end114.i_crit_edge: ; preds = %usb_endpoint_is_isoc_in.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114.i

lor.lhs.false107.i:                               ; preds = %usb_endpoint_is_isoc_in.exit.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %152, i32 0, i32 4
  %158 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %160 = and i16 %159, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %cmp109.i = icmp eq i16 %160, 0
  br i1 %cmp109.i, label %lor.lhs.false107.i.do.end114.i_crit_edge, label %if.end117.i

lor.lhs.false107.i.do.end114.i_crit_edge:         ; preds = %lor.lhs.false107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end114.i

do.end114.i:                                      ; preds = %lor.lhs.false107.i.do.end114.i_crit_edge, %usb_endpoint_is_isoc_in.exit.i.do.end114.i_crit_edge, %sw.epilog84.i.do.end114.i_crit_edge
  %dev116.i = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116.i, ptr noundef nonnull @.str.51) #13
  br label %probe_error

if.end117.i:                                      ; preds = %lor.lhs.false107.i
  %161 = and i8 %157, 15
  %and.i252.i = zext i8 %161 to i32
  %162 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %130, align 8
  %shl.i.i = shl i32 %163, 8
  %shl1.i.i = shl nuw nsw i32 %and.i252.i, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or122.i = or i32 %or.i.i, 128
  %usb_pipe.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 20, i32 1
  %164 = ptrtoint ptr %usb_pipe.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or122.i, ptr %usb_pipe.i, align 4
  %165 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 2)
  %166 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %167 = and i16 %166, -249
  %168 = call i16 @llvm.bswap.i16(i16 %167) #10
  %and.i254.i = zext i16 %168 to i32
  %max_packet_bytes.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 20, i32 4
  %169 = ptrtoint ptr %max_packet_bytes.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %and.i254.i, ptr %max_packet_bytes.i, align 4
  %170 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %75, align 8
  %endpoint130.i = getelementptr %struct.usb_host_interface, ptr %171, i32 1, i32 3
  %172 = ptrtoint ptr %endpoint130.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %endpoint130.i, align 4
  %bmAttributes.i.i255.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %bmAttributes.i.i255.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %bmAttributes.i.i255.i, align 1
  %176 = and i8 %175, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %176)
  %cmp.i.not.i256.i = icmp eq i8 %176, 1
  br i1 %cmp.i.not.i256.i, label %usb_endpoint_is_isoc_out.exit.i, label %if.end117.i.do.end142.i_crit_edge

if.end117.i.do.end142.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end142.i

usb_endpoint_is_isoc_out.exit.i:                  ; preds = %if.end117.i
  %bEndpointAddress.i.i257.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %173, i32 0, i32 2
  %177 = ptrtoint ptr %bEndpointAddress.i.i257.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bEndpointAddress.i.i257.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool134.not.i = icmp slt i8 %178, 0
  br i1 %tobool134.not.i, label %usb_endpoint_is_isoc_out.exit.i.do.end142.i_crit_edge, label %lor.lhs.false135.i

usb_endpoint_is_isoc_out.exit.i.do.end142.i_crit_edge: ; preds = %usb_endpoint_is_isoc_out.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end142.i

lor.lhs.false135.i:                               ; preds = %usb_endpoint_is_isoc_out.exit.i
  %wMaxPacketSize.i259.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %173, i32 0, i32 4
  %179 = ptrtoint ptr %wMaxPacketSize.i259.i to i32
  call void @__asan_loadN_noabort(i32 %179, i32 2)
  %180 = load i16, ptr %wMaxPacketSize.i259.i, align 1
  %181 = and i16 %180, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %cmp137.i = icmp eq i16 %181, 0
  br i1 %cmp137.i, label %lor.lhs.false135.i.do.end142.i_crit_edge, label %if.end87

lor.lhs.false135.i.do.end142.i_crit_edge:         ; preds = %lor.lhs.false135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end142.i

do.end142.i:                                      ; preds = %lor.lhs.false135.i.do.end142.i_crit_edge, %usb_endpoint_is_isoc_out.exit.i.do.end142.i_crit_edge, %if.end117.i.do.end142.i_crit_edge
  %dev144.i = getelementptr inbounds %struct.usb_device, ptr %130, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev144.i, ptr noundef nonnull @.str.54) #13
  br label %probe_error

if.end87:                                         ; preds = %lor.lhs.false135.i
  %182 = and i8 %178, 15
  %and.i262.i = zext i8 %182 to i32
  %183 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %130, align 8
  %shl.i263.i = shl i32 %184, 8
  %shl1.i264.i = shl nuw nsw i32 %and.i262.i, 15
  %or.i265.i = or i32 %shl.i263.i, %shl1.i264.i
  %usb_pipe151.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 21, i32 1
  %185 = ptrtoint ptr %usb_pipe151.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or.i265.i, ptr %usb_pipe151.i, align 4
  %186 = ptrtoint ptr %wMaxPacketSize.i259.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 2)
  %187 = load i16, ptr %wMaxPacketSize.i259.i, align 1
  %188 = and i16 %187, -249
  %189 = call i16 @llvm.bswap.i16(i16 %188) #10
  %and.i267.i = zext i16 %189 to i32
  %max_packet_bytes154.i = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 21, i32 4
  %190 = ptrtoint ptr %max_packet_bytes154.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %and.i267.i, ptr %max_packet_bytes154.i, align 8
  %191 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %idProduct, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %192)
  %cmp90 = icmp eq i16 %192, 68
  %cond = select i1 %cmp90, ptr @.str.18, ptr @.str.19
  %193 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %194, i32 0, i32 2
  %195 = call ptr @memcpy(ptr %driver, ptr @.str.19, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %194, i32 0, i32 3
  %call94 = call ptr @strcpy(ptr noundef %shortname, ptr noundef nonnull %cond) #14
  %196 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %21, align 8
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %197, i32 0, i32 12
  %198 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %199, i32 0, i32 3
  %200 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %197, i32 0, i32 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %usb_path, i32 noundef 32, ptr noundef nonnull @.str.72, ptr noundef %201, ptr noundef %devpath.i) #10
  %202 = ptrtoint ptr %card25 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %card25, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %21, align 8
  %serial = getelementptr inbounds %struct.usb_device, ptr %205, i32 0, i32 33
  %206 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %serial, align 8
  %tobool101.not = icmp eq ptr %207, null
  %spec.select = select i1 %tobool101.not, ptr @.str.21, ptr %207
  %208 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rate.i, align 8
  %speed = getelementptr inbounds %struct.usb_device, ptr %205, i32 0, i32 4
  %210 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %211)
  %cmp107 = icmp eq i32 %211, 3
  %cond109 = select i1 %cmp107, ptr @.str.22, ptr @.str.23
  %call110 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, ptr noundef nonnull %spec.select, i32 noundef %209, ptr noundef nonnull %usb_path, ptr noundef nonnull %cond109)
  %capture = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 20
  %call111 = call fastcc i32 @alloc_stream_buffers(ptr noundef %21, ptr noundef %capture)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end87.probe_error_crit_edge, label %if.end115

if.end87.probe_error_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end115:                                        ; preds = %if.end87
  %playback = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 21
  %call116 = call fastcc i32 @alloc_stream_buffers(ptr noundef %21, ptr noundef %playback)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.end115.probe_error_crit_edge, label %if.end120

if.end115.probe_error_crit_edge:                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end120:                                        ; preds = %if.end115
  %call122 = call fastcc i32 @alloc_stream_urbs(ptr noundef %21, ptr noundef %capture, ptr noundef nonnull @capture_urb_complete)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.end120.probe_error_crit_edge, label %if.end126

if.end120.probe_error_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end126:                                        ; preds = %if.end120
  %call128 = call fastcc i32 @alloc_stream_urbs(ptr noundef %21, ptr noundef %playback, ptr noundef nonnull @playback_urb_complete)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.end126.probe_error_crit_edge, label %if.end132

if.end126.probe_error_crit_edge:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end132:                                        ; preds = %if.end126
  %212 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %card, align 4
  %pcm = getelementptr inbounds %struct.ua101, ptr %21, i32 0, i32 4
  %call133 = call i32 @snd_pcm_new(ptr noundef %213, ptr noundef nonnull %cond, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %pcm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.end132.probe_error_crit_edge, label %if.end137

if.end132.probe_error_crit_edge:                  ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end137:                                        ; preds = %if.end132
  %214 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %pcm, align 8
  %private_data139 = getelementptr inbounds %struct.snd_pcm, ptr %215, i32 0, i32 11
  %216 = ptrtoint ptr %private_data139 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %21, ptr %private_data139, align 8
  %217 = load ptr, ptr %pcm, align 8
  %name141 = getelementptr inbounds %struct.snd_pcm, ptr %217, i32 0, i32 7
  %call143 = call ptr @strcpy(ptr noundef %name141, ptr noundef nonnull %cond) #14
  %218 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pcm, align 8
  call void @snd_pcm_set_ops(ptr noundef %219, i32 noundef 0, ptr noundef nonnull @playback_pcm_ops) #10
  %220 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %pcm, align 8
  call void @snd_pcm_set_ops(ptr noundef %221, i32 noundef 1, ptr noundef nonnull @capture_pcm_ops) #10
  %222 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pcm, align 8
  %call147 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %223, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %224 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %card, align 4
  %226 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %arrayidx58.1, align 8
  %call.i257 = call i32 @__snd_usbmidi_create(ptr noundef %225, ptr noundef %227, ptr noundef %midi_list, ptr noundef nonnull @ua101_probe.midi_quirk, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp152 = icmp slt i32 %call.i257, 0
  br i1 %cmp152, label %if.end137.probe_error_crit_edge, label %if.end155

if.end137.probe_error_crit_edge:                  ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end155:                                        ; preds = %if.end137
  %228 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %card, align 4
  %call156 = call i32 @snd_card_register(ptr noundef %229) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.end155.probe_error_crit_edge, label %if.end160

if.end155.probe_error_crit_edge:                  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %probe_error

if.end160:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %230 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %21, ptr %driver_data.i.i, align 4
  %231 = load i32, ptr @devices_used, align 4
  %or = or i32 %231, %shl
  store i32 %or, ptr @devices_used, align 4
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #10
  br label %cleanup

probe_error:                                      ; preds = %if.end155.probe_error_crit_edge, %if.end137.probe_error_crit_edge, %if.end132.probe_error_crit_edge, %if.end126.probe_error_crit_edge, %if.end120.probe_error_crit_edge, %if.end115.probe_error_crit_edge, %if.end87.probe_error_crit_edge, %do.end142.i, %do.end114.i, %do.end81.i, %do.end69.i, %do.end31.i, %do.end16.i, %do.end.i, %find_format_descriptor.exit251.i.probe_error_crit_edge, %find_format_descriptor.exit251.thread.i, %if.then76, %do.end65
  %err.0 = phi i32 [ -16, %if.then76 ], [ -6, %do.end65 ], [ %call111, %if.end87.probe_error_crit_edge ], [ %call116, %if.end115.probe_error_crit_edge ], [ %call122, %if.end120.probe_error_crit_edge ], [ %call128, %if.end126.probe_error_crit_edge ], [ %call133, %if.end132.probe_error_crit_edge ], [ %call.i257, %if.end137.probe_error_crit_edge ], [ %call156, %if.end155.probe_error_crit_edge ], [ -6, %do.end.i ], [ -6, %do.end16.i ], [ -6, %do.end31.i ], [ -6, %do.end69.i ], [ -6, %do.end81.i ], [ -6, %do.end114.i ], [ -6, %do.end142.i ], [ -6, %find_format_descriptor.exit251.i.probe_error_crit_edge ], [ -6, %find_format_descriptor.exit251.thread.i ]
  call fastcc void @free_usb_related_resources(ptr noundef %21, ptr noundef %interface)
  %232 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %card, align 4
  %call162 = call i32 @snd_card_free(ptr noundef %233) #10
  call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %probe_error, %if.end160, %if.then21, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then15 ], [ %call, %if.then21 ], [ %err.0, %probe_error ], [ 0, %if.end160 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %usb_path) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ua101_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @devices_mutex, i32 noundef 0) #10
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 8, ptr noundef %states) #10
  %rate_feedback_wait = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %rate_feedback_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %card = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call1 = tail call i32 @snd_card_disconnect(ptr noundef %3) #10
  %midi_list = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %midi_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %midi.031 = load ptr, ptr %midi_list, align 4
  %cmp.i.not32 = icmp eq ptr %midi.031, %midi_list
  br i1 %cmp.i.not32, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %midi.033 = phi ptr [ %midi.0, %for.body.for.body_crit_edge ], [ %midi.031, %if.end.for.body_crit_edge ]
  tail call void @snd_usbmidi_disconnect(ptr noundef %midi.033) #10
  %5 = ptrtoint ptr %midi.033 to i32
  call void @__asan_load4_noabort(i32 %5)
  %midi.0 = load ptr, ptr %midi.033, align 4
  %cmp.i.not = icmp eq ptr %midi.0, %midi_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %6 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %states, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %for.end.abort_alsa_playback.exit_crit_edge, label %if.then.i

for.end.abort_alsa_playback.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_alsa_playback.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %playback.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %playback.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %playback.i, align 8
  %call1.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %10) #10
  br label %abort_alsa_playback.exit

abort_alsa_playback.exit:                         ; preds = %if.then.i, %for.end.abort_alsa_playback.exit_crit_edge
  %11 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %states, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i28 = icmp eq i32 %13, 0
  br i1 %tobool.not.i28, label %abort_alsa_playback.exit.abort_alsa_capture.exit_crit_edge, label %if.then.i30

abort_alsa_playback.exit.abort_alsa_capture.exit_crit_edge: ; preds = %abort_alsa_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_alsa_capture.exit

if.then.i30:                                      ; preds = %abort_alsa_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  %capture.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %capture.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %capture.i, align 4
  %call1.i29 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %15) #10
  br label %abort_alsa_capture.exit

abort_alsa_capture.exit:                          ; preds = %if.then.i30, %abort_alsa_playback.exit.abort_alsa_capture.exit_crit_edge
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call fastcc void @stop_usb_playback(ptr noundef nonnull %1)
  tail call fastcc void @stop_usb_capture(ptr noundef nonnull %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  tail call fastcc void @free_usb_related_resources(ptr noundef nonnull %1, ptr noundef %interface)
  %card_index = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %card_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %card_index, align 4
  %shl = shl nuw i32 1, %17
  %neg = xor i32 %shl, -1
  %18 = load i32, ptr @devices_used, align 4
  %and = and i32 %18, %neg
  store i32 %and, ptr @devices_used, align 4
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %call8 = tail call i32 @snd_card_free_when_closed(ptr noundef %20) #10
  tail call void @mutex_unlock(ptr noundef nonnull @devices_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %abort_alsa_capture.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ua101_card_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @playback_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -244
  %states = getelementptr i8, ptr %work, i32 -52
  %0 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %states, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body4, !prof !222

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 -188
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %rate_feedback_count = getelementptr i8, ptr %work, i32 -44
  %3 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rate_feedback_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10.not113 = icmp eq i32 %4, 0
  br i1 %cmp10.not113, label %cleanup.critedge, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %do.body4
  %ready_playback_urbs = getelementptr i8, ptr %work, i32 -8
  %rate_feedback = getelementptr i8, ptr %work, i32 -40
  %rate_feedback_start = getelementptr i8, ptr %work, i32 -48
  %queue_length.i = getelementptr i8, ptr %work, i32 440
  %playback = getelementptr i8, ptr %work, i32 412
  %frame_bytes = getelementptr i8, ptr %work, i32 424
  %buffer_pos.i = getelementptr i8, ptr %work, i32 436
  %period_pos.i = getelementptr i8, ptr %work, i32 432
  br label %land.rhs

land.rhs:                                         ; preds = %if.end59.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = phi i32 [ %4, %land.rhs.lr.ph ], [ %80, %if.end59.land.rhs_crit_edge ]
  %do_period_elapsed.0.off0114 = phi i1 [ false, %land.rhs.lr.ph ], [ %do_period_elapsed.1.off0, %if.end59.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %ready_playback_urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ready_playback_urbs, align 4
  %cmp.i.not = icmp eq ptr %7, %ready_playback_urbs
  br i1 %cmp.i.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate_feedback_start, align 4
  %arrayidx = getelementptr [30 x i8], ptr %rate_feedback, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %11 to i32
  %add1.i = add i32 %9, 1
  store i32 %add1.i, ptr %rate_feedback_start, align 4
  %12 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %13)
  %cmp.not.i = icmp ult i32 %add1.i, %13
  br i1 %cmp.not.i, label %while.body.add_with_wraparound.exit_crit_edge, label %if.then.i

while.body.add_with_wraparound.exit_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_with_wraparound.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %add1.i, %13
  %14 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %rate_feedback_start, align 4
  br label %add_with_wraparound.exit

add_with_wraparound.exit:                         ; preds = %if.then.i, %while.body.add_with_wraparound.exit_crit_edge
  %dec = add i32 %5, -1
  %15 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %rate_feedback_count, align 8
  %add.ptr22 = getelementptr i8, ptr %7, i32 -140
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %add_with_wraparound.exit.list_del.exit_crit_edge

add_with_wraparound.exit.list_del.exit_crit_edge: ; preds = %add_with_wraparound.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %add_with_wraparound.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %add_with_wraparound.exit.list_del.exit_crit_edge
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %24 = ptrtoint ptr %frame_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_bytes, align 4
  %mul = mul i32 %25, %conv16
  %length = getelementptr i8, ptr %7, i32 -12
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul, ptr %length, align 4
  %27 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %states, align 4
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not = icmp eq i32 %29, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %list_del.exit
  %30 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %playback, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime1.i, align 4
  %34 = ptrtoint ptr %frame_bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_bytes, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 50
  %36 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_area.i, align 4
  %38 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buffer_pos.i, align 4
  %mul.i = mul i32 %39, %35
  %add.ptr.i = getelementptr i8, ptr %37, i32 %mul.i
  %add.i = add i32 %39, %conv16
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 18
  %40 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %41)
  %cmp.not.i107 = icmp ugt i32 %add.i, %41
  br i1 %cmp.not.i107, label %if.else.i, label %if.then.i108

if.then.i108:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer.i = getelementptr i8, ptr %7, i32 -76
  %42 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %transfer_buffer.i, align 4
  %mul4.i = mul i32 %35, %conv16
  %44 = call ptr @memcpy(ptr %43, ptr %add.ptr.i, i32 %mul4.i)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i109 = sub i32 %41, %39
  %transfer_buffer7.i = getelementptr i8, ptr %7, i32 -76
  %45 = ptrtoint ptr %transfer_buffer7.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transfer_buffer7.i, align 4
  %mul8.i = mul i32 %sub.i109, %35
  %47 = call ptr @memcpy(ptr %46, ptr %add.ptr.i, i32 %mul8.i)
  %48 = load ptr, ptr %transfer_buffer7.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %48, i32 %mul8.i
  %49 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_area.i, align 4
  %sub13.i = sub i32 %conv16, %sub.i109
  %mul14.i = mul i32 %sub13.i, %35
  %51 = call ptr @memcpy(ptr %add.ptr11.i, ptr %50, i32 %mul14.i)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i108
  %52 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buffer_pos.i, align 4
  %add16.i = add i32 %53, %conv16
  store i32 %add16.i, ptr %buffer_pos.i, align 4
  %54 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i, i32 %55)
  %cmp19.not.i = icmp ult i32 %add16.i, %55
  br i1 %cmp19.not.i, label %if.end.i.if.end24.i_crit_edge, label %if.then20.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub23.i = sub i32 %add16.i, %55
  %56 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub23.i, ptr %buffer_pos.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end.i.if.end24.i_crit_edge
  %57 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %period_pos.i, align 4
  %add25.i = add i32 %58, %conv16
  store i32 %add25.i, ptr %period_pos.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 16
  %59 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %60)
  %cmp27.not.i = icmp ult i32 %add25.i, %60
  br i1 %cmp27.not.i, label %if.end24.i.copy_playback_data.exit_crit_edge, label %if.then28.i

if.end24.i.copy_playback_data.exit_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_playback_data.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub31.i = sub i32 %add25.i, %60
  %61 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub31.i, ptr %period_pos.i, align 4
  br label %copy_playback_data.exit

copy_playback_data.exit:                          ; preds = %if.then28.i, %if.end24.i.copy_playback_data.exit_crit_edge
  %62 = xor i1 %cmp27.not.i, true
  %or104 = or i1 %do_period_elapsed.0.off0114, %62
  br label %if.end41

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer = getelementptr i8, ptr %7, i32 -76
  %63 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %transfer_buffer, align 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 %mul)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %copy_playback_data.exit
  %do_period_elapsed.1.off0 = phi i1 [ %or104, %copy_playback_data.exit ], [ %do_period_elapsed.0.off0114, %if.else ]
  %call43 = tail call i32 @usb_submit_urb(ptr noundef %add.ptr22, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then52, label %if.end59, !prof !222

if.then52:                                        ; preds = %if.end41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  tail call fastcc void @abort_usb_playback(ptr noundef %add.ptr)
  %66 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %states, align 4
  %68 = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i, label %if.then52.abort_alsa_playback.exit_crit_edge, label %if.then.i110

if.then52.abort_alsa_playback.exit_crit_edge:     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_alsa_playback.exit

if.then.i110:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %playback, align 8
  %call1.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %70) #10
  br label %abort_alsa_playback.exit

abort_alsa_playback.exit:                         ; preds = %if.then.i110, %if.then52.abort_alsa_playback.exit_crit_edge
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 8
  %dev57 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  %call58 = tail call fastcc ptr @usb_error_string(i32 noundef %call43)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.26, i32 noundef %call43, ptr noundef nonnull %call58) #13
  br label %cleanup

if.end59:                                         ; preds = %if.end41
  %73 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %playback, align 8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %runtime, align 4
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay, align 4
  %add = add i32 %78, %conv16
  store i32 %add, ptr %delay, align 4
  %79 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rate_feedback_count, align 8
  %cmp10.not = icmp eq i32 %80, 0
  br i1 %cmp10.not, label %if.end59.while.end_crit_edge, label %if.end59.land.rhs_crit_edge

if.end59.land.rhs_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end59.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %do_period_elapsed.0.off0.lcssa = phi i1 [ %do_period_elapsed.1.off0, %if.end59.while.end_crit_edge ], [ %do_period_elapsed.0.off0114, %land.rhs.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  br i1 %do_period_elapsed.0.off0.lcssa, label %if.then63, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then63:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %playback, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %82) #10
  br label %cleanup

cleanup.critedge:                                 ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then63, %while.end.cleanup_crit_edge, %abort_alsa_playback.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_stream_buffers(ptr nocapture noundef readonly %ua, ptr noundef %stream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @queue_length, align 4
  %queue_length = getelementptr inbounds %struct.ua101_stream, ptr %stream, i32 0, i32 7
  %1 = tail call i32 @llvm.umax.i32(i32 %0, i32 12)
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 30)
  %3 = ptrtoint ptr %queue_length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %queue_length, align 4
  %max_packet_bytes = getelementptr inbounds %struct.ua101_stream, ptr %stream, i32 0, i32 4
  %4 = ptrtoint ptr %max_packet_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_packet_bytes, align 4
  %div = udiv i32 4096, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %2, i32 %div)
  %mul = mul i32 %5, %6
  %7 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ua, align 8
  %dma = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 0, i32 2
  %call = tail call ptr @usb_alloc_coherent(ptr noundef %8, i32 noundef %mul, i32 noundef 3264, ptr noundef %dma) #10
  %addr = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %addr, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %div)
  %11 = ptrtoint ptr %max_packet_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_packet_bytes, align 4
  %mul.1 = mul i32 %12, %10
  %13 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ua, align 8
  %dma.1 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 1, i32 2
  %call.1 = tail call ptr @usb_alloc_coherent(ptr noundef %14, i32 noundef %mul.1, i32 noundef 3264, ptr noundef %dma.1) #10
  %addr.1 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 1, i32 1
  %15 = ptrtoint ptr %addr.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.1, ptr %addr.1, align 4
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %if.end.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %arrayidx.1 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul.1, ptr %arrayidx.1, align 4
  %sub.1 = sub nsw i32 %sub, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %div)
  %tobool28.not.1.not = icmp ugt i32 %sub, %div
  br i1 %tobool28.not.1.not, label %for.cond.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %17 = tail call i32 @llvm.umin.i32(i32 %sub.1, i32 %div)
  %18 = ptrtoint ptr %max_packet_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_packet_bytes, align 4
  %mul.2 = mul i32 %19, %17
  %20 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ua, align 8
  %dma.2 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 2, i32 2
  %call.2 = tail call ptr @usb_alloc_coherent(ptr noundef %21, i32 noundef %mul.2, i32 noundef 3264, ptr noundef %dma.2) #10
  %addr.2 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 2, i32 1
  %22 = ptrtoint ptr %addr.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.2, ptr %addr.2, align 4
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.cond.1.cleanup_crit_edge, label %if.end.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  %arrayidx.2 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.2, ptr %arrayidx.2, align 4
  %sub.2 = sub nsw i32 %sub.1, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1, i32 %div)
  %tobool28.not.2.not = icmp ugt i32 %sub.1, %div
  br i1 %tobool28.not.2.not, label %for.cond.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  %24 = tail call i32 @llvm.umin.i32(i32 %sub.2, i32 %div)
  %25 = ptrtoint ptr %max_packet_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_packet_bytes, align 4
  %mul.3 = mul i32 %26, %24
  %27 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ua, align 8
  %dma.3 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 3, i32 2
  %call.3 = tail call ptr @usb_alloc_coherent(ptr noundef %28, i32 noundef %mul.3, i32 noundef 3264, ptr noundef %dma.3) #10
  %addr.3 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 3, i32 1
  %29 = ptrtoint ptr %addr.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.3, ptr %addr.3, align 4
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %for.cond.2.cleanup_crit_edge, label %if.end.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.3:                                         ; preds = %for.cond.2
  %arrayidx.3 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul.3, ptr %arrayidx.3, align 4
  %sub.3 = sub nsw i32 %sub.2, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2, i32 %div)
  %tobool28.not.3.not = icmp ugt i32 %sub.2, %div
  br i1 %tobool28.not.3.not, label %for.cond.3, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.3:                                       ; preds = %if.end.3
  %31 = tail call i32 @llvm.umin.i32(i32 %sub.3, i32 %div)
  %32 = ptrtoint ptr %max_packet_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_packet_bytes, align 4
  %mul.4 = mul i32 %33, %31
  %34 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ua, align 8
  %dma.4 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 4, i32 2
  %call.4 = tail call ptr @usb_alloc_coherent(ptr noundef %35, i32 noundef %mul.4, i32 noundef 3264, ptr noundef %dma.4) #10
  %addr.4 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 4, i32 1
  %36 = ptrtoint ptr %addr.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.4, ptr %addr.4, align 4
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %for.cond.3.cleanup_crit_edge, label %if.end.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.4:                                         ; preds = %for.cond.3
  %arrayidx.4 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 4
  %37 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.4, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3, i32 %div)
  %tobool28.not.4.not = icmp ugt i32 %sub.3, %div
  br i1 %tobool28.not.4.not, label %for.cond.4, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ua, align 8
  %dev34 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.73) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 0
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %arrayidx, align 4
  %sub = sub nsw i32 %2, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %div)
  %tobool28.not.not = icmp ugt i32 %2, %div
  br i1 %tobool28.not.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.cond.4, %if.end.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %for.cond.4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ -12, %for.cond.1.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ -12, %for.cond.2.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ -12, %for.cond.3.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_stream_urbs(ptr noundef %ua, ptr nocapture noundef %stream, ptr noundef %urb_complete) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %max_packet_bytes = getelementptr inbounds %struct.ua101_stream, ptr %stream, i32 0, i32 4
  %0 = ptrtoint ptr %max_packet_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_packet_bytes, align 4
  %queue_length = getelementptr inbounds %struct.ua101_stream, ptr %stream, i32 0, i32 7
  %usb_pipe = getelementptr inbounds %struct.ua101_stream, ptr %stream, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %u.093 = phi i32 [ 0, %entry ], [ %u.1.lcssa, %for.inc.for.body_crit_edge ]
  %b.092 = phi i32 [ 0, %entry ], [ %inc32, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 %b.092
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp8.not87 = icmp ult i32 %3, %1
  br i1 %cmp8.not87, label %for.body.for.inc_crit_edge, label %while.body.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body.preheader:                             ; preds = %for.body
  %dma7 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 %b.092, i32 2
  %4 = ptrtoint ptr %dma7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma7, align 4
  %addr4 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 9, i32 %b.092, i32 1
  %6 = ptrtoint ptr %addr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr4, align 4
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.preheader
  %dma.091 = phi i32 [ %add, %if.end11.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %addr.090 = phi ptr [ %add.ptr, %if.end11.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %size.089 = phi i32 [ %sub, %if.end11.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %u.188 = phi i32 [ %inc, %if.end11.while.body_crit_edge ], [ %u.093, %while.body.preheader ]
  %8 = ptrtoint ptr %queue_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %u.188, i32 %9)
  %cmp9.not = icmp ult i32 %u.188, %9
  br i1 %cmp9.not, label %if.end, label %while.body.do.end_crit_edge

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 148) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup39_crit_edge, label %if.end11

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.end11:                                         ; preds = %if.end
  tail call void @usb_init_urb(ptr noundef nonnull %call7.i) #10
  %11 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ua, align 8
  %dev14 = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 8
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev14, align 8
  %14 = ptrtoint ptr %usb_pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_pipe, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 10
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pipe, align 8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 13
  %17 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %transfer_flags, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %addr.090, ptr %transfer_buffer, align 8
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 15
  %19 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dma.091, ptr %transfer_dma, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %1, ptr %transfer_buffer_length, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 24
  %21 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %number_of_packets, align 8
  %interval = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 25
  %22 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %interval, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 27
  %23 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ua, ptr %context, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 28
  %24 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %urb_complete, ptr %complete, align 8
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 29
  %25 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %iso_frame_desc, align 4
  %length = getelementptr inbounds %struct.urb, ptr %call7.i, i32 1, i32 1
  %26 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %1, ptr %length, align 8
  %inc = add nuw i32 %u.188, 1
  %arrayidx29 = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 8, i32 %u.188
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %arrayidx29, align 4
  %sub = sub i32 %size.089, %1
  %add.ptr = getelementptr i8, ptr %addr.090, i32 %1
  %add = add i32 %dma.091, %1
  %cmp8.not = icmp ult i32 %sub, %1
  br i1 %cmp8.not, label %if.end11.for.inc_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %u.1.lcssa = phi i32 [ %u.093, %for.body.for.inc_crit_edge ], [ %inc, %if.end11.for.inc_crit_edge ]
  %inc32 = add nuw nsw i32 %b.092, 1
  %exitcond.not = icmp eq i32 %inc32, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %28 = ptrtoint ptr %queue_length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %queue_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %u.1.lcssa, i32 %29)
  %cmp34 = icmp eq i32 %u.1.lcssa, %29
  br i1 %cmp34, label %for.end.cleanup39_crit_edge, label %for.end.do.end_crit_edge

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.end.cleanup39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

do.end:                                           ; preds = %for.end.do.end_crit_edge, %while.body.do.end_crit_edge
  %30 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ua, align 8
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.75) #13
  br label %cleanup39

cleanup39:                                        ; preds = %do.end, %for.end.cleanup39_crit_edge, %if.end.cleanup39_crit_edge
  %retval.2 = phi i32 [ -6, %do.end ], [ 0, %for.end.cleanup39_crit_edge ], [ -12, %if.end.cleanup39_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capture_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %capture = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %if.end.critedge [
    i32 -2, label %entry.stream_stopped_crit_edge
    i32 -19, label %entry.stream_stopped_crit_edge172
    i32 -104, label %entry.stream_stopped_crit_edge173
    i32 -108, label %entry.stream_stopped_crit_edge174
  ], !prof !223

entry.stream_stopped_crit_edge174:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stream_stopped

entry.stream_stopped_crit_edge173:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stream_stopped

entry.stream_stopped_crit_edge172:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stream_stopped

entry.stream_stopped_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %stream_stopped

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp10 = icmp sgt i32 %3, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end.critedge.do.body17.thread_crit_edge

if.end.critedge.do.body17.thread_crit_edge:       ; preds = %if.end.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.thread

land.lhs.true:                                    ; preds = %if.end.critedge
  %status11 = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 3
  %5 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp12 = icmp sgt i32 %6, -1
  br i1 %cmp12, label %do.body17, label %land.lhs.true.do.body17.thread_crit_edge

land.lhs.true.do.body17.thread_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.thread

do.body17.thread:                                 ; preds = %land.lhs.true.do.body17.thread_crit_edge, %if.end.critedge.do.body17.thread_crit_edge
  %lock164 = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 9
  %call19165 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock164) #10
  br label %if.end30

do.body17:                                        ; preds = %land.lhs.true
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 1, i32 2
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  %frame_bytes = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20, i32 3
  %9 = ptrtoint ptr %frame_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frame_bytes, align 4
  %div = udiv i32 %8, %10
  %lock = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 9
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp22.not = icmp ugt i32 %10, %8
  br i1 %cmp22.not, label %do.body17.if.end30_crit_edge, label %land.lhs.true24

do.body17.if.end30_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true24:                                  ; preds = %do.body17
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %states, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool26.not = icmp eq i32 %13, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end30_crit_edge, label %if.then27

land.lhs.true24.if.end30_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true24
  %14 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %capture, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime1.i, align 4
  %18 = ptrtoint ptr %frame_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bytes, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 50
  %20 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_area.i, align 4
  %buffer_pos.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20, i32 6
  %22 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_pos.i, align 4
  %mul.i = mul i32 %23, %19
  %add.ptr.i = getelementptr i8, ptr %21, i32 %mul.i
  %add.i = add i32 %23, %div
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 18
  %24 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp.not.i = icmp ugt i32 %add.i, %25
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %26 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transfer_buffer.i, align 4
  %mul4.i = mul i32 %19, %div
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %27, i32 %mul4.i)
  br label %if.end.i

if.else.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %25, %23
  %transfer_buffer7.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer7.i, align 4
  %mul8.i = mul i32 %sub.i, %19
  %31 = call ptr @memcpy(ptr %add.ptr.i, ptr %30, i32 %mul8.i)
  %32 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_area.i, align 4
  %34 = load ptr, ptr %transfer_buffer7.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %34, i32 %mul8.i
  %sub13.i = sub i32 %div, %sub.i
  %mul14.i = mul i32 %sub13.i, %19
  %35 = call ptr @memcpy(ptr %33, ptr %add.ptr12.i, i32 %mul14.i)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %36 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer_pos.i, align 4
  %add16.i = add i32 %37, %div
  store i32 %add16.i, ptr %buffer_pos.i, align 4
  %38 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i, i32 %39)
  %cmp19.not.i = icmp ult i32 %add16.i, %39
  br i1 %cmp19.not.i, label %if.end.i.if.end24.i_crit_edge, label %if.then20.i

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub23.i = sub i32 %add16.i, %39
  %40 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub23.i, ptr %buffer_pos.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then20.i, %if.end.i.if.end24.i_crit_edge
  %period_pos.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20, i32 5
  %41 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %period_pos.i, align 4
  %add25.i = add i32 %42, %div
  store i32 %add25.i, ptr %period_pos.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 16
  %43 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i, i32 %44)
  %cmp27.not.i = icmp ult i32 %add25.i, %44
  br i1 %cmp27.not.i, label %if.end24.i.copy_capture_data.exit_crit_edge, label %if.then28.i

if.end24.i.copy_capture_data.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_capture_data.exit

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub31.i = sub i32 %add25.i, %44
  %45 = ptrtoint ptr %period_pos.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub31.i, ptr %period_pos.i, align 4
  br label %copy_capture_data.exit

copy_capture_data.exit:                           ; preds = %if.then28.i, %if.end24.i.copy_capture_data.exit_crit_edge
  %46 = xor i1 %cmp27.not.i, true
  br label %if.end30

if.end30:                                         ; preds = %copy_capture_data.exit, %land.lhs.true24.if.end30_crit_edge, %do.body17.if.end30_crit_edge, %do.body17.thread
  %call19170 = phi i32 [ %call19, %copy_capture_data.exit ], [ %call19, %land.lhs.true24.if.end30_crit_edge ], [ %call19, %do.body17.if.end30_crit_edge ], [ %call19165, %do.body17.thread ]
  %lock168 = phi ptr [ %lock, %copy_capture_data.exit ], [ %lock, %land.lhs.true24.if.end30_crit_edge ], [ %lock, %do.body17.if.end30_crit_edge ], [ %lock164, %do.body17.thread ]
  %frames.0167 = phi i32 [ %div, %copy_capture_data.exit ], [ %div, %land.lhs.true24.if.end30_crit_edge ], [ 0, %do.body17.if.end30_crit_edge ], [ 0, %do.body17.thread ]
  %do_period_elapsed.0.off0 = phi i1 [ %46, %copy_capture_data.exit ], [ false, %land.lhs.true24.if.end30_crit_edge ], [ false, %do.body17.if.end30_crit_edge ], [ false, %do.body17.thread ]
  %states31 = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %47 = ptrtoint ptr %states31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %states31, align 4
  %and1.i131 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i131)
  %tobool33.not = icmp eq i32 %and1.i131, 0
  br i1 %tobool33.not, label %if.end30.if.end78_crit_edge, label %if.then34

if.end30.if.end78_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then34:                                        ; preds = %if.end30
  %call35 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then44, label %if.end51, !prof !222

if.then44:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock168, i32 noundef %call19170) #10
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 15
  %call50 = tail call fastcc ptr @usb_error_string(i32 noundef %call35)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.26, i32 noundef %call35, ptr noundef nonnull %call50) #13
  br label %stream_stopped

if.end51:                                         ; preds = %if.then34
  %rate_feedback_start = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rate_feedback_start, align 4
  %rate_feedback_count = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 13
  %53 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rate_feedback_count, align 8
  %add1.i = add i32 %54, %52
  %queue_length.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21, i32 7
  %55 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %56)
  %cmp.not.i134 = icmp ult i32 %add1.i, %56
  %sub.i135 = select i1 %cmp.not.i134, i32 0, i32 %56
  %spec.select = sub i32 %add1.i, %sub.i135
  %conv52 = trunc i32 %frames.0167 to i8
  %arrayidx53 = getelementptr %struct.ua101, ptr %1, i32 0, i32 14, i32 %spec.select
  %57 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv52, ptr %arrayidx53, align 1
  %58 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rate_feedback_count, align 8
  %60 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp55 = icmp ult i32 %59, %61
  br i1 %cmp55, label %if.then57, label %if.else66

if.then57:                                        ; preds = %if.end51
  %inc = add nuw i32 %59, 1
  %62 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %inc, ptr %rate_feedback_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %61)
  %cmp62 = icmp eq i32 %inc, %61
  br i1 %cmp62, label %if.then64, label %if.then57.if.end68_crit_edge

if.then57.if.end68_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then64:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %rate_feedback_wait = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %rate_feedback_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end68

if.else66:                                        ; preds = %if.end51
  %63 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rate_feedback_start, align 4
  %add1.i138 = add i32 %64, 1
  store i32 %add1.i138, ptr %rate_feedback_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i138, i32 %61)
  %cmp.not.i140 = icmp ult i32 %add1.i138, %61
  br i1 %cmp.not.i140, label %if.else66.if.end68_crit_edge, label %if.then.i142

if.else66.if.end68_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then.i142:                                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i141 = sub i32 %add1.i138, %61
  %65 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub.i141, ptr %rate_feedback_start, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then.i142, %if.else66.if.end68_crit_edge, %if.then64, %if.then57.if.end68_crit_edge
  %66 = ptrtoint ptr %states31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %states31, align 4
  %68 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool71.not = icmp eq i32 %68, 0
  br i1 %tobool71.not, label %if.end68.if.end78_crit_edge, label %land.lhs.true72

if.end68.if.end78_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

land.lhs.true72:                                  ; preds = %if.end68
  %ready_playback_urbs = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 15
  %69 = ptrtoint ptr %ready_playback_urbs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %ready_playback_urbs, align 4
  %cmp.i.not = icmp eq ptr %70, %ready_playback_urbs
  br i1 %cmp.i.not, label %land.lhs.true72.if.end78_crit_edge, label %if.then75

land.lhs.true72.if.end78_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then75:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %71 = load ptr, ptr @system_highpri_wq, align 4
  %playback_work = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 16
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %playback_work) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %land.lhs.true72.if.end78_crit_edge, %if.end68.if.end78_crit_edge, %if.end30.if.end78_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock168, i32 noundef %call19170) #10
  br i1 %do_period_elapsed.0.off0, label %if.then81, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %capture, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %73) #10
  br label %cleanup

stream_stopped:                                   ; preds = %if.then44, %entry.stream_stopped_crit_edge, %entry.stream_stopped_crit_edge172, %entry.stream_stopped_crit_edge173, %entry.stream_stopped_crit_edge174
  %states.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %call.i145 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %states.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i, label %stream_stopped.abort_usb_playback.exit_crit_edge, label %if.then.i146

stream_stopped.abort_usb_playback.exit_crit_edge: ; preds = %stream_stopped
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_usb_playback.exit

if.then.i146:                                     ; preds = %stream_stopped
  call void @__sanitizer_cov_trace_pc() #12
  %alsa_playback_wait.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %alsa_playback_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %abort_usb_playback.exit

abort_usb_playback.exit:                          ; preds = %if.then.i146, %stream_stopped.abort_usb_playback.exit_crit_edge
  %call.i149 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %states.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %abort_usb_playback.exit.abort_usb_capture.exit_crit_edge, label %if.then.i151

abort_usb_playback.exit.abort_usb_capture.exit_crit_edge: ; preds = %abort_usb_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_usb_capture.exit

if.then.i151:                                     ; preds = %abort_usb_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  %alsa_capture_wait.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %alsa_capture_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %rate_feedback_wait.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %rate_feedback_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %abort_usb_capture.exit

abort_usb_capture.exit:                           ; preds = %if.then.i151, %abort_usb_playback.exit.abort_usb_capture.exit_crit_edge
  %74 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %states.i, align 4
  %76 = and i32 %75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i154 = icmp eq i32 %76, 0
  br i1 %tobool.not.i154, label %abort_usb_capture.exit.abort_alsa_playback.exit_crit_edge, label %if.then.i155

abort_usb_capture.exit.abort_alsa_playback.exit_crit_edge: ; preds = %abort_usb_capture.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_alsa_playback.exit

if.then.i155:                                     ; preds = %abort_usb_capture.exit
  call void @__sanitizer_cov_trace_pc() #12
  %playback.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21
  %77 = ptrtoint ptr %playback.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %playback.i, align 8
  %call1.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %78) #10
  br label %abort_alsa_playback.exit

abort_alsa_playback.exit:                         ; preds = %if.then.i155, %abort_usb_capture.exit.abort_alsa_playback.exit_crit_edge
  %79 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %states.i, align 4
  %81 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i158 = icmp eq i32 %81, 0
  br i1 %tobool.not.i158, label %abort_alsa_playback.exit.cleanup_crit_edge, label %if.then.i160

abort_alsa_playback.exit.cleanup_crit_edge:       ; preds = %abort_alsa_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i160:                                     ; preds = %abort_alsa_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %capture, align 4
  %call1.i159 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %83) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i160, %abort_alsa_playback.exit.cleanup_crit_edge, %if.then81, %if.end78.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @playback_urb_complete(ptr noundef %usb_urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %usb_urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %usb_urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %3, label %lor.rhs [
    i32 -2, label %entry.if.then_crit_edge
    i32 -19, label %entry.if.then_crit_edge52
    i32 -104, label %entry.if.then_crit_edge53
    i32 -108, label %entry.if.then_crit_edge54
  ], !prof !223

entry.if.then_crit_edge54:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %states, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %lor.rhs.cleanup_crit_edge, label %do.body16

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge52, %entry.if.then_crit_edge53, %entry.if.then_crit_edge54
  %states.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %states.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.abort_usb_playback.exit_crit_edge, label %if.then.i

if.then.abort_usb_playback.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_usb_playback.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %alsa_playback_wait.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %alsa_playback_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %abort_usb_playback.exit

abort_usb_playback.exit:                          ; preds = %if.then.i, %if.then.abort_usb_playback.exit_crit_edge
  %8 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %states.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i49 = icmp eq i32 %10, 0
  br i1 %tobool.not.i49, label %abort_usb_playback.exit.cleanup_crit_edge, label %if.then.i50

abort_usb_playback.exit.cleanup_crit_edge:        ; preds = %abort_usb_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i50:                                      ; preds = %abort_usb_playback.exit
  call void @__sanitizer_cov_trace_pc() #12
  %playback.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %playback.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %playback.i, align 8
  %call1.i = tail call i32 @snd_pcm_stop_xrun(ptr noundef %12) #10
  br label %cleanup

do.body16:                                        ; preds = %lor.rhs
  %lock = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 9
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %ready_list = getelementptr inbounds %struct.ua101_urb, ptr %usb_urb, i32 0, i32 2
  %ready_playback_urbs = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ready_list, ptr noundef %14, ptr noundef %ready_playback_urbs) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.body16.list_add_tail.exit_crit_edge

do.body16.list_add_tail.exit_crit_edge:           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ready_list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %ready_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ready_playback_urbs, ptr %ready_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ua101_urb, ptr %usb_urb, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %ready_list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body16.list_add_tail.exit_crit_edge
  %rate_feedback_count = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate_feedback_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22.not = icmp eq i32 %20, 0
  br i1 %cmp22.not, label %list_add_tail.exit.if.end26_crit_edge, label %if.then24

list_add_tail.exit.if.end26_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %21 = load ptr, ptr @system_highpri_wq, align 4
  %playback_work = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 16
  %call.i51 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %playback_work) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %list_add_tail.exit.if.end26_crit_edge
  %length = getelementptr inbounds %struct.urb, ptr %usb_urb, i32 1, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %playback = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21
  %frame_bytes = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21, i32 3
  %24 = ptrtoint ptr %frame_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_bytes, align 4
  %div = udiv i32 %23, %25
  %26 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %playback, align 8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime, align 4
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  %sub = sub i32 %31, %div
  store i32 %sub, ptr %delay, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then.i50, %abort_usb_playback.exit.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_usb_related_resources(ptr noundef %ua, ptr noundef readnone %interface) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %queue_length.i = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 20, i32 7
  %0 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i = icmp eq i32 %1, 0
  br i1 %cmp8.not.i, label %entry.free_stream_urbs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.free_stream_urbs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_stream_urbs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 8, i32 %i.09.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.09.i, 1
  %5 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %queue_length.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %6
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.free_stream_urbs.exit_crit_edge

for.body.i.free_stream_urbs.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_stream_urbs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

free_stream_urbs.exit:                            ; preds = %for.body.i.free_stream_urbs.exit_crit_edge, %entry.free_stream_urbs.exit_crit_edge
  %queue_length.i29 = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 21, i32 7
  %7 = ptrtoint ptr %queue_length.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue_length.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not.i30 = icmp eq i32 %8, 0
  br i1 %cmp8.not.i30, label %free_stream_urbs.exit.free_stream_urbs.exit36_crit_edge, label %free_stream_urbs.exit.for.body.i35_crit_edge

free_stream_urbs.exit.for.body.i35_crit_edge:     ; preds = %free_stream_urbs.exit
  br label %for.body.i35

free_stream_urbs.exit.free_stream_urbs.exit36_crit_edge: ; preds = %free_stream_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_stream_urbs.exit36

for.body.i35:                                     ; preds = %for.body.i35.for.body.i35_crit_edge, %free_stream_urbs.exit.for.body.i35_crit_edge
  %i.09.i31 = phi i32 [ %inc.i33, %for.body.i35.for.body.i35_crit_edge ], [ 0, %free_stream_urbs.exit.for.body.i35_crit_edge ]
  %arrayidx.i32 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 8, i32 %i.09.i31
  %9 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i32, align 4
  tail call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.i32, align 4
  %inc.i33 = add nuw i32 %i.09.i31, 1
  %12 = ptrtoint ptr %queue_length.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_length.i29, align 4
  %cmp.i34 = icmp ult i32 %inc.i33, %13
  br i1 %cmp.i34, label %for.body.i35.for.body.i35_crit_edge, label %for.body.i35.free_stream_urbs.exit36_crit_edge

for.body.i35.free_stream_urbs.exit36_crit_edge:   ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_stream_urbs.exit36

for.body.i35.for.body.i35_crit_edge:              ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i35

free_stream_urbs.exit36:                          ; preds = %for.body.i35.free_stream_urbs.exit36_crit_edge, %free_stream_urbs.exit.free_stream_urbs.exit36_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %14 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ua, align 8
  %arrayidx.i37 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9
  %16 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i37, align 4
  %addr.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 0, i32 1
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i, align 4
  %dma.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 0, i32 2
  %20 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef %17, ptr noundef %19, i32 noundef %21) #10
  %22 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ua, align 8
  %arrayidx.1.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1.i, align 4
  %addr.1.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 1, i32 1
  %26 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.1.i, align 4
  %dma.1.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 1, i32 2
  %28 = ptrtoint ptr %dma.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma.1.i, align 4
  tail call void @usb_free_coherent(ptr noundef %23, i32 noundef %25, ptr noundef %27, i32 noundef %29) #10
  %30 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ua, align 8
  %arrayidx.2.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 2
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2.i, align 4
  %addr.2.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 2, i32 1
  %34 = ptrtoint ptr %addr.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr.2.i, align 4
  %dma.2.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 2, i32 2
  %36 = ptrtoint ptr %dma.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma.2.i, align 4
  tail call void @usb_free_coherent(ptr noundef %31, i32 noundef %33, ptr noundef %35, i32 noundef %37) #10
  %38 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ua, align 8
  %arrayidx.3.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 3
  %40 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.3.i, align 4
  %addr.3.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 3, i32 1
  %42 = ptrtoint ptr %addr.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.3.i, align 4
  %dma.3.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 3, i32 2
  %44 = ptrtoint ptr %dma.3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma.3.i, align 4
  tail call void @usb_free_coherent(ptr noundef %39, i32 noundef %41, ptr noundef %43, i32 noundef %45) #10
  %46 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ua, align 8
  %arrayidx.4.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 4
  %48 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.4.i, align 4
  %addr.4.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 4, i32 1
  %50 = ptrtoint ptr %addr.4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr.4.i, align 4
  %dma.4.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 9, i32 4, i32 2
  %52 = ptrtoint ptr %dma.4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma.4.i, align 4
  tail call void @usb_free_coherent(ptr noundef %47, i32 noundef %49, ptr noundef %51, i32 noundef %53) #10
  %54 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ua, align 8
  %arrayidx.i38 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9
  %56 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i38, align 4
  %addr.i39 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 0, i32 1
  %58 = ptrtoint ptr %addr.i39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %addr.i39, align 4
  %dma.i40 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 0, i32 2
  %60 = ptrtoint ptr %dma.i40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma.i40, align 4
  tail call void @usb_free_coherent(ptr noundef %55, i32 noundef %57, ptr noundef %59, i32 noundef %61) #10
  %62 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ua, align 8
  %arrayidx.1.i41 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 1
  %64 = ptrtoint ptr %arrayidx.1.i41 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.1.i41, align 4
  %addr.1.i42 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 1, i32 1
  %66 = ptrtoint ptr %addr.1.i42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addr.1.i42, align 4
  %dma.1.i43 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 1, i32 2
  %68 = ptrtoint ptr %dma.1.i43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma.1.i43, align 4
  tail call void @usb_free_coherent(ptr noundef %63, i32 noundef %65, ptr noundef %67, i32 noundef %69) #10
  %70 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ua, align 8
  %arrayidx.2.i44 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 2
  %72 = ptrtoint ptr %arrayidx.2.i44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.2.i44, align 4
  %addr.2.i45 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 2, i32 1
  %74 = ptrtoint ptr %addr.2.i45 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %addr.2.i45, align 4
  %dma.2.i46 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 2, i32 2
  %76 = ptrtoint ptr %dma.2.i46 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dma.2.i46, align 4
  tail call void @usb_free_coherent(ptr noundef %71, i32 noundef %73, ptr noundef %75, i32 noundef %77) #10
  %78 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ua, align 8
  %arrayidx.3.i47 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 3
  %80 = ptrtoint ptr %arrayidx.3.i47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.3.i47, align 4
  %addr.3.i48 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 3, i32 1
  %82 = ptrtoint ptr %addr.3.i48 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %addr.3.i48, align 4
  %dma.3.i49 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 3, i32 2
  %84 = ptrtoint ptr %dma.3.i49 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma.3.i49, align 4
  tail call void @usb_free_coherent(ptr noundef %79, i32 noundef %81, ptr noundef %83, i32 noundef %85) #10
  %86 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ua, align 8
  %arrayidx.4.i50 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 4
  %88 = ptrtoint ptr %arrayidx.4.i50 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.4.i50, align 4
  %addr.4.i51 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 4, i32 1
  %90 = ptrtoint ptr %addr.4.i51 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %addr.4.i51, align 4
  %dma.4.i52 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 9, i32 4, i32 2
  %92 = ptrtoint ptr %dma.4.i52 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma.4.i52, align 4
  tail call void @usb_free_coherent(ptr noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %93) #10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %arrayidx = getelementptr %struct.ua101, ptr %ua, i32 0, i32 2, i32 0
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %tobool.not = icmp eq ptr %95, null
  br i1 %tobool.not, label %free_stream_urbs.exit36.for.inc_crit_edge, label %if.then

free_stream_urbs.exit36.for.inc_crit_edge:        ; preds = %free_stream_urbs.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %free_stream_urbs.exit36
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %95, i32 0, i32 7, i32 8
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %driver_data.i.i, align 4
  %cmp9.not = icmp eq ptr %95, %interface
  br i1 %cmp9.not, label %if.then.for.inc_crit_edge, label %if.then10

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_driver_release_interface(ptr noundef nonnull @ua101_driver, ptr noundef nonnull %95) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then.for.inc_crit_edge, %free_stream_urbs.exit36.for.inc_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %arrayidx.1 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.1, align 4
  store ptr null, ptr %arrayidx.1, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %tobool.not.1 = icmp eq ptr %98, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %driver_data.i.i.1 = getelementptr inbounds %struct.usb_interface, ptr %98, i32 0, i32 7, i32 8
  %99 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %driver_data.i.i.1, align 4
  %cmp9.not.1 = icmp eq ptr %98, %interface
  br i1 %cmp9.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then10.1

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then10.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_driver_release_interface(ptr noundef nonnull @ua101_driver, ptr noundef nonnull %98) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %arrayidx.2 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 2, i32 2
  %100 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.2, align 4
  store ptr null, ptr %arrayidx.2, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %tobool.not.2 = icmp eq ptr %101, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %driver_data.i.i.2 = getelementptr inbounds %struct.usb_interface, ptr %101, i32 0, i32 7, i32 8
  %102 = ptrtoint ptr %driver_data.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %driver_data.i.i.2, align 4
  %cmp9.not.2 = icmp eq ptr %101, %interface
  br i1 %cmp9.not.2, label %if.then.2.for.inc.2_crit_edge, label %if.then10.2

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then10.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_driver_release_interface(ptr noundef nonnull @ua101_driver, ptr noundef nonnull %101) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @abort_usb_playback(ptr noundef %ua) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %states = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 11
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %states) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %alsa_playback_wait = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %alsa_playback_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @usb_error_string(i32 noundef %err) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %err, label %sw.default [
    i32 -19, label %entry.return_crit_edge
    i32 -2, label %sw.bb1
    i32 -32, label %sw.bb2
    i32 -28, label %sw.bb3
    i32 -108, label %sw.bb4
    i32 -113, label %sw.bb5
    i32 -22, label %entry.sw.bb6_crit_edge
    i32 -11, label %entry.sw.bb6_crit_edge7
    i32 -27, label %entry.sw.bb6_crit_edge8
    i32 -90, label %entry.sw.bb6_crit_edge9
  ]

entry.sw.bb6_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb6_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb6_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge7, %entry.sw.bb6_crit_edge8, %entry.sw.bb6_crit_edge9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.35, %sw.default ], [ @.str.34, %sw.bb6 ], [ @.str.33, %sw.bb5 ], [ @.str.32, %sw.bb4 ], [ @.str.31, %sw.bb3 ], [ @.str.30, %sw.bb2 ], [ @.str.29, %sw.bb1 ], [ @.str.28, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_init_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %substream, ptr %playback, align 8
  %channels = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21, i32 2
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 8
  %call = tail call fastcc i32 @set_stream_hw(ptr noundef %1, ptr noundef %substream, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rate = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 8
  %queue_length = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21, i32 7
  %7 = ptrtoint ptr %queue_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue_length, align 4
  %mul = mul i32 %8, %6
  %packets_per_second = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %packets_per_second to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %packets_per_second, align 4
  %div39 = lshr i32 %10, 1
  %add = add i32 %div39, %mul
  %div4 = udiv i32 %add, %10
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %fifo_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 46, i32 12
  %13 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div4, ptr %fifo_size, align 8
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call5 = tail call fastcc i32 @start_usb_capture(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.error_crit_edge, label %if.end8

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @start_usb_playback(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  br i1 %cmp10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end8
  %14 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %states, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then13, label %if.then11.error_crit_edge

if.then11.error_crit_edge:                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stop_usb_capture(ptr noundef %1)
  br label %error

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %states) #10
  br label %error

error:                                            ; preds = %if.end15, %if.then13, %if.then11.error_crit_edge, %if.end.error_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.error_crit_edge ], [ %call9, %if.then11.error_crit_edge ], [ %call9, %if.then13 ], [ %call9, %if.end15 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call fastcc void @stop_usb_playback(ptr noundef %1)
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %states) #10
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %states, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stop_usb_capture(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @start_usb_capture(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @start_usb_playback(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call1, %if.then ], [ %call, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @start_usb_capture(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup40

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @start_usb_playback(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3 = icmp slt i32 %call1, 0
  br i1 %cmp3, label %if.end.cleanup40_crit_edge, label %do.body6

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

do.body6:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 795) #10
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %states, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body6.do.end28_crit_edge

do.body6.do.end28_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

lor.lhs.false:                                    ; preds = %do.body6
  %5 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %states, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %lor.lhs.false.do.end28_crit_edge, label %if.end15

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

if.end15:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %alsa_playback_wait = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 19
  %call1672 = call i32 @prepare_to_wait_event(ptr noundef %alsa_playback_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %9 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %states, align 4
  %11 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not73 = icmp eq i32 %11, 0
  br i1 %tobool19.not73, label %if.end15.lor.lhs.false20_crit_edge, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end15.lor.lhs.false20_crit_edge:               ; preds = %if.end15
  br label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %cleanup.lor.lhs.false20_crit_edge, %if.end15.lor.lhs.false20_crit_edge
  %12 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %states, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool23.not = icmp eq i32 %14, 0
  br i1 %tobool23.not, label %lor.lhs.false20.for.end_crit_edge, label %cleanup

lor.lhs.false20.for.end_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false20
  call void @schedule() #10
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %alsa_playback_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %15 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %states, align 4
  %17 = and i32 %16, 128
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %cleanup.lor.lhs.false20_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.lor.lhs.false20_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false20

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false20.for.end_crit_edge, %if.end15.for.end_crit_edge
  call void @finish_wait(ptr noundef %alsa_playback_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end28

do.end28:                                         ; preds = %for.end, %lor.lhs.false.do.end28_crit_edge, %do.body6.do.end28_crit_edge
  %18 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %states, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool31.not = icmp eq i32 %20, 0
  br i1 %tobool31.not, label %if.end33, label %do.end28.cleanup40_crit_edge

do.end28.cleanup40_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

if.end33:                                         ; preds = %do.end28
  %21 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %states, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool36.not = icmp eq i32 %23, 0
  br i1 %tobool36.not, label %if.end33.cleanup40_crit_edge, label %if.end38

if.end33.cleanup40_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup40

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %24 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime, align 4
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %delay, align 4
  %period_pos = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21, i32 5
  %27 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %period_pos, align 4
  %buffer_pos = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21, i32 6
  %28 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %buffer_pos, align 8
  br label %cleanup40

cleanup40:                                        ; preds = %if.end38, %if.end33.cleanup40_crit_edge, %do.end28.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %if.end.thread
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call1, %if.end.cleanup40_crit_edge ], [ -19, %do.end28.cleanup40_crit_edge ], [ -5, %if.end33.cleanup40_crit_edge ], [ %call, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %states, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 5, ptr noundef %states) #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %states3 = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %states3) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %if.end ], [ -5, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @playback_pcm_pointer(ptr nocapture noundef readonly %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %buffer_pos.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 21, i32 6
  %2 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_pos.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_stream_hw(ptr nocapture noundef readonly %ua, ptr nocapture noundef readonly %substream, i32 noundef %channels) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2147417837, ptr %hw, align 8
  %format_bit = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 6
  %3 = ptrtoint ptr %format_bit to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %format_bit, align 8
  %5 = load ptr, ptr %runtime, align 4
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 1
  %6 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %4, ptr %formats, align 8
  %rate = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 7
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate, align 8
  %call = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %8) #10
  %9 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime, align 4
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 2
  %11 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %rates, align 8
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 8
  %14 = load ptr, ptr %runtime, align 4
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 46, i32 3
  %15 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %rate_min, align 4
  %16 = load i32, ptr %rate, align 8
  %17 = load ptr, ptr %runtime, align 4
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 46, i32 4
  %18 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %rate_max, align 8
  %19 = load ptr, ptr %runtime, align 4
  %channels_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 46, i32 5
  %20 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %channels, ptr %channels_min, align 4
  %21 = load ptr, ptr %runtime, align 4
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 46, i32 6
  %22 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %channels, ptr %channels_max, align 8
  %23 = load ptr, ptr %runtime, align 4
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 46, i32 7
  %24 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 46080000, ptr %buffer_bytes_max, align 4
  %25 = load ptr, ptr %runtime, align 4
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 46, i32 8
  %26 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %period_bytes_min, align 8
  %27 = load ptr, ptr %runtime, align 4
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 46, i32 9
  %28 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %period_bytes_max, align 4
  %29 = load ptr, ptr %runtime, align 4
  %periods_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 46, i32 10
  %30 = ptrtoint ptr %periods_min to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %periods_min, align 8
  %31 = load ptr, ptr %runtime, align 4
  %periods_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 46, i32 11
  %32 = ptrtoint ptr %periods_max to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %periods_max, align 4
  %33 = load ptr, ptr %runtime, align 4
  %packets_per_second = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 8
  %34 = ptrtoint ptr %packets_per_second to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %packets_per_second, align 4
  %div = udiv i32 1500000, %35
  %call26 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %33, i32 noundef 12, i32 noundef %div, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime, align 4
  %call28 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %37, i32 noundef 0, i32 noundef 32, i32 noundef 24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end ], [ %call26, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_usb_capture(ptr noundef %ua) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %states = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 11
  %0 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %states, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %states, align 4
  %and1.i31 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i31)
  %tobool3.not = icmp eq i32 %and1.i31, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %capture = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 20
  %queue_length.i = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 20, i32 7
  %5 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8.not.i = icmp eq i32 %6, 0
  br i1 %cmp8.not.i, label %if.end5.kill_stream_urbs.exit_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.kill_stream_urbs.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 8, i32 %i.09.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %8) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %9 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_length.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kill_stream_urbs.exit_crit_edge

for.inc.i.kill_stream_urbs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kill_stream_urbs.exit:                            ; preds = %for.inc.i.kill_stream_urbs.exit_crit_edge, %if.end5.kill_stream_urbs.exit_crit_edge
  %call6 = tail call fastcc i32 @enable_iso_interface(ptr noundef %ua, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %kill_stream_urbs.exit.cleanup_crit_edge, label %if.end8

kill_stream_urbs.exit.cleanup_crit_edge:          ; preds = %kill_stream_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %kill_stream_urbs.exit
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %states) #10
  %urbs = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 20, i32 8
  %11 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %urbs, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @first_capture_urb_complete, ptr %complete, align 4
  %rate_feedback_start = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 12
  %14 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rate_feedback_start, align 4
  %rate_feedback_count = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 13
  %15 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rate_feedback_count, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %states) #10
  %call13 = tail call fastcc i32 @submit_stream_urbs(ptr noundef %ua, ptr noundef %capture)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stop_usb_capture(ptr noundef %ua)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8.cleanup_crit_edge, %kill_stream_urbs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %kill_stream_urbs.exit.cleanup_crit_edge ], [ %call13, %if.then15 ], [ %call13, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_usb_playback(ptr noundef %ua) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %states = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 11
  %0 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %states, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup83_crit_edge

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %states, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup83_crit_edge

if.end.cleanup83_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83

if.end5:                                          ; preds = %if.end
  %playback = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 21
  %queue_length.i = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 21, i32 7
  %6 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not.i = icmp eq i32 %7, 0
  br i1 %cmp8.not.i, label %if.end5.kill_stream_urbs.exit_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.kill_stream_urbs.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 8, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %10 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue_length.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kill_stream_urbs.exit_crit_edge

for.inc.i.kill_stream_urbs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kill_stream_urbs.exit:                            ; preds = %for.inc.i.kill_stream_urbs.exit_crit_edge, %if.end5.kill_stream_urbs.exit_crit_edge
  %playback_work = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 16
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %playback_work) #10
  %call7 = tail call fastcc i32 @enable_iso_interface(ptr noundef %ua, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %kill_stream_urbs.exit.cleanup83_crit_edge, label %if.end9

kill_stream_urbs.exit.cleanup83_crit_edge:        ; preds = %kill_stream_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83

if.end9:                                          ; preds = %kill_stream_urbs.exit
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %states) #10
  %urbs = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 21, i32 8
  %12 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urbs, align 8
  %complete = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 28
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @first_playback_urb_complete, ptr %complete, align 4
  %lock = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %ready_playback_urbs = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 15
  %15 = ptrtoint ptr %ready_playback_urbs to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ready_playback_urbs, ptr %ready_playback_urbs, align 4
  %prev.i = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ready_playback_urbs, ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 572) #10
  %rate_feedback_count = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 13
  %17 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate_feedback_count, align 8
  %19 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp19.not = icmp ult i32 %18, %20
  br i1 %cmp19.not, label %lor.lhs.false, label %if.end9.do.end46_crit_edge

if.end9.do.end46_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

lor.lhs.false:                                    ; preds = %if.end9
  %21 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %states, align 4
  %and1.i133 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i133)
  %tobool22.not = icmp eq i32 %and1.i133, 0
  br i1 %tobool22.not, label %lor.lhs.false.do.end46_crit_edge, label %lor.lhs.false23

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %states, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false23.do.end46_crit_edge

lor.lhs.false23.do.end46_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

if.end28:                                         ; preds = %lor.lhs.false23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %rate_feedback_wait = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 18
  %call29146 = call i32 @prepare_to_wait_event(ptr noundef %rate_feedback_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %27 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate_feedback_count, align 8
  %29 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp33.not147 = icmp ult i32 %28, %30
  br i1 %cmp33.not147, label %if.end28.lor.lhs.false34_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end28.lor.lhs.false34_crit_edge:               ; preds = %if.end28
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %cleanup.lor.lhs.false34_crit_edge, %if.end28.lor.lhs.false34_crit_edge
  %31 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %states, align 4
  %and1.i136 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i136)
  %tobool37.not = icmp eq i32 %and1.i136, 0
  br i1 %tobool37.not, label %lor.lhs.false34.for.end_crit_edge, label %lor.lhs.false38

lor.lhs.false34.for.end_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

lor.lhs.false38:                                  ; preds = %lor.lhs.false34
  %33 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %states, align 4
  %35 = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool41.not = icmp eq i32 %35, 0
  br i1 %tobool41.not, label %cleanup, label %lor.lhs.false38.for.end_crit_edge

lor.lhs.false38.for.end_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false38
  call void @schedule() #10
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %rate_feedback_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %36 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate_feedback_count, align 8
  %38 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %queue_length.i, align 4
  %cmp33.not = icmp ult i32 %37, %39
  br i1 %cmp33.not, label %cleanup.lor.lhs.false34_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.lor.lhs.false34_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false34

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false38.for.end_crit_edge, %lor.lhs.false34.for.end_crit_edge, %if.end28.for.end_crit_edge
  call void @finish_wait(ptr noundef %rate_feedback_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end46

do.end46:                                         ; preds = %for.end, %lor.lhs.false23.do.end46_crit_edge, %lor.lhs.false.do.end46_crit_edge, %if.end9.do.end46_crit_edge
  %40 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %states, align 4
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool49.not = icmp eq i32 %42, 0
  br i1 %tobool49.not, label %if.end51, label %do.end46.cleanup83.sink.split_crit_edge

do.end46.cleanup83.sink.split_crit_edge:          ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83.sink.split

if.end51:                                         ; preds = %do.end46
  %43 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %states, align 4
  %and1.i141 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i141)
  %tobool54.not = icmp eq i32 %and1.i141, 0
  br i1 %tobool54.not, label %if.end51.cleanup83.sink.split_crit_edge, label %for.cond57.preheader

if.end51.cleanup83.sink.split_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83.sink.split

for.cond57.preheader:                             ; preds = %if.end51
  %45 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp60150.not = icmp eq i32 %46, 0
  br i1 %cmp60150.not, label %for.cond57.preheader.for.end75_crit_edge, label %for.body.lr.ph

for.cond57.preheader.for.end75_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end75

for.body.lr.ph:                                   ; preds = %for.cond57.preheader
  %rate_feedback_start = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 12
  %frame_bytes = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 21, i32 3
  br label %for.body

for.body:                                         ; preds = %add_with_wraparound.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0151 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %add_with_wraparound.exit.for.body_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %47 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rate_feedback_start, align 4
  %arrayidx62 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 14, i32 %48
  %49 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx62, align 1
  %conv = zext i8 %50 to i32
  %add1.i = add i32 %48, 1
  store i32 %add1.i, ptr %rate_feedback_start, align 4
  %51 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %52)
  %cmp.not.i = icmp ult i32 %add1.i, %52
  br i1 %cmp.not.i, label %for.body.add_with_wraparound.exit_crit_edge, label %if.then.i143

for.body.add_with_wraparound.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %add_with_wraparound.exit

if.then.i143:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %add1.i, %52
  %53 = ptrtoint ptr %rate_feedback_start to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.i, ptr %rate_feedback_start, align 4
  br label %add_with_wraparound.exit

add_with_wraparound.exit:                         ; preds = %if.then.i143, %for.body.add_with_wraparound.exit_crit_edge
  %54 = ptrtoint ptr %rate_feedback_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rate_feedback_count, align 8
  %dec = add i32 %55, -1
  store i32 %dec, ptr %rate_feedback_count, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %arrayidx68 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 8, i32 %i.0151
  %56 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx68, align 4
  %58 = ptrtoint ptr %frame_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %frame_bytes, align 4
  %mul = mul i32 %59, %conv
  %length = getelementptr inbounds %struct.urb, ptr %57, i32 1, i32 1
  %60 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul, ptr %length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 14
  %61 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %transfer_buffer, align 4
  %63 = call ptr @memset(ptr %62, i32 0, i32 %mul)
  %inc = add nuw i32 %i.0151, 1
  %64 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %queue_length.i, align 4
  %cmp60 = icmp ult i32 %inc, %65
  br i1 %cmp60, label %add_with_wraparound.exit.for.body_crit_edge, label %add_with_wraparound.exit.for.end75_crit_edge

add_with_wraparound.exit.for.end75_crit_edge:     ; preds = %add_with_wraparound.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end75

add_with_wraparound.exit.for.body_crit_edge:      ; preds = %add_with_wraparound.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end75:                                        ; preds = %add_with_wraparound.exit.for.end75_crit_edge, %for.cond57.preheader.for.end75_crit_edge
  call void @_set_bit(i32 noundef 1, ptr noundef %states) #10
  %call78 = call fastcc i32 @submit_stream_urbs(ptr noundef %ua, ptr noundef %playback)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %for.end75.cleanup83.sink.split_crit_edge, label %for.end75.cleanup83_crit_edge

for.end75.cleanup83_crit_edge:                    ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83

for.end75.cleanup83.sink.split_crit_edge:         ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup83.sink.split

cleanup83.sink.split:                             ; preds = %for.end75.cleanup83.sink.split_crit_edge, %if.end51.cleanup83.sink.split_crit_edge, %do.end46.cleanup83.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %do.end46.cleanup83.sink.split_crit_edge ], [ -5, %if.end51.cleanup83.sink.split_crit_edge ], [ %call78, %for.end75.cleanup83.sink.split_crit_edge ]
  call fastcc void @stop_usb_playback(ptr noundef %ua)
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup83.sink.split, %for.end75.cleanup83_crit_edge, %kill_stream_urbs.exit.cleanup83_crit_edge, %if.end.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup83_crit_edge ], [ 0, %if.end.cleanup83_crit_edge ], [ %call7, %kill_stream_urbs.exit.cleanup83_crit_edge ], [ %call78, %for.end75.cleanup83_crit_edge ], [ %retval.0.ph, %cleanup83.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_usb_capture(ptr noundef %ua) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %states = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %states) #10
  %queue_length.i = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 20, i32 7
  %0 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i = icmp eq i32 %1, 0
  br i1 %cmp8.not.i, label %entry.kill_stream_urbs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kill_stream_urbs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 20, i32 8, i32 %i.09.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %4 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_length.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kill_stream_urbs.exit_crit_edge

for.inc.i.kill_stream_urbs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kill_stream_urbs.exit:                            ; preds = %for.inc.i.kill_stream_urbs.exit_crit_edge, %entry.kill_stream_urbs.exit_crit_edge
  %arrayidx.i3 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i3, align 4
  %tobool.not.i4 = icmp eq ptr %7, null
  br i1 %tobool.not.i4, label %kill_stream_urbs.exit.disable_iso_interface.exit_crit_edge, label %if.end.i

kill_stream_urbs.exit.disable_iso_interface.exit_crit_edge: ; preds = %kill_stream_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

if.end.i:                                         ; preds = %kill_stream_urbs.exit
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting.i, align 4
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bAlternateSetting.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 0
  br i1 %cmp.not.i, label %if.end.i.disable_iso_interface.exit_crit_edge, label %if.then4.i

if.end.i.disable_iso_interface.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

if.then4.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ua, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv6.i = zext i8 %15 to i32
  %call.i = tail call i32 @usb_set_interface(ptr noundef %13, i32 noundef %conv6.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then4.i.disable_iso_interface.exit_crit_edge

if.then4.i.disable_iso_interface.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

land.lhs.true.i:                                  ; preds = %if.then4.i
  %16 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %states, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %do.end.i, label %land.lhs.true.i.disable_iso_interface.exit_crit_edge

land.lhs.true.i.disable_iso_interface.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ua, align 8
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call.i, label %sw.default.i [
    i32 -19, label %do.end.i.usb_error_string.exit_crit_edge
    i32 -2, label %sw.bb1.i
    i32 -32, label %sw.bb2.i
    i32 -28, label %sw.bb3.i
    i32 -108, label %sw.bb4.i
    i32 -113, label %sw.bb5.i
    i32 -22, label %do.end.i.sw.bb6.i_crit_edge
    i32 -11, label %do.end.i.sw.bb6.i_crit_edge5
    i32 -27, label %do.end.i.sw.bb6.i_crit_edge6
    i32 -90, label %do.end.i.sw.bb6.i_crit_edge7
  ]

do.end.i.sw.bb6.i_crit_edge7:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.sw.bb6.i_crit_edge6:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.sw.bb6.i_crit_edge5:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.sw.bb6.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.usb_error_string.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb1.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb2.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb3.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb4.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb5.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb6.i:                                         ; preds = %do.end.i.sw.bb6.i_crit_edge, %do.end.i.sw.bb6.i_crit_edge5, %do.end.i.sw.bb6.i_crit_edge6, %do.end.i.sw.bb6.i_crit_edge7
  br label %usb_error_string.exit

sw.default.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

usb_error_string.exit:                            ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end.i.usb_error_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.35, %sw.default.i ], [ @.str.34, %sw.bb6.i ], [ @.str.33, %sw.bb5.i ], [ @.str.32, %sw.bb4.i ], [ @.str.31, %sw.bb3.i ], [ @.str.30, %sw.bb2.i ], [ @.str.29, %sw.bb1.i ], [ @.str.28, %do.end.i.usb_error_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13.i, ptr noundef nonnull @.str.81, i32 noundef %call.i, ptr noundef nonnull %retval.0.i) #13
  br label %disable_iso_interface.exit

disable_iso_interface.exit:                       ; preds = %usb_error_string.exit, %land.lhs.true.i.disable_iso_interface.exit_crit_edge, %if.then4.i.disable_iso_interface.exit_crit_edge, %if.end.i.disable_iso_interface.exit_crit_edge, %kill_stream_urbs.exit.disable_iso_interface.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_iso_interface(ptr nocapture noundef readonly %ua, i32 noundef %intf_index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ua101, ptr %ua, i32 0, i32 2, i32 %intf_index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bAlternateSetting, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %entry.cleanup11_crit_edge, label %if.then

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ua, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber, align 2
  %conv3 = zext i8 %9 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef %conv3, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %do.end, label %if.then.cleanup11_crit_edge

if.then.cleanup11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

do.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ua, align 8
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call, label %sw.default.i [
    i32 -19, label %do.end.usb_error_string.exit_crit_edge
    i32 -2, label %sw.bb1.i
    i32 -32, label %sw.bb2.i
    i32 -28, label %sw.bb3.i
    i32 -108, label %sw.bb4.i
    i32 -113, label %sw.bb5.i
    i32 -22, label %do.end.sw.bb6.i_crit_edge
    i32 -11, label %do.end.sw.bb6.i_crit_edge18
    i32 -27, label %do.end.sw.bb6.i_crit_edge19
    i32 -90, label %do.end.sw.bb6.i_crit_edge20
  ]

do.end.sw.bb6.i_crit_edge20:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.sw.bb6.i_crit_edge19:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.sw.bb6.i_crit_edge18:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.sw.bb6.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.usb_error_string.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb4.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb5.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb6.i:                                         ; preds = %do.end.sw.bb6.i_crit_edge, %do.end.sw.bb6.i_crit_edge18, %do.end.sw.bb6.i_crit_edge19, %do.end.sw.bb6.i_crit_edge20
  br label %usb_error_string.exit

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

usb_error_string.exit:                            ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end.usb_error_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.35, %sw.default.i ], [ @.str.34, %sw.bb6.i ], [ @.str.33, %sw.bb5.i ], [ @.str.32, %sw.bb4.i ], [ @.str.31, %sw.bb3.i ], [ @.str.30, %sw.bb2.i ], [ @.str.29, %sw.bb1.i ], [ @.str.28, %do.end.usb_error_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.78, i32 noundef %call, ptr noundef nonnull %retval.0.i) #13
  br label %cleanup11

cleanup11:                                        ; preds = %usb_error_string.exit, %if.then.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  %retval.1 = phi i32 [ %call, %usb_error_string.exit ], [ 0, %entry.cleanup11_crit_edge ], [ 0, %if.then.cleanup11_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @first_capture_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @capture_urb_complete, ptr %complete, align 4
  tail call void @capture_urb_complete(ptr noundef %urb)
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 6, ptr noundef %states) #10
  %alsa_capture_wait = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %alsa_capture_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_stream_urbs(ptr nocapture noundef readonly %ua, ptr nocapture noundef readonly %stream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_length = getelementptr inbounds %struct.ua101_stream, ptr %stream, i32 0, i32 7
  %0 = ptrtoint ptr %queue_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.cleanup4_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup4

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %2 = ptrtoint ptr %queue_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_length, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup4_crit_edge

for.cond.cleanup4_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup4

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ua101_stream, ptr %stream, i32 0, i32 8, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %for.cond

do.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ua, align 8
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call, label %sw.default.i [
    i32 -19, label %do.end.cleanup.thread_crit_edge
    i32 -2, label %sw.bb1.i
    i32 -32, label %sw.bb2.i
    i32 -28, label %sw.bb3.i
    i32 -108, label %sw.bb4.i
    i32 -113, label %sw.bb5.i
    i32 -22, label %do.end.sw.bb6.i_crit_edge
    i32 -11, label %do.end.sw.bb6.i_crit_edge19
    i32 -27, label %do.end.sw.bb6.i_crit_edge20
    i32 -90, label %do.end.sw.bb6.i_crit_edge21
  ]

do.end.sw.bb6.i_crit_edge21:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.sw.bb6.i_crit_edge20:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.sw.bb6.i_crit_edge19:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.sw.bb6.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

sw.bb4.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

sw.bb5.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

sw.bb6.i:                                         ; preds = %do.end.sw.bb6.i_crit_edge, %do.end.sw.bb6.i_crit_edge19, %do.end.sw.bb6.i_crit_edge20, %do.end.sw.bb6.i_crit_edge21
  br label %cleanup.thread

sw.default.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end.cleanup.thread_crit_edge
  %retval.0.i = phi ptr [ @.str.35, %sw.default.i ], [ @.str.34, %sw.bb6.i ], [ @.str.33, %sw.bb5.i ], [ @.str.32, %sw.bb4.i ], [ @.str.31, %sw.bb3.i ], [ @.str.30, %sw.bb2.i ], [ @.str.29, %sw.bb1.i ], [ @.str.28, %do.end.cleanup.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %call, ptr noundef nonnull %retval.0.i) #13
  br label %cleanup4

cleanup4:                                         ; preds = %cleanup.thread, %for.cond.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup.thread ], [ 0, %entry.cleanup4_crit_edge ], [ 0, %for.cond.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @first_playback_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @playback_urb_complete, ptr %complete, align 4
  tail call void @playback_urb_complete(ptr noundef %urb)
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 7, ptr noundef %states) #10
  %alsa_playback_wait = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %alsa_playback_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_usb_playback(ptr noundef %ua) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %states = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %states) #10
  %queue_length.i = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 21, i32 7
  %0 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i = icmp eq i32 %1, 0
  br i1 %cmp8.not.i, label %entry.kill_stream_urbs.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kill_stream_urbs.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ua101, ptr %ua, i32 0, i32 21, i32 8, i32 %i.09.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.09.i, 1
  %4 = ptrtoint ptr %queue_length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_length.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %5
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kill_stream_urbs.exit_crit_edge

for.inc.i.kill_stream_urbs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kill_stream_urbs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kill_stream_urbs.exit:                            ; preds = %for.inc.i.kill_stream_urbs.exit_crit_edge, %entry.kill_stream_urbs.exit_crit_edge
  %playback_work = getelementptr inbounds %struct.ua101, ptr %ua, i32 0, i32 16
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %playback_work) #10
  %arrayidx.i4 = getelementptr %struct.ua101, ptr %ua, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i4, align 4
  %tobool.not.i5 = icmp eq ptr %7, null
  br i1 %tobool.not.i5, label %kill_stream_urbs.exit.disable_iso_interface.exit_crit_edge, label %if.end.i

kill_stream_urbs.exit.disable_iso_interface.exit_crit_edge: ; preds = %kill_stream_urbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

if.end.i:                                         ; preds = %kill_stream_urbs.exit
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting.i, align 4
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bAlternateSetting.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 0
  br i1 %cmp.not.i, label %if.end.i.disable_iso_interface.exit_crit_edge, label %if.then4.i

if.end.i.disable_iso_interface.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

if.then4.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ua, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv6.i = zext i8 %15 to i32
  %call.i = tail call i32 @usb_set_interface(ptr noundef %13, i32 noundef %conv6.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.i = icmp slt i32 %call.i, 0
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.then4.i.disable_iso_interface.exit_crit_edge

if.then4.i.disable_iso_interface.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

land.lhs.true.i:                                  ; preds = %if.then4.i
  %16 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %states, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %do.end.i, label %land.lhs.true.i.disable_iso_interface.exit_crit_edge

land.lhs.true.i.disable_iso_interface.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_iso_interface.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %ua to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ua, align 8
  %dev13.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call.i, label %sw.default.i [
    i32 -19, label %do.end.i.usb_error_string.exit_crit_edge
    i32 -2, label %sw.bb1.i
    i32 -32, label %sw.bb2.i
    i32 -28, label %sw.bb3.i
    i32 -108, label %sw.bb4.i
    i32 -113, label %sw.bb5.i
    i32 -22, label %do.end.i.sw.bb6.i_crit_edge
    i32 -11, label %do.end.i.sw.bb6.i_crit_edge6
    i32 -27, label %do.end.i.sw.bb6.i_crit_edge7
    i32 -90, label %do.end.i.sw.bb6.i_crit_edge8
  ]

do.end.i.sw.bb6.i_crit_edge8:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.sw.bb6.i_crit_edge7:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.sw.bb6.i_crit_edge6:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.sw.bb6.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

do.end.i.usb_error_string.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb1.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb2.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb3.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb4.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb5.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

sw.bb6.i:                                         ; preds = %do.end.i.sw.bb6.i_crit_edge, %do.end.i.sw.bb6.i_crit_edge6, %do.end.i.sw.bb6.i_crit_edge7, %do.end.i.sw.bb6.i_crit_edge8
  br label %usb_error_string.exit

sw.default.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_error_string.exit

usb_error_string.exit:                            ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end.i.usb_error_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.35, %sw.default.i ], [ @.str.34, %sw.bb6.i ], [ @.str.33, %sw.bb5.i ], [ @.str.32, %sw.bb4.i ], [ @.str.31, %sw.bb3.i ], [ @.str.30, %sw.bb2.i ], [ @.str.29, %sw.bb1.i ], [ @.str.28, %do.end.i.usb_error_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13.i, ptr noundef nonnull @.str.81, i32 noundef %call.i, ptr noundef nonnull %retval.0.i) #13
  br label %disable_iso_interface.exit

disable_iso_interface.exit:                       ; preds = %usb_error_string.exit, %land.lhs.true.i.disable_iso_interface.exit_crit_edge, %if.then4.i.disable_iso_interface.exit_crit_edge, %if.end.i.disable_iso_interface.exit_crit_edge, %kill_stream_urbs.exit.disable_iso_interface.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %substream, ptr %capture, align 4
  %channels = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20, i32 2
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channels, align 4
  %call = tail call fastcc i32 @set_stream_hw(ptr noundef %1, ptr noundef %substream, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rate = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 8
  %packets_per_second = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %packets_per_second to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %packets_per_second, align 4
  %div31 = lshr i32 %8, 1
  %add = add i32 %div31, %6
  %div3 = udiv i32 %add, %8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %9 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime, align 4
  %fifo_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 12
  %11 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div3, ptr %fifo_size, align 8
  %12 = load ptr, ptr %runtime, align 4
  %fifo_size6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 46, i32 12
  %13 = ptrtoint ptr %fifo_size6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fifo_size6, align 8
  %delay = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %delay, align 4
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call8 = tail call fastcc i32 @start_usb_capture(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp9 = icmp sgt i32 %call8, -1
  br i1 %cmp9, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %states) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end11 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %states) #10
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %states, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @stop_usb_capture(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @start_usb_capture(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call = tail call fastcc i32 @start_usb_capture(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup36_crit_edge, label %do.body2

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

do.body2:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 768) #10
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %states, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body2.do.end24_crit_edge

do.body2.do.end24_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

lor.lhs.false:                                    ; preds = %do.body2
  %5 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %states, align 4
  %and1.i51 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i51)
  %tobool9.not = icmp eq i32 %and1.i51, 0
  br i1 %tobool9.not, label %lor.lhs.false.do.end24_crit_edge, label %if.end11

lor.lhs.false.do.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.end11:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %alsa_capture_wait = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 17
  %call1260 = call i32 @prepare_to_wait_event(ptr noundef %alsa_capture_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %8 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %states, align 4
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not61 = icmp eq i32 %10, 0
  br i1 %tobool15.not61, label %if.end11.lor.lhs.false16_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end11.lor.lhs.false16_crit_edge:               ; preds = %if.end11
  br label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %cleanup.lor.lhs.false16_crit_edge, %if.end11.lor.lhs.false16_crit_edge
  %11 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %states, align 4
  %and1.i54 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i54)
  %tobool19.not = icmp eq i32 %and1.i54, 0
  br i1 %tobool19.not, label %lor.lhs.false16.for.end_crit_edge, label %cleanup

lor.lhs.false16.for.end_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %lor.lhs.false16
  call void @schedule() #10
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %alsa_capture_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %13 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %states, align 4
  %15 = and i32 %14, 64
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %cleanup.lor.lhs.false16_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.lor.lhs.false16_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false16

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false16.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @finish_wait(ptr noundef %alsa_capture_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end24

do.end24:                                         ; preds = %for.end, %lor.lhs.false.do.end24_crit_edge, %do.body2.do.end24_crit_edge
  %16 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %states, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool27.not = icmp eq i32 %18, 0
  br i1 %tobool27.not, label %if.end29, label %do.end24.cleanup36_crit_edge

do.end24.cleanup36_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

if.end29:                                         ; preds = %do.end24
  %19 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %states, align 4
  %and1.i57 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i57)
  %tobool32.not = icmp eq i32 %and1.i57, 0
  br i1 %tobool32.not, label %if.end29.cleanup36_crit_edge, label %if.end34

if.end29.cleanup36_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %period_pos = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20, i32 5
  %21 = ptrtoint ptr %period_pos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %period_pos, align 4
  %buffer_pos = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20, i32 6
  %22 = ptrtoint ptr %buffer_pos to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buffer_pos, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %if.end34, %if.end29.cleanup36_crit_edge, %do.end24.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call, %entry.cleanup36_crit_edge ], [ -19, %do.end24.cleanup36_crit_edge ], [ -5, %if.end29.cleanup36_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %states = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %states, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %states) #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %states3 = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %states3) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %if.end ], [ -5, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capture_pcm_pointer(ptr nocapture noundef readonly %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %buffer_pos.i = getelementptr inbounds %struct.ua101, ptr %1, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %buffer_pos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_pos.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_usbmidi_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !78, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !102, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__UNIQUE_ID_description239, !1, !"__UNIQUE_ID_description239", i1 false, i1 false}
!1 = !{!"../sound/usb/misc/ua101.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_author240, !3, !"__UNIQUE_ID_author240", i1 false, i1 false}
!3 = !{!"../sound/usb/misc/ua101.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file241, !5, !"__UNIQUE_ID_file241", i1 false, i1 false}
!5 = !{!"../sound/usb/misc/ua101.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license242, !5, !"__UNIQUE_ID_license242", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/usb/misc/ua101.c", i32 47, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype243, !8, !"__UNIQUE_ID_indextype243", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index244, !11, !"__UNIQUE_ID_index244", i1 false, i1 false}
!11 = !{!"../sound/usb/misc/ua101.c", i32 48, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/usb/misc/ua101.c", i32 49, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype245, !13, !"__UNIQUE_ID_idtype245", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id246, !16, !"__UNIQUE_ID_id246", i1 false, i1 false}
!16 = !{!"../sound/usb/misc/ua101.c", i32 50, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/usb/misc/ua101.c", i32 51, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype247, !18, !"__UNIQUE_ID_enabletype247", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable248, !21, !"__UNIQUE_ID_enable248", i1 false, i1 false}
!21 = !{!"../sound/usb/misc/ua101.c", i32 52, i32 1}
!22 = !{ptr @__param_queue_length, !23, !"__param_queue_length", i1 false, i1 false}
!23 = !{!"../sound/usb/misc/ua101.c", i32 53, i32 1}
!24 = !{ptr @__UNIQUE_ID_queue_lengthtype249, !23, !"__UNIQUE_ID_queue_lengthtype249", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_queue_length250, !26, !"__UNIQUE_ID_queue_length250", i1 false, i1 false}
!26 = !{!"../sound/usb/misc/ua101.c", i32 54, i32 1}
!27 = !{ptr @__initcall__kmod_snd_ua101__257_1357_ua101_driver_init6, !28, !"__initcall__kmod_snd_ua101__257_1357_ua101_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/usb/misc/ua101.c", i32 1357, i32 1}
!29 = !{ptr @__exitcall_ua101_driver_exit, !28, !"__exitcall_ua101_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/usb/misc/ua101.c", i32 42, i32 12}
!34 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/usb/misc/ua101.c", i32 43, i32 14}
!38 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/usb/misc/ua101.c", i32 44, i32 13}
!42 = !{ptr @__param_str_queue_length, !23, !"__param_str_queue_length", i1 false, i1 false}
!43 = !{ptr @queue_length, !44, !"queue_length", i1 false, i1 false}
!44 = !{!"../sound/usb/misc/ua101.c", i32 45, i32 21}
!45 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.1, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/usb/misc/ua101.c", i32 1347, i32 10}
!48 = !{ptr @ua101_driver, !49, !"ua101_driver", i1 false, i1 false}
!49 = !{!"../sound/usb/misc/ua101.c", i32 1346, i32 26}
!50 = !{ptr @ua101_probe.midi_ep, !51, !"midi_ep", i1 false, i1 false}
!51 = !{!"../sound/usb/misc/ua101.c", i32 1161, i32 49}
!52 = !{ptr @ua101_probe.midi_quirk, !53, !"midi_quirk", i1 false, i1 false}
!53 = !{!"../sound/usb/misc/ua101.c", i32 1165, i32 42}
!54 = !{ptr @ua101_probe.intf_numbers, !55, !"intf_numbers", i1 false, i1 false}
!55 = !{!"../sound/usb/misc/ua101.c", i32 1169, i32 19}
!56 = !{ptr @ua101_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../sound/usb/misc/ua101.c", i32 1217, i32 2}
!58 = !{ptr @.str.2, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ua101_probe.__key.3, !60, !"__key", i1 false, i1 false}
!60 = !{!"../sound/usb/misc/ua101.c", i32 1218, i32 2}
!61 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ua101_probe.__key.5, !63, !"__key", i1 false, i1 false}
!63 = !{!"../sound/usb/misc/ua101.c", i32 1220, i32 2}
!64 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ua101_probe.__key.7, !66, !"__key", i1 false, i1 false}
!66 = !{!"../sound/usb/misc/ua101.c", i32 1221, i32 2}
!67 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ua101_probe.__key.9, !69, !"__key", i1 false, i1 false}
!69 = !{!"../sound/usb/misc/ua101.c", i32 1222, i32 2}
!70 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ua101_probe.__key.11, !72, !"__key", i1 false, i1 false}
!72 = !{!"../sound/usb/misc/ua101.c", i32 1223, i32 2}
!73 = !{ptr @.str.12, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/usb/misc/ua101.c", i32 1230, i32 4}
!76 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ua101_probe._entry, !75, !"_entry", i1 false, i1 false}
!81 = !{ptr @ua101_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/usb/misc/ua101.c", i32 1248, i32 39}
!84 = !{ptr @.str.19, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/usb/misc/ua101.c", i32 1248, i32 51}
!86 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/usb/misc/ua101.c", i32 1253, i32 4}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/usb/misc/ua101.c", i32 1254, i32 40}
!90 = !{ptr @.str.22, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/usb/misc/ua101.c", i32 1255, i32 39}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/usb/misc/ua101.c", i32 1255, i32 48}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/usb/misc/ua101.c", i32 124, i32 8}
!96 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @devices_mutex, !95, !"devices_mutex", i1 false, i1 false}
!98 = !{ptr @devices_used, !99, !"devices_used", i1 false, i1 false}
!99 = !{!"../sound/usb/misc/ua101.c", i32 125, i32 21}
!100 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/usb/misc/ua101.c", i32 302, i32 4}
!102 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @playback_work._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @playback_work._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/usb/misc/ua101.c", i32 135, i32 10}
!107 = !{ptr @.str.29, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/usb/misc/ua101.c", i32 137, i32 10}
!109 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/usb/misc/ua101.c", i32 139, i32 10}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/usb/misc/ua101.c", i32 141, i32 10}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/usb/misc/ua101.c", i32 143, i32 10}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/usb/misc/ua101.c", i32 145, i32 10}
!117 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/usb/misc/ua101.c", i32 150, i32 10}
!119 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/usb/misc/ua101.c", i32 152, i32 10}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/usb/misc/ua101.c", i32 959, i32 3}
!123 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @detect_usb_format._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @detect_usb_format._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/usb/misc/ua101.c", i32 963, i32 3}
!128 = !{ptr @detect_usb_format._entry.38, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @detect_usb_format._entry_ptr.40, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/usb/misc/ua101.c", i32 970, i32 3}
!132 = !{ptr @detect_usb_format._entry.41, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @detect_usb_format._entry_ptr.43, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/usb/misc/ua101.c", i32 977, i32 3}
!136 = !{ptr @detect_usb_format._entry.44, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @detect_usb_format._entry_ptr.46, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/usb/misc/ua101.c", i32 991, i32 3}
!140 = !{ptr @detect_usb_format._entry.47, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @detect_usb_format._entry_ptr.49, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/usb/misc/ua101.c", i32 1004, i32 3}
!144 = !{ptr @detect_usb_format._entry.50, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @detect_usb_format._entry_ptr.52, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/usb/misc/ua101.c", i32 1012, i32 3}
!148 = !{ptr @detect_usb_format._entry.53, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @detect_usb_format._entry_ptr.55, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/usb/misc/ua101.c", i32 895, i32 3}
!152 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @find_format_descriptor._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @find_format_descriptor._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/usb/misc/ua101.c", i32 901, i32 3}
!157 = !{ptr @find_format_descriptor._entry.58, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @find_format_descriptor._entry_ptr.60, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @find_format_descriptor._entry.61, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../sound/usb/misc/ua101.c", i32 907, i32 3}
!161 = !{ptr @find_format_descriptor._entry_ptr.62, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/usb/misc/ua101.c", i32 918, i32 4}
!164 = !{ptr @find_format_descriptor._entry.63, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @find_format_descriptor._entry_ptr.65, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/usb/misc/ua101.c", i32 926, i32 5}
!168 = !{ptr @find_format_descriptor._entry.66, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @find_format_descriptor._entry_ptr.68, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/usb/misc/ua101.c", i32 935, i32 2}
!172 = !{ptr @find_format_descriptor._entry.69, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @find_format_descriptor._entry_ptr.71, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../include/linux/usb.h", i32 912, i32 31}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/usb/misc/ua101.c", i32 1053, i32 3}
!178 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @alloc_stream_buffers._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @alloc_stream_buffers._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/usb/misc/ua101.c", i32 1110, i32 2}
!183 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @alloc_stream_urbs._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @alloc_stream_urbs._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/usb/misc/ua101.c", i32 378, i32 4}
!188 = !{ptr @capture_urb_complete._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @capture_urb_complete._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @playback_pcm_ops, !191, !"playback_pcm_ops", i1 false, i1 false}
!191 = !{!"../sound/usb/misc/ua101.c", i32 878, i32 33}
!192 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/usb/misc/ua101.c", i32 464, i32 4}
!194 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @enable_iso_interface._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @enable_iso_interface._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.80, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/usb/misc/ua101.c", i32 438, i32 4}
!199 = !{ptr @submit_stream_urbs._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @submit_stream_urbs._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/usb/misc/ua101.c", i32 485, i32 4}
!203 = !{ptr @.str.82, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @disable_iso_interface._entry, !202, !"_entry", i1 false, i1 false}
!206 = !{ptr @disable_iso_interface._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @capture_pcm_ops, !208, !"capture_pcm_ops", i1 false, i1 false}
!208 = !{!"../sound/usb/misc/ua101.c", i32 869, i32 33}
!209 = !{ptr @ua101_ids, !210, !"ua101_ids", i1 false, i1 false}
!210 = !{!"../sound/usb/misc/ua101.c", i32 1338, i32 35}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{!"auto-init"}
!221 = !{i8 0, i8 2}
!222 = !{!"branch_weights", i32 1, i32 2000}
!223 = !{!"branch_weights", i32 2000000000, i32 2002000, i32 2001000, i32 2000000, i32 2000000000}
