; ModuleID = '/llk/IR_all_yes/sound/usb/card.c_pt.bc'
source_filename = "../sound/usb/card.c"
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_audio_device_name = type { i32, ptr, ptr, ptr }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.uac1_ac_header_descriptor = type <{ i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }

@__UNIQUE_ID_author245 = internal constant [50 x i8] c"snd_usb_audio.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [36 x i8] c"snd_usb_audio.description=USB Audio\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [43 x i8] c"snd_usb_audio.file=sound/usb/snd-usb-audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [26 x i8] c"snd_usb_audio.license=GPL\00", section ".modinfo", align 1
@snd_usb_use_vmalloc = dso_local global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_str_index = internal constant [20 x i8] c"snd_usb_audio.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype249 = internal constant [42 x i8] c"snd_usb_audio.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index250 = internal constant [64 x i8] c"snd_usb_audio.parm=index:Index value for the USB audio adapter.\00", section ".modinfo", align 1
@__param_str_id = internal constant [17 x i8] c"snd_usb_audio.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype251 = internal constant [41 x i8] c"snd_usb_audio.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id252 = internal constant [59 x i8] c"snd_usb_audio.parm=id:ID string for the USB audio adapter.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [21 x i8] c"snd_usb_audio.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype253 = internal constant [44 x i8] c"snd_usb_audio.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable254 = internal constant [52 x i8] c"snd_usb_audio.parm=enable:Enable USB audio adapter.\00", section ".modinfo", align 1
@__param_str_vid = internal constant [18 x i8] c"snd_usb_audio.vid\00", align 1
@__param_arr_vid = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @vid }, align 4
@__param_vid = internal constant %struct.kernel_param { ptr @__param_str_vid, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_vid } }, section "__param", align 4
@__UNIQUE_ID_vidtype255 = internal constant [40 x i8] c"snd_usb_audio.parmtype=vid:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_vid256 = internal constant [59 x i8] c"snd_usb_audio.parm=vid:Vendor ID for the USB audio device.\00", section ".modinfo", align 1
@__param_str_pid = internal constant [18 x i8] c"snd_usb_audio.pid\00", align 1
@__param_arr_pid = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pid }, align 4
@__param_pid = internal constant %struct.kernel_param { ptr @__param_str_pid, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_pid } }, section "__param", align 4
@__UNIQUE_ID_pidtype257 = internal constant [40 x i8] c"snd_usb_audio.parmtype=pid:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pid258 = internal constant [60 x i8] c"snd_usb_audio.parm=pid:Product ID for the USB audio device.\00", section ".modinfo", align 1
@__param_str_device_setup = internal constant [27 x i8] c"snd_usb_audio.device_setup\00", align 1
@__param_arr_device_setup = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @device_setup }, align 4
@__param_device_setup = internal constant %struct.kernel_param { ptr @__param_str_device_setup, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_device_setup } }, section "__param", align 4
@__UNIQUE_ID_device_setuptype259 = internal constant [49 x i8] c"snd_usb_audio.parmtype=device_setup:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_device_setup260 = internal constant [67 x i8] c"snd_usb_audio.parm=device_setup:Specific device setup (if needed).\00", section ".modinfo", align 1
@__param_str_ignore_ctl_error = internal constant [31 x i8] c"snd_usb_audio.ignore_ctl_error\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_ctl_error = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ignore_ctl_error = internal constant %struct.kernel_param { ptr @__param_str_ignore_ctl_error, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ignore_ctl_error } }, section "__param", align 4
@__UNIQUE_ID_ignore_ctl_errortype261 = internal constant [45 x i8] c"snd_usb_audio.parmtype=ignore_ctl_error:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_ctl_error262 = internal constant [92 x i8] c"snd_usb_audio.parm=ignore_ctl_error:Ignore errors from USB controller for mixer interfaces.\00", section ".modinfo", align 1
@__param_str_autoclock = internal constant [24 x i8] c"snd_usb_audio.autoclock\00", align 1
@autoclock = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_autoclock = internal constant %struct.kernel_param { ptr @__param_str_autoclock, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @autoclock } }, section "__param", align 4
@__UNIQUE_ID_autoclocktype263 = internal constant [38 x i8] c"snd_usb_audio.parmtype=autoclock:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_autoclock264 = internal constant [90 x i8] c"snd_usb_audio.parm=autoclock:Enable auto-clock selection for UAC2 devices (default: yes).\00", section ".modinfo", align 1
@__param_str_lowlatency = internal constant [25 x i8] c"snd_usb_audio.lowlatency\00", align 1
@lowlatency = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_lowlatency = internal constant %struct.kernel_param { ptr @__param_str_lowlatency, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @lowlatency } }, section "__param", align 4
@__UNIQUE_ID_lowlatencytype265 = internal constant [39 x i8] c"snd_usb_audio.parmtype=lowlatency:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lowlatency266 = internal constant [74 x i8] c"snd_usb_audio.parm=lowlatency:Enable low latency playback (default: yes).\00", section ".modinfo", align 1
@__param_str_quirk_alias = internal constant [26 x i8] c"snd_usb_audio.quirk_alias\00", align 1
@__param_arr_quirk_alias = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @quirk_alias }, align 4
@__param_quirk_alias = internal constant %struct.kernel_param { ptr @__param_str_quirk_alias, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_quirk_alias } }, section "__param", align 4
@__UNIQUE_ID_quirk_aliastype267 = internal constant [50 x i8] c"snd_usb_audio.parmtype=quirk_alias:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk_alias268 = internal constant [70 x i8] c"snd_usb_audio.parm=quirk_alias:Quirk aliases, e.g. 0123abcd:5678beef.\00", section ".modinfo", align 1
@__param_str_delayed_register = internal constant [31 x i8] c"snd_usb_audio.delayed_register\00", align 1
@__param_arr_delayed_register = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @delayed_register }, align 4
@__param_delayed_register = internal constant %struct.kernel_param { ptr @__param_str_delayed_register, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_delayed_register } }, section "__param", align 4
@__UNIQUE_ID_delayed_registertype269 = internal constant [55 x i8] c"snd_usb_audio.parmtype=delayed_register:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_delayed_register270 = internal constant [104 x i8] c"snd_usb_audio.parm=delayed_register:Quirk for delayed registration, given by id:iface, e.g. 0123abcd:4.\00", section ".modinfo", align 1
@__param_str_implicit_fb = internal constant [26 x i8] c"snd_usb_audio.implicit_fb\00", align 1
@__param_arr_implicit_fb = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @implicit_fb }, align 4
@__param_implicit_fb = internal constant %struct.kernel_param { ptr @__param_str_implicit_fb, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_implicit_fb } }, section "__param", align 4
@__UNIQUE_ID_implicit_fbtype271 = internal constant [49 x i8] c"snd_usb_audio.parmtype=implicit_fb:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_implicit_fb272 = internal constant [74 x i8] c"snd_usb_audio.parm=implicit_fb:Apply generic implicit feedback sync mode.\00", section ".modinfo", align 1
@__param_str_quirk_flags = internal constant [26 x i8] c"snd_usb_audio.quirk_flags\00", align 1
@__param_arr_quirk_flags = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_uint, ptr @quirk_flags }, align 4
@__param_quirk_flags = internal constant %struct.kernel_param { ptr @__param_str_quirk_flags, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_quirk_flags } }, section "__param", align 4
@__UNIQUE_ID_quirk_flagstype273 = internal constant [49 x i8] c"snd_usb_audio.parmtype=quirk_flags:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_quirk_flags274 = internal constant [55 x i8] c"snd_usb_audio.parm=quirk_flags:Driver quirk bit flags.\00", section ".modinfo", align 1
@__param_str_use_vmalloc = internal constant [26 x i8] c"snd_usb_audio.use_vmalloc\00", align 1
@__param_use_vmalloc = internal constant %struct.kernel_param { ptr @__param_str_use_vmalloc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @snd_usb_use_vmalloc } }, section "__param", align 4
@__UNIQUE_ID_use_vmalloctype275 = internal constant [40 x i8] c"snd_usb_audio.parmtype=use_vmalloc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_vmalloc276 = internal constant [88 x i8] c"snd_usb_audio.parm=use_vmalloc:Use vmalloc for PCM intermediate buffers (default: yes).\00", section ".modinfo", align 1
@__param_str_skip_validation = internal constant [30 x i8] c"snd_usb_audio.skip_validation\00", align 1
@snd_usb_skip_validation = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_skip_validation = internal constant %struct.kernel_param { ptr @__param_str_skip_validation, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @snd_usb_skip_validation } }, section "__param", align 4
@__UNIQUE_ID_skip_validationtype277 = internal constant [44 x i8] c"snd_usb_audio.parmtype=skip_validation:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_skip_validation278 = internal constant [82 x i8] c"snd_usb_audio.parm=skip_validation:Skip unit descriptor validation (default: no).\00", section ".modinfo", align 1
@__initcall__kmod_snd_usb_audio__281_1126_usb_audio_driver_init6 = internal global ptr @usb_audio_driver_init, section ".initcall6.init", align 4
@usb_audio_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb_audio_probe, ptr @usb_audio_disconnect, ptr null, ptr @usb_audio_suspend, ptr @usb_audio_resume, ptr @usb_audio_resume, ptr null, ptr null, ptr @usb_audio_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_audio_driver_exit = internal global ptr @usb_audio_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@vid = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@pid = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@device_setup = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@quirk_alias = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@delayed_register = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@implicit_fb = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@quirk_flags = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-usb-audio\00", [18 x i8] zeroinitializer }, align 32
@usb_audio_ids = internal constant { [253 x %struct.usb_device_id], [1512 x i8] } { [253 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1027, i16 -18216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 1054, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.usb_device_id { i16 131, i16 1054, i16 16130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1054, i16 16132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1054, i16 16138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 131, i16 1054, i16 16153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1054, i16 16533, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.usb_device_id { i16 3, i16 1060, i16 -18382, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.usb_device_id { i16 387, i16 1133, i16 2128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2222, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2246, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 387, i16 1133, i16 2448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1177, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4106, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4108, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4114, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4115, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4116, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4118, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4120, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4123, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4124, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4125, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4130, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4133, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.208 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.212 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4137, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.216 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4138, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.220 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4142, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.226 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4146, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.228 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4148, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4149, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.232 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4150, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4151, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.234 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.236 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4157, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4158, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4159, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4161, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4162, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4163, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4164, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4165, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4174, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4175, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4177, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4178, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4179, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.usb_device_id { i16 131, i16 1177, i16 4180, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4181, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4182, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4183, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4185, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4186, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4187, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 4189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5379, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 5388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8194, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20483, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20486, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20489, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.300 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20490, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20491, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.304 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20492, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.306 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20493, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.307 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.308 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 20495, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.309 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.311 to i32) }, %struct.usb_device_id { i16 3, i16 1177, i16 28688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.313 to i32) }, %struct.usb_device_id { i16 129, i16 1177, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.314 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.326 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.338 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 7, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 9, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 11, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.354 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.358 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.361 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.367 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 22, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 27, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.375 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 29, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.378 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.381 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.387 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 39, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.390 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 41, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.393 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 43, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.396 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 45, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.399 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 47, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.402 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 51, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.405 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 55, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.408 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 59, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.412 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 64, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.415 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.418 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 71, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.420 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 72, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.422 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 76, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.425 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 77, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.427 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.430 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 82, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.432 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 96, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.434 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.436 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 101, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.438 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 109, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.441 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 116, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.444 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.447 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 122, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.449 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.452 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 139, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.455 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 163, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.458 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.461 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 230, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.464 to i32) }, %struct.usb_device_id { i16 131, i16 1410, i16 264, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.466 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 275, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.469 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.476 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 303, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.483 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 345, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.486 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 68, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.487 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 125, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.488 to i32) }, %struct.usb_device_id { i16 3, i16 1410, i16 141, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.489 to i32) }, %struct.usb_device_id { i16 129, i16 1410, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.490 to i32) }, %struct.usb_device_id { i16 131, i16 1784, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.494 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4098, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.498 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.501 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.504 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.507 to i32) }, %struct.usb_device_id { i16 15, i16 1891, i16 4145, i16 256, i16 265, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.510 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.512 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 4161, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.515 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.519 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8195, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.522 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.525 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8205, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.529 to i32) }, %struct.usb_device_id { i16 3, i16 1891, i16 8217, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.532 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.538 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.544 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.550 to i32) }, %struct.usb_device_id { i16 131, i16 1891, i16 8321, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.556 to i32) }, %struct.usb_device_id { i16 3, i16 1999, i16 26625, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.559 to i32) }, %struct.usb_device_id { i16 3, i16 1999, i16 26626, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.561 to i32) }, %struct.usb_device_id { i16 35, i16 2045, i16 1, i16 0, i16 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.565 to i32) }, %struct.usb_device_id { i16 3, i16 2154, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.569 to i32) }, %struct.usb_device_id { i16 3, i16 2154, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.571 to i32) }, %struct.usb_device_id { i16 3, i16 2154, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.573 to i32) }, %struct.usb_device_id { i16 131, i16 2372, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.575 to i32) }, %struct.usb_device_id { i16 131, i16 2372, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.576 to i32) }, %struct.usb_device_id { i16 131, i16 2372, i16 516, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.577 to i32) }, %struct.usb_device_id { i16 3, i16 2536, i16 98, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.580 to i32) }, %struct.usb_device_id { i16 3, i16 2536, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.582 to i32) }, %struct.usb_device_id { i16 131, i16 2638, i16 8256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.585 to i32) }, %struct.usb_device_id { i16 131, i16 2638, i16 16448, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.588 to i32) }, %struct.usb_device_id { i16 131, i16 3277, i16 18, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.590 to i32) }, %struct.usb_device_id { i16 131, i16 3277, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.591 to i32) }, %struct.usb_device_id { i16 131, i16 3277, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.592 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 53, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.595 to i32) }, %struct.usb_device_id { i16 131, i16 4661, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.598 to i32) }, %struct.usb_device_id { i16 131, i16 4661, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.600 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.601 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.602 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.610 to i32) }, %struct.usb_device_id { i16 3, i16 4661, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.615 to i32) }, %struct.usb_device_id { i16 131, i16 4661, i16 18017, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.617 to i32) }, %struct.usb_device_id { i16 131, i16 4926, i16 2069, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.620 to i32) }, %struct.usb_device_id { i16 3, i16 6092, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6092, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6790, i16 29997, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.623 to i32) }, %struct.usb_device_id { i16 3, i16 7992, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 18258, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.625 to i32) }, %struct.usb_device_id { i16 3, i16 28932, i16 8706, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.626 to i32) }, %struct.usb_device_id { i16 3, i16 3514, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.634 to i32) }, %struct.usb_device_id { i16 3, i16 3514, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.642 to i32) }, %struct.usb_device_id { i16 131, i16 1604, i16 -32735, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.648 to i32) }, %struct.usb_device_id { i16 387, i16 5454, i16 20494, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.656 to i32) }, %struct.usb_device_id { i16 3, i16 1118, i16 643, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.662 to i32) }, %struct.usb_device_id { i16 3, i16 8204, i16 4107, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.666 to i32) }, %struct.usb_device_id { i16 3, i16 5766, i16 221, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.668 to i32) }, %struct.usb_device_id { i16 384, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 3, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.669 to i32) }, %struct.usb_device_id { i16 3, i16 6581, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.673 to i32) }, %struct.usb_device_id { i16 131, i16 2045, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.680 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 35, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.686 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 23, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.692 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 14, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.698 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 13, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.704 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 30, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.710 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 10, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.716 to i32) }, %struct.usb_device_id { i16 387, i16 21325, i16 8457, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.721 to i32) }, %struct.usb_device_id { i16 131, i16 2276, i16 383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.727 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 27, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.733 to i32) }, %struct.usb_device_id { i16 131, i16 2276, i16 355, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.739 to i32) }, %struct.usb_device_id { i16 131, i16 11123, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.745 to i32) }, %struct.usb_device_id { i16 3, i16 5013, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.747 to i32) }, %struct.usb_device_id { i16 384, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [1512 x i8] zeroinitializer }, align 32
@register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 52), ptr getelementptr (i8, ptr @register_mutex, i64 52) }, ptr @register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@usb_chip = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@usb_audio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"USB device is in the shutdown state, cannot create a card instance\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_audio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sound/usb/card.c\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_audio_probe._entry_ptr = internal global ptr @usb_audio_probe._entry, section ".printk_index", align 4
@usb_audio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 797, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device (%04x:%04x) is disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usb_audio_probe._entry_ptr.10 = internal global ptr @usb_audio_probe._entry.7, section ".printk_index", align 4
@usb_audio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no available usb audio device\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_audio_probe._entry_ptr.13 = internal global ptr @usb_audio_probe._entry.11, section ".printk_index", align 4
@usb_audio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 810, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Too many interfaces assigned to the single USB-audio card\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_audio_probe._entry_ptr.16 = internal global ptr @usb_audio_probe._entry.14, section ".printk_index", align 4
@usb_audio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 852, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Found post-registration device assignment: %08x:%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_audio_probe._entry_ptr.19 = internal global ptr @usb_audio_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%x:%x\00", [26 x i8] zeroinitializer }, align 32
@get_alias_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 676, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"device (%04x:%04x): applying quirk alias %04x:%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_alias_id\00", [19 x i8] zeroinitializer }, align 32
@get_alias_id._entry_ptr = internal global ptr @get_alias_id._entry, section ".printk_index", align 4
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_mutex\00", [17 x i8] zeroinitializer }, align 32
@snd_usb_audio_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown device speed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_usb_audio_create\00", [43 x i8] zeroinitializer }, align 32
@snd_usb_audio_create._entry_ptr = internal global ptr @snd_usb_audio_create._entry, section ".printk_index", align 4
@snd_usb_audio_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot create card instance %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_audio_create._entry_ptr.29 = internal global ptr @snd_usb_audio_create._entry.27, section ".printk_index", align 4
@snd_usb_audio_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@snd_usb_audio_create.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&chip->shutdown_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"USB-Audio\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB%04x:%04x\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"USB Device %#04x:%#04x\00", [41 x i8] zeroinitializer }, align 32
@lookup_device_name.p = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@usb_audio_names = internal constant { [42 x %struct.usb_audio_device_name], [160 x i8] } { [42 x %struct.usb_audio_device_name] [%struct.usb_audio_device_name { i32 66060905, ptr @.str.36, ptr @.str.37, ptr @.str.38 }, %struct.usb_audio_device_name { i32 66061671, ptr @.str.36, ptr @.str.39, ptr @.str.40 }, %struct.usb_audio_device_name { i32 68460544, ptr @.str.41, ptr @.str.42, ptr @.str.43 }, %struct.usb_audio_device_name { i32 68460545, ptr @.str.41, ptr @.str.44, ptr @.str.45 }, %struct.usb_audio_device_name { i32 68460546, ptr @.str.46, ptr @.str.47, ptr @.str.48 }, %struct.usb_audio_device_name { i32 69087248, ptr @.str.49, ptr @.str.50, ptr null }, %struct.usb_audio_device_name { i32 69087304, ptr @.str.51, ptr @.str.52, ptr null }, %struct.usb_audio_device_name { i32 74254736, ptr @.str.53, ptr @.str.54, ptr null }, %struct.usb_audio_device_name { i32 98632712, ptr @.str.55, ptr @.str.56, ptr null }, %struct.usb_audio_device_name { i32 98632832, ptr @.str.57, ptr @.str.58, ptr null }, %struct.usb_audio_device_name { i32 184883479, ptr @.str.46, ptr @.str.47, ptr @.str.48 }, %struct.usb_audio_device_name { i32 184883480, ptr @.str.46, ptr @.str.47, ptr @.str.48 }, %struct.usb_audio_device_name { i32 198852628, ptr @.str.59, ptr @.str.60, ptr @.str.61 }, %struct.usb_audio_device_name { i32 198852654, ptr @.str.59, ptr @.str.62, ptr @.str.61 }, %struct.usb_audio_device_name { i32 214761512, ptr @.str.63, ptr @.str.64, ptr null }, %struct.usb_audio_device_name { i32 227279106, ptr null, ptr @.str.65, ptr null }, %struct.usb_audio_device_name { i32 227279107, ptr null, ptr @.str.66, ptr null }, %struct.usb_audio_device_name { i32 229641572, ptr @.str.46, ptr @.str.47, ptr @.str.48 }, %struct.usb_audio_device_name { i32 229659709, ptr @.str.46, ptr @.str.47, ptr @.str.48 }, %struct.usb_audio_device_name { i32 265879560, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 272433408, ptr @.str.68, ptr @.str.69, ptr null }, %struct.usb_audio_device_name { i32 272433409, ptr @.str.68, ptr @.str.69, ptr null }, %struct.usb_audio_device_name { i32 333774849, ptr @.str.70, ptr @.str.71, ptr null }, %struct.usb_audio_device_name { i32 397021254, ptr @.str.72, ptr @.str.73, ptr @.str.74 }, %struct.usb_audio_device_name { i32 397021261, ptr @.str.72, ptr @.str.75, ptr @.str.76 }, %struct.usb_audio_device_name { i32 651037185, ptr @.str.46, ptr @.str.47, ptr @.str.48 }, %struct.usb_audio_device_name { i32 541094400, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094401, ptr @.str.57, ptr @.str.77, ptr null }, %struct.usb_audio_device_name { i32 541094416, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094417, ptr @.str.57, ptr @.str.77, ptr null }, %struct.usb_audio_device_name { i32 541094419, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094423, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094427, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094430, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094431, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094464, ptr @.str.57, ptr @.str.78, ptr null }, %struct.usb_audio_device_name { i32 541094496, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094512, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094528, ptr @.str.57, ptr @.str.67, ptr null }, %struct.usb_audio_device_name { i32 541094529, ptr @.str.57, ptr @.str.77, ptr null }, %struct.usb_audio_device_name { i32 541098496, ptr @.str.57, ptr @.str.58, ptr null }, %struct.usb_audio_device_name zeroinitializer], [160 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Thunderbolt Dock Audio Headset\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HP-Thunderbolt-Dock-Audio-Headset\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Thunderbolt Dock Audio Module\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HP-Thunderbolt-Dock-Audio-Module\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Gigabyte\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Aorus Master Front Headphone\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Gigabyte-Aorus-Master-Front-Headphone\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Aorus Master Main Audio\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Gigabyte-Aorus-Master-Main-Audio\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Realtek\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC1220-VB-DT\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Realtek-ALC1220-VB-Desktop\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Creative Labs\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sound Blaster MP3+\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Toshiba\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SB-0500\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Logitech, Inc.\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QuickCam Pro 9000\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Syntek\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STK1160\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hauppauge\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Woodbury\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Dell\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WD15 Dock\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Dell-WD15-Dock\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WD19 Dock\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TerraTec\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Aureon5.1MkII\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ICUSBAUDIO7D\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Audio Advantage MicroII\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HVR-950Q\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Stanton\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ScratchAmp\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Rane\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SL-1\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Lenovo\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ThinkStation P620 Rear\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Lenovo-ThinkStation-P620-Rear\00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ThinkStation P620 Main\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Lenovo-ThinkStation-P620-Main\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HVR-950Q-MXL\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HVR-850\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" at \00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c", low speed\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", full speed\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", high speed\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", super speed\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c", super speed plus\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 237, ptr @.str.89, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unknown interface protocol %#02x, assuming v1\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_usb_create_streams\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr = internal global ptr @snd_usb_create_streams._entry, section ".printk_index", align 4
@snd_usb_create_streams._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.88, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot find UAC_HEADER\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.92 = internal global ptr @snd_usb_create_streams._entry.90, section ".printk_index", align 4
@snd_usb_create_streams._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.88, ptr @.str.4, i32 257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid control header\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.95 = internal global ptr @snd_usb_create_streams._entry.93, section ".printk_index", align 4
@snd_usb_create_streams._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.88, ptr @.str.4, i32 262, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"too short v1 buffer descriptor\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.98 = internal global ptr @snd_usb_create_streams._entry.96, section ".printk_index", align 4
@snd_usb_create_streams._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.88, ptr @.str.4, i32 267, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"skipping empty audio interface (v1)\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.101 = internal global ptr @snd_usb_create_streams._entry.99, section ".printk_index", align 4
@snd_usb_create_streams._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.88, ptr @.str.4, i32 272, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid buffer length (v1)\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.104 = internal global ptr @snd_usb_create_streams._entry.102, section ".printk_index", align 4
@snd_usb_create_streams._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.88, ptr @.str.4, i32 277, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid UAC_HEADER (v1)\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.107 = internal global ptr @snd_usb_create_streams._entry.105, section ".printk_index", align 4
@snd_usb_create_streams._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.88, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Audio class v2/v3 interfaces need an interface association\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.110 = internal global ptr @snd_usb_create_streams._entry.108, section ".printk_index", align 4
@snd_usb_create_streams._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.88, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported UAC3 BADD profile\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_usb_create_streams._entry_ptr.113 = internal global ptr @snd_usb_create_streams._entry.111, section ".printk_index", align 4
@snd_usb_create_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 148, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%u:%d : does not exist\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_usb_create_stream\00", [42 x i8] zeroinitializer }, align 32
@snd_usb_create_stream._entry_ptr = internal global ptr @snd_usb_create_stream._entry, section ".printk_index", align 4
@snd_usb_create_stream.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.4, ptr @.str.116, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:%d: skipping, already claimed\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_usb_create_stream._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.115, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%u:%d: cannot create sequencer device\0A\00", [57 x i8] zeroinitializer }, align 32
@snd_usb_create_stream._entry_ptr.119 = internal global ptr @snd_usb_create_stream._entry.117, section ".printk_index", align 4
@snd_usb_create_stream.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.4, ptr @.str.120, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%u:%d: skipping non-supported interface %d\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_usb_create_stream._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.115, ptr @.str.4, i32 205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"low speed audio streaming not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_usb_create_stream._entry_ptr.123 = internal global ptr @snd_usb_create_stream._entry.121, section ".printk_index", align 4
@.compoundliteral = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 14, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 48000, i32 48000, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.124 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 16, i32 0, i8 3, i8 4, i8 0, i8 4, i8 0, i8 -126, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.126, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.127 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.128 }, [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Standard Microsystems Corp.\00", [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HP Wireless Audio\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.130, ptr @.str.131, i16 -1, i16 1, ptr @.compoundliteral.132 }, [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Yamaha\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UX256\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.135, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MU1000\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.137, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MU2000\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.139, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MU500\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.141, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UW500\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.143, i16 3, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MOTIF6\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.145, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MOTIF7\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.147, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MOTIF8\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.149, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UX96\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.151, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UX16\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.153, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EOS BX\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.155, i16 3, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UC-MX\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.157, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UC-KX\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.159, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"S08\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.161, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLP-150\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.163, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLP-170\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.165, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"P-250\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.167, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TYROS\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.169, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PF-500\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.171, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"S90\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.173, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOTIF-R\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.175, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MDP-5\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.177, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-204\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.179, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-206\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.181, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-208\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.183, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-210\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.185, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PSR-1100\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.187, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PSR-2100\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.189, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLP-175\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.191, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PSR-K1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.193, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EZ-J24\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.195, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EZ-250i\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.197, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MOTIF ES 6\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.199, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MOTIF ES 7\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.201, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MOTIF ES 8\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.203, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-301\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.205, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-303\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.207, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-305\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.209, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-307\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.211, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CVP-309\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.213, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CVP-309GP\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.215, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PSR-1500\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.217, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PSR-3000\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.220 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.219, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ELS-01/01C\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.221, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PSR-295/293\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.223, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DGX-205/203\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.225, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DGX-305\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.227, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DGX-505\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.229, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.232 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 0, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 0, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 0, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.265 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.267 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal constant { [5 x %struct.snd_usb_audio_quirk], [48 x i8] } { [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.269 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.271 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 5, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.273 }, [16 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DGP-7\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.275, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DGP-5\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.277, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CS1D\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.281, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DSP1D\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.283, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DME32\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.285, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DM2000\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.287, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"02R96\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.289, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACU16-C\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.291, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NHB32-C\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.293, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DM1000\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.295, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"01V96\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.297, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPX2000\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.299, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PM5D\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.301, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DME64N\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.304 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.303, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DME24N\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.306 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.305, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.307 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.308 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.309 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr null, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DTX\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.311 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.310, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UB99\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.134, ptr @.str.312, i16 -1, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.314 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 2, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Roland\00", [25 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UA-100\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.317 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.318 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 -128, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.319 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.320 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.317 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.318 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.319 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.316, i16 -1, i16 1, ptr @.compoundliteral.320 }, [16 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EDIROL\00", [25 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UM-4\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.324 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.326 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.323, i16 -1, i16 1, ptr @.compoundliteral.325 }, [16 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SC-8850\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 63, i16 63, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.328 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.327, i16 -1, i16 1, ptr @.compoundliteral.329 }, [16 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"U-8\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.332 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 5, i16 5, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.332 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.334 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.331, i16 -1, i16 1, ptr @.compoundliteral.333 }, [16 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UM-2\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.336 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.336 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.338 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.335, i16 -1, i16 1, ptr @.compoundliteral.337 }, [16 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SC-8820\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.340 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 19, i16 19, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.341 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.340 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.342 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.339, i16 -1, i16 1, ptr @.compoundliteral.341 }, [16 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PC-300\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.344 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.344 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.343, i16 -1, i16 1, ptr @.compoundliteral.345 }, [16 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UM-1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.348 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.348 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.350 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.347, i16 -1, i16 1, ptr @.compoundliteral.349 }, [16 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SK-500\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.352 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 19, i16 19, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.353 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.352 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.354 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.351, i16 -1, i16 1, ptr @.compoundliteral.353 }, [16 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC-D70\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.356 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.356 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.358 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.355, i16 -1, i16 1, ptr @.compoundliteral.357 }, [16 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UA-5\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.360 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.361 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.359, i16 -1, i16 1, ptr @.compoundliteral.360 }, [16 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XV-5050\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.364 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.362, i16 0, i16 4, ptr @.compoundliteral.363 }, [16 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UM-880\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.366 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 511, i16 511, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.365, i16 0, i16 4, ptr @.compoundliteral.366 }, [16 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SD-90\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.370 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.369 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.368, i16 -1, i16 1, ptr @.compoundliteral.370 }, [16 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MMP-2\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.374 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.373 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.372, i16 -1, i16 1, ptr @.compoundliteral.374 }, [16 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V-SYNTH\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.378 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.376, i16 0, i16 4, ptr @.compoundliteral.377 }, [16 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UM-550\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.380 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 63, i16 63, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.379, i16 0, i16 4, ptr @.compoundliteral.380 }, [16 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UA-20\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.384 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 0, i8 -126, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 44100, i32 44100, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.386 = internal constant { [5 x %struct.snd_usb_audio_quirk], [48 x i8] } { [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.383 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.384 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.385 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.382, i16 -1, i16 1, ptr @.compoundliteral.386 }, [16 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SD-20\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.388, i16 0, i16 4, ptr @.compoundliteral.389 }, [16 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SD-80\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.392 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.391, i16 0, i16 4, ptr @.compoundliteral.392 }, [16 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UA-700\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.395 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.396 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.394, i16 -1, i16 1, ptr @.compoundliteral.395 }, [16 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XV-2020\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.398 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.399 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.397, i16 0, i16 4, ptr @.compoundliteral.398 }, [16 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VariOS\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.401 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.402 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.400, i16 0, i16 4, ptr @.compoundliteral.401 }, [16 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCR\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.404 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.405 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.403, i16 0, i16 4, ptr @.compoundliteral.404 }, [16 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Digital Piano\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.407 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.408 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.406, i16 0, i16 4, ptr @.compoundliteral.407 }, [16 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BOSS\00", [27 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GS-10\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.411 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.412 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.409, ptr @.str.410, i16 -1, i16 1, ptr @.compoundliteral.411 }, [16 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GI-20\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.414 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.415 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.413, i16 0, i16 4, ptr @.compoundliteral.414 }, [16 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RS-70\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.417 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.418 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.416, i16 0, i16 4, ptr @.compoundliteral.417 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.419 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.420 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.419 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.421 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.422 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @.compoundliteral.421 }, [16 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCR-A\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.424 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.425 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.423, i16 -1, i16 1, ptr @.compoundliteral.424 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.426 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.427 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.423, i16 0, i16 4, ptr @.compoundliteral.426 }, [16 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UA-3FX\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.429 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.430 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.428, i16 -1, i16 1, ptr @.compoundliteral.429 }, [16 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UM-1SX\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.432 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.431, i16 0, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EXR Series\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.434 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.433, i16 0, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.435 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.436 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.435 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.437 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.438 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @.compoundliteral.437 }, [16 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FANTOM-X\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.440 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.441 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.439, i16 0, i16 4, ptr @.compoundliteral.440 }, [16 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UA-25\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.443 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.444 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.442, i16 -1, i16 1, ptr @.compoundliteral.443 }, [16 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DR-880\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.446 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.447 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.409, ptr @.str.445, i16 0, i16 4, ptr @.compoundliteral.446 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.448 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.449 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr null, i16 0, i16 4, ptr @.compoundliteral.448 }, [16 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"G-70\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.451 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.452 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.315, ptr @.str.450, i16 0, i16 4, ptr @.compoundliteral.451 }, [16 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PC-50\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.454 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.455 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.453, i16 0, i16 4, ptr @.compoundliteral.454 }, [16 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UA-4FX\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.457 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.458 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.456, i16 -1, i16 1, ptr @.compoundliteral.457 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.459 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.460 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.459 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.461 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.460 }, [16 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UA-25EX\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.463 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 18, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.464 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.322, ptr @.str.462, i16 -1, i16 1, ptr @.compoundliteral.463 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.465 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 7, i16 7, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.466 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 4, ptr @.compoundliteral.465 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.467 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.468 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.467 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.469 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.468 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.470 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.471 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.470, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.472 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.473 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 12, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 -123, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.472, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.474 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.475 = internal constant { [6 x %struct.snd_usb_audio_quirk], [32 x i8] } { [6 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.471 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.473 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.474 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.476 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.475 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.477 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.478 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.477, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.479 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.480 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 6, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 -123, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.479, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.481 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.482 = internal constant { [6 x %struct.snd_usb_audio_quirk], [32 x i8] } { [6 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.478 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.480 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.481 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.483 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.482 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.484 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.485 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 4, ptr @.compoundliteral.484 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.486 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.485 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.487 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -3, i16 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.488 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -3, i16 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.489 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -3, i16 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.490 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 2, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Hercules\00", [23 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DJ Console (WE)\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.493 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.494 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.491, ptr @.str.492, i16 4, i16 4, ptr @.compoundliteral.493 }, [16 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"M-Audio\00", [24 x i8] zeroinitializer }, align 32
@.str.496 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MidiSport 2x2\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.497 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.498 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.496, i16 -1, i16 7, ptr @.compoundliteral.497 }, [16 x i8] zeroinitializer }, align 32
@.str.499 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MidiSport 1x1\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.500 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.501 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.499, i16 -1, i16 7, ptr @.compoundliteral.500 }, [16 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Keystation\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.503 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.504 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.502, i16 -1, i16 7, ptr @.compoundliteral.503 }, [16 x i8] zeroinitializer }, align 32
@.str.505 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MidiSport 4x4\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.506 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 15, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.507 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.505, i16 -1, i16 7, ptr @.compoundliteral.506 }, [16 x i8] zeroinitializer }, align 32
@.str.508 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MidiSport 8x8\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.509 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 511, i16 511, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.510 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.508, i16 -1, i16 7, ptr @.compoundliteral.509 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.511 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 511, i16 511, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.512 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.508, i16 -1, i16 7, ptr @.compoundliteral.511 }, [16 x i8] zeroinitializer }, align 32
@.str.513 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MidiSport 2x4\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.514 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 15, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.515 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.513, i16 -1, i16 7, ptr @.compoundliteral.514 }, [16 x i8] zeroinitializer }, align 32
@.str.516 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Quattro\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.517 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.518 = internal constant { [11 x %struct.snd_usb_audio_quirk], [48 x i8] } { [11 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 5, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 6, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 7, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 8, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 9, i16 7, ptr @.compoundliteral.517 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.519 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.516, i16 -1, i16 1, ptr @.compoundliteral.518 }, [16 x i8] zeroinitializer }, align 32
@.str.520 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AudioPhile\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.521 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.522 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.520, i16 6, i16 7, ptr @.compoundliteral.521 }, [16 x i8] zeroinitializer }, align 32
@.str.523 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ozone\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.524 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.525 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.523, i16 3, i16 7, ptr @.compoundliteral.524 }, [16 x i8] zeroinitializer }, align 32
@.str.526 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OmniStudio\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.527 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.528 = internal constant { [11 x %struct.snd_usb_audio_quirk], [48 x i8] } { [11 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 5, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 6, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 7, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 8, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 9, i16 7, ptr @.compoundliteral.527 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.529 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.495, ptr @.str.526, i16 -1, i16 1, ptr @.compoundliteral.528 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.530 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.531 = internal constant { [5 x %struct.snd_usb_audio_quirk], [48 x i8] } { [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 7, ptr @.compoundliteral.530 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.532 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.531 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.533 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.534 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.533, i8 -128, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.535 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.536 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 3, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.535, i8 -128, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.537 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.534 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.536 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.538 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.537 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.539 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.540 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.539, i8 -128, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.541 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.542 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 3, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.541, i8 -128, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.543 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.540 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.542 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.544 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.543 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.545 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.546 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.545, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.547 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.548 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.547, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.549 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.546 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.548 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.550 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.549 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.551 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.552 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.551, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.553 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.554 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 1, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.553, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.555 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.552 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.554 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.556 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.555 }, [16 x i8] zeroinitializer }, align 32
@.str.557 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Casio\00", [26 x i8] zeroinitializer }, align 32
@.str.558 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PL-40R\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.559 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.557, ptr @.str.558, i16 0, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.560 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Keyboard\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.561 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.557, ptr @.str.560, i16 0, i16 5, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.562 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MOTU\00", [27 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Fastlane\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.564 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 9, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.565 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.562, ptr @.str.563, i16 -1, i16 1, ptr @.compoundliteral.564 }, [16 x i8] zeroinitializer }, align 32
@.str.566 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Emagic\00", [25 x i8] zeroinitializer }, align 32
@.str.567 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unitor8\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.568 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 -32513, i16 -32513, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.569 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.566, ptr @.str.567, i16 2, i16 10, ptr @.compoundliteral.568 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.570 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 -32513, i16 -32513, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.571 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.566, ptr null, i16 2, i16 10, ptr @.compoundliteral.570 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.572 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 -32753, i16 -32765, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.573 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.566, ptr null, i16 2, i16 10, ptr @.compoundliteral.572 }, [16 x i8] zeroinitializer }, align 32
@.str.574 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KORG, Inc.\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.575 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.574, ptr null, i16 3, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.576 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.574, ptr null, i16 3, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.577 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.574, ptr null, i16 3, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.578 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AKAI\00", [27 x i8] zeroinitializer }, align 32
@.str.579 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MPD16\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.580 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.578, ptr @.str.579, i16 0, i16 12, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.581 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.582 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.581 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.583 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.584 = internal constant { [5 x %struct.snd_usb_audio_quirk], [48 x i8] } { [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.583 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.585 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.584 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.586 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.587 = internal constant { [5 x %struct.snd_usb_audio_quirk], [48 x i8] } { [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.586 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.588 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.587 }, [16 x i8] zeroinitializer }, align 32
@.str.589 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PHASE 26\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.590 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.63, ptr @.str.589, i16 3, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.591 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.63, ptr @.str.589, i16 3, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.592 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.63, ptr @.str.589, i16 3, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.593 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Miditech\00", [23 x i8] zeroinitializer }, align 32
@.str.594 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Play'n Roll\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.595 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.593, ptr @.str.594, i16 0, i16 11, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.596 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Novation\00", [23 x i8] zeroinitializer }, align 32
@.str.597 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ReMOTE Audio/XStation\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.598 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.596, ptr @.str.597, i16 4, i16 8, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.599 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speedio\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.600 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.596, ptr @.str.599, i16 3, i16 8, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.601 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 9, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.602 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 9, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.603 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Focusrite\00", [22 x i8] zeroinitializer }, align 32
@.str.604 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Saffire 6 USB\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.605 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 44100, i32 48000], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.606 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i32 588, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.605, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.607 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 44100, i32 48000], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.608 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 -126, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i32 294, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.607, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.609 = internal constant { [5 x %struct.snd_usb_audio_quirk], [48 x i8] } { [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.606 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.608 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 9, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.610 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.603, ptr @.str.604, i16 -1, i16 1, ptr @.compoundliteral.609 }, [16 x i8] zeroinitializer }, align 32
@.str.611 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Twitch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.612 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 44100, i32 48000], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.613 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.612, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.614 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.613 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 9, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.615 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.596, ptr @.str.611, i16 -1, i16 1, ptr @.compoundliteral.614 }, [16 x i8] zeroinitializer }, align 32
@.str.616 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ReMOTE25\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.617 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.596, ptr @.str.616, i16 0, i16 8, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.618 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 0, i8 0, i8 0, i8 0, i16 3, i16 3, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.619 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 4, ptr @.compoundliteral.618 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.620 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.619 }, [16 x i8] zeroinitializer }, align 32
@.str.621 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QinHeng\00", [24 x i8] zeroinitializer }, align 32
@.str.622 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CH345\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.623 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.621, ptr @.str.622, i16 1, i16 15, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.624 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Midistart-2\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.625 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.593, ptr @.str.624, i16 0, i16 11, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.626 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 11, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.627 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Digidesign\00", [21 x i8] zeroinitializer }, align 32
@.str.628 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MBox\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.629 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.630 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 4, i8 2, i8 13, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 304, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.629, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.631 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.632 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 4, i8 -127, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 304, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.631, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.633 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.630 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.632 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.634 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.627, ptr @.str.628, i16 -1, i16 1, ptr @.compoundliteral.633 }, [16 x i8] zeroinitializer }, align 32
@.str.635 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mbox 2\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.636 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.637 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 2, i8 2, i8 0, i8 1, i8 0, i8 3, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.636, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.638 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.639 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 2, i32 0, i32 0, i32 0, i8 4, i8 2, i8 0, i8 1, i8 1, i8 -123, i8 12, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.638, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.640 = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 2, i8 0, i8 -127, i8 1, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.641 = internal constant { [8 x %struct.snd_usb_audio_quirk], [32 x i8] } { [8 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.637 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 17, ptr @.compoundliteral.639 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 5, i16 0, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 6, i16 7, ptr @.compoundliteral.640 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.642 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.627, ptr @.str.635, i16 -1, i16 1, ptr @.compoundliteral.641 }, [16 x i8] zeroinitializer }, align 32
@.str.643 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TASCAM\00", [25 x i8] zeroinitializer }, align 32
@.str.644 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"US122 MKII\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.645 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.646 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 2, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1728, i32 44100, i32 96000, i32 4, ptr @.compoundliteral.645, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.647 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.646 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.648 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.643, ptr @.str.644, i16 -1, i16 1, ptr @.compoundliteral.647 }, [16 x i8] zeroinitializer }, align 32
@.str.649 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Denon\00", [26 x i8] zeroinitializer }, align 32
@.str.650 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DN-X1600\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.651 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.652 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i8 1, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 312, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.651, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.653 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.654 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 2, i8 1, i8 0, i8 1, i8 0, i8 -123, i8 9, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 312, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.653, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.655 = internal constant { [5 x %struct.snd_usb_audio_quirk], [48 x i8] } { [5 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk zeroinitializer, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.652 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 17, ptr @.compoundliteral.654 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.656 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.649, ptr @.str.650, i16 -1, i16 1, ptr @.compoundliteral.655 }, [16 x i8] zeroinitializer }, align 32
@.str.657 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Microsoft\00", [22 x i8] zeroinitializer }, align 32
@.str.658 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"XboxLive Headset/Xbox Communicator\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.659 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 1, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 22050, i32 22050, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.660 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 1, i32 0, i32 0, i32 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 -123, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 16000, i32 16000, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.661 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.659 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.660 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.662 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.657, ptr @.str.658, i16 -1, i16 1, ptr @.compoundliteral.661 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.663 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 44100, i32 48000], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.664 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 1, i8 1, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 192, i32 44100, i32 48000, i32 2, ptr @.compoundliteral.663, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.665 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.664 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.666 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.665 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.667 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 3, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.668 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.667 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.669 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 3, ptr null }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.670 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.671 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 1, i8 1, i8 0, i8 1, i8 -127, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.670, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.672 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 17, ptr @.compoundliteral.671 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.673 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.672 }, [16 x i8] zeroinitializer }, align 32
@.str.674 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MicroBookII\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.675 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 96000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.676 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 6, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 -124, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 216, i32 1024, i32 96000, i32 96000, i32 1, ptr @.compoundliteral.675, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.677 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 96000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.678 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 8589934592, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 3, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 288, i32 1024, i32 96000, i32 96000, i32 1, ptr @.compoundliteral.677, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.679 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.676 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.678 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.680 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.562, ptr @.str.674, i16 -1, i16 1, ptr @.compoundliteral.679 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.681 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.682 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 12, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.681, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.683 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.684 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 1024, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -122, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.683, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.685 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.682 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.684 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.686 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.685 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.687 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.688 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.687, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.689 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.690 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.689, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.691 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.688 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.690 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.692 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.691 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.693 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.694 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.693, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.695 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.696 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 2, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.695, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.697 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.694 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.696 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.698 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.697 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.699 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.700 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.699, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.701 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.702 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.701, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.703 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.700 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.702 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.704 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.703 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.705 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.706 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.705, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.707 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 44100], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.708 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 6, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 64, i32 44100, i32 44100, i32 1, ptr @.compoundliteral.707, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.709 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.706 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.708 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.710 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.709 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.711 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 96000], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.712 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.711, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.713 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 96000], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.714 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 12, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.713, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.715 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.712 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.714 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.716 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.715 }, [16 x i8] zeroinitializer }, align 32
@.str.717 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MacroSilicon\00", [19 x i8] zeroinitializer }, align 32
@.str.718 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MS2109\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.719 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4, i32 2, i32 0, i32 0, i32 0, i8 3, i8 1, i8 0, i8 1, i8 0, i8 -126, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1073741824, i32 48000, i32 48000, i32 0, ptr null, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.720 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 2, i16 19, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 17, ptr @.compoundliteral.719 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.721 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.717, ptr @.str.718, i16 -1, i16 1, ptr @.compoundliteral.720 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.722 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 96000], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.723 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.722, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.724 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 96000], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.725 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -122, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.724, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.726 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.723 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.725 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.727 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.726 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.728 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.729 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 10, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.728, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.730 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.731 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 12, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.730, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.732 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.729 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.731 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.733 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.732 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.734 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 96000], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.735 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 5, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.734, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.736 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 96000], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.737 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -122, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 1216, i32 44100, i32 96000, i32 3, ptr @.compoundliteral.736, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.738 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.735 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.737 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.739 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.738 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.740 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.741 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 5, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.740, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.742 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.743 = internal constant { %struct.audioformat, [40 x i8] } { %struct.audioformat { %struct.list_head zeroinitializer, i64 4294967296, i32 8, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 -126, i8 37, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 128, i32 48000, i32 48000, i32 1, ptr @.compoundliteral.742, i8 0, ptr null, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.744 = internal constant { [3 x %struct.snd_usb_audio_quirk], [48 x i8] } { [3 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.741 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 0, i16 17, ptr @.compoundliteral.743 }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.745 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.744 }, [16 x i8] zeroinitializer }, align 32
@.compoundliteral.746 = internal constant { [4 x %struct.snd_usb_audio_quirk], [32 x i8] } { [4 x %struct.snd_usb_audio_quirk] [%struct.snd_usb_audio_quirk { ptr null, ptr null, i16 3, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 4, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 1, i16 16, ptr null }, %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.747 = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr null, ptr null, i16 -1, i16 1, ptr @.compoundliteral.746 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 32, i64 48]
@__sancov_gen_cov_switch_values.748 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.749 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.750 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 255]
@__sancov_gen_cov_switch_values.751 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 255]
@___asan_gen_.752 = private unnamed_addr constant [20 x i8] c"snd_usb_use_vmalloc\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 77, i32 6 }
@___asan_gen_.755 = private unnamed_addr constant [17 x i8] c"ignore_ctl_error\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 69, i32 13 }
@___asan_gen_.758 = private unnamed_addr constant [10 x i8] c"autoclock\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 70, i32 13 }
@___asan_gen_.761 = private unnamed_addr constant [11 x i8] c"lowlatency\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 71, i32 13 }
@___asan_gen_.764 = private unnamed_addr constant [24 x i8] c"snd_usb_skip_validation\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 78, i32 6 }
@___asan_gen_.767 = private unnamed_addr constant [17 x i8] c"usb_audio_driver\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 1115, i32 26 }
@___asan_gen_.770 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 62, i32 12 }
@___asan_gen_.773 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 63, i32 14 }
@___asan_gen_.776 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 64, i32 13 }
@___asan_gen_.779 = private unnamed_addr constant [4 x i8] c"vid\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 66, i32 12 }
@___asan_gen_.782 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 67, i32 12 }
@___asan_gen_.785 = private unnamed_addr constant [13 x i8] c"device_setup\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 68, i32 12 }
@___asan_gen_.788 = private unnamed_addr constant [12 x i8] c"quirk_alias\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 72, i32 14 }
@___asan_gen_.791 = private unnamed_addr constant [17 x i8] c"delayed_register\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 73, i32 14 }
@___asan_gen_.794 = private unnamed_addr constant [12 x i8] c"implicit_fb\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 74, i32 13 }
@___asan_gen_.797 = private unnamed_addr constant [12 x i8] c"quirk_flags\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 75, i32 21 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 1126, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 1116, i32 11 }
@___asan_gen_.806 = private unnamed_addr constant [14 x i8] c"usb_audio_ids\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 1102, i32 35 }
@___asan_gen_.809 = private unnamed_addr constant [15 x i8] c"register_mutex\00", align 1
@___asan_gen_.812 = private unnamed_addr constant [9 x i8] c"usb_chip\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 118, i32 30 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 766, i32 5 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 794, i32 6 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 803, i32 4 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 810, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 850, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 670, i32 30 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 673, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 117, i32 8 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 609, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 616, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 621, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 622, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 648, i32 23 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 649, i32 21 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 509, i32 28 }
@___asan_gen_.914 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 460, i32 45 }
@___asan_gen_.917 = private unnamed_addr constant [16 x i8] c"usb_audio_names\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 357, i32 43 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 359, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 362, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 371, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 373, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 377, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 381, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 383, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 385, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 387, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 388, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 398, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 400, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 402, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 408, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 409, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 418, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 421, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 425, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 428, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 431, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 439, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 447, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 553, i32 28 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 558, i32 32 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 565, i32 27 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 568, i32 27 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 571, i32 27 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 574, i32 27 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 577, i32 27 }
@___asan_gen_.1071 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1071, i32 912, i32 31 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 235, i32 3 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 248, i32 4 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 257, i32 4 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 262, i32 4 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 267, i32 4 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 272, i32 4 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 277, i32 4 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 308, i32 4 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 318, i32 5 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 147, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 173, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 185, i32 4 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 197, i32 3 }
@___asan_gen_.1154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1158 = private constant [20 x i8] c"../sound/usb/card.c\00", align 1
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1158, i32 205, i32 3 }
@___asan_gen_.1160 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 130, i32 18 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 131, i32 19 }
@___asan_gen_.1173 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 192, i32 1 }
@___asan_gen_.1181 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 193, i32 1 }
@___asan_gen_.1185 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 194, i32 1 }
@___asan_gen_.1189 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 195, i32 1 }
@___asan_gen_.1193 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 196, i32 1 }
@___asan_gen_.1197 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 197, i32 1 }
@___asan_gen_.1201 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 198, i32 1 }
@___asan_gen_.1205 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 199, i32 1 }
@___asan_gen_.1209 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 200, i32 1 }
@___asan_gen_.1213 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 201, i32 1 }
@___asan_gen_.1217 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 202, i32 1 }
@___asan_gen_.1221 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 203, i32 1 }
@___asan_gen_.1225 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 204, i32 1 }
@___asan_gen_.1229 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 205, i32 1 }
@___asan_gen_.1233 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 206, i32 1 }
@___asan_gen_.1237 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 207, i32 1 }
@___asan_gen_.1241 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 208, i32 1 }
@___asan_gen_.1245 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 209, i32 1 }
@___asan_gen_.1249 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 210, i32 1 }
@___asan_gen_.1253 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 211, i32 1 }
@___asan_gen_.1257 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 212, i32 1 }
@___asan_gen_.1261 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 213, i32 1 }
@___asan_gen_.1265 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 214, i32 1 }
@___asan_gen_.1269 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 215, i32 1 }
@___asan_gen_.1273 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 216, i32 1 }
@___asan_gen_.1277 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 217, i32 1 }
@___asan_gen_.1281 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 218, i32 1 }
@___asan_gen_.1285 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 219, i32 1 }
@___asan_gen_.1289 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 220, i32 1 }
@___asan_gen_.1293 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 221, i32 1 }
@___asan_gen_.1297 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 222, i32 1 }
@___asan_gen_.1301 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 223, i32 1 }
@___asan_gen_.1305 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 224, i32 1 }
@___asan_gen_.1309 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 225, i32 1 }
@___asan_gen_.1313 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 226, i32 1 }
@___asan_gen_.1317 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 227, i32 1 }
@___asan_gen_.1321 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 228, i32 1 }
@___asan_gen_.1325 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 229, i32 1 }
@___asan_gen_.1329 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 230, i32 1 }
@___asan_gen_.1333 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 231, i32 1 }
@___asan_gen_.1337 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 232, i32 1 }
@___asan_gen_.1341 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 233, i32 1 }
@___asan_gen_.1345 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 234, i32 1 }
@___asan_gen_.1349 = private unnamed_addr constant [21 x i8] c".compoundliteral.220\00", align 1
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 235, i32 1 }
@___asan_gen_.1353 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 236, i32 1 }
@___asan_gen_.1357 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 237, i32 1 }
@___asan_gen_.1361 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 238, i32 1 }
@___asan_gen_.1365 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 239, i32 1 }
@___asan_gen_.1369 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant [21 x i8] c".compoundliteral.232\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.1376 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.1377 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.1378 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.1380 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1385 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1386 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1388 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1389 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1391 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.1392 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1396 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1403 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1405 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1411 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 408, i32 1 }
@___asan_gen_.1417 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 409, i32 1 }
@___asan_gen_.1421 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1423 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 412, i32 1 }
@___asan_gen_.1427 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 413, i32 1 }
@___asan_gen_.1431 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 414, i32 1 }
@___asan_gen_.1435 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 415, i32 1 }
@___asan_gen_.1439 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 416, i32 1 }
@___asan_gen_.1443 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 417, i32 1 }
@___asan_gen_.1447 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 418, i32 1 }
@___asan_gen_.1451 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 419, i32 1 }
@___asan_gen_.1455 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 420, i32 1 }
@___asan_gen_.1459 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 421, i32 1 }
@___asan_gen_.1463 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 422, i32 1 }
@___asan_gen_.1467 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 423, i32 1 }
@___asan_gen_.1471 = private unnamed_addr constant [21 x i8] c".compoundliteral.304\00", align 1
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 424, i32 1 }
@___asan_gen_.1475 = private unnamed_addr constant [21 x i8] c".compoundliteral.306\00", align 1
@___asan_gen_.1476 = private unnamed_addr constant [21 x i8] c".compoundliteral.307\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant [21 x i8] c".compoundliteral.308\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant [21 x i8] c".compoundliteral.309\00", align 1
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 428, i32 1 }
@___asan_gen_.1482 = private unnamed_addr constant [21 x i8] c".compoundliteral.311\00", align 1
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 429, i32 1 }
@___asan_gen_.1486 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1487 = private unnamed_addr constant [21 x i8] c".compoundliteral.314\00", align 1
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 450, i32 18 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 451, i32 19 }
@___asan_gen_.1494 = private unnamed_addr constant [21 x i8] c".compoundliteral.317\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant [21 x i8] c".compoundliteral.318\00", align 1
@___asan_gen_.1496 = private unnamed_addr constant [21 x i8] c".compoundliteral.319\00", align 1
@___asan_gen_.1497 = private unnamed_addr constant [21 x i8] c".compoundliteral.320\00", align 1
@___asan_gen_.1498 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 506, i32 18 }
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 507, i32 19 }
@___asan_gen_.1505 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1506 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1507 = private unnamed_addr constant [21 x i8] c".compoundliteral.326\00", align 1
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 537, i32 19 }
@___asan_gen_.1511 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1512 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 567, i32 19 }
@___asan_gen_.1517 = private unnamed_addr constant [21 x i8] c".compoundliteral.332\00", align 1
@___asan_gen_.1518 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1519 = private unnamed_addr constant [21 x i8] c".compoundliteral.334\00", align 1
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 599, i32 19 }
@___asan_gen_.1523 = private unnamed_addr constant [21 x i8] c".compoundliteral.336\00", align 1
@___asan_gen_.1524 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant [21 x i8] c".compoundliteral.338\00", align 1
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 629, i32 19 }
@___asan_gen_.1529 = private unnamed_addr constant [21 x i8] c".compoundliteral.340\00", align 1
@___asan_gen_.1530 = private unnamed_addr constant [21 x i8] c".compoundliteral.341\00", align 1
@___asan_gen_.1531 = private unnamed_addr constant [21 x i8] c".compoundliteral.342\00", align 1
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 659, i32 19 }
@___asan_gen_.1535 = private unnamed_addr constant [21 x i8] c".compoundliteral.344\00", align 1
@___asan_gen_.1536 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 690, i32 19 }
@___asan_gen_.1541 = private unnamed_addr constant [21 x i8] c".compoundliteral.348\00", align 1
@___asan_gen_.1542 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1543 = private unnamed_addr constant [21 x i8] c".compoundliteral.350\00", align 1
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 720, i32 19 }
@___asan_gen_.1547 = private unnamed_addr constant [21 x i8] c".compoundliteral.352\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant [21 x i8] c".compoundliteral.353\00", align 1
@___asan_gen_.1549 = private unnamed_addr constant [21 x i8] c".compoundliteral.354\00", align 1
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 752, i32 19 }
@___asan_gen_.1553 = private unnamed_addr constant [21 x i8] c".compoundliteral.356\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1555 = private unnamed_addr constant [21 x i8] c".compoundliteral.358\00", align 1
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 790, i32 19 }
@___asan_gen_.1559 = private unnamed_addr constant [21 x i8] c".compoundliteral.360\00", align 1
@___asan_gen_.1560 = private unnamed_addr constant [21 x i8] c".compoundliteral.361\00", align 1
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 813, i32 19 }
@___asan_gen_.1564 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1565 = private unnamed_addr constant [21 x i8] c".compoundliteral.364\00", align 1
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 827, i32 19 }
@___asan_gen_.1569 = private unnamed_addr constant [21 x i8] c".compoundliteral.366\00", align 1
@___asan_gen_.1570 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 841, i32 19 }
@___asan_gen_.1574 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant [21 x i8] c".compoundliteral.370\00", align 1
@___asan_gen_.1576 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 872, i32 19 }
@___asan_gen_.1580 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1581 = private unnamed_addr constant [21 x i8] c".compoundliteral.374\00", align 1
@___asan_gen_.1582 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 903, i32 19 }
@___asan_gen_.1586 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1587 = private unnamed_addr constant [21 x i8] c".compoundliteral.378\00", align 1
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 917, i32 19 }
@___asan_gen_.1591 = private unnamed_addr constant [21 x i8] c".compoundliteral.380\00", align 1
@___asan_gen_.1592 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 935, i32 19 }
@___asan_gen_.1596 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1597 = private unnamed_addr constant [21 x i8] c".compoundliteral.384\00", align 1
@___asan_gen_.1598 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1599 = private unnamed_addr constant [21 x i8] c".compoundliteral.386\00", align 1
@___asan_gen_.1600 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 996, i32 19 }
@___asan_gen_.1604 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1605 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1010, i32 19 }
@___asan_gen_.1609 = private unnamed_addr constant [21 x i8] c".compoundliteral.392\00", align 1
@___asan_gen_.1610 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1028, i32 19 }
@___asan_gen_.1614 = private unnamed_addr constant [21 x i8] c".compoundliteral.395\00", align 1
@___asan_gen_.1615 = private unnamed_addr constant [21 x i8] c".compoundliteral.396\00", align 1
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1055, i32 19 }
@___asan_gen_.1619 = private unnamed_addr constant [21 x i8] c".compoundliteral.398\00", align 1
@___asan_gen_.1620 = private unnamed_addr constant [21 x i8] c".compoundliteral.399\00", align 1
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1069, i32 19 }
@___asan_gen_.1624 = private unnamed_addr constant [21 x i8] c".compoundliteral.401\00", align 1
@___asan_gen_.1625 = private unnamed_addr constant [21 x i8] c".compoundliteral.402\00", align 1
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1083, i32 19 }
@___asan_gen_.1629 = private unnamed_addr constant [21 x i8] c".compoundliteral.404\00", align 1
@___asan_gen_.1630 = private unnamed_addr constant [21 x i8] c".compoundliteral.405\00", align 1
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1100, i32 19 }
@___asan_gen_.1634 = private unnamed_addr constant [21 x i8] c".compoundliteral.407\00", align 1
@___asan_gen_.1635 = private unnamed_addr constant [21 x i8] c".compoundliteral.408\00", align 1
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1117, i32 18 }
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1118, i32 19 }
@___asan_gen_.1642 = private unnamed_addr constant [21 x i8] c".compoundliteral.411\00", align 1
@___asan_gen_.1643 = private unnamed_addr constant [21 x i8] c".compoundliteral.412\00", align 1
@___asan_gen_.1646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1145, i32 19 }
@___asan_gen_.1647 = private unnamed_addr constant [21 x i8] c".compoundliteral.414\00", align 1
@___asan_gen_.1648 = private unnamed_addr constant [21 x i8] c".compoundliteral.415\00", align 1
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1159, i32 19 }
@___asan_gen_.1652 = private unnamed_addr constant [21 x i8] c".compoundliteral.417\00", align 1
@___asan_gen_.1653 = private unnamed_addr constant [21 x i8] c".compoundliteral.418\00", align 1
@___asan_gen_.1654 = private unnamed_addr constant [21 x i8] c".compoundliteral.419\00", align 1
@___asan_gen_.1655 = private unnamed_addr constant [21 x i8] c".compoundliteral.420\00", align 1
@___asan_gen_.1656 = private unnamed_addr constant [21 x i8] c".compoundliteral.421\00", align 1
@___asan_gen_.1657 = private unnamed_addr constant [21 x i8] c".compoundliteral.422\00", align 1
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1211, i32 19 }
@___asan_gen_.1661 = private unnamed_addr constant [21 x i8] c".compoundliteral.424\00", align 1
@___asan_gen_.1662 = private unnamed_addr constant [21 x i8] c".compoundliteral.425\00", align 1
@___asan_gen_.1663 = private unnamed_addr constant [21 x i8] c".compoundliteral.426\00", align 1
@___asan_gen_.1664 = private unnamed_addr constant [21 x i8] c".compoundliteral.427\00", align 1
@___asan_gen_.1667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1251, i32 19 }
@___asan_gen_.1668 = private unnamed_addr constant [21 x i8] c".compoundliteral.429\00", align 1
@___asan_gen_.1669 = private unnamed_addr constant [21 x i8] c".compoundliteral.430\00", align 1
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1273, i32 19 }
@___asan_gen_.1673 = private unnamed_addr constant [21 x i8] c".compoundliteral.432\00", align 1
@___asan_gen_.1676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1282, i32 19 }
@___asan_gen_.1677 = private unnamed_addr constant [21 x i8] c".compoundliteral.434\00", align 1
@___asan_gen_.1678 = private unnamed_addr constant [21 x i8] c".compoundliteral.435\00", align 1
@___asan_gen_.1679 = private unnamed_addr constant [21 x i8] c".compoundliteral.436\00", align 1
@___asan_gen_.1680 = private unnamed_addr constant [21 x i8] c".compoundliteral.437\00", align 1
@___asan_gen_.1681 = private unnamed_addr constant [21 x i8] c".compoundliteral.438\00", align 1
@___asan_gen_.1684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1329, i32 19 }
@___asan_gen_.1685 = private unnamed_addr constant [21 x i8] c".compoundliteral.440\00", align 1
@___asan_gen_.1686 = private unnamed_addr constant [21 x i8] c".compoundliteral.441\00", align 1
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1347, i32 19 }
@___asan_gen_.1690 = private unnamed_addr constant [21 x i8] c".compoundliteral.443\00", align 1
@___asan_gen_.1691 = private unnamed_addr constant [21 x i8] c".compoundliteral.444\00", align 1
@___asan_gen_.1694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1374, i32 19 }
@___asan_gen_.1695 = private unnamed_addr constant [21 x i8] c".compoundliteral.446\00", align 1
@___asan_gen_.1696 = private unnamed_addr constant [21 x i8] c".compoundliteral.447\00", align 1
@___asan_gen_.1697 = private unnamed_addr constant [21 x i8] c".compoundliteral.448\00", align 1
@___asan_gen_.1698 = private unnamed_addr constant [21 x i8] c".compoundliteral.449\00", align 1
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1402, i32 19 }
@___asan_gen_.1702 = private unnamed_addr constant [21 x i8] c".compoundliteral.451\00", align 1
@___asan_gen_.1703 = private unnamed_addr constant [21 x i8] c".compoundliteral.452\00", align 1
@___asan_gen_.1706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1416, i32 19 }
@___asan_gen_.1707 = private unnamed_addr constant [21 x i8] c".compoundliteral.454\00", align 1
@___asan_gen_.1708 = private unnamed_addr constant [21 x i8] c".compoundliteral.455\00", align 1
@___asan_gen_.1711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1433, i32 19 }
@___asan_gen_.1712 = private unnamed_addr constant [21 x i8] c".compoundliteral.457\00", align 1
@___asan_gen_.1713 = private unnamed_addr constant [21 x i8] c".compoundliteral.458\00", align 1
@___asan_gen_.1714 = private unnamed_addr constant [21 x i8] c".compoundliteral.459\00", align 1
@___asan_gen_.1715 = private unnamed_addr constant [21 x i8] c".compoundliteral.460\00", align 1
@___asan_gen_.1716 = private unnamed_addr constant [21 x i8] c".compoundliteral.461\00", align 1
@___asan_gen_.1719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1492, i32 19 }
@___asan_gen_.1720 = private unnamed_addr constant [21 x i8] c".compoundliteral.463\00", align 1
@___asan_gen_.1721 = private unnamed_addr constant [21 x i8] c".compoundliteral.464\00", align 1
@___asan_gen_.1722 = private unnamed_addr constant [21 x i8] c".compoundliteral.465\00", align 1
@___asan_gen_.1723 = private unnamed_addr constant [21 x i8] c".compoundliteral.466\00", align 1
@___asan_gen_.1724 = private unnamed_addr constant [21 x i8] c".compoundliteral.467\00", align 1
@___asan_gen_.1725 = private unnamed_addr constant [21 x i8] c".compoundliteral.468\00", align 1
@___asan_gen_.1726 = private unnamed_addr constant [21 x i8] c".compoundliteral.469\00", align 1
@___asan_gen_.1727 = private unnamed_addr constant [21 x i8] c".compoundliteral.470\00", align 1
@___asan_gen_.1728 = private unnamed_addr constant [21 x i8] c".compoundliteral.471\00", align 1
@___asan_gen_.1729 = private unnamed_addr constant [21 x i8] c".compoundliteral.472\00", align 1
@___asan_gen_.1730 = private unnamed_addr constant [21 x i8] c".compoundliteral.473\00", align 1
@___asan_gen_.1731 = private unnamed_addr constant [21 x i8] c".compoundliteral.474\00", align 1
@___asan_gen_.1732 = private unnamed_addr constant [21 x i8] c".compoundliteral.475\00", align 1
@___asan_gen_.1733 = private unnamed_addr constant [21 x i8] c".compoundliteral.476\00", align 1
@___asan_gen_.1734 = private unnamed_addr constant [21 x i8] c".compoundliteral.477\00", align 1
@___asan_gen_.1735 = private unnamed_addr constant [21 x i8] c".compoundliteral.478\00", align 1
@___asan_gen_.1736 = private unnamed_addr constant [21 x i8] c".compoundliteral.479\00", align 1
@___asan_gen_.1737 = private unnamed_addr constant [21 x i8] c".compoundliteral.480\00", align 1
@___asan_gen_.1738 = private unnamed_addr constant [21 x i8] c".compoundliteral.481\00", align 1
@___asan_gen_.1739 = private unnamed_addr constant [21 x i8] c".compoundliteral.482\00", align 1
@___asan_gen_.1740 = private unnamed_addr constant [21 x i8] c".compoundliteral.483\00", align 1
@___asan_gen_.1741 = private unnamed_addr constant [21 x i8] c".compoundliteral.484\00", align 1
@___asan_gen_.1742 = private unnamed_addr constant [21 x i8] c".compoundliteral.485\00", align 1
@___asan_gen_.1743 = private unnamed_addr constant [21 x i8] c".compoundliteral.486\00", align 1
@___asan_gen_.1744 = private unnamed_addr constant [21 x i8] c".compoundliteral.487\00", align 1
@___asan_gen_.1745 = private unnamed_addr constant [21 x i8] c".compoundliteral.488\00", align 1
@___asan_gen_.1746 = private unnamed_addr constant [21 x i8] c".compoundliteral.489\00", align 1
@___asan_gen_.1747 = private unnamed_addr constant [21 x i8] c".compoundliteral.490\00", align 1
@___asan_gen_.1750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1762, i32 18 }
@___asan_gen_.1753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1763, i32 19 }
@___asan_gen_.1754 = private unnamed_addr constant [21 x i8] c".compoundliteral.493\00", align 1
@___asan_gen_.1755 = private unnamed_addr constant [21 x i8] c".compoundliteral.494\00", align 1
@___asan_gen_.1758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1777, i32 18 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1778, i32 19 }
@___asan_gen_.1762 = private unnamed_addr constant [21 x i8] c".compoundliteral.497\00", align 1
@___asan_gen_.1763 = private unnamed_addr constant [21 x i8] c".compoundliteral.498\00", align 1
@___asan_gen_.1766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1791, i32 19 }
@___asan_gen_.1767 = private unnamed_addr constant [21 x i8] c".compoundliteral.500\00", align 1
@___asan_gen_.1768 = private unnamed_addr constant [21 x i8] c".compoundliteral.501\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1804, i32 19 }
@___asan_gen_.1772 = private unnamed_addr constant [21 x i8] c".compoundliteral.503\00", align 1
@___asan_gen_.1773 = private unnamed_addr constant [21 x i8] c".compoundliteral.504\00", align 1
@___asan_gen_.1776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1817, i32 19 }
@___asan_gen_.1777 = private unnamed_addr constant [21 x i8] c".compoundliteral.506\00", align 1
@___asan_gen_.1778 = private unnamed_addr constant [21 x i8] c".compoundliteral.507\00", align 1
@___asan_gen_.1781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1835, i32 19 }
@___asan_gen_.1782 = private unnamed_addr constant [21 x i8] c".compoundliteral.509\00", align 1
@___asan_gen_.1783 = private unnamed_addr constant [21 x i8] c".compoundliteral.510\00", align 1
@___asan_gen_.1784 = private unnamed_addr constant [21 x i8] c".compoundliteral.511\00", align 1
@___asan_gen_.1785 = private unnamed_addr constant [21 x i8] c".compoundliteral.512\00", align 1
@___asan_gen_.1788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1861, i32 19 }
@___asan_gen_.1789 = private unnamed_addr constant [21 x i8] c".compoundliteral.514\00", align 1
@___asan_gen_.1790 = private unnamed_addr constant [21 x i8] c".compoundliteral.515\00", align 1
@___asan_gen_.1793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1874, i32 19 }
@___asan_gen_.1794 = private unnamed_addr constant [21 x i8] c".compoundliteral.517\00", align 1
@___asan_gen_.1795 = private unnamed_addr constant [21 x i8] c".compoundliteral.518\00", align 1
@___asan_gen_.1796 = private unnamed_addr constant [21 x i8] c".compoundliteral.519\00", align 1
@___asan_gen_.1799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1938, i32 19 }
@___asan_gen_.1800 = private unnamed_addr constant [21 x i8] c".compoundliteral.521\00", align 1
@___asan_gen_.1801 = private unnamed_addr constant [21 x i8] c".compoundliteral.522\00", align 1
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1951, i32 19 }
@___asan_gen_.1805 = private unnamed_addr constant [21 x i8] c".compoundliteral.524\00", align 1
@___asan_gen_.1806 = private unnamed_addr constant [21 x i8] c".compoundliteral.525\00", align 1
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 1964, i32 19 }
@___asan_gen_.1810 = private unnamed_addr constant [21 x i8] c".compoundliteral.527\00", align 1
@___asan_gen_.1811 = private unnamed_addr constant [21 x i8] c".compoundliteral.528\00", align 1
@___asan_gen_.1812 = private unnamed_addr constant [21 x i8] c".compoundliteral.529\00", align 1
@___asan_gen_.1813 = private unnamed_addr constant [21 x i8] c".compoundliteral.530\00", align 1
@___asan_gen_.1814 = private unnamed_addr constant [21 x i8] c".compoundliteral.531\00", align 1
@___asan_gen_.1815 = private unnamed_addr constant [21 x i8] c".compoundliteral.532\00", align 1
@___asan_gen_.1816 = private unnamed_addr constant [21 x i8] c".compoundliteral.533\00", align 1
@___asan_gen_.1817 = private unnamed_addr constant [21 x i8] c".compoundliteral.534\00", align 1
@___asan_gen_.1818 = private unnamed_addr constant [21 x i8] c".compoundliteral.535\00", align 1
@___asan_gen_.1819 = private unnamed_addr constant [21 x i8] c".compoundliteral.536\00", align 1
@___asan_gen_.1820 = private unnamed_addr constant [21 x i8] c".compoundliteral.537\00", align 1
@___asan_gen_.1821 = private unnamed_addr constant [21 x i8] c".compoundliteral.538\00", align 1
@___asan_gen_.1822 = private unnamed_addr constant [21 x i8] c".compoundliteral.539\00", align 1
@___asan_gen_.1823 = private unnamed_addr constant [21 x i8] c".compoundliteral.540\00", align 1
@___asan_gen_.1824 = private unnamed_addr constant [21 x i8] c".compoundliteral.541\00", align 1
@___asan_gen_.1825 = private unnamed_addr constant [21 x i8] c".compoundliteral.542\00", align 1
@___asan_gen_.1826 = private unnamed_addr constant [21 x i8] c".compoundliteral.543\00", align 1
@___asan_gen_.1827 = private unnamed_addr constant [21 x i8] c".compoundliteral.544\00", align 1
@___asan_gen_.1828 = private unnamed_addr constant [21 x i8] c".compoundliteral.545\00", align 1
@___asan_gen_.1829 = private unnamed_addr constant [21 x i8] c".compoundliteral.546\00", align 1
@___asan_gen_.1830 = private unnamed_addr constant [21 x i8] c".compoundliteral.547\00", align 1
@___asan_gen_.1831 = private unnamed_addr constant [21 x i8] c".compoundliteral.548\00", align 1
@___asan_gen_.1832 = private unnamed_addr constant [21 x i8] c".compoundliteral.549\00", align 1
@___asan_gen_.1833 = private unnamed_addr constant [21 x i8] c".compoundliteral.550\00", align 1
@___asan_gen_.1834 = private unnamed_addr constant [21 x i8] c".compoundliteral.551\00", align 1
@___asan_gen_.1835 = private unnamed_addr constant [21 x i8] c".compoundliteral.552\00", align 1
@___asan_gen_.1836 = private unnamed_addr constant [21 x i8] c".compoundliteral.553\00", align 1
@___asan_gen_.1837 = private unnamed_addr constant [21 x i8] c".compoundliteral.554\00", align 1
@___asan_gen_.1838 = private unnamed_addr constant [21 x i8] c".compoundliteral.555\00", align 1
@___asan_gen_.1839 = private unnamed_addr constant [21 x i8] c".compoundliteral.556\00", align 1
@___asan_gen_.1842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2333, i32 18 }
@___asan_gen_.1845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2334, i32 19 }
@___asan_gen_.1846 = private unnamed_addr constant [21 x i8] c".compoundliteral.559\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2344, i32 19 }
@___asan_gen_.1850 = private unnamed_addr constant [21 x i8] c".compoundliteral.561\00", align 1
@___asan_gen_.1853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2360, i32 18 }
@___asan_gen_.1856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2361, i32 19 }
@___asan_gen_.1857 = private unnamed_addr constant [21 x i8] c".compoundliteral.564\00", align 1
@___asan_gen_.1858 = private unnamed_addr constant [21 x i8] c".compoundliteral.565\00", align 1
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2384, i32 18 }
@___asan_gen_.1864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2385, i32 19 }
@___asan_gen_.1865 = private unnamed_addr constant [21 x i8] c".compoundliteral.568\00", align 1
@___asan_gen_.1866 = private unnamed_addr constant [21 x i8] c".compoundliteral.569\00", align 1
@___asan_gen_.1867 = private unnamed_addr constant [21 x i8] c".compoundliteral.570\00", align 1
@___asan_gen_.1868 = private unnamed_addr constant [21 x i8] c".compoundliteral.571\00", align 1
@___asan_gen_.1869 = private unnamed_addr constant [21 x i8] c".compoundliteral.572\00", align 1
@___asan_gen_.1870 = private unnamed_addr constant [21 x i8] c".compoundliteral.573\00", align 1
@___asan_gen_.1873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2425, i32 18 }
@___asan_gen_.1874 = private unnamed_addr constant [21 x i8] c".compoundliteral.575\00", align 1
@___asan_gen_.1875 = private unnamed_addr constant [21 x i8] c".compoundliteral.576\00", align 1
@___asan_gen_.1876 = private unnamed_addr constant [21 x i8] c".compoundliteral.577\00", align 1
@___asan_gen_.1879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2456, i32 18 }
@___asan_gen_.1882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2457, i32 19 }
@___asan_gen_.1883 = private unnamed_addr constant [21 x i8] c".compoundliteral.580\00", align 1
@___asan_gen_.1884 = private unnamed_addr constant [21 x i8] c".compoundliteral.581\00", align 1
@___asan_gen_.1885 = private unnamed_addr constant [21 x i8] c".compoundliteral.582\00", align 1
@___asan_gen_.1886 = private unnamed_addr constant [21 x i8] c".compoundliteral.583\00", align 1
@___asan_gen_.1887 = private unnamed_addr constant [21 x i8] c".compoundliteral.584\00", align 1
@___asan_gen_.1888 = private unnamed_addr constant [21 x i8] c".compoundliteral.585\00", align 1
@___asan_gen_.1889 = private unnamed_addr constant [21 x i8] c".compoundliteral.586\00", align 1
@___asan_gen_.1890 = private unnamed_addr constant [21 x i8] c".compoundliteral.587\00", align 1
@___asan_gen_.1891 = private unnamed_addr constant [21 x i8] c".compoundliteral.588\00", align 1
@___asan_gen_.1894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2558, i32 19 }
@___asan_gen_.1895 = private unnamed_addr constant [21 x i8] c".compoundliteral.590\00", align 1
@___asan_gen_.1896 = private unnamed_addr constant [21 x i8] c".compoundliteral.591\00", align 1
@___asan_gen_.1897 = private unnamed_addr constant [21 x i8] c".compoundliteral.592\00", align 1
@___asan_gen_.1900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2584, i32 18 }
@___asan_gen_.1903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2585, i32 19 }
@___asan_gen_.1904 = private unnamed_addr constant [21 x i8] c".compoundliteral.595\00", align 1
@___asan_gen_.1907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2595, i32 18 }
@___asan_gen_.1910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2596, i32 19 }
@___asan_gen_.1911 = private unnamed_addr constant [21 x i8] c".compoundliteral.598\00", align 1
@___asan_gen_.1914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2605, i32 19 }
@___asan_gen_.1915 = private unnamed_addr constant [21 x i8] c".compoundliteral.600\00", align 1
@___asan_gen_.1916 = private unnamed_addr constant [21 x i8] c".compoundliteral.601\00", align 1
@___asan_gen_.1917 = private unnamed_addr constant [21 x i8] c".compoundliteral.602\00", align 1
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2631, i32 18 }
@___asan_gen_.1923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2632, i32 19 }
@___asan_gen_.1924 = private unnamed_addr constant [21 x i8] c".compoundliteral.605\00", align 1
@___asan_gen_.1925 = private unnamed_addr constant [21 x i8] c".compoundliteral.606\00", align 1
@___asan_gen_.1926 = private unnamed_addr constant [21 x i8] c".compoundliteral.607\00", align 1
@___asan_gen_.1927 = private unnamed_addr constant [21 x i8] c".compoundliteral.608\00", align 1
@___asan_gen_.1928 = private unnamed_addr constant [21 x i8] c".compoundliteral.609\00", align 1
@___asan_gen_.1929 = private unnamed_addr constant [21 x i8] c".compoundliteral.610\00", align 1
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2702, i32 19 }
@___asan_gen_.1933 = private unnamed_addr constant [21 x i8] c".compoundliteral.612\00", align 1
@___asan_gen_.1934 = private unnamed_addr constant [21 x i8] c".compoundliteral.613\00", align 1
@___asan_gen_.1935 = private unnamed_addr constant [21 x i8] c".compoundliteral.614\00", align 1
@___asan_gen_.1936 = private unnamed_addr constant [21 x i8] c".compoundliteral.615\00", align 1
@___asan_gen_.1939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2742, i32 19 }
@___asan_gen_.1940 = private unnamed_addr constant [21 x i8] c".compoundliteral.617\00", align 1
@___asan_gen_.1941 = private unnamed_addr constant [21 x i8] c".compoundliteral.618\00", align 1
@___asan_gen_.1942 = private unnamed_addr constant [21 x i8] c".compoundliteral.619\00", align 1
@___asan_gen_.1943 = private unnamed_addr constant [21 x i8] c".compoundliteral.620\00", align 1
@___asan_gen_.1946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2799, i32 18 }
@___asan_gen_.1949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2800, i32 19 }
@___asan_gen_.1950 = private unnamed_addr constant [21 x i8] c".compoundliteral.623\00", align 1
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2814, i32 19 }
@___asan_gen_.1954 = private unnamed_addr constant [21 x i8] c".compoundliteral.625\00", align 1
@___asan_gen_.1955 = private unnamed_addr constant [21 x i8] c".compoundliteral.626\00", align 1
@___asan_gen_.1958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2835, i32 18 }
@___asan_gen_.1961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2836, i32 19 }
@___asan_gen_.1962 = private unnamed_addr constant [21 x i8] c".compoundliteral.629\00", align 1
@___asan_gen_.1963 = private unnamed_addr constant [21 x i8] c".compoundliteral.630\00", align 1
@___asan_gen_.1964 = private unnamed_addr constant [21 x i8] c".compoundliteral.631\00", align 1
@___asan_gen_.1965 = private unnamed_addr constant [21 x i8] c".compoundliteral.632\00", align 1
@___asan_gen_.1966 = private unnamed_addr constant [21 x i8] c".compoundliteral.633\00", align 1
@___asan_gen_.1967 = private unnamed_addr constant [21 x i8] c".compoundliteral.634\00", align 1
@___asan_gen_.1970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2902, i32 19 }
@___asan_gen_.1971 = private unnamed_addr constant [21 x i8] c".compoundliteral.636\00", align 1
@___asan_gen_.1972 = private unnamed_addr constant [21 x i8] c".compoundliteral.637\00", align 1
@___asan_gen_.1973 = private unnamed_addr constant [21 x i8] c".compoundliteral.638\00", align 1
@___asan_gen_.1974 = private unnamed_addr constant [21 x i8] c".compoundliteral.639\00", align 1
@___asan_gen_.1975 = private unnamed_addr constant [21 x i8] c".compoundliteral.640\00", align 1
@___asan_gen_.1976 = private unnamed_addr constant [21 x i8] c".compoundliteral.641\00", align 1
@___asan_gen_.1977 = private unnamed_addr constant [21 x i8] c".compoundliteral.642\00", align 1
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2985, i32 18 }
@___asan_gen_.1983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 2986, i32 19 }
@___asan_gen_.1984 = private unnamed_addr constant [21 x i8] c".compoundliteral.645\00", align 1
@___asan_gen_.1985 = private unnamed_addr constant [21 x i8] c".compoundliteral.646\00", align 1
@___asan_gen_.1986 = private unnamed_addr constant [21 x i8] c".compoundliteral.647\00", align 1
@___asan_gen_.1987 = private unnamed_addr constant [21 x i8] c".compoundliteral.648\00", align 1
@___asan_gen_.1990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 3029, i32 18 }
@___asan_gen_.1993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 3030, i32 19 }
@___asan_gen_.1994 = private unnamed_addr constant [21 x i8] c".compoundliteral.651\00", align 1
@___asan_gen_.1995 = private unnamed_addr constant [21 x i8] c".compoundliteral.652\00", align 1
@___asan_gen_.1996 = private unnamed_addr constant [21 x i8] c".compoundliteral.653\00", align 1
@___asan_gen_.1997 = private unnamed_addr constant [21 x i8] c".compoundliteral.654\00", align 1
@___asan_gen_.1998 = private unnamed_addr constant [21 x i8] c".compoundliteral.655\00", align 1
@___asan_gen_.1999 = private unnamed_addr constant [21 x i8] c".compoundliteral.656\00", align 1
@___asan_gen_.2002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 3100, i32 18 }
@___asan_gen_.2005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 3101, i32 19 }
@___asan_gen_.2006 = private unnamed_addr constant [21 x i8] c".compoundliteral.659\00", align 1
@___asan_gen_.2007 = private unnamed_addr constant [21 x i8] c".compoundliteral.660\00", align 1
@___asan_gen_.2008 = private unnamed_addr constant [21 x i8] c".compoundliteral.661\00", align 1
@___asan_gen_.2009 = private unnamed_addr constant [21 x i8] c".compoundliteral.662\00", align 1
@___asan_gen_.2010 = private unnamed_addr constant [21 x i8] c".compoundliteral.663\00", align 1
@___asan_gen_.2011 = private unnamed_addr constant [21 x i8] c".compoundliteral.664\00", align 1
@___asan_gen_.2012 = private unnamed_addr constant [21 x i8] c".compoundliteral.665\00", align 1
@___asan_gen_.2013 = private unnamed_addr constant [21 x i8] c".compoundliteral.666\00", align 1
@___asan_gen_.2014 = private unnamed_addr constant [21 x i8] c".compoundliteral.667\00", align 1
@___asan_gen_.2015 = private unnamed_addr constant [21 x i8] c".compoundliteral.668\00", align 1
@___asan_gen_.2016 = private unnamed_addr constant [21 x i8] c".compoundliteral.669\00", align 1
@___asan_gen_.2017 = private unnamed_addr constant [21 x i8] c".compoundliteral.670\00", align 1
@___asan_gen_.2018 = private unnamed_addr constant [21 x i8] c".compoundliteral.671\00", align 1
@___asan_gen_.2019 = private unnamed_addr constant [21 x i8] c".compoundliteral.672\00", align 1
@___asan_gen_.2020 = private unnamed_addr constant [21 x i8] c".compoundliteral.673\00", align 1
@___asan_gen_.2023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 3343, i32 19 }
@___asan_gen_.2024 = private unnamed_addr constant [21 x i8] c".compoundliteral.675\00", align 1
@___asan_gen_.2025 = private unnamed_addr constant [21 x i8] c".compoundliteral.676\00", align 1
@___asan_gen_.2026 = private unnamed_addr constant [21 x i8] c".compoundliteral.677\00", align 1
@___asan_gen_.2027 = private unnamed_addr constant [21 x i8] c".compoundliteral.678\00", align 1
@___asan_gen_.2028 = private unnamed_addr constant [21 x i8] c".compoundliteral.679\00", align 1
@___asan_gen_.2029 = private unnamed_addr constant [21 x i8] c".compoundliteral.680\00", align 1
@___asan_gen_.2030 = private unnamed_addr constant [21 x i8] c".compoundliteral.681\00", align 1
@___asan_gen_.2031 = private unnamed_addr constant [21 x i8] c".compoundliteral.682\00", align 1
@___asan_gen_.2032 = private unnamed_addr constant [21 x i8] c".compoundliteral.683\00", align 1
@___asan_gen_.2033 = private unnamed_addr constant [21 x i8] c".compoundliteral.684\00", align 1
@___asan_gen_.2034 = private unnamed_addr constant [21 x i8] c".compoundliteral.685\00", align 1
@___asan_gen_.2035 = private unnamed_addr constant [21 x i8] c".compoundliteral.686\00", align 1
@___asan_gen_.2036 = private unnamed_addr constant [21 x i8] c".compoundliteral.687\00", align 1
@___asan_gen_.2037 = private unnamed_addr constant [21 x i8] c".compoundliteral.688\00", align 1
@___asan_gen_.2038 = private unnamed_addr constant [21 x i8] c".compoundliteral.689\00", align 1
@___asan_gen_.2039 = private unnamed_addr constant [21 x i8] c".compoundliteral.690\00", align 1
@___asan_gen_.2040 = private unnamed_addr constant [21 x i8] c".compoundliteral.691\00", align 1
@___asan_gen_.2041 = private unnamed_addr constant [21 x i8] c".compoundliteral.692\00", align 1
@___asan_gen_.2042 = private unnamed_addr constant [21 x i8] c".compoundliteral.693\00", align 1
@___asan_gen_.2043 = private unnamed_addr constant [21 x i8] c".compoundliteral.694\00", align 1
@___asan_gen_.2044 = private unnamed_addr constant [21 x i8] c".compoundliteral.695\00", align 1
@___asan_gen_.2045 = private unnamed_addr constant [21 x i8] c".compoundliteral.696\00", align 1
@___asan_gen_.2046 = private unnamed_addr constant [21 x i8] c".compoundliteral.697\00", align 1
@___asan_gen_.2047 = private unnamed_addr constant [21 x i8] c".compoundliteral.698\00", align 1
@___asan_gen_.2048 = private unnamed_addr constant [21 x i8] c".compoundliteral.699\00", align 1
@___asan_gen_.2049 = private unnamed_addr constant [21 x i8] c".compoundliteral.700\00", align 1
@___asan_gen_.2050 = private unnamed_addr constant [21 x i8] c".compoundliteral.701\00", align 1
@___asan_gen_.2051 = private unnamed_addr constant [21 x i8] c".compoundliteral.702\00", align 1
@___asan_gen_.2052 = private unnamed_addr constant [21 x i8] c".compoundliteral.703\00", align 1
@___asan_gen_.2053 = private unnamed_addr constant [21 x i8] c".compoundliteral.704\00", align 1
@___asan_gen_.2054 = private unnamed_addr constant [21 x i8] c".compoundliteral.705\00", align 1
@___asan_gen_.2055 = private unnamed_addr constant [21 x i8] c".compoundliteral.706\00", align 1
@___asan_gen_.2056 = private unnamed_addr constant [21 x i8] c".compoundliteral.707\00", align 1
@___asan_gen_.2057 = private unnamed_addr constant [21 x i8] c".compoundliteral.708\00", align 1
@___asan_gen_.2058 = private unnamed_addr constant [21 x i8] c".compoundliteral.709\00", align 1
@___asan_gen_.2059 = private unnamed_addr constant [21 x i8] c".compoundliteral.710\00", align 1
@___asan_gen_.2060 = private unnamed_addr constant [21 x i8] c".compoundliteral.711\00", align 1
@___asan_gen_.2061 = private unnamed_addr constant [21 x i8] c".compoundliteral.712\00", align 1
@___asan_gen_.2062 = private unnamed_addr constant [21 x i8] c".compoundliteral.713\00", align 1
@___asan_gen_.2063 = private unnamed_addr constant [21 x i8] c".compoundliteral.714\00", align 1
@___asan_gen_.2064 = private unnamed_addr constant [21 x i8] c".compoundliteral.715\00", align 1
@___asan_gen_.2065 = private unnamed_addr constant [21 x i8] c".compoundliteral.716\00", align 1
@___asan_gen_.2068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 3802, i32 18 }
@___asan_gen_.2069 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2070 = private unnamed_addr constant [28 x i8] c"../sound/usb/quirks-table.h\00", align 1
@___asan_gen_.2071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2070, i32 3803, i32 19 }
@___asan_gen_.2072 = private unnamed_addr constant [21 x i8] c".compoundliteral.719\00", align 1
@___asan_gen_.2073 = private unnamed_addr constant [21 x i8] c".compoundliteral.720\00", align 1
@___asan_gen_.2074 = private unnamed_addr constant [21 x i8] c".compoundliteral.721\00", align 1
@___asan_gen_.2075 = private unnamed_addr constant [21 x i8] c".compoundliteral.722\00", align 1
@___asan_gen_.2076 = private unnamed_addr constant [21 x i8] c".compoundliteral.723\00", align 1
@___asan_gen_.2077 = private unnamed_addr constant [21 x i8] c".compoundliteral.724\00", align 1
@___asan_gen_.2078 = private unnamed_addr constant [21 x i8] c".compoundliteral.725\00", align 1
@___asan_gen_.2079 = private unnamed_addr constant [21 x i8] c".compoundliteral.726\00", align 1
@___asan_gen_.2080 = private unnamed_addr constant [21 x i8] c".compoundliteral.727\00", align 1
@___asan_gen_.2081 = private unnamed_addr constant [21 x i8] c".compoundliteral.728\00", align 1
@___asan_gen_.2082 = private unnamed_addr constant [21 x i8] c".compoundliteral.729\00", align 1
@___asan_gen_.2083 = private unnamed_addr constant [21 x i8] c".compoundliteral.730\00", align 1
@___asan_gen_.2084 = private unnamed_addr constant [21 x i8] c".compoundliteral.731\00", align 1
@___asan_gen_.2085 = private unnamed_addr constant [21 x i8] c".compoundliteral.732\00", align 1
@___asan_gen_.2086 = private unnamed_addr constant [21 x i8] c".compoundliteral.733\00", align 1
@___asan_gen_.2087 = private unnamed_addr constant [21 x i8] c".compoundliteral.734\00", align 1
@___asan_gen_.2088 = private unnamed_addr constant [21 x i8] c".compoundliteral.735\00", align 1
@___asan_gen_.2089 = private unnamed_addr constant [21 x i8] c".compoundliteral.736\00", align 1
@___asan_gen_.2090 = private unnamed_addr constant [21 x i8] c".compoundliteral.737\00", align 1
@___asan_gen_.2091 = private unnamed_addr constant [21 x i8] c".compoundliteral.738\00", align 1
@___asan_gen_.2092 = private unnamed_addr constant [21 x i8] c".compoundliteral.739\00", align 1
@___asan_gen_.2093 = private unnamed_addr constant [21 x i8] c".compoundliteral.740\00", align 1
@___asan_gen_.2094 = private unnamed_addr constant [21 x i8] c".compoundliteral.741\00", align 1
@___asan_gen_.2095 = private unnamed_addr constant [21 x i8] c".compoundliteral.742\00", align 1
@___asan_gen_.2096 = private unnamed_addr constant [21 x i8] c".compoundliteral.743\00", align 1
@___asan_gen_.2097 = private unnamed_addr constant [21 x i8] c".compoundliteral.744\00", align 1
@___asan_gen_.2098 = private unnamed_addr constant [21 x i8] c".compoundliteral.745\00", align 1
@___asan_gen_.2099 = private unnamed_addr constant [21 x i8] c".compoundliteral.746\00", align 1
@___asan_gen_.2100 = private unnamed_addr constant [21 x i8] c".compoundliteral.747\00", align 1
@llvm.compiler.used = appending global [833 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_autoclock264, ptr @__UNIQUE_ID_autoclocktype263, ptr @__UNIQUE_ID_delayed_register270, ptr @__UNIQUE_ID_delayed_registertype269, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_device_setup260, ptr @__UNIQUE_ID_device_setuptype259, ptr @__UNIQUE_ID_enable254, ptr @__UNIQUE_ID_enabletype253, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_id252, ptr @__UNIQUE_ID_idtype251, ptr @__UNIQUE_ID_ignore_ctl_error262, ptr @__UNIQUE_ID_ignore_ctl_errortype261, ptr @__UNIQUE_ID_implicit_fb272, ptr @__UNIQUE_ID_implicit_fbtype271, ptr @__UNIQUE_ID_index250, ptr @__UNIQUE_ID_indextype249, ptr @__UNIQUE_ID_license248, ptr @__UNIQUE_ID_lowlatency266, ptr @__UNIQUE_ID_lowlatencytype265, ptr @__UNIQUE_ID_pid258, ptr @__UNIQUE_ID_pidtype257, ptr @__UNIQUE_ID_quirk_alias268, ptr @__UNIQUE_ID_quirk_aliastype267, ptr @__UNIQUE_ID_quirk_flags274, ptr @__UNIQUE_ID_quirk_flagstype273, ptr @__UNIQUE_ID_skip_validation278, ptr @__UNIQUE_ID_skip_validationtype277, ptr @__UNIQUE_ID_use_vmalloc276, ptr @__UNIQUE_ID_use_vmalloctype275, ptr @__UNIQUE_ID_vid256, ptr @__UNIQUE_ID_vidtype255, ptr @__exitcall_usb_audio_driver_exit, ptr @__initcall__kmod_snd_usb_audio__281_1126_usb_audio_driver_init6, ptr @__param_autoclock, ptr @__param_delayed_register, ptr @__param_device_setup, ptr @__param_enable, ptr @__param_id, ptr @__param_ignore_ctl_error, ptr @__param_implicit_fb, ptr @__param_index, ptr @__param_lowlatency, ptr @__param_pid, ptr @__param_quirk_alias, ptr @__param_quirk_flags, ptr @__param_skip_validation, ptr @__param_use_vmalloc, ptr @__param_vid, ptr @get_alias_id._entry, ptr @get_alias_id._entry_ptr, ptr @snd_usb_audio_create._entry, ptr @snd_usb_audio_create._entry.27, ptr @snd_usb_audio_create._entry_ptr, ptr @snd_usb_audio_create._entry_ptr.29, ptr @snd_usb_create_stream._entry, ptr @snd_usb_create_stream._entry.117, ptr @snd_usb_create_stream._entry.121, ptr @snd_usb_create_stream._entry_ptr, ptr @snd_usb_create_stream._entry_ptr.119, ptr @snd_usb_create_stream._entry_ptr.123, ptr @snd_usb_create_streams._entry, ptr @snd_usb_create_streams._entry.102, ptr @snd_usb_create_streams._entry.105, ptr @snd_usb_create_streams._entry.108, ptr @snd_usb_create_streams._entry.111, ptr @snd_usb_create_streams._entry.90, ptr @snd_usb_create_streams._entry.93, ptr @snd_usb_create_streams._entry.96, ptr @snd_usb_create_streams._entry.99, ptr @snd_usb_create_streams._entry_ptr, ptr @snd_usb_create_streams._entry_ptr.101, ptr @snd_usb_create_streams._entry_ptr.104, ptr @snd_usb_create_streams._entry_ptr.107, ptr @snd_usb_create_streams._entry_ptr.110, ptr @snd_usb_create_streams._entry_ptr.113, ptr @snd_usb_create_streams._entry_ptr.92, ptr @snd_usb_create_streams._entry_ptr.95, ptr @snd_usb_create_streams._entry_ptr.98, ptr @usb_audio_driver_exit, ptr @usb_audio_probe._entry, ptr @usb_audio_probe._entry.11, ptr @usb_audio_probe._entry.14, ptr @usb_audio_probe._entry.17, ptr @usb_audio_probe._entry.7, ptr @usb_audio_probe._entry_ptr, ptr @usb_audio_probe._entry_ptr.10, ptr @usb_audio_probe._entry_ptr.13, ptr @usb_audio_probe._entry_ptr.16, ptr @usb_audio_probe._entry_ptr.19, ptr @snd_usb_use_vmalloc, ptr @ignore_ctl_error, ptr @autoclock, ptr @lowlatency, ptr @snd_usb_skip_validation, ptr @usb_audio_driver, ptr @index, ptr @id, ptr @enable, ptr @vid, ptr @pid, ptr @device_setup, ptr @quirk_alias, ptr @delayed_register, ptr @implicit_fb, ptr @quirk_flags, ptr @.str, ptr @.str.1, ptr @usb_audio_ids, ptr @register_mutex, ptr @usb_chip, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @snd_usb_audio_create.__key, ptr @.str.30, ptr @snd_usb_audio_create.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @lookup_device_name.p, ptr @usb_audio_names, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.compoundliteral, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.compoundliteral.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.str.155, ptr @.compoundliteral.156, ptr @.str.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.compoundliteral.168, ptr @.str.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @.compoundliteral.186, ptr @.str.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.str.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.compoundliteral.206, ptr @.str.207, ptr @.compoundliteral.208, ptr @.str.209, ptr @.compoundliteral.210, ptr @.str.211, ptr @.compoundliteral.212, ptr @.str.213, ptr @.compoundliteral.214, ptr @.str.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @.str.219, ptr @.compoundliteral.220, ptr @.str.221, ptr @.compoundliteral.222, ptr @.str.223, ptr @.compoundliteral.224, ptr @.str.225, ptr @.compoundliteral.226, ptr @.str.227, ptr @.compoundliteral.228, ptr @.str.229, ptr @.compoundliteral.230, ptr @.compoundliteral.231, ptr @.compoundliteral.232, ptr @.compoundliteral.233, ptr @.compoundliteral.234, ptr @.compoundliteral.235, ptr @.compoundliteral.236, ptr @.compoundliteral.237, ptr @.compoundliteral.238, ptr @.compoundliteral.239, ptr @.compoundliteral.240, ptr @.compoundliteral.241, ptr @.compoundliteral.242, ptr @.compoundliteral.243, ptr @.compoundliteral.244, ptr @.compoundliteral.245, ptr @.compoundliteral.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @.compoundliteral.249, ptr @.compoundliteral.250, ptr @.compoundliteral.251, ptr @.compoundliteral.252, ptr @.compoundliteral.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.compoundliteral.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.compoundliteral.263, ptr @.compoundliteral.264, ptr @.compoundliteral.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.compoundliteral.268, ptr @.compoundliteral.269, ptr @.compoundliteral.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.str.275, ptr @.compoundliteral.276, ptr @.str.277, ptr @.compoundliteral.278, ptr @.compoundliteral.279, ptr @.compoundliteral.280, ptr @.str.281, ptr @.compoundliteral.282, ptr @.str.283, ptr @.compoundliteral.284, ptr @.str.285, ptr @.compoundliteral.286, ptr @.str.287, ptr @.compoundliteral.288, ptr @.str.289, ptr @.compoundliteral.290, ptr @.str.291, ptr @.compoundliteral.292, ptr @.str.293, ptr @.compoundliteral.294, ptr @.str.295, ptr @.compoundliteral.296, ptr @.str.297, ptr @.compoundliteral.298, ptr @.str.299, ptr @.compoundliteral.300, ptr @.str.301, ptr @.compoundliteral.302, ptr @.str.303, ptr @.compoundliteral.304, ptr @.str.305, ptr @.compoundliteral.306, ptr @.compoundliteral.307, ptr @.compoundliteral.308, ptr @.compoundliteral.309, ptr @.str.310, ptr @.compoundliteral.311, ptr @.str.312, ptr @.compoundliteral.313, ptr @.compoundliteral.314, ptr @.str.315, ptr @.str.316, ptr @.compoundliteral.317, ptr @.compoundliteral.318, ptr @.compoundliteral.319, ptr @.compoundliteral.320, ptr @.compoundliteral.321, ptr @.str.322, ptr @.str.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @.compoundliteral.326, ptr @.str.327, ptr @.compoundliteral.328, ptr @.compoundliteral.329, ptr @.compoundliteral.330, ptr @.str.331, ptr @.compoundliteral.332, ptr @.compoundliteral.333, ptr @.compoundliteral.334, ptr @.str.335, ptr @.compoundliteral.336, ptr @.compoundliteral.337, ptr @.compoundliteral.338, ptr @.str.339, ptr @.compoundliteral.340, ptr @.compoundliteral.341, ptr @.compoundliteral.342, ptr @.str.343, ptr @.compoundliteral.344, ptr @.compoundliteral.345, ptr @.compoundliteral.346, ptr @.str.347, ptr @.compoundliteral.348, ptr @.compoundliteral.349, ptr @.compoundliteral.350, ptr @.str.351, ptr @.compoundliteral.352, ptr @.compoundliteral.353, ptr @.compoundliteral.354, ptr @.str.355, ptr @.compoundliteral.356, ptr @.compoundliteral.357, ptr @.compoundliteral.358, ptr @.str.359, ptr @.compoundliteral.360, ptr @.compoundliteral.361, ptr @.str.362, ptr @.compoundliteral.363, ptr @.compoundliteral.364, ptr @.str.365, ptr @.compoundliteral.366, ptr @.compoundliteral.367, ptr @.str.368, ptr @.compoundliteral.369, ptr @.compoundliteral.370, ptr @.compoundliteral.371, ptr @.str.372, ptr @.compoundliteral.373, ptr @.compoundliteral.374, ptr @.compoundliteral.375, ptr @.str.376, ptr @.compoundliteral.377, ptr @.compoundliteral.378, ptr @.str.379, ptr @.compoundliteral.380, ptr @.compoundliteral.381, ptr @.str.382, ptr @.compoundliteral.383, ptr @.compoundliteral.384, ptr @.compoundliteral.385, ptr @.compoundliteral.386, ptr @.compoundliteral.387, ptr @.str.388, ptr @.compoundliteral.389, ptr @.compoundliteral.390, ptr @.str.391, ptr @.compoundliteral.392, ptr @.compoundliteral.393, ptr @.str.394, ptr @.compoundliteral.395, ptr @.compoundliteral.396, ptr @.str.397, ptr @.compoundliteral.398, ptr @.compoundliteral.399, ptr @.str.400, ptr @.compoundliteral.401, ptr @.compoundliteral.402, ptr @.str.403, ptr @.compoundliteral.404, ptr @.compoundliteral.405, ptr @.str.406, ptr @.compoundliteral.407, ptr @.compoundliteral.408, ptr @.str.409, ptr @.str.410, ptr @.compoundliteral.411, ptr @.compoundliteral.412, ptr @.str.413, ptr @.compoundliteral.414, ptr @.compoundliteral.415, ptr @.str.416, ptr @.compoundliteral.417, ptr @.compoundliteral.418, ptr @.compoundliteral.419, ptr @.compoundliteral.420, ptr @.compoundliteral.421, ptr @.compoundliteral.422, ptr @.str.423, ptr @.compoundliteral.424, ptr @.compoundliteral.425, ptr @.compoundliteral.426, ptr @.compoundliteral.427, ptr @.str.428, ptr @.compoundliteral.429, ptr @.compoundliteral.430, ptr @.str.431, ptr @.compoundliteral.432, ptr @.str.433, ptr @.compoundliteral.434, ptr @.compoundliteral.435, ptr @.compoundliteral.436, ptr @.compoundliteral.437, ptr @.compoundliteral.438, ptr @.str.439, ptr @.compoundliteral.440, ptr @.compoundliteral.441, ptr @.str.442, ptr @.compoundliteral.443, ptr @.compoundliteral.444, ptr @.str.445, ptr @.compoundliteral.446, ptr @.compoundliteral.447, ptr @.compoundliteral.448, ptr @.compoundliteral.449, ptr @.str.450, ptr @.compoundliteral.451, ptr @.compoundliteral.452, ptr @.str.453, ptr @.compoundliteral.454, ptr @.compoundliteral.455, ptr @.str.456, ptr @.compoundliteral.457, ptr @.compoundliteral.458, ptr @.compoundliteral.459, ptr @.compoundliteral.460, ptr @.compoundliteral.461, ptr @.str.462, ptr @.compoundliteral.463, ptr @.compoundliteral.464, ptr @.compoundliteral.465, ptr @.compoundliteral.466, ptr @.compoundliteral.467, ptr @.compoundliteral.468, ptr @.compoundliteral.469, ptr @.compoundliteral.470, ptr @.compoundliteral.471, ptr @.compoundliteral.472, ptr @.compoundliteral.473, ptr @.compoundliteral.474, ptr @.compoundliteral.475, ptr @.compoundliteral.476, ptr @.compoundliteral.477, ptr @.compoundliteral.478, ptr @.compoundliteral.479, ptr @.compoundliteral.480, ptr @.compoundliteral.481, ptr @.compoundliteral.482, ptr @.compoundliteral.483, ptr @.compoundliteral.484, ptr @.compoundliteral.485, ptr @.compoundliteral.486, ptr @.compoundliteral.487, ptr @.compoundliteral.488, ptr @.compoundliteral.489, ptr @.compoundliteral.490, ptr @.str.491, ptr @.str.492, ptr @.compoundliteral.493, ptr @.compoundliteral.494, ptr @.str.495, ptr @.str.496, ptr @.compoundliteral.497, ptr @.compoundliteral.498, ptr @.str.499, ptr @.compoundliteral.500, ptr @.compoundliteral.501, ptr @.str.502, ptr @.compoundliteral.503, ptr @.compoundliteral.504, ptr @.str.505, ptr @.compoundliteral.506, ptr @.compoundliteral.507, ptr @.str.508, ptr @.compoundliteral.509, ptr @.compoundliteral.510, ptr @.compoundliteral.511, ptr @.compoundliteral.512, ptr @.str.513, ptr @.compoundliteral.514, ptr @.compoundliteral.515, ptr @.str.516, ptr @.compoundliteral.517, ptr @.compoundliteral.518, ptr @.compoundliteral.519, ptr @.str.520, ptr @.compoundliteral.521, ptr @.compoundliteral.522, ptr @.str.523, ptr @.compoundliteral.524, ptr @.compoundliteral.525, ptr @.str.526, ptr @.compoundliteral.527, ptr @.compoundliteral.528, ptr @.compoundliteral.529, ptr @.compoundliteral.530, ptr @.compoundliteral.531, ptr @.compoundliteral.532, ptr @.compoundliteral.533, ptr @.compoundliteral.534, ptr @.compoundliteral.535, ptr @.compoundliteral.536, ptr @.compoundliteral.537, ptr @.compoundliteral.538, ptr @.compoundliteral.539, ptr @.compoundliteral.540, ptr @.compoundliteral.541, ptr @.compoundliteral.542, ptr @.compoundliteral.543, ptr @.compoundliteral.544, ptr @.compoundliteral.545, ptr @.compoundliteral.546, ptr @.compoundliteral.547, ptr @.compoundliteral.548, ptr @.compoundliteral.549, ptr @.compoundliteral.550, ptr @.compoundliteral.551, ptr @.compoundliteral.552, ptr @.compoundliteral.553, ptr @.compoundliteral.554, ptr @.compoundliteral.555, ptr @.compoundliteral.556, ptr @.str.557, ptr @.str.558, ptr @.compoundliteral.559, ptr @.str.560, ptr @.compoundliteral.561, ptr @.str.562, ptr @.str.563, ptr @.compoundliteral.564, ptr @.compoundliteral.565, ptr @.str.566, ptr @.str.567, ptr @.compoundliteral.568, ptr @.compoundliteral.569, ptr @.compoundliteral.570, ptr @.compoundliteral.571, ptr @.compoundliteral.572, ptr @.compoundliteral.573, ptr @.str.574, ptr @.compoundliteral.575, ptr @.compoundliteral.576, ptr @.compoundliteral.577, ptr @.str.578, ptr @.str.579, ptr @.compoundliteral.580, ptr @.compoundliteral.581, ptr @.compoundliteral.582, ptr @.compoundliteral.583, ptr @.compoundliteral.584, ptr @.compoundliteral.585, ptr @.compoundliteral.586, ptr @.compoundliteral.587, ptr @.compoundliteral.588, ptr @.str.589, ptr @.compoundliteral.590, ptr @.compoundliteral.591, ptr @.compoundliteral.592, ptr @.str.593, ptr @.str.594, ptr @.compoundliteral.595, ptr @.str.596, ptr @.str.597, ptr @.compoundliteral.598, ptr @.str.599, ptr @.compoundliteral.600, ptr @.compoundliteral.601, ptr @.compoundliteral.602, ptr @.str.603, ptr @.str.604, ptr @.compoundliteral.605, ptr @.compoundliteral.606, ptr @.compoundliteral.607, ptr @.compoundliteral.608, ptr @.compoundliteral.609, ptr @.compoundliteral.610, ptr @.str.611, ptr @.compoundliteral.612, ptr @.compoundliteral.613, ptr @.compoundliteral.614, ptr @.compoundliteral.615, ptr @.str.616, ptr @.compoundliteral.617, ptr @.compoundliteral.618, ptr @.compoundliteral.619, ptr @.compoundliteral.620, ptr @.str.621, ptr @.str.622, ptr @.compoundliteral.623, ptr @.str.624, ptr @.compoundliteral.625, ptr @.compoundliteral.626, ptr @.str.627, ptr @.str.628, ptr @.compoundliteral.629, ptr @.compoundliteral.630, ptr @.compoundliteral.631, ptr @.compoundliteral.632, ptr @.compoundliteral.633, ptr @.compoundliteral.634, ptr @.str.635, ptr @.compoundliteral.636, ptr @.compoundliteral.637, ptr @.compoundliteral.638, ptr @.compoundliteral.639, ptr @.compoundliteral.640, ptr @.compoundliteral.641, ptr @.compoundliteral.642, ptr @.str.643, ptr @.str.644, ptr @.compoundliteral.645, ptr @.compoundliteral.646, ptr @.compoundliteral.647, ptr @.compoundliteral.648, ptr @.str.649, ptr @.str.650, ptr @.compoundliteral.651, ptr @.compoundliteral.652, ptr @.compoundliteral.653, ptr @.compoundliteral.654, ptr @.compoundliteral.655, ptr @.compoundliteral.656, ptr @.str.657, ptr @.str.658, ptr @.compoundliteral.659, ptr @.compoundliteral.660, ptr @.compoundliteral.661, ptr @.compoundliteral.662, ptr @.compoundliteral.663, ptr @.compoundliteral.664, ptr @.compoundliteral.665, ptr @.compoundliteral.666, ptr @.compoundliteral.667, ptr @.compoundliteral.668, ptr @.compoundliteral.669, ptr @.compoundliteral.670, ptr @.compoundliteral.671, ptr @.compoundliteral.672, ptr @.compoundliteral.673, ptr @.str.674, ptr @.compoundliteral.675, ptr @.compoundliteral.676, ptr @.compoundliteral.677, ptr @.compoundliteral.678, ptr @.compoundliteral.679, ptr @.compoundliteral.680, ptr @.compoundliteral.681, ptr @.compoundliteral.682, ptr @.compoundliteral.683, ptr @.compoundliteral.684, ptr @.compoundliteral.685, ptr @.compoundliteral.686, ptr @.compoundliteral.687, ptr @.compoundliteral.688, ptr @.compoundliteral.689, ptr @.compoundliteral.690, ptr @.compoundliteral.691, ptr @.compoundliteral.692, ptr @.compoundliteral.693, ptr @.compoundliteral.694, ptr @.compoundliteral.695, ptr @.compoundliteral.696, ptr @.compoundliteral.697, ptr @.compoundliteral.698, ptr @.compoundliteral.699, ptr @.compoundliteral.700, ptr @.compoundliteral.701, ptr @.compoundliteral.702, ptr @.compoundliteral.703, ptr @.compoundliteral.704, ptr @.compoundliteral.705, ptr @.compoundliteral.706, ptr @.compoundliteral.707, ptr @.compoundliteral.708, ptr @.compoundliteral.709, ptr @.compoundliteral.710, ptr @.compoundliteral.711, ptr @.compoundliteral.712, ptr @.compoundliteral.713, ptr @.compoundliteral.714, ptr @.compoundliteral.715, ptr @.compoundliteral.716, ptr @.str.717, ptr @.str.718, ptr @.compoundliteral.719, ptr @.compoundliteral.720, ptr @.compoundliteral.721, ptr @.compoundliteral.722, ptr @.compoundliteral.723, ptr @.compoundliteral.724, ptr @.compoundliteral.725, ptr @.compoundliteral.726, ptr @.compoundliteral.727, ptr @.compoundliteral.728, ptr @.compoundliteral.729, ptr @.compoundliteral.730, ptr @.compoundliteral.731, ptr @.compoundliteral.732, ptr @.compoundliteral.733, ptr @.compoundliteral.734, ptr @.compoundliteral.735, ptr @.compoundliteral.736, ptr @.compoundliteral.737, ptr @.compoundliteral.738, ptr @.compoundliteral.739, ptr @.compoundliteral.740, ptr @.compoundliteral.741, ptr @.compoundliteral.742, ptr @.compoundliteral.743, ptr @.compoundliteral.744, ptr @.compoundliteral.745, ptr @.compoundliteral.746, ptr @.compoundliteral.747], section "llvm.metadata"
@0 = internal global [761 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_use_vmalloc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ignore_ctl_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoclock to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowlatency to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_skip_validation to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_setup to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_alias to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_register to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @implicit_fb to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_flags to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_ids to i32), i32 6072, i32 7584, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_chip to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_alias_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_audio_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_audio_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_audio_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_audio_create.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lookup_device_name.p to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_audio_names to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_streams._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_stream._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_create_stream._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.232 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.304 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.306 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.307 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.308 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.309 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.311 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.314 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.317 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.318 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.319 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.320 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.326 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.332 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.334 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.336 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.338 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.340 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.341 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.342 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.344 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.348 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.350 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.352 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.353 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.354 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.356 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.358 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.360 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.361 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.364 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.366 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.370 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.374 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.378 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.380 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1596 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.384 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.386 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.392 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1610 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.395 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.396 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.398 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.399 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.401 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.402 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.404 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.405 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.407 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.408 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.411 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.412 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.414 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.415 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.417 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.418 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.419 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.420 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.421 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.422 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.424 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.425 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.426 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.427 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.429 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.430 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.432 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.434 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.435 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.436 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.437 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.438 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.440 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.441 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.443 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.444 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.446 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.447 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.448 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.449 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.451 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.452 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.454 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.455 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.457 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.458 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.459 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.460 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.461 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.463 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.464 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.465 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.466 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.467 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.468 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.469 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.470 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.471 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.472 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.473 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.474 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.475 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.476 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.477 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.478 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.479 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.480 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.481 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.482 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.483 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.484 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.485 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.486 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.487 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.488 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.489 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.490 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.493 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.494 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.497 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.498 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.500 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.501 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.503 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.504 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.506 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.507 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1778 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.509 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.510 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.511 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1784 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.512 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.513 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.514 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.515 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.517 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.518 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.519 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.520 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.521 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.522 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.523 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.524 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.525 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.526 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.527 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.528 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.529 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.530 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.531 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.532 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1815 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.533 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.534 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.535 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.536 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.537 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.538 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.539 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.540 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.541 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.542 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.543 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.544 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.545 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.546 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.547 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.548 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.549 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.550 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.551 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.552 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.553 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.554 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.555 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1838 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.556 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.557 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.558 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.559 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.560 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.561 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1850 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.562 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.564 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.565 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.566 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.567 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.568 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1865 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.569 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.570 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1867 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.571 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1868 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.572 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.573 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.574 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.575 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1874 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.576 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.577 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1876 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.578 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.579 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.580 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1883 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.581 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.582 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.583 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1886 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.584 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.585 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1888 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.586 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1889 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.587 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.588 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.589 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.590 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.591 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.592 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.593 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.594 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.595 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1904 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.596 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.597 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.598 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.599 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.600 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1915 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.601 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1916 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.602 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.603 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.604 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.605 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1924 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.606 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.607 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.608 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1927 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.609 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1928 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.610 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.611 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.612 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.613 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1934 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.614 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.615 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1936 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.616 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.617 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1940 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.618 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1941 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.619 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1942 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.620 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1943 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.621 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.622 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.623 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.624 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.625 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1954 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.626 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1955 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.627 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.628 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.629 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.630 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1963 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.631 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1964 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.632 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.633 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1966 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.634 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1967 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.635 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.636 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1971 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.637 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1972 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.638 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1973 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.639 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.640 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1975 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.641 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1976 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.642 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.643 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.644 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.645 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1984 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.646 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1985 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.647 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.648 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1987 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.649 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.650 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.651 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1994 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.652 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1995 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.653 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1996 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.654 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1997 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.655 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.656 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1999 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.657 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.658 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.659 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2006 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.660 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2007 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.661 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2008 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.662 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2009 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.663 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.664 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.665 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2012 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.666 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.667 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2014 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.668 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2015 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.669 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.670 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2017 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.671 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2018 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.672 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.673 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2020 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.674 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.675 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2024 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.676 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.677 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2026 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.678 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2027 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.679 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2028 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.680 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.681 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2030 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.682 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.683 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2032 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.684 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2033 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.685 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2034 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.686 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2035 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.687 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2036 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.688 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.689 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2038 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.690 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2039 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.691 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.692 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2041 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.693 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2042 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.694 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.695 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2044 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.696 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2045 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.697 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.698 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2047 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.699 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2048 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.700 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.701 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2050 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.702 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2051 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.703 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.704 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2053 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.705 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2054 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.706 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.707 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2056 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.708 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2057 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.709 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.710 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2059 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.711 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2060 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.712 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2061 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.713 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2062 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.714 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2063 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.715 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.716 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2065 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.717 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.718 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2069 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.719 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2072 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.720 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2073 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.721 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2074 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.722 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2075 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.723 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.724 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2077 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.725 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2078 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.726 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.727 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2080 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.728 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2081 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.729 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.730 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.731 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2084 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.732 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.733 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2086 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.734 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2087 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.735 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2088 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.736 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2089 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.737 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2090 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.738 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.739 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2092 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.740 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2093 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.741 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.742 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.743 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.2096 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.744 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.745 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2098 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.746 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2099 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.747 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_lock_shutdown(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usage_count = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #9, !srcloc !672
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 9
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #9
  %1 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_usb_autoresume(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.error_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

error:                                            ; preds = %if.end.error_crit_edge, %entry.error_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.error_crit_edge ], [ -5, %entry.error_crit_edge ]
  %call.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !673
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #9, !srcloc !674
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !675
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then6, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  %shutdown_wait = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %shutdown_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %error.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %err.0, %if.then6 ], [ %err.0, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_autoresume(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #9
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 8
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !676
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #9, !srcloc !677
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !678
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_interfaces = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 14
  %3 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_interfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp427 = icmp sgt i32 %4, 0
  br i1 %cmp427, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_usb_audio, ptr %chip, i32 0, i32 3, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %cmp830.not = icmp eq i32 %i.028, 0
  br i1 %cmp830.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec31.in = phi i32 [ %dec31, %while.body.while.body_crit_edge ], [ %i.028, %while.cond.preheader.while.body_crit_edge ]
  %dec31 = add nsw i32 %dec31.in, -1
  %arrayidx10 = getelementptr %struct.snd_usb_audio, ptr %chip, i32 0, i32 3, i32 %dec31
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx10, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %8) #9
  %cmp8 = icmp sgt i32 %dec31.in, 1
  br i1 %cmp8, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #9, !srcloc !679
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.028, 1
  %10 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_interfaces, align 4
  %cmp4 = icmp slt i32 %inc, %11
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.end, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %while.end ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_unlock_shutdown(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %shutdown.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.snd_usb_autosuspend.exit_crit_edge

entry.snd_usb_autosuspend.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_usb_autosuspend.exit

if.end.i:                                         ; preds = %entry
  %active.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 8
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !673
  tail call void @llvm.prefetch.p0(ptr %active.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active.i, ptr %active.i, i32 1, ptr elementtype(i32) %active.i) #9, !srcloc !674
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !675
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.cond.preheader.i, label %if.end.i.snd_usb_autosuspend.exit_crit_edge

if.end.i.snd_usb_autosuspend.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_usb_autosuspend.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %num_interfaces.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 14
  %3 = ptrtoint ptr %num_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_interfaces.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10.i = icmp sgt i32 %4, 0
  br i1 %cmp10.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.snd_usb_autosuspend.exit_crit_edge

for.cond.preheader.i.snd_usb_autosuspend.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_usb_autosuspend.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snd_usb_audio, ptr %chip, i32 0, i32 3, i32 %i.011.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %6) #9
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %7 = ptrtoint ptr %num_interfaces.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_interfaces.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.snd_usb_autosuspend.exit_crit_edge

for.body.i.snd_usb_autosuspend.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_usb_autosuspend.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

snd_usb_autosuspend.exit:                         ; preds = %for.body.i.snd_usb_autosuspend.exit_crit_edge, %for.cond.preheader.i.snd_usb_autosuspend.exit_crit_edge, %if.end.i.snd_usb_autosuspend.exit_crit_edge, %entry.snd_usb_autosuspend.exit_crit_edge
  %usage_count = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !673
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #9, !srcloc !674
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !675
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %snd_usb_autosuspend.exit.if.end_crit_edge

snd_usb_autosuspend.exit.if.end_crit_edge:        ; preds = %snd_usb_autosuspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %snd_usb_autosuspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shutdown_wait = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %shutdown_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %snd_usb_autosuspend.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_autosuspend(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #9
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 8
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !673
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #9, !srcloc !674
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !675
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_interfaces = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 14
  %3 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_interfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10 = icmp sgt i32 %4, 0
  br i1 %cmp10, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_usb_audio, ptr %chip, i32 0, i32 3, i32 %i.011
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %6) #9
  %inc = add nuw nsw i32 %i.011, 1
  %7 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_interfaces, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_audio_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_audio_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_audio_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @usb_audio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_audio_probe(ptr noundef %intf, ptr nocapture noundef readonly %usb_id) #0 align 64 {
entry:
  %id.i = alloca i32, align 4
  %inum.i = alloca i32, align 4
  %src.i = alloca i32, align 4
  %dst.i = alloca i32, align 4
  %chip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %usb_id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip) #9
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %chip, align 4, !annotation !680
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %8 to i32
  %idVendor = getelementptr i8, ptr %1, i32 936
  %9 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idVendor, align 8
  %idProduct = getelementptr i8, ptr %1, i32 938
  %11 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idProduct, align 2
  %13 = zext i16 %10 to i32
  %14 = zext i16 %12 to i32
  %15 = shl nuw i32 %14, 16
  %16 = or i32 %15, %13
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src.i) #9
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %src.i, align 4, !annotation !680
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst.i) #9
  %19 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %dst.i, align 4, !annotation !680
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %cmp22.i = phi i1 [ true, %entry ], [ %cmp.i, %for.inc.i.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr @quirk_alias, i32 0, i32 %i.021.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %21, ptr noundef nonnull @.str.20, ptr noundef nonnull %src.i, ptr noundef nonnull %dst.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %17)
  %cmp4.not.i = icmp eq i32 %23, %17
  br i1 %cmp4.not.i, label %do.end.i, label %lor.lhs.false3.i.for.inc.i_crit_edge

lor.lhs.false3.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i:                                         ; preds = %lor.lhs.false3.i
  %shr.i = lshr i32 %17, 16
  %conv6.i = and i32 %17, 65535
  %24 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst.i, align 4
  %shr7.i = lshr i32 %25, 16
  %conv9.i = and i32 %25, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %shr.i, i32 noundef %conv6.i, i32 noundef %shr7.i, i32 noundef %conv9.i) #12
  %26 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src.i) #9
  br i1 %cmp22.i, label %if.then, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i:                                        ; preds = %lor.lhs.false3.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.021.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.021.i)
  %cmp.i = icmp ult i32 %i.021.i, 31
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %get_alias_id.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

get_alias_id.exit:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src.i) #9
  br label %if.end

if.then:                                          ; preds = %do.end.i
  %shr.i288 = lshr i32 %27, 16
  %28 = trunc i32 %27 to i16
  br label %for.body.i290

for.body.i290:                                    ; preds = %for.inc.i292.for.body.i290_crit_edge, %if.then
  %29 = phi i16 [ 3, %if.then ], [ %38, %for.inc.i292.for.body.i290_crit_edge ]
  %p.02.i = phi ptr [ @usb_audio_ids, %if.then ], [ %incdec.ptr.i, %for.inc.i292.for.body.i290_crit_edge ]
  %30 = and i16 %29, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp.i289 = icmp eq i16 %30, 3
  br i1 %cmp.i289, label %land.lhs.true.i, label %for.body.i290.for.inc.i292_crit_edge

for.body.i290.for.inc.i292_crit_edge:             ; preds = %for.body.i290
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i292

land.lhs.true.i:                                  ; preds = %for.body.i290
  %idVendor.i = getelementptr inbounds %struct.usb_device_id, ptr %p.02.i, i32 0, i32 1
  %31 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idVendor.i, align 2
  %conv3.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i288, i32 %conv3.i)
  %cmp4.i = icmp eq i32 %shr.i288, %conv3.i
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i292_crit_edge

land.lhs.true.i.for.inc.i292_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i292

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %idProduct.i = getelementptr inbounds %struct.usb_device_id, ptr %p.02.i, i32 0, i32 2
  %33 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %idProduct.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %28)
  %cmp10.i = icmp eq i16 %34, %28
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true6.i.for.inc.i292_crit_edge

land.lhs.true6.i.for.inc.i292_crit_edge:          ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i292

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  %driver_info.i = getelementptr inbounds %struct.usb_device_id, ptr %p.02.i, i32 0, i32 12
  %35 = ptrtoint ptr %driver_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %driver_info.i, align 4
  br label %if.end

for.inc.i292:                                     ; preds = %land.lhs.true6.i.for.inc.i292_crit_edge, %land.lhs.true.i.for.inc.i292_crit_edge, %for.body.i290.for.inc.i292_crit_edge
  %incdec.ptr.i = getelementptr %struct.usb_device_id, ptr %p.02.i, i32 1
  %37 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %incdec.ptr.i, align 4
  %tobool.not.i291 = icmp eq i16 %38, 0
  br i1 %tobool.not.i291, label %for.inc.i292.if.end23_crit_edge, label %for.inc.i292.for.body.i290_crit_edge

for.inc.i292.for.body.i290_crit_edge:             ; preds = %for.inc.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i290

for.inc.i292.if.end23_crit_edge:                  ; preds = %for.inc.i292
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end:                                           ; preds = %if.then.i, %get_alias_id.exit, %do.end.i.if.end_crit_edge
  %id.0324 = phi i32 [ %17, %get_alias_id.exit ], [ %27, %do.end.i.if.end_crit_edge ], [ %27, %if.then.i ]
  %quirk.0.in = phi i32 [ %3, %get_alias_id.exit ], [ %3, %do.end.i.if.end_crit_edge ], [ %36, %if.then.i ]
  %quirk.0 = inttoptr i32 %quirk.0.in to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quirk.0.in)
  %tobool.not = icmp eq i32 %quirk.0.in, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %land.lhs.true

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %ifnum6 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk.0, i32 0, i32 2
  %39 = ptrtoint ptr %ifnum6 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ifnum6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp = icmp slt i16 %40, 0
  %conv7 = sext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv7)
  %cmp12.not = icmp eq i32 %conv, %conv7
  %or.cond = select i1 %cmp, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %land.lhs.true17.critedge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true17.critedge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %40)
  %cmp20 = icmp eq i16 %40, -3
  br i1 %cmp20, label %land.lhs.true17.critedge.cleanup_crit_edge, label %land.lhs.true17.critedge.if.end23_crit_edge

land.lhs.true17.critedge.if.end23_crit_edge:      ; preds = %land.lhs.true17.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true17.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true17.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true17.critedge.if.end23_crit_edge, %if.end.if.end23_crit_edge, %for.inc.i292.if.end23_crit_edge
  %tobool.not333 = phi i1 [ true, %if.end.if.end23_crit_edge ], [ false, %land.lhs.true17.critedge.if.end23_crit_edge ], [ true, %for.inc.i292.if.end23_crit_edge ]
  %quirk.0329 = phi ptr [ null, %if.end.if.end23_crit_edge ], [ %quirk.0, %land.lhs.true17.critedge.if.end23_crit_edge ], [ null, %for.inc.i292.if.end23_crit_edge ]
  %id.0324328 = phi i32 [ %id.0324, %if.end.if.end23_crit_edge ], [ %id.0324, %land.lhs.true17.critedge.if.end23_crit_edge ], [ %27, %for.inc.i292.if.end23_crit_edge ]
  %call24 = call i32 @snd_usb_apply_boot_quirk(ptr noundef %add.ptr.i, ptr noundef %intf, ptr noundef %quirk.0329, i32 noundef %id.0324328) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %41 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %chip, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28
  %i.0350 = phi i32 [ 0, %if.end28 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx31 = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %i.0350
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %43, null
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %land.lhs.true33

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true33:                                  ; preds = %for.body
  %dev35 = getelementptr inbounds %struct.snd_usb_audio, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev35, align 4
  %cmp36 = icmp eq ptr %45, %add.ptr.i
  br i1 %cmp36, label %if.then38, label %land.lhs.true33.for.inc_crit_edge

land.lhs.true33.for.inc_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then38:                                        ; preds = %land.lhs.true33
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %43, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #9
  %46 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool41.not = icmp eq i32 %47, 0
  br i1 %tobool41.not, label %if.end44, label %do.end

do.end:                                           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #12
  br label %__error

if.end44:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx31, align 4
  %50 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %chip, align 4
  %active = getelementptr inbounds %struct.snd_usb_audio, ptr %49, i32 0, i32 8
  %call.i.i285 = call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #9
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #9, !srcloc !672
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0350, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end44
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  %tobool47.not = icmp eq ptr %53, null
  br i1 %tobool47.not, label %if.then48, label %for.end.if.end114_crit_edge

for.end.if.end114_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then48:                                        ; preds = %for.end
  %call49 = call i32 @snd_usb_apply_boot_quirk_once(ptr noundef %add.ptr.i, ptr noundef %intf, ptr noundef %quirk.0329, i32 noundef %id.0324328) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then48.__error_crit_edge, label %for.cond54.preheader

if.then48.__error_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

for.cond54.preheader:                             ; preds = %if.then48
  %shr = lshr i32 %id.0324328, 16
  %conv74 = and i32 %id.0324328, 65535
  br label %for.body57

for.body57:                                       ; preds = %for.inc104.for.body57_crit_edge, %for.cond54.preheader
  %i.1351 = phi i32 [ 0, %for.cond54.preheader ], [ %inc105, %for.inc104.for.body57_crit_edge ]
  %arrayidx58 = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %i.1351
  %54 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %55, null
  br i1 %tobool59.not, label %land.lhs.true60, label %for.body57.for.inc104_crit_edge

for.body57.for.inc104_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

land.lhs.true60:                                  ; preds = %for.body57
  %arrayidx61 = getelementptr [32 x i32], ptr @vid, i32 0, i32 %i.1351
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp62 = icmp eq i32 %57, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %shr)
  %cmp65 = icmp eq i32 %57, %shr
  %or.cond342 = or i1 %cmp62, %cmp65
  br i1 %or.cond342, label %land.lhs.true67, label %land.lhs.true60.for.inc104_crit_edge

land.lhs.true60.for.inc104_crit_edge:             ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

land.lhs.true67:                                  ; preds = %land.lhs.true60
  %arrayidx68 = getelementptr [32 x i32], ptr @pid, i32 0, i32 %i.1351
  %58 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp69 = icmp eq i32 %59, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv74)
  %cmp75 = icmp eq i32 %59, %conv74
  %or.cond343 = or i1 %cmp69, %cmp75
  br i1 %or.cond343, label %if.then77, label %land.lhs.true67.for.inc104_crit_edge

land.lhs.true67.for.inc104_crit_edge:             ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

if.then77:                                        ; preds = %land.lhs.true67
  %arrayidx78 = getelementptr [32 x i8], ptr @enable, i32 0, i32 %i.1351
  %60 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx78, align 1, !range !681
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool79.not = icmp eq i8 %61, 0
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.then77
  %call81 = call fastcc i32 @snd_usb_audio_create(ptr noundef %intf, ptr noundef %add.ptr.i, i32 noundef %i.1351, ptr noundef %quirk.0329, i32 noundef %id.0324328, ptr noundef nonnull %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then80.__error_crit_edge, label %if.then80.for.end106_crit_edge

if.then80.for.end106_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

if.then80.__error_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

if.else:                                          ; preds = %if.then77
  %62 = select i1 %cmp62, i1 %cmp69, i1 false
  br i1 %62, label %if.else.for.inc104_crit_edge, label %do.end96

if.else.for.inc104_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

do.end96:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %shr, i32 noundef %conv74) #12
  br label %__error

for.inc104:                                       ; preds = %if.else.for.inc104_crit_edge, %land.lhs.true67.for.inc104_crit_edge, %land.lhs.true60.for.inc104_crit_edge, %for.body57.for.inc104_crit_edge
  %inc105 = add nuw nsw i32 %i.1351, 1
  %exitcond361.not = icmp eq i32 %inc105, 32
  br i1 %exitcond361.not, label %for.inc104.for.end106_crit_edge, label %for.inc104.for.body57_crit_edge

for.inc104.for.body57_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57

for.inc104.for.end106_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

for.end106:                                       ; preds = %for.inc104.for.end106_crit_edge, %if.then80.for.end106_crit_edge
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %tobool107.not = icmp eq ptr %64, null
  br i1 %tobool107.not, label %do.end111, label %for.end106.if.end114_crit_edge

for.end106.if.end114_crit_edge:                   ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

do.end111:                                        ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #12
  br label %__error

if.end114:                                        ; preds = %for.end106.if.end114_crit_edge, %for.end.if.end114_crit_edge
  %65 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip, align 4
  %num_interfaces = getelementptr inbounds %struct.snd_usb_audio, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_interfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %68)
  %cmp115 = icmp sgt i32 %68, 15
  br i1 %cmp115, label %do.end120, label %if.end122

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.15) #12
  br label %__error

if.end122:                                        ; preds = %if.end114
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %69 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %driver_data.i, align 4
  %70 = load i8, ptr @ignore_ctl_error, align 1, !range !681
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool124.not = icmp eq i8 %70, 0
  br i1 %tobool124.not, label %if.end122.if.end127_crit_edge, label %if.then125

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip, align 4
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %quirk_flags, align 4
  %or126 = or i32 %74, 16384
  store i32 %or126, ptr %quirk_flags, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122.if.end127_crit_edge
  %75 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chip, align 4
  %quirk_flags128 = getelementptr inbounds %struct.snd_usb_audio, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %quirk_flags128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %quirk_flags128, align 4
  %and = and i32 %78, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool129.not = icmp eq i32 %and, 0
  br i1 %tobool129.not, label %if.end127.if.end132_crit_edge, label %if.then130

if.end127.if.end132_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parent.i, align 8
  %add.ptr.i294 = getelementptr i8, ptr %80, i32 -128
  call void @usb_disable_autosuspend(ptr noundef %add.ptr.i294) #9
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end127.if.end132_crit_edge
  %81 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip, align 4
  %ctrl_intf = getelementptr inbounds %struct.snd_usb_audio, ptr %82, i32 0, i32 28
  %83 = ptrtoint ptr %ctrl_intf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctrl_intf, align 4
  %tobool133.not = icmp eq ptr %84, null
  br i1 %tobool133.not, label %if.then134, label %if.end132.if.end136_crit_edge

if.end132.if.end136_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end136

if.then134:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %ctrl_intf to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %6, ptr %ctrl_intf, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end132.if.end136_crit_edge
  br i1 %tobool.not333, label %if.end136.if.then152_crit_edge, label %land.lhs.true138

if.end136.if.then152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then152

land.lhs.true138:                                 ; preds = %if.end136
  %ifnum139 = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk.0329, i32 0, i32 2
  %86 = ptrtoint ptr %ifnum139 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ifnum139, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %87)
  %cmp141.not = icmp eq i16 %87, -2
  br i1 %cmp141.not, label %land.lhs.true138.if.then152_crit_edge, label %if.then143

land.lhs.true138.if.then152_crit_edge:            ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then152

if.then143:                                       ; preds = %land.lhs.true138
  %call144 = call i32 @snd_usb_create_quirk(ptr noundef %82, ptr noundef %intf, ptr noundef nonnull @usb_audio_driver, ptr noundef nonnull %quirk.0329) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.then143.__error_crit_edge, label %if.end149

if.then143.__error_crit_edge:                     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

if.end149:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp150.not = icmp eq i32 %call144, 0
  br i1 %cmp150.not, label %if.end149.if.end163_crit_edge, label %if.end149.if.then152_crit_edge

if.end149.if.then152_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then152

if.end149.if.end163_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

if.then152:                                       ; preds = %if.end149.if.then152_crit_edge, %land.lhs.true138.if.then152_crit_edge, %if.end136.if.then152_crit_edge
  %88 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chip, align 4
  %dev1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev1.i, align 4
  %call.i295 = call ptr @usb_ifnum_to_if(ptr noundef %91, i32 noundef %conv) #9
  %92 = ptrtoint ptr %call.i295 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i295, align 8
  %bInterfaceProtocol.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %bInterfaceProtocol.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bInterfaceProtocol.i, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i8 %95, label %do.end.i296 [
    i8 0, label %if.then152.sw.bb.i_crit_edge
    i8 32, label %if.then152.sw.bb65.i_crit_edge
    i8 48, label %if.then152.sw.bb65.i_crit_edge389
  ]

if.then152.sw.bb65.i_crit_edge389:                ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb65.i

if.then152.sw.bb65.i_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb65.i

if.then152.sw.bb.i_crit_edge:                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end.i296:                                      ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %95 to i32
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.87, i32 noundef %conv.i) #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end.i296, %if.then152.sw.bb.i_crit_edge
  %extra.i = getelementptr inbounds %struct.usb_host_interface, ptr %93, i32 0, i32 2
  %97 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %extra.i, align 4
  %extralen.i = getelementptr inbounds %struct.usb_host_interface, ptr %93, i32 0, i32 1
  %99 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %extralen.i, align 4
  %call3.i = call ptr @snd_usb_find_csint_desc(ptr noundef %98, i32 noundef %100, ptr noundef null, i8 noundef zeroext 1) #9
  %tobool.not.i297 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i297, label %sw.bb.i.do.end8.i_crit_edge, label %lor.lhs.false.i299

sw.bb.i.do.end8.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

lor.lhs.false.i299:                               ; preds = %sw.bb.i
  %101 = ptrtoint ptr %call3.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %call3.i, align 1
  %conv4.i = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %102)
  %cmp.i298 = icmp ult i8 %102, 8
  br i1 %cmp.i298, label %lor.lhs.false.i299.do.end8.i_crit_edge, label %if.end.i

lor.lhs.false.i299.do.end8.i_crit_edge:           ; preds = %lor.lhs.false.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %lor.lhs.false.i299.do.end8.i_crit_edge, %sw.bb.i.do.end8.i_crit_edge
  %dev9.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.91) #12
  br label %__error

if.end.i:                                         ; preds = %lor.lhs.false.i299
  %103 = ptrtoint ptr %extra.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %extra.i, align 4
  %105 = ptrtoint ptr %extralen.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %extralen.i, align 4
  %add.ptr.i300 = getelementptr i8, ptr %104, i32 %106
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i300 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp12.i = icmp slt i32 %sub.ptr.sub.i, 1
  br i1 %cmp12.i, label %do.end17.i, label %if.end19.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev18.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull @.str.94) #12
  br label %__error

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp20.i301 = icmp ult i32 %sub.ptr.sub.i, 8
  br i1 %cmp20.i301, label %do.end25.i, label %if.end27.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev26.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.97) #12
  br label %__error

if.end27.i:                                       ; preds = %if.end19.i
  %bInCollection.i = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %call3.i, i32 0, i32 5
  %107 = ptrtoint ptr %bInCollection.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bInCollection.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool28.not.i = icmp eq i8 %108, 0
  br i1 %tobool28.not.i, label %do.end32.i, label %if.end34.i

do.end32.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev33.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33.i, ptr noundef nonnull @.str.100) #12
  br label %__error

if.end34.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv4.i)
  %cmp37.i = icmp ult i32 %sub.ptr.sub.i, %conv4.i
  br i1 %cmp37.i, label %do.end42.i, label %if.end44.i

do.end42.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev43.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i, ptr noundef nonnull @.str.103) #12
  br label %__error

if.end44.i:                                       ; preds = %if.end34.i
  %conv48.i = zext i8 %108 to i32
  %add.i = add nuw nsw i32 %conv48.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv4.i)
  %cmp49.i = icmp ugt i32 %add.i, %conv4.i
  br i1 %cmp49.i, label %do.end54.i, label %if.end44.i.for.body.i303_crit_edge

if.end44.i.for.body.i303_crit_edge:               ; preds = %if.end44.i
  br label %for.body.i303

do.end54.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev55.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55.i, ptr noundef nonnull @.str.106) #12
  br label %__error

for.body.i303:                                    ; preds = %for.body.i303.for.body.i303_crit_edge, %if.end44.i.for.body.i303_crit_edge
  %i.0212.i = phi i32 [ %inc.i302, %for.body.i303.for.body.i303_crit_edge ], [ 0, %if.end44.i.for.body.i303_crit_edge ]
  %arrayidx61.i = getelementptr %struct.uac1_ac_header_descriptor, ptr %call3.i, i32 0, i32 6, i32 %i.0212.i
  %109 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx61.i, align 1
  %conv62.i = zext i8 %110 to i32
  call fastcc void @snd_usb_create_stream(ptr noundef %89, i32 noundef %conv, i32 noundef %conv62.i) #9
  %inc.i302 = add nuw nsw i32 %i.0212.i, 1
  %111 = ptrtoint ptr %bInCollection.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bInCollection.i, align 1
  %conv58.i = zext i8 %112 to i32
  %cmp59.i = icmp ult i32 %inc.i302, %conv58.i
  br i1 %cmp59.i, label %for.body.i303.for.body.i303_crit_edge, label %for.body.i303.if.end157_crit_edge

for.body.i303.if.end157_crit_edge:                ; preds = %for.body.i303
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

for.body.i303.for.body.i303_crit_edge:            ; preds = %for.body.i303
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i303

sw.bb65.i:                                        ; preds = %if.then152.sw.bb65.i_crit_edge, %if.then152.sw.bb65.i_crit_edge389
  %call66.i = call ptr @usb_ifnum_to_if(ptr noundef %91, i32 noundef %conv) #9
  %intf_assoc.i = getelementptr inbounds %struct.usb_interface, ptr %call66.i, i32 0, i32 3
  %113 = ptrtoint ptr %intf_assoc.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %intf_assoc.i, align 4
  %tobool67.not.i = icmp eq ptr %114, null
  br i1 %tobool67.not.i, label %if.then68.i, label %sw.bb65.i.if.end94.i_crit_edge

sw.bb65.i.if.end94.i_crit_edge:                   ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

if.then68.i:                                      ; preds = %sw.bb65.i
  %add69.i = add nuw nsw i32 %conv, 1
  %call70.i = call ptr @usb_ifnum_to_if(ptr noundef %91, i32 noundef %add69.i) #9
  %tobool71.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool71.not.i, label %if.then68.i.do.end92.i_crit_edge, label %land.lhs.true.i304

if.then68.i.do.end92.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92.i

land.lhs.true.i304:                               ; preds = %if.then68.i
  %intf_assoc72.i = getelementptr inbounds %struct.usb_interface, ptr %call70.i, i32 0, i32 3
  %115 = ptrtoint ptr %intf_assoc72.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %intf_assoc72.i, align 4
  %tobool73.not.i = icmp eq ptr %116, null
  br i1 %tobool73.not.i, label %land.lhs.true.i304.do.end92.i_crit_edge, label %land.lhs.true74.i

land.lhs.true.i304.do.end92.i_crit_edge:          ; preds = %land.lhs.true.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92.i

land.lhs.true74.i:                                ; preds = %land.lhs.true.i304
  %bFunctionClass.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %bFunctionClass.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bFunctionClass.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %118)
  %cmp77.i = icmp eq i8 %118, 1
  br i1 %cmp77.i, label %land.lhs.true79.i, label %land.lhs.true74.i.do.end92.i_crit_edge

land.lhs.true74.i.do.end92.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92.i

land.lhs.true79.i:                                ; preds = %land.lhs.true74.i
  %bFunctionProtocol.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %116, i32 0, i32 6
  %119 = ptrtoint ptr %bFunctionProtocol.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bFunctionProtocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %120)
  %cmp82.i = icmp eq i8 %120, 32
  br i1 %cmp82.i, label %land.lhs.true79.i.if.end94.i_crit_edge, label %land.lhs.true79.i.do.end92.i_crit_edge

land.lhs.true79.i.do.end92.i_crit_edge:           ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92.i

land.lhs.true79.i.if.end94.i_crit_edge:           ; preds = %land.lhs.true79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

do.end92.i:                                       ; preds = %land.lhs.true79.i.do.end92.i_crit_edge, %land.lhs.true74.i.do.end92.i_crit_edge, %land.lhs.true.i304.do.end92.i_crit_edge, %if.then68.i.do.end92.i_crit_edge
  %dev93.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93.i, ptr noundef nonnull @.str.109) #12
  br label %__error

if.end94.i:                                       ; preds = %land.lhs.true79.i.if.end94.i_crit_edge, %sw.bb65.i.if.end94.i_crit_edge
  %assoc.1.i = phi ptr [ %114, %sw.bb65.i.if.end94.i_crit_edge ], [ %116, %land.lhs.true79.i.if.end94.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %95)
  %cmp95.i = icmp eq i8 %95, 48
  br i1 %cmp95.i, label %if.then97.i, label %if.end94.i.if.end115.i_crit_edge

if.end94.i.if.end115.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115.i

if.then97.i:                                      ; preds = %if.end94.i
  %bFunctionSubClass.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %assoc.1.i, i32 0, i32 5
  %121 = ptrtoint ptr %bFunctionSubClass.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bFunctionSubClass.i, align 1
  %123 = zext i8 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.748)
  switch i8 %122, label %do.end110.i [
    i8 38, label %if.then97.i.if.end112.i_crit_edge
    i8 37, label %if.then97.i.if.end112.i_crit_edge390
    i8 36, label %if.then97.i.if.end112.i_crit_edge391
    i8 35, label %if.then97.i.if.end112.i_crit_edge392
    i8 34, label %if.then97.i.if.end112.i_crit_edge393
    i8 33, label %if.then97.i.if.end112.i_crit_edge394
    i8 32, label %if.then97.i.if.end112.i_crit_edge395
    i8 1, label %if.then97.i.if.end112.i_crit_edge396
  ]

if.then97.i.if.end112.i_crit_edge396:             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i.if.end112.i_crit_edge395:             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i.if.end112.i_crit_edge394:             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i.if.end112.i_crit_edge393:             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i.if.end112.i_crit_edge392:             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i.if.end112.i_crit_edge391:             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i.if.end112.i_crit_edge390:             ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

if.then97.i.if.end112.i_crit_edge:                ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112.i

do.end110.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev111.i = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111.i, ptr noundef nonnull @.str.112) #12
  br label %__error

if.end112.i:                                      ; preds = %if.then97.i.if.end112.i_crit_edge, %if.then97.i.if.end112.i_crit_edge390, %if.then97.i.if.end112.i_crit_edge391, %if.then97.i.if.end112.i_crit_edge392, %if.then97.i.if.end112.i_crit_edge393, %if.then97.i.if.end112.i_crit_edge394, %if.then97.i.if.end112.i_crit_edge395, %if.then97.i.if.end112.i_crit_edge396
  %conv98.i = zext i8 %122 to i32
  %badd_profile.i = getelementptr inbounds %struct.snd_usb_audio, ptr %89, i32 0, i32 17
  %124 = ptrtoint ptr %badd_profile.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv98.i, ptr %badd_profile.i, align 4
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.end112.i, %if.end94.i.if.end115.i_crit_edge
  %bInterfaceCount.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %assoc.1.i, i32 0, i32 3
  %125 = ptrtoint ptr %bInterfaceCount.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bInterfaceCount.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp118208.not.i = icmp eq i8 %126, 0
  br i1 %cmp118208.not.i, label %if.end115.i.if.end157_crit_edge, label %for.body120.lr.ph.i

if.end115.i.if.end157_crit_edge:                  ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

for.body120.lr.ph.i:                              ; preds = %if.end115.i
  %bFirstInterface.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %assoc.1.i, i32 0, i32 2
  br label %for.body120.i

for.body120.i:                                    ; preds = %if.end127.i.for.body120.i_crit_edge, %for.body120.lr.ph.i
  %i.1209.i = phi i32 [ 0, %for.body120.lr.ph.i ], [ %inc129.i, %if.end127.i.for.body120.i_crit_edge ]
  %127 = ptrtoint ptr %bFirstInterface.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bFirstInterface.i, align 1
  %conv121.i = zext i8 %128 to i32
  %add122.i = add nuw i32 %i.1209.i, %conv121.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add122.i, i32 %conv)
  %cmp123.not.i = icmp eq i32 %add122.i, %conv
  br i1 %cmp123.not.i, label %for.body120.i.if.end127.i_crit_edge, label %if.then125.i

for.body120.i.if.end127.i_crit_edge:              ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127.i

if.then125.i:                                     ; preds = %for.body120.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @snd_usb_create_stream(ptr noundef %89, i32 noundef %conv, i32 noundef %add122.i) #9
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then125.i, %for.body120.i.if.end127.i_crit_edge
  %inc129.i = add nuw nsw i32 %i.1209.i, 1
  %129 = ptrtoint ptr %bInterfaceCount.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bInterfaceCount.i, align 1
  %conv117.i = zext i8 %130 to i32
  %cmp118.i = icmp ult i32 %inc129.i, %conv117.i
  br i1 %cmp118.i, label %if.end127.i.for.body120.i_crit_edge, label %if.end127.i.if.end157_crit_edge

if.end127.i.if.end157_crit_edge:                  ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end157

if.end127.i.for.body120.i_crit_edge:              ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120.i

if.end157:                                        ; preds = %if.end127.i.if.end157_crit_edge, %if.end115.i.if.end157_crit_edge, %for.body.i303.if.end157_crit_edge
  %131 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %chip, align 4
  %call158 = call i32 @snd_usb_create_mixer(ptr noundef %132, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.end157.__error_crit_edge, label %if.end157.if.end163_crit_edge

if.end157.if.end163_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end163

if.end157.__error_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

if.end163:                                        ; preds = %if.end157.if.end163_crit_edge, %if.end149.if.end163_crit_edge
  %133 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chip, align 4
  %need_delayed_register = getelementptr inbounds %struct.snd_usb_audio, ptr %134, i32 0, i32 13
  %135 = ptrtoint ptr %need_delayed_register to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load = load i8, ptr %need_delayed_register, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool164.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool164.not, label %if.end163.if.end173_crit_edge, label %do.end168

if.end163.if.end173_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

do.end168:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  %usb_id170 = getelementptr inbounds %struct.snd_usb_audio, ptr %134, i32 0, i32 4
  %136 = ptrtoint ptr %usb_id170 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %usb_id170, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %137, i32 noundef %conv) #12
  %138 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %chip, align 4
  %need_delayed_register171 = getelementptr inbounds %struct.snd_usb_audio, ptr %139, i32 0, i32 13
  %140 = ptrtoint ptr %need_delayed_register171 to i32
  call void @__asan_load1_noabort(i32 %140)
  %bf.load172 = load i8, ptr %need_delayed_register171, align 4
  %bf.clear = and i8 %bf.load172, 127
  store i8 %bf.clear, ptr %need_delayed_register171, align 4
  br label %if.end173

if.end173:                                        ; preds = %do.end168, %if.end163.if.end173_crit_edge
  %141 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %chip, align 4
  %call174 = call zeroext i1 @snd_usb_registration_quirk(ptr noundef %142, i32 noundef %conv) #9
  br i1 %call174, label %if.end173.if.end183_crit_edge, label %land.lhs.true175

if.end173.if.end183_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

land.lhs.true175:                                 ; preds = %if.end173
  %143 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %chip, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #9
  %145 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %id.i, align 4, !annotation !680
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inum.i) #9
  %146 = ptrtoint ptr %inum.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 -1, ptr %inum.i, align 4, !annotation !680
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %144, i32 0, i32 4
  br label %for.body.i307

for.body.i307:                                    ; preds = %for.inc.i314.for.body.i307_crit_edge, %land.lhs.true175
  %i.011.i = phi i32 [ 0, %land.lhs.true175 ], [ %inc.i312, %for.inc.i314.for.body.i307_crit_edge ]
  %arrayidx.i305 = getelementptr [32 x ptr], ptr @delayed_register, i32 0, i32 %i.011.i
  %147 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i305, align 4
  %tobool.not.i306 = icmp eq ptr %148, null
  br i1 %tobool.not.i306, label %for.body.i307.for.inc.i314_crit_edge, label %land.lhs.true.i309

for.body.i307.for.inc.i314_crit_edge:             ; preds = %for.body.i307
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i314

land.lhs.true.i309:                               ; preds = %for.body.i307
  %call.i308 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %148, ptr noundef nonnull @.str.20, ptr noundef nonnull %id.i, ptr noundef nonnull %inum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i308)
  %cmp2.i = icmp eq i32 %call.i308, 2
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i309.for.inc.i314_crit_edge

land.lhs.true.i309.for.inc.i314_crit_edge:        ; preds = %land.lhs.true.i309
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i314

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i309
  %149 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %id.i, align 4
  %151 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %usb_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp4.i310 = icmp eq i32 %150, %152
  br i1 %cmp4.i310, label %check_delayed_register_option.exit, label %land.lhs.true3.i.for.inc.i314_crit_edge

land.lhs.true3.i.for.inc.i314_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i314

for.inc.i314:                                     ; preds = %land.lhs.true3.i.for.inc.i314_crit_edge, %land.lhs.true.i309.for.inc.i314_crit_edge, %for.body.i307.for.inc.i314_crit_edge
  %inc.i312 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i313 = icmp eq i32 %inc.i312, 32
  br i1 %exitcond.not.i313, label %check_delayed_register_option.exit.thread, label %for.inc.i314.for.body.i307_crit_edge

for.inc.i314.for.body.i307_crit_edge:             ; preds = %for.inc.i314
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i307

check_delayed_register_option.exit.thread:        ; preds = %for.inc.i314
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inum.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #9
  br label %if.then177

check_delayed_register_option.exit:               ; preds = %land.lhs.true3.i
  %153 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %inum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %conv)
  %cmp5.i.not = icmp eq i32 %154, %conv
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inum.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #9
  br i1 %cmp5.i.not, label %check_delayed_register_option.exit.if.then177_crit_edge, label %check_delayed_register_option.exit.if.end183_crit_edge

check_delayed_register_option.exit.if.end183_crit_edge: ; preds = %check_delayed_register_option.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

check_delayed_register_option.exit.if.then177_crit_edge: ; preds = %check_delayed_register_option.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then177

if.then177:                                       ; preds = %check_delayed_register_option.exit.if.then177_crit_edge, %check_delayed_register_option.exit.thread
  %155 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %chip, align 4
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %card, align 4
  %call178 = call i32 @snd_card_register(ptr noundef %158) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then177.__error_crit_edge, label %if.then177.if.end183_crit_edge

if.then177.if.end183_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then177.__error_crit_edge:                     ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  br label %__error

if.end183:                                        ; preds = %if.then177.if.end183_crit_edge, %check_delayed_register_option.exit.if.end183_crit_edge, %if.end173.if.end183_crit_edge
  %159 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %chip, align 4
  %quirk_flags184 = getelementptr inbounds %struct.snd_usb_audio, ptr %160, i32 0, i32 12
  %161 = ptrtoint ptr %quirk_flags184 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %quirk_flags184, align 4
  %and185 = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end183.if.end189_crit_edge, label %if.then187

if.end183.if.end189_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then187:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  %call188 = call i32 @snd_media_device_create(ptr noundef %160, ptr noundef %intf) #9
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.end183.if.end189_crit_edge
  br i1 %tobool.not333, label %if.end189.if.end192_crit_edge, label %if.then191

if.end189.if.end192_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then191:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk.0329, i32 0, i32 3
  %163 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %type, align 2
  %165 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %chip, align 4
  %quirk_type = getelementptr inbounds %struct.snd_usb_audio, ptr %166, i32 0, i32 5
  %167 = ptrtoint ptr %quirk_type to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %164, ptr %quirk_type, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %if.end189.if.end192_crit_edge
  %168 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %chip, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %arrayidx193 = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %171
  %172 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %arrayidx193, align 4
  %num_interfaces195 = getelementptr inbounds %struct.snd_usb_audio, ptr %169, i32 0, i32 14
  %173 = ptrtoint ptr %num_interfaces195 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_interfaces195, align 4
  %arrayidx196 = getelementptr %struct.snd_usb_audio, ptr %169, i32 0, i32 3, i32 %174
  %175 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %intf, ptr %arrayidx196, align 4
  %176 = load ptr, ptr %chip, align 4
  %num_interfaces197 = getelementptr inbounds %struct.snd_usb_audio, ptr %176, i32 0, i32 14
  %177 = ptrtoint ptr %num_interfaces197 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %num_interfaces197, align 4
  %inc198 = add i32 %178, 1
  store i32 %inc198, ptr %num_interfaces197, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %179 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %176, ptr %driver_data.i.i, align 4
  %active199 = getelementptr inbounds %struct.snd_usb_audio, ptr %176, i32 0, i32 8
  %call.i.i286 = call zeroext i1 @__kasan_check_write(ptr noundef %active199, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %active199, i32 1, i32 3, i32 1) #9
  %180 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active199, ptr %active199, i32 1, ptr elementtype(i32) %active199) #9, !srcloc !679
  br label %cleanup.sink.split

__error:                                          ; preds = %if.then177.__error_crit_edge, %if.end157.__error_crit_edge, %do.end110.i, %do.end92.i, %do.end54.i, %do.end42.i, %do.end32.i, %do.end25.i, %do.end17.i, %do.end8.i, %if.then143.__error_crit_edge, %do.end120, %do.end111, %do.end96, %if.then80.__error_crit_edge, %if.then48.__error_crit_edge, %do.end
  %err.1 = phi i32 [ -5, %do.end ], [ -22, %do.end120 ], [ %call144, %if.then143.__error_crit_edge ], [ %call158, %if.end157.__error_crit_edge ], [ %call178, %if.then177.__error_crit_edge ], [ %call49, %if.then48.__error_crit_edge ], [ %call81, %if.then80.__error_crit_edge ], [ -19, %do.end111 ], [ -2, %do.end96 ], [ -22, %do.end54.i ], [ -22, %do.end42.i ], [ -22, %do.end32.i ], [ -22, %do.end25.i ], [ -22, %do.end17.i ], [ -22, %do.end8.i ], [ -22, %do.end110.i ], [ -22, %do.end92.i ]
  %181 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %chip, align 4
  %tobool200.not = icmp eq ptr %182, null
  br i1 %tobool200.not, label %__error.cleanup.sink.split_crit_edge, label %if.then201

__error.cleanup.sink.split_crit_edge:             ; preds = %__error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then201:                                       ; preds = %__error
  %active202 = getelementptr inbounds %struct.snd_usb_audio, ptr %182, i32 0, i32 8
  %call.i.i287 = call zeroext i1 @__kasan_check_write(ptr noundef %active202, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %active202, i32 1, i32 3, i32 1) #9
  %183 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active202, ptr %active202, i32 1, ptr elementtype(i32) %active202) #9, !srcloc !679
  %184 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %chip, align 4
  %num_interfaces203 = getelementptr inbounds %struct.snd_usb_audio, ptr %185, i32 0, i32 14
  %186 = ptrtoint ptr %num_interfaces203 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %num_interfaces203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool204.not = icmp eq i32 %187, 0
  br i1 %tobool204.not, label %if.then205, label %if.then201.cleanup.sink.split_crit_edge

if.then201.cleanup.sink.split_crit_edge:          ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then205:                                       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #11
  %card206 = getelementptr inbounds %struct.snd_usb_audio, ptr %185, i32 0, i32 2
  %188 = ptrtoint ptr %card206 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %card206, align 4
  %call207 = call i32 @snd_card_free(ptr noundef %189) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then205, %if.then201.cleanup.sink.split_crit_edge, %__error.cleanup.sink.split_crit_edge, %if.end192
  %retval.0.ph = phi i32 [ 0, %if.end192 ], [ %err.1, %if.then201.cleanup.sink.split_crit_edge ], [ %err.1, %if.then205 ], [ %err.1, %__error.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %land.lhs.true17.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %land.lhs.true.cleanup_crit_edge ], [ -19, %land.lhs.true17.critedge.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_audio_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 -1 to ptr)
  br i1 %cmp, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup86

if.end:                                           ; preds = %entry
  %card1 = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #9
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %shutdown, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !676
  tail call void @llvm.prefetch.p0(ptr %shutdown, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %shutdown, ptr %shutdown, i32 1, ptr elementtype(i32) %shutdown) #9, !srcloc !677
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !678
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp3 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp3, label %if.then4, label %if.end.if.end76_crit_edge

if.end.if.end76_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then4:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 920) #9
  %usage_count = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 10
  %call.i.i122 = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #9
  %5 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then4.do.end20_crit_edge, label %if.end11

if.then4.do.end20_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.end11:                                         ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %shutdown_wait = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 11
  %call12126 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i123127 = call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #9
  %8 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not128 = icmp eq i32 %9, 0
  br i1 %tobool15.not128, label %if.end11.for.end_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  br label %cleanup

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  call void @schedule() #9
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i123 = call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #9
  %10 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %usage_count, align 4
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @finish_wait(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end20

do.end20:                                         ; preds = %for.end, %if.then4.do.end20_crit_edge
  %call21 = call i32 @snd_card_disconnect(ptr noundef %3) #9
  %pcm_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn129 = load ptr, ptr %pcm_list, align 4
  %cmp25.not130 = icmp eq ptr %.pn129, %pcm_list
  br i1 %cmp25.not130, label %do.end20.for.end31_crit_edge, label %do.end20.for.body_crit_edge

do.end20.for.body_crit_edge:                      ; preds = %do.end20
  br label %for.body

do.end20.for.end31_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31

for.body:                                         ; preds = %snd_usb_stream_disconnect.exit.for.body_crit_edge, %do.end20.for.body_crit_edge
  %.pn131 = phi ptr [ %.pn, %snd_usb_stream_disconnect.exit.for.body_crit_edge ], [ %.pn129, %do.end20.for.body_crit_edge ]
  %num_formats.i = getelementptr i8, ptr %.pn131, i32 -264
  %13 = ptrtoint ptr %num_formats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_formats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.body.for.inc.i_crit_edge, label %if.end.i

for.body.for.inc.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %data_endpoint.i = getelementptr i8, ptr %.pn131, i32 -288
  %15 = ptrtoint ptr %data_endpoint.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data_endpoint.i, align 8
  %sync_endpoint.i = getelementptr i8, ptr %.pn131, i32 -284
  %16 = ptrtoint ptr %sync_endpoint.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sync_endpoint.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.for.inc.i_crit_edge
  %num_formats.1.i = getelementptr i8, ptr %.pn131, i32 -80
  %17 = ptrtoint ptr %num_formats.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_formats.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i, label %for.inc.i.snd_usb_stream_disconnect.exit_crit_edge, label %if.end.1.i

for.inc.i.snd_usb_stream_disconnect.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_usb_stream_disconnect.exit

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_endpoint.1.i = getelementptr i8, ptr %.pn131, i32 -104
  %19 = ptrtoint ptr %data_endpoint.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data_endpoint.1.i, align 8
  %sync_endpoint.1.i = getelementptr i8, ptr %.pn131, i32 -100
  %20 = ptrtoint ptr %sync_endpoint.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sync_endpoint.1.i, align 4
  br label %snd_usb_stream_disconnect.exit

snd_usb_stream_disconnect.exit:                   ; preds = %if.end.1.i, %for.inc.i.snd_usb_stream_disconnect.exit_crit_edge
  %21 = ptrtoint ptr %.pn131 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn131, align 4
  %cmp25.not = icmp eq ptr %.pn, %pcm_list
  br i1 %cmp25.not, label %snd_usb_stream_disconnect.exit.for.end31_crit_edge, label %snd_usb_stream_disconnect.exit.for.body_crit_edge

snd_usb_stream_disconnect.exit.for.body_crit_edge: ; preds = %snd_usb_stream_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

snd_usb_stream_disconnect.exit.for.end31_crit_edge: ; preds = %snd_usb_stream_disconnect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31

for.end31:                                        ; preds = %snd_usb_stream_disconnect.exit.for.end31_crit_edge, %do.end20.for.end31_crit_edge
  %ep_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn120132 = load ptr, ptr %ep_list, align 4
  %cmp39.not133 = icmp eq ptr %.pn120132, %ep_list
  br i1 %cmp39.not133, label %for.end31.for.end48_crit_edge, label %for.end31.for.body41_crit_edge

for.end31.for.body41_crit_edge:                   ; preds = %for.end31
  br label %for.body41

for.end31.for.end48_crit_edge:                    ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.end31.for.body41_crit_edge
  %.pn120134 = phi ptr [ %.pn120, %for.body41.for.body41_crit_edge ], [ %.pn120132, %for.end31.for.body41_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn120134, i32 -5356
  call void @snd_usb_endpoint_release(ptr noundef %ep.0) #9
  %23 = ptrtoint ptr %.pn120134 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn120 = load ptr, ptr %.pn120134, align 4
  %cmp39.not = icmp eq ptr %.pn120, %ep_list
  br i1 %cmp39.not, label %for.body41.for.end48_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

for.body41.for.end48_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48

for.end48:                                        ; preds = %for.body41.for.end48_crit_edge, %for.end31.for.end48_crit_edge
  %midi_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 22
  %24 = ptrtoint ptr %midi_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %p.0135 = load ptr, ptr %midi_list, align 4
  %cmp.i.not136 = icmp eq ptr %p.0135, %midi_list
  br i1 %cmp.i.not136, label %for.end48.for.end58_crit_edge, label %for.end48.for.body55_crit_edge

for.end48.for.body55_crit_edge:                   ; preds = %for.end48
  br label %for.body55

for.end48.for.end58_crit_edge:                    ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.end48.for.body55_crit_edge
  %p.0137 = phi ptr [ %p.0, %for.body55.for.body55_crit_edge ], [ %p.0135, %for.end48.for.body55_crit_edge ]
  call void @snd_usbmidi_disconnect(ptr noundef %p.0137) #9
  %25 = ptrtoint ptr %p.0137 to i32
  call void @__asan_load4_noabort(i32 %25)
  %p.0 = load ptr, ptr %p.0137, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list
  br i1 %cmp.i.not, label %for.body55.for.end58_crit_edge, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55

for.body55.for.end58_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end58

for.end58:                                        ; preds = %for.body55.for.end58_crit_edge, %for.end48.for.end58_crit_edge
  call void @snd_media_device_delete(ptr noundef %1) #9
  %mixer_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 23
  %26 = ptrtoint ptr %mixer_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn121138 = load ptr, ptr %mixer_list, align 4
  %cmp66.not139 = icmp eq ptr %.pn121138, %mixer_list
  br i1 %cmp66.not139, label %for.end58.if.end76_crit_edge, label %for.end58.for.body68_crit_edge

for.end58.for.body68_crit_edge:                   ; preds = %for.end58
  br label %for.body68

for.end58.if.end76_crit_edge:                     ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %for.end58.for.body68_crit_edge
  %.pn121140 = phi ptr [ %.pn121, %for.body68.for.body68_crit_edge ], [ %.pn121138, %for.end58.for.body68_crit_edge ]
  %mixer.0 = getelementptr i8, ptr %.pn121140, i32 -8
  call void @snd_usb_mixer_disconnect(ptr noundef %mixer.0) #9
  %27 = ptrtoint ptr %.pn121140 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn121 = load ptr, ptr %.pn121140, align 4
  %cmp66.not = icmp eq ptr %.pn121, %mixer_list
  br i1 %cmp66.not, label %for.body68.if.end76_crit_edge, label %for.body68.for.body68_crit_edge

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

for.body68.if.end76_crit_edge:                    ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.end76:                                         ; preds = %for.body68.if.end76_crit_edge, %for.end58.if.end76_crit_edge, %if.end.if.end76_crit_edge
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quirk_flags, align 4
  %and = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool77.not = icmp eq i32 %and, 0
  br i1 %tobool77.not, label %if.end76.if.end80_crit_edge, label %if.then78

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %31, i32 -128
  call void @usb_enable_autosuspend(ptr noundef %add.ptr.i) #9
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end76.if.end80_crit_edge
  %num_interfaces = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %num_interfaces to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_interfaces, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %num_interfaces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp82 = icmp slt i32 %dec, 1
  br i1 %cmp82, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [32 x ptr], ptr @usb_chip, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx, align 4
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  %call84 = call i32 @snd_card_free_when_closed(ptr noundef %3) #9
  br label %cleanup86

if.else:                                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  br label %cleanup86

cleanup86:                                        ; preds = %if.else, %if.then83, %entry.cleanup86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_audio_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %message.coerce.fca.0.extract = extractvalue [1 x i32] %message.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 -1 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_suspended_intf = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %num_suspended_intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_suspended_intf, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %num_suspended_intf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end55_crit_edge

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then1:                                         ; preds = %if.end
  %pcm_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn89 = load ptr, ptr %pcm_list, align 4
  %cmp3.not90 = icmp eq ptr %.pn89, %pcm_list
  br i1 %cmp3.not90, label %if.then1.for.end_crit_edge, label %if.then1.for.body_crit_edge

if.then1.for.body_crit_edge:                      ; preds = %if.then1
  br label %for.body

if.then1.for.end_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then1.for.body_crit_edge
  %.pn91 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn89, %if.then1.for.body_crit_edge ]
  %as.0 = getelementptr i8, ptr %.pn91, i32 -384
  %call4 = tail call i32 @snd_usb_pcm_suspend(ptr noundef %as.0) #9
  %5 = ptrtoint ptr %.pn91 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn91, align 4
  %cmp3.not = icmp eq ptr %.pn, %pcm_list
  br i1 %cmp3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then1.for.end_crit_edge
  %ep_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %ep_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn8792 = load ptr, ptr %ep_list, align 4
  %cmp17.not93 = icmp eq ptr %.pn8792, %ep_list
  br i1 %cmp17.not93, label %for.end.for.end26_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %.pn8794 = phi ptr [ %.pn87, %for.body19.for.body19_crit_edge ], [ %.pn8792, %for.end.for.body19_crit_edge ]
  %ep.0 = getelementptr i8, ptr %.pn8794, i32 -5356
  tail call void @snd_usb_endpoint_suspend(ptr noundef %ep.0) #9
  %7 = ptrtoint ptr %.pn8794 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn87 = load ptr, ptr %.pn8794, align 4
  %cmp17.not = icmp eq ptr %.pn87, %ep_list
  br i1 %cmp17.not, label %for.body19.for.end26_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19

for.body19.for.end26_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.end26:                                        ; preds = %for.body19.for.end26_crit_edge, %for.end.for.end26_crit_edge
  %midi_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %midi_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %p.095 = load ptr, ptr %midi_list, align 4
  %cmp.i.not96 = icmp eq ptr %p.095, %midi_list
  br i1 %cmp.i.not96, label %for.end26.for.end36_crit_edge, label %for.end26.for.body33_crit_edge

for.end26.for.body33_crit_edge:                   ; preds = %for.end26
  br label %for.body33

for.end26.for.end36_crit_edge:                    ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.end26.for.body33_crit_edge
  %p.097 = phi ptr [ %p.0, %for.body33.for.body33_crit_edge ], [ %p.095, %for.end26.for.body33_crit_edge ]
  tail call void @snd_usbmidi_suspend(ptr noundef %p.097) #9
  %9 = ptrtoint ptr %p.097 to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.0 = load ptr, ptr %p.097, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list
  br i1 %cmp.i.not, label %for.body33.for.end36_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

for.body33.for.end36_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end36

for.end36:                                        ; preds = %for.body33.for.end36_crit_edge, %for.end26.for.end36_crit_edge
  %mixer_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %mixer_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn8898 = load ptr, ptr %mixer_list, align 4
  %cmp44.not99 = icmp eq ptr %.pn8898, %mixer_list
  br i1 %cmp44.not99, label %for.end36.if.end55_crit_edge, label %for.end36.for.body46_crit_edge

for.end36.for.body46_crit_edge:                   ; preds = %for.end36
  br label %for.body46

for.end36.if.end55_crit_edge:                     ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.end36.for.body46_crit_edge
  %.pn88100 = phi ptr [ %.pn88, %for.body46.for.body46_crit_edge ], [ %.pn8898, %for.end36.for.body46_crit_edge ]
  %mixer.0 = getelementptr i8, ptr %.pn88100, i32 -8
  %call47 = tail call i32 @snd_usb_mixer_suspend(ptr noundef %mixer.0) #9
  %11 = ptrtoint ptr %.pn88100 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn88 = load ptr, ptr %.pn88100, align 4
  %cmp44.not = icmp eq ptr %.pn88, %mixer_list
  br i1 %cmp44.not, label %for.body46.if.end55_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46

for.body46.if.end55_crit_edge:                    ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %for.body46.if.end55_crit_edge, %for.end36.if.end55_crit_edge, %if.end.if.end55_crit_edge
  %and = and i32 %message.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp56.not = icmp eq i32 %and, 0
  br i1 %cmp56.not, label %land.lhs.true, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end55
  %system_suspend = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %system_suspend to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %system_suspend, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool57.not = icmp eq i32 %13, 0
  br i1 %tobool57.not, label %if.then58, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 38
  %16 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %17 = ptrtoint ptr %num_suspended_intf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_suspended_intf, align 4
  %19 = ptrtoint ptr %system_suspend to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %system_suspend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %land.lhs.true.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_audio_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 -1 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #9, !srcloc !672
  %num_suspended_intf = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %num_suspended_intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_suspended_intf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1 = icmp sgt i32 %4, 1
  br i1 %cmp1, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %pcm_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn83 = load ptr, ptr %pcm_list, align 4
  %cmp5.not84 = icmp eq ptr %.pn83, %pcm_list
  br i1 %cmp5.not84, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %6 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp5.not = icmp eq ptr %.pn, %pcm_list
  br i1 %cmp5.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn85 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn83, %if.end3.for.body_crit_edge ]
  %as.0 = getelementptr i8, ptr %.pn85, i32 -384
  %call6 = tail call i32 @snd_usb_pcm_resume(ptr noundef %as.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.body.err_out_crit_edge, label %for.cond

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end3.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %if.end3.for.end_crit_edge ], [ %call6, %for.cond.for.end_crit_edge ]
  %mixer_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %mixer_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn7886 = load ptr, ptr %mixer_list, align 4
  %cmp22.not87 = icmp eq ptr %.pn7886, %mixer_list
  br i1 %cmp22.not87, label %for.end.for.end35_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.cond19:                                       ; preds = %for.body24
  %8 = ptrtoint ptr %.pn7888 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn78 = load ptr, ptr %.pn7888, align 4
  %cmp22.not = icmp eq ptr %.pn78, %mixer_list
  br i1 %cmp22.not, label %for.cond19.for.end35_crit_edge, label %for.cond19.for.body24_crit_edge

for.cond19.for.body24_crit_edge:                  ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24

for.cond19.for.end35_crit_edge:                   ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.body24:                                       ; preds = %for.cond19.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn7888 = phi ptr [ %.pn78, %for.cond19.for.body24_crit_edge ], [ %.pn7886, %for.end.for.body24_crit_edge ]
  %mixer.0 = getelementptr i8, ptr %.pn7888, i32 -8
  %call25 = tail call i32 @snd_usb_mixer_resume(ptr noundef %mixer.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %for.body24.err_out_crit_edge, label %for.cond19

for.body24.err_out_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

for.end35:                                        ; preds = %for.cond19.for.end35_crit_edge, %for.end.for.end35_crit_edge
  %err.1.lcssa = phi i32 [ %err.0.lcssa, %for.end.for.end35_crit_edge ], [ %call25, %for.cond19.for.end35_crit_edge ]
  %midi_list = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %midi_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.090 = load ptr, ptr %midi_list, align 4
  %cmp.i.not91 = icmp eq ptr %p.090, %midi_list
  br i1 %cmp.i.not91, label %for.end35.out_crit_edge, label %for.end35.for.body41_crit_edge

for.end35.for.body41_crit_edge:                   ; preds = %for.end35
  br label %for.body41

for.end35.out_crit_edge:                          ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.end35.for.body41_crit_edge
  %p.092 = phi ptr [ %p.0, %for.body41.for.body41_crit_edge ], [ %p.090, %for.end35.for.body41_crit_edge ]
  tail call void @snd_usbmidi_resume(ptr noundef %p.092) #9
  %10 = ptrtoint ptr %p.092 to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.0 = load ptr, ptr %p.092, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list
  br i1 %cmp.i.not, label %for.body41.out_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

for.body41.out_crit_edge:                         ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.body41.out_crit_edge, %for.end35.out_crit_edge, %if.end.out_crit_edge
  %err.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %err.1.lcssa, %for.end35.out_crit_edge ], [ %err.1.lcssa, %for.body41.out_crit_edge ]
  %11 = ptrtoint ptr %num_suspended_intf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_suspended_intf, align 4
  %system_suspend = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %system_suspend to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %system_suspend, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp46 = icmp eq i32 %12, %14
  br i1 %cmp46, label %if.then47, label %out.if.end49_crit_edge

out.if.end49_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then47:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 38
  %17 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %18 = ptrtoint ptr %system_suspend to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %system_suspend, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %out.if.end49_crit_edge
  %19 = ptrtoint ptr %num_suspended_intf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_suspended_intf, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %num_suspended_intf, align 4
  br label %err_out

err_out:                                          ; preds = %if.end49, %for.body24.err_out_crit_edge, %for.body.err_out_crit_edge
  %err.3 = phi i32 [ %err.2, %if.end49 ], [ %call25, %for.body24.err_out_crit_edge ], [ %call6, %for.body.err_out_crit_edge ]
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active, ptr %active, i32 1, ptr elementtype(i32) %active) #9, !srcloc !679
  br label %cleanup

cleanup:                                          ; preds = %err_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_apply_boot_quirk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_apply_boot_quirk_once(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_usb_audio_create(ptr noundef %intf, ptr noundef %dev, i32 noundef %idx, ptr noundef readonly %quirk, i32 noundef %usb_id, ptr nocapture noundef writeonly %rchip) unnamed_addr #0 align 64 {
entry:
  %card = alloca ptr, align 4
  %component = alloca [14 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !680
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %component) #9
  %1 = call ptr @memset(ptr %component, i32 255, i32 14)
  %2 = ptrtoint ptr %rchip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rchip, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 4
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off)
  %switch = icmp ult i32 %.off, 6
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %4) #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %dev3 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %arrayidx = getelementptr [32 x i32], ptr @index, i32 0, i32 %idx
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %idx
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_card_new(ptr noundef %dev3, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 332, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end7, label %if.end

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.28, i32 noundef %idx) #12
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 6
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.30, ptr noundef nonnull @snd_usb_audio_create.__key) #9
  %shutdown_wait = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 11
  call void @__init_waitqueue_head(ptr noundef %shutdown_wait, ptr noundef nonnull @.str.32, ptr noundef nonnull @snd_usb_audio_create.__key.31) #9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %idx, ptr %12, align 4
  %dev15 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev15, align 4
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %card16 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %card16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %card16, align 4
  %arrayidx17 = getelementptr [32 x i32], ptr @device_setup, i32 0, i32 %idx
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %setup = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 24
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %setup, align 4
  %arrayidx18 = getelementptr [32 x i8], ptr @implicit_fb, i32 0, i32 %idx
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18, align 1, !range !681
  %generic_implicit_fb = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 25
  %23 = ptrtoint ptr %generic_implicit_fb to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %generic_implicit_fb, align 4
  %24 = load i8, ptr @autoclock, align 1, !range !681
  %autoclock = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 26
  %25 = ptrtoint ptr %autoclock to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %autoclock, align 1
  %26 = load i8, ptr @lowlatency, align 1, !range !681
  %lowlatency = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 27
  %27 = ptrtoint ptr %lowlatency to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %lowlatency, align 2
  %active = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %active, i32 noundef 4) #9
  %28 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %active, align 4
  %usage_count = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 10
  %call.i.i81 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  %29 = ptrtoint ptr %usage_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %usage_count, align 4
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 9
  %call.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef %shutdown, i32 noundef 4) #9
  %30 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %shutdown, align 4
  %usb_id23 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 4
  %31 = ptrtoint ptr %usb_id23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %usb_id, ptr %usb_id23, align 4
  %pcm_list = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 18
  %32 = ptrtoint ptr %pcm_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %pcm_list, ptr %pcm_list, align 4
  %prev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %pcm_list, ptr %prev.i, align 4
  %ep_list = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 19
  %34 = ptrtoint ptr %ep_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %ep_list, ptr %ep_list, align 4
  %prev.i83 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 19, i32 1
  %35 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ep_list, ptr %prev.i83, align 4
  %iface_ref_list = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 20
  %36 = ptrtoint ptr %iface_ref_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %iface_ref_list, ptr %iface_ref_list, align 4
  %prev.i84 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 20, i32 1
  %37 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %iface_ref_list, ptr %prev.i84, align 4
  %midi_list = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 22
  %38 = ptrtoint ptr %midi_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %midi_list, ptr %midi_list, align 4
  %prev.i85 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 22, i32 1
  %39 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %midi_list, ptr %prev.i85, align 4
  %mixer_list = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 23
  %40 = ptrtoint ptr %mixer_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %mixer_list, ptr %mixer_list, align 4
  %prev.i86 = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 23, i32 1
  %41 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %mixer_list, ptr %prev.i86, align 4
  %arrayidx24 = getelementptr [32 x i32], ptr @quirk_flags, i32 0, i32 %idx
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool25.not = icmp eq i32 %43, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %12, i32 0, i32 12
  %44 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %quirk_flags, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @snd_usb_init_quirk_flags(ptr noundef %12) #9
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @snd_usb_audio_free, ptr %private_free, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 2
  %48 = call ptr @memcpy(ptr %driver, ptr @.str.33, i32 10)
  %49 = ptrtoint ptr %usb_id23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usb_id23, align 4
  %shr = lshr i32 %50, 16
  %conv33 = and i32 %50, 65535
  %call34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %component, ptr noundef nonnull @.str.34, i32 noundef %shr, i32 noundef %conv33)
  %51 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card, align 4
  %call36 = call i32 @snd_component_add(ptr noundef %52, ptr noundef nonnull %component) #9
  %53 = ptrtoint ptr %card16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card16, align 4
  %55 = ptrtoint ptr %usb_id23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %usb_id23, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end28
  %57 = phi i32 [ 66060905, %if.end28 ], [ %59, %for.inc.i.i.for.body.i.i_crit_edge ]
  %storemerge3.i.i = phi ptr [ @usb_audio_names, %if.end28 ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %56)
  %cmp.i.i = icmp eq i32 %57, %56
  br i1 %cmp.i.i, label %lookup_device_name.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.usb_audio_device_name, ptr %storemerge3.i.i, i32 1
  %58 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i.if.else.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.else.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

lookup_device_name.exit.i:                        ; preds = %for.body.i.i
  store ptr %storemerge3.i.i, ptr @lookup_device_name.p, align 4
  %tobool.not.i = icmp eq ptr %storemerge3.i.i, null
  br i1 %tobool.not.i, label %lookup_device_name.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

lookup_device_name.exit.i.if.else.i_crit_edge:    ; preds = %lookup_device_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %lookup_device_name.exit.i
  %product_name.i = getelementptr inbounds %struct.usb_audio_device_name, ptr %storemerge3.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %product_name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %product_name.i, align 4
  %tobool2.not.i = icmp eq ptr %61, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.land.lhs.true12.i_crit_edge

land.lhs.true.i.land.lhs.true12.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true12.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %lookup_device_name.exit.i.if.else.i_crit_edge, %for.inc.i.i.if.else.i_crit_edge
  %tobool4.not.i = icmp eq ptr %quirk, null
  br i1 %tobool4.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.end10.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.end10.i:                                       ; preds = %if.else.i
  %product_name6.i = getelementptr inbounds %struct.snd_usb_audio_quirk, ptr %quirk, i32 0, i32 1
  %62 = ptrtoint ptr %product_name6.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %product_name6.i, align 4
  %tobool11.not.i = icmp eq ptr %63, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end16.i_crit_edge, label %if.end10.i.land.lhs.true12.i_crit_edge

if.end10.i.land.lhs.true12.i_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true12.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %if.end10.i.land.lhs.true12.i_crit_edge, %land.lhs.true.i.land.lhs.true12.i_crit_edge
  %s.063.i = phi ptr [ %63, %if.end10.i.land.lhs.true12.i_crit_edge ], [ %61, %land.lhs.true.i.land.lhs.true12.i_crit_edge ]
  %64 = ptrtoint ptr %s.063.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %s.063.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool13.not.i = icmp eq i8 %65, 0
  br i1 %tobool13.not.i, label %land.lhs.true12.i.if.end16.i_crit_edge, label %if.then14.i

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 3
  %call15.i = call i32 @strscpy(ptr noundef %shortname.i, ptr noundef nonnull %s.063.i, i32 noundef 32) #9
  br label %usb_audio_make_shortname.exit

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %if.end10.i.if.end16.i_crit_edge, %if.else.i.if.end16.i_crit_edge
  %iProduct.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16, i32 11
  %66 = ptrtoint ptr %iProduct.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %iProduct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool17.not.i = icmp eq i8 %67, 0
  br i1 %tobool17.not.i, label %if.end16.i.if.then25.i_crit_edge, label %lor.lhs.false.i

if.end16.i.if.then25.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %conv20.i = zext i8 %67 to i32
  %shortname21.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 3
  %call23.i = call i32 @usb_string(ptr noundef %dev, i32 noundef %conv20.i, ptr noundef %shortname21.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23.i)
  %cmp.i = icmp slt i32 %call23.i, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then25.i_crit_edge, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

lor.lhs.false.i.if.then25.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25.i

if.then25.i:                                      ; preds = %lor.lhs.false.i.if.then25.i_crit_edge, %if.end16.i.if.then25.i_crit_edge
  %shortname26.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 3
  %68 = ptrtoint ptr %usb_id23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usb_id23, align 4
  %shr.i = lshr i32 %69, 16
  %conv31.i = and i32 %69, 65535
  %call32.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname26.i, ptr noundef nonnull @.str.35, i32 noundef %shr.i, i32 noundef %conv31.i) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then25.i, %lor.lhs.false.i.if.end33.i_crit_edge
  %shortname34.i = getelementptr inbounds %struct.snd_card, ptr %54, i32 0, i32 3
  %call36.i = call ptr @strim(ptr noundef %shortname34.i) #9
  br label %usb_audio_make_shortname.exit

usb_audio_make_shortname.exit:                    ; preds = %if.end33.i, %if.then14.i
  %70 = ptrtoint ptr %card16 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card16, align 4
  %72 = ptrtoint ptr %usb_id23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usb_id23, align 4
  br label %for.body.i.i91

for.body.i.i91:                                   ; preds = %for.inc.i.i94.for.body.i.i91_crit_edge, %usb_audio_make_shortname.exit
  %74 = phi i32 [ 66060905, %usb_audio_make_shortname.exit ], [ %76, %for.inc.i.i94.for.body.i.i91_crit_edge ]
  %storemerge3.i.i89 = phi ptr [ @usb_audio_names, %usb_audio_make_shortname.exit ], [ %incdec.ptr.i.i92, %for.inc.i.i94.for.body.i.i91_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %73)
  %cmp.i.i90 = icmp eq i32 %74, %73
  br i1 %cmp.i.i90, label %lookup_device_name.exit.i97, label %for.inc.i.i94

for.inc.i.i94:                                    ; preds = %for.body.i.i91
  %incdec.ptr.i.i92 = getelementptr %struct.usb_audio_device_name, ptr %storemerge3.i.i89, i32 1
  %75 = ptrtoint ptr %incdec.ptr.i.i92 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr.i.i92, align 4
  %tobool.not.i.i93 = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i93, label %for.inc.i.i94.if.else.i99_crit_edge, label %for.inc.i.i94.for.body.i.i91_crit_edge

for.inc.i.i94.for.body.i.i91_crit_edge:           ; preds = %for.inc.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i91

for.inc.i.i94.if.else.i99_crit_edge:              ; preds = %for.inc.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i99

lookup_device_name.exit.i97:                      ; preds = %for.body.i.i91
  store ptr %storemerge3.i.i89, ptr @lookup_device_name.p, align 4
  %tobool.not.i96 = icmp eq ptr %storemerge3.i.i89, null
  br i1 %tobool.not.i96, label %lookup_device_name.exit.i97.if.else.i99_crit_edge, label %if.end.i

lookup_device_name.exit.i97.if.else.i99_crit_edge: ; preds = %lookup_device_name.exit.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i99

if.end.i:                                         ; preds = %lookup_device_name.exit.i97
  %profile_name.i = getelementptr inbounds %struct.usb_audio_device_name, ptr %storemerge3.i.i89, i32 0, i32 3
  %77 = ptrtoint ptr %profile_name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %profile_name.i, align 4
  %tobool4.not.i98 = icmp eq ptr %78, null
  br i1 %tobool4.not.i98, label %if.end.i.land.lhs.true11.i_crit_edge, label %land.lhs.true5.i

if.end.i.land.lhs.true11.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true11.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool6.not.i = icmp eq i8 %80, 0
  br i1 %tobool6.not.i, label %land.lhs.true5.i.land.lhs.true11.i_crit_edge, label %if.then7.i

land.lhs.true5.i.land.lhs.true11.i_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true11.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 4
  %call8.i = call i32 @strscpy(ptr noundef %longname.i, ptr noundef nonnull %78, i32 noundef 80) #9
  br label %usb_audio_make_longname.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true5.i.land.lhs.true11.i_crit_edge, %if.end.i.land.lhs.true11.i_crit_edge
  %vendor_name.i = getelementptr inbounds %struct.usb_audio_device_name, ptr %storemerge3.i.i89, i32 0, i32 1
  %81 = ptrtoint ptr %vendor_name.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vendor_name.i, align 4
  %tobool12.not.i = icmp eq ptr %82, null
  br i1 %tobool12.not.i, label %land.lhs.true11.i.if.else.i99_crit_edge, label %if.end22.thread.i

land.lhs.true11.i.if.else.i99_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i99

if.end22.thread.i:                                ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  %longname23153.i = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 4
  %83 = ptrtoint ptr %longname23153.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %longname23153.i, align 4
  br label %land.lhs.true26.i

if.else.i99:                                      ; preds = %land.lhs.true11.i.if.else.i99_crit_edge, %lookup_device_name.exit.i97.if.else.i99_crit_edge, %for.inc.i.i94.if.else.i99_crit_edge
  %s.0145150.i = phi ptr [ %78, %land.lhs.true11.i.if.else.i99_crit_edge ], [ null, %lookup_device_name.exit.i97.if.else.i99_crit_edge ], [ null, %for.inc.i.i94.if.else.i99_crit_edge ]
  %tobool15.not.i = icmp eq ptr %quirk, null
  br i1 %tobool15.not.i, label %if.else.i99.if.end22.i_crit_edge, label %land.lhs.true16.i

if.else.i99.if.end22.i_crit_edge:                 ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true16.i:                                ; preds = %if.else.i99
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %quirk, align 4
  %tobool18.not.i = icmp eq ptr %85, null
  %spec.select133.i = select i1 %tobool18.not.i, ptr %s.0145150.i, ptr %85
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true16.i, %if.else.i99.if.end22.i_crit_edge
  %s.1.i = phi ptr [ %s.0145150.i, %if.else.i99.if.end22.i_crit_edge ], [ %spec.select133.i, %land.lhs.true16.i ]
  %longname23.i = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 4
  %86 = ptrtoint ptr %longname23.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %longname23.i, align 4
  %tobool25.not.i = icmp eq ptr %s.1.i, null
  br i1 %tobool25.not.i, label %if.end22.i.if.else33.i_crit_edge, label %if.end22.i.land.lhs.true26.i_crit_edge

if.end22.i.land.lhs.true26.i_crit_edge:           ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true26.i

if.end22.i.if.else33.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else33.i

land.lhs.true26.i:                                ; preds = %if.end22.i.land.lhs.true26.i_crit_edge, %if.end22.thread.i
  %longname23156.i = phi ptr [ %longname23153.i, %if.end22.thread.i ], [ %longname23.i, %if.end22.i.land.lhs.true26.i_crit_edge ]
  %s.1155.i = phi ptr [ %82, %if.end22.thread.i ], [ %s.1.i, %if.end22.i.land.lhs.true26.i_crit_edge ]
  %87 = ptrtoint ptr %s.1155.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %s.1155.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool28.not.i = icmp eq i8 %88, 0
  br i1 %tobool28.not.i, label %land.lhs.true26.i.if.else33.i_crit_edge, label %if.then29.i

land.lhs.true26.i.if.else33.i_crit_edge:          ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else33.i

if.then29.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #11
  %call32.i100 = call i32 @strscpy(ptr noundef %longname23156.i, ptr noundef nonnull %s.1155.i, i32 noundef 80) #9
  br label %if.end43.i

if.else33.i:                                      ; preds = %land.lhs.true26.i.if.else33.i_crit_edge, %if.end22.i.if.else33.i_crit_edge
  %longname23158.i = phi ptr [ %longname23156.i, %land.lhs.true26.i.if.else33.i_crit_edge ], [ %longname23.i, %if.end22.i.if.else33.i_crit_edge ]
  %iManufacturer.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16, i32 10
  %89 = ptrtoint ptr %iManufacturer.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %iManufacturer.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool34.not.i = icmp eq i8 %90, 0
  br i1 %tobool34.not.i, label %if.else33.i.if.end43.i_crit_edge, label %if.then35.i

if.else33.i.if.end43.i_crit_edge:                 ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then35.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv38.i = zext i8 %90 to i32
  %call41.i = call i32 @usb_string(ptr noundef %dev, i32 noundef %conv38.i, ptr noundef %longname23158.i, i32 noundef 80) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then35.i, %if.else33.i.if.end43.i_crit_edge, %if.then29.i
  %longname23157.i = phi ptr [ %longname23158.i, %if.else33.i.if.end43.i_crit_edge ], [ %longname23158.i, %if.then35.i ], [ %longname23156.i, %if.then29.i ]
  %91 = ptrtoint ptr %longname23157.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %longname23157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool46.not.i = icmp eq i8 %92, 0
  br i1 %tobool46.not.i, label %if.end43.i.if.end59.i_crit_edge, label %if.then47.i

if.end43.i.if.end59.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then47.i:                                      ; preds = %if.end43.i
  %call50.i = call ptr @strim(ptr noundef %longname23157.i) #9
  %93 = ptrtoint ptr %longname23157.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %longname23157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool53.not.i = icmp eq i8 %94, 0
  br i1 %tobool53.not.i, label %if.then47.i.if.end59.i_crit_edge, label %if.then54.i

if.then47.i.if.end59.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

if.then54.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  %call57.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef nonnull @.str.79, i32 noundef 80) #9
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then54.i, %if.then47.i.if.end59.i_crit_edge, %if.end43.i.if.end59.i_crit_edge
  %shortname.i101 = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 3
  %call63.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef %shortname.i101, i32 noundef 80) #9
  %call66.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef nonnull @.str.80, i32 noundef 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call66.i)
  %cmp.i102 = icmp ult i32 %call66.i, 80
  br i1 %cmp.i102, label %if.then68.i, label %if.end59.i.if.end72.i_crit_edge

if.end59.i.if.end72.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then68.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %longname23157.i, i32 %call66.i
  %sub.i = sub nuw nsw i32 80, %call66.i
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 12
  %95 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus.i.i, align 8
  %bus_name.i.i = getelementptr inbounds %struct.usb_bus, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %bus_name.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus_name.i.i, align 4
  %devpath.i.i = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 1
  %call.i.i103 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.86, ptr noundef %98, ptr noundef %devpath.i.i) #9
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then68.i, %if.end59.i.if.end72.i_crit_edge
  %99 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %speed, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.749)
  switch i32 %100, label %if.end72.i.usb_audio_make_longname.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb76.i
    i32 3, label %sw.bb80.i
    i32 5, label %sw.bb84.i
    i32 6, label %sw.bb88.i
  ]

if.end72.i.usb_audio_make_longname.exit_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_audio_make_longname.exit

sw.bb.i:                                          ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %call75.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef nonnull @.str.81, i32 noundef 80) #9
  br label %usb_audio_make_longname.exit

sw.bb76.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %call79.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef nonnull @.str.82, i32 noundef 80) #9
  br label %usb_audio_make_longname.exit

sw.bb80.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %call83.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef nonnull @.str.83, i32 noundef 80) #9
  br label %usb_audio_make_longname.exit

sw.bb84.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %call87.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef nonnull @.str.84, i32 noundef 80) #9
  br label %usb_audio_make_longname.exit

sw.bb88.i:                                        ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  %call91.i = call i32 @strlcat(ptr noundef %longname23157.i, ptr noundef nonnull @.str.85, i32 noundef 80) #9
  br label %usb_audio_make_longname.exit

usb_audio_make_longname.exit:                     ; preds = %sw.bb88.i, %sw.bb84.i, %sw.bb80.i, %sw.bb76.i, %sw.bb.i, %if.end72.i.usb_audio_make_longname.exit_crit_edge, %if.then7.i
  call void @snd_usb_audio_create_proc(ptr noundef %12) #9
  %102 = ptrtoint ptr %rchip to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %12, ptr %rchip, align 4
  br label %cleanup

cleanup:                                          ; preds = %usb_audio_make_longname.exit, %do.end7, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call, %do.end7 ], [ 0, %usb_audio_make_longname.exit ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %component) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_create_quirk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_create_mixer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_usb_registration_quirk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_media_device_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_init_quirk_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usb_audio_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @snd_usb_endpoint_free_all(ptr noundef %1) #9
  %mutex = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %mutex) #9
  %shutdown = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #9
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_audio_create_proc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_free_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_usb_create_stream(ptr noundef %chip, i32 noundef %ctrlif, i32 noundef %interface) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef %interface) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.114, i32 noundef %ctrlif, i32 noundef %interface) #12
  br label %cleanup112

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 8
  %usb_id = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_id, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 416361732, i32 %6)
  %switch = icmp eq i32 %6, 416361732
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interface)
  %cmp5 = icmp eq i32 %interface, 0
  %or.cond = and i1 %cmp5, %switch
  br i1 %or.cond, label %land.lhs.true6, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true6:                                   ; preds = %if.end
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp7 = icmp eq i8 %8, -1
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true6.if.end21_crit_edge

land.lhs.true6.if.end21_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bInterfaceSubClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp11 = icmp eq i8 %10, -1
  br i1 %cmp11, label %if.then13, label %land.lhs.true9.if.end21_crit_edge

land.lhs.true9.if.end21_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then13:                                        ; preds = %land.lhs.true9
  %call14 = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef 2) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.cleanup112_crit_edge, label %if.end17

if.then13.cleanup112_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call14, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %land.lhs.true9.if.end21_crit_edge, %land.lhs.true6.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %iface.0 = phi ptr [ %call14, %if.end17 ], [ %call, %land.lhs.true9.if.end21_crit_edge ], [ %call, %land.lhs.true6.if.end21_crit_edge ], [ %call, %if.end.if.end21_crit_edge ]
  %altsd.0 = phi ptr [ %12, %if.end17 ], [ %3, %land.lhs.true9.if.end21_crit_edge ], [ %3, %land.lhs.true6.if.end21_crit_edge ], [ %3, %if.end.if.end21_crit_edge ]
  %interface.addr.0 = phi i32 [ 2, %if.end17 ], [ 0, %land.lhs.true9.if.end21_crit_edge ], [ 0, %land.lhs.true6.if.end21_crit_edge ], [ %interface, %if.end.if.end21_crit_edge ]
  %driver.i = getelementptr inbounds %struct.usb_interface, ptr %iface.0, i32 0, i32 7, i32 6
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 4
  %cmp.i.not = icmp eq ptr %14, null
  br i1 %cmp.i.not, label %if.end35, label %do.body25

do.body25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_create_stream.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_create_stream, %if.then30)) #9
          to label %cleanup112 [label %if.then30], !srcloc !682

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %dev31 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_create_stream.__UNIQUE_ID_ddebug279, ptr noundef %dev31, ptr noundef nonnull @.str.116, i32 noundef %ctrlif, i32 noundef %interface.addr.0) #9
  br label %cleanup112

if.end35:                                         ; preds = %if.end21
  %bInterfaceClass36 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsd.0, i32 0, i32 5
  %15 = ptrtoint ptr %bInterfaceClass36 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterfaceClass36, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.750)
  switch i8 %16, label %if.end35.do.body78_crit_edge [
    i8 1, label %if.end35.land.lhs.true45_crit_edge
    i8 -1, label %if.end35.land.lhs.true45_crit_edge6
  ]

if.end35.land.lhs.true45_crit_edge6:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true45

if.end35.land.lhs.true45_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true45

if.end35.do.body78_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

land.lhs.true45:                                  ; preds = %if.end35.land.lhs.true45_crit_edge, %if.end35.land.lhs.true45_crit_edge6
  %bInterfaceSubClass46 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %altsd.0, i32 0, i32 6
  %18 = ptrtoint ptr %bInterfaceSubClass46 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceSubClass46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp48 = icmp eq i8 %19, 3
  br i1 %cmp48, label %if.then50, label %if.end62

if.then50:                                        ; preds = %land.lhs.true45
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 2
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %midi_list = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 22
  %22 = ptrtoint ptr %usb_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_id, align 4
  %call52 = tail call i32 @__snd_usbmidi_create(ptr noundef %21, ptr noundef nonnull %iface.0, ptr noundef %midi_list, ptr noundef null, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %dev59 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.118, i32 noundef %ctrlif, i32 noundef %interface.addr.0) #12
  br label %cleanup112

if.end60:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @usb_audio_driver, ptr noundef nonnull %iface.0, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #9
  br label %cleanup112

if.end62:                                         ; preds = %land.lhs.true45
  %24 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.751)
  switch i8 %16, label %if.end62.do.body78_crit_edge [
    i8 1, label %if.end62.lor.lhs.false72_crit_edge
    i8 -1, label %if.end62.lor.lhs.false72_crit_edge7
  ]

if.end62.lor.lhs.false72_crit_edge7:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false72

if.end62.lor.lhs.false72_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false72

if.end62.do.body78_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

lor.lhs.false72:                                  ; preds = %if.end62.lor.lhs.false72_crit_edge, %if.end62.lor.lhs.false72_crit_edge7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp75.not = icmp eq i8 %19, 2
  br i1 %cmp75.not, label %if.end97, label %lor.lhs.false72.do.body78_crit_edge

lor.lhs.false72.do.body78_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body78

do.body78:                                        ; preds = %lor.lhs.false72.do.body78_crit_edge, %if.end62.do.body78_crit_edge, %if.end35.do.body78_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_create_stream.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_create_stream, %if.then90)) #9
          to label %cleanup112 [label %if.then90], !srcloc !682

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %dev91 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %bInterfaceClass36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceClass36, align 1
  %conv93 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_create_stream.__UNIQUE_ID_ddebug280, ptr noundef %dev91, ptr noundef nonnull @.str.120, i32 noundef %ctrlif, i32 noundef %interface.addr.0, i32 noundef %conv93) #9
  br label %cleanup112

if.end97:                                         ; preds = %lor.lhs.false72
  %speed = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp98 = icmp eq i32 %28, 1
  br i1 %cmp98, label %do.end103, label %if.end105

do.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %dev104 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104, ptr noundef nonnull @.str.122) #12
  br label %cleanup112

if.end105:                                        ; preds = %if.end97
  %call106 = tail call i32 @snd_usb_parse_audio_interface(ptr noundef %chip, i32 noundef %interface.addr.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %if.end105.cleanup112_crit_edge

if.end105.cleanup112_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup112

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %call109 = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef %interface.addr.0, i32 noundef 0) #9
  %call110 = tail call i32 @usb_driver_claim_interface(ptr noundef nonnull @usb_audio_driver, ptr noundef nonnull %iface.0, ptr noundef nonnull inttoptr (i32 -1 to ptr)) #9
  br label %cleanup112

cleanup112:                                       ; preds = %if.then108, %if.end105.cleanup112_crit_edge, %do.end103, %if.then90, %do.body78, %if.end60, %do.end58, %if.then30, %do.body25, %if.then13.cleanup112_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_usbmidi_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_parse_audio_interface(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_media_device_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_mixer_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_pcm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usb_endpoint_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_pcm_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_mixer_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 761)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 761)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !81, !82, !84, !86, !87, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !147, !148, !149, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !197, !198, !200, !202, !204, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !222, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !243, !245, !247, !248, !250, !252, !254, !256, !257, !259, !260, !262, !263, !264, !266, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !335, !337, !338, !339, !341, !342, !344, !345, !346, !348, !350, !352, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661}
!llvm.module.flags = !{!663, !664, !665, !666, !667, !668, !669, !670}
!llvm.ident = !{!671}

!0 = !{ptr @__UNIQUE_ID_author245, !1, !"__UNIQUE_ID_author245", i1 false, i1 false}
!1 = !{!"../sound/usb/card.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_description246, !3, !"__UNIQUE_ID_description246", i1 false, i1 false}
!3 = !{!"../sound/usb/card.c", i32 59, i32 1}
!4 = !{ptr @__UNIQUE_ID_file247, !5, !"__UNIQUE_ID_file247", i1 false, i1 false}
!5 = !{!"../sound/usb/card.c", i32 60, i32 1}
!6 = !{ptr @__UNIQUE_ID_license248, !5, !"__UNIQUE_ID_license248", i1 false, i1 false}
!7 = !{ptr @snd_usb_use_vmalloc, !8, !"snd_usb_use_vmalloc", i1 false, i1 false}
!8 = !{!"../sound/usb/card.c", i32 77, i32 6}
!9 = !{ptr @__param_index, !10, !"__param_index", i1 false, i1 false}
!10 = !{!"../sound/usb/card.c", i32 80, i32 1}
!11 = !{ptr @__UNIQUE_ID_indextype249, !10, !"__UNIQUE_ID_indextype249", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_index250, !13, !"__UNIQUE_ID_index250", i1 false, i1 false}
!13 = !{!"../sound/usb/card.c", i32 81, i32 1}
!14 = !{ptr @__param_id, !15, !"__param_id", i1 false, i1 false}
!15 = !{!"../sound/usb/card.c", i32 82, i32 1}
!16 = !{ptr @__UNIQUE_ID_idtype251, !15, !"__UNIQUE_ID_idtype251", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_id252, !18, !"__UNIQUE_ID_id252", i1 false, i1 false}
!18 = !{!"../sound/usb/card.c", i32 83, i32 1}
!19 = !{ptr @__param_enable, !20, !"__param_enable", i1 false, i1 false}
!20 = !{!"../sound/usb/card.c", i32 84, i32 1}
!21 = !{ptr @__UNIQUE_ID_enabletype253, !20, !"__UNIQUE_ID_enabletype253", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_enable254, !23, !"__UNIQUE_ID_enable254", i1 false, i1 false}
!23 = !{!"../sound/usb/card.c", i32 85, i32 1}
!24 = !{ptr @__param_vid, !25, !"__param_vid", i1 false, i1 false}
!25 = !{!"../sound/usb/card.c", i32 86, i32 1}
!26 = !{ptr @__UNIQUE_ID_vidtype255, !25, !"__UNIQUE_ID_vidtype255", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_vid256, !28, !"__UNIQUE_ID_vid256", i1 false, i1 false}
!28 = !{!"../sound/usb/card.c", i32 87, i32 1}
!29 = !{ptr @__param_pid, !30, !"__param_pid", i1 false, i1 false}
!30 = !{!"../sound/usb/card.c", i32 88, i32 1}
!31 = !{ptr @__UNIQUE_ID_pidtype257, !30, !"__UNIQUE_ID_pidtype257", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_pid258, !33, !"__UNIQUE_ID_pid258", i1 false, i1 false}
!33 = !{!"../sound/usb/card.c", i32 89, i32 1}
!34 = !{ptr @__param_device_setup, !35, !"__param_device_setup", i1 false, i1 false}
!35 = !{!"../sound/usb/card.c", i32 90, i32 1}
!36 = !{ptr @__UNIQUE_ID_device_setuptype259, !35, !"__UNIQUE_ID_device_setuptype259", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_device_setup260, !38, !"__UNIQUE_ID_device_setup260", i1 false, i1 false}
!38 = !{!"../sound/usb/card.c", i32 91, i32 1}
!39 = !{ptr @__param_ignore_ctl_error, !40, !"__param_ignore_ctl_error", i1 false, i1 false}
!40 = !{!"../sound/usb/card.c", i32 92, i32 1}
!41 = !{ptr @__UNIQUE_ID_ignore_ctl_errortype261, !40, !"__UNIQUE_ID_ignore_ctl_errortype261", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_ignore_ctl_error262, !43, !"__UNIQUE_ID_ignore_ctl_error262", i1 false, i1 false}
!43 = !{!"../sound/usb/card.c", i32 93, i32 1}
!44 = !{ptr @__param_autoclock, !45, !"__param_autoclock", i1 false, i1 false}
!45 = !{!"../sound/usb/card.c", i32 95, i32 1}
!46 = !{ptr @__UNIQUE_ID_autoclocktype263, !45, !"__UNIQUE_ID_autoclocktype263", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_autoclock264, !48, !"__UNIQUE_ID_autoclock264", i1 false, i1 false}
!48 = !{!"../sound/usb/card.c", i32 96, i32 1}
!49 = !{ptr @__param_lowlatency, !50, !"__param_lowlatency", i1 false, i1 false}
!50 = !{!"../sound/usb/card.c", i32 97, i32 1}
!51 = !{ptr @__UNIQUE_ID_lowlatencytype265, !50, !"__UNIQUE_ID_lowlatencytype265", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_lowlatency266, !53, !"__UNIQUE_ID_lowlatency266", i1 false, i1 false}
!53 = !{!"../sound/usb/card.c", i32 98, i32 1}
!54 = !{ptr @__param_quirk_alias, !55, !"__param_quirk_alias", i1 false, i1 false}
!55 = !{!"../sound/usb/card.c", i32 99, i32 1}
!56 = !{ptr @__UNIQUE_ID_quirk_aliastype267, !55, !"__UNIQUE_ID_quirk_aliastype267", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_quirk_alias268, !58, !"__UNIQUE_ID_quirk_alias268", i1 false, i1 false}
!58 = !{!"../sound/usb/card.c", i32 100, i32 1}
!59 = !{ptr @__param_delayed_register, !60, !"__param_delayed_register", i1 false, i1 false}
!60 = !{!"../sound/usb/card.c", i32 101, i32 1}
!61 = !{ptr @__UNIQUE_ID_delayed_registertype269, !60, !"__UNIQUE_ID_delayed_registertype269", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_delayed_register270, !63, !"__UNIQUE_ID_delayed_register270", i1 false, i1 false}
!63 = !{!"../sound/usb/card.c", i32 102, i32 1}
!64 = !{ptr @__param_implicit_fb, !65, !"__param_implicit_fb", i1 false, i1 false}
!65 = !{!"../sound/usb/card.c", i32 103, i32 1}
!66 = !{ptr @__UNIQUE_ID_implicit_fbtype271, !65, !"__UNIQUE_ID_implicit_fbtype271", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_implicit_fb272, !68, !"__UNIQUE_ID_implicit_fb272", i1 false, i1 false}
!68 = !{!"../sound/usb/card.c", i32 104, i32 1}
!69 = !{ptr @__param_quirk_flags, !70, !"__param_quirk_flags", i1 false, i1 false}
!70 = !{!"../sound/usb/card.c", i32 105, i32 1}
!71 = !{ptr @__UNIQUE_ID_quirk_flagstype273, !70, !"__UNIQUE_ID_quirk_flagstype273", i1 false, i1 false}
!72 = !{ptr @__UNIQUE_ID_quirk_flags274, !73, !"__UNIQUE_ID_quirk_flags274", i1 false, i1 false}
!73 = !{!"../sound/usb/card.c", i32 106, i32 1}
!74 = !{ptr @__param_use_vmalloc, !75, !"__param_use_vmalloc", i1 false, i1 false}
!75 = !{!"../sound/usb/card.c", i32 107, i32 1}
!76 = !{ptr @__UNIQUE_ID_use_vmalloctype275, !75, !"__UNIQUE_ID_use_vmalloctype275", i1 false, i1 false}
!77 = !{ptr @__UNIQUE_ID_use_vmalloc276, !78, !"__UNIQUE_ID_use_vmalloc276", i1 false, i1 false}
!78 = !{!"../sound/usb/card.c", i32 108, i32 1}
!79 = !{ptr @__param_skip_validation, !80, !"__param_skip_validation", i1 false, i1 false}
!80 = !{!"../sound/usb/card.c", i32 109, i32 1}
!81 = !{ptr @__UNIQUE_ID_skip_validationtype277, !80, !"__UNIQUE_ID_skip_validationtype277", i1 false, i1 false}
!82 = !{ptr @__UNIQUE_ID_skip_validation278, !83, !"__UNIQUE_ID_skip_validation278", i1 false, i1 false}
!83 = !{!"../sound/usb/card.c", i32 110, i32 1}
!84 = !{ptr @__initcall__kmod_snd_usb_audio__281_1126_usb_audio_driver_init6, !85, !"__initcall__kmod_snd_usb_audio__281_1126_usb_audio_driver_init6", i1 false, i1 false}
!85 = !{!"../sound/usb/card.c", i32 1126, i32 1}
!86 = !{ptr @__exitcall_usb_audio_driver_exit, !85, !"__exitcall_usb_audio_driver_exit", i1 false, i1 false}
!87 = !{ptr @ignore_ctl_error, !88, !"ignore_ctl_error", i1 false, i1 false}
!88 = !{!"../sound/usb/card.c", i32 69, i32 13}
!89 = !{ptr @snd_usb_skip_validation, !90, !"snd_usb_skip_validation", i1 false, i1 false}
!90 = !{!"../sound/usb/card.c", i32 78, i32 6}
!91 = !{ptr @__param_str_index, !10, !"__param_str_index", i1 false, i1 false}
!92 = !{ptr @__param_arr_index, !10, !"__param_arr_index", i1 false, i1 false}
!93 = !{ptr @index, !94, !"index", i1 false, i1 false}
!94 = !{!"../sound/usb/card.c", i32 62, i32 12}
!95 = !{ptr @__param_str_id, !15, !"__param_str_id", i1 false, i1 false}
!96 = !{ptr @__param_arr_id, !15, !"__param_arr_id", i1 false, i1 false}
!97 = !{ptr @id, !98, !"id", i1 false, i1 false}
!98 = !{!"../sound/usb/card.c", i32 63, i32 14}
!99 = !{ptr @__param_str_enable, !20, !"__param_str_enable", i1 false, i1 false}
!100 = !{ptr @__param_arr_enable, !20, !"__param_arr_enable", i1 false, i1 false}
!101 = !{ptr @enable, !102, !"enable", i1 false, i1 false}
!102 = !{!"../sound/usb/card.c", i32 64, i32 13}
!103 = !{ptr @__param_str_vid, !25, !"__param_str_vid", i1 false, i1 false}
!104 = !{ptr @__param_arr_vid, !25, !"__param_arr_vid", i1 false, i1 false}
!105 = !{ptr @vid, !106, !"vid", i1 false, i1 false}
!106 = !{!"../sound/usb/card.c", i32 66, i32 12}
!107 = !{ptr @__param_str_pid, !30, !"__param_str_pid", i1 false, i1 false}
!108 = !{ptr @__param_arr_pid, !30, !"__param_arr_pid", i1 false, i1 false}
!109 = !{ptr @pid, !110, !"pid", i1 false, i1 false}
!110 = !{!"../sound/usb/card.c", i32 67, i32 12}
!111 = !{ptr @__param_str_device_setup, !35, !"__param_str_device_setup", i1 false, i1 false}
!112 = !{ptr @__param_arr_device_setup, !35, !"__param_arr_device_setup", i1 false, i1 false}
!113 = !{ptr @device_setup, !114, !"device_setup", i1 false, i1 false}
!114 = !{!"../sound/usb/card.c", i32 68, i32 12}
!115 = !{ptr @__param_str_ignore_ctl_error, !40, !"__param_str_ignore_ctl_error", i1 false, i1 false}
!116 = !{ptr @__param_str_autoclock, !45, !"__param_str_autoclock", i1 false, i1 false}
!117 = !{ptr @autoclock, !118, !"autoclock", i1 false, i1 false}
!118 = !{!"../sound/usb/card.c", i32 70, i32 13}
!119 = !{ptr @__param_str_lowlatency, !50, !"__param_str_lowlatency", i1 false, i1 false}
!120 = !{ptr @lowlatency, !121, !"lowlatency", i1 false, i1 false}
!121 = !{!"../sound/usb/card.c", i32 71, i32 13}
!122 = !{ptr @__param_str_quirk_alias, !55, !"__param_str_quirk_alias", i1 false, i1 false}
!123 = !{ptr @__param_arr_quirk_alias, !55, !"__param_arr_quirk_alias", i1 false, i1 false}
!124 = !{ptr @quirk_alias, !125, !"quirk_alias", i1 false, i1 false}
!125 = !{!"../sound/usb/card.c", i32 72, i32 14}
!126 = !{ptr @__param_str_delayed_register, !60, !"__param_str_delayed_register", i1 false, i1 false}
!127 = !{ptr @__param_arr_delayed_register, !60, !"__param_arr_delayed_register", i1 false, i1 false}
!128 = !{ptr @delayed_register, !129, !"delayed_register", i1 false, i1 false}
!129 = !{!"../sound/usb/card.c", i32 73, i32 14}
!130 = !{ptr @__param_str_implicit_fb, !65, !"__param_str_implicit_fb", i1 false, i1 false}
!131 = !{ptr @__param_arr_implicit_fb, !65, !"__param_arr_implicit_fb", i1 false, i1 false}
!132 = !{ptr @implicit_fb, !133, !"implicit_fb", i1 false, i1 false}
!133 = !{!"../sound/usb/card.c", i32 74, i32 13}
!134 = !{ptr @__param_str_quirk_flags, !70, !"__param_str_quirk_flags", i1 false, i1 false}
!135 = !{ptr @__param_arr_quirk_flags, !70, !"__param_arr_quirk_flags", i1 false, i1 false}
!136 = !{ptr @quirk_flags, !137, !"quirk_flags", i1 false, i1 false}
!137 = !{!"../sound/usb/card.c", i32 75, i32 21}
!138 = !{ptr @__param_str_use_vmalloc, !75, !"__param_str_use_vmalloc", i1 false, i1 false}
!139 = !{ptr @__param_str_skip_validation, !80, !"__param_str_skip_validation", i1 false, i1 false}
!140 = !{ptr @.str, !85, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.1, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/usb/card.c", i32 1116, i32 11}
!143 = !{ptr @usb_audio_driver, !144, !"usb_audio_driver", i1 false, i1 false}
!144 = !{!"../sound/usb/card.c", i32 1115, i32 26}
!145 = !{ptr @.str.2, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/usb/card.c", i32 766, i32 5}
!147 = !{ptr @.str.3, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.4, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.5, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.6, !146, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @usb_audio_probe._entry, !146, !"_entry", i1 false, i1 false}
!152 = !{ptr @usb_audio_probe._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.8, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/usb/card.c", i32 794, i32 6}
!155 = !{ptr @.str.9, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @usb_audio_probe._entry.7, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @usb_audio_probe._entry_ptr.10, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.12, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/usb/card.c", i32 803, i32 4}
!160 = !{ptr @usb_audio_probe._entry.11, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @usb_audio_probe._entry_ptr.13, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.15, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/usb/card.c", i32 810, i32 3}
!164 = !{ptr @usb_audio_probe._entry.14, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @usb_audio_probe._entry_ptr.16, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.18, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/usb/card.c", i32 850, i32 3}
!168 = !{ptr @usb_audio_probe._entry.17, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @usb_audio_probe._entry_ptr.19, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.20, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/usb/card.c", i32 670, i32 30}
!172 = !{ptr @.str.21, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/usb/card.c", i32 673, i32 3}
!174 = !{ptr @.str.22, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @get_alias_id._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @get_alias_id._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.23, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/usb/card.c", i32 117, i32 8}
!179 = !{ptr @.str.24, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @register_mutex, !178, !"register_mutex", i1 false, i1 false}
!181 = !{ptr @usb_chip, !182, !"usb_chip", i1 false, i1 false}
!182 = !{!"../sound/usb/card.c", i32 118, i32 30}
!183 = !{ptr @.str.25, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/usb/card.c", i32 609, i32 3}
!185 = !{ptr @.str.26, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @snd_usb_audio_create._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @snd_usb_audio_create._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.28, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/usb/card.c", i32 616, i32 3}
!190 = !{ptr @snd_usb_audio_create._entry.27, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @snd_usb_audio_create._entry_ptr.29, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @snd_usb_audio_create.__key, !193, !"__key", i1 false, i1 false}
!193 = !{!"../sound/usb/card.c", i32 621, i32 2}
!194 = !{ptr @.str.30, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @snd_usb_audio_create.__key.31, !196, !"__key", i1 false, i1 false}
!196 = !{!"../sound/usb/card.c", i32 622, i32 2}
!197 = !{ptr @.str.32, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.33, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/usb/card.c", i32 648, i32 23}
!200 = !{ptr @.str.34, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/usb/card.c", i32 649, i32 21}
!202 = !{ptr @.str.35, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/usb/card.c", i32 509, i32 28}
!204 = !{ptr @lookup_device_name.p, !205, !"p", i1 false, i1 false}
!205 = !{!"../sound/usb/card.c", i32 460, i32 45}
!206 = !{ptr @.str.36, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/usb/card.c", i32 359, i32 2}
!208 = !{ptr @.str.37, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.38, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.39, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/usb/card.c", i32 362, i32 2}
!212 = !{ptr @.str.40, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.41, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/usb/card.c", i32 371, i32 2}
!215 = !{ptr @.str.42, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.43, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.44, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/usb/card.c", i32 373, i32 2}
!219 = !{ptr @.str.45, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.46, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/usb/card.c", i32 377, i32 2}
!222 = !{ptr @.str.47, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.48, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.49, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/usb/card.c", i32 381, i32 2}
!226 = !{ptr @.str.50, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.51, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/usb/card.c", i32 383, i32 2}
!229 = !{ptr @.str.52, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.53, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/usb/card.c", i32 385, i32 2}
!232 = !{ptr @.str.54, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.55, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/usb/card.c", i32 387, i32 2}
!235 = !{ptr @.str.56, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.57, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/usb/card.c", i32 388, i32 2}
!238 = !{ptr @.str.58, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.59, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/usb/card.c", i32 398, i32 2}
!241 = !{ptr @.str.60, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.61, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.62, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/usb/card.c", i32 400, i32 2}
!245 = !{ptr @.str.63, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/usb/card.c", i32 402, i32 2}
!247 = !{ptr @.str.64, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.65, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/usb/card.c", i32 408, i32 2}
!250 = !{ptr @.str.66, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/usb/card.c", i32 409, i32 2}
!252 = !{ptr @.str.67, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/usb/card.c", i32 418, i32 2}
!254 = !{ptr @.str.68, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/usb/card.c", i32 421, i32 2}
!256 = !{ptr @.str.69, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.70, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/usb/card.c", i32 425, i32 2}
!259 = !{ptr @.str.71, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.72, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/usb/card.c", i32 428, i32 2}
!262 = !{ptr @.str.73, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.74, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.75, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/usb/card.c", i32 431, i32 2}
!266 = !{ptr @.str.76, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.77, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/usb/card.c", i32 439, i32 2}
!269 = !{ptr @.str.78, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/usb/card.c", i32 447, i32 2}
!271 = !{ptr @usb_audio_names, !272, !"usb_audio_names", i1 false, i1 false}
!272 = !{!"../sound/usb/card.c", i32 357, i32 43}
!273 = !{ptr @.str.79, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/usb/card.c", i32 553, i32 28}
!275 = !{ptr @.str.80, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/usb/card.c", i32 558, i32 32}
!277 = !{ptr @.str.81, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/usb/card.c", i32 565, i32 27}
!279 = !{ptr @.str.82, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/usb/card.c", i32 568, i32 27}
!281 = !{ptr @.str.83, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/usb/card.c", i32 571, i32 27}
!283 = !{ptr @.str.84, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/usb/card.c", i32 574, i32 27}
!285 = !{ptr @.str.85, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/usb/card.c", i32 577, i32 27}
!287 = !{ptr @.str.86, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../include/linux/usb.h", i32 912, i32 31}
!289 = !{ptr @.str.87, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/usb/card.c", i32 235, i32 3}
!291 = !{ptr @.str.88, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.89, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @snd_usb_create_streams._entry, !290, !"_entry", i1 false, i1 false}
!294 = !{ptr @snd_usb_create_streams._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.91, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/usb/card.c", i32 248, i32 4}
!297 = !{ptr @snd_usb_create_streams._entry.90, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @snd_usb_create_streams._entry_ptr.92, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.94, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/usb/card.c", i32 257, i32 4}
!301 = !{ptr @snd_usb_create_streams._entry.93, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @snd_usb_create_streams._entry_ptr.95, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.97, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/usb/card.c", i32 262, i32 4}
!305 = !{ptr @snd_usb_create_streams._entry.96, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @snd_usb_create_streams._entry_ptr.98, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.100, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/usb/card.c", i32 267, i32 4}
!309 = !{ptr @snd_usb_create_streams._entry.99, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @snd_usb_create_streams._entry_ptr.101, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.103, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/usb/card.c", i32 272, i32 4}
!313 = !{ptr @snd_usb_create_streams._entry.102, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @snd_usb_create_streams._entry_ptr.104, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.106, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/usb/card.c", i32 277, i32 4}
!317 = !{ptr @snd_usb_create_streams._entry.105, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @snd_usb_create_streams._entry_ptr.107, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.109, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/usb/card.c", i32 308, i32 4}
!321 = !{ptr @snd_usb_create_streams._entry.108, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @snd_usb_create_streams._entry_ptr.110, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.112, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/usb/card.c", i32 318, i32 5}
!325 = !{ptr @snd_usb_create_streams._entry.111, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @snd_usb_create_streams._entry_ptr.113, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.114, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/usb/card.c", i32 147, i32 3}
!329 = !{ptr @.str.115, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @snd_usb_create_stream._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @snd_usb_create_stream._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.116, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/usb/card.c", i32 173, i32 3}
!334 = !{ptr @snd_usb_create_stream.__UNIQUE_ID_ddebug279, !333, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!335 = !{ptr @.str.118, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/usb/card.c", i32 185, i32 4}
!337 = !{ptr @snd_usb_create_stream._entry.117, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @snd_usb_create_stream._entry_ptr.119, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.120, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/usb/card.c", i32 197, i32 3}
!341 = !{ptr @snd_usb_create_stream.__UNIQUE_ID_ddebug280, !340, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!342 = !{ptr @.str.122, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/usb/card.c", i32 205, i32 3}
!344 = !{ptr @snd_usb_create_stream._entry.121, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @snd_usb_create_stream._entry_ptr.123, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.130, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/usb/quirks-table.h", i32 130, i32 18}
!348 = !{ptr @.str.131, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/usb/quirks-table.h", i32 131, i32 19}
!350 = !{ptr @.str.134, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/usb/quirks-table.h", i32 192, i32 1}
!352 = !{ptr @.str.135, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.137, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/usb/quirks-table.h", i32 193, i32 1}
!355 = !{ptr @.str.139, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/usb/quirks-table.h", i32 194, i32 1}
!357 = !{ptr @.str.141, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/usb/quirks-table.h", i32 195, i32 1}
!359 = !{ptr @.str.143, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/usb/quirks-table.h", i32 196, i32 1}
!361 = !{ptr @.str.145, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/usb/quirks-table.h", i32 197, i32 1}
!363 = !{ptr @.str.147, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/usb/quirks-table.h", i32 198, i32 1}
!365 = !{ptr @.str.149, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/usb/quirks-table.h", i32 199, i32 1}
!367 = !{ptr @.str.151, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/usb/quirks-table.h", i32 200, i32 1}
!369 = !{ptr @.str.153, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/usb/quirks-table.h", i32 201, i32 1}
!371 = !{ptr @.str.155, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/usb/quirks-table.h", i32 202, i32 1}
!373 = !{ptr @.str.157, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/usb/quirks-table.h", i32 203, i32 1}
!375 = !{ptr @.str.159, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/usb/quirks-table.h", i32 204, i32 1}
!377 = !{ptr @.str.161, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/usb/quirks-table.h", i32 205, i32 1}
!379 = !{ptr @.str.163, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/usb/quirks-table.h", i32 206, i32 1}
!381 = !{ptr @.str.165, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/usb/quirks-table.h", i32 207, i32 1}
!383 = !{ptr @.str.167, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/usb/quirks-table.h", i32 208, i32 1}
!385 = !{ptr @.str.169, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/usb/quirks-table.h", i32 209, i32 1}
!387 = !{ptr @.str.171, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/usb/quirks-table.h", i32 210, i32 1}
!389 = !{ptr @.str.173, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/usb/quirks-table.h", i32 211, i32 1}
!391 = !{ptr @.str.175, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/usb/quirks-table.h", i32 212, i32 1}
!393 = !{ptr @.str.177, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/usb/quirks-table.h", i32 213, i32 1}
!395 = !{ptr @.str.179, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/usb/quirks-table.h", i32 214, i32 1}
!397 = !{ptr @.str.181, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/usb/quirks-table.h", i32 215, i32 1}
!399 = !{ptr @.str.183, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/usb/quirks-table.h", i32 216, i32 1}
!401 = !{ptr @.str.185, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/usb/quirks-table.h", i32 217, i32 1}
!403 = !{ptr @.str.187, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/usb/quirks-table.h", i32 218, i32 1}
!405 = !{ptr @.str.189, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/usb/quirks-table.h", i32 219, i32 1}
!407 = !{ptr @.str.191, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/usb/quirks-table.h", i32 220, i32 1}
!409 = !{ptr @.str.193, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/usb/quirks-table.h", i32 221, i32 1}
!411 = !{ptr @.str.195, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/usb/quirks-table.h", i32 222, i32 1}
!413 = !{ptr @.str.197, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/usb/quirks-table.h", i32 223, i32 1}
!415 = !{ptr @.str.199, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/usb/quirks-table.h", i32 224, i32 1}
!417 = !{ptr @.str.201, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/usb/quirks-table.h", i32 225, i32 1}
!419 = !{ptr @.str.203, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/usb/quirks-table.h", i32 226, i32 1}
!421 = !{ptr @.str.205, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/usb/quirks-table.h", i32 227, i32 1}
!423 = !{ptr @.str.207, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/usb/quirks-table.h", i32 228, i32 1}
!425 = !{ptr @.str.209, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/usb/quirks-table.h", i32 229, i32 1}
!427 = !{ptr @.str.211, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/usb/quirks-table.h", i32 230, i32 1}
!429 = !{ptr @.str.213, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/usb/quirks-table.h", i32 231, i32 1}
!431 = !{ptr @.str.215, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/usb/quirks-table.h", i32 232, i32 1}
!433 = !{ptr @.str.217, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/usb/quirks-table.h", i32 233, i32 1}
!435 = !{ptr @.str.219, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/usb/quirks-table.h", i32 234, i32 1}
!437 = !{ptr @.str.221, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/usb/quirks-table.h", i32 235, i32 1}
!439 = !{ptr @.str.223, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/usb/quirks-table.h", i32 236, i32 1}
!441 = !{ptr @.str.225, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/usb/quirks-table.h", i32 237, i32 1}
!443 = !{ptr @.str.227, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/usb/quirks-table.h", i32 238, i32 1}
!445 = !{ptr @.str.229, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/usb/quirks-table.h", i32 239, i32 1}
!447 = !{ptr @.str.275, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/usb/quirks-table.h", i32 408, i32 1}
!449 = !{ptr @.str.277, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/usb/quirks-table.h", i32 409, i32 1}
!451 = !{ptr @.str.281, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/usb/quirks-table.h", i32 412, i32 1}
!453 = !{ptr @.str.283, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/usb/quirks-table.h", i32 413, i32 1}
!455 = !{ptr @.str.285, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/usb/quirks-table.h", i32 414, i32 1}
!457 = !{ptr @.str.287, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/usb/quirks-table.h", i32 415, i32 1}
!459 = !{ptr @.str.289, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/usb/quirks-table.h", i32 416, i32 1}
!461 = !{ptr @.str.291, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/usb/quirks-table.h", i32 417, i32 1}
!463 = !{ptr @.str.293, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/usb/quirks-table.h", i32 418, i32 1}
!465 = !{ptr @.str.295, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/usb/quirks-table.h", i32 419, i32 1}
!467 = !{ptr @.str.297, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/usb/quirks-table.h", i32 420, i32 1}
!469 = !{ptr @.str.299, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/usb/quirks-table.h", i32 421, i32 1}
!471 = !{ptr @.str.301, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/usb/quirks-table.h", i32 422, i32 1}
!473 = !{ptr @.str.303, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/usb/quirks-table.h", i32 423, i32 1}
!475 = !{ptr @.str.305, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/usb/quirks-table.h", i32 424, i32 1}
!477 = !{ptr @.str.310, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/usb/quirks-table.h", i32 428, i32 1}
!479 = !{ptr @.str.312, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/usb/quirks-table.h", i32 429, i32 1}
!481 = !{ptr @.str.315, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/usb/quirks-table.h", i32 450, i32 18}
!483 = !{ptr @.str.316, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/usb/quirks-table.h", i32 451, i32 19}
!485 = !{ptr @.str.322, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/usb/quirks-table.h", i32 506, i32 18}
!487 = !{ptr @.str.323, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/usb/quirks-table.h", i32 507, i32 19}
!489 = !{ptr @.str.327, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/usb/quirks-table.h", i32 537, i32 19}
!491 = !{ptr @.str.331, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/usb/quirks-table.h", i32 567, i32 19}
!493 = !{ptr @.str.335, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/usb/quirks-table.h", i32 599, i32 19}
!495 = !{ptr @.str.339, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/usb/quirks-table.h", i32 629, i32 19}
!497 = !{ptr @.str.343, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/usb/quirks-table.h", i32 659, i32 19}
!499 = !{ptr @.str.347, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../sound/usb/quirks-table.h", i32 690, i32 19}
!501 = !{ptr @.str.351, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/usb/quirks-table.h", i32 720, i32 19}
!503 = !{ptr @.str.355, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/usb/quirks-table.h", i32 752, i32 19}
!505 = !{ptr @.str.359, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/usb/quirks-table.h", i32 790, i32 19}
!507 = !{ptr @.str.362, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/usb/quirks-table.h", i32 813, i32 19}
!509 = !{ptr @.str.365, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/usb/quirks-table.h", i32 827, i32 19}
!511 = !{ptr @.str.368, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/usb/quirks-table.h", i32 841, i32 19}
!513 = !{ptr @.str.372, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/usb/quirks-table.h", i32 872, i32 19}
!515 = !{ptr @.str.376, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/usb/quirks-table.h", i32 903, i32 19}
!517 = !{ptr @.str.379, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/usb/quirks-table.h", i32 917, i32 19}
!519 = !{ptr @.str.382, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/usb/quirks-table.h", i32 935, i32 19}
!521 = !{ptr @.str.388, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../sound/usb/quirks-table.h", i32 996, i32 19}
!523 = !{ptr @.str.391, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/usb/quirks-table.h", i32 1010, i32 19}
!525 = !{ptr @.str.394, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/usb/quirks-table.h", i32 1028, i32 19}
!527 = !{ptr @.str.397, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../sound/usb/quirks-table.h", i32 1055, i32 19}
!529 = !{ptr @.str.400, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/usb/quirks-table.h", i32 1069, i32 19}
!531 = !{ptr @.str.403, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/usb/quirks-table.h", i32 1083, i32 19}
!533 = !{ptr @.str.406, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../sound/usb/quirks-table.h", i32 1100, i32 19}
!535 = !{ptr @.str.409, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/usb/quirks-table.h", i32 1117, i32 18}
!537 = !{ptr @.str.410, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../sound/usb/quirks-table.h", i32 1118, i32 19}
!539 = !{ptr @.str.413, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../sound/usb/quirks-table.h", i32 1145, i32 19}
!541 = !{ptr @.str.416, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../sound/usb/quirks-table.h", i32 1159, i32 19}
!543 = !{ptr @.str.423, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../sound/usb/quirks-table.h", i32 1211, i32 19}
!545 = !{ptr @.str.428, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/usb/quirks-table.h", i32 1251, i32 19}
!547 = !{ptr @.str.431, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/usb/quirks-table.h", i32 1273, i32 19}
!549 = !{ptr @.str.433, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/usb/quirks-table.h", i32 1282, i32 19}
!551 = !{ptr @.str.439, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../sound/usb/quirks-table.h", i32 1329, i32 19}
!553 = !{ptr @.str.442, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/usb/quirks-table.h", i32 1347, i32 19}
!555 = !{ptr @.str.445, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../sound/usb/quirks-table.h", i32 1374, i32 19}
!557 = !{ptr @.str.450, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../sound/usb/quirks-table.h", i32 1402, i32 19}
!559 = !{ptr @.str.453, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/usb/quirks-table.h", i32 1416, i32 19}
!561 = !{ptr @.str.456, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/usb/quirks-table.h", i32 1433, i32 19}
!563 = !{ptr @.str.462, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../sound/usb/quirks-table.h", i32 1492, i32 19}
!565 = !{ptr @.str.491, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../sound/usb/quirks-table.h", i32 1762, i32 18}
!567 = !{ptr @.str.492, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/usb/quirks-table.h", i32 1763, i32 19}
!569 = !{ptr @.str.495, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../sound/usb/quirks-table.h", i32 1777, i32 18}
!571 = !{ptr @.str.496, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../sound/usb/quirks-table.h", i32 1778, i32 19}
!573 = !{ptr @.str.499, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/usb/quirks-table.h", i32 1791, i32 19}
!575 = !{ptr @.str.502, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../sound/usb/quirks-table.h", i32 1804, i32 19}
!577 = !{ptr @.str.505, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../sound/usb/quirks-table.h", i32 1817, i32 19}
!579 = !{ptr @.str.508, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../sound/usb/quirks-table.h", i32 1835, i32 19}
!581 = !{ptr @.str.513, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../sound/usb/quirks-table.h", i32 1861, i32 19}
!583 = !{ptr @.str.516, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../sound/usb/quirks-table.h", i32 1874, i32 19}
!585 = !{ptr @.str.520, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../sound/usb/quirks-table.h", i32 1938, i32 19}
!587 = !{ptr @.str.523, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../sound/usb/quirks-table.h", i32 1951, i32 19}
!589 = !{ptr @.str.526, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../sound/usb/quirks-table.h", i32 1964, i32 19}
!591 = !{ptr @.str.557, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../sound/usb/quirks-table.h", i32 2333, i32 18}
!593 = !{ptr @.str.558, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../sound/usb/quirks-table.h", i32 2334, i32 19}
!595 = !{ptr @.str.560, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../sound/usb/quirks-table.h", i32 2344, i32 19}
!597 = !{ptr @.str.562, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../sound/usb/quirks-table.h", i32 2360, i32 18}
!599 = !{ptr @.str.563, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../sound/usb/quirks-table.h", i32 2361, i32 19}
!601 = !{ptr @.str.566, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/usb/quirks-table.h", i32 2384, i32 18}
!603 = !{ptr @.str.567, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../sound/usb/quirks-table.h", i32 2385, i32 19}
!605 = !{ptr @.str.574, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../sound/usb/quirks-table.h", i32 2425, i32 18}
!607 = !{ptr @.str.578, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../sound/usb/quirks-table.h", i32 2456, i32 18}
!609 = !{ptr @.str.579, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../sound/usb/quirks-table.h", i32 2457, i32 19}
!611 = !{ptr @.str.589, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/usb/quirks-table.h", i32 2558, i32 19}
!613 = !{ptr @.str.593, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../sound/usb/quirks-table.h", i32 2584, i32 18}
!615 = !{ptr @.str.594, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../sound/usb/quirks-table.h", i32 2585, i32 19}
!617 = !{ptr @.str.596, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../sound/usb/quirks-table.h", i32 2595, i32 18}
!619 = !{ptr @.str.597, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../sound/usb/quirks-table.h", i32 2596, i32 19}
!621 = !{ptr @.str.599, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../sound/usb/quirks-table.h", i32 2605, i32 19}
!623 = !{ptr @.str.603, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../sound/usb/quirks-table.h", i32 2631, i32 18}
!625 = !{ptr @.str.604, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../sound/usb/quirks-table.h", i32 2632, i32 19}
!627 = !{ptr @.str.611, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../sound/usb/quirks-table.h", i32 2702, i32 19}
!629 = !{ptr @.str.616, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../sound/usb/quirks-table.h", i32 2742, i32 19}
!631 = !{ptr @.str.621, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../sound/usb/quirks-table.h", i32 2799, i32 18}
!633 = !{ptr @.str.622, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../sound/usb/quirks-table.h", i32 2800, i32 19}
!635 = !{ptr @.str.624, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../sound/usb/quirks-table.h", i32 2814, i32 19}
!637 = !{ptr @.str.627, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../sound/usb/quirks-table.h", i32 2835, i32 18}
!639 = !{ptr @.str.628, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../sound/usb/quirks-table.h", i32 2836, i32 19}
!641 = !{ptr @.str.635, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../sound/usb/quirks-table.h", i32 2902, i32 19}
!643 = !{ptr @.str.643, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../sound/usb/quirks-table.h", i32 2985, i32 18}
!645 = !{ptr @.str.644, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../sound/usb/quirks-table.h", i32 2986, i32 19}
!647 = !{ptr @.str.649, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../sound/usb/quirks-table.h", i32 3029, i32 18}
!649 = !{ptr @.str.650, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../sound/usb/quirks-table.h", i32 3030, i32 19}
!651 = !{ptr @.str.657, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../sound/usb/quirks-table.h", i32 3100, i32 18}
!653 = !{ptr @.str.658, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../sound/usb/quirks-table.h", i32 3101, i32 19}
!655 = !{ptr @.str.674, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../sound/usb/quirks-table.h", i32 3343, i32 19}
!657 = !{ptr @.str.717, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../sound/usb/quirks-table.h", i32 3802, i32 18}
!659 = !{ptr @.str.718, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../sound/usb/quirks-table.h", i32 3803, i32 19}
!661 = !{ptr @usb_audio_ids, !662, !"usb_audio_ids", i1 false, i1 false}
!662 = !{!"../sound/usb/card.c", i32 1102, i32 35}
!663 = !{i32 1, !"wchar_size", i32 2}
!664 = !{i32 1, !"min_enum_size", i32 4}
!665 = !{i32 8, !"branch-target-enforcement", i32 0}
!666 = !{i32 8, !"sign-return-address", i32 0}
!667 = !{i32 8, !"sign-return-address-all", i32 0}
!668 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!669 = !{i32 7, !"uwtable", i32 1}
!670 = !{i32 7, !"frame-pointer", i32 2}
!671 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!672 = !{i64 2148192782, i64 2148192808, i64 2148192837, i64 2148192871, i64 2148192902, i64 2148192925}
!673 = !{i64 2148281234}
!674 = !{i64 2148195967, i64 2148195999, i64 2148196028, i64 2148196062, i64 2148196093, i64 2148196116}
!675 = !{i64 2148281463}
!676 = !{i64 2148278193}
!677 = !{i64 2148193502, i64 2148193534, i64 2148193563, i64 2148193597, i64 2148193628, i64 2148193651}
!678 = !{i64 2148278422}
!679 = !{i64 2148195247, i64 2148195273, i64 2148195302, i64 2148195336, i64 2148195367, i64 2148195390}
!680 = !{!"auto-init"}
!681 = !{i8 0, i8 2}
!682 = !{i64 2148832493, i64 2148832498, i64 2148832511, i64 2148832555, i64 2148832589, i64 2148832610}
