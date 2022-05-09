; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_hdmi.c_pt.bc'
source_filename = "../sound/pci/hda/patch_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hdmi_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.hda_verb = type { i16, i32, i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hdmi_spec = type { ptr, i32, %struct.snd_array, [4 x i16], i32, i32, i32, %struct.snd_array, [16 x %struct.hdmi_pcm], %struct.mutex, %struct.mutex, i32, i32, i32, %struct.hdmi_eld, %struct.hdmi_ops, i8, i8, i8, i8, %struct.hda_multi_out, %struct.hda_pcm_stream, i8, i8, i8, %struct.drm_audio_component_audio_ops, ptr, %struct.hdac_chmap, i16, ptr, i32, i8 }
%struct.hdmi_pcm = type { ptr, ptr, ptr }
%struct.hdmi_eld = type { i8, i8, i32, [256 x i8], %struct.parsed_hdmi_eld }
%struct.parsed_hdmi_eld = type { i32, i32, i32, [17 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, [16 x %struct.cea_sad] }
%struct.cea_sad = type { i32, i32, i32, i32, i32, i32 }
%struct.hda_multi_out = type { i32, ptr, i16, [5 x i16], [5 x i16], i16, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.drm_audio_component_audio_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hdac_chmap = type { i32, %struct.hdac_chmap_ops, ptr }
%struct.hdac_chmap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_spec_per_cvt = type { i16, i32, i32, i32, i32, i64, i32 }
%struct.hdac_cea_channel_speaker_allocation = type { i32, [8 x i32], i32, i32 }
%struct.hdmi_spec_per_pin = type { i16, i32, i32, i32, [32 x i16], i32, i16, ptr, %struct.hdmi_eld, %struct.mutex, %struct.delayed_work, ptr, i32, i32, i8, i8, i32, i8, i8, [8 x i8], ptr }
%struct.hda_jack_callback = type { i16, i32, ptr, i32, i32, ptr, ptr }
%struct.hda_pcm = type { ptr, [2 x %struct.hda_pcm_stream], i32, i32, ptr, i8, ptr, %struct.list_head, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.hda_spdif_out = type { i16, i32, i16 }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.84 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.drm_audio_component = type { ptr, ptr, ptr, %struct.completion }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.hda_jack_tbl = type { i16, i32, i8, ptr, i32, i8, i16, i16, i16, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.72, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%union.audio_infoframe = type { %struct.hdmi_audio_infoframe }
%struct.hdmi_audio_infoframe = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.75, [64 x i8] }
%union.anon.75 = type { %struct.anon.78, [40 x i8] }
%struct.anon.78 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.79, [128 x i8] }
%union.anon.79 = type { %union.anon.81 }
%union.anon.81 = type { [64 x i64] }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head, %struct.mutex }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }

@__param_str_static_hdmi_pcm = internal constant [35 x i8] c"snd_hda_codec_hdmi.static_hdmi_pcm\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@static_hdmi_pcm = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_static_hdmi_pcm = internal constant %struct.kernel_param { ptr @__param_str_static_hdmi_pcm, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @static_hdmi_pcm } }, section "__param", align 4
@__UNIQUE_ID_static_hdmi_pcmtype243 = internal constant [49 x i8] c"snd_hda_codec_hdmi.parmtype=static_hdmi_pcm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_static_hdmi_pcm244 = internal constant [83 x i8] c"snd_hda_codec_hdmi.parm=static_hdmi_pcm:Don't restrict PCM parameters per ELD info\00", section ".modinfo", align 1
@__param_str_enable_acomp = internal constant [32 x i8] c"snd_hda_codec_hdmi.enable_acomp\00", align 1
@enable_acomp = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_acomp = internal constant %struct.kernel_param { ptr @__param_str_enable_acomp, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable_acomp } }, section "__param", align 4
@__UNIQUE_ID_enable_acomptype245 = internal constant [46 x i8] c"snd_hda_codec_hdmi.parmtype=enable_acomp:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_acomp246 = internal constant [82 x i8] c"snd_hda_codec_hdmi.parm=enable_acomp:Enable audio component binding (default=yes)\00", section ".modinfo", align 1
@__param_str_enable_silent_stream = internal constant [40 x i8] c"snd_hda_codec_hdmi.enable_silent_stream\00", align 1
@enable_silent_stream = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_silent_stream = internal constant %struct.kernel_param { ptr @__param_str_enable_silent_stream, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @enable_silent_stream } }, section "__param", align 4
@__UNIQUE_ID_enable_silent_streamtype247 = internal constant [54 x i8] c"snd_hda_codec_hdmi.parmtype=enable_silent_stream:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_silent_stream248 = internal constant [83 x i8] c"snd_hda_codec_hdmi.parm=enable_silent_stream:Enable Silent Stream for HDMI devices\00", section ".modinfo", align 1
@__param_str_enable_all_pins = internal constant [35 x i8] c"snd_hda_codec_hdmi.enable_all_pins\00", align 1
@enable_all_pins = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_all_pins = internal constant %struct.kernel_param { ptr @__param_str_enable_all_pins, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable_all_pins } }, section "__param", align 4
@__UNIQUE_ID_enable_all_pinstype249 = internal constant [49 x i8] c"snd_hda_codec_hdmi.parmtype=enable_all_pins:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_all_pins250 = internal constant [65 x i8] c"snd_hda_codec_hdmi.parm=enable_all_pins:Forcibly enable all pins\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [57 x i8] c"snd_hda_codec_hdmi.file=sound/pci/hda/snd-hda-codec-hdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [31 x i8] c"snd_hda_codec_hdmi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [51 x i8] c"snd_hda_codec_hdmi.description=HDMI HD-audio codec\00", section ".modinfo", align 1
@__UNIQUE_ID_alias277 = internal constant [49 x i8] c"snd_hda_codec_hdmi.alias=snd-hda-codec-intelhdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_alias278 = internal constant [46 x i8] c"snd_hda_codec_hdmi.alias=snd-hda-codec-nvhdmi\00", section ".modinfo", align 1
@__UNIQUE_ID_alias279 = internal constant [47 x i8] c"snd_hda_codec_hdmi.alias=snd-hda-codec-atihdmi\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_hdmi__280_4417_hdmi_driver_init6 = internal global ptr @hdmi_driver_init, section ".initcall6.init", align 4
@hdmi_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_hdmi }, [52 x i8] zeroinitializer }, align 32
@__exitcall_hdmi_driver_exit = internal global ptr @hdmi_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_hda_codec_hdmi\00", [45 x i8] zeroinitializer }, align 32
@snd_hda_id_hdmi = internal constant { [118 x %struct.hda_device_id], [584 x i8] } { [118 x %struct.hda_device_id] [%struct.hda_device_id { i32 268597564, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 268597529, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 268597530, i32 0, i8 1, ptr @.str.2, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 268610049, i32 0, i8 1, ptr @.str.3, i32 ptrtoint (ptr @patch_atihdmi to i32) }, %struct.hda_device_id { i32 278205328, i32 0, i8 1, ptr @.str.4, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 278205330, i32 0, i8 1, ptr @.str.5, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 401080391, i32 0, i8 1, ptr @.str.6, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 282984449, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 282984450, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984451, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984452, i32 0, i8 1, ptr @.str.9, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984453, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984454, i32 0, i8 1, ptr @.str.8, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984455, i32 0, i8 1, ptr @.str.10, i32 ptrtoint (ptr @patch_nvhdmi_8ch_7x to i32) }, %struct.hda_device_id { i32 282984456, i32 0, i8 1, ptr @.str.11, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984457, i32 0, i8 1, ptr @.str.12, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984458, i32 0, i8 1, ptr @.str.13, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984459, i32 0, i8 1, ptr @.str.14, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984460, i32 0, i8 1, ptr @.str.15, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984461, i32 0, i8 1, ptr @.str.16, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984464, i32 0, i8 1, ptr @.str.17, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984465, i32 0, i8 1, ptr @.str.18, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984466, i32 0, i8 1, ptr @.str.19, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984467, i32 0, i8 1, ptr @.str.20, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984468, i32 0, i8 1, ptr @.str.21, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984469, i32 0, i8 1, ptr @.str.22, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984470, i32 0, i8 1, ptr @.str.23, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984472, i32 0, i8 1, ptr @.str.24, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984473, i32 0, i8 1, ptr @.str.25, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984474, i32 0, i8 1, ptr @.str.26, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984475, i32 0, i8 1, ptr @.str.27, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984476, i32 0, i8 1, ptr @.str.28, i32 ptrtoint (ptr @patch_nvhdmi_legacy to i32) }, %struct.hda_device_id { i32 282984480, i32 0, i8 1, ptr @.str.29, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984482, i32 0, i8 1, ptr @.str.30, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984488, i32 0, i8 1, ptr @.str.31, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984489, i32 0, i8 1, ptr @.str.32, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984493, i32 0, i8 1, ptr @.str.33, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984494, i32 0, i8 1, ptr @.str.34, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984495, i32 0, i8 1, ptr @.str.35, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984496, i32 0, i8 1, ptr @.str.36, i32 ptrtoint (ptr @patch_tegra_hdmi to i32) }, %struct.hda_device_id { i32 282984512, i32 0, i8 1, ptr @.str.37, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984513, i32 0, i8 1, ptr @.str.38, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984514, i32 0, i8 1, ptr @.str.39, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984515, i32 0, i8 1, ptr @.str.40, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984516, i32 0, i8 1, ptr @.str.41, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984517, i32 0, i8 1, ptr @.str.42, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984528, i32 0, i8 1, ptr @.str.43, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984529, i32 0, i8 1, ptr @.str.44, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984530, i32 0, i8 1, ptr @.str.45, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984544, i32 0, i8 1, ptr @.str.46, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984545, i32 0, i8 1, ptr @.str.47, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984546, i32 0, i8 1, ptr @.str.48, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984551, i32 0, i8 1, ptr @.str.49, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 282984560, i32 0, i8 1, ptr @.str.50, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984561, i32 0, i8 1, ptr @.str.51, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984562, i32 0, i8 1, ptr @.str.52, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984563, i32 0, i8 1, ptr @.str.53, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984564, i32 0, i8 1, ptr @.str.54, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984566, i32 0, i8 1, ptr @.str.55, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984571, i32 0, i8 1, ptr @.str.56, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984572, i32 0, i8 1, ptr @.str.57, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984573, i32 0, i8 1, ptr @.str.58, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984574, i32 0, i8 1, ptr @.str.59, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984576, i32 0, i8 1, ptr @.str.60, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984577, i32 0, i8 1, ptr @.str.61, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984578, i32 0, i8 1, ptr @.str.62, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984579, i32 0, i8 1, ptr @.str.63, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984580, i32 0, i8 1, ptr @.str.64, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984592, i32 0, i8 1, ptr @.str.65, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984593, i32 0, i8 1, ptr @.str.66, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984594, i32 0, i8 1, ptr @.str.67, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984595, i32 0, i8 1, ptr @.str.68, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984596, i32 0, i8 1, ptr @.str.69, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984597, i32 0, i8 1, ptr @.str.70, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984599, i32 0, i8 1, ptr @.str.71, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984600, i32 0, i8 1, ptr @.str.72, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984601, i32 0, i8 1, ptr @.str.73, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984602, i32 0, i8 1, ptr @.str.74, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984605, i32 0, i8 1, ptr @.str.75, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984606, i32 0, i8 1, ptr @.str.76, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984607, i32 0, i8 1, ptr @.str.77, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 282984608, i32 0, i8 1, ptr @.str.78, i32 ptrtoint (ptr @patch_nvhdmi to i32) }, %struct.hda_device_id { i32 283017217, i32 0, i8 1, ptr @.str.7, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 283017319, i32 0, i8 1, ptr @.str.79, i32 ptrtoint (ptr @patch_nvhdmi_2ch to i32) }, %struct.hda_device_id { i32 285646720, i32 0, i8 1, ptr @.str.80, i32 ptrtoint (ptr @patch_via_hdmi to i32) }, %struct.hda_device_id { i32 285646721, i32 0, i8 1, ptr @.str.80, i32 ptrtoint (ptr @patch_via_hdmi to i32) }, %struct.hda_device_id { i32 285646724, i32 0, i8 1, ptr @.str.81, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 285646725, i32 0, i8 1, ptr @.str.81, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138701740, i32 0, i8 1, ptr @.str.82, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691584, i32 0, i8 1, ptr @.str.83, i32 ptrtoint (ptr @patch_i915_glk_hdmi to i32) }, %struct.hda_device_id { i32 -2138691583, i32 0, i8 1, ptr @.str.84, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691582, i32 0, i8 1, ptr @.str.85, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691581, i32 0, i8 1, ptr @.str.86, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691580, i32 0, i8 1, ptr @.str.82, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691579, i32 0, i8 1, ptr @.str.87, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691578, i32 0, i8 1, ptr @.str.88, i32 ptrtoint (ptr @patch_i915_cpt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691577, i32 0, i8 1, ptr @.str.89, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691576, i32 0, i8 1, ptr @.str.90, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691575, i32 0, i8 1, ptr @.str.91, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691574, i32 0, i8 1, ptr @.str.92, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691573, i32 0, i8 1, ptr @.str.93, i32 ptrtoint (ptr @patch_i915_hsw_hdmi to i32) }, %struct.hda_device_id { i32 -2138691572, i32 0, i8 1, ptr @.str.94, i32 ptrtoint (ptr @patch_i915_glk_hdmi to i32) }, %struct.hda_device_id { i32 -2138691571, i32 0, i8 1, ptr @.str.83, i32 ptrtoint (ptr @patch_i915_glk_hdmi to i32) }, %struct.hda_device_id { i32 -2138691569, i32 0, i8 1, ptr @.str.95, i32 ptrtoint (ptr @patch_i915_icl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691566, i32 0, i8 1, ptr @.str.96, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691564, i32 0, i8 1, ptr @.str.97, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691563, i32 0, i8 1, ptr @.str.98, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691562, i32 0, i8 1, ptr @.str.99, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691559, i32 0, i8 1, ptr @.str.100, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691558, i32 0, i8 1, ptr @.str.101, i32 ptrtoint (ptr @patch_i915_icl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691557, i32 0, i8 1, ptr @.str.102, i32 ptrtoint (ptr @patch_i915_icl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691556, i32 0, i8 1, ptr @.str.103, i32 ptrtoint (ptr @patch_i915_tgl_hdmi to i32) }, %struct.hda_device_id { i32 -2138691456, i32 0, i8 1, ptr @.str.104, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 -2138691454, i32 0, i8 1, ptr @.str.105, i32 ptrtoint (ptr @patch_i915_byt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691453, i32 0, i8 1, ptr @.str.106, i32 ptrtoint (ptr @patch_i915_byt_hdmi to i32) }, %struct.hda_device_id { i32 -2138691077, i32 0, i8 1, ptr @.str.107, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id { i32 257, i32 0, i8 1, ptr @.str.108, i32 ptrtoint (ptr @patch_generic_hdmi to i32) }, %struct.hda_device_id zeroinitializer], [584 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RS600 HDMI\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RS690/780 HDMI\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R6xx HDMI\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SiI1390 HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SiI1392 HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Chrontel HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MCP73 HDMI\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MCP77/78 HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GPU 04 HDMI\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MCP79/7A HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 08 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 09 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 0a HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 0b HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MCP89 HDMI\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 0d HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 10 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 11 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 12 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 13 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 14 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 15 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 16 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 18 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 19 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 1a HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 1b HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 1c HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tegra30 HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tegra114 HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tegra124 HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Tegra210 HDMI/DP\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tegra186 HDMI/DP0\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tegra186 HDMI/DP1\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tegra194 HDMI/DP2\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tegra194 HDMI/DP3\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 40 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 41 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 42 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 43 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 44 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 45 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 50 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 51 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 52 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 60 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 61 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 62 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MCP67 HDMI\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 70 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 71 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 72 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 73 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 74 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 76 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 7b HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 7c HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 7d HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 7e HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 80 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 81 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 82 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 83 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 84 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 90 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 91 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 92 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 93 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 94 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 95 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 97 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 98 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 99 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 9a HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 9d HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 9e HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU 9f HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPU a0 HDMI/DP\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MCP67/68 HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VX900 HDMI/DP\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VX11 HDMI/DP\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IbexPeak HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Geminilake HDMI\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bearlake HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Cantiga HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Eaglelake HDMI\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CougarPoint HDMI\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PantherPoint HDMI\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Haswell HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Broadwell HDMI\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Skylake HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Broxton HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Kabylake HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cannonlake HDMI\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Icelake HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tigerlake HDMI\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DG1 HDMI\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Alderlake HDMI\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Rocketlake HDMI\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DG2 HDMI\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Jasperlake HDMI\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Elkhartlake HDMI\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Alderlake-P HDMI\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CedarTrail HDMI\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Valleyview2 HDMI\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Braswell HDMI\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Crestline HDMI\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Generic HDMI\00", [19 x i8] zeroinitializer }, align 32
@pin_id_to_pin_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.111, i32 261, ptr @.str.112, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HDMI: pin NID 0x%x not registered\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pin_id_to_pin_index\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/hda/patch_hdmi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pin_id_to_pin_index._entry_ptr = internal global ptr @pin_id_to_pin_index._entry, section ".printk_index", align 4
@hdmi_present_sense_via_verbs.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.114, ptr @.str.111, ptr @.str.115, i8 1, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hdmi_present_sense_via_verbs\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"HDMI status: Codec=%d NID=0x%x Presence_Detect=%d ELD_Valid=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sync_eld_via_acomp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.111, i32 1783, ptr @.str.118, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Monitor plugged-in, Failed to power up codec ret=[%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sync_eld_via_acomp\00", [45 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sync_eld_via_acomp._entry_ptr = internal global ptr @sync_eld_via_acomp._entry, section ".printk_index", align 4
@sync_eld_via_acomp._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.117, ptr @.str.111, i32 1791, ptr @.str.118, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Monitor plugged-out, Failed to power down codec ret=[%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@sync_eld_via_acomp._entry_ptr.121 = internal global ptr @sync_eld_via_acomp._entry.119, section ".printk_index", align 4
@silent_stream_enable.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.111, ptr @.str.123, i8 1, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"silent_stream_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hdmi: PCM already open, no silent stream\0A\00", [54 x i8] zeroinitializer }, align 32
@silent_stream_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.111, i32 1686, ptr @.str.118, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"hdmi: no free converter to enable silent mode\0A\00", [49 x i8] zeroinitializer }, align 32
@silent_stream_enable._entry_ptr = internal global ptr @silent_stream_enable._entry, section ".printk_index", align 4
@silent_stream_enable.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.111, ptr @.str.125, i8 1, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"hdmi: enabling silent stream pin-NID=0x%x cvt-NID=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@cvt_nid_to_cvt_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.111, i32 321, ptr @.str.112, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HDMI: cvt NID 0x%x not registered\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cvt_nid_to_cvt_index\00", [43 x i8] zeroinitializer }, align 32
@cvt_nid_to_cvt_index._entry_ptr = internal global ptr @cvt_nid_to_cvt_index._entry, section ".printk_index", align 4
@silent_stream_disable.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.111, ptr @.str.129, i8 1, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"silent_stream_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"HDMI: disable silent stream on pin-NID=0x%x cvt-NID=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@atihdmi_pin_hbr_setup.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.111, ptr @.str.131, i8 4, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atihdmi_pin_hbr_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"atihdmi_pin_hbr_setup: NID=0x%x, %shbr-ctl=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"new-\00", [27 x i8] zeroinitializer }, align 32
@hdmi_setup_stream.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.111, ptr @.str.135, i8 0, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hdmi_setup_stream\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hdmi_setup_stream: HBR is not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@generic_acomp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.111, i32 2701, ptr @.str.138, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"audio component disabled by module option\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"generic_acomp_init\00", [45 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@generic_acomp_init._entry_ptr = internal global ptr @generic_acomp_init._entry, section ".printk_index", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@generic_standard_hdmi_ops = internal constant { %struct.hdmi_ops, [44 x i8] } { %struct.hdmi_ops { ptr @hdmi_pin_get_eld, ptr @hdmi_pin_setup_infoframe, ptr @hdmi_pin_hbr_setup, ptr @hdmi_setup_stream, ptr null }, [44 x i8] zeroinitializer }, align 32
@alloc_generic_hdmi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&spec->pcm_lock\00", [16 x i8] zeroinitializer }, align 32
@alloc_generic_hdmi.__key.140 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&spec->bind_lock\00", [47 x i8] zeroinitializer }, align 32
@generic_hdmi_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @generic_hdmi_build_controls, ptr @generic_hdmi_build_pcms, ptr @generic_hdmi_init, ptr @generic_hdmi_free, ptr @hdmi_unsol_event, ptr null, ptr @generic_hdmi_suspend, ptr @generic_hdmi_resume, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.111, ptr @.str.143, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi_pin_setup_infoframe\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"HDMI: unknown connection type at pin NID 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.111, ptr @.str.144, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: pin NID=0x%x channels=%d ca=0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@hdmi_debug_dip_size.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.111, ptr @.str.146, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi_debug_dip_size\00", [44 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI: ELD buf size is %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hdmi_debug_dip_size.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.111, ptr @.str.147, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HDMI: DIP GP[%d] buf size is %d\0A\00", [63 x i8] zeroinitializer }, align 32
@hdmi_pin_hbr_setup.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.148, ptr @.str.111, ptr @.str.149, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi_pin_hbr_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"hdmi_pin_hbr_setup: NID=0x%x, %spinctl=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@__const.generic_hdmi_build_jack.hdmi_str = private unnamed_addr constant [32 x i8] c"HDMI/DP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",pcm=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" Phantom\00", [23 x i8] zeroinitializer }, align 32
@eld_bytes_ctl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.152, i32 0, i32 16777221, i32 0, ptr @hdmi_eld_ctl_info, ptr @hdmi_eld_ctl_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ELD\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@generic_hdmi_build_pcms.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.154, ptr @.str.111, ptr @.str.155, i8 2, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"generic_hdmi_build_pcms\00", [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi: pcm_num set to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HDMI %d\00", [24 x i8] zeroinitializer }, align 32
@generic_ops = internal constant { %struct.hda_pcm_ops, [44 x i8] } { %struct.hda_pcm_ops { ptr @hdmi_pcm_open, ptr @hdmi_pcm_close, ptr @generic_hdmi_playback_pcm_prepare, ptr @generic_hdmi_playback_pcm_cleanup, ptr null }, [44 x i8] zeroinitializer }, align 32
@hinfo_to_pcm_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.111, i32 275, ptr @.str.112, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI: hinfo %p not tied to a PCM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hinfo_to_pcm_index\00", [45 x i8] zeroinitializer }, align 32
@hinfo_to_pcm_index._entry_ptr = internal global ptr @hinfo_to_pcm_index._entry, section ".printk_index", align 4
@hinfo_to_pin_index.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.159, ptr @.str.111, ptr @.str.160, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hinfo_to_pin_index\00", [45 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"HDMI: hinfo %p (pcm %d) not registered\0A\00", [56 x i8] zeroinitializer }, align 32
@hdmi_unsol_event.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.111, ptr @.str.162, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_unsol_event\00", [47 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected HDMI event tag 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@hdmi_intrinsic_event.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.163, ptr @.str.111, ptr @.str.164, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hdmi_intrinsic_event\00", [43 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"HDMI hot plug event: Codec=%d NID=0x%x Device=%d Inactive=%d Presence_Detect=%d ELD_Valid=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@hdmi_non_intrinsic_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.111, i32 821, ptr @.str.138, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"HDMI CP event: CODEC=%d TAG=%d SUBTAG=0x%x CP_STATE=%d CP_READY=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi_non_intrinsic_event\00", [39 x i8] zeroinitializer }, align 32
@hdmi_non_intrinsic_event._entry_ptr = internal global ptr @hdmi_non_intrinsic_event._entry, section ".printk_index", align 4
@hdmi_parse_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.111, i32 1962, ptr @.str.112, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HDMI: failed to get afg sub nodes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi_parse_codec\00", [47 x i8] zeroinitializer }, align 32
@hdmi_parse_codec._entry_ptr = internal global ptr @hdmi_parse_codec._entry, section ".printk_index", align 4
@force_connect_list = internal constant { [5 x %struct.snd_pci_quirk], [48 x i8] } { [5 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 -30961, i16 -1, i32 1, ptr @.str.169 }, %struct.snd_pci_quirk { i16 4156, i16 -30950, i16 -1, i32 1, ptr @.str.169 }, %struct.snd_pci_quirk { i16 5218, i16 -4972, i16 -1, i32 1, ptr @.str.170 }, %struct.snd_pci_quirk { i16 -32634, i16 8321, i16 -1, i32 1, ptr @.str.171 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MS-7C94\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Intel NUC 10\00", [19 x i8] zeroinitializer }, align 32
@hdmi_read_pin_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.111, i32 1326, ptr @.str.112, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"HDMI: pin NID 0x%x wcaps %#x does not support connection list\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hdmi_read_pin_conn\00", [45 x i8] zeroinitializer }, align 32
@hdmi_read_pin_conn._entry_ptr = internal global ptr @hdmi_read_pin_conn._entry, section ".printk_index", align 4
@generic_hdmi_init_per_pins.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&per_pin->lock\00", [17 x i8] zeroinitializer }, align 32
@generic_hdmi_init_per_pins.__key.175 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.176 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&per_pin->work)->work)\00", [53 x i8] zeroinitializer }, align 32
@generic_hdmi_init_per_pins.__key.177 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&per_pin->work)->timer\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eld#%d.%d\00", [22 x i8] zeroinitializer }, align 32
@simple_pcm_playback = internal constant { %struct.hda_pcm_stream, [32 x i8] } { %struct.hda_pcm_stream { i32 1, i32 2, i32 2, i16 0, i32 0, i64 0, i32 0, ptr null, %struct.hda_pcm_ops { ptr @simple_playback_pcm_open, ptr @simple_playback_pcm_close, ptr @simple_playback_pcm_prepare, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@simple_hdmi_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @simple_playback_build_controls, ptr @simple_playback_build_pcms, ptr @simple_playback_init, ptr @simple_playback_free, ptr @simple_hdmi_unsol_event, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hw_constraints_2_8_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @channels_2_8, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_2_6_8_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @channels_2_6_8, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@channels_2_8 = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 8], [24 x i8] zeroinitializer }, align 32
@channels_2_6_8 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 6, i32 8], [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HDMI 0\00", [25 x i8] zeroinitializer }, align 32
@nvhdmi_basic_init_7x_2ch = internal constant { [3 x %struct.hda_verb], [60 x i8] } { [3 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3992, i32 1 }, %struct.hda_verb { i16 5, i32 1799, i32 69 }, %struct.hda_verb zeroinitializer], [60 x i8] zeroinitializer }, align 32
@nvhdmi_pcm_playback_8ch_7x = internal constant { %struct.hda_pcm_stream, [32 x i8] } { %struct.hda_pcm_stream { i32 1, i32 2, i32 8, i16 4, i32 7904, i64 1028, i32 24, ptr null, %struct.hda_pcm_ops { ptr @simple_playback_pcm_open, ptr @nvhdmi_8ch_7x_pcm_close, ptr @nvhdmi_8ch_7x_pcm_prepare, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@nvhdmi_con_nids_7x = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 6, i16 8, i16 10, i16 12], [24 x i8] zeroinitializer }, align 32
@nvhdmi_basic_init_7x_8ch = internal constant { [7 x %struct.hda_verb], [44 x i8] } { [7 x %struct.hda_verb] [%struct.hda_verb { i16 1, i32 3992, i32 1 }, %struct.hda_verb { i16 5, i32 1799, i32 69 }, %struct.hda_verb { i16 7, i32 1799, i32 69 }, %struct.hda_verb { i16 9, i32 1799, i32 69 }, %struct.hda_verb { i16 11, i32 1799, i32 69 }, %struct.hda_verb { i16 13, i32 1799, i32 69 }, %struct.hda_verb zeroinitializer], [44 x i8] zeroinitializer }, align 32
@snd_pcm_alt_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@alloc_intel_hdmi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.111, i32 2915, ptr @.str.138, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No i915 binding for Intel HDMI/DP codec\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc_intel_hdmi\00", [47 x i8] zeroinitializer }, align 32
@alloc_intel_hdmi._entry_ptr = internal global ptr @alloc_intel_hdmi._entry, section ".printk_index", align 4
@intel_pin2port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.111, i32 2820, ptr @.str.138, ptr @.str.113 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can't find the HDMI/DP port for pin NID 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel_pin2port\00", [17 x i8] zeroinitializer }, align 32
@intel_pin2port._entry_ptr = internal global ptr @intel_pin2port._entry, section ".printk_index", align 4
@haswell_verify_D0.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.185, ptr @.str.111, ptr @.str.186, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"haswell_verify_D0\00", [46 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Haswell HDMI audio: Power for NID 0x%x is now D%d\0A\00", [45 x i8] zeroinitializer }, align 32
@intel_not_share_assigned_cvt.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.187, ptr @.str.111, ptr @.str.188, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"intel_not_share_assigned_cvt\00", [35 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"choose cvt %d for pin NID 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@patch_i915_icl_hdmi.map = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 4, i32 6, i32 8, i32 10, i32 11], [40 x i8] zeroinitializer }, align 32
@patch_i915_tgl_hdmi.map = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 4, i32 6, i32 8, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [60 x i8] zeroinitializer }, align 32
@switch.table.simple_playback_pcm_open = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_6_8_channels], [40 x i8] zeroinitializer }, align 32
@switch.table.nvhdmi_7x_8ch_build_controls = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 260, i32 260, i32 260, i32 260, i32 260, i32 324], [40 x i8] zeroinitializer }, align 32
@switch.table.nvhdmi_8ch_7x_pcm_prepare = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 0, i32 11, i32 0, i32 19], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 2156265556, i64 2156275716, i64 2156275842]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 2156265556, i64 2156275716, i64 2156275842]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 2156265556, i64 2156275716, i64 2156275842]
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"static_hdmi_pcm\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 37, i32 13 }
@___asan_gen_.201 = private unnamed_addr constant [13 x i8] c"enable_acomp\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 41, i32 13 }
@___asan_gen_.204 = private unnamed_addr constant [21 x i8] c"enable_silent_stream\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 45, i32 13 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"enable_all_pins\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 50, i32 13 }
@___asan_gen_.210 = private unnamed_addr constant [12 x i8] c"hdmi_driver\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4413, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4417, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"snd_hda_id_hdmi\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4283, i32 35 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4284, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4286, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4287, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4288, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4289, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4290, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4291, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4292, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4294, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4297, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4298, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4299, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4300, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4301, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4302, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4303, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4304, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4305, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4306, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4307, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4308, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4309, i32 1 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4310, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4312, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4313, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4314, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4315, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4316, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4317, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4318, i32 1 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4319, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4320, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4321, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4322, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4323, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4324, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4325, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4326, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4327, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4328, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4329, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4330, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4331, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4332, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4333, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4334, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4335, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4336, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4337, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4338, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4339, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4340, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4341, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4342, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4343, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4344, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4345, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4346, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4347, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4348, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4349, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4350, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4351, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4352, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4353, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4354, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4355, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4356, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4357, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4358, i32 1 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4359, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4360, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4361, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4362, i32 1 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4363, i32 1 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4364, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4365, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4366, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4368, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4369, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4371, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4373, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4374, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4375, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4376, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4377, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4379, i32 1 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4380, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4381, i32 1 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4382, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4383, i32 1 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4384, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4385, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4386, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4388, i32 1 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4389, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4390, i32 1 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4391, i32 1 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4392, i32 1 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4393, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4394, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4395, i32 1 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4396, i32 1 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4397, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4398, i32 1 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4399, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4400, i32 1 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4402, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 261, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1646, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1781, i32 5 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1789, i32 5 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1679, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1686, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1695, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 321, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1735, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 4136, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 938, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2701, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant [26 x i8] c"generic_standard_hdmi_ops\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2528, i32 30 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2547, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2548, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [23 x i8] c"generic_hdmi_patch_ops\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2516, i32 35 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 695, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 708, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 573, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 578, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 910, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2309, i32 40 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2312, i32 21 }
@___asan_gen_.693 = private unnamed_addr constant [14 x i8] c"eld_bytes_ctl\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 391, i32 38 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 395, i32 10 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 375, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2265, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2271, i32 39 }
@___asan_gen_.711 = private unnamed_addr constant [12 x i8] c"generic_ops\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2188, i32 33 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 275, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 293, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 852, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 800, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 815, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1962, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant [19 x i8] c"force_connect_list\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1944, i32 35 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1945, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1947, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1948, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1324, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2403, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2404, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 509, i32 31 }
@___asan_gen_.801 = private unnamed_addr constant [20 x i8] c"simple_pcm_playback\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3292, i32 36 }
@___asan_gen_.804 = private unnamed_addr constant [22 x i8] c"simple_hdmi_patch_ops\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3303, i32 35 }
@___asan_gen_.807 = private unnamed_addr constant [28 x i8] c"hw_constraints_2_8_channels\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3234, i32 48 }
@___asan_gen_.810 = private unnamed_addr constant [30 x i8] c"hw_constraints_2_6_8_channels\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3228, i32 48 }
@___asan_gen_.813 = private unnamed_addr constant [13 x i8] c"channels_2_8\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3224, i32 27 }
@___asan_gen_.816 = private unnamed_addr constant [15 x i8] c"channels_2_6_8\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3220, i32 27 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3089, i32 38 }
@___asan_gen_.822 = private unnamed_addr constant [25 x i8] c"nvhdmi_basic_init_7x_2ch\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3172, i32 30 }
@___asan_gen_.825 = private unnamed_addr constant [27 x i8] c"nvhdmi_pcm_playback_8ch_7x\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3505, i32 36 }
@___asan_gen_.828 = private unnamed_addr constant [19 x i8] c"nvhdmi_con_nids_7x\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3167, i32 24 }
@___asan_gen_.831 = private unnamed_addr constant [25 x i8] c"nvhdmi_basic_init_7x_8ch\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3180, i32 30 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2915, i32 3 }
@___asan_gen_.843 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 2820, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 879, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1125, i32 5 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3012, i32 19 }
@___asan_gen_.867 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@___asan_gen_.868 = private constant [30 x i8] c"../sound/pci/hda/patch_hdmi.c\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 3024, i32 19 }
@___asan_gen_.870 = private unnamed_addr constant [38 x i8] c"switch.table.simple_playback_pcm_open\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [42 x i8] c"switch.table.nvhdmi_7x_8ch_build_controls\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [39 x i8] c"switch.table.nvhdmi_8ch_7x_pcm_prepare\00", align 1
@llvm.compiler.used = appending global [260 x ptr] [ptr @__UNIQUE_ID_alias277, ptr @__UNIQUE_ID_alias278, ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_enable_acomp246, ptr @__UNIQUE_ID_enable_acomptype245, ptr @__UNIQUE_ID_enable_all_pins250, ptr @__UNIQUE_ID_enable_all_pinstype249, ptr @__UNIQUE_ID_enable_silent_stream248, ptr @__UNIQUE_ID_enable_silent_streamtype247, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__UNIQUE_ID_static_hdmi_pcm244, ptr @__UNIQUE_ID_static_hdmi_pcmtype243, ptr @__exitcall_hdmi_driver_exit, ptr @__initcall__kmod_snd_hda_codec_hdmi__280_4417_hdmi_driver_init6, ptr @__param_enable_acomp, ptr @__param_enable_all_pins, ptr @__param_enable_silent_stream, ptr @__param_static_hdmi_pcm, ptr @alloc_intel_hdmi._entry, ptr @alloc_intel_hdmi._entry_ptr, ptr @cvt_nid_to_cvt_index._entry, ptr @cvt_nid_to_cvt_index._entry_ptr, ptr @generic_acomp_init._entry, ptr @generic_acomp_init._entry_ptr, ptr @hdmi_driver_exit, ptr @hdmi_non_intrinsic_event._entry, ptr @hdmi_non_intrinsic_event._entry_ptr, ptr @hdmi_parse_codec._entry, ptr @hdmi_parse_codec._entry_ptr, ptr @hdmi_read_pin_conn._entry, ptr @hdmi_read_pin_conn._entry_ptr, ptr @hinfo_to_pcm_index._entry, ptr @hinfo_to_pcm_index._entry_ptr, ptr @intel_pin2port._entry, ptr @intel_pin2port._entry_ptr, ptr @pin_id_to_pin_index._entry, ptr @pin_id_to_pin_index._entry_ptr, ptr @silent_stream_enable._entry, ptr @silent_stream_enable._entry_ptr, ptr @sync_eld_via_acomp._entry, ptr @sync_eld_via_acomp._entry.119, ptr @sync_eld_via_acomp._entry_ptr, ptr @sync_eld_via_acomp._entry_ptr.121, ptr @static_hdmi_pcm, ptr @enable_acomp, ptr @enable_silent_stream, ptr @enable_all_pins, ptr @hdmi_driver, ptr @.str, ptr @snd_hda_id_hdmi, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @generic_standard_hdmi_ops, ptr @alloc_generic_hdmi.__key, ptr @.str.139, ptr @alloc_generic_hdmi.__key.140, ptr @.str.141, ptr @generic_hdmi_patch_ops, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @eld_bytes_ctl, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @generic_ops, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @force_connect_list, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @generic_hdmi_init_per_pins.__key, ptr @.str.174, ptr @generic_hdmi_init_per_pins.__key.175, ptr @.str.176, ptr @generic_hdmi_init_per_pins.__key.177, ptr @.str.178, ptr @.str.179, ptr @simple_pcm_playback, ptr @simple_hdmi_patch_ops, ptr @hw_constraints_2_8_channels, ptr @hw_constraints_2_6_8_channels, ptr @channels_2_8, ptr @channels_2_6_8, ptr @.str.180, ptr @nvhdmi_basic_init_7x_2ch, ptr @nvhdmi_pcm_playback_8ch_7x, ptr @nvhdmi_con_nids_7x, ptr @nvhdmi_basic_init_7x_8ch, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @patch_i915_icl_hdmi.map, ptr @patch_i915_tgl_hdmi.map, ptr @switch.table.simple_playback_pcm_open, ptr @switch.table.nvhdmi_7x_8ch_build_controls, ptr @switch.table.nvhdmi_8ch_7x_pcm_prepare], section "llvm.metadata"
@0 = internal global [227 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_hdmi_pcm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_acomp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_silent_stream to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_all_pins to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_hdmi to i32), i32 2360, i32 2944, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pin_id_to_pin_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_eld_via_acomp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_eld_via_acomp._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silent_stream_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvt_nid_to_cvt_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_acomp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_standard_hdmi_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_generic_hdmi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_generic_hdmi.__key.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_hdmi_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eld_bytes_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hinfo_to_pcm_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_non_intrinsic_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_parse_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_connect_list to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_read_pin_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_hdmi_init_per_pins.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_hdmi_init_per_pins.__key.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_hdmi_init_per_pins.__key.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_pcm_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_hdmi_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_2_8_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_2_6_8_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels_2_8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels_2_6_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvhdmi_basic_init_7x_2ch to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvhdmi_pcm_playback_8ch_7x to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvhdmi_con_nids_7x to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvhdmi_basic_init_7x_8ch to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_intel_hdmi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_pin2port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_i915_icl_hdmi.map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @patch_i915_tgl_hdmi.map to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.simple_playback_pcm_open to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvhdmi_7x_8ch_build_controls to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvhdmi_8ch_7x_pcm_prepare to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @hdmi_driver, ptr noundef nonnull @.str, ptr noundef null) #18
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @hdmi_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_atihdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @patch_generic_hdmi(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %init = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @atihdmi_init, ptr %init, align 8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec1, align 8
  %ops = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @atihdmi_pin_get_eld, ptr %ops, align 8
  %pin_setup_infoframe = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %pin_setup_infoframe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @atihdmi_pin_setup_infoframe, ptr %pin_setup_infoframe, align 4
  %pin_hbr_setup = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 15, i32 2
  %5 = ptrtoint ptr %pin_hbr_setup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @atihdmi_pin_hbr_setup, ptr %pin_hbr_setup, align 8
  %setup_stream = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 15, i32 3
  %6 = ptrtoint ptr %setup_stream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @atihdmi_setup_stream, ptr %setup_stream, align 4
  %chmap = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27
  %ops5 = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27, i32 1
  %pin_get_slot_channel = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27, i32 1, i32 7
  %7 = ptrtoint ptr %pin_get_slot_channel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @atihdmi_pin_get_slot_channel, ptr %pin_get_slot_channel, align 4
  %pin_set_slot_channel = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27, i32 1, i32 8
  %8 = ptrtoint ptr %pin_set_slot_channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @atihdmi_pin_set_slot_channel, ptr %pin_set_slot_channel, align 4
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %9 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268610049, i32 %10)
  %cmp = icmp eq i32 %10, 268610049
  br i1 %cmp, label %land.lhs.true, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

land.lhs.true:                                    ; preds = %if.end
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 9
  %11 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %revision_id, align 8
  %and = and i32 %12, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %and)
  %cmp9 = icmp ugt i32 %and, 767
  br i1 %cmp9, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.if.then10_crit_edge

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then10

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.then10:                                        ; preds = %land.lhs.true.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %13 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @atihdmi_paired_chmap_cea_alloc_validate_get_type, ptr %ops5, align 4
  %cea_alloc_to_tlv_chmap = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27, i32 1, i32 1
  %14 = ptrtoint ptr %cea_alloc_to_tlv_chmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @atihdmi_paired_cea_alloc_to_tlv_chmap, ptr %cea_alloc_to_tlv_chmap, align 4
  %chmap_validate = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27, i32 1, i32 2
  %15 = ptrtoint ptr %chmap_validate to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @atihdmi_paired_chmap_validate, ptr %chmap_validate, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %land.lhs.true.if.end17_crit_edge
  %num_cvts = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %num_cvts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cvts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1878 = icmp sgt i32 %17, 0
  br i1 %cmp1878, label %for.body.lr.ph, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 2, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cvt_idx.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list.i, align 4
  %20 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %21, %cvt_idx.079
  %add.ptr.i = getelementptr i8, ptr %19, i32 %mul.i
  %channels_max = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 3
  %22 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels_max, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 8)
  %25 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %channels_max, align 4
  %rates = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 4
  %26 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rates, align 8
  %or = or i32 %27, 7904
  store i32 %or, ptr %rates, align 8
  %formats = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 5
  %28 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %formats, align 8
  %or22 = or i64 %29, 1028
  store i64 %or22, ptr %formats, align 8
  %maxbps = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 6
  %30 = ptrtoint ptr %maxbps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxbps, align 8
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 24)
  %33 = ptrtoint ptr %maxbps to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %maxbps, align 8
  %inc = add nuw nsw i32 %cvt_idx.079, 1
  %34 = ptrtoint ptr %num_cvts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_cvts, align 4
  %cmp18 = icmp slt i32 %inc, %35
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end17.for.end_crit_edge
  %36 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chmap, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 8)
  %39 = ptrtoint ptr %chmap to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %chmap, align 4
  %link_down_at_suspend = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %40 = ptrtoint ptr %link_down_at_suspend to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load = load i32, ptr %link_down_at_suspend, align 4
  %bf.set = or i32 %bf.load, 2048
  store i32 %bf.set, ptr %link_down_at_suspend, align 4
  %41 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spec1, align 8
  %43 = load i8, ptr @enable_acomp, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.136) #21
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %port2pin2.i = getelementptr inbounds %struct.hdmi_spec, ptr %42, i32 0, i32 26
  %44 = ptrtoint ptr %port2pin2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @atihdmi_port2pin, ptr %port2pin2.i, align 8
  %45 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spec1, align 8
  %drm_audio_ops.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %drm_audio_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %codec, ptr %drm_audio_ops.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !481
  tail call void @arm_heavy_mb() #18
  %pin2port3.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %46, i32 0, i32 25, i32 2
  %48 = ptrtoint ptr %pin2port3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @atihdmi_pin2port, ptr %pin2port3.i.i, align 4
  %pin_eld_notify5.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %46, i32 0, i32 25, i32 1
  %49 = ptrtoint ptr %pin_eld_notify5.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @generic_acomp_pin_eld_notify, ptr %pin_eld_notify5.i.i, align 4
  %master_bind7.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %46, i32 0, i32 25, i32 3
  %50 = ptrtoint ptr %master_bind7.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @generic_acomp_master_bind, ptr %master_bind7.i.i, align 4
  %master_unbind9.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %46, i32 0, i32 25, i32 4
  %51 = ptrtoint ptr %master_unbind9.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @generic_acomp_master_unbind, ptr %master_unbind9.i.i, align 4
  %bus.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %drm_audio_ops.i = getelementptr inbounds %struct.hdmi_spec, ptr %42, i32 0, i32 25
  %call.i = tail call i32 @snd_hdac_acomp_init(ptr noundef %53, ptr noundef %drm_audio_ops.i, ptr noundef nonnull @match_bound_vga, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %acomp_registered.i = getelementptr inbounds %struct.hdmi_spec, ptr %42, i32 0, i32 23
  %54 = ptrtoint ptr %acomp_registered.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %acomp_registered.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_generic_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1448) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %codec, ptr %call7.i.i.i, align 8
  %ops.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %ops.i, ptr @generic_standard_hdmi_ops, i32 20)
  %dev_num.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %dev_num.i, align 4
  %pcm_lock.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %pcm_lock.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @alloc_generic_hdmi.__key) #18
  %bind_lock.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %bind_lock.i, ptr noundef nonnull @.str.141, ptr noundef nonnull @alloc_generic_hdmi.__key.140) #18
  %chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27
  tail call void @snd_hdac_register_chmap_ops(ptr noundef %codec, ptr noundef %chmap.i) #18
  %get_chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 4
  %4 = ptrtoint ptr %get_chmap.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hdmi_get_chmap, ptr %get_chmap.i, align 8
  %set_chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 5
  %5 = ptrtoint ptr %set_chmap.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hdmi_set_chmap, ptr %set_chmap.i, align 4
  %is_pcm_attached.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 6
  %6 = ptrtoint ptr %is_pcm_attached.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @is_hdmi_pcm_attached, ptr %is_pcm_attached.i, align 8
  %get_spk_alloc.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 3
  %7 = ptrtoint ptr %get_spk_alloc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hdmi_get_spk_alloc, ptr %get_spk_alloc.i, align 4
  %spec13.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %8 = ptrtoint ptr %spec13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %spec13.i, align 8
  %elem_size.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1048, ptr %elem_size.i.i.i, align 8
  %alloc_align.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %alloc_align.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %alloc_align.i.i.i, align 4
  %elem_size.i3.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %elem_size.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 40, ptr %elem_size.i3.i.i, align 8
  %alloc_align.i4.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %alloc_align.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %alloc_align.i4.i.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %patch_ops.i, ptr @generic_hdmi_patch_ops, i32 40)
  %call1 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %14 = ptrtoint ptr %spec13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec13.i, align 8
  %tobool.not.i12 = icmp eq ptr %15, null
  br i1 %tobool.not.i12, label %if.then3.generic_spec_free.exit_crit_edge, label %if.then.i

if.then3.generic_spec_free.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %generic_spec_free.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %pins.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %15, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %pins.i.i) #18
  %cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %15, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %cvts.i.i) #18
  tail call void @kfree(ptr noundef nonnull %15) #18
  %16 = ptrtoint ptr %spec13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %spec13.i, align 8
  br label %generic_spec_free.exit

generic_spec_free.exit:                           ; preds = %if.then.i, %if.then3.generic_spec_free.exit_crit_edge
  %dp_mst.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %17 = ptrtoint ptr %dp_mst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i = load i32, ptr %dp_mst.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -65537
  store i32 %bf.clear.i, ptr %dp_mst.i, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @generic_hdmi_init_per_pins(ptr noundef %codec)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %generic_spec_free.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %generic_spec_free.exit ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi_2ch(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @patch_simple_hdmi(ptr noundef %codec, i16 noundef zeroext 4, i16 noundef zeroext 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %init = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nvhdmi_7x_init_2ch, ptr %init, align 8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec1, align 8
  %rates = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 21, i32 4
  %3 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7904, ptr %rates, align 8
  %maxbps = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 21, i32 6
  %4 = ptrtoint ptr %maxbps to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %maxbps, align 8
  %formats = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 21, i32 5
  %5 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1028, ptr %formats, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi_8ch_7x(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @patch_simple_hdmi(ptr noundef %codec, i16 noundef zeroext 4, i16 noundef zeroext 5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %init.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 2
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %rates.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 21, i32 4
  %2 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7904, ptr %rates.i, align 8
  %maxbps.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 21, i32 6
  %3 = ptrtoint ptr %maxbps.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %maxbps.i, align 8
  %formats.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 21, i32 5
  %4 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1028, ptr %formats.i, align 8
  %5 = load ptr, ptr %spec1.i, align 8
  %max_channels = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 20, i32 7
  %6 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %max_channels, align 4
  %pcm_playback = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 21
  %7 = call ptr @memcpy(ptr %pcm_playback, ptr @nvhdmi_pcm_playback_8ch_7x, i32 64)
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %8 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvhdmi_7x_init_8ch, ptr %init.i, align 8
  %build_pcms = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %build_pcms to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nvhdmi_7x_8ch_build_pcms, ptr %build_pcms, align 4
  %10 = ptrtoint ptr %patch_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvhdmi_7x_8ch_build_controls, ptr %patch_ops, align 8
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3961, i32 noundef 19) #18
  %call.i11.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3962, i32 noundef 87) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi_legacy(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @patch_generic_hdmi(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %dyn_pin_out = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %dyn_pin_out to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dyn_pin_out, align 4
  %ops = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 27, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvhdmi_chmap_cea_alloc_validate_get_type, ptr %ops, align 4
  %chmap_validate = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 27, i32 1, i32 2
  %4 = ptrtoint ptr %chmap_validate to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nvhdmi_chmap_validate, ptr %chmap_validate, align 4
  %link_down_at_suspend = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %5 = ptrtoint ptr %link_down_at_suspend to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %link_down_at_suspend, align 4
  %bf.set = or i32 %bf.load, 2048
  store i32 %bf.set, ptr %link_down_at_suspend, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_tegra_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @patch_generic_hdmi(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %build_pcms = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %build_pcms to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tegra_hdmi_build_pcms, ptr %build_pcms, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec1, align 8
  %ops = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvhdmi_chmap_cea_alloc_validate_get_type, ptr %ops, align 4
  %chmap_validate = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 27, i32 1, i32 2
  %4 = ptrtoint ptr %chmap_validate to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nvhdmi_chmap_validate, ptr %chmap_validate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_nvhdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1448) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %codec, ptr %call7.i.i.i, align 8
  %ops.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 15
  %2 = call ptr @memcpy(ptr %ops.i, ptr @generic_standard_hdmi_ops, i32 20)
  %dev_num.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %dev_num.i, align 4
  %pcm_lock.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %pcm_lock.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @alloc_generic_hdmi.__key) #18
  %bind_lock.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %bind_lock.i, ptr noundef nonnull @.str.141, ptr noundef nonnull @alloc_generic_hdmi.__key.140) #18
  %chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27
  tail call void @snd_hdac_register_chmap_ops(ptr noundef %codec, ptr noundef %chmap.i) #18
  %get_chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 4
  %4 = ptrtoint ptr %get_chmap.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hdmi_get_chmap, ptr %get_chmap.i, align 8
  %set_chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 5
  %5 = ptrtoint ptr %set_chmap.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hdmi_set_chmap, ptr %set_chmap.i, align 4
  %is_pcm_attached.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 6
  %6 = ptrtoint ptr %is_pcm_attached.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @is_hdmi_pcm_attached, ptr %is_pcm_attached.i, align 8
  %get_spk_alloc.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 3
  %7 = ptrtoint ptr %get_spk_alloc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hdmi_get_spk_alloc, ptr %get_spk_alloc.i, align 4
  %spec13.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %8 = ptrtoint ptr %spec13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %spec13.i, align 8
  %elem_size.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1048, ptr %elem_size.i.i.i, align 8
  %alloc_align.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %alloc_align.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %alloc_align.i.i.i, align 4
  %elem_size.i3.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %elem_size.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 40, ptr %elem_size.i3.i.i, align 8
  %alloc_align.i4.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %alloc_align.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %alloc_align.i4.i.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %patch_ops.i, ptr @generic_hdmi_patch_ops, i32 40)
  %dp_mst = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %14 = ptrtoint ptr %dp_mst to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %dp_mst, align 4
  %bf.set = or i32 %bf.load, 65536
  store i32 %bf.set, ptr %dp_mst, align 4
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %dyn_pcm_assign, align 1
  %call2 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %16 = ptrtoint ptr %spec13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spec13.i, align 8
  %tobool.not.i26 = icmp eq ptr %17, null
  br i1 %tobool.not.i26, label %if.then4.generic_spec_free.exit_crit_edge, label %if.then.i

if.then4.generic_spec_free.exit_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %generic_spec_free.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %pins.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %17, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %pins.i.i) #18
  %cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %17, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %cvts.i.i) #18
  tail call void @kfree(ptr noundef nonnull %17) #18
  %18 = ptrtoint ptr %spec13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %spec13.i, align 8
  br label %generic_spec_free.exit

generic_spec_free.exit:                           ; preds = %if.then.i, %if.then4.generic_spec_free.exit_crit_edge
  %19 = ptrtoint ptr %dp_mst to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i = load i32, ptr %dp_mst, align 4
  %bf.clear.i = and i32 %bf.load.i, -65537
  store i32 %bf.clear.i, ptr %dp_mst, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call fastcc void @generic_hdmi_init_per_pins(ptr noundef %codec)
  %dyn_pin_out = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %dyn_pin_out to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %dyn_pin_out, align 4
  %ops = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nvhdmi_chmap_cea_alloc_validate_get_type, ptr %ops, align 8
  %chmap_validate = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 2
  %22 = ptrtoint ptr %chmap_validate to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nvhdmi_chmap_validate, ptr %chmap_validate, align 8
  %23 = ptrtoint ptr %dp_mst to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load9 = load i32, ptr %dp_mst, align 4
  %bf.set11 = or i32 %bf.load9, 2048
  store i32 %bf.set11, ptr %dp_mst, align 4
  %24 = ptrtoint ptr %spec13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spec13.i, align 8
  %26 = load i8, ptr @enable_acomp, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i29 = icmp eq i8 %26, 0
  br i1 %tobool.not.i29, label %do.end.i, label %if.end.i30

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.136) #21
  br label %cleanup

if.end.i30:                                       ; preds = %if.end5
  %port2pin2.i = getelementptr inbounds %struct.hdmi_spec, ptr %25, i32 0, i32 26
  %27 = ptrtoint ptr %port2pin2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nvhdmi_port2pin, ptr %port2pin2.i, align 8
  %28 = ptrtoint ptr %spec13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spec13.i, align 8
  %drm_audio_ops.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %drm_audio_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %codec, ptr %drm_audio_ops.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !481
  tail call void @arm_heavy_mb() #18
  %pin2port3.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 25, i32 2
  %31 = ptrtoint ptr %pin2port3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @nvhdmi_pin2port, ptr %pin2port3.i.i, align 4
  %pin_eld_notify5.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 25, i32 1
  %32 = ptrtoint ptr %pin_eld_notify5.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @generic_acomp_pin_eld_notify, ptr %pin_eld_notify5.i.i, align 4
  %master_bind7.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 25, i32 3
  %33 = ptrtoint ptr %master_bind7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @generic_acomp_master_bind, ptr %master_bind7.i.i, align 4
  %master_unbind9.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %29, i32 0, i32 25, i32 4
  %34 = ptrtoint ptr %master_unbind9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @generic_acomp_master_unbind, ptr %master_unbind9.i.i, align 4
  %bus.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %35 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus.i, align 8
  %drm_audio_ops.i = getelementptr inbounds %struct.hdmi_spec, ptr %25, i32 0, i32 25
  %call.i = tail call i32 @snd_hdac_acomp_init(ptr noundef %36, ptr noundef %drm_audio_ops.i, ptr noundef nonnull @match_bound_vga, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i30.cleanup_crit_edge

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #20
  %acomp_registered.i = getelementptr inbounds %struct.hdmi_spec, ptr %25, i32 0, i32 23
  %37 = ptrtoint ptr %acomp_registered.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %acomp_registered.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i30.cleanup_crit_edge, %do.end.i, %generic_spec_free.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %generic_spec_free.exit ], [ 0, %do.end.i ], [ 0, %if.end.i30.cleanup_crit_edge ], [ 0, %if.then5.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_via_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @patch_simple_hdmi(ptr noundef %codec, i16 noundef zeroext 2, i16 noundef zeroext 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_i915_cpt_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_intel_hdmi(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call fastcc i32 @parse_intel_hdmi(ptr noundef %codec)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_i915_glk_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %codec, i16 noundef zeroext 11, ptr noundef null, i32 noundef 0, i32 noundef 3, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_i915_hsw_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_silent_stream, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  %call = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %codec, i16 noundef zeroext 8, ptr noundef null, i32 noundef 0, i32 noundef 3, i1 noundef zeroext %tobool)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_i915_icl_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_silent_stream, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  %call = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %codec, i16 noundef zeroext 2, ptr noundef nonnull @patch_i915_icl_hdmi.map, i32 noundef 6, i32 noundef 3, i1 noundef zeroext %tobool)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_i915_tgl_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_silent_stream, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  %call = tail call fastcc i32 @intel_hsw_common_init(ptr noundef %codec, i16 noundef zeroext 2, ptr noundef nonnull @patch_i915_tgl_hdmi.map, i32 noundef 9, i32 noundef 4, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec2, align 8
  %dyn_pcm_no_legacy = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %dyn_pcm_no_legacy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dyn_pcm_no_legacy, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_i915_byt_hdmi(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_intel_hdmi(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %display_power_control = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %display_power_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %display_power_control, align 4
  %depop_delay = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 40
  %3 = ptrtoint ptr %depop_delay to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %depop_delay, align 8
  %bf.set4 = or i32 %bf.load, 268443648
  store i32 %bf.set4, ptr %display_power_control, align 4
  %pin_cvt_fixup = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %pin_cvt_fixup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @i915_pin_cvt_fixup, ptr %pin_cvt_fixup, align 8
  %call5 = tail call fastcc i32 @parse_intel_hdmi(ptr noundef %codec)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call = tail call i32 @generic_hdmi_init(ptr noundef %codec)
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25 = icmp sgt i32 %3, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %pin_idx.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %6 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %7, %pin_idx.026
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 8
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 1906, i32 noundef 0) #18
  %10 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268610049, i32 %11)
  %cmp4 = icmp eq i32 %11, 268610049
  br i1 %cmp4, label %land.lhs.true, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %12 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision_id, align 8
  %and = and i32 %13, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %and)
  %cmp6 = icmp ugt i32 %and, 767
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 8
  %call.i24 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %15, i32 noundef 0, i32 noundef 1929, i32 noundef 1) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %inc = add nuw nsw i32 %pin_idx.026, 1
  %16 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %entry.for.end_crit_edge
  %auto_runtime_pm = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %18 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %auto_runtime_pm, align 4
  %bf.set = or i32 %bf.load, 8192
  store i32 %bf.set, ptr %auto_runtime_pm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_get_eld(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %dev_id, ptr noundef %buf, ptr noundef %eld_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_id)
  %cmp.not = icmp eq i32 %dev_id, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !482

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 3922, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268610049, i32 %1)
  %cmp19 = icmp eq i32 %1, 268610049
  br i1 %cmp19, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 9
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision_id, align 8
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %and)
  %cmp21 = icmp ugt i32 %and, 767
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %4 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %cmp21, %land.rhs ]
  %call = tail call i32 @snd_hdmi_get_eld_ati(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %buf, ptr noundef %eld_size, i1 noundef zeroext %4) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atihdmi_pin_setup_infoframe(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %ca, i32 noundef %active_channels, i32 noundef %conn_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_id)
  %cmp.not = icmp eq i32 %dev_id, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !482

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 3932, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1905, i32 noundef %ca) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_hbr_setup(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i1 noundef zeroext %hbr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_id)
  %cmp.not = icmp eq i32 %dev_id, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !482

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 4127, i32 noundef 9, ptr noundef null) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3964, i32 noundef 0) #18
  %0 = and i32 %call.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %if.then21, label %if.else48

if.then21:                                        ; preds = %if.end
  %and24 = and i32 %call.i, -17
  %masksel = select i1 %hbr, i32 16, i32 0
  %hbr_ctl_new.0 = or i32 %and24, %masksel
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atihdmi_pin_hbr_setup.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atihdmi_pin_hbr_setup, %if.then37)) #18
          to label %do.end42 [label %if.then37], !srcloc !483

if.then37:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i16 %pin_nid to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %hbr_ctl_new.0)
  %cmp38 = icmp eq i32 %call.i, %hbr_ctl_new.0
  %cond = select i1 %cmp38, ptr @.str.132, ptr @.str.133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atihdmi_pin_hbr_setup.__UNIQUE_ID_ddebug267, ptr noundef %codec, ptr noundef nonnull @.str.131, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %hbr_ctl_new.0) #18
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %if.then21
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %hbr_ctl_new.0)
  %cmp43.not = icmp eq i32 %call.i, %hbr_ctl_new.0
  br i1 %cmp43.not, label %do.end42.if.end52_crit_edge, label %if.then45

do.end42.if.end52_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.then45:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #20
  %call.i68 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1916, i32 noundef %hbr_ctl_new.0) #18
  br label %if.end52

if.else48:                                        ; preds = %if.end
  br i1 %hbr, label %if.else48.cleanup_crit_edge, label %if.else48.if.end52_crit_edge

if.else48.if.end52_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end52

if.else48.cleanup_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end52:                                         ; preds = %if.else48.if.end52_crit_edge, %if.then45, %do.end42.if.end52_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.else48.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -22, %if.else48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_setup_stream(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %stream_tag, i32 noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268610049, i32 %1)
  %cmp = icmp eq i32 %1, 268610049
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 9
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision_id, align 8
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %and)
  %cmp2 = icmp ugt i32 %and, 767
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %and3 = and i32 %format, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %spec.store.select = select i1 %tobool.not, i32 180, i32 0
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i32 noundef 0, i32 noundef 1904, i32 noundef %spec.store.select) #18
  br label %if.end5

if.end5:                                          ; preds = %if.then, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @hdmi_setup_stream(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %stream_tag, i32 noundef %format)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_get_slot_channel(ptr noundef %hdac, i16 noundef zeroext %pin_nid, i32 noundef %asp_slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %asp_slot)
  %cmp = icmp sgt i32 %asp_slot, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %hdac, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268610049, i32 %1)
  %cmp1 = icmp eq i32 %1, 268610049
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4

land.lhs.true:                                    ; preds = %if.end
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %hdac, i32 0, i32 9
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision_id, align 8
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %and)
  %cmp3 = icmp ugt i32 %and, 767
  br i1 %cmp3, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.if.then4_crit_edge

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %4 = zext i32 %asp_slot to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asp_slot, label %sw.epilog.i [
    i32 2, label %if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge
    i32 3, label %sw.bb1.i
  ]

if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

sw.epilog.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

atihdmi_paired_swap_fc_lfe.exit:                  ; preds = %sw.epilog.i, %sw.bb1.i, %if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge
  %retval.0.i = phi i32 [ %asp_slot, %sw.epilog.i ], [ 2, %sw.bb1.i ], [ 3, %if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge ]
  %5 = and i32 %retval.0.i, 1
  %spec.select31 = and i32 %retval.0.i, -2
  br label %if.end8

if.end8:                                          ; preds = %atihdmi_paired_swap_fc_lfe.exit, %land.lhs.true.if.end8_crit_edge
  %was_odd.0.off0 = phi i32 [ 0, %land.lhs.true.if.end8_crit_edge ], [ %5, %atihdmi_paired_swap_fc_lfe.exit ]
  %ati_asp_slot.0 = phi i32 [ %asp_slot, %land.lhs.true.if.end8_crit_edge ], [ %spec.select31, %atihdmi_paired_swap_fc_lfe.exit ]
  %div = sdiv i32 %ati_asp_slot.0, 2
  %add = add nsw i32 %div, 3959
  %6 = mul i32 %div, 2
  %rem9.decomposed = sub i32 %ati_asp_slot.0, %6
  %mul = mul nsw i32 %rem9.decomposed, 14
  %add10 = add nsw i32 %add, %mul
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %hdac, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef %add10, i32 noundef 0) #18
  %and12 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %and15 = lshr i32 %call.i, 4
  %7 = and i32 %and15, 15
  %add18 = add nuw nsw i32 %7, %was_odd.0.off0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add18, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ 15, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_pin_set_slot_channel(ptr noundef %hdac, i16 noundef zeroext %pin_nid, i32 noundef %hdmi_slot, i32 noundef %stream_channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %hdmi_slot)
  %cmp = icmp sgt i32 %hdmi_slot, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %hdac, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268610049, i32 %1)
  %cmp1 = icmp eq i32 %1, 268610049
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4

land.lhs.true:                                    ; preds = %if.end
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %hdac, i32 0, i32 9
  %2 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision_id, align 8
  %and = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %and)
  %cmp3 = icmp ugt i32 %and, 767
  br i1 %cmp3, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.if.then4_crit_edge

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then4

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then4:                                         ; preds = %land.lhs.true.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %4 = zext i32 %hdmi_slot to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %hdmi_slot, label %sw.epilog.i [
    i32 2, label %if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge
    i32 3, label %atihdmi_paired_swap_fc_lfe.exit.thread
  ]

if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

atihdmi_paired_swap_fc_lfe.exit.thread:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %stream_channel)
  %cmp741 = icmp eq i32 %stream_channel, 15
  br i1 %cmp741, label %atihdmi_paired_swap_fc_lfe.exit.thread.if.end16_crit_edge, label %atihdmi_paired_swap_fc_lfe.exit.thread.if.then12_crit_edge

atihdmi_paired_swap_fc_lfe.exit.thread.if.then12_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

atihdmi_paired_swap_fc_lfe.exit.thread.if.end16_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

sw.epilog.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

atihdmi_paired_swap_fc_lfe.exit:                  ; preds = %sw.epilog.i, %if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge
  %retval.0.i = phi i32 [ %hdmi_slot, %sw.epilog.i ], [ 3, %if.then4.atihdmi_paired_swap_fc_lfe.exit_crit_edge ]
  %rem = srem i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp5.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %stream_channel)
  %cmp7 = icmp eq i32 %stream_channel, 15
  %or.cond = and i1 %cmp7, %cmp5.not
  br i1 %or.cond, label %atihdmi_paired_swap_fc_lfe.exit.cleanup_crit_edge, label %if.end9

atihdmi_paired_swap_fc_lfe.exit.cleanup_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end9:                                          ; preds = %atihdmi_paired_swap_fc_lfe.exit
  %sub = sub i32 %retval.0.i, %rem
  br i1 %cmp7, label %if.end9.if.end16_crit_edge, label %if.end9.if.then12_crit_edge

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then12:                                        ; preds = %if.end9.if.then12_crit_edge, %atihdmi_paired_swap_fc_lfe.exit.thread.if.then12_crit_edge
  %sub46 = phi i32 [ 2, %atihdmi_paired_swap_fc_lfe.exit.thread.if.then12_crit_edge ], [ %sub, %if.end9.if.then12_crit_edge ]
  %rem13 = srem i32 %stream_channel, 2
  %sub14 = sub i32 %stream_channel, %rem13
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9.if.end16_crit_edge, %atihdmi_paired_swap_fc_lfe.exit.thread.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge
  %stream_channel.addr.0 = phi i32 [ %stream_channel, %land.lhs.true.if.end16_crit_edge ], [ %sub14, %if.then12 ], [ 15, %if.end9.if.end16_crit_edge ], [ 15, %atihdmi_paired_swap_fc_lfe.exit.thread.if.end16_crit_edge ]
  %hdmi_slot.addr.0 = phi i32 [ %hdmi_slot, %land.lhs.true.if.end16_crit_edge ], [ %sub46, %if.then12 ], [ %sub, %if.end9.if.end16_crit_edge ], [ 2, %atihdmi_paired_swap_fc_lfe.exit.thread.if.end16_crit_edge ]
  %div = sdiv i32 %hdmi_slot.addr.0, 2
  %add = add nsw i32 %div, 1911
  %5 = mul i32 %div, 2
  %rem17.decomposed = sub i32 %hdmi_slot.addr.0, %5
  %mul = mul nsw i32 %rem17.decomposed, 14
  %add18 = add nsw i32 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %stream_channel.addr.0)
  %cmp19.not = icmp eq i32 %stream_channel.addr.0, 15
  %shl = shl i32 %stream_channel.addr.0, 4
  %or = or i32 %shl, 1
  %spec.select = select i1 %cmp19.not, i32 0, i32 %or
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %hdac, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef %add18, i32 noundef %spec.select) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %atihdmi_paired_swap_fc_lfe.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %atihdmi_paired_swap_fc_lfe.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_paired_chmap_cea_alloc_validate_get_type(ptr nocapture noundef readnone %chmap, ptr nocapture noundef readonly %cap, i32 noundef %channels) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %channels, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.preheader.if.then5_crit_edge

for.body.preheader.if.then5_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

lor.lhs.false:                                    ; preds = %for.body.preheader
  %arrayidx3 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %for.body.preheader.if.then5_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %lor.lhs.false.for.inc_crit_edge
  %chanpairs.1 = phi i32 [ 1, %if.then5 ], [ 0, %lor.lhs.false.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1 = icmp eq i32 %6, 0
  br i1 %tobool.not.1, label %lor.lhs.false.1, label %for.inc.if.then5.1_crit_edge

for.inc.if.then5.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %arrayidx3.1 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.1 = icmp eq i32 %8, 0
  br i1 %tobool4.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %lor.lhs.false.1.if.then5.1_crit_edge

lor.lhs.false.1.if.then5.1_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.1

if.then5.1:                                       ; preds = %lor.lhs.false.1.if.then5.1_crit_edge, %for.inc.if.then5.1_crit_edge
  %inc.1 = add nuw nsw i32 %chanpairs.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %lor.lhs.false.1.for.inc.1_crit_edge
  %chanpairs.1.1 = phi i32 [ %inc.1, %if.then5.1 ], [ %chanpairs.1, %lor.lhs.false.1.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.2 = icmp eq i32 %10, 0
  br i1 %tobool.not.2, label %lor.lhs.false.2, label %for.inc.1.if.then5.2_crit_edge

for.inc.1.if.then5.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %arrayidx3.2 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 5
  %11 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.2 = icmp eq i32 %12, 0
  br i1 %tobool4.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %lor.lhs.false.2.if.then5.2_crit_edge

lor.lhs.false.2.if.then5.2_crit_edge:             ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.2

if.then5.2:                                       ; preds = %lor.lhs.false.2.if.then5.2_crit_edge, %for.inc.1.if.then5.2_crit_edge
  %inc.2 = add nuw nsw i32 %chanpairs.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %lor.lhs.false.2.for.inc.2_crit_edge
  %chanpairs.1.2 = phi i32 [ %inc.2, %if.then5.2 ], [ %chanpairs.1.1, %lor.lhs.false.2.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 6
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.3 = icmp eq i32 %14, 0
  br i1 %tobool.not.3, label %lor.lhs.false.3, label %for.inc.2.if.then5.3_crit_edge

for.inc.2.if.then5.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %arrayidx3.3 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx3.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.3 = icmp eq i32 %16, 0
  br i1 %tobool4.not.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %lor.lhs.false.3.if.then5.3_crit_edge

lor.lhs.false.3.if.then5.3_crit_edge:             ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then5.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.3

if.then5.3:                                       ; preds = %lor.lhs.false.3.if.then5.3_crit_edge, %for.inc.2.if.then5.3_crit_edge
  %inc.3 = add nuw nsw i32 %chanpairs.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %lor.lhs.false.3.for.inc.3_crit_edge
  %chanpairs.1.3 = phi i32 [ %inc.3, %if.then5.3 ], [ %chanpairs.1.2, %lor.lhs.false.3.for.inc.3_crit_edge ]
  %mul = shl nuw nsw i32 %chanpairs.1.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %channels)
  %cmp8.not = icmp eq i32 %mul, %channels
  %. = select i1 %cmp8.not, i32 259, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %., %for.inc.3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atihdmi_paired_cea_alloc_to_tlv_chmap(ptr nocapture noundef readnone %hchmap, ptr nocapture noundef readonly %cap, ptr nocapture noundef writeonly %chmap, i32 noundef %channels) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %count.046 = phi i32 [ 0, %entry ], [ %count.2, %cleanup.for.body_crit_edge ]
  %c.045 = phi i32 [ 7, %entry ], [ %dec, %cleanup.for.body_crit_edge ]
  %sub = sub nuw nsw i32 7, %c.045
  %0 = zext i32 %sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %sub, label %sw.epilog.i [
    i32 2, label %for.body.atihdmi_paired_swap_fc_lfe.exit_crit_edge
    i32 3, label %sw.bb1.i
  ]

for.body.atihdmi_paired_swap_fc_lfe.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

sw.epilog.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit

atihdmi_paired_swap_fc_lfe.exit:                  ; preds = %sw.epilog.i, %sw.bb1.i, %for.body.atihdmi_paired_swap_fc_lfe.exit_crit_edge
  %retval.0.i = phi i32 [ %sub, %sw.epilog.i ], [ 2, %sw.bb1.i ], [ 3, %for.body.atihdmi_paired_swap_fc_lfe.exit_crit_edge ]
  %sub1 = sub nuw nsw i32 7, %retval.0.i
  %arrayidx = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 %sub1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %atihdmi_paired_swap_fc_lfe.exit
  %3 = and i32 %sub1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool3.not, i32 1, i32 -1
  %add = add nsw i32 %cond, %sub1
  %arrayidx4 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 1, i32 %add
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %atihdmi_paired_swap_fc_lfe.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call i32 @snd_hdac_spk_to_chmap(i32 noundef %2) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %call9, %if.end8 ], [ 1, %if.then.cleanup.sink.split_crit_edge ]
  %inc = add i32 %count.046, 1
  %arrayidx7 = getelementptr i32, ptr %chmap, i32 %count.046
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %count.2 = phi i32 [ %count.046, %if.then.cleanup_crit_edge ], [ %inc, %cleanup.sink.split ]
  %dec = add nsw i32 %c.045, -1
  %cmp.not = icmp eq i32 %c.045, 0
  br i1 %cmp.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_cmp4(i32 %count.2, i32 %channels)
  %cmp13.not = icmp eq i32 %count.2, %channels
  br i1 %cmp13.not, label %for.end.if.end28_crit_edge, label %do.end, !prof !482

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 4119, i32 noundef 9, ptr noundef null) #18
  br label %if.end28

if.end28:                                         ; preds = %do.end, %for.end.if.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atihdmi_paired_chmap_validate(ptr nocapture noundef readnone %chmap, i32 noundef %ca, i32 noundef %chs, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_hdac_get_ch_alloc_from_ca(i32 noundef %ca) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chs)
  %cmp99 = icmp sgt i32 %chs, 0
  br i1 %cmp99, label %entry.for.body_crit_edge, label %entry.cleanup47_crit_edge

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup47

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc44.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0100 = phi i32 [ %inc45, %for.inc44.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %map, i32 %i.0100
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %call1 = tail call i32 @snd_hdac_chmap_to_spk_mask(i8 noundef zeroext %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.body.for.inc44_crit_edge, label %if.end

for.body.for.inc44_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc44

if.end:                                           ; preds = %for.body
  %rem = srem i32 %i.0100, 2
  %sub = sub nsw i32 7, %rem
  %arrayidx6 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %call, i32 0, i32 1, i32 %sub
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call1)
  %cmp7 = icmp eq i32 %3, %call1
  br i1 %cmp7, label %if.end.if.then8_crit_edge, label %for.inc

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.then8:                                         ; preds = %atihdmi_paired_swap_fc_lfe.exit.4.if.then8_crit_edge, %for.inc.2.if.then8_crit_edge, %atihdmi_paired_swap_fc_lfe.exit.2.if.then8_crit_edge, %atihdmi_paired_swap_fc_lfe.exit.1.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %j.098.lcssa = phi i32 [ %rem, %if.end.if.then8_crit_edge ], [ %add32, %atihdmi_paired_swap_fc_lfe.exit.1.if.then8_crit_edge ], [ %add32.1, %atihdmi_paired_swap_fc_lfe.exit.2.if.then8_crit_edge ], [ %add32.2, %for.inc.2.if.then8_crit_edge ], [ %add32.3, %atihdmi_paired_swap_fc_lfe.exit.4.if.then8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp10 = icmp eq i32 %rem, 0
  br i1 %cmp10, label %land.lhs.true, label %if.then8.if.end35_crit_edge

if.then8.if.end35_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

land.lhs.true:                                    ; preds = %if.then8
  %add11 = add i32 %i.0100, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %chs)
  %cmp12 = icmp slt i32 %add11, %chs
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

if.then13:                                        ; preds = %land.lhs.true
  %4 = zext i32 %j.098.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %j.098.lcssa, label %sw.epilog.i79 [
    i32 1, label %if.then13.atihdmi_paired_swap_fc_lfe.exit81_crit_edge
    i32 2, label %sw.bb1.i78
  ]

if.then13.atihdmi_paired_swap_fc_lfe.exit81_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit81

sw.bb1.i78:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit81

sw.epilog.i79:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %add14.neg = xor i32 %j.098.lcssa, -1
  br label %atihdmi_paired_swap_fc_lfe.exit81

atihdmi_paired_swap_fc_lfe.exit81:                ; preds = %sw.epilog.i79, %sw.bb1.i78, %if.then13.atihdmi_paired_swap_fc_lfe.exit81_crit_edge
  %retval.0.i80.neg = phi i32 [ %add14.neg, %sw.epilog.i79 ], [ -2, %sw.bb1.i78 ], [ -3, %if.then13.atihdmi_paired_swap_fc_lfe.exit81_crit_edge ]
  %sub16 = add i32 %retval.0.i80.neg, 7
  %arrayidx18 = getelementptr i8, ptr %map, i32 %add11
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx18, align 1
  %call19 = tail call i32 @snd_hdac_chmap_to_spk_mask(i8 noundef zeroext %6) #18
  %arrayidx21 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %call, i32 0, i32 1, i32 %sub16
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %8)
  %cmp22 = icmp eq i32 %call19, %8
  br i1 %cmp22, label %atihdmi_paired_swap_fc_lfe.exit81.if.end35_crit_edge, label %atihdmi_paired_swap_fc_lfe.exit81.cleanup47_crit_edge

atihdmi_paired_swap_fc_lfe.exit81.cleanup47_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit81
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup47

atihdmi_paired_swap_fc_lfe.exit81.if.end35_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit81
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end35

for.inc:                                          ; preds = %if.end
  %add32 = add nsw i32 %rem, 2
  %9 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %rem, label %sw.epilog.i.1 [
    i32 0, label %for.inc.atihdmi_paired_swap_fc_lfe.exit.1_crit_edge
    i32 1, label %sw.bb1.i.1
  ]

for.inc.atihdmi_paired_swap_fc_lfe.exit.1_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit.1

sw.bb1.i.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit.1

sw.epilog.i.1:                                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit.1

atihdmi_paired_swap_fc_lfe.exit.1:                ; preds = %sw.epilog.i.1, %sw.bb1.i.1, %for.inc.atihdmi_paired_swap_fc_lfe.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %add32, %sw.epilog.i.1 ], [ 2, %sw.bb1.i.1 ], [ 3, %for.inc.atihdmi_paired_swap_fc_lfe.exit.1_crit_edge ]
  %sub.1 = sub nsw i32 7, %retval.0.i.1
  %arrayidx6.1 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %call, i32 0, i32 1, i32 %sub.1
  %10 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call1)
  %cmp7.1 = icmp eq i32 %11, %call1
  br i1 %cmp7.1, label %atihdmi_paired_swap_fc_lfe.exit.1.if.then8_crit_edge, label %for.inc.1

atihdmi_paired_swap_fc_lfe.exit.1.if.then8_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.inc.1:                                        ; preds = %atihdmi_paired_swap_fc_lfe.exit.1
  %add32.1 = add nsw i32 %rem, 4
  %12 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %rem, label %sw.epilog.i.2 [
    i32 -2, label %for.inc.1.atihdmi_paired_swap_fc_lfe.exit.2_crit_edge
    i32 -1, label %sw.bb1.i.2
  ]

for.inc.1.atihdmi_paired_swap_fc_lfe.exit.2_crit_edge: ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit.2

sw.bb1.i.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit.2

sw.epilog.i.2:                                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %atihdmi_paired_swap_fc_lfe.exit.2

atihdmi_paired_swap_fc_lfe.exit.2:                ; preds = %sw.epilog.i.2, %sw.bb1.i.2, %for.inc.1.atihdmi_paired_swap_fc_lfe.exit.2_crit_edge
  %retval.0.i.2 = phi i32 [ %add32.1, %sw.epilog.i.2 ], [ 2, %sw.bb1.i.2 ], [ 3, %for.inc.1.atihdmi_paired_swap_fc_lfe.exit.2_crit_edge ]
  %sub.2 = sub nsw i32 7, %retval.0.i.2
  %arrayidx6.2 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %call, i32 0, i32 1, i32 %sub.2
  %13 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call1)
  %cmp7.2 = icmp eq i32 %14, %call1
  br i1 %cmp7.2, label %atihdmi_paired_swap_fc_lfe.exit.2.if.then8_crit_edge, label %for.inc.2

atihdmi_paired_swap_fc_lfe.exit.2.if.then8_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.inc.2:                                        ; preds = %atihdmi_paired_swap_fc_lfe.exit.2
  %add32.2 = add nsw i32 %rem, 6
  %sub.3 = sub nsw i32 7, %add32.2
  %arrayidx6.3 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %call, i32 0, i32 1, i32 %sub.3
  %15 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx6.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %call1)
  %cmp7.3 = icmp eq i32 %16, %call1
  br i1 %cmp7.3, label %for.inc.2.if.then8_crit_edge, label %for.inc.3

for.inc.2.if.then8_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

for.inc.3:                                        ; preds = %for.inc.2
  %add32.3 = add nsw i32 %rem, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3.3 = icmp slt i32 %rem, 0
  br i1 %cmp3.3, label %atihdmi_paired_swap_fc_lfe.exit.4, label %for.inc.3.cleanup47_crit_edge

for.inc.3.cleanup47_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup47

atihdmi_paired_swap_fc_lfe.exit.4:                ; preds = %for.inc.3
  %sub.4 = sub nsw i32 7, %add32.3
  %arrayidx6.4 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %call, i32 0, i32 1, i32 %sub.4
  %17 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call1)
  %cmp7.4 = icmp eq i32 %18, %call1
  br i1 %cmp7.4, label %atihdmi_paired_swap_fc_lfe.exit.4.if.then8_crit_edge, label %atihdmi_paired_swap_fc_lfe.exit.4.cleanup47_crit_edge

atihdmi_paired_swap_fc_lfe.exit.4.cleanup47_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup47

atihdmi_paired_swap_fc_lfe.exit.4.if.then8_crit_edge: ; preds = %atihdmi_paired_swap_fc_lfe.exit.4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.end35:                                         ; preds = %atihdmi_paired_swap_fc_lfe.exit81.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.then8.if.end35_crit_edge
  %companion_ok.4.off093 = phi i32 [ 0, %if.then8.if.end35_crit_edge ], [ 0, %land.lhs.true.if.end35_crit_edge ], [ 1, %atihdmi_paired_swap_fc_lfe.exit81.if.end35_crit_edge ]
  %spec.select = add i32 %companion_ok.4.off093, %i.0100
  br label %for.inc44

for.inc44:                                        ; preds = %if.end35, %for.body.for.inc44_crit_edge
  %i.2 = phi i32 [ %spec.select, %if.end35 ], [ %i.0100, %for.body.for.inc44_crit_edge ]
  %inc45 = add i32 %i.2, 1
  %cmp = icmp slt i32 %inc45, %chs
  br i1 %cmp, label %for.inc44.for.body_crit_edge, label %for.inc44.cleanup47_crit_edge

for.inc44.cleanup47_crit_edge:                    ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup47

for.inc44.for.body_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup47:                                        ; preds = %for.inc44.cleanup47_crit_edge, %atihdmi_paired_swap_fc_lfe.exit.4.cleanup47_crit_edge, %for.inc.3.cleanup47_crit_edge, %atihdmi_paired_swap_fc_lfe.exit81.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.7 = phi i32 [ 0, %entry.cleanup47_crit_edge ], [ -22, %for.inc.3.cleanup47_crit_edge ], [ -22, %atihdmi_paired_swap_fc_lfe.exit.4.cleanup47_crit_edge ], [ 0, %for.inc44.cleanup47_crit_edge ], [ -22, %atihdmi_paired_swap_fc_lfe.exit81.cleanup47_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atihdmi_port2pin(ptr nocapture noundef readnone %codec, i32 noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %port, 1
  %add = add i32 %mul, 3
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_hdmi_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %bind_lock = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %bind_lock, i32 noundef 0) #18
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26 = icmp sgt i32 %3, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %pin_idx.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %6 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %7, %pin_idx.027
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 8
  %dev_id3 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev_id3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_id3, align 4
  %call4 = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef %11) #18
  %12 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec1, align 8
  %conv.i.i = zext i16 %9 to i32
  %14 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %9)
  %cmp.i.i = icmp ugt i16 %15, %9
  br i1 %cmp.i.i, label %for.body.hdmi_init_pin.exit_crit_edge, label %lor.lhs.false.i.i

for.body.hdmi_init_pin.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_init_pin.exit

lor.lhs.false.i.i:                                ; preds = %for.body
  %16 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %17, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, %conv.i.i
  br i1 %cmp8.not.i.i, label %get_wcaps.exit.i, label %lor.lhs.false.i.i.hdmi_init_pin.exit_crit_edge

lor.lhs.false.i.i.hdmi_init_pin.exit_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_init_pin.exit

get_wcaps.exit.i:                                 ; preds = %lor.lhs.false.i.i
  %18 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %19, i32 %sub.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %and.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %get_wcaps.exit.i.hdmi_init_pin.exit_crit_edge, label %if.then.i

get_wcaps.exit.i.hdmi_init_pin.exit_crit_edge:    ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_init_pin.exit

if.then.i:                                        ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #18
  br label %hdmi_init_pin.exit

hdmi_init_pin.exit:                               ; preds = %if.then.i, %get_wcaps.exit.i.hdmi_init_pin.exit_crit_edge, %lor.lhs.false.i.i.hdmi_init_pin.exit_crit_edge, %for.body.hdmi_init_pin.exit_crit_edge
  %dyn_pin_out.i = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 16
  %22 = ptrtoint ptr %dyn_pin_out.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dyn_pin_out.i, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  %..i = select i1 %tobool3.not.i, i32 64, i32 0
  %call.i12.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 1799, i32 noundef %..i) #18
  %24 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spec1, align 8
  %use_acomp_notifier.i = getelementptr inbounds %struct.hdmi_spec, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %use_acomp_notifier.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use_acomp_notifier.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not = icmp eq i8 %27, 0
  br i1 %tobool.i.not, label %if.end, label %hdmi_init_pin.exit.cleanup_crit_edge

hdmi_init_pin.exit.cleanup_crit_edge:             ; preds = %hdmi_init_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %hdmi_init_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call6 = tail call ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef %11, ptr noundef nonnull @jack_callback) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %hdmi_init_pin.exit.cleanup_crit_edge
  %inc = add nuw nsw i32 %pin_idx.027, 1
  %28 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %bind_lock) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_set_dev_select(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jack_callback(ptr noundef %codec, ptr nocapture noundef readonly %jack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %use_acomp_notifier.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %use_acomp_notifier.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_acomp_notifier.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %jack to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %jack, align 4
  %dev_id = getelementptr inbounds %struct.hda_jack_callback, ptr %jack, i32 0, i32 1
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_id, align 4
  tail call fastcc void @check_presence_and_report(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef %7)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_presence_and_report(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %dev_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dev_id)
  %cmp.i = icmp eq i32 %dev_id, -1
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %dev_id
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp224.i = icmp sgt i32 %3, 0
  br i1 %cmp224.i, label %for.body.lr.ph.i, label %entry.pin_id_to_pin_index.exit.thread_crit_edge

entry.pin_id_to_pin_index.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_id_to_pin_index.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pin_idx.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %pin_idx.025.i, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %nid)
  %cmp5.i = icmp eq i16 %9, %nid
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dev_id7.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev_id7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_id7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spec.store.select.i)
  %cmp8.i = icmp eq i32 %11, %spec.store.select.i
  br i1 %cmp8.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %pin_idx.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.pin_id_to_pin_index.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.pin_id_to_pin_index.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_id_to_pin_index.exit.thread

pin_id_to_pin_index.exit.thread:                  ; preds = %for.inc.i.pin_id_to_pin_index.exit.thread_crit_edge, %entry.pin_id_to_pin_index.exit.thread_crit_edge
  %conv12.i = zext i16 %nid to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.109, i32 noundef %conv12.i) #21
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %pcm_lock = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pcm_lock, i32 noundef 0) #18
  %12 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list.i.i, align 4
  %14 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elem_size.i.i, align 4
  %mul.i = mul i32 %15, %pin_idx.025.i
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  tail call fastcc void @hdmi_present_sense(ptr noundef %add.ptr.i, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef %pcm_lock) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pin_id_to_pin_index.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_present_sense(ptr noundef %per_pin, i32 noundef %repoll) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %codec1 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 7
  %0 = ptrtoint ptr %codec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec1, align 8
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1.i, align 8
  %use_acomp_notifier.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %use_acomp_notifier.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_acomp_notifier.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.not = icmp eq i8 %5, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @hdmi_present_sense_via_verbs(ptr noundef %per_pin, i32 noundef %repoll)
  br label %if.end

if.else:                                          ; preds = %entry
  %temp_eld.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14
  %lock.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #18
  %6 = ptrtoint ptr %temp_eld.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %temp_eld.i, align 8
  %sink_eld.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8
  %7 = ptrtoint ptr %sink_eld.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sink_eld.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %per_pin, align 8
  %dev_id.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 1
  %11 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_id.i, align 4
  %eld_buffer.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14, i32 3
  %call.i = tail call i32 @snd_hdac_acomp_get_eld(ptr noundef %1, i16 noundef zeroext %10, i32 noundef %12, ptr noundef %temp_eld.i, ptr noundef %eld_buffer.i, i32 noundef 256) #18
  %eld_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14, i32 2
  %13 = ptrtoint ptr %eld_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %eld_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %eld_valid.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14, i32 1
  %frombool5.i = zext i1 %cmp.i to i8
  %14 = ptrtoint ptr %eld_valid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool5.i, ptr %eld_valid.i, align 1
  tail call fastcc void @update_eld(ptr noundef %1, ptr noundef %per_pin, ptr noundef %temp_eld.i, i32 noundef 0) #18
  %15 = ptrtoint ptr %sink_eld.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sink_eld.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not.i = icmp eq i8 %16, 0
  tail call void @mutex_unlock(ptr noundef %lock.i) #18
  %send_silent_stream.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %send_silent_stream.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %send_silent_stream.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not.i = icmp eq i8 %18, 0
  br i1 %tobool11.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i:                                        ; preds = %if.else
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %tobool.not.not.i, i1 true, i1 %tobool8.not.i
  br i1 %brmerge.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then.i
  %call16.i = tail call i32 @snd_hdac_power_up_pm(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end.i, label %if.then14.i.if.end.i_crit_edge

if.then14.i.if.end.i_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

do.end.i:                                         ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.116, i32 noundef %call16.i) #21
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then14.i.if.end.i_crit_edge
  tail call fastcc void @silent_stream_enable(ptr noundef %1, ptr noundef %per_pin) #18
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  %tobool8.not.not.i = xor i1 %tobool8.not.i, true
  %brmerge65.i = select i1 %tobool.not.i, i1 true, i1 %tobool8.not.not.i
  br i1 %brmerge65.i, label %if.else.i.if.end_crit_edge, label %if.then23.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then23.i:                                      ; preds = %if.else.i
  tail call fastcc void @silent_stream_disable(ptr noundef %1, ptr noundef %per_pin) #18
  %call25.i = tail call i32 @snd_hdac_power_down_pm(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %do.end30.i, label %if.then23.i.if.end_crit_edge

if.then23.i.if.end_crit_edge:                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end30.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.120, i32 noundef %call25.i) #21
  br label %if.end

if.end:                                           ; preds = %do.end30.i, %if.then23.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %if.end.i, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_present_sense_via_verbs(ptr noundef %per_pin, i32 noundef %repoll) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %codec1 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 7
  %0 = ptrtoint ptr %codec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec1, align 8
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec2, align 8
  %temp_eld = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %per_pin, align 8
  %dev_id4 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 1
  %6 = ptrtoint ptr %dev_id4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_id4, align 4
  %call = tail call i32 @snd_hdac_power_up_pm(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %land.lhs.true
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %10 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.out_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

pm_runtime_suspended.exit.out_crit_edge:          ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call7 = tail call i32 @snd_hda_jack_pin_sense(ptr noundef %1, i16 noundef zeroext %5, i32 noundef %7) #18
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool = icmp slt i32 %call7, 0
  %call7.lobit = lshr i32 %call7, 31
  %11 = trunc i32 %call7.lobit to i8
  %12 = ptrtoint ptr %temp_eld to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %temp_eld, align 8
  %and12 = lshr i32 %call7, 30
  %13 = trunc i32 %and12 to i8
  %14 = and i8 %13, 1
  %.sink = select i1 %tobool, i8 %14, i8 0
  %15 = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_present_sense_via_verbs.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_present_sense_via_verbs, %if.then25)) #18
          to label %do.end [label %if.then25], !srcloc !483

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %addr = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 8
  %conv = zext i16 %5 to i32
  %19 = ptrtoint ptr %temp_eld to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %temp_eld, align 8, !range !480
  %21 = zext i8 %20 to i32
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %15, align 1, !range !480
  %24 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_present_sense_via_verbs.__UNIQUE_ID_ddebug262, ptr noundef %1, ptr noundef nonnull @.str.115, i32 noundef %18, i32 noundef %conv, i32 noundef %21, i32 noundef %24) #18
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %15, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool36.not = icmp eq i8 %26, 0
  br i1 %tobool36.not, label %do.end.if.end44_crit_edge, label %if.then37

do.end.if.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then37:                                        ; preds = %do.end
  %ops = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 15
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 8
  %eld_buffer = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14, i32 3
  %eld_size = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 14, i32 2
  %call38 = tail call i32 %28(ptr noundef %1, i16 noundef zeroext %5, i32 noundef %7, ptr noundef %eld_buffer, ptr noundef %eld_size) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.then37.if.end44_crit_edge

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end44

if.then41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %15, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.then37.if.end44_crit_edge, %do.end.if.end44_crit_edge
  tail call fastcc void @update_eld(ptr noundef %1, ptr noundef %per_pin, ptr noundef %temp_eld, i32 noundef %repoll)
  tail call void @mutex_unlock(ptr noundef %lock) #18
  br label %out

out:                                              ; preds = %if.end44, %pm_runtime_suspended.exit.out_crit_edge
  %call47 = tail call i32 @snd_hdac_power_down_pm(ptr noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up_pm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_pin_sense(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_eld(ptr noundef %codec, ptr noundef %per_pin, ptr noundef %eld, i32 noundef %repoll) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sink_eld = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %eld_valid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eld_valid, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %eld_valid2 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 1
  %4 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eld_valid2, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %entry.if.then22_crit_edge, label %if.then

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then22

if.then:                                          ; preds = %entry
  %eld_size = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 2
  %6 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eld_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %if.then.if.then6_crit_edge, label %lor.lhs.false

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %info = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4
  %eld_buffer = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 3
  %call = tail call i32 @snd_hdmi_parse_eld(ptr noundef %codec, ptr noundef %info, ptr noundef %eld_buffer, i32 noundef %7) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %lor.lhs.false.if.then6_crit_edge, label %if.end13

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %8 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %eld_valid2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repoll)
  %tobool8.not = icmp eq i32 %repoll, 0
  br i1 %tobool8.not, label %if.then6.if.then22_crit_edge, label %if.then9

if.then6.if.then22_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then22

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  %work = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 30) #18
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr = load i8, ptr %eld_valid2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool15.not = icmp eq i8 %.pr, 0
  br i1 %tobool15.not, label %if.end13.if.then22_crit_edge, label %lor.lhs.false16

if.end13.if.then22_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then22

lor.lhs.false16:                                  ; preds = %if.end13
  %11 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eld_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp18 = icmp slt i32 %12, 1
  br i1 %cmp18, label %lor.lhs.false16.if.then22_crit_edge, label %lor.lhs.false19

lor.lhs.false16.if.then22_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then22

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %sad_count = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4, i32 12
  %13 = ptrtoint ptr %sad_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sad_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp21 = icmp slt i32 %14, 1
  br i1 %cmp21, label %lor.lhs.false19.if.then22_crit_edge, label %lor.lhs.false19.if.end25_crit_edge

lor.lhs.false19.if.end25_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

lor.lhs.false19.if.then22_crit_edge:              ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false19.if.then22_crit_edge, %lor.lhs.false16.if.then22_crit_edge, %if.end13.if.then22_crit_edge, %if.then6.if.then22_crit_edge, %entry.if.then22_crit_edge
  %15 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %eld_valid2, align 1
  %eld_size24 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 2
  %16 = ptrtoint ptr %eld_size24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %eld_size24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %lor.lhs.false19.if.end25_crit_edge
  %pcm_idx26 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 12
  %17 = ptrtoint ptr %pcm_idx26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcm_idx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i = icmp sgt i32 %18, -1
  br i1 %cmp.i, label %if.then.i, label %if.end25.pin_idx_to_pcm_jack.exit_crit_edge

if.end25.pin_idx_to_pcm_jack.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_idx_to_pcm_jack.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spec1, align 8
  %jack.i = getelementptr %struct.hdmi_spec, ptr %20, i32 0, i32 8, i32 %18, i32 1
  %21 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %jack.i, align 4
  br label %pin_idx_to_pcm_jack.exit

pin_idx_to_pcm_jack.exit:                         ; preds = %if.then.i, %if.end25.pin_idx_to_pcm_jack.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.then.i ], [ null, %if.end25.pin_idx_to_pcm_jack.exit_crit_edge ]
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dyn_pcm_assign, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool28.not = icmp eq i8 %24, 0
  br i1 %tobool28.not, label %pin_idx_to_pcm_jack.exit.if.end34_crit_edge, label %if.then29

pin_idx_to_pcm_jack.exit.if.end34_crit_edge:      ; preds = %pin_idx_to_pcm_jack.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then29:                                        ; preds = %pin_idx_to_pcm_jack.exit
  %25 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %eld_valid2, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not = icmp eq i8 %26, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then29
  %pcm.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 11
  %27 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcm.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then32.hdmi_attach_hda_pcm.exit_crit_edge

if.then32.hdmi_attach_hda_pcm.exit_crit_edge:     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_attach_hda_pcm.exit

if.end.i:                                         ; preds = %if.then32
  %dyn_pcm_no_legacy.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 18
  %29 = ptrtoint ptr %dyn_pcm_no_legacy.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dyn_pcm_no_legacy.i.i, align 2, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.last_try.i.i_crit_edge

if.end.i.last_try.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %last_try.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %dev_id.i.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 1
  %31 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.then2.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then2.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then2.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %intel_hsw_fixup.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %intel_hsw_fixup.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %intel_hsw_fixup.i.i, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then2.i.i_crit_edge

lor.lhs.false.i.i.if.then2.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then2.i.i

if.then2.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then2.i.i_crit_edge, %if.end.i.i.if.then2.i.i_crit_edge
  %pin_nid_idx.i.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 2
  %35 = ptrtoint ptr %pin_nid_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pin_nid_idx.i.i, align 8
  %pcm_bitmap.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 11
  %div3.i.i.i = lshr i32 %36, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %pcm_bitmap.i.i, i32 %div3.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %36, 31
  %39 = shl nuw i32 1, %and.i.i.i
  %40 = and i32 %39, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool3.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool3.not.i.i, label %if.then2.i.i.hdmi_find_pcm_slot.exit.i_crit_edge, label %if.then2.i.i.if.end14.i.i_crit_edge

if.then2.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.i.i

if.then2.i.i.hdmi_find_pcm_slot.exit.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_find_pcm_slot.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %num_nids.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %num_nids.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_nids.i.i, align 8
  %sub.i.i = add i32 %32, -1
  %add.i.i = add i32 %sub.i.i, %42
  %pcm_used.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %43 = ptrtoint ptr %pcm_used.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pcm_used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %44)
  %cmp8.i.i = icmp slt i32 %add.i.i, %44
  br i1 %cmp8.i.i, label %land.lhs.true.i.i, label %if.else.i.i.if.end14.i.i_crit_edge

if.else.i.i.if.end14.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %pcm_bitmap9.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 11
  %div3.i58.i.i = lshr i32 %add.i.i, 5
  %arrayidx.i59.i.i = getelementptr i32, ptr %pcm_bitmap9.i.i, i32 %div3.i58.i.i
  %45 = ptrtoint ptr %arrayidx.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i59.i.i, align 4
  %and.i60.i.i = and i32 %add.i.i, 31
  %47 = shl nuw i32 1, %and.i60.i.i
  %48 = and i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool11.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true.i.i.hdmi_find_pcm_slot.exit.i_crit_edge, label %land.lhs.true.i.i.if.end14.i.i_crit_edge

land.lhs.true.i.i.if.end14.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14.i.i

land.lhs.true.i.i.hdmi_find_pcm_slot.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_find_pcm_slot.exit.i

if.end14.i.i:                                     ; preds = %land.lhs.true.i.i.if.end14.i.i_crit_edge, %if.else.i.i.if.end14.i.i_crit_edge, %if.then2.i.i.if.end14.i.i_crit_edge
  %num_nids15.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %num_nids15.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_nids15.i.i, align 8
  %pcm_used16.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %pcm_used16.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pcm_used16.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp1775.i.i = icmp slt i32 %50, %52
  br i1 %cmp1775.i.i, label %for.body.lr.ph.i.i, label %if.end14.i.i.last_try.i.i_crit_edge

if.end14.i.i.last_try.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %last_try.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end14.i.i
  %pcm_bitmap18.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.076.i.i = phi i32 [ %50, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %div3.i63.i.i = lshr i32 %i.076.i.i, 5
  %arrayidx.i64.i.i = getelementptr i32, ptr %pcm_bitmap18.i.i, i32 %div3.i63.i.i
  %53 = ptrtoint ptr %arrayidx.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i64.i.i, align 4
  %and.i65.i.i = and i32 %i.076.i.i, 31
  %55 = shl nuw i32 1, %and.i65.i.i
  %56 = and i32 %55, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool20.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool20.not.i.i, label %for.body.i.i.hdmi_find_pcm_slot.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.hdmi_find_pcm_slot.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_find_pcm_slot.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.076.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %52
  br i1 %exitcond.not.i.i, label %for.inc.i.i.last_try.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.last_try.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %last_try.i.i

last_try.i.i:                                     ; preds = %for.inc.i.i.last_try.i.i_crit_edge, %if.end14.i.i.last_try.i.i_crit_edge, %if.end.i.last_try.i.i_crit_edge
  %pcm_bitmap27.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 11
  %num_nids24.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %num_nids24.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_nids24.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp2577.i.i = icmp sgt i32 %58, 0
  br i1 %cmp2577.i.i, label %last_try.i.i.for.body26.i.i_crit_edge, label %last_try.i.i.hdmi_attach_hda_pcm.exit_crit_edge

last_try.i.i.hdmi_attach_hda_pcm.exit_crit_edge:  ; preds = %last_try.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_attach_hda_pcm.exit

last_try.i.i.for.body26.i.i_crit_edge:            ; preds = %last_try.i.i
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %for.inc32.i.i.for.body26.i.i_crit_edge, %last_try.i.i.for.body26.i.i_crit_edge
  %i.178.i.i = phi i32 [ %inc33.i.i, %for.inc32.i.i.for.body26.i.i_crit_edge ], [ 0, %last_try.i.i.for.body26.i.i_crit_edge ]
  %div3.i68.i.i = lshr i32 %i.178.i.i, 5
  %arrayidx.i69.i.i = getelementptr i32, ptr %pcm_bitmap27.i.i, i32 %div3.i68.i.i
  %59 = ptrtoint ptr %arrayidx.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i69.i.i, align 4
  %and.i70.i.i = and i32 %i.178.i.i, 31
  %61 = shl nuw i32 1, %and.i70.i.i
  %62 = and i32 %61, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool29.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool29.not.i.i, label %for.body26.i.i.if.end2.i_crit_edge, label %for.inc32.i.i

for.body26.i.i.if.end2.i_crit_edge:               ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end2.i

for.inc32.i.i:                                    ; preds = %for.body26.i.i
  %inc33.i.i = add nuw nsw i32 %i.178.i.i, 1
  %exitcond82.not.i.i = icmp eq i32 %inc33.i.i, %58
  br i1 %exitcond82.not.i.i, label %for.inc32.i.i.hdmi_attach_hda_pcm.exit_crit_edge, label %for.inc32.i.i.for.body26.i.i_crit_edge

for.inc32.i.i.for.body26.i.i_crit_edge:           ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body26.i.i

for.inc32.i.i.hdmi_attach_hda_pcm.exit_crit_edge: ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_attach_hda_pcm.exit

hdmi_find_pcm_slot.exit.i:                        ; preds = %for.body.i.i.hdmi_find_pcm_slot.exit.i_crit_edge, %land.lhs.true.i.i.hdmi_find_pcm_slot.exit.i_crit_edge, %if.then2.i.i.hdmi_find_pcm_slot.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i, %land.lhs.true.i.i.hdmi_find_pcm_slot.exit.i_crit_edge ], [ %36, %if.then2.i.i.hdmi_find_pcm_slot.exit.i_crit_edge ], [ %i.076.i.i, %for.body.i.i.hdmi_find_pcm_slot.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %retval.0.i.i)
  %cmp.i229 = icmp eq i32 %retval.0.i.i, -16
  br i1 %cmp.i229, label %hdmi_find_pcm_slot.exit.i.hdmi_attach_hda_pcm.exit_crit_edge, label %hdmi_find_pcm_slot.exit.i.if.end2.i_crit_edge

hdmi_find_pcm_slot.exit.i.if.end2.i_crit_edge:    ; preds = %hdmi_find_pcm_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end2.i

hdmi_find_pcm_slot.exit.i.hdmi_attach_hda_pcm.exit_crit_edge: ; preds = %hdmi_find_pcm_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_attach_hda_pcm.exit

if.end2.i:                                        ; preds = %hdmi_find_pcm_slot.exit.i.if.end2.i_crit_edge, %for.body26.i.i.if.end2.i_crit_edge
  %retval.0.i17.i = phi i32 [ %retval.0.i.i, %hdmi_find_pcm_slot.exit.i.if.end2.i_crit_edge ], [ %i.178.i.i, %for.body26.i.i.if.end2.i_crit_edge ]
  %63 = ptrtoint ptr %pcm_idx26 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i17.i, ptr %pcm_idx26, align 4
  %arrayidx.i = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %retval.0.i17.i
  %64 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx.i, ptr %pcm.i, align 8
  %pcm_bitmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %retval.0.i17.i, ptr noundef %pcm_bitmap.i) #18
  br label %hdmi_attach_hda_pcm.exit

hdmi_attach_hda_pcm.exit:                         ; preds = %if.end2.i, %hdmi_find_pcm_slot.exit.i.hdmi_attach_hda_pcm.exit_crit_edge, %for.inc32.i.i.hdmi_attach_hda_pcm.exit_crit_edge, %last_try.i.i.hdmi_attach_hda_pcm.exit_crit_edge, %if.then32.hdmi_attach_hda_pcm.exit_crit_edge
  %codec1.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 7
  %65 = ptrtoint ptr %codec1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %codec1.i, align 8
  %67 = ptrtoint ptr %pcm_idx26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pcm_idx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp.i232 = icmp sgt i32 %68, -1
  br i1 %cmp.i232, label %land.lhs.true.i, label %hdmi_attach_hda_pcm.exit.if.end34_crit_edge

hdmi_attach_hda_pcm.exit.if.end34_crit_edge:      ; preds = %hdmi_attach_hda_pcm.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

land.lhs.true.i:                                  ; preds = %hdmi_attach_hda_pcm.exit
  %pcm_used.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %69 = ptrtoint ptr %pcm_used.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pcm_used.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp3.i = icmp slt i32 %68, %70
  br i1 %cmp3.i, label %if.then.i235, label %land.lhs.true.i.if.end34_crit_edge

land.lhs.true.i.if.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then.i235:                                     ; preds = %land.lhs.true.i
  %arrayidx.i233 = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %68
  %71 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i233, align 4
  %pcm6.i = getelementptr inbounds %struct.hda_pcm, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %pcm6.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcm6.i, align 8
  %tobool.not.i234 = icmp eq ptr %74, null
  br i1 %tobool.not.i234, label %if.then.i235.if.end34_crit_edge, label %if.end8.i

if.then.i235.if.end34_crit_edge:                  ; preds = %if.then.i235
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.end8.i:                                        ; preds = %if.then.i235
  %pcm_in_use.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 13
  %div3.i.i = lshr i32 %68, 5
  %arrayidx.i.i = getelementptr i32, ptr %pcm_in_use.i, i32 %div3.i.i
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %68, 31
  %77 = shl nuw i32 1, %and.i.i
  %78 = and i32 %76, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool10.not.i = icmp eq i32 %78, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end34_crit_edge, label %if.end12.i

if.end8.i.if.end34_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.end12.i:                                       ; preds = %if.end8.i
  %substream15.i = getelementptr inbounds %struct.snd_pcm, ptr %74, i32 0, i32 8, i32 0, i32 4
  %79 = ptrtoint ptr %substream15.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %substream15.i, align 8
  %nid.i = getelementptr inbounds %struct.hda_pcm, ptr %72, i32 0, i32 1, i32 0, i32 3
  %81 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %nid.i, align 4
  %cvt_nid.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 6
  %83 = ptrtoint ptr %cvt_nid.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %cvt_nid.i, align 4
  %84 = load i16, ptr %nid.i, align 4
  %num_mux_nids.i.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 3
  %85 = ptrtoint ptr %num_mux_nids.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_mux_nids.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp1.i.i = icmp sgt i32 %86, 0
  br i1 %cmp1.i.i, label %if.end12.i.for.body.i.i236_crit_edge, label %if.end12.i.hdmi_get_pin_cvt_mux.exit.i_crit_edge

if.end12.i.hdmi_get_pin_cvt_mux.exit.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_get_pin_cvt_mux.exit.i

if.end12.i.for.body.i.i236_crit_edge:             ; preds = %if.end12.i
  br label %for.body.i.i236

for.body.i.i236:                                  ; preds = %for.inc.i.i239.for.body.i.i236_crit_edge, %if.end12.i.for.body.i.i236_crit_edge
  %mux_idx.02.i.i = phi i32 [ %inc.i.i237, %for.inc.i.i239.for.body.i.i236_crit_edge ], [ 0, %if.end12.i.for.body.i.i236_crit_edge ]
  %arrayidx.i71.i = getelementptr %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 4, i32 %mux_idx.02.i.i
  %87 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i71.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %84)
  %cmp2.i.i = icmp eq i16 %88, %84
  br i1 %cmp2.i.i, label %for.body.i.i236.hdmi_get_pin_cvt_mux.exit.i_crit_edge, label %for.inc.i.i239

for.body.i.i236.hdmi_get_pin_cvt_mux.exit.i_crit_edge: ; preds = %for.body.i.i236
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_get_pin_cvt_mux.exit.i

for.inc.i.i239:                                   ; preds = %for.body.i.i236
  %inc.i.i237 = add nuw nsw i32 %mux_idx.02.i.i, 1
  %exitcond.not.i.i238 = icmp eq i32 %inc.i.i237, %86
  br i1 %exitcond.not.i.i238, label %for.inc.i.i239.if.end23.i_crit_edge, label %for.inc.i.i239.for.body.i.i236_crit_edge

for.inc.i.i239.for.body.i.i236_crit_edge:         ; preds = %for.inc.i.i239
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i236

for.inc.i.i239.if.end23.i_crit_edge:              ; preds = %for.inc.i.i239
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

hdmi_get_pin_cvt_mux.exit.i:                      ; preds = %for.body.i.i236.hdmi_get_pin_cvt_mux.exit.i_crit_edge, %if.end12.i.hdmi_get_pin_cvt_mux.exit.i_crit_edge
  %mux_idx.0.lcssa.i.i = phi i32 [ 0, %if.end12.i.hdmi_get_pin_cvt_mux.exit.i_crit_edge ], [ %mux_idx.02.i.i, %for.body.i.i236.hdmi_get_pin_cvt_mux.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mux_idx.0.lcssa.i.i, i32 %86)
  %cmp18.i = icmp slt i32 %mux_idx.0.lcssa.i.i, %86
  br i1 %cmp18.i, label %if.then19.i, label %hdmi_get_pin_cvt_mux.exit.i.if.end23.i_crit_edge

hdmi_get_pin_cvt_mux.exit.i.if.end23.i_crit_edge: ; preds = %hdmi_get_pin_cvt_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

if.then19.i:                                      ; preds = %hdmi_get_pin_cvt_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %89 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %per_pin, align 8
  %dev_id.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 1
  %91 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dev_id.i, align 4
  %call20.i = tail call i32 @snd_hda_set_dev_select(ptr noundef %66, i16 noundef zeroext %90, i32 noundef %92) #18
  %93 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %per_pin, align 8
  %conv.i.i.i = zext i16 %94 to i32
  %shl1.i.i.i = shl i32 %conv.i.i.i, 20
  %or2.i.i.i = or i32 %shl1.i.i.i, 983296
  %call.i.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %66, i32 noundef %or2.i.i.i, i32 noundef %mux_idx.0.lcssa.i.i) #18
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then19.i, %hdmi_get_pin_cvt_mux.exit.i.if.end23.i_crit_edge, %for.inc.i.i239.if.end23.i_crit_edge
  %mux_idx.0.lcssa.i75.i = phi i32 [ %mux_idx.0.lcssa.i.i, %if.then19.i ], [ %mux_idx.0.lcssa.i.i, %hdmi_get_pin_cvt_mux.exit.i.if.end23.i_crit_edge ], [ %86, %for.inc.i.i239.if.end23.i_crit_edge ]
  %95 = ptrtoint ptr %pcm_idx26 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pcm_idx26, align 4
  %97 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %nid.i, align 4
  tail call void @snd_hda_spdif_ctls_assign(ptr noundef %66, i32 noundef %96, i16 noundef zeroext %98) #18
  %99 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %nid.i, align 4
  %spdif_mutex.i.i = getelementptr inbounds %struct.hda_codec, ptr %66, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %spdif_mutex.i.i, i32 noundef 0) #18
  %call.i.i240 = tail call ptr @snd_hda_spdif_out_of_nid(ptr noundef %66, i16 noundef zeroext %100) #18
  %cmp.i.i241 = icmp eq ptr %call.i.i240, null
  br i1 %cmp.i.i241, label %do.end.i.i, label %if.end22.i.i, !prof !484

do.end.i.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 2018, i32 noundef 9, ptr noundef null) #18
  br label %check_non_pcm_per_cvt.exit.i

if.end22.i.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  %status.i.i = getelementptr inbounds %struct.hda_spdif_out, ptr %call.i.i240, i32 0, i32 1
  %101 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %status.i.i, align 4
  %and.i72.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72.i)
  %tobool23.i.i = icmp ne i32 %and.i72.i, 0
  br label %check_non_pcm_per_cvt.exit.i

check_non_pcm_per_cvt.exit.i:                     ; preds = %if.end22.i.i, %do.end.i.i
  %retval.0.i.i242 = phi i1 [ true, %do.end.i.i ], [ %tobool23.i.i, %if.end22.i.i ]
  tail call void @mutex_unlock(ptr noundef %spdif_mutex.i.i) #18
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %80, i32 0, i32 11
  %103 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %runtime.i, align 4
  %tobool28.not.i = icmp eq ptr %104, null
  br i1 %tobool28.not.i, label %check_non_pcm_per_cvt.exit.i.if.end32.i_crit_edge, label %if.then29.i

check_non_pcm_per_cvt.exit.i.if.end32.i_crit_edge: ; preds = %check_non_pcm_per_cvt.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32.i

if.then29.i:                                      ; preds = %check_non_pcm_per_cvt.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %104, i32 0, i32 15
  %105 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %channels.i, align 8
  %channels31.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 16
  %107 = ptrtoint ptr %channels31.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %channels31.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %check_non_pcm_per_cvt.exit.i.if.end32.i_crit_edge
  %setup.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 14
  %108 = ptrtoint ptr %setup.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %setup.i, align 4
  %mux_idx33.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 5
  %109 = ptrtoint ptr %mux_idx33.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %mux_idx.0.lcssa.i75.i, ptr %mux_idx33.i, align 8
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %66, ptr noundef %per_pin, i1 noundef zeroext %retval.0.i.i242) #18
  br label %if.end34

if.else:                                          ; preds = %if.then29
  br i1 %cmp.i, label %land.lhs.true.i246, label %if.else.hdmi_pcm_reset_pin.exit_crit_edge

if.else.hdmi_pcm_reset_pin.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_pcm_reset_pin.exit

land.lhs.true.i246:                               ; preds = %if.else
  %pcm_used.i245 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %110 = ptrtoint ptr %pcm_used.i245 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pcm_used.i245, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %111)
  %cmp2.i = icmp slt i32 %18, %111
  br i1 %cmp2.i, label %if.then.i247, label %land.lhs.true.i246.hdmi_pcm_reset_pin.exit_crit_edge

land.lhs.true.i246.hdmi_pcm_reset_pin.exit_crit_edge: ; preds = %land.lhs.true.i246
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_pcm_reset_pin.exit

if.then.i247:                                     ; preds = %land.lhs.true.i246
  call void @__sanitizer_cov_trace_pc() #20
  %codec.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 7
  %112 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %codec.i, align 8
  tail call void @snd_hda_spdif_ctls_unassign(ptr noundef %113, i32 noundef %18) #18
  br label %hdmi_pcm_reset_pin.exit

hdmi_pcm_reset_pin.exit:                          ; preds = %if.then.i247, %land.lhs.true.i246.hdmi_pcm_reset_pin.exit_crit_edge, %if.else.hdmi_pcm_reset_pin.exit_crit_edge
  %chmap_set.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 18
  %114 = ptrtoint ptr %chmap_set.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %chmap_set.i, align 1
  %chmap.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 19
  %115 = ptrtoint ptr %chmap.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 0, ptr %chmap.i, align 2
  %setup.i248 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 14
  %116 = ptrtoint ptr %setup.i248 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %setup.i248, align 4
  %channels.i249 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 16
  %117 = ptrtoint ptr %channels.i249 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %channels.i249, align 8
  %pcm.i251 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 11
  %118 = ptrtoint ptr %pcm.i251 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcm.i251, align 8
  %tobool.not.i252 = icmp eq ptr %119, null
  br i1 %tobool.not.i252, label %hdmi_pcm_reset_pin.exit.if.end34_crit_edge, label %if.end.i255

hdmi_pcm_reset_pin.exit.if.end34_crit_edge:       ; preds = %hdmi_pcm_reset_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.end.i255:                                      ; preds = %hdmi_pcm_reset_pin.exit
  %120 = ptrtoint ptr %pcm_idx26 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %pcm_idx26, align 4
  store i32 -1, ptr %pcm_idx26, align 4
  %122 = ptrtoint ptr %pcm.i251 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %pcm.i251, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %121)
  %cmp.i254 = icmp sgt i32 %121, -1
  br i1 %cmp.i254, label %land.lhs.true.i258, label %if.end.i255.if.end34_crit_edge

if.end.i255.if.end34_crit_edge:                   ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

land.lhs.true.i258:                               ; preds = %if.end.i255
  %pcm_used.i256 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %123 = ptrtoint ptr %pcm_used.i256 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pcm_used.i256, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %124)
  %cmp3.i257 = icmp slt i32 %121, %124
  br i1 %cmp3.i257, label %if.then4.i, label %land.lhs.true.i258.if.end34_crit_edge

land.lhs.true.i258.if.end34_crit_edge:            ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then4.i:                                       ; preds = %land.lhs.true.i258
  call void @__sanitizer_cov_trace_pc() #20
  %pcm_bitmap.i259 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef %121, ptr noundef %pcm_bitmap.i259) #18
  br label %if.end34

if.end34:                                         ; preds = %if.then4.i, %land.lhs.true.i258.if.end34_crit_edge, %if.end.i255.if.end34_crit_edge, %hdmi_pcm_reset_pin.exit.if.end34_crit_edge, %if.end32.i, %if.end8.i.if.end34_crit_edge, %if.then.i235.if.end34_crit_edge, %land.lhs.true.i.if.end34_crit_edge, %hdmi_attach_hda_pcm.exit.if.end34_crit_edge, %pin_idx_to_pcm_jack.exit.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp35 = icmp eq i32 %18, -1
  br i1 %cmp35, label %if.then36, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  %125 = ptrtoint ptr %pcm_idx26 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pcm_idx26, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34.if.end38_crit_edge
  %pcm_idx.0 = phi i32 [ %126, %if.then36 ], [ %18, %if.end34.if.end38_crit_edge ]
  %tobool39.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  %127 = ptrtoint ptr %pcm_idx26 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pcm_idx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %cmp.i261 = icmp sgt i32 %128, -1
  br i1 %cmp.i261, label %if.then.i264, label %if.then40.if.end42_crit_edge

if.then40.if.end42_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.then.i264:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #20
  %129 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %spec1, align 8
  %jack.i263 = getelementptr %struct.hdmi_spec, ptr %130, i32 0, i32 8, i32 %128, i32 1
  %131 = ptrtoint ptr %jack.i263 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %jack.i263, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then.i264, %if.then40.if.end42_crit_edge, %if.end38.if.end42_crit_edge
  %pcm_jack.0 = phi ptr [ %retval.0.i, %if.end38.if.end42_crit_edge ], [ %132, %if.then.i264 ], [ null, %if.then40.if.end42_crit_edge ]
  %133 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %eld_valid2, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool44.not = icmp eq i8 %134, 0
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %info46 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4
  tail call void @snd_hdmi_show_eld(ptr noundef %codec, ptr noundef %info46) #18
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %135 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %eld_valid, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool49.not = icmp eq i8 %136, 0
  %137 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %eld_valid2, align 1, !range !480
  call void @__sanitizer_cov_trace_cmp1(i8 %136, i8 %138)
  %cmp53 = icmp ne i8 %136, %138
  %139 = ptrtoint ptr %sink_eld to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %sink_eld, align 8, !range !480
  %141 = ptrtoint ptr %eld to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %eld, align 8, !range !480
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %142)
  %cmp61 = icmp ne i8 %140, %142
  %or225 = or i1 %cmp53, %cmp61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool51.not = icmp eq i8 %138, 0
  %or.cond = or i1 %tobool51.not, %or225
  %brmerge = select i1 %or.cond, i1 true, i1 %tobool49.not
  br i1 %brmerge, label %if.end91, label %if.then75

if.then75:                                        ; preds = %if.end47
  %eld_size76 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 2
  %143 = ptrtoint ptr %eld_size76 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %eld_size76, align 4
  %eld_size77 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 2
  %145 = ptrtoint ptr %eld_size77 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %eld_size77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp78.not = icmp eq i32 %144, %146
  br i1 %cmp78.not, label %lor.lhs.false80, label %if.then75.if.then93_crit_edge

if.then75.if.then93_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then93

lor.lhs.false80:                                  ; preds = %if.then75
  %eld_buffer81 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 3
  %eld_buffer83 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr %eld_buffer81, ptr %eld_buffer83, i32 %144) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp87.not = icmp eq i32 %bcmp, 0
  br i1 %cmp87.not, label %lor.lhs.false80.if.end115_crit_edge, label %lor.lhs.false80.if.then93_crit_edge

lor.lhs.false80.if.then93_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then93

lor.lhs.false80.if.end115_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end115

if.end91:                                         ; preds = %if.end47
  br i1 %or225, label %if.end91.if.then93_crit_edge, label %if.end91.if.end115_crit_edge

if.end91.if.end115_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end115

if.end91.if.then93_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then93

if.then93:                                        ; preds = %if.end91.if.then93_crit_edge, %lor.lhs.false80.if.then93_crit_edge, %if.then75.if.then93_crit_edge
  %147 = ptrtoint ptr %sink_eld to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %142, ptr %sink_eld, align 8
  %148 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %eld_valid2, align 1, !range !480
  %150 = ptrtoint ptr %eld_valid to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %eld_valid, align 1
  %eld_size102 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 2
  %151 = ptrtoint ptr %eld_size102 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %eld_size102, align 4
  %eld_size103 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 2
  %153 = ptrtoint ptr %eld_size103 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %eld_size103, align 4
  %154 = load i8, ptr %eld_valid2, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool105.not = icmp eq i8 %154, 0
  br i1 %tobool105.not, label %if.then93.if.end112_crit_edge, label %if.then106

if.then93.if.end112_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end112

if.then106:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #20
  %eld_buffer107 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 3
  %eld_buffer109 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 3
  %155 = ptrtoint ptr %eld_size102 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %eld_size102, align 4
  %157 = call ptr @memcpy(ptr %eld_buffer107, ptr %eld_buffer109, i32 %156)
  br label %if.end112

if.end112:                                        ; preds = %if.then106, %if.then93.if.end112_crit_edge
  %info113 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 4
  %info114 = getelementptr inbounds %struct.hdmi_eld, ptr %eld, i32 0, i32 4
  %158 = call ptr @memcpy(ptr %info113, ptr %info114, i32 456)
  br label %if.end115

if.end115:                                        ; preds = %if.end112, %if.end91.if.end115_crit_edge, %lor.lhs.false80.if.end115_crit_edge
  %eld_changed.0.shrunk273 = phi i1 [ true, %if.end112 ], [ false, %if.end91.if.end115_crit_edge ], [ false, %lor.lhs.false80.if.end115_crit_edge ]
  %159 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %eld_valid2, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool117.not = icmp eq i8 %160, 0
  %brmerge226 = select i1 %tobool117.not, i1 true, i1 %tobool.not
  br i1 %brmerge226, label %if.end115.if.end126_crit_edge, label %land.lhs.true121

if.end115.if.end126_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126

land.lhs.true121:                                 ; preds = %if.end115
  %setup = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 14
  %161 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %setup, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool122.not = icmp eq i8 %162, 0
  br i1 %tobool122.not, label %land.lhs.true121.if.end126_crit_edge, label %if.then124

land.lhs.true121.if.end126_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end126

if.then124:                                       ; preds = %land.lhs.true121
  %163 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %spec1, align 8
  %pin_cvt_fixup.i = getelementptr inbounds %struct.hdmi_spec, ptr %164, i32 0, i32 15, i32 4
  %165 = ptrtoint ptr %pin_cvt_fixup.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pin_cvt_fixup.i, align 8
  %tobool.not.i268 = icmp eq ptr %166, null
  br i1 %tobool.not.i268, label %if.then124.pin_cvt_fixup.exit_crit_edge, label %if.then.i269

if.then124.pin_cvt_fixup.exit_crit_edge:          ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_cvt_fixup.exit

if.then.i269:                                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %166(ptr noundef %codec, ptr noundef %per_pin, i16 noundef zeroext 0) #18
  br label %pin_cvt_fixup.exit

pin_cvt_fixup.exit:                               ; preds = %if.then.i269, %if.then124.pin_cvt_fixup.exit_crit_edge
  %non_pcm = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 17
  %167 = ptrtoint ptr %non_pcm to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %non_pcm, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool125 = icmp ne i8 %168, 0
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %codec, ptr noundef %per_pin, i1 noundef zeroext %tobool125)
  br label %if.end126

if.end126:                                        ; preds = %pin_cvt_fixup.exit, %land.lhs.true121.if.end126_crit_edge, %if.end115.if.end126_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pcm_idx.0)
  %cmp130 = icmp sgt i32 %pcm_idx.0, -1
  %or.cond227 = select i1 %eld_changed.0.shrunk273, i1 %cmp130, i1 false
  br i1 %or.cond227, label %if.then132, label %if.end126.if.end133_crit_edge

if.end126.if.end133_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end133

if.then132:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #20
  %card = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 2
  %169 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %card, align 4
  %eld_ctl = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %pcm_idx.0, i32 2
  %171 = ptrtoint ptr %eld_ctl to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %eld_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %172, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %170, i32 noundef 3, ptr noundef %id) #18
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.end126.if.end133_crit_edge
  %eld_changed.0.shrunk.not = xor i1 %eld_changed.0.shrunk273, true
  %tobool137.not = icmp eq ptr %pcm_jack.0, null
  %or.cond228 = select i1 %eld_changed.0.shrunk.not, i1 true, i1 %tobool137.not
  br i1 %or.cond228, label %if.end133.cleanup_crit_edge, label %if.then138

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then138:                                       ; preds = %if.end133
  %173 = ptrtoint ptr %eld to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %eld, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool140.not = icmp eq i8 %174, 0
  br i1 %tobool140.not, label %if.then138.land.end_crit_edge, label %land.rhs

if.then138.land.end_crit_edge:                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.rhs:                                         ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #20
  %175 = ptrtoint ptr %eld_valid2 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %eld_valid2, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool143.not = icmp eq i8 %176, 0
  %phi.sel = select i1 %tobool143.not, i32 0, i32 20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then138.land.end_crit_edge
  %177 = phi i32 [ 0, %if.then138.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  tail call void @snd_jack_report(ptr noundef nonnull %pcm_jack.0, i32 noundef %177) #18
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.end133.cleanup_crit_edge, %if.then9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down_pm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdmi_parse_eld(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_show_eld(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_setup_audio_infoframe(ptr noundef %codec, ptr noundef %per_pin, i1 noundef zeroext %non_pcm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %non_pcm to i8
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %chmap2 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %per_pin, align 8
  %dev_id4 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 1
  %4 = ptrtoint ptr %dev_id4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id4, align 4
  %channels5 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 16
  %6 = ptrtoint ptr %channels5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef %5) #18
  %conv.i = zext i16 %3 to i32
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %8 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %3)
  %cmp.i = icmp ugt i16 %9, %3
  br i1 %cmp.i, label %if.end.if.end10_crit_edge, label %lor.lhs.false.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.end
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %10 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %11, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.if.end10_crit_edge

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %12 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %get_wcaps.exit.if.end10_crit_edge, label %if.then8

get_wcaps.exit.if.end10_crit_edge:                ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then8:                                         ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #18
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %get_wcaps.exit.if.end10_crit_edge, %lor.lhs.false.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %spk_alloc = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 4, i32 11
  %16 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spk_alloc, align 8
  %chmap_set = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 18
  %18 = ptrtoint ptr %chmap_set to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chmap_set, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11 = icmp ne i8 %19, 0
  %chmap13 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 19
  %call14 = tail call i32 @snd_hdac_channel_allocation(ptr noundef %codec, i32 noundef %17, i32 noundef %7, i1 noundef zeroext %tobool11, i1 noundef zeroext %non_pcm, ptr noundef %chmap13) #18
  %call15 = tail call i32 @snd_hdac_get_active_channels(i32 noundef %call14) #18
  %set_channel_count = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 27, i32 1, i32 9
  %20 = ptrtoint ptr %set_channel_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_channel_count, align 4
  %cvt_nid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 6
  %22 = ptrtoint ptr %cvt_nid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cvt_nid, align 4
  tail call void %21(ptr noundef %codec, i16 noundef zeroext %23, i32 noundef %call15) #18
  %24 = ptrtoint ptr %chmap_set to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chmap_set, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22 = icmp ne i8 %25, 0
  tail call void @snd_hdac_setup_channel_mapping(ptr noundef %chmap2, i16 noundef zeroext %3, i1 noundef zeroext %non_pcm, i32 noundef %call14, i32 noundef %7, ptr noundef %chmap13, i1 noundef zeroext %tobool22) #18
  %pin_setup_infoframe = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %pin_setup_infoframe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pin_setup_infoframe, align 4
  %conn_type = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 8, i32 4, i32 9
  %28 = ptrtoint ptr %conn_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %conn_type, align 8
  tail call void %27(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef %5, i32 noundef %call14, i32 noundef %call15, i32 noundef %29) #18
  %non_pcm26 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 17
  %30 = ptrtoint ptr %non_pcm26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %non_pcm26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_jack_report(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_spdif_ctls_assign(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_spdif_out_of_nid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_spdif_ctls_unassign(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_channel_allocation(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_active_channels(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_setup_channel_mapping(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_get_eld(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @silent_stream_enable(ptr noundef %codec, ptr noundef %per_pin) unnamed_addr #2 align 64 {
entry:
  %cvt_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cvt_idx) #18
  %2 = ptrtoint ptr %cvt_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cvt_idx, align 4, !annotation !485
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  %setup = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 14
  %3 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %setup, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silent_stream_enable.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silent_stream_enable, %if.then5)) #18
          to label %unlock_out [label %if.then5], !srcloc !483

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silent_stream_enable.__UNIQUE_ID_ddebug263, ptr noundef %codec, ptr noundef nonnull @.str.123) #18
  br label %unlock_out

if.end6:                                          ; preds = %entry
  %5 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %per_pin, align 8
  %dev_id = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 1
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_id, align 4
  %9 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp eq i32 %8, -1
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp224.i = icmp sgt i32 %12, 0
  br i1 %cmp224.i, label %for.body.lr.ph.i, label %if.end6.do.end.i_crit_edge

if.end6.do.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %if.end6
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %10, i32 0, i32 7, i32 4
  %13 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %10, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pin_idx.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %pin_idx.025.i, %16
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %mul.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %6)
  %cmp5.i = icmp eq i16 %18, %6
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dev_id7.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %dev_id7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev_id7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %spec.store.select.i)
  %cmp8.i = icmp eq i32 %20, %spec.store.select.i
  br i1 %cmp8.i, label %land.lhs.true.i.pin_id_to_pin_index.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i.pin_id_to_pin_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_id_to_pin_index.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %pin_idx.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end6.do.end.i_crit_edge
  %conv12.i = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.109, i32 noundef %conv12.i) #21
  br label %pin_id_to_pin_index.exit

pin_id_to_pin_index.exit:                         ; preds = %do.end.i, %land.lhs.true.i.pin_id_to_pin_index.exit_crit_edge
  %retval.0.i91 = phi i32 [ -22, %do.end.i ], [ %pin_idx.025.i, %land.lhs.true.i.pin_id_to_pin_index.exit_crit_edge ]
  %call8 = call fastcc i32 @hdmi_choose_cvt(ptr noundef %codec, i32 noundef %retval.0.i91, ptr noundef nonnull %cvt_idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %pin_id_to_pin_index.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %codec, ptr noundef nonnull @.str.124) #21
  br label %unlock_out

if.end16:                                         ; preds = %pin_id_to_pin_index.exit
  %21 = ptrtoint ptr %cvt_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cvt_idx, align 4
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list.i, align 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %26, %22
  %add.ptr.i = getelementptr i8, ptr %24, i32 %mul.i
  %assigned = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 1
  %27 = ptrtoint ptr %assigned to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %assigned, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i, align 8
  %cvt_nid18 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 6
  %30 = ptrtoint ptr %cvt_nid18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %cvt_nid18, align 4
  %silent_stream = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 15
  %31 = ptrtoint ptr %silent_stream to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %silent_stream, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silent_stream_enable.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silent_stream_enable, %if.then31)) #18
          to label %do.end39 [label %if.then31], !srcloc !483

if.then31:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %per_pin, align 8
  %conv = zext i16 %33 to i32
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i, align 8
  %conv36 = zext i16 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silent_stream_enable.__UNIQUE_ID_ddebug264, ptr noundef %codec, ptr noundef nonnull @.str.125, i32 noundef %conv, i32 noundef %conv36) #18
  br label %do.end39

do.end39:                                         ; preds = %if.then31, %if.end16
  %36 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %per_pin, align 8
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_id, align 4
  %call42 = call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %37, i32 noundef %39) #18
  %40 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %per_pin, align 8
  %mux_idx = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 5
  %42 = ptrtoint ptr %mux_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mux_idx, align 8
  %conv.i.i = zext i16 %41 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or2.i.i = or i32 %shl1.i.i, 983296
  %call.i.i = call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i, i32 noundef %43) #18
  %44 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %spec1, align 8
  %pin_cvt_fixup.i = getelementptr inbounds %struct.hdmi_spec, ptr %45, i32 0, i32 15, i32 4
  %46 = ptrtoint ptr %pin_cvt_fixup.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pin_cvt_fixup.i, align 8
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %do.end39.pin_cvt_fixup.exit_crit_edge, label %if.then.i

do.end39.pin_cvt_fixup.exit_crit_edge:            ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_cvt_fixup.exit

if.then.i:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #20
  call void %47(ptr noundef %codec, ptr noundef %per_pin, i16 noundef zeroext 0) #18
  br label %pin_cvt_fixup.exit

pin_cvt_fixup.exit:                               ; preds = %if.then.i, %do.end39.pin_cvt_fixup.exit_crit_edge
  %48 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %per_pin, align 8
  %50 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dev_id, align 4
  %call48 = call i32 @snd_hdac_sync_audio_rate(ptr noundef %codec, i16 noundef zeroext %49, i32 noundef %51, i32 noundef 48000) #18
  %call49 = call i32 @snd_hdac_calc_stream_format(i32 noundef 48000, i32 noundef 2, i32 noundef 2, i32 noundef 16, i16 noundef zeroext 0) #18
  %52 = ptrtoint ptr %cvt_nid18 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cvt_nid18, align 4
  call void @snd_hda_codec_setup_stream(ptr noundef %codec, i16 noundef zeroext %53, i32 noundef 15, i32 noundef 15, i32 noundef %call49) #18
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #18
  %54 = ptrtoint ptr %cvt_nid18 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cvt_nid18, align 4
  call void @snd_hda_codec_setup_stream(ptr noundef %codec, i16 noundef zeroext %55, i32 noundef 15, i32 noundef 0, i32 noundef %call49) #18
  %channels = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 16
  %56 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %channels, align 8
  %non_pcm = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 17
  %57 = ptrtoint ptr %non_pcm to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %non_pcm, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool52 = icmp ne i8 %58, 0
  call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %codec, ptr noundef %per_pin, i1 noundef zeroext %tobool52)
  br label %unlock_out

unlock_out:                                       ; preds = %pin_cvt_fixup.exit, %do.end13, %if.then5, %do.body
  call void @mutex_unlock(ptr noundef %lock) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cvt_idx) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @silent_stream_disable(ptr noundef %codec, ptr noundef %per_pin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  %silent_stream = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 15
  %2 = ptrtoint ptr %silent_stream to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %silent_stream, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.unlock_out_crit_edge, label %do.body

entry.unlock_out_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock_out

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @silent_stream_disable.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@silent_stream_disable, %if.then5)) #18
          to label %do.end [label %if.then5], !srcloc !483

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %per_pin, align 8
  %conv = zext i16 %5 to i32
  %cvt_nid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 6
  %6 = ptrtoint ptr %cvt_nid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cvt_nid, align 4
  %conv6 = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @silent_stream_disable.__UNIQUE_ID_ddebug265, ptr noundef %codec, ptr noundef nonnull @.str.129, i32 noundef %conv, i32 noundef %conv6) #18
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %cvt_nid8 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 6
  %8 = ptrtoint ptr %cvt_nid8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cvt_nid8, align 4
  %10 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spec1, align 8
  %num_cvts.i = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %num_cvts.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_cvts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15.i = icmp sgt i32 %13, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %do.end.cvt_nid_to_cvt_index.exit.thread_crit_edge

do.end.cvt_nid_to_cvt_index.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cvt_nid_to_cvt_index.exit.thread

for.body.lr.ph.i:                                 ; preds = %do.end
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %11, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cvt_idx.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %cvt_idx.016.i, %17
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %mul.i.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %9)
  %cmp4.i = icmp eq i16 %19, %9
  br i1 %cmp4.i, label %land.lhs.true, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %cvt_idx.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.inc.i.cvt_nid_to_cvt_index.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.cvt_nid_to_cvt_index.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cvt_nid_to_cvt_index.exit.thread

cvt_nid_to_cvt_index.exit.thread:                 ; preds = %for.inc.i.cvt_nid_to_cvt_index.exit.thread_crit_edge, %do.end.cvt_nid_to_cvt_index.exit.thread_crit_edge
  %conv6.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.126, i32 noundef %conv6.i) #21
  br label %if.end15

land.lhs.true:                                    ; preds = %for.body.i
  %num_cvts = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %num_cvts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cvts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cvt_idx.016.i, i32 %21)
  %cmp11 = icmp slt i32 %cvt_idx.016.i, %21
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i, align 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %25, %cvt_idx.016.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 %mul.i
  %assigned = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %assigned to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %assigned, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true.if.end15_crit_edge, %cvt_nid_to_cvt_index.exit.thread
  %27 = ptrtoint ptr %cvt_nid8 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %cvt_nid8, align 4
  %28 = ptrtoint ptr %silent_stream to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %silent_stream, align 1
  br label %unlock_out

unlock_out:                                       ; preds = %if.end15, %entry.unlock_out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_choose_cvt(ptr noundef %codec, i32 noundef %pin_idx, ptr noundef writeonly %cvt_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pin_idx)
  %cmp = icmp slt i32 %pin_idx, 0
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end:                                           ; preds = %entry
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %5, %pin_idx
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %silent_stream = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 15
  %6 = ptrtoint ptr %silent_stream to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %silent_stream, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end8_crit_edge, label %if.then3

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  %cvt_nid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 6
  %8 = ptrtoint ptr %cvt_nid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cvt_nid, align 4
  %num_cvts.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %num_cvts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cvts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15.i = icmp sgt i32 %11, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.then3.do.end.i_crit_edge

if.then3.do.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %if.then3
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cvt_idx.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %cvt_idx.016.i, %15
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %mul.i.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %9)
  %cmp4.i = icmp eq i16 %17, %9
  br i1 %cmp4.i, label %for.body.i.cvt_nid_to_cvt_index.exit_crit_edge, label %for.inc.i

for.body.i.cvt_nid_to_cvt_index.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cvt_nid_to_cvt_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %cvt_idx.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then3.do.end.i_crit_edge
  %conv6.i = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.126, i32 noundef %conv6.i) #21
  br label %cvt_nid_to_cvt_index.exit

cvt_nid_to_cvt_index.exit:                        ; preds = %do.end.i, %for.body.i.cvt_nid_to_cvt_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %cvt_idx.016.i, %for.body.i.cvt_nid_to_cvt_index.exit_crit_edge ]
  %tobool5.not = icmp eq ptr %cvt_id, null
  br i1 %tobool5.not, label %cvt_nid_to_cvt_index.exit.cleanup_crit_edge, label %cvt_nid_to_cvt_index.exit.cleanup.sink.split_crit_edge

cvt_nid_to_cvt_index.exit.cleanup.sink.split_crit_edge: ; preds = %cvt_nid_to_cvt_index.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

cvt_nid_to_cvt_index.exit.cleanup_crit_edge:      ; preds = %cvt_nid_to_cvt_index.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %tobool.not85 = phi i1 [ false, %land.lhs.true.if.end8_crit_edge ], [ true, %if.end.if.end8_crit_edge ], [ true, %entry.if.end8_crit_edge ]
  %per_pin.083 = phi ptr [ %add.ptr.i, %land.lhs.true.if.end8_crit_edge ], [ null, %if.end.if.end8_crit_edge ], [ null, %entry.if.end8_crit_edge ]
  %num_cvts = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %num_cvts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_cvts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9102 = icmp sgt i32 %19, 0
  br i1 %cmp9102, label %for.body.lr.ph, label %if.end8.for.end33_crit_edge

if.end8.for.end33_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.body.lr.ph:                                   ; preds = %if.end8
  %list.i77 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %list.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list.i77, align 4
  %elem_size.i78 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %elem_size.i78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %elem_size.i78, align 4
  %num_mux_nids = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin.083, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.lr.ph
  %cvt_idx.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc31.for.body_crit_edge ]
  %mul.i79 = mul i32 %23, %cvt_idx.0103
  %add.ptr.i80 = getelementptr i8, ptr %21, i32 %mul.i79
  %assigned = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i80, i32 0, i32 1
  %24 = ptrtoint ptr %assigned to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %assigned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp eq i32 %25, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.for.inc31_crit_edge

for.body.for.inc31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc31

if.end13:                                         ; preds = %for.body
  br i1 %tobool.not85, label %if.end13.if.end43_crit_edge, label %for.cond17.preheader

if.end13.if.end43_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

for.cond17.preheader:                             ; preds = %if.end13
  %26 = ptrtoint ptr %num_mux_nids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_mux_nids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1897 = icmp sgt i32 %27, 0
  br i1 %cmp1897, label %for.body19.lr.ph, label %for.cond17.preheader.for.end_crit_edge

for.cond17.preheader.for.end_crit_edge:           ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body19.lr.ph:                                 ; preds = %for.cond17.preheader
  %28 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i80, align 8
  br label %for.body19

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %for.body19.lr.ph
  %mux_idx.198 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc, %for.inc.for.body19_crit_edge ]
  %arrayidx = getelementptr %struct.hdmi_spec_per_pin, ptr %per_pin.083, i32 0, i32 4, i32 %mux_idx.198
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %29)
  %cmp22 = icmp eq i16 %31, %29
  br i1 %cmp22, label %for.body19.for.end_crit_edge, label %for.inc

for.body19.for.end_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc:                                          ; preds = %for.body19
  %inc = add nuw nsw i32 %mux_idx.198, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.for.inc31_crit_edge, label %for.inc.for.body19_crit_edge

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body19

for.inc.for.inc31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc31

for.end:                                          ; preds = %for.body19.for.end_crit_edge, %for.cond17.preheader.for.end_crit_edge
  %mux_idx.1.lcssa = phi i32 [ 0, %for.cond17.preheader.for.end_crit_edge ], [ %mux_idx.198, %for.body19.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mux_idx.1.lcssa, i32 %27)
  %cmp27 = icmp eq i32 %mux_idx.1.lcssa, %27
  br i1 %cmp27, label %for.end.for.inc31_crit_edge, label %for.end.for.end33_crit_edge

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end33

for.end.for.inc31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc31

for.inc31:                                        ; preds = %for.end.for.inc31_crit_edge, %for.inc.for.inc31_crit_edge, %for.body.for.inc31_crit_edge
  %inc32 = add nuw nsw i32 %cvt_idx.0103, 1
  %exitcond114.not = icmp eq i32 %inc32, %19
  br i1 %exitcond114.not, label %for.inc31.cleanup_crit_edge, label %for.inc31.for.body_crit_edge

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc31.cleanup_crit_edge:                      ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.end33:                                        ; preds = %for.end.for.end33_crit_edge, %if.end8.for.end33_crit_edge
  %cvt_idx.0.lcssa = phi i32 [ 0, %if.end8.for.end33_crit_edge ], [ %cvt_idx.0103, %for.end.for.end33_crit_edge ]
  %mux_idx.3 = phi i32 [ 0, %if.end8.for.end33_crit_edge ], [ %mux_idx.1.lcssa, %for.end.for.end33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cvt_idx.0.lcssa, i32 %19)
  %cmp35 = icmp eq i32 %cvt_idx.0.lcssa, %19
  br i1 %cmp35, label %for.end33.cleanup_crit_edge, label %if.end38

for.end33.cleanup_crit_edge:                      ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end38:                                         ; preds = %for.end33
  br i1 %tobool.not85, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  %mux_idx42 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin.083, i32 0, i32 5
  %32 = ptrtoint ptr %mux_idx42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mux_idx.3, ptr %mux_idx42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge, %if.end13.if.end43_crit_edge
  %cvt_idx.095 = phi i32 [ %cvt_idx.0.lcssa, %if.then41 ], [ %cvt_idx.0.lcssa, %if.end38.if.end43_crit_edge ], [ %cvt_idx.0103, %if.end13.if.end43_crit_edge ]
  %tobool44.not = icmp eq ptr %cvt_id, null
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.end43.cleanup.sink.split_crit_edge

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end43.cleanup.sink.split_crit_edge, %cvt_nid_to_cvt_index.exit.cleanup.sink.split_crit_edge
  %cvt_idx.095.sink = phi i32 [ %retval.0.i, %cvt_nid_to_cvt_index.exit.cleanup.sink.split_crit_edge ], [ %cvt_idx.095, %if.end43.cleanup.sink.split_crit_edge ]
  %33 = ptrtoint ptr %cvt_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cvt_idx.095.sink, ptr %cvt_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end43.cleanup_crit_edge, %for.end33.cleanup_crit_edge, %for.inc31.cleanup_crit_edge, %cvt_nid_to_cvt_index.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cvt_nid_to_cvt_index.exit.cleanup_crit_edge ], [ -16, %for.end33.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -16, %for.inc31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_sync_audio_rate(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_calc_stream_format(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_setup_stream(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdmi_get_eld_ati(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_setup_stream(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %stream_tag, i32 noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %pin_hbr_setup = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 15, i32 2
  %2 = ptrtoint ptr %pin_hbr_setup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_hbr_setup, align 8
  %4 = and i32 %format, 32783
  call void @__sanitizer_cov_trace_const_cmp4(i32 32775, i32 %4)
  %5 = icmp eq i32 %4, 32775
  %call = tail call i32 %3(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i1 noundef zeroext %5) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_setup_stream.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_setup_stream, %if.then8)) #18
          to label %cleanup [label %if.then8], !srcloc !483

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_setup_stream.__UNIQUE_ID_ddebug260, ptr noundef %codec, ptr noundef nonnull @.str.135) #18
  br label %cleanup

if.end9:                                          ; preds = %entry
  %intel_hsw_fixup = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %intel_hsw_fixup to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %intel_hsw_fixup, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %if.end9.if.end21_crit_edge, label %if.then11

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end21

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i32 noundef 0, i32 noundef 3853, i32 noundef 0) #18
  %shr = lshr i32 %call.i, 16
  %and13 = and i32 %shr, 65520
  %or = zext i1 %5 to i32
  %param.0 = or i32 %and13, %or
  %call.i39 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i32 noundef 0, i32 noundef 1854, i32 noundef %param.0) #18
  br label %if.end21

if.end21:                                         ; preds = %if.then11, %if.end9.if.end21_crit_edge
  tail call void @snd_hda_codec_setup_stream(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i32 noundef %stream_tag, i32 noundef 0, i32 noundef %format) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then8, %do.body
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_spk_to_chmap(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hdac_get_ch_alloc_from_ca(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_chmap_to_spk_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @match_bound_vga(ptr nocapture noundef readonly %dev, i32 noundef %subtype, ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bus1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus1, align 8
  %cmp = icmp eq ptr %1, @pci_bus_type
  br i1 %cmp, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %bus3 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bus3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus3, align 8
  %cmp4 = icmp eq ptr %5, @pci_bus_type
  br i1 %cmp4, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %bus9 = getelementptr i8, ptr %3, i32 -128
  %6 = ptrtoint ptr %bus9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus9, align 8
  %bus10 = getelementptr i8, ptr %dev, i32 -128
  %8 = ptrtoint ptr %bus10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus10, align 8
  %cmp11 = icmp eq ptr %7, %9
  %conv = zext i1 %cmp11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @generic_acomp_pin_eld_notify(ptr noundef %audio_ptr, i32 noundef %port, i32 noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %audio_ptr, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %port2pin = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %port2pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port2pin, align 8
  %call = tail call i32 %3(ptr noundef %audio_ptr, i32 noundef %port) #18
  %conv = trunc i32 %call to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = and i32 %call, 65535
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %audio_ptr, i32 0, i32 18
  %4 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %conv)
  %cmp.i = icmp ugt i16 %5, %conv
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %audio_ptr, i32 0, i32 17
  %6 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %7, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %audio_ptr, i32 0, i32 14
  %8 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %9, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = and i32 %11, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %12)
  %cmp.not = icmp eq i32 %12, 4194304
  br i1 %cmp.not, label %if.end6, label %get_wcaps.exit.cleanup_crit_edge

get_wcaps.exit.cleanup_crit_edge:                 ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %get_wcaps.exit
  %power = getelementptr inbounds %struct.device, ptr %audio_ptr, i32 0, i32 12
  %13 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp7 = icmp eq i32 %14, 2
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %in_pm.i = getelementptr inbounds %struct.hdac_device, ptr %audio_ptr, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_pm.i, i32 noundef 4) #18
  %15 = ptrtoint ptr %in_pm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %in_pm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @check_presence_and_report(ptr noundef %audio_ptr, i16 noundef zeroext %conv, i32 noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %get_wcaps.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atihdmi_pin2port(ptr nocapture noundef readnone %audio_ptr, i32 noundef %pin_nid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %pin_nid, 2
  %sub = add nsw i32 %div, -1
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_acomp_master_bind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %acomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @generic_acomp_notifier_set(ptr noundef %acomp, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @generic_acomp_master_unbind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %acomp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @generic_acomp_notifier_set(ptr noundef %acomp, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @generic_acomp_notifier_set(ptr nocapture noundef readonly %acomp, i1 noundef zeroext %use_acomp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %use_acomp to i8
  %audio_ops = getelementptr inbounds %struct.drm_audio_component, ptr %acomp, i32 0, i32 2
  %0 = ptrtoint ptr %audio_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_ops, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -1356
  %bind_lock = getelementptr i8, ptr %1, i32 -1004
  tail call void @mutex_lock_nested(ptr noundef %bind_lock, i32 noundef 0) #18
  %use_acomp_notifier = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %use_acomp_notifier to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %use_acomp_notifier, align 8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %relaxed_resume = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 31
  %5 = ptrtoint ptr %relaxed_resume to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %relaxed_resume, align 4
  %bf.shl = select i1 %use_acomp, i32 1024, i32 0
  %bf.clear = and i32 %bf.load, -1025
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %relaxed_resume, align 4
  %6 = load ptr, ptr %add.ptr, align 8
  %bus = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %keep_power = getelementptr inbounds %struct.hda_bus, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %keep_power to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load4 = load i8, ptr %keep_power, align 4
  %bf.clear5 = and i8 %bf.load4, -3
  store i8 %bf.clear5, ptr %keep_power, align 4
  %num_pins = getelementptr i8, ptr %1, i32 -1320
  %10 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp30 = icmp sgt i32 %11, 0
  br i1 %cmp30, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list.i = getelementptr i8, ptr %1, i32 -1292
  %elem_size.i = getelementptr i8, ptr %1, i32 -1300
  br label %for.body

for.body:                                         ; preds = %reprogram_jack_detect.exit.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %reprogram_jack_detect.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i, align 4
  %16 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %17, %i.031
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 8
  %dev_id = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 1
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dev_id, align 4
  %call.i = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %13, i16 noundef zeroext %19, i32 noundef %21) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.reprogram_jack_detect.exit_crit_edge, label %if.then.i

for.body.reprogram_jack_detect.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %reprogram_jack_detect.exit

if.then.i:                                        ; preds = %for.body
  br i1 %use_acomp, label %if.then.i.cond.end.i_crit_edge, label %cond.false.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %tag.i = getelementptr inbounds %struct.hda_jack_tbl, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %tag.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tag.i, align 4
  %24 = or i8 %23, -128
  %or.i = zext i8 %24 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %or.i, %cond.false.i ], [ 0, %if.then.i.cond.end.i_crit_edge ]
  %conv.i.i.i = zext i16 %19 to i32
  %shl1.i.i.i = shl i32 %conv.i.i.i, 20
  %or2.i.i.i = or i32 %shl1.i.i.i, 985088
  %call.i.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %13, i32 noundef %or2.i.i.i, i32 noundef %cond.i) #18
  br label %reprogram_jack_detect.exit

reprogram_jack_detect.exit:                       ; preds = %cond.end.i, %for.body.reprogram_jack_detect.exit_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %25 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %26
  br i1 %cmp, label %reprogram_jack_detect.exit.for.body_crit_edge, label %reprogram_jack_detect.exit.for.end_crit_edge

reprogram_jack_detect.exit.for.end_crit_edge:     ; preds = %reprogram_jack_detect.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

reprogram_jack_detect.exit.for.body_crit_edge:    ; preds = %reprogram_jack_detect.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %reprogram_jack_detect.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %bind_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_tbl_get_mst(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_parse_codec(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %start_nid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %start_nid) #18
  %2 = ptrtoint ptr %start_nid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %start_nid, align 2, !annotation !485
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %3 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %afg, align 4
  %call = call i32 @snd_hdac_get_sub_nodes(ptr noundef %codec, i16 noundef zeroext %4, ptr noundef nonnull %start_nid) #18
  %5 = ptrtoint ptr %start_nid to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %start_nid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.167) #21
  br label %cleanup50

if.end:                                           ; preds = %entry
  %7 = load i8, ptr @enable_all_pins, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %force_connect = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %force_connect to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %force_connect, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %pci = getelementptr inbounds %struct.hda_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %call7 = call ptr @snd_pci_quirk_lookup(ptr noundef %12, ptr noundef nonnull @force_connect_list) #18
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %value = getelementptr inbounds %struct.snd_pci_quirk, ptr %call7, i32 0, i32 3
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end12_crit_edge, label %if.then10

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %force_connect11 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %force_connect11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %force_connect11, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp13118.not = icmp eq i32 %call, 0
  br i1 %cmp13118.not, label %if.end12.cleanup50_crit_edge, label %for.body.lr.ph

if.end12.cleanup50_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup50

for.body.lr.ph:                                   ; preds = %if.end12
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  br label %for.body

for.cond25.preheader:                             ; preds = %cleanup
  br i1 %cmp13118.not, label %for.cond25.preheader.cleanup50_crit_edge, label %for.body28.lr.ph

for.cond25.preheader.cleanup50_crit_edge:         ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup50

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %start_nid.i82 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %num_nodes.i85 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %wcaps.i89 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %dp_mst.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  br label %for.body28

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %16 = ptrtoint ptr %start_nid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %start_nid, align 2
  %18 = trunc i32 %i.0119 to i16
  %conv14 = add i16 %17, %18
  %conv.i = zext i16 %conv14 to i32
  %19 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %conv14)
  %cmp.i = icmp ugt i16 %20, %conv14
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %lor.lhs.false.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.body
  %21 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %22, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %24, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %27 = and i32 %26, 15729152
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %27)
  %28 = icmp eq i32 %27, 512
  br i1 %28, label %lor.lhs.false.i.i, label %get_wcaps.exit.cleanup_crit_edge

get_wcaps.exit.cleanup_crit_edge:                 ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %get_wcaps.exit
  %29 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spec1, align 8
  %31 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_nodes.i, align 8
  %add.i.i = add i32 %32, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, %conv.i
  br i1 %cmp8.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge

lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_wcaps.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wcaps.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %34, i32 %sub.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = lshr i32 %36, 12
  %phi.bo2.i = and i32 %phi.bo.i, 14
  %phi.bo3.i = add nuw nsw i32 %phi.bo2.i, 2
  br label %get_wcaps.exit.i

get_wcaps.exit.i:                                 ; preds = %if.end.i.i, %lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo3.i, %if.end.i.i ], [ 2, %lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge ]
  %cvts.i = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 2
  %call3.i = call ptr @snd_array_new(ptr noundef %cvts.i) #18
  %tobool.not.i79 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i79, label %get_wcaps.exit.i.cleanup_crit_edge, label %if.then5.i

get_wcaps.exit.i.cleanup_crit_edge:               ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then5.i:                                       ; preds = %get_wcaps.exit.i
  %37 = ptrtoint ptr %call3.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv14, ptr %call3.i, align 8
  %channels_min.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %call3.i, i32 0, i32 2
  %38 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %channels_min.i, align 8
  %channels_max.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %call3.i, i32 0, i32 3
  %39 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i.i, ptr %channels_max.i, align 4
  %chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 27
  %40 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chmap.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %41)
  %cmp7.i = icmp ugt i32 %retval.0.i.i, %41
  br i1 %cmp7.i, label %if.then8.i, label %if.then5.i.if.end12.i_crit_edge

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #20
  %42 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.i, ptr %chmap.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.then5.i.if.end12.i_crit_edge
  %rates.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %call3.i, i32 0, i32 4
  %formats.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %call3.i, i32 0, i32 5
  %maxbps.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %call3.i, i32 0, i32 6
  %call13.i = call i32 @snd_hdac_query_supported_pcm(ptr noundef %codec, i16 noundef zeroext %conv14, ptr noundef %rates.i, ptr noundef %formats.i, ptr noundef %maxbps.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.cleanup_crit_edge, label %if.end16.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end16.i:                                       ; preds = %if.end12.i
  %num_cvts.i = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 1
  %43 = ptrtoint ptr %num_cvts.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_cvts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp17.i = icmp ult i32 %44, 4
  br i1 %cmp17.i, label %if.then18.i, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i80 = getelementptr %struct.hdmi_spec, ptr %30, i32 0, i32 3, i32 %44
  %45 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv14, ptr %arrayidx.i80, align 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %46 = ptrtoint ptr %num_cvts.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_cvts.i, align 4
  %inc.i = add i32 %47, 1
  store i32 %inc.i, ptr %num_cvts.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %if.end12.i.cleanup_crit_edge, %get_wcaps.exit.i.cleanup_crit_edge, %get_wcaps.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.cond25.preheader, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body28:                                       ; preds = %cleanup44.for.body28_crit_edge, %for.body28.lr.ph
  %i.1121 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc48, %cleanup44.for.body28_crit_edge ]
  %48 = ptrtoint ptr %start_nid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %start_nid, align 2
  %50 = trunc i32 %i.1121 to i16
  %conv32 = add i16 %49, %50
  %conv.i81 = zext i16 %conv32 to i32
  %51 = ptrtoint ptr %start_nid.i82 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %start_nid.i82, align 4
  %conv1.i83 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %conv32)
  %cmp.i84 = icmp ugt i16 %52, %conv32
  br i1 %cmp.i84, label %for.body28.cleanup44_crit_edge, label %lor.lhs.false.i88

for.body28.cleanup44_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup44

lor.lhs.false.i88:                                ; preds = %for.body28
  %53 = ptrtoint ptr %num_nodes.i85 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_nodes.i85, align 8
  %add.i86 = add i32 %54, %conv1.i83
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i86, i32 %conv.i81)
  %cmp8.not.i87 = icmp ugt i32 %add.i86, %conv.i81
  br i1 %cmp8.not.i87, label %get_wcaps.exit94, label %lor.lhs.false.i88.cleanup44_crit_edge

lor.lhs.false.i88.cleanup44_crit_edge:            ; preds = %lor.lhs.false.i88
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup44

get_wcaps.exit94:                                 ; preds = %lor.lhs.false.i88
  %55 = ptrtoint ptr %wcaps.i89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wcaps.i89, align 4
  %sub.i90 = sub nsw i32 %conv.i81, %conv1.i83
  %arrayidx.i91 = getelementptr i32, ptr %56, i32 %sub.i90
  %57 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i91, align 4
  %59 = and i32 %58, 15729152
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194816, i32 %59)
  %60 = icmp eq i32 %59, 4194816
  br i1 %60, label %if.then41, label %get_wcaps.exit94.cleanup44_crit_edge

get_wcaps.exit94.cleanup44_crit_edge:             ; preds = %get_wcaps.exit94
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup44

if.then41:                                        ; preds = %get_wcaps.exit94
  %61 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spec1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #18
  %63 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !485
  %call.i.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %conv32, i32 noundef 12, ptr noundef nonnull %val.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %snd_hda_query_pin_caps.exit.thread.i, label %snd_hda_query_pin_caps.exit.i

snd_hda_query_pin_caps.exit.thread.i:             ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #18
  br label %if.end.i103

snd_hda_query_pin_caps.exit.i:                    ; preds = %if.then41
  %64 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #18
  %and.i100 = and i32 %65, 16777344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %snd_hda_query_pin_caps.exit.i.cleanup44_crit_edge, label %snd_hda_query_pin_caps.exit.i.if.end.i103_crit_edge

snd_hda_query_pin_caps.exit.i.if.end.i103_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i103

snd_hda_query_pin_caps.exit.i.cleanup44_crit_edge: ; preds = %snd_hda_query_pin_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup44

if.end.i103:                                      ; preds = %snd_hda_query_pin_caps.exit.i.if.end.i103_crit_edge, %snd_hda_query_pin_caps.exit.thread.i
  %call2.i = call i32 @snd_hda_codec_get_pincfg(ptr noundef %codec, i16 noundef zeroext %conv32) #18
  %shr.mask.i = and i32 %call2.i, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i)
  %cmp.i102 = icmp eq i32 %shr.mask.i, 1073741824
  br i1 %cmp.i102, label %land.lhs.true.i, label %if.end.i103.if.end6.i_crit_edge

if.end.i103.if.end6.i_crit_edge:                  ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i103
  %force_connect.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 24
  %66 = ptrtoint ptr %force_connect.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %force_connect.i, align 2, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool4.not.i = icmp eq i8 %67, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup44_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

land.lhs.true.i.cleanup44_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup44

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i103.if.end6.i_crit_edge
  %intel_hsw_fixup.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 19
  %68 = ptrtoint ptr %intel_hsw_fixup.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %intel_hsw_fixup.i, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool7.not.i = icmp eq i8 %69, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i104

if.then8.i104:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %dev_num9.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 6
  %70 = ptrtoint ptr %dev_num9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dev_num9.i, align 4
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end6.i
  %dyn_pcm_assign.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 17
  %72 = ptrtoint ptr %dyn_pcm_assign.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dyn_pcm_assign.i, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool10.not.i = icmp eq i8 %73, 0
  br i1 %tobool10.not.i, label %if.else.i.if.end22.thread.i_crit_edge, label %land.lhs.true11.i

if.else.i.if.end22.thread.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.thread.i

land.lhs.true11.i:                                ; preds = %if.else.i
  %74 = ptrtoint ptr %dp_mst.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load.i = load i32, ptr %dp_mst.i, align 4
  %75 = and i32 %bf.load.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool12.not.i = icmp eq i32 %75, 0
  br i1 %tobool12.not.i, label %land.lhs.true11.i.if.end22.thread.i_crit_edge, label %if.then13.i

land.lhs.true11.i.if.end22.thread.i_crit_edge:    ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22.thread.i

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #20
  %call14.i = call i32 @snd_hda_get_num_devices(ptr noundef %codec, i16 noundef zeroext %conv32) #18
  %add.i105 = add i32 %call14.i, 1
  %dev_num15.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 6
  %76 = ptrtoint ptr %dev_num15.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dev_num15.i, align 4
  %78 = call i32 @llvm.smax.i32(i32 %77, i32 %add.i105) #18
  %79 = ptrtoint ptr %dev_num15.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %dev_num15.i, align 4
  br label %if.end22.i

if.end22.thread.i:                                ; preds = %land.lhs.true11.i.if.end22.thread.i_crit_edge, %if.else.i.if.end22.thread.i_crit_edge
  %dev_num20.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 6
  %80 = ptrtoint ptr %dev_num20.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %dev_num20.i, align 4
  br label %for.body.lr.ph.i

if.end22.i:                                       ; preds = %if.then13.i, %if.then8.i104
  %dev_num.0.i = phi i32 [ %71, %if.then8.i104 ], [ %add.i105, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_num.0.i)
  %cmp2313.i = icmp sgt i32 %dev_num.0.i, 0
  br i1 %cmp2313.i, label %if.end22.i.for.body.lr.ph.i_crit_edge, label %if.end22.i.for.end.i_crit_edge

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

if.end22.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end22.i.for.body.lr.ph.i_crit_edge, %if.end22.thread.i
  %dev_num.023.i = phi i32 [ 1, %if.end22.thread.i ], [ %dev_num.0.i, %if.end22.i.for.body.lr.ph.i_crit_edge ]
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 4
  %pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 7
  %dyn_pcm_assign28.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 17
  %num_nids.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc42.i, %if.end40.i.for.body.i_crit_edge ]
  %81 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_pins.i, align 4
  %call24.i = call ptr @snd_array_new(ptr noundef %pins.i) #18
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %for.body.i.cleanup44_crit_edge, label %if.end27.i

for.body.i.cleanup44_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup44

if.end27.i:                                       ; preds = %for.body.i
  %83 = ptrtoint ptr %dyn_pcm_assign28.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dyn_pcm_assign28.i, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool29.not.i = icmp eq i8 %84, 0
  %arrayidx.i106 = getelementptr %struct.hdmi_spec, ptr %62, i32 0, i32 8, i32 %82
  %spec.select.i = select i1 %tobool29.not.i, ptr %arrayidx.i106, ptr null
  %spec.select30.i = select i1 %tobool29.not.i, i32 %82, i32 -1
  %85 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %call24.i, i32 0, i32 11
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %spec.select.i, ptr %85, align 8
  %87 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %call24.i, i32 0, i32 12
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select30.i, ptr %87, align 4
  %89 = ptrtoint ptr %call24.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv32, ptr %call24.i, align 8
  %90 = ptrtoint ptr %num_nids.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_nids.i, align 8
  %pin_nid_idx.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %call24.i, i32 0, i32 2
  %92 = ptrtoint ptr %pin_nid_idx.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %pin_nid_idx.i, align 8
  %dev_id.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %call24.i, i32 0, i32 1
  %93 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %i.014.i, ptr %dev_id.i, align 4
  %non_pcm.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %call24.i, i32 0, i32 17
  %94 = ptrtoint ptr %non_pcm.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %non_pcm.i, align 4
  %call36.i = call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %conv32, i32 noundef %i.014.i) #18
  %95 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %spec1, align 8
  %list.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %96, i32 0, i32 7, i32 4
  %97 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %list.i.i.i, align 4
  %elem_size.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %96, i32 0, i32 7, i32 2
  %99 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %elem_size.i.i.i, align 4
  %mul.i.i.i = mul i32 %100, %82
  %add.ptr.i.i.i = getelementptr i8, ptr %98, i32 %mul.i.i.i
  %101 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr.i.i.i, align 8
  %dev_id3.i.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %dev_id3.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dev_id3.i.i, align 4
  %conv.i.i.i = zext i16 %102 to i32
  %105 = ptrtoint ptr %start_nid.i82 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %start_nid.i82, align 4
  %conv1.i.i.i = zext i16 %106 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %102)
  %cmp.i.i1.i = icmp ugt i16 %106, %102
  br i1 %cmp.i.i1.i, label %if.end27.i.hdmi_read_pin_conn.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i

if.end27.i.hdmi_read_pin_conn.exit.thread.i_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_read_pin_conn.exit.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.end27.i
  %107 = ptrtoint ptr %num_nodes.i85 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_nodes.i85, align 8
  %add.i.i.i = add i32 %108, %conv1.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i.i)
  %cmp8.not.i.i.i = icmp ugt i32 %add.i.i.i, %conv.i.i.i
  br i1 %cmp8.not.i.i.i, label %get_wcaps.exit.i.i, label %lor.lhs.false.i.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge

lor.lhs.false.i.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_read_pin_conn.exit.thread.i

get_wcaps.exit.i.i:                               ; preds = %lor.lhs.false.i.i.i
  %109 = ptrtoint ptr %wcaps.i89 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wcaps.i89, align 4
  %sub.i.i.i = sub nsw i32 %conv.i.i.i, %conv1.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %110, i32 %sub.i.i.i
  %111 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i = and i32 %112, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %get_wcaps.exit.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge, label %if.end.i.i107

get_wcaps.exit.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge: ; preds = %get_wcaps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hdmi_read_pin_conn.exit.thread.i

hdmi_read_pin_conn.exit.thread.i:                 ; preds = %get_wcaps.exit.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge, %if.end27.i.hdmi_read_pin_conn.exit.thread.i_crit_edge
  %retval.0.i48.i.i = phi i32 [ %112, %get_wcaps.exit.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.hdmi_read_pin_conn.exit.thread.i_crit_edge ], [ 0, %if.end27.i.hdmi_read_pin_conn.exit.thread.i_crit_edge ]
  %conv.i.i.i.le = zext i16 %102 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.172, i32 noundef %conv.i.i.i.le, i32 noundef %retval.0.i48.i.i) #21
  br label %cleanup44

if.end.i.i107:                                    ; preds = %get_wcaps.exit.i.i
  %call6.i.i = call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %102, i32 noundef %104) #18
  %intel_hsw_fixup.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %96, i32 0, i32 19
  %113 = ptrtoint ptr %intel_hsw_fixup.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %intel_hsw_fixup.i.i, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool7.not.i.i = icmp eq i8 %114, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #20
  %num_cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %96, i32 0, i32 1
  %115 = ptrtoint ptr %num_cvts.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %num_cvts.i.i, align 4
  %mux_nids.i.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i.i, i32 0, i32 4
  %cvt_nids.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %96, i32 0, i32 3
  %mul.i.i = shl i32 %116, 1
  %117 = call ptr @memcpy(ptr %mux_nids.i.i, ptr %cvt_nids.i.i, i32 %mul.i.i)
  br label %if.end40.i

if.else.i.i:                                      ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #20
  %mux_nids11.i.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i.i, i32 0, i32 4
  %call13.i.i = call i32 @snd_hdac_get_connections(ptr noundef %codec, i16 noundef zeroext %102, ptr noundef %mux_nids11.i.i, i32 noundef 32) #18
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else.i.i, %if.then8.i.i
  %conns.0.i.i = phi i32 [ %116, %if.then8.i.i ], [ %call13.i.i, %if.else.i.i ]
  %num_mux_nids.i.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i.i, i32 0, i32 3
  %118 = ptrtoint ptr %num_mux_nids.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conns.0.i.i, ptr %num_mux_nids.i.i, align 4
  %119 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_pins.i, align 4
  %inc.i108 = add i32 %120, 1
  store i32 %inc.i108, ptr %num_pins.i, align 4
  %inc42.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc42.i, %dev_num.023.i
  br i1 %exitcond.not.i, label %if.end40.i.for.end.i_crit_edge, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end40.i.for.end.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end.i

for.end.i:                                        ; preds = %if.end40.i.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  %num_nids43.i = getelementptr inbounds %struct.hdmi_spec, ptr %62, i32 0, i32 5
  %121 = ptrtoint ptr %num_nids43.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %num_nids43.i, align 8
  %inc44.i = add i32 %122, 1
  store i32 %inc44.i, ptr %num_nids43.i, align 8
  br label %cleanup44

cleanup44:                                        ; preds = %for.end.i, %hdmi_read_pin_conn.exit.thread.i, %for.body.i.cleanup44_crit_edge, %land.lhs.true.i.cleanup44_crit_edge, %snd_hda_query_pin_caps.exit.i.cleanup44_crit_edge, %get_wcaps.exit94.cleanup44_crit_edge, %lor.lhs.false.i88.cleanup44_crit_edge, %for.body28.cleanup44_crit_edge
  %inc48 = add nuw nsw i32 %i.1121, 1
  %exitcond123.not = icmp eq i32 %inc48, %call
  br i1 %exitcond123.not, label %cleanup44.cleanup50_crit_edge, label %cleanup44.for.body28_crit_edge

cleanup44.for.body28_crit_edge:                   ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body28

cleanup44.cleanup50_crit_edge:                    ; preds = %cleanup44
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup44.cleanup50_crit_edge, %for.cond25.preheader.cleanup50_crit_edge, %if.end12.cleanup50_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond25.preheader.cleanup50_crit_edge ], [ 0, %if.end12.cleanup50_crit_edge ], [ 0, %cleanup44.cleanup50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %start_nid) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @generic_hdmi_init_per_pins(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  %name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  br label %for.body

for.body:                                         ; preds = %eld_proc_new.exit.for.body_crit_edge, %for.body.lr.ph
  %pin_idx.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %eld_proc_new.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %6 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %7, %pin_idx.02
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %codec2 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 7
  %8 = ptrtoint ptr %codec2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %codec, ptr %codec2, align 8
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.174, ptr noundef nonnull @generic_hdmi_init_per_pins.__key) #18
  %work = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 10
  call void @__init_work(ptr noundef %work, i32 noundef 0) #18
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 10, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.176, ptr noundef nonnull @generic_hdmi_init_per_pins.__key.175, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %entry12 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 10, i32 0, i32 1
  %10 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry12, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 10, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hdmi_repoll_eld, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 10, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.178, ptr noundef nonnull @generic_hdmi_init_per_pins.__key.177) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #18
  %13 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %14 = ptrtoint ptr %codec2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %codec2, align 8
  %addr.i = getelementptr inbounds %struct.hda_codec, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.179, i32 noundef %17, i32 noundef %pin_idx.02) #18
  %card.i = getelementptr inbounds %struct.hda_codec, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %proc_root.i.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %proc_root.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %proc_root.i.i, align 8
  %call.i.i = call ptr @snd_info_create_card_entry(ptr noundef %19, ptr noundef nonnull %name.i, ptr noundef %21) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.eld_proc_new.exit_crit_edge, label %if.end.i

for.body.eld_proc_new.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %eld_proc_new.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 7
  %22 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @print_eld_info, ptr %c.i.i, align 4
  %write.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @write_eld_info, ptr %write.i, align 4
  %mode.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mode.i, align 4
  %27 = or i16 %26, 128
  store i16 %27, ptr %mode.i, align 4
  %proc_entry.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 20
  %28 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %proc_entry.i, align 8
  br label %eld_proc_new.exit

eld_proc_new.exit:                                ; preds = %if.end.i, %for.body.eld_proc_new.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #18
  %inc = add nuw nsw i32 %pin_idx.02, 1
  %29 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %eld_proc_new.exit.for.body_crit_edge, label %eld_proc_new.exit.for.end_crit_edge

eld_proc_new.exit.for.end_crit_edge:              ; preds = %eld_proc_new.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

eld_proc_new.exit.for.body_crit_edge:             ; preds = %eld_proc_new.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %eld_proc_new.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_register_chmap_ops(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_get_chmap(ptr nocapture noundef readonly %hdac, i32 noundef %pcm_idx, ptr nocapture noundef writeonly %chmap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %hdac, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %i.09.i, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %pcm_idx1.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %pcm_idx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pcm_idx)
  %cmp2.i = icmp eq i32 %9, %pcm_idx
  br i1 %cmp2.i, label %pcm_idx_to_pin.exit, label %for.cond.i

pcm_idx_to_pin.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %pcm_idx_to_pin.exit.cleanup_crit_edge, label %if.end

pcm_idx_to_pin.exit.cleanup_crit_edge:            ; preds = %pcm_idx_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %pcm_idx_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  %chmap2 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %chmap2 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %chmap2, align 2
  %12 = ptrtoint ptr %chmap to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %chmap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pcm_idx_to_pin.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_set_chmap(ptr noundef %hdac, i32 noundef %pcm_idx, ptr nocapture noundef readonly %chmap, i32 noundef %prepared) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %hdac, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %i.09.i, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %pcm_idx1.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %pcm_idx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pcm_idx)
  %cmp2.i = icmp eq i32 %9, %pcm_idx
  br i1 %cmp2.i, label %pcm_idx_to_pin.exit, label %for.cond.i

pcm_idx_to_pin.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %pcm_idx_to_pin.exit.cleanup_crit_edge, label %if.end

pcm_idx_to_pin.exit.cleanup_crit_edge:            ; preds = %pcm_idx_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %pcm_idx_to_pin.exit
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  %chmap_set = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %chmap_set to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %chmap_set, align 1
  %chmap2 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 19
  %11 = ptrtoint ptr %chmap to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %chmap, align 1
  %13 = ptrtoint ptr %chmap2 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %chmap2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prepared)
  %tobool3.not = icmp eq i32 %prepared, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %non_pcm = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %non_pcm to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %non_pcm, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5 = icmp ne i8 %15, 0
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %hdac, ptr noundef nonnull %add.ptr.i.i, i1 noundef zeroext %tobool5)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %pcm_idx_to_pin.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @is_hdmi_pcm_attached(ptr nocapture noundef readonly %hdac, i32 noundef %pcm_idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %hdac, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.pcm_idx_to_pin.exit_crit_edge

entry.pcm_idx_to_pin.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcm_idx_to_pin.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.pcm_idx_to_pin.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.cond.i.pcm_idx_to_pin.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcm_idx_to_pin.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %i.09.i, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %pcm_idx1.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %pcm_idx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pcm_idx)
  %cmp2.i = icmp eq i32 %9, %pcm_idx
  br i1 %cmp2.i, label %for.body.i.pcm_idx_to_pin.exit_crit_edge, label %for.cond.i

for.body.i.pcm_idx_to_pin.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pcm_idx_to_pin.exit

pcm_idx_to_pin.exit:                              ; preds = %for.body.i.pcm_idx_to_pin.exit_crit_edge, %for.cond.i.pcm_idx_to_pin.exit_crit_edge, %entry.pcm_idx_to_pin.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.pcm_idx_to_pin.exit_crit_edge ], [ %add.ptr.i.i, %for.body.i.pcm_idx_to_pin.exit_crit_edge ], [ null, %for.cond.i.pcm_idx_to_pin.exit_crit_edge ]
  %tobool = icmp ne ptr %retval.0.i, null
  ret i1 %tobool
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_get_spk_alloc(ptr nocapture noundef readonly %hdac, i32 noundef %pcm_idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %hdac, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %i.09.i, %7
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %pcm_idx1.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %pcm_idx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pcm_idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %pcm_idx)
  %cmp2.i = icmp eq i32 %9, %pcm_idx
  br i1 %cmp2.i, label %pcm_idx_to_pin.exit, label %for.cond.i

pcm_idx_to_pin.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %pcm_idx_to_pin.exit.cleanup_crit_edge, label %if.end

pcm_idx_to_pin.exit.cleanup_crit_edge:            ; preds = %pcm_idx_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %pcm_idx_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  %spk_alloc = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 8, i32 4, i32 11
  %10 = ptrtoint ptr %spk_alloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spk_alloc, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pcm_idx_to_pin.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ 0, %pcm_idx_to_pin.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_pin_get_eld(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %dev_id, ptr noundef %buf, ptr noundef %eld_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef %dev_id) #18
  %call1 = tail call i32 @snd_hdmi_get_eld(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef %buf, ptr noundef %eld_size) #18
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_pin_setup_infoframe(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %ca, i32 noundef %active_channels, i32 noundef %conn_type) #2 align 64 {
entry:
  %ai = alloca %union.audio_infoframe, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %ai) #18
  %0 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 3
  %3 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 4
  %4 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 5
  %5 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 6
  %6 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 7
  %7 = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %ai, i32 0, i32 8
  %8 = call ptr @memset(ptr %ai, i32 0, i32 9)
  %9 = zext i32 %conn_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %conn_type, label %do.body [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %ai to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -124, ptr %ai, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %1, align 1
  %13 = trunc i32 %active_channels to i8
  %conv = add i8 %13, -1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %3, align 1
  %conv1 = trunc i32 %ca to i8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1, ptr %6, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %5, align 1
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %7, align 1
  %22 = add i8 %13, 10
  %23 = add i8 %22, %17
  %24 = add i8 %23, %19
  %25 = add i8 %24, %conv1
  %26 = add i8 %25, %21
  %add.8.i.neg = sub i8 124, %26
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %add.8.i.neg, ptr %2, align 1
  br label %if.end19

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %ai to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -124, ptr %ai, align 1
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 27, ptr %0, align 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 68, ptr %1, align 1
  %31 = trunc i32 %active_channels to i8
  %conv9 = add i8 %31, -1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv9, ptr %2, align 1
  %conv11 = trunc i32 %ca to i8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv11, ptr %5, align 1
  br label %if.end19

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_pin_setup_infoframe, %if.then16)) #18
          to label %cleanup [label %if.then16], !srcloc !483

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %conv17 = zext i16 %pin_nid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug254, ptr noundef %codec, ptr noundef nonnull @.str.143, i32 noundef %conv17) #18
  br label %cleanup

if.end19:                                         ; preds = %if.then4, %if.then
  %call20 = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id) #18
  %call.i.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #18
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3890, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 192
  br i1 %cmp.not.i, label %for.body.preheader.i, label %if.end19.do.body23_crit_edge

if.end19.do.body23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.body.preheader.i:                             ; preds = %if.end19
  %call.i1.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %34 = ptrtoint ptr %ai to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ai, align 1
  %36 = trunc i32 %call.i1.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %36)
  %cmp5.not.i = icmp eq i8 %35, %36
  br i1 %cmp5.not.i, label %for.cond.i, label %for.body.preheader.i.do.body23_crit_edge

for.body.preheader.i.do.body23_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call.i1.1.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %0, align 1
  %39 = trunc i32 %call.i1.1.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %39)
  %cmp5.not.1.i = icmp eq i8 %38, %39
  br i1 %cmp5.not.1.i, label %for.cond.1.i, label %for.cond.i.do.body23_crit_edge

for.cond.i.do.body23_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.i1.2.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %1, align 1
  %42 = trunc i32 %call.i1.2.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %cmp5.not.2.i = icmp eq i8 %41, %42
  br i1 %cmp5.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.body23_crit_edge

for.cond.1.i.do.body23_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.i1.3.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %2, align 1
  %45 = trunc i32 %call.i1.3.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %45)
  %cmp5.not.3.i = icmp eq i8 %44, %45
  br i1 %cmp5.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.body23_crit_edge

for.cond.2.i.do.body23_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.i1.4.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %3, align 1
  %48 = trunc i32 %call.i1.4.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %48)
  %cmp5.not.4.i = icmp eq i8 %47, %48
  br i1 %cmp5.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.body23_crit_edge

for.cond.3.i.do.body23_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.i1.5.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %4, align 1
  %51 = trunc i32 %call.i1.5.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %51)
  %cmp5.not.5.i = icmp eq i8 %50, %51
  br i1 %cmp5.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.body23_crit_edge

for.cond.4.i.do.body23_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call.i1.6.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %5, align 1
  %54 = trunc i32 %call.i1.6.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %54)
  %cmp5.not.6.i = icmp eq i8 %53, %54
  br i1 %cmp5.not.6.i, label %for.cond.6.i, label %for.cond.5.i.do.body23_crit_edge

for.cond.5.i.do.body23_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %call.i1.7.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 1
  %57 = trunc i32 %call.i1.7.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp5.not.7.i = icmp eq i8 %56, %57
  br i1 %cmp5.not.7.i, label %hdmi_infoframe_uptodate.exit, label %for.cond.6.i.do.body23_crit_edge

for.cond.6.i.do.body23_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

hdmi_infoframe_uptodate.exit:                     ; preds = %for.cond.6.i
  %call.i1.8.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3889, i32 noundef 0) #18
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %7, align 1
  %60 = trunc i32 %call.i1.8.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %60)
  %cmp5.not.8.i = icmp eq i8 %59, %60
  br i1 %cmp5.not.8.i, label %hdmi_infoframe_uptodate.exit.cleanup_crit_edge, label %hdmi_infoframe_uptodate.exit.do.body23_crit_edge

hdmi_infoframe_uptodate.exit.do.body23_crit_edge: ; preds = %hdmi_infoframe_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body23

hdmi_infoframe_uptodate.exit.cleanup_crit_edge:   ; preds = %hdmi_infoframe_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body23:                                        ; preds = %hdmi_infoframe_uptodate.exit.do.body23_crit_edge, %for.cond.6.i.do.body23_crit_edge, %for.cond.5.i.do.body23_crit_edge, %for.cond.4.i.do.body23_crit_edge, %for.cond.3.i.do.body23_crit_edge, %for.cond.2.i.do.body23_crit_edge, %for.cond.1.i.do.body23_crit_edge, %for.cond.i.do.body23_crit_edge, %for.body.preheader.i.do.body23_crit_edge, %if.end19.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_pin_setup_infoframe, %if.then35)) #18
          to label %do.end41 [label %if.then35], !srcloc !483

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #20
  %conv38 = zext i16 %pin_nid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug255, ptr noundef %codec, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142, i32 noundef %conv38, i32 noundef %active_channels, i32 noundef %ca) #18
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body23
  %call.i.i.i81 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #18
  %call.i.i82 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1842, i32 noundef 0) #18
  call fastcc void @hdmi_fill_audio_infoframe(ptr noundef %codec, i16 noundef zeroext %pin_nid, ptr noundef nonnull %ai)
  %call.i.i.i83 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #18
  %call.i.i84 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1842, i32 noundef 192) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %hdmi_infoframe_uptodate.exit.cleanup_crit_edge, %if.then16, %do.body
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %ai) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_pin_hbr_setup(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i1 noundef zeroext %hbr) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #18
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i, align 4, !annotation !485
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 12, ptr noundef nonnull %val.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %snd_hda_query_pin_caps.exit.thread, label %snd_hda_query_pin_caps.exit

snd_hda_query_pin_caps.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #18
  br label %if.then

snd_hda_query_pin_caps.exit:                      ; preds = %entry
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #18
  %and = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else25, label %snd_hda_query_pin_caps.exit.if.then_crit_edge

snd_hda_query_pin_caps.exit.if.then_crit_edge:    ; preds = %snd_hda_query_pin_caps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %snd_hda_query_pin_caps.exit.if.then_crit_edge, %snd_hda_query_pin_caps.exit.thread
  %call1 = call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id) #18
  %call.i = call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %cond = select i1 %hbr, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and5 = and i32 %call.i, -4
  %masksel = select i1 %hbr, i32 3, i32 0
  %new_pinctl.0 = or i32 %and5, %masksel
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_pin_hbr_setup.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_pin_hbr_setup, %if.then15)) #18
          to label %do.end [label %if.then15], !srcloc !483

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i16 %pin_nid to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %new_pinctl.0)
  %cmp16 = icmp eq i32 %call.i, %new_pinctl.0
  %cond18 = select i1 %cmp16, ptr @.str.132, ptr @.str.133
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_pin_hbr_setup.__UNIQUE_ID_ddebug259, ptr noundef %codec, ptr noundef nonnull @.str.149, i32 noundef %conv, ptr noundef nonnull %cond18, i32 noundef %new_pinctl.0) #18
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %new_pinctl.0)
  %cmp20.not = icmp eq i32 %call.i, %new_pinctl.0
  br i1 %cmp20.not, label %do.end.if.end29_crit_edge, label %if.then22

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i49 = call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1799, i32 noundef %new_pinctl.0) #18
  br label %if.end29

if.else25:                                        ; preds = %snd_hda_query_pin_caps.exit
  br i1 %hbr, label %if.else25.cleanup_crit_edge, label %if.else25.if.end29_crit_edge

if.else25.if.end29_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end29:                                         ; preds = %if.else25.if.end29_crit_edge, %if.then22, %do.end.if.end29_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.else25.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %cond, %if.then3 ], [ 0, %if.end29 ], [ -22, %if.else25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdmi_get_eld(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_fill_audio_infoframe(ptr noundef %codec, i16 noundef zeroext %pin_nid, ptr nocapture noundef readonly %dip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @snd_hdmi_get_eld_size(ptr noundef %codec, i16 noundef zeroext %pin_nid) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_debug_dip_size.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_fill_audio_infoframe, %if.then.i)) #18
          to label %for.body.i [label %if.then.i], !srcloc !483

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_debug_dip_size.__UNIQUE_ID_ddebug252, ptr noundef %codec, ptr noundef nonnull @.str.146, i32 noundef %call.i) #18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i, %entry
  %i.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.i ], [ 0, %entry ]
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 3886, i32 noundef %i.036.i) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_debug_dip_size.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_fill_audio_infoframe, %if.then17.i)) #18
          to label %for.inc.i [label %if.then17.i], !srcloc !483

if.then17.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_debug_dip_size.__UNIQUE_ID_ddebug253, ptr noundef %codec, ptr noundef nonnull @.str.147, i32 noundef %i.036.i, i32 noundef %call.i.i) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %for.body.i
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %hdmi_debug_dip_size.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

hdmi_debug_dip_size.exit:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i1 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1840, i32 noundef 0) #18
  %0 = ptrtoint ptr %dip to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dip, align 1
  %conv.i = zext i8 %1 to i32
  %call.i.i2 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i) #18
  %arrayidx.1 = getelementptr i8, ptr %dip, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.i.1 = zext i8 %3 to i32
  %call.i.i2.1 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.1) #18
  %arrayidx.2 = getelementptr i8, ptr %dip, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  %conv.i.2 = zext i8 %5 to i32
  %call.i.i2.2 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.2) #18
  %arrayidx.3 = getelementptr i8, ptr %dip, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  %conv.i.3 = zext i8 %7 to i32
  %call.i.i2.3 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.3) #18
  %arrayidx.4 = getelementptr i8, ptr %dip, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  %conv.i.4 = zext i8 %9 to i32
  %call.i.i2.4 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.4) #18
  %arrayidx.5 = getelementptr i8, ptr %dip, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  %conv.i.5 = zext i8 %11 to i32
  %call.i.i2.5 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.5) #18
  %arrayidx.6 = getelementptr i8, ptr %dip, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  %conv.i.6 = zext i8 %13 to i32
  %call.i.i2.6 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.6) #18
  %arrayidx.7 = getelementptr i8, ptr %dip, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  %conv.i.7 = zext i8 %15 to i32
  %call.i.i2.7 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.7) #18
  %arrayidx.8 = getelementptr i8, ptr %dip, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.8, align 1
  %conv.i.8 = zext i8 %17 to i32
  %call.i.i2.8 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef 0, i32 noundef 1841, i32 noundef %conv.i.8) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdmi_get_eld_size(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_hdmi_build_controls(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %pcm_used = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %pcm_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcm_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp120 = icmp sgt i32 %3, 0
  br i1 %cmp120, label %for.body.lr.ph, label %entry.for.cond27.preheader_crit_edge

entry.for.cond27.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond27.preheader

for.body.lr.ph:                                   ; preds = %entry
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 17
  %cvt_nids = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 3
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %pcm_bitmap = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 11
  br label %for.body

for.cond27.preheader:                             ; preds = %for.inc.for.cond27.preheader_crit_edge, %entry.for.cond27.preheader_crit_edge
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28123 = icmp sgt i32 %5, 0
  br i1 %cmp28123, label %for.body29.lr.ph, label %for.cond27.preheader.for.cond36.preheader_crit_edge

for.cond27.preheader.for.cond36.preheader_crit_edge: ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond36.preheader

for.body29.lr.ph:                                 ; preds = %for.cond27.preheader
  %list.i106 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i107 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  br label %for.body29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pcm_idx.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %pcm_idx.0121
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %pcm2 = getelementptr inbounds %struct.hda_pcm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm2, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_set_bit(i32 noundef %pcm_idx.0121, ptr noundef %pcm_bitmap) #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call fastcc i32 @generic_hdmi_build_jack(ptr noundef %codec, i32 noundef %pcm_idx.0121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup57_crit_edge, label %if.end5

if.end.cleanup57_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dyn_pcm_assign, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %cvt_nids to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cvt_nids, align 4
  %call9 = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %codec, i16 noundef zeroext 0, i16 noundef zeroext %13, i32 noundef 2) #18
  br label %if.end13

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i, align 4
  %16 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %17, %pcm_idx.0121
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 8
  %mux_nids = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 4
  %20 = ptrtoint ptr %mux_nids to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mux_nids, align 8
  %call12 = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %codec, i16 noundef zeroext %19, i16 noundef zeroext %21, i32 noundef 2) #18
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %err.0 = phi i32 [ %call9, %if.then7 ], [ %call12, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp14 = icmp slt i32 %err.0, 0
  br i1 %cmp14, label %if.end13.cleanup57_crit_edge, label %if.end16

if.end13.cleanup57_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

if.end16:                                         ; preds = %if.end13
  tail call void @snd_hda_spdif_ctls_unassign(ptr noundef %codec, i32 noundef %pcm_idx.0121) #18
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %device = getelementptr inbounds %struct.hda_pcm, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp20.not = icmp eq i32 %25, -1
  br i1 %cmp20.not, label %if.end16.for.inc_crit_edge, label %if.then21

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then21:                                        ; preds = %if.end16
  %26 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec1, align 8
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @eld_bytes_ctl, ptr noundef %codec) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then21.cleanup57_crit_edge, label %if.end.i

if.then21.cleanup57_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

if.end.i:                                         ; preds = %if.then21
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %pcm_idx.0121, ptr %private_value.i, align 4
  %device2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %device2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %25, ptr %device2.i, align 4
  %call3.i = tail call i32 @snd_hda_ctl_add(ptr noundef %codec, i16 noundef zeroext 0, ptr noundef nonnull %call.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup57_crit_edge, label %hdmi_create_eld_ctl.exit

if.end.i.cleanup57_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

hdmi_create_eld_ctl.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %eld_ctl.i = getelementptr %struct.hdmi_spec, ptr %27, i32 0, i32 8, i32 %pcm_idx.0121, i32 2
  %30 = ptrtoint ptr %eld_ctl.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %eld_ctl.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %hdmi_create_eld_ctl.exit, %if.end16.for.inc_crit_edge, %if.then
  %inc = add nuw nsw i32 %pcm_idx.0121, 1
  %31 = ptrtoint ptr %pcm_used to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pcm_used, align 8
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond27.preheader_crit_edge

for.inc.for.cond27.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond27.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.cond36.preheader:                             ; preds = %for.body29.for.cond36.preheader_crit_edge, %for.cond27.preheader.for.cond36.preheader_crit_edge
  %chmap = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 27
  %33 = ptrtoint ptr %pcm_used to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pcm_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp38125 = icmp sgt i32 %34, 0
  br i1 %cmp38125, label %for.cond36.preheader.for.body39_crit_edge, label %for.cond36.preheader.cleanup57_crit_edge

for.cond36.preheader.cleanup57_crit_edge:         ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

for.cond36.preheader.for.body39_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body39

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.lr.ph
  %pin_idx.0124 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc34, %for.body29.for.body29_crit_edge ]
  %35 = ptrtoint ptr %list.i106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %list.i106, align 4
  %37 = ptrtoint ptr %elem_size.i107 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %elem_size.i107, align 4
  %mul.i108 = mul i32 %38, %pin_idx.0124
  %add.ptr.i109 = getelementptr i8, ptr %36, i32 %mul.i108
  %eld_valid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i109, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %eld_valid to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %eld_valid, align 1
  tail call fastcc void @hdmi_present_sense(ptr noundef %add.ptr.i109, i32 noundef 0)
  %inc34 = add nuw nsw i32 %pin_idx.0124, 1
  %40 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_pins, align 4
  %cmp28 = icmp slt i32 %inc34, %41
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.for.cond36.preheader_crit_edge

for.body29.for.cond36.preheader_crit_edge:        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond36.preheader

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body29

for.cond36:                                       ; preds = %if.end48
  %inc55 = add nuw nsw i32 %pcm_idx.1126, 1
  %42 = ptrtoint ptr %pcm_used to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pcm_used, align 8
  %cmp38 = icmp slt i32 %inc55, %43
  br i1 %cmp38, label %for.cond36.for.body39_crit_edge, label %for.cond36.cleanup57_crit_edge

for.cond36.cleanup57_crit_edge:                   ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

for.cond36.for.body39_crit_edge:                  ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body39

for.body39:                                       ; preds = %for.cond36.for.body39_crit_edge, %for.cond36.preheader.for.body39_crit_edge
  %pcm_idx.1126 = phi i32 [ %inc55, %for.cond36.for.body39_crit_edge ], [ 0, %for.cond36.preheader.for.body39_crit_edge ]
  %arrayidx42 = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %pcm_idx.1126
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx42, align 4
  %tobool44.not = icmp eq ptr %45, null
  br i1 %tobool44.not, label %for.body39.cleanup57_crit_edge, label %lor.lhs.false

for.body39.cleanup57_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

lor.lhs.false:                                    ; preds = %for.body39
  %pcm45 = getelementptr inbounds %struct.hda_pcm, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %pcm45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcm45, align 8
  %tobool46.not = icmp eq ptr %47, null
  br i1 %tobool46.not, label %lor.lhs.false.cleanup57_crit_edge, label %if.end48

lor.lhs.false.cleanup57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

if.end48:                                         ; preds = %lor.lhs.false
  %call50 = tail call i32 @snd_hdac_add_chmap_ctls(ptr noundef nonnull %47, i32 noundef %pcm_idx.1126, ptr noundef %chmap) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end48.cleanup57_crit_edge, label %for.cond36

if.end48.cleanup57_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup57

cleanup57:                                        ; preds = %if.end48.cleanup57_crit_edge, %lor.lhs.false.cleanup57_crit_edge, %for.body39.cleanup57_crit_edge, %for.cond36.cleanup57_crit_edge, %for.cond36.preheader.cleanup57_crit_edge, %if.end.i.cleanup57_crit_edge, %if.then21.cleanup57_crit_edge, %if.end13.cleanup57_crit_edge, %if.end.cleanup57_crit_edge
  %retval.2 = phi i32 [ 0, %for.cond36.preheader.cleanup57_crit_edge ], [ 0, %for.cond36.cleanup57_crit_edge ], [ %call50, %if.end48.cleanup57_crit_edge ], [ 0, %lor.lhs.false.cleanup57_crit_edge ], [ 0, %for.body39.cleanup57_crit_edge ], [ -12, %if.then21.cleanup57_crit_edge ], [ %call3.i, %if.end.i.cleanup57_crit_edge ], [ %err.0, %if.end13.cleanup57_crit_edge ], [ %call, %if.end.cleanup57_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_hdmi_build_pcms(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %mst_no_extra_pcms = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %mst_no_extra_pcms to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %mst_no_extra_pcms, align 4
  %3 = and i32 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %num_nids2 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_nids2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_nids2, align 8
  br i1 %tobool.not, label %if.else, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev_num = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_num, align 4
  %add = add i32 %5, -1
  %sub = add i32 %add, %7
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %pcm_num.0 = phi i32 [ %sub, %if.else ], [ %5, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_hdmi_build_pcms.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_hdmi_build_pcms, %if.then6)) #18
          to label %do.end [label %if.then6], !srcloc !483

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @generic_hdmi_build_pcms.__UNIQUE_ID_ddebug266, ptr noundef %codec, ptr noundef nonnull @.str.155, i32 noundef %pcm_num.0) #18
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcm_num.0)
  %cmp43 = icmp sgt i32 %pcm_num.0, 0
  br i1 %cmp43, label %for.body.lr.ph, label %do.end.cleanup19_crit_edge

do.end.cleanup19_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %do.end
  %pcm_used = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.body.lr.ph
  %idx.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %if.end11.for.body_crit_edge ]
  %call8 = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %codec, ptr noundef nonnull @.str.156, i32 noundef %idx.044) #18
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %for.body.cleanup19_crit_edge, label %if.end11

for.body.cleanup19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup19

if.end11:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %idx.044
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %pcm_used to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcm_used, align 8
  %inc = add i32 %10, 1
  store i32 %inc, ptr %pcm_used, align 8
  %pcm_type = getelementptr inbounds %struct.hda_pcm, ptr %call8, i32 0, i32 2
  %11 = ptrtoint ptr %pcm_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %pcm_type, align 8
  %own_chmap = getelementptr inbounds %struct.hda_pcm, ptr %call8, i32 0, i32 5
  %12 = ptrtoint ptr %own_chmap to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %own_chmap, align 4
  %stream = getelementptr inbounds %struct.hda_pcm, ptr %call8, i32 0, i32 1
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %stream, align 8
  %ops = getelementptr inbounds %struct.hda_pcm, ptr %call8, i32 0, i32 1, i32 0, i32 8
  %14 = call ptr @memcpy(ptr %ops, ptr @generic_ops, i32 20)
  %15 = load i32, ptr %pcm_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %cmp14 = icmp sgt i32 %15, 15
  %inc18 = add nuw nsw i32 %idx.044, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc18, i32 %pcm_num.0)
  %exitcond.not = icmp eq i32 %inc18, %pcm_num.0
  %or.cond = select i1 %cmp14, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.end11.cleanup19_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end11.cleanup19_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup19

cleanup19:                                        ; preds = %if.end11.cleanup19_crit_edge, %for.body.cleanup19_crit_edge, %do.end.cleanup19_crit_edge
  %retval.2 = phi i32 [ 0, %do.end.cleanup19_crit_edge ], [ -12, %for.body.cleanup19_crit_edge ], [ 0, %if.end11.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @generic_hdmi_free(ptr nocapture noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %acomp_registered = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %acomp_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acomp_registered, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %call = tail call i32 @snd_hdac_acomp_exit(ptr noundef %5) #18
  br label %if.end7

if.else:                                          ; preds = %entry
  %use_acomp_notifier.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %use_acomp_notifier.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_acomp_notifier.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not = icmp eq i8 %7, 0
  br i1 %tobool.i.not, label %if.else.if.end7_crit_edge, label %if.then3

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %bus4 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %8 = ptrtoint ptr %bus4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus4, align 8
  %call6 = tail call i32 @snd_hdac_acomp_register_notifier(ptr noundef %9, ptr noundef null) #18
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.else.if.end7_crit_edge, %if.then
  %relaxed_resume = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %10 = ptrtoint ptr %relaxed_resume to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %relaxed_resume, align 4
  %bf.clear = and i32 %bf.load, -1025
  store i32 %bf.clear, ptr %relaxed_resume, align 4
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp53 = icmp sgt i32 %12, 0
  br i1 %cmp53, label %for.body.lr.ph, label %if.end7.for.cond10.preheader_crit_edge

if.end7.for.cond10.preheader_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond10.preheader

for.body.lr.ph:                                   ; preds = %if.end7
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  br label %for.body

for.cond10.preheader:                             ; preds = %eld_proc_free.exit.for.cond10.preheader_crit_edge, %if.end7.for.cond10.preheader_crit_edge
  %pcm_used = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %pcm_used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcm_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1155 = icmp sgt i32 %14, 0
  br i1 %cmp1155, label %for.body12.lr.ph, label %for.cond10.preheader.for.end28_crit_edge

for.cond10.preheader.for.end28_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end28

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 17
  %card = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 2
  br label %for.body12

for.body:                                         ; preds = %eld_proc_free.exit.for.body_crit_edge, %for.body.lr.ph
  %pin_idx.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %eld_proc_free.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.i, align 4
  %17 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %18, %pin_idx.054
  %add.ptr.i = getelementptr i8, ptr %16, i32 %mul.i
  %work = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 10
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #18
  %codec.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 7
  %19 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %codec.i, align 8
  %bus.i = getelementptr inbounds %struct.hda_codec, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 8
  %shutdown.i = getelementptr inbounds %struct.hda_bus, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %shutdown.i, align 4
  %24 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.eld_proc_free.exit_crit_edge

for.body.eld_proc_free.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %eld_proc_free.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %proc_entry.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 20
  %25 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proc_entry.i, align 8
  tail call void @snd_info_free_entry(ptr noundef %26) #18
  %27 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %proc_entry.i, align 8
  br label %eld_proc_free.exit

eld_proc_free.exit:                               ; preds = %if.then.i, %for.body.eld_proc_free.exit_crit_edge
  %inc = add nuw nsw i32 %pin_idx.054, 1
  %28 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %eld_proc_free.exit.for.body_crit_edge, label %eld_proc_free.exit.for.cond10.preheader_crit_edge

eld_proc_free.exit.for.cond10.preheader_crit_edge: ; preds = %eld_proc_free.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond10.preheader

eld_proc_free.exit.for.body_crit_edge:            ; preds = %eld_proc_free.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body12:                                       ; preds = %for.inc26.for.body12_crit_edge, %for.body12.lr.ph
  %pcm_idx.056 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc27, %for.inc26.for.body12_crit_edge ]
  %jack = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %pcm_idx.056, i32 1
  %30 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %jack, align 4
  %cmp13 = icmp eq ptr %31, null
  br i1 %cmp13, label %for.body12.for.inc26_crit_edge, label %if.end15

for.body12.for.inc26_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc26

if.end15:                                         ; preds = %for.body12
  %32 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dyn_pcm_assign, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool16.not = icmp eq i8 %33, 0
  br i1 %tobool16.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  tail call void @snd_device_free(ptr noundef %35, ptr noundef nonnull %31) #18
  br label %for.inc26

if.else21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  %36 = ptrtoint ptr %jack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %jack, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %if.else21, %if.then17, %for.body12.for.inc26_crit_edge
  %inc27 = add nuw nsw i32 %pcm_idx.056, 1
  %37 = ptrtoint ptr %pcm_used to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pcm_used, align 8
  %cmp11 = icmp slt i32 %inc27, %38
  br i1 %cmp11, label %for.inc26.for.body12_crit_edge, label %for.inc26.for.end28_crit_edge

for.inc26.for.end28_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end28

for.inc26.for.body12_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body12

for.end28:                                        ; preds = %for.inc26.for.end28_crit_edge, %for.cond10.preheader.for.end28_crit_edge
  %39 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spec1, align 8
  %tobool.not.i50 = icmp eq ptr %40, null
  br i1 %tobool.not.i50, label %for.end28.generic_spec_free.exit_crit_edge, label %if.then.i51

for.end28.generic_spec_free.exit_crit_edge:       ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %generic_spec_free.exit

if.then.i51:                                      ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #20
  %pins.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %40, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %pins.i.i) #18
  %cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %40, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %cvts.i.i) #18
  tail call void @kfree(ptr noundef nonnull %40) #18
  %41 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %spec1, align 8
  br label %generic_spec_free.exit

generic_spec_free.exit:                           ; preds = %if.then.i51, %for.end28.generic_spec_free.exit_crit_edge
  %42 = ptrtoint ptr %relaxed_resume to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i52 = load i32, ptr %relaxed_resume, align 4
  %bf.clear.i = and i32 %bf.load.i52, -65537
  store i32 %bf.clear.i, ptr %relaxed_resume, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_unsol_event(ptr noundef %codec, i32 noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %res, 26
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %use_acomp_notifier.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %use_acomp_notifier.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_acomp_notifier.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_mst = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %4 = ptrtoint ptr %dp_mst to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %dp_mst, align 4
  %5 = and i32 %bf.load, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %and3 = lshr i32 %res, 15
  %shr4 = and i32 %and3, 63
  %.sink = select i1 %tobool.not, i32 0, i32 %shr4
  %conv6 = trunc i32 %shr to i8
  %call7 = tail call ptr @snd_hda_jack_tbl_get_from_tag(ptr noundef %codec, i8 noundef zeroext %conv6, i32 noundef %.sink) #18
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_unsol_event.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_unsol_event, %if.then15)) #18
          to label %cleanup [label %if.then15], !srcloc !483

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_unsol_event.__UNIQUE_ID_ddebug257, ptr noundef %codec, ptr noundef nonnull @.str.162, i32 noundef %shr) #18
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %6 = and i32 %res, 65011712
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end17
  %jack_dirty.i = getelementptr inbounds %struct.hda_jack_tbl, ptr %call7, i32 0, i32 5
  %7 = ptrtoint ptr %jack_dirty.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %jack_dirty.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %jack_dirty.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_intrinsic_event.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_unsol_event, %if.then.i)) #18
          to label %hdmi_intrinsic_event.exit [label %if.then.i], !srcloc !483

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #20
  %addr.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 3
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %10 = ptrtoint ptr %call7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call7, align 4
  %conv.i = zext i16 %11 to i32
  %dev_id.i = getelementptr inbounds %struct.hda_jack_tbl, ptr %call7, i32 0, i32 1
  %12 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_id.i, align 4
  %and.i = lshr i32 %res, 2
  %and.lobit.i = and i32 %and.i, 1
  %and8.i = and i32 %res, 1
  %and14.i = lshr i32 %res, 1
  %and14.lobit.i = and i32 %and14.i, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hdmi_intrinsic_event.__UNIQUE_ID_ddebug256, ptr noundef %codec, ptr noundef nonnull @.str.164, i32 noundef %9, i32 noundef %conv.i, i32 noundef %13, i32 noundef %and.lobit.i, i32 noundef %and8.i, i32 noundef %and14.lobit.i) #18
  br label %hdmi_intrinsic_event.exit

hdmi_intrinsic_event.exit:                        ; preds = %if.then.i, %if.then19
  %14 = ptrtoint ptr %call7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call7, align 4
  %dev_id21.i = getelementptr inbounds %struct.hda_jack_tbl, ptr %call7, i32 0, i32 1
  %16 = ptrtoint ptr %dev_id21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_id21.i, align 4
  tail call fastcc void @check_presence_and_report(ptr noundef %codec, i16 noundef zeroext %15, i32 noundef %17) #18
  br label %cleanup

if.else20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %and.i37 = lshr i32 %res, 21
  %shr1.i = and i32 %and.i37, 31
  %and2.i = lshr i32 %res, 1
  %and2.lobit.i = and i32 %and2.i, 1
  %and4.i = and i32 %res, 1
  %addr.i38 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 3
  %18 = ptrtoint ptr %addr.i38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i38, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.165, i32 noundef %19, i32 noundef %shr, i32 noundef %shr1.i, i32 noundef %and2.lobit.i, i32 noundef %and4.i) #21
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %hdmi_intrinsic_event.exit, %if.then15, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_hdmi_suspend(ptr nocapture noundef readonly %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pin_idx.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %6 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %7, %pin_idx.07
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %work = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 10
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #18
  %inc = add nuw nsw i32 %pin_idx.07, 1
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_hdmi_resume(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %init = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 8
  %call = tail call i32 %3(ptr noundef %codec) #18
  tail call void @snd_hdac_regmap_sync(ptr noundef %codec) #18
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pin_idx.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i, align 4
  %8 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %9, %pin_idx.010
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call fastcc void @hdmi_present_sense(ptr noundef %add.ptr.i, i32 noundef 1)
  %inc = add nuw nsw i32 %pin_idx.010, 1
  %10 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_hdmi_build_jack(ptr noundef %codec, i32 noundef %pcm_idx) unnamed_addr #2 align 64 {
entry:
  %hdmi_str = alloca [32 x i8], align 1
  %jack = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hdmi_str) #18
  %0 = call ptr @memcpy(ptr %hdmi_str, ptr @__const.generic_hdmi_build_jack.hdmi_str, i32 32)
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec1, align 8
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 7, i32 4
  %3 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i, align 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %6, %pcm_idx
  %add.ptr.i = getelementptr i8, ptr %4, i32 %mul.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack) #18
  %7 = ptrtoint ptr %jack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %jack, align 4, !annotation !485
  %arrayidx = getelementptr %struct.hdmi_spec, ptr %2, i32 0, i32 8, i32 %pcm_idx
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %device = getelementptr inbounds %struct.hda_pcm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call3 = call i32 @strlen(ptr noundef nonnull %hdmi_str) #23
  %add.ptr = getelementptr i8, ptr %hdmi_str, i32 %call3
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.150, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %2, i32 0, i32 17
  %12 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dyn_pcm_assign, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 8
  %call5 = tail call zeroext i1 @is_jack_detectable(ptr noundef %codec, i16 noundef zeroext %15) #18
  br i1 %call5, label %land.lhs.true.if.end12_crit_edge, label %if.then6

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = call i32 @strlen(ptr noundef nonnull %hdmi_str) #23
  %sub10 = sub i32 31, %call9
  %call11 = call ptr @strncat(ptr noundef nonnull %hdmi_str, ptr noundef nonnull @.str.151, i32 noundef %sub10)
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %card = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 2
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %call14 = call i32 @snd_jack_new(ptr noundef %17, ptr noundef nonnull %hdmi_str, i32 noundef 20, ptr noundef nonnull %jack, i1 noundef zeroext true, i1 noundef zeroext false) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jack, align 4
  %jack20 = getelementptr %struct.hdmi_spec, ptr %2, i32 0, i32 8, i32 %pcm_idx, i32 1
  %20 = ptrtoint ptr %jack20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %jack20, align 4
  %21 = load ptr, ptr %jack, align 4
  %private_data = getelementptr inbounds %struct.snd_jack, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_jack, ptr %21, i32 0, i32 10
  %23 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @free_hdmi_jack_priv, ptr %private_free, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call14, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hdmi_str) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_create_dig_out_ctls(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_jack_detectable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @free_hdmi_jack_priv(ptr nocapture noundef readonly %jack) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %jack1 = getelementptr inbounds %struct.hdmi_pcm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %jack1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_ctl_add(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_eld_ctl_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %type, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %5 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private_value, align 4
  %pcm_lock = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pcm_lock, i32 noundef 0) #18
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.i = icmp sgt i32 %8, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.cond.i.unlock_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.cond.i.unlock_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %i.09.i, %12
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %mul.i.i
  %pcm_idx1.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %pcm_idx1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pcm_idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %6)
  %cmp2.i = icmp eq i32 %14, %6
  br i1 %cmp2.i, label %pcm_idx_to_pin.exit, label %for.cond.i

pcm_idx_to_pin.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %pcm_idx_to_pin.exit.unlock_crit_edge, label %if.end

pcm_idx_to_pin.exit.unlock_crit_edge:             ; preds = %pcm_idx_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end:                                           ; preds = %pcm_idx_to_pin.exit
  %eld_valid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %eld_valid, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not = icmp eq i8 %16, 0
  br i1 %tobool2.not, label %if.end.unlock_crit_edge, label %cond.true

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %eld_size = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eld_size, align 4
  br label %unlock

unlock:                                           ; preds = %cond.true, %if.end.unlock_crit_edge, %pcm_idx_to_pin.exit.unlock_crit_edge, %for.cond.i.unlock_crit_edge, %entry.unlock_crit_edge
  %cond.sink = phi i32 [ 0, %entry.unlock_crit_edge ], [ 0, %pcm_idx_to_pin.exit.unlock_crit_edge ], [ %18, %cond.true ], [ 0, %if.end.unlock_crit_edge ], [ 0, %for.cond.i.unlock_crit_edge ]
  %count3 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %19 = ptrtoint ptr %count3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.sink, ptr %count3, align 8
  tail call void @mutex_unlock(ptr noundef %pcm_lock) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_eld_ctl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %pcm_lock = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pcm_lock, i32 noundef 0) #18
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.i = icmp sgt i32 %7, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.if.then_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %i.09.i, %11
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %mul.i.i
  %pcm_idx1.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %pcm_idx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_idx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %5)
  %cmp2.i = icmp eq i32 %13, %5
  br i1 %cmp2.i, label %pcm_idx_to_pin.exit, label %for.cond.i

pcm_idx_to_pin.exit:                              ; preds = %for.body.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %pcm_idx_to_pin.exit.if.then_crit_edge, label %if.end

pcm_idx_to_pin.exit.if.then_crit_edge:            ; preds = %pcm_idx_to_pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then:                                          ; preds = %pcm_idx_to_pin.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = call ptr @memset(ptr %value, i32 0, i32 512)
  br label %unlock

if.end:                                           ; preds = %pcm_idx_to_pin.exit
  %eld_size = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eld_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %17 = icmp ugt i32 %16, 256
  br i1 %17, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 375, i32 noundef 9, ptr noundef nonnull @.str.153) #18
  br label %unlock

if.end22:                                         ; preds = %if.end
  %value23 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = call ptr @memset(ptr %value23, i32 0, i32 512)
  %eld_valid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %eld_valid, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not = icmp eq i8 %20, 0
  br i1 %tobool25.not, label %if.end22.unlock_crit_edge, label %if.then26

if.end22.unlock_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %eld_buffer = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %eld_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eld_size, align 4
  %23 = call ptr @memcpy(ptr %value23, ptr %eld_buffer, i32 %22)
  br label %unlock

unlock:                                           ; preds = %if.then26, %if.end22.unlock_crit_edge, %do.end, %if.then
  %err.0 = phi i32 [ -22, %do.end ], [ 0, %if.then26 ], [ 0, %if.end22.unlock_crit_edge ], [ 0, %if.then ]
  tail call void @mutex_unlock(ptr noundef %pcm_lock) #18
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_codec_pcm_new(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_pcm_open(ptr noundef %hinfo, ptr noundef %codec, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %cvt_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cvt_idx) #18
  %4 = ptrtoint ptr %cvt_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cvt_idx, align 4, !annotation !485
  %pcm_used.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %pcm_used.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pcm_used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp11.i = icmp sgt i32 %6, 0
  br i1 %cmp11.i, label %entry.for.body.i_crit_edge, label %entry.hinfo_to_pcm_index.exit.thread_crit_edge

entry.hinfo_to_pcm_index.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pcm_index.exit.thread

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pcm_idx.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %pcm_idx.012.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %stream.i = getelementptr inbounds %struct.hda_pcm, ptr %8, i32 0, i32 1
  %cmp2.i = icmp eq ptr %stream.i, %hinfo
  br i1 %cmp2.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %pcm_idx.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.hinfo_to_pcm_index.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.hinfo_to_pcm_index.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pcm_index.exit.thread

hinfo_to_pcm_index.exit.thread:                   ; preds = %for.inc.i.hinfo_to_pcm_index.exit.thread_crit_edge, %entry.hinfo_to_pcm_index.exit.thread_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.157, ptr noundef %hinfo) #21
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %pcm_lock = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pcm_lock, i32 noundef 0) #18
  %9 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec1, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp27.i = icmp sgt i32 %12, 0
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %10, i32 0, i32 7, i32 4
  %13 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %10, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i161

for.body.i161:                                    ; preds = %for.inc.i165.for.body.i161_crit_edge, %for.body.lr.ph.i
  %pin_idx.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i163, %for.inc.i165.for.body.i161_crit_edge ]
  %mul.i.i = mul i32 %pin_idx.028.i, %16
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %mul.i.i
  %pcm.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body.i161.for.inc.i165_crit_edge, label %land.lhs.true.i

for.body.i161.for.inc.i165_crit_edge:             ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i165

land.lhs.true.i:                                  ; preds = %for.body.i161
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %stream.i162 = getelementptr inbounds %struct.hda_pcm, ptr %20, i32 0, i32 1
  %cmp4.i = icmp eq ptr %stream.i162, %hinfo
  br i1 %cmp4.i, label %land.lhs.true.i.hinfo_to_pin_index.exit_crit_edge, label %land.lhs.true.i.for.inc.i165_crit_edge

land.lhs.true.i.for.inc.i165_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i165

land.lhs.true.i.hinfo_to_pin_index.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pin_index.exit

for.inc.i165:                                     ; preds = %land.lhs.true.i.for.inc.i165_crit_edge, %for.body.i161.for.inc.i165_crit_edge
  %inc.i163 = add nuw nsw i32 %pin_idx.028.i, 1
  %exitcond.not.i164 = icmp eq i32 %inc.i163, %12
  br i1 %exitcond.not.i164, label %for.inc.i165.do.body.i_crit_edge, label %for.inc.i165.for.body.i161_crit_edge

for.inc.i165.for.body.i161_crit_edge:             ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i161

for.inc.i165.do.body.i_crit_edge:                 ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i165.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hinfo_to_pin_index.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_pcm_open, %if.then9.i)) #18
          to label %hinfo_to_pin_index.exit [label %if.then9.i], !srcloc !483

if.then9.i:                                       ; preds = %do.body.i
  %21 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %spec1, align 8
  %pcm_used.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %pcm_used.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcm_used.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp11.i.i = icmp sgt i32 %24, 0
  br i1 %cmp11.i.i, label %if.then9.i.for.body.i.i_crit_edge, label %if.then9.i.do.end.i.i_crit_edge

if.then9.i.do.end.i.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i

if.then9.i.for.body.i.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then9.i.for.body.i.i_crit_edge
  %pcm_idx.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hdmi_spec, ptr %22, i32 0, i32 8, i32 %pcm_idx.012.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.hda_pcm, ptr %26, i32 0, i32 1
  %cmp2.i.i = icmp eq ptr %stream.i.i, %hinfo
  br i1 %cmp2.i.i, label %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pcm_index.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %pcm_idx.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %24
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.do.end.i.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.do.end.i.i_crit_edge, %if.then9.i.do.end.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.157, ptr noundef %hinfo) #21
  br label %hinfo_to_pcm_index.exit.i

hinfo_to_pcm_index.exit.i:                        ; preds = %do.end.i.i, %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge
  %retval.0.i23.i = phi i32 [ -22, %do.end.i.i ], [ %pcm_idx.012.i.i, %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hinfo_to_pin_index.__UNIQUE_ID_ddebug251, ptr noundef %codec, ptr noundef nonnull @.str.160, ptr noundef %hinfo, i32 noundef %retval.0.i23.i) #18
  br label %hinfo_to_pin_index.exit

hinfo_to_pin_index.exit:                          ; preds = %hinfo_to_pcm_index.exit.i, %do.body.i, %land.lhs.true.i.hinfo_to_pin_index.exit_crit_edge
  %retval.0.i166 = phi i32 [ -22, %hinfo_to_pcm_index.exit.i ], [ -22, %do.body.i ], [ %pin_idx.028.i, %land.lhs.true.i.hinfo_to_pin_index.exit_crit_edge ]
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dyn_pcm_assign, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i166)
  %cmp5 = icmp slt i32 %retval.0.i166, 0
  br i1 %tobool.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %hinfo_to_pin_index.exit
  br i1 %cmp5, label %do.end, label %if.then4.if.end34_crit_edge, !prof !484

if.then4.if.end34_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 1237, i32 noundef 9, ptr noundef null) #18
  br label %unlock

if.else:                                          ; preds = %hinfo_to_pin_index.exit
  br i1 %cmp5, label %if.then31, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then31:                                        ; preds = %if.else
  %29 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spec1, align 8
  %31 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %runtime2, align 4
  %pcm_used.i.i168 = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 12
  %33 = ptrtoint ptr %pcm_used.i.i168 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pcm_used.i.i168, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp11.i.i169 = icmp sgt i32 %34, 0
  br i1 %cmp11.i.i169, label %if.then31.for.body.i.i174_crit_edge, label %if.then31.hinfo_to_pcm_index.exit.thread.i_crit_edge

if.then31.hinfo_to_pcm_index.exit.thread.i_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pcm_index.exit.thread.i

if.then31.for.body.i.i174_crit_edge:              ; preds = %if.then31
  br label %for.body.i.i174

for.body.i.i174:                                  ; preds = %for.inc.i.i177.for.body.i.i174_crit_edge, %if.then31.for.body.i.i174_crit_edge
  %pcm_idx.012.i.i170 = phi i32 [ %inc.i.i175, %for.inc.i.i177.for.body.i.i174_crit_edge ], [ 0, %if.then31.for.body.i.i174_crit_edge ]
  %arrayidx.i.i171 = getelementptr %struct.hdmi_spec, ptr %30, i32 0, i32 8, i32 %pcm_idx.012.i.i170
  %35 = ptrtoint ptr %arrayidx.i.i171 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i171, align 4
  %stream.i.i172 = getelementptr inbounds %struct.hda_pcm, ptr %36, i32 0, i32 1
  %cmp2.i.i173 = icmp eq ptr %stream.i.i172, %hinfo
  br i1 %cmp2.i.i173, label %if.end.i, label %for.inc.i.i177

for.inc.i.i177:                                   ; preds = %for.body.i.i174
  %inc.i.i175 = add nuw nsw i32 %pcm_idx.012.i.i170, 1
  %exitcond.not.i.i176 = icmp eq i32 %inc.i.i175, %34
  br i1 %exitcond.not.i.i176, label %for.inc.i.i177.hinfo_to_pcm_index.exit.thread.i_crit_edge, label %for.inc.i.i177.for.body.i.i174_crit_edge

for.inc.i.i177.for.body.i.i174_crit_edge:         ; preds = %for.inc.i.i177
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i174

for.inc.i.i177.hinfo_to_pcm_index.exit.thread.i_crit_edge: ; preds = %for.inc.i.i177
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pcm_index.exit.thread.i

hinfo_to_pcm_index.exit.thread.i:                 ; preds = %for.inc.i.i177.hinfo_to_pcm_index.exit.thread.i_crit_edge, %if.then31.hinfo_to_pcm_index.exit.thread.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.157, ptr noundef %hinfo) #21
  br label %unlock

if.end.i:                                         ; preds = %for.body.i.i174
  %num_cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 1
  %37 = ptrtoint ptr %num_cvts.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_cvts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp9102.i.i = icmp sgt i32 %38, 0
  br i1 %cmp9102.i.i, label %for.body.lr.ph.i.i, label %for.end33.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %list.i77.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %list.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %list.i77.i.i, align 4
  %elem_size.i78.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %elem_size.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %elem_size.i78.i.i, align 4
  br label %for.body.i59.i

for.body.i59.i:                                   ; preds = %for.inc31.i.i.for.body.i59.i_crit_edge, %for.body.lr.ph.i.i
  %cvt_idx.0103.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc32.i.i, %for.inc31.i.i.for.body.i59.i_crit_edge ]
  %mul.i79.i.i = mul i32 %cvt_idx.0103.i.i, %42
  %add.ptr.i80.i.i = getelementptr i8, ptr %40, i32 %mul.i79.i.i
  %assigned.i.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i80.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %assigned.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %assigned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool11.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool11.not.i.i, label %for.body.i59.i.if.end5.i_crit_edge, label %for.inc31.i.i

for.body.i59.i.if.end5.i_crit_edge:               ; preds = %for.body.i59.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

for.inc31.i.i:                                    ; preds = %for.body.i59.i
  %inc32.i.i = add nuw nsw i32 %cvt_idx.0103.i.i, 1
  %exitcond114.not.i.i = icmp eq i32 %inc32.i.i, %38
  br i1 %exitcond114.not.i.i, label %for.inc31.i.i.unlock_crit_edge, label %for.inc31.i.i.for.body.i59.i_crit_edge

for.inc31.i.i.for.body.i59.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i59.i

for.inc31.i.i.unlock_crit_edge:                   ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

for.end33.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp35.i.i = icmp eq i32 %38, 0
  br i1 %cmp35.i.i, label %for.end33.i.i.unlock_crit_edge, label %for.end33.i.i.if.end5.i_crit_edge

for.end33.i.i.if.end5.i_crit_edge:                ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

for.end33.i.i.unlock_crit_edge:                   ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end5.i:                                        ; preds = %for.end33.i.i.if.end5.i_crit_edge, %for.body.i59.i.if.end5.i_crit_edge
  %cvt_idx.095.i.i = phi i32 [ 0, %for.end33.i.i.if.end5.i_crit_edge ], [ %cvt_idx.0103.i.i, %for.body.i59.i.if.end5.i_crit_edge ]
  %list.i.i178 = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 2, i32 4
  %45 = ptrtoint ptr %list.i.i178 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %list.i.i178, align 4
  %elem_size.i.i179 = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %elem_size.i.i179 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %elem_size.i.i179, align 4
  %mul.i.i180 = mul i32 %48, %cvt_idx.095.i.i
  %add.ptr.i.i181 = getelementptr i8, ptr %46, i32 %mul.i.i180
  %assigned.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i.i181, i32 0, i32 1
  %49 = ptrtoint ptr %assigned.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %assigned.i, align 4
  %50 = ptrtoint ptr %add.ptr.i.i181 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i.i181, align 8
  %nid.i = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %52 = ptrtoint ptr %nid.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %nid.i, align 4
  %53 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spec1, align 8
  %pin_cvt_fixup.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %54, i32 0, i32 15, i32 4
  %55 = ptrtoint ptr %pin_cvt_fixup.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pin_cvt_fixup.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end5.i.pin_cvt_fixup.exit.i_crit_edge, label %if.then.i.i

if.end5.i.pin_cvt_fixup.exit.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_cvt_fixup.exit.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  %57 = ptrtoint ptr %add.ptr.i.i181 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i.i181, align 8
  tail call void %56(ptr noundef %codec, ptr noundef null, i16 noundef zeroext %58) #18
  br label %pin_cvt_fixup.exit.i

pin_cvt_fixup.exit.i:                             ; preds = %if.then.i.i, %if.end5.i.pin_cvt_fixup.exit.i_crit_edge
  %pcm_in_use.i = getelementptr inbounds %struct.hdmi_spec, ptr %30, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %pcm_idx.012.i.i170, ptr noundef %pcm_in_use.i) #18
  %channels_min.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i.i181, i32 0, i32 2
  %59 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channels_min.i, align 8
  %channels_min8.i = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 1
  %61 = ptrtoint ptr %channels_min8.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %channels_min8.i, align 4
  %channels_max.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i.i181, i32 0, i32 3
  %62 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channels_max.i, align 4
  %channels_max9.i = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 2
  %64 = ptrtoint ptr %channels_max9.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %channels_max9.i, align 8
  %rates.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i.i181, i32 0, i32 4
  %65 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rates.i, align 8
  %rates10.i = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 4
  %67 = ptrtoint ptr %rates10.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rates10.i, align 8
  %formats.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i.i181, i32 0, i32 5
  %68 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %formats.i, align 8
  %formats11.i = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 5
  %70 = ptrtoint ptr %formats11.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %formats11.i, align 8
  %maxbps.i = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i.i181, i32 0, i32 6
  %71 = ptrtoint ptr %maxbps.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %maxbps.i, align 8
  %maxbps12.i = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 6
  %73 = ptrtoint ptr %maxbps12.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %maxbps12.i, align 8
  %channels_min14.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 5
  %74 = ptrtoint ptr %channels_min14.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %60, ptr %channels_min14.i, align 4
  %75 = load i32, ptr %channels_max9.i, align 8
  %channels_max17.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 6
  %76 = ptrtoint ptr %channels_max17.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %channels_max17.i, align 8
  %77 = load i64, ptr %formats11.i, align 8
  %formats20.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 1
  %78 = ptrtoint ptr %formats20.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %formats20.i, align 8
  %79 = load i32, ptr %rates10.i, align 8
  %rates23.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 46, i32 2
  %80 = ptrtoint ptr %rates23.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %rates23.i, align 8
  %81 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %runtime2, align 4
  %call25.i = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %82, i32 noundef 0, i32 noundef 10, i32 noundef 2) #18
  br label %unlock

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then4.if.end34_crit_edge
  %call35 = call fastcc i32 @hdmi_choose_cvt(ptr noundef %codec, i32 noundef %retval.0.i166, ptr noundef nonnull %cvt_idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.unlock_crit_edge, label %if.end38

if.end34.unlock_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.end38:                                         ; preds = %if.end34
  %83 = ptrtoint ptr %cvt_idx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cvt_idx, align 4
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %85 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %list.i, align 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 2
  %87 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %88, %84
  %add.ptr.i = getelementptr i8, ptr %86, i32 %mul.i
  %assigned = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 1
  %89 = ptrtoint ptr %assigned to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %assigned, align 4
  %pcm_in_use = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 13
  call void @_set_bit(i32 noundef %pcm_idx.012.i, ptr noundef %pcm_in_use) #18
  %list.i183 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %90 = ptrtoint ptr %list.i183 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %list.i183, align 4
  %elem_size.i184 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %92 = ptrtoint ptr %elem_size.i184 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %elem_size.i184, align 4
  %mul.i185 = mul i32 %93, %retval.0.i166
  %add.ptr.i186 = getelementptr i8, ptr %91, i32 %mul.i185
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr.i, align 8
  %cvt_nid41 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i186, i32 0, i32 6
  %96 = ptrtoint ptr %cvt_nid41 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %cvt_nid41, align 4
  %97 = load i16, ptr %add.ptr.i, align 8
  %nid = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %98 = ptrtoint ptr %nid to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %nid, align 4
  %99 = load i16, ptr %add.ptr.i, align 8
  %conv.i = zext i16 %99 to i32
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %100 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %101 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %101, i16 %99)
  %cmp.i = icmp ugt i16 %101, %99
  br i1 %cmp.i, label %if.end38.if.end48_crit_edge, label %lor.lhs.false.i

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

lor.lhs.false.i:                                  ; preds = %if.end38
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %102 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %103, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.if.end48_crit_edge

lor.lhs.false.i.if.end48_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %104 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i187 = getelementptr i32, ptr %105, i32 %sub.i
  %106 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i187, align 4
  %and = and i32 %107, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %get_wcaps.exit.if.end48_crit_edge, label %if.then46

get_wcaps.exit.if.end48_crit_edge:                ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

if.then46:                                        ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  %108 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %runtime2, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %109, i32 0, i32 44
  %110 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %private_data.i, align 8
  %stripe = getelementptr inbounds %struct.hdac_stream, ptr %111, i32 0, i32 16
  %112 = ptrtoint ptr %stripe to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load = load i8, ptr %stripe, align 8
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %stripe, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %get_wcaps.exit.if.end48_crit_edge, %lor.lhs.false.i.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %113 = ptrtoint ptr %add.ptr.i186 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i186, align 8
  %dev_id = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i186, i32 0, i32 1
  %115 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dev_id, align 4
  %call49 = call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %114, i32 noundef %116) #18
  %117 = ptrtoint ptr %add.ptr.i186 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %add.ptr.i186, align 8
  %mux_idx = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i186, i32 0, i32 5
  %119 = ptrtoint ptr %mux_idx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mux_idx, align 8
  %conv.i.i = zext i16 %118 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or2.i.i = or i32 %shl1.i.i, 983296
  %call.i.i = call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i, i32 noundef %120) #18
  %121 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %spec1, align 8
  %pin_cvt_fixup.i = getelementptr inbounds %struct.hdmi_spec, ptr %122, i32 0, i32 15, i32 4
  %123 = ptrtoint ptr %pin_cvt_fixup.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pin_cvt_fixup.i, align 8
  %tobool.not.i191 = icmp eq ptr %124, null
  br i1 %tobool.not.i191, label %if.end48.pin_cvt_fixup.exit_crit_edge, label %if.then.i

if.end48.pin_cvt_fixup.exit_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_cvt_fixup.exit

if.then.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  call void %124(ptr noundef %codec, ptr noundef %add.ptr.i186, i16 noundef zeroext 0) #18
  br label %pin_cvt_fixup.exit

pin_cvt_fixup.exit:                               ; preds = %if.then.i, %if.end48.pin_cvt_fixup.exit_crit_edge
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %add.ptr.i, align 8
  call void @snd_hda_spdif_ctls_assign(ptr noundef %codec, i32 noundef %pcm_idx.012.i, i16 noundef zeroext %126) #18
  %channels_min = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 2
  %127 = ptrtoint ptr %channels_min to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %channels_min, align 8
  %channels_min53 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 1
  %129 = ptrtoint ptr %channels_min53 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %channels_min53, align 4
  %channels_max = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 3
  %130 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %channels_max, align 4
  %channels_max54 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 2
  %132 = ptrtoint ptr %channels_max54 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %channels_max54, align 8
  %rates = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 4
  %133 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rates, align 8
  %rates55 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 4
  %135 = ptrtoint ptr %rates55 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %rates55, align 8
  %formats = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 5
  %136 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %formats, align 8
  %formats56 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 5
  %138 = ptrtoint ptr %formats56 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %formats56, align 8
  %maxbps = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 6
  %139 = ptrtoint ptr %maxbps to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %maxbps, align 8
  %maxbps57 = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 6
  %141 = ptrtoint ptr %maxbps57 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %maxbps57, align 8
  %142 = load i8, ptr @static_hdmi_pcm, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool58.not = icmp eq i8 %142, 0
  br i1 %tobool58.not, label %land.lhs.true, label %pin_cvt_fixup.exit.if.end73_crit_edge

pin_cvt_fixup.exit.if.end73_crit_edge:            ; preds = %pin_cvt_fixup.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

land.lhs.true:                                    ; preds = %pin_cvt_fixup.exit
  %eld_valid = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i186, i32 0, i32 8, i32 1
  %143 = ptrtoint ptr %eld_valid to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %eld_valid, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool59.not = icmp eq i8 %144, 0
  br i1 %tobool59.not, label %land.lhs.true.if.end73_crit_edge, label %if.then60

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

if.then60:                                        ; preds = %land.lhs.true
  %info = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i186, i32 0, i32 8, i32 4
  call void @snd_hdmi_eld_update_pcm_info(ptr noundef %info, ptr noundef %hinfo) #18
  %145 = ptrtoint ptr %channels_min53 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %channels_min53, align 4
  %147 = ptrtoint ptr %channels_max54 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %channels_max54, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %148)
  %cmp63 = icmp ugt i32 %146, %148
  br i1 %cmp63, label %if.then60.if.then69_crit_edge, label %lor.lhs.false

if.then60.if.then69_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then69

lor.lhs.false:                                    ; preds = %if.then60
  %149 = ptrtoint ptr %rates55 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rates55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool65.not = icmp eq i32 %150, 0
  br i1 %tobool65.not, label %lor.lhs.false.if.then69_crit_edge, label %lor.lhs.false66

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then69

lor.lhs.false66:                                  ; preds = %lor.lhs.false
  %151 = ptrtoint ptr %formats56 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %formats56, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %152)
  %tobool68.not = icmp eq i64 %152, 0
  br i1 %tobool68.not, label %lor.lhs.false66.if.then69_crit_edge, label %lor.lhs.false66.if.end73_crit_edge

lor.lhs.false66.if.end73_crit_edge:               ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end73

lor.lhs.false66.if.then69_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false66.if.then69_crit_edge, %lor.lhs.false.if.then69_crit_edge, %if.then60.if.then69_crit_edge
  %153 = ptrtoint ptr %assigned to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %assigned, align 4
  %154 = ptrtoint ptr %nid to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %nid, align 4
  call void @snd_hda_spdif_ctls_unassign(ptr noundef %codec, i32 noundef %pcm_idx.012.i) #18
  br label %unlock

if.end73:                                         ; preds = %lor.lhs.false66.if.end73_crit_edge, %land.lhs.true.if.end73_crit_edge, %pin_cvt_fixup.exit.if.end73_crit_edge
  %155 = ptrtoint ptr %channels_min53 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %channels_min53, align 4
  %channels_min75 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 5
  %157 = ptrtoint ptr %channels_min75 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %channels_min75, align 4
  %158 = ptrtoint ptr %channels_max54 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %channels_max54, align 8
  %channels_max78 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %160 = ptrtoint ptr %channels_max78 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %channels_max78, align 8
  %161 = ptrtoint ptr %formats56 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %formats56, align 8
  %formats81 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %163 = ptrtoint ptr %formats81 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %formats81, align 8
  %164 = ptrtoint ptr %rates55 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %rates55, align 8
  %rates84 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %166 = ptrtoint ptr %rates84 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %rates84, align 8
  %167 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %runtime2, align 4
  %call86 = call i32 @snd_pcm_hw_constraint_step(ptr noundef %168, i32 noundef 0, i32 noundef 10, i32 noundef 2) #18
  br label %unlock

unlock:                                           ; preds = %if.end73, %if.then69, %if.end34.unlock_crit_edge, %pin_cvt_fixup.exit.i, %for.end33.i.i.unlock_crit_edge, %for.inc31.i.i.unlock_crit_edge, %hinfo_to_pcm_index.exit.thread.i, %do.end
  %err.0 = phi i32 [ %call35, %if.end34.unlock_crit_edge ], [ 0, %if.end73 ], [ -19, %if.then69 ], [ -22, %do.end ], [ 0, %pin_cvt_fixup.exit.i ], [ -22, %hinfo_to_pcm_index.exit.thread.i ], [ -16, %for.end33.i.i.unlock_crit_edge ], [ -16, %for.inc31.i.i.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %pcm_lock) #18
  br label %cleanup

cleanup:                                          ; preds = %unlock, %hinfo_to_pcm_index.exit.thread
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -22, %hinfo_to_pcm_index.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cvt_idx) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_pcm_close(ptr noundef %hinfo, ptr noundef %codec, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %pcm_lock = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pcm_lock, i32 noundef 0) #18
  %nid = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %2 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.then

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1, align 8
  %pcm_used.i = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pcm_used.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcm_used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11.i = icmp sgt i32 %7, 0
  br i1 %cmp11.i, label %if.then.for.body.i_crit_edge, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %pcm_idx.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hdmi_spec, ptr %5, i32 0, i32 8, i32 %pcm_idx.012.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %stream.i = getelementptr inbounds %struct.hda_pcm, ptr %9, i32 0, i32 1
  %cmp2.i = icmp eq ptr %stream.i, %hinfo
  br i1 %cmp2.i, label %if.end24, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %pcm_idx.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.157, ptr noundef %hinfo) #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 2136, i32 noundef 9, ptr noundef null) #18
  br label %unlock

if.end24:                                         ; preds = %for.body.i
  %10 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nid, align 4
  %12 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec1, align 8
  %num_cvts.i = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_cvts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cvts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.i = icmp sgt i32 %15, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.end24.do.end44_crit_edge

if.end24.do.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end44

for.body.lr.ph.i:                                 ; preds = %if.end24
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i150

for.body.i150:                                    ; preds = %for.inc.i153.for.body.i150_crit_edge, %for.body.lr.ph.i
  %cvt_idx.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i151, %for.inc.i153.for.body.i150_crit_edge ]
  %mul.i.i = mul i32 %cvt_idx.016.i, %19
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %mul.i.i
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %11)
  %cmp4.i = icmp eq i16 %21, %11
  br i1 %cmp4.i, label %if.end60, label %for.inc.i153

for.inc.i153:                                     ; preds = %for.body.i150
  %inc.i151 = add nuw nsw i32 %cvt_idx.016.i, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i151, %15
  br i1 %exitcond.not.i152, label %for.inc.i153.do.end44_crit_edge, label %for.inc.i153.for.body.i150_crit_edge

for.inc.i153.for.body.i150_crit_edge:             ; preds = %for.inc.i153
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i150

for.inc.i153.do.end44_crit_edge:                  ; preds = %for.inc.i153
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end44

do.end44:                                         ; preds = %for.inc.i153.do.end44_crit_edge, %if.end24.do.end44_crit_edge
  %conv6.i = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.126, i32 noundef %conv6.i) #21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 2141, i32 noundef 9, ptr noundef null) #18
  br label %unlock

if.end60:                                         ; preds = %for.body.i150
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i, align 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %25, %cvt_idx.016.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 %mul.i
  %assigned = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %assigned to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %assigned, align 4
  %27 = ptrtoint ptr %nid to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %nid, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %28 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data.i, align 8
  %stripe = getelementptr inbounds %struct.hdac_stream, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %stripe to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %stripe, align 8
  %bf.clear = and i8 %bf.load, -5
  store i8 %bf.clear, ptr %stripe, align 8
  tail call void @snd_hda_spdif_ctls_unassign(ptr noundef %codec, i32 noundef %pcm_idx.012.i) #18
  %pcm_in_use = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef %pcm_idx.012.i, ptr noundef %pcm_in_use) #18
  %33 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spec1, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp27.i = icmp sgt i32 %36, 0
  br i1 %cmp27.i, label %for.body.lr.ph.i159, label %if.end60.do.body.i_crit_edge

if.end60.do.body.i_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

for.body.lr.ph.i159:                              ; preds = %if.end60
  %list.i.i157 = getelementptr inbounds %struct.hdmi_spec, ptr %34, i32 0, i32 7, i32 4
  %37 = ptrtoint ptr %list.i.i157 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list.i.i157, align 4
  %elem_size.i.i158 = getelementptr inbounds %struct.hdmi_spec, ptr %34, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %elem_size.i.i158 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %elem_size.i.i158, align 4
  br label %for.body.i162

for.body.i162:                                    ; preds = %for.inc.i167.for.body.i162_crit_edge, %for.body.lr.ph.i159
  %pin_idx.028.i = phi i32 [ 0, %for.body.lr.ph.i159 ], [ %inc.i165, %for.inc.i167.for.body.i162_crit_edge ]
  %mul.i.i160 = mul i32 %pin_idx.028.i, %40
  %add.ptr.i.i161 = getelementptr i8, ptr %38, i32 %mul.i.i160
  %pcm.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i161, i32 0, i32 11
  %41 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcm.i, align 8
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %for.body.i162.for.inc.i167_crit_edge, label %land.lhs.true.i

for.body.i162.for.inc.i167_crit_edge:             ; preds = %for.body.i162
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i167

land.lhs.true.i:                                  ; preds = %for.body.i162
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %stream.i163 = getelementptr inbounds %struct.hda_pcm, ptr %44, i32 0, i32 1
  %cmp4.i164 = icmp eq ptr %stream.i163, %hinfo
  br i1 %cmp4.i164, label %if.end102, label %land.lhs.true.i.for.inc.i167_crit_edge

land.lhs.true.i.for.inc.i167_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i167

for.inc.i167:                                     ; preds = %land.lhs.true.i.for.inc.i167_crit_edge, %for.body.i162.for.inc.i167_crit_edge
  %inc.i165 = add nuw nsw i32 %pin_idx.028.i, 1
  %exitcond.not.i166 = icmp eq i32 %inc.i165, %36
  br i1 %exitcond.not.i166, label %for.inc.i167.do.body.i_crit_edge, label %for.inc.i167.for.body.i162_crit_edge

for.inc.i167.for.body.i162_crit_edge:             ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i162

for.inc.i167.do.body.i_crit_edge:                 ; preds = %for.inc.i167
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i167.do.body.i_crit_edge, %if.end60.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hinfo_to_pin_index.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hdmi_pcm_close, %if.then9.i)) #18
          to label %hinfo_to_pin_index.exit [label %if.then9.i], !srcloc !483

if.then9.i:                                       ; preds = %do.body.i
  %45 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spec1, align 8
  %pcm_used.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %pcm_used.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pcm_used.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp11.i.i = icmp sgt i32 %48, 0
  br i1 %cmp11.i.i, label %if.then9.i.for.body.i.i_crit_edge, label %if.then9.i.do.end.i.i_crit_edge

if.then9.i.do.end.i.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i

if.then9.i.for.body.i.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then9.i.for.body.i.i_crit_edge
  %pcm_idx.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hdmi_spec, ptr %46, i32 0, i32 8, i32 %pcm_idx.012.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.hda_pcm, ptr %50, i32 0, i32 1
  %cmp2.i.i = icmp eq ptr %stream.i.i, %hinfo
  br i1 %cmp2.i.i, label %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pcm_index.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %pcm_idx.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %48
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.do.end.i.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.do.end.i.i_crit_edge, %if.then9.i.do.end.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.157, ptr noundef %hinfo) #21
  br label %hinfo_to_pcm_index.exit.i

hinfo_to_pcm_index.exit.i:                        ; preds = %do.end.i.i, %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge
  %retval.0.i23.i = phi i32 [ -22, %do.end.i.i ], [ %pcm_idx.012.i.i, %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hinfo_to_pin_index.__UNIQUE_ID_ddebug251, ptr noundef %codec, ptr noundef nonnull @.str.160, ptr noundef %hinfo, i32 noundef %retval.0.i23.i) #18
  br label %hinfo_to_pin_index.exit

hinfo_to_pin_index.exit:                          ; preds = %hinfo_to_pcm_index.exit.i, %do.body.i
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 17
  %51 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dyn_pcm_assign, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool65.not.not = icmp eq i8 %52, 0
  br i1 %tobool65.not.not, label %do.end86, label %hinfo_to_pin_index.exit.unlock_crit_edge

hinfo_to_pin_index.exit.unlock_crit_edge:         ; preds = %hinfo_to_pin_index.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %unlock

do.end86:                                         ; preds = %hinfo_to_pin_index.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 2157, i32 noundef 9, ptr noundef null) #18
  br label %unlock

if.end102:                                        ; preds = %land.lhs.true.i
  %list.i169 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %53 = ptrtoint ptr %list.i169 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %list.i169, align 4
  %elem_size.i170 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %55 = ptrtoint ptr %elem_size.i170 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %elem_size.i170, align 4
  %mul.i171 = mul i32 %56, %pin_idx.028.i
  %add.ptr.i172 = getelementptr i8, ptr %54, i32 %mul.i171
  %dyn_pin_out = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 16
  %57 = ptrtoint ptr %dyn_pin_out to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dyn_pin_out, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool104.not = icmp eq i8 %58, 0
  br i1 %tobool104.not, label %if.end102.if.end111_crit_edge, label %if.then105

if.end102.if.end111_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end111

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #20
  %59 = ptrtoint ptr %add.ptr.i172 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i172, align 8
  %dev_id = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i172, i32 0, i32 1
  %61 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dev_id, align 4
  %call106 = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %60, i32 noundef %62) #18
  %63 = ptrtoint ptr %add.ptr.i172 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i172, align 8
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %64, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #18
  %65 = ptrtoint ptr %add.ptr.i172 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i172, align 8
  %and = and i32 %call.i, -65
  %call.i173 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %66, i32 noundef 0, i32 noundef 1799, i32 noundef %and) #18
  br label %if.end111

if.end111:                                        ; preds = %if.then105, %if.end102.if.end111_crit_edge
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i172, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  %chmap_set = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i172, i32 0, i32 18
  %67 = ptrtoint ptr %chmap_set to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %chmap_set, align 1
  %chmap = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i172, i32 0, i32 19
  %68 = ptrtoint ptr %chmap to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 0, ptr %chmap, align 2
  %setup = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i172, i32 0, i32 14
  %69 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %setup, align 4
  %channels = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i172, i32 0, i32 16
  %70 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %channels, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #18
  br label %unlock

unlock:                                           ; preds = %if.end111, %do.end86, %hinfo_to_pin_index.exit.unlock_crit_edge, %do.end44, %do.end, %entry.unlock_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ -22, %do.end44 ], [ -22, %do.end86 ], [ 0, %if.end111 ], [ 0, %entry.unlock_crit_edge ], [ 0, %hinfo_to_pin_index.exit.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pcm_lock) #18
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_hdmi_playback_pcm_prepare(ptr noundef %hinfo, ptr noundef %codec, i32 noundef %stream_tag, i32 noundef %format, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nid = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %0 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nid, align 4
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 8
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %pcm_lock = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pcm_lock, i32 noundef 0) #18
  %6 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec1, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.i = icmp sgt i32 %9, 0
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %entry
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list.i.i, align 4
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elem_size.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pin_idx.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i.i = mul i32 %pin_idx.028.i, %13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %pcm.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %stream.i = getelementptr inbounds %struct.hda_pcm, ptr %17, i32 0, i32 1
  %cmp4.i = icmp eq ptr %stream.i, %hinfo
  br i1 %cmp4.i, label %if.end27, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %pin_idx.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hinfo_to_pin_index.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_hdmi_playback_pcm_prepare, %if.then9.i)) #18
          to label %hinfo_to_pin_index.exit [label %if.then9.i], !srcloc !483

if.then9.i:                                       ; preds = %do.body.i
  %18 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec1, align 8
  %pcm_used.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %pcm_used.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pcm_used.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp11.i.i = icmp sgt i32 %21, 0
  br i1 %cmp11.i.i, label %if.then9.i.for.body.i.i_crit_edge, label %if.then9.i.do.end.i.i_crit_edge

if.then9.i.do.end.i.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i

if.then9.i.for.body.i.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then9.i.for.body.i.i_crit_edge
  %pcm_idx.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hdmi_spec, ptr %19, i32 0, i32 8, i32 %pcm_idx.012.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.hda_pcm, ptr %23, i32 0, i32 1
  %cmp2.i.i = icmp eq ptr %stream.i.i, %hinfo
  br i1 %cmp2.i.i, label %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %hinfo_to_pcm_index.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %pcm_idx.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.do.end.i.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.do.end.i.i_crit_edge, %if.then9.i.do.end.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %codec, ptr noundef nonnull @.str.157, ptr noundef %hinfo) #21
  br label %hinfo_to_pcm_index.exit.i

hinfo_to_pcm_index.exit.i:                        ; preds = %do.end.i.i, %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge
  %retval.0.i23.i = phi i32 [ -22, %do.end.i.i ], [ %pcm_idx.012.i.i, %for.body.i.i.hinfo_to_pcm_index.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hinfo_to_pin_index.__UNIQUE_ID_ddebug251, ptr noundef %codec, ptr noundef nonnull @.str.160, ptr noundef %hinfo, i32 noundef %retval.0.i23.i) #18
  br label %hinfo_to_pin_index.exit

hinfo_to_pin_index.exit:                          ; preds = %hinfo_to_pcm_index.exit.i, %do.body.i
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 17
  %24 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dyn_pcm_assign, align 1, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.not = icmp eq i8 %25, 0
  br i1 %tobool.not.not, label %do.end, label %if.then

if.then:                                          ; preds = %hinfo_to_pin_index.exit
  %26 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec1, align 8
  %pin_cvt_fixup.i = getelementptr inbounds %struct.hdmi_spec, ptr %27, i32 0, i32 15, i32 4
  %28 = ptrtoint ptr %pin_cvt_fixup.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pin_cvt_fixup.i, align 8
  %tobool.not.i106 = icmp eq ptr %29, null
  br i1 %tobool.not.i106, label %if.then.pin_cvt_fixup.exit_crit_edge, label %if.then.i

if.then.pin_cvt_fixup.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_cvt_fixup.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %29(ptr noundef %codec, ptr noundef null, i16 noundef zeroext %1) #18
  br label %pin_cvt_fixup.exit

pin_cvt_fixup.exit:                               ; preds = %if.then.i, %if.then.pin_cvt_fixup.exit_crit_edge
  tail call void @snd_hda_codec_setup_stream(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef %stream_tag, i32 noundef 0, i32 noundef %format) #18
  br label %unlock

do.end:                                           ; preds = %hinfo_to_pin_index.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 2059, i32 noundef 9, ptr noundef null) #18
  br label %unlock

if.end27:                                         ; preds = %land.lhs.true.i
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 4
  %30 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list.i, align 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %33, %pin_idx.028.i
  %add.ptr.i = getelementptr i8, ptr %31, i32 %mul.i
  %34 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spec1, align 8
  %pin_cvt_fixup.i108 = getelementptr inbounds %struct.hdmi_spec, ptr %35, i32 0, i32 15, i32 4
  %36 = ptrtoint ptr %pin_cvt_fixup.i108 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pin_cvt_fixup.i108, align 8
  %tobool.not.i109 = icmp eq ptr %37, null
  br i1 %tobool.not.i109, label %if.end27.pin_cvt_fixup.exit111_crit_edge, label %if.then.i110

if.end27.pin_cvt_fixup.exit111_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %pin_cvt_fixup.exit111

if.then.i110:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %37(ptr noundef %codec, ptr noundef %add.ptr.i, i16 noundef zeroext 0) #18
  br label %pin_cvt_fixup.exit111

pin_cvt_fixup.exit111:                            ; preds = %if.then.i110, %if.end27.pin_cvt_fixup.exit111_crit_edge
  %38 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spec1, align 8
  %use_acomp_notifier.i = getelementptr inbounds %struct.hdmi_spec, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %use_acomp_notifier.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_acomp_notifier.i, align 8, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.i.not = icmp eq i8 %41, 0
  br i1 %tobool.i.not, label %pin_cvt_fixup.exit111.if.end32_crit_edge, label %if.then30

pin_cvt_fixup.exit111.if.end32_crit_edge:         ; preds = %pin_cvt_fixup.exit111
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then30:                                        ; preds = %pin_cvt_fixup.exit111
  call void @__sanitizer_cov_trace_pc() #20
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i, align 8
  %dev_id = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 1
  %44 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dev_id, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 14
  %46 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rate, align 4
  %call31 = tail call i32 @snd_hdac_sync_audio_rate(ptr noundef %codec, i16 noundef zeroext %43, i32 noundef %45, i32 noundef %47) #18
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %pin_cvt_fixup.exit111.if.end32_crit_edge
  %spdif_mutex.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %spdif_mutex.i, i32 noundef 0) #18
  %call.i = tail call ptr @snd_hda_spdif_out_of_nid(ptr noundef %codec, i16 noundef zeroext %1) #18
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !484

do.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 2018, i32 noundef 9, ptr noundef null) #18
  br label %check_non_pcm_per_cvt.exit

if.end22.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %status.i = getelementptr inbounds %struct.hda_spdif_out, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status.i, align 4
  %and.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.i = icmp ne i32 %and.i, 0
  br label %check_non_pcm_per_cvt.exit

check_non_pcm_per_cvt.exit:                       ; preds = %if.end22.i, %do.end.i
  %retval.0.i113 = phi i1 [ true, %do.end.i ], [ %tobool23.i, %if.end22.i ]
  tail call void @mutex_unlock(ptr noundef %spdif_mutex.i) #18
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  %50 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %runtime2, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channels, align 8
  %channels35 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 16
  %54 = ptrtoint ptr %channels35 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %channels35, align 8
  %setup = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 14
  %55 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %setup, align 4
  %conv.i = zext i16 %1 to i32
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %56 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %1)
  %cmp.i114 = icmp ugt i16 %57, %1
  br i1 %cmp.i114, label %check_non_pcm_per_cvt.exit.if.end42_crit_edge, label %lor.lhs.false.i

check_non_pcm_per_cvt.exit.if.end42_crit_edge:    ; preds = %check_non_pcm_per_cvt.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

lor.lhs.false.i:                                  ; preds = %check_non_pcm_per_cvt.exit
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %58 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %59, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.if.end42_crit_edge

lor.lhs.false.i.if.end42_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %60 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %61, i32 %sub.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %get_wcaps.exit.if.end42_crit_edge, label %if.then38

get_wcaps.exit.if.end42_crit_edge:                ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.then38:                                        ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %64 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus, align 8
  %call40 = tail call i32 @snd_hdac_get_stream_stripe_ctl(ptr noundef %65, ptr noundef %substream) #18
  %call.i116 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1828, i32 noundef %call40) #18
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %get_wcaps.exit.if.end42_crit_edge, %lor.lhs.false.i.if.end42_crit_edge, %check_non_pcm_per_cvt.exit.if.end42_crit_edge
  tail call fastcc void @hdmi_setup_audio_infoframe(ptr noundef %codec, ptr noundef %add.ptr.i, i1 noundef zeroext %retval.0.i113)
  tail call void @mutex_unlock(ptr noundef %lock) #18
  %dyn_pin_out = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 16
  %66 = ptrtoint ptr %dyn_pin_out to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dyn_pin_out, align 4, !range !480
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool45.not = icmp eq i8 %67, 0
  br i1 %tobool45.not, label %if.end42.if.end54_crit_edge, label %if.then46

if.end42.if.end54_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i, align 8
  %dev_id48 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 1
  %70 = ptrtoint ptr %dev_id48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dev_id48, align 4
  %call49 = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %69, i32 noundef %71) #18
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i, align 8
  %call.i117 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %73, i32 noundef 0, i32 noundef 3847, i32 noundef 0) #18
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i, align 8
  %or = or i32 %call.i117, 64
  %call.i118 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %75, i32 noundef 0, i32 noundef 1799, i32 noundef %or) #18
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %if.end42.if.end54_crit_edge
  %setup_stream = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 15, i32 3
  %76 = ptrtoint ptr %setup_stream to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %setup_stream, align 4
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i, align 8
  %dev_id56 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 1
  %80 = ptrtoint ptr %dev_id56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dev_id56, align 4
  %call57 = tail call i32 %77(ptr noundef %codec, i16 noundef zeroext %1, i16 noundef zeroext %79, i32 noundef %81, i32 noundef %stream_tag, i32 noundef %format) #18
  br label %unlock

unlock:                                           ; preds = %if.end54, %do.end, %pin_cvt_fixup.exit
  %err.0 = phi i32 [ 0, %pin_cvt_fixup.exit ], [ -22, %do.end ], [ %call57, %if.end54 ]
  tail call void @mutex_unlock(ptr noundef %pcm_lock) #18
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_hdmi_playback_pcm_cleanup(ptr nocapture noundef readonly %hinfo, ptr noundef %codec, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %nid = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %0 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nid, align 4
  tail call void @__snd_hda_codec_cleanup_stream(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_eld_update_pcm_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_stream_stripe_ctl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_hda_codec_cleanup_stream(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_acomp_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_jack_tbl_get_from_tag(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_regmap_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_sub_nodes(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_query_supported_pcm(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_num_devices(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_array_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_repoll_eld(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -908
  %codec1 = getelementptr i8, ptr %work, i32 -820
  %0 = ptrtoint ptr %codec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec1, align 8
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec2, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr, align 8
  %dev_id = getelementptr i8, ptr %work, i32 -904
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_id, align 4
  %call3 = tail call ptr @snd_hda_jack_tbl_get_mst(ptr noundef %1, i16 noundef zeroext %5, i32 noundef %7) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %jack_dirty = getelementptr inbounds %struct.hda_jack_tbl, ptr %call3, i32 0, i32 5
  %8 = ptrtoint ptr %jack_dirty to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %jack_dirty, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %jack_dirty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %repoll_count = getelementptr i8, ptr %work, i32 108
  %9 = ptrtoint ptr %repoll_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %repoll_count, align 8
  %inc = add i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp = icmp sgt i32 %10, 6
  %spec.select = select i1 %cmp, i32 0, i32 %inc
  %11 = ptrtoint ptr %repoll_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %repoll_count, align 8
  %pcm_lock = getelementptr inbounds %struct.hdmi_spec, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pcm_lock, i32 noundef 0) #18
  %12 = ptrtoint ptr %repoll_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %repoll_count, align 8
  tail call fastcc void @hdmi_present_sense(ptr noundef %add.ptr, i32 noundef %13)
  tail call void @mutex_unlock(ptr noundef %pcm_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @print_eld_info(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  %sink_eld = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8
  tail call void @snd_hdmi_print_eld_info(ptr noundef %sink_eld, ptr noundef %buffer) #18
  tail call void @mutex_unlock(ptr noundef %lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_eld_info(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #18
  %sink_eld = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %1, i32 0, i32 8
  tail call void @snd_hdmi_write_eld_info(ptr noundef %sink_eld, ptr noundef %buffer) #18
  tail call void @mutex_unlock(ptr noundef %lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_print_eld_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdmi_write_eld_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @patch_simple_hdmi(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %pin_nid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1448) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %codec, ptr %call7.i.i, align 8
  %spec2 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %2 = ptrtoint ptr %spec2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %spec2, align 8
  %elem_size.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %elem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1048, ptr %elem_size.i.i, align 8
  %alloc_align.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %alloc_align.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %alloc_align.i.i, align 4
  %elem_size.i3.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %elem_size.i3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40, ptr %elem_size.i3.i, align 8
  %alloc_align.i4.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %alloc_align.i4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %alloc_align.i4.i, align 4
  %multiout = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 20
  %7 = ptrtoint ptr %multiout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %multiout, align 8
  %max_channels = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 20, i32 7
  %8 = ptrtoint ptr %max_channels to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %max_channels, align 4
  %dig_out_nid = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 20, i32 5
  %9 = ptrtoint ptr %dig_out_nid to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %cvt_nid, ptr %dig_out_nid, align 2
  %num_cvts = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %num_cvts to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_cvts, align 4
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %num_pins, align 4
  %pins = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 7
  %call5 = tail call ptr @snd_array_new(ptr noundef %pins) #18
  %cvts = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 2
  %call6 = tail call ptr @snd_array_new(ptr noundef %cvts) #18
  %tobool7.not = icmp eq ptr %call5, null
  %tobool8.not = icmp eq ptr %call6, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %spec2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spec2, align 8
  %pins.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %pins.i.i) #18
  %cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %13, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %cvts.i.i) #18
  tail call void @kfree(ptr noundef %13) #18
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %call6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %cvt_nid, ptr %call6, align 8
  %15 = ptrtoint ptr %call5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %pin_nid, ptr %call5, align 8
  %pcm_playback = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i, i32 0, i32 21
  %16 = call ptr @memcpy(ptr %pcm_playback, ptr @simple_pcm_playback, i32 64)
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %17 = call ptr @memcpy(ptr %patch_ops, ptr @simple_hdmi_patch_ops, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %if.then9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_init_2ch(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull @nvhdmi_basic_init_7x_2ch) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_playback_free(ptr nocapture noundef readonly %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %pins.i) #18
  %cvts.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %cvts.i) #18
  tail call void @kfree(ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_playback_pcm_open(ptr nocapture noundef readnone %hinfo, ptr noundef %codec, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %preset = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 5
  %2 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %preset, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %switch.tableidx = add i32 %5, -282984450
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 6
  br i1 %6, label %switch.hole_check, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else_crit_edge, label %switch.lookup

switch.hole_check.if.else_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.simple_playback_pcm_open, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %9 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %10, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %switch.load) #18
  br label %if.end

if.else:                                          ; preds = %switch.hole_check.if.else_crit_edge, %entry.if.else_crit_edge
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %11 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime3, align 4
  %call4 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %12, i32 noundef 0, i32 noundef 10, i32 noundef 2) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %switch.lookup
  %multiout = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 20
  %call5 = tail call i32 @snd_hda_multi_out_dig_open(ptr noundef %codec, ptr noundef %multiout) #18
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_playback_pcm_close(ptr nocapture noundef readnone %hinfo, ptr noundef %codec, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %multiout = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 20
  %call = tail call i32 @snd_hda_multi_out_dig_close(ptr noundef %codec, ptr noundef %multiout) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_playback_pcm_prepare(ptr nocapture noundef readnone %hinfo, ptr noundef %codec, i32 noundef %stream_tag, i32 noundef %format, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %multiout = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 20
  %call = tail call i32 @snd_hda_multi_out_dig_prepare(ptr noundef %codec, ptr noundef %multiout, i32 noundef %stream_tag, i32 noundef %format, ptr noundef %substream) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_multi_out_dig_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_multi_out_dig_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_multi_out_dig_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_playback_build_controls(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %call3 = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %codec, i16 noundef zeroext %5, i16 noundef zeroext %5, i32 noundef 2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call fastcc i32 @generic_hdmi_build_jack(ptr noundef %codec, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_playback_build_pcms(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %conv.i = zext i16 %5 to i32
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %6 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %5)
  %cmp.i = icmp ugt i16 %7, %5
  br i1 %cmp.i, label %entry.get_wcaps.exit_crit_edge, label %lor.lhs.false.i

entry.get_wcaps.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_wcaps.exit

lor.lhs.false.i:                                  ; preds = %entry
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %8 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %9, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %if.end.i, label %lor.lhs.false.i.get_wcaps.exit_crit_edge

lor.lhs.false.i.get_wcaps.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_wcaps.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %10 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %phi.bo = lshr i32 %13, 12
  %phi.bo33 = and i32 %phi.bo, 14
  %phi.bo34 = add nuw nsw i32 %phi.bo33, 2
  br label %get_wcaps.exit

get_wcaps.exit:                                   ; preds = %if.end.i, %lor.lhs.false.i.get_wcaps.exit_crit_edge, %entry.get_wcaps.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo34, %if.end.i ], [ 2, %lor.lhs.false.i.get_wcaps.exit_crit_edge ], [ 2, %entry.get_wcaps.exit_crit_edge ]
  %call4 = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %codec, ptr noundef nonnull @.str.180) #18
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %get_wcaps.exit.cleanup_crit_edge, label %if.end

get_wcaps.exit.cleanup_crit_edge:                 ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %get_wcaps.exit
  %pcm_rec = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4, ptr %pcm_rec, align 4
  %pcm_type = getelementptr inbounds %struct.hda_pcm, ptr %call4, i32 0, i32 2
  %15 = ptrtoint ptr %pcm_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %pcm_type, align 8
  %stream = getelementptr inbounds %struct.hda_pcm, ptr %call4, i32 0, i32 1
  %pcm_playback = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 21
  %16 = call ptr @memcpy(ptr %stream, ptr %pcm_playback, i32 64)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 8
  %nid = getelementptr inbounds %struct.hda_pcm, ptr %call4, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %nid to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %nid, align 4
  %channels_max = getelementptr inbounds %struct.hda_pcm, ptr %call4, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp = icmp ult i32 %21, 3
  br i1 %cmp, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i, ptr %channels_max, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %get_wcaps.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %get_wcaps.exit.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @simple_playback_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 1799, i32 noundef 64) #18
  %conv.i = zext i16 %5 to i32
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %6 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %start_nid.i, align 4
  %conv1.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %5)
  %cmp.i = icmp ugt i16 %7, %5
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %8 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %9, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp8.not.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp8.not.i, label %get_wcaps.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

get_wcaps.exit:                                   ; preds = %lor.lhs.false.i
  %wcaps.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %10 = ptrtoint ptr %wcaps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wcaps.i, align 4
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %arrayidx.i = getelementptr i32, ptr %11, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %get_wcaps.exit.if.end_crit_edge, label %if.then

get_wcaps.exit.if.end_crit_edge:                  ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %get_wcaps.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call.i14 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 768, i32 noundef 45056) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %get_wcaps.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev_id = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_id, align 4
  %call5 = tail call i32 @snd_hda_jack_detect_enable(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef %15) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_hdmi_unsol_event(ptr noundef %codec, i32 noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_hda_jack_set_dirty_all(ptr noundef %codec) #18
  tail call void @snd_hda_jack_report_sync(ptr noundef %codec) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_jack_detect_enable(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_set_dirty_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_jack_report_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_sequence_write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_init_8ch(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @snd_hda_sequence_write(ptr noundef %codec, ptr noundef nonnull @nvhdmi_basic_init_7x_8ch) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_8ch_build_pcms(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %conv.i.i = zext i16 %5 to i32
  %start_nid.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %6 = ptrtoint ptr %start_nid.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %start_nid.i.i, align 4
  %conv1.i.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %5)
  %cmp.i.i = icmp ugt i16 %7, %5
  br i1 %cmp.i.i, label %entry.get_wcaps.exit.i_crit_edge, label %lor.lhs.false.i.i

entry.get_wcaps.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_wcaps.exit.i

lor.lhs.false.i.i:                                ; preds = %entry
  %num_nodes.i.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %8 = ptrtoint ptr %num_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_nodes.i.i, align 8
  %add.i.i = add i32 %9, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp8.not.i.i = icmp ugt i32 %add.i.i, %conv.i.i
  br i1 %cmp8.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge

lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge:     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %get_wcaps.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %wcaps.i.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 14
  %10 = ptrtoint ptr %wcaps.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wcaps.i.i, align 4
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %sub.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %phi.bo.i = lshr i32 %13, 12
  %phi.bo33.i = and i32 %phi.bo.i, 14
  %phi.bo34.i = add nuw nsw i32 %phi.bo33.i, 2
  br label %get_wcaps.exit.i

get_wcaps.exit.i:                                 ; preds = %if.end.i.i, %lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge, %entry.get_wcaps.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo34.i, %if.end.i.i ], [ 2, %lor.lhs.false.i.i.get_wcaps.exit.i_crit_edge ], [ 2, %entry.get_wcaps.exit.i_crit_edge ]
  %call4.i = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %codec, ptr noundef nonnull @.str.180) #18
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %get_wcaps.exit.i.if.end_crit_edge, label %if.end.i

get_wcaps.exit.i.if.end_crit_edge:                ; preds = %get_wcaps.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i:                                         ; preds = %get_wcaps.exit.i
  %pcm_rec.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %pcm_rec.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %pcm_rec.i, align 4
  %pcm_type.i = getelementptr inbounds %struct.hda_pcm, ptr %call4.i, i32 0, i32 2
  %15 = ptrtoint ptr %pcm_type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %pcm_type.i, align 8
  %stream.i = getelementptr inbounds %struct.hda_pcm, ptr %call4.i, i32 0, i32 1
  %pcm_playback.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 21
  %16 = call ptr @memcpy(ptr %stream.i, ptr %pcm_playback.i, i32 64)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 8
  %nid.i = getelementptr inbounds %struct.hda_pcm, ptr %call4.i, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %nid.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %nid.i, align 4
  %channels_max.i = getelementptr inbounds %struct.hda_pcm, ptr %call4.i, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels_max.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp.i = icmp ult i32 %21, 3
  br i1 %cmp.i, label %if.then10.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i, ptr %channels_max.i, align 8
  br label %if.then

if.then:                                          ; preds = %if.then10.i, %if.end.i.if.then_crit_edge
  %23 = ptrtoint ptr %pcm_rec.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm_rec.i, align 4
  %own_chmap = getelementptr inbounds %struct.hda_pcm, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %own_chmap to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %own_chmap, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %get_wcaps.exit.i.if.end_crit_edge
  %retval.0.i6 = phi i32 [ 0, %if.then ], [ -12, %get_wcaps.exit.i.if.end_crit_edge ]
  ret i32 %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvhdmi_7x_8ch_build_controls(ptr noundef %codec) #2 align 64 {
entry:
  %chmap = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chmap) #18
  %2 = ptrtoint ptr %chmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %chmap, align 4, !annotation !485
  %list.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  %call3.i = tail call i32 @snd_hda_create_dig_out_ctls(ptr noundef %codec, i16 noundef zeroext %6, i16 noundef zeroext %6, i32 noundef 2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %simple_playback_build_controls.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

simple_playback_build_controls.exit:              ; preds = %entry
  %call4.i = tail call fastcc i32 @generic_hdmi_build_jack(ptr noundef %codec, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %simple_playback_build_controls.exit.cleanup_crit_edge, label %if.end

simple_playback_build_controls.exit.cleanup_crit_edge: ; preds = %simple_playback_build_controls.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %simple_playback_build_controls.exit
  %pcm_rec = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %pcm_rec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm_rec, align 4
  %pcm2 = getelementptr inbounds %struct.hda_pcm, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm2, align 8
  %call3 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %chmap) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %preset = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 5
  %11 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %preset, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %switch.tableidx = add i32 %14, -282984450
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 6
  br i1 %15, label %switch.hole_check, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

switch.hole_check:                                ; preds = %if.end6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.nvhdmi_7x_8ch_build_controls, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %18 = ptrtoint ptr %chmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %.sink19 = load ptr, ptr %chmap, align 4
  %channel_mask = getelementptr inbounds %struct.snd_pcm_chmap, ptr %.sink19, i32 0, i32 5
  %19 = ptrtoint ptr %channel_mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %switch.load, ptr %channel_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %simple_playback_build_controls.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %simple_playback_build_controls.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call3.i, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chmap) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvhdmi_8ch_7x_pcm_close(ptr nocapture noundef readnone %hinfo, ptr noundef %codec, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #18
  %call.i14 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #18
  %call.i15 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 512, i32 noundef 0) #18
  %call.i14.1 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 8, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #18
  %call.i15.1 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 8, i32 noundef 0, i32 noundef 512, i32 noundef 0) #18
  %call.i14.2 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 10, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #18
  %call.i15.2 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 10, i32 noundef 0, i32 noundef 512, i32 noundef 0) #18
  %call.i14.3 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 12, i32 noundef 0, i32 noundef 1798, i32 noundef 0) #18
  %call.i15.3 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 12, i32 noundef 0, i32 noundef 512, i32 noundef 0) #18
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3961, i32 noundef 19) #18
  %call.i11.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3962, i32 noundef 87) #18
  %multiout = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 20
  %call5 = tail call i32 @snd_hda_multi_out_dig_close(ptr noundef %codec, ptr noundef %multiout) #18
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvhdmi_8ch_7x_pcm_prepare(ptr nocapture noundef readnone %hinfo, ptr noundef %codec, i32 noundef %stream_tag, i32 noundef %format, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %spdif_mutex = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %spdif_mutex, i32 noundef 0) #18
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %call2 = tail call ptr @snd_hda_spdif_out_of_nid(ptr noundef %codec, i16 noundef zeroext %5) #18
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels, align 8
  %spdif_status_reset = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %10 = ptrtoint ptr %spdif_status_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %spdif_status_reset, align 4
  %11 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctls = getelementptr inbounds %struct.hda_spdif_out, ptr %call2, i32 0, i32 2
  %12 = ptrtoint ptr %ctls to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ctls, align 4
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %and7 = and i32 %conv, 254
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1805, i32 noundef %and7) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %shl = shl i32 %stream_tag, 4
  %call.i112 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1798, i32 noundef %shl) #18
  %call.i113 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 512, i32 noundef %format) #18
  %14 = ptrtoint ptr %spdif_status_reset to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load12 = load i32, ptr %spdif_status_reset, align 4
  %15 = and i32 %bf.load12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %if.end.if.end27_crit_edge, label %land.lhs.true16

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

land.lhs.true16:                                  ; preds = %if.end
  %ctls17 = getelementptr inbounds %struct.hda_spdif_out, ptr %call2, i32 0, i32 2
  %16 = ptrtoint ptr %ctls17 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ctls17, align 4
  %conv18 = zext i16 %17 to i32
  %and19 = and i32 %conv18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true16.if.end27_crit_edge, label %if.then21

land.lhs.true16.if.end27_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #20
  %and24 = and i32 %conv18, 255
  %call.i114 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1805, i32 noundef %and24) #18
  %call.i115 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 1806, i32 noundef 2) #18
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %land.lhs.true16.if.end27_crit_edge, %if.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp29 = icmp eq i32 %9, 2
  %ctls39 = getelementptr inbounds %struct.hda_spdif_out, ptr %call2, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end27
  %i.0121 = phi i32 [ 0, %if.end27 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw i32 %i.0121, 1
  %channel_id.0 = select i1 %cmp29, i32 0, i32 %mul
  %18 = ptrtoint ptr %spdif_status_reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load34 = load i32, ptr %spdif_status_reset, align 4
  %19 = and i32 %bf.load34, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool37.not = icmp eq i32 %19, 0
  br i1 %tobool37.not, label %for.body.if.end49_crit_edge, label %land.lhs.true38

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

land.lhs.true38:                                  ; preds = %for.body
  %20 = ptrtoint ptr %ctls39 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ctls39, align 4
  %conv40 = zext i16 %21 to i32
  %and41 = and i32 %conv40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %land.lhs.true38.if.end49_crit_edge, label %if.then43

land.lhs.true38.if.end49_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end49

if.then43:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr [4 x i16], ptr @nvhdmi_con_nids_7x, i32 0, i32 %i.0121
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %and47 = and i32 %conv40, 254
  %call.i116 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %23, i32 noundef 0, i32 noundef 1805, i32 noundef %and47) #18
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %land.lhs.true38.if.end49_crit_edge, %for.body.if.end49_crit_edge
  %arrayidx50 = getelementptr [4 x i16], ptr @nvhdmi_con_nids_7x, i32 0, i32 %i.0121
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx50, align 2
  %or52 = or i32 %channel_id.0, %shl
  %call.i117 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 1798, i32 noundef %or52) #18
  %call.i118 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 512, i32 noundef %format) #18
  %26 = ptrtoint ptr %spdif_status_reset to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load57 = load i32, ptr %spdif_status_reset, align 4
  %27 = and i32 %bf.load57, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool60.not = icmp eq i32 %27, 0
  br i1 %tobool60.not, label %if.end49.for.inc_crit_edge, label %land.lhs.true61

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true61:                                  ; preds = %if.end49
  %28 = ptrtoint ptr %ctls39 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ctls39, align 4
  %conv63 = zext i16 %29 to i32
  %and64 = and i32 %conv63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %land.lhs.true61.for.inc_crit_edge, label %if.then66

land.lhs.true61.for.inc_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then66:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #20
  %and70 = and i32 %conv63, 255
  %call.i119 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 1805, i32 noundef %and70) #18
  %call.i120 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %25, i32 noundef 0, i32 noundef 1806, i32 noundef 2) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %land.lhs.true61.for.inc_crit_edge, %if.end49.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0121, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  %switch.tableidx = add i32 %9, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 5
  br i1 %30, label %switch.lookup, label %for.end.nvhdmi_8ch_7x_set_info_frame_parameters.exit_crit_edge

for.end.nvhdmi_8ch_7x_set_info_frame_parameters.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %nvhdmi_8ch_7x_set_info_frame_parameters.exit

switch.lookup:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nvhdmi_8ch_7x_pcm_prepare, i32 0, i32 %switch.tableidx
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nvhdmi_8ch_7x_set_info_frame_parameters.exit

nvhdmi_8ch_7x_set_info_frame_parameters.exit:     ; preds = %switch.lookup, %for.end.nvhdmi_8ch_7x_set_info_frame_parameters.exit_crit_edge
  %chanmask.0.i = phi i32 [ 0, %for.end.nvhdmi_8ch_7x_set_info_frame_parameters.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %phi.bo.i = sub i32 114, %9
  %spec.select.i = select i1 %tobool.not.i, i32 112, i32 %phi.bo.i
  %call.i.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3961, i32 noundef %chanmask.0.i) #18
  %sub5.i = sub i32 %spec.select.i, %chanmask.0.i
  %call.i11.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 3962, i32 noundef %sub5.i) #18
  tail call void @mutex_unlock(ptr noundef %spdif_mutex) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_chmap_cea_alloc_validate_get_type(ptr nocapture noundef readnone %chmap, ptr nocapture noundef readonly %cap, i32 noundef %channels) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channels)
  %cmp1 = icmp eq i32 %channels, 2
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %channels2 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, ptr %cap, i32 0, i32 2
  %2 = ptrtoint ptr %channels2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channels2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %channels)
  %cmp3.not = icmp eq i32 %3, %channels
  %. = select i1 %cmp3.not, i32 258, i32 -1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 257, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_chmap_validate(ptr nocapture noundef readnone %chmap, i32 noundef %ca, i32 noundef %chs, ptr nocapture noundef readonly %map) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ca)
  %cmp = icmp eq i32 %ca, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %map, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp1.not = icmp eq i8 %1, 3
  br i1 %cmp1.not, label %lor.lhs.false, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx3 = getelementptr i8, ptr %map, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp5.not = icmp eq i8 %3, 4
  br i1 %cmp5.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_build_pcms(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %mst_no_extra_pcms.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %mst_no_extra_pcms.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %mst_no_extra_pcms.i, align 4
  %3 = and i32 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %num_nids2.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_nids2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_nids2.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev_num.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_num.i, align 4
  %add.i = add i32 %5, -1
  %sub.i = add i32 %add.i, %7
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %entry.do.body.i_crit_edge
  %pcm_num.0.i = phi i32 [ %sub.i, %if.else.i ], [ %5, %entry.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_hdmi_build_pcms.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_hdmi_build_pcms, %if.then6.i)) #18
          to label %do.end.i [label %if.then6.i], !srcloc !483

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @generic_hdmi_build_pcms.__UNIQUE_ID_ddebug266, ptr noundef %codec, ptr noundef nonnull @.str.155, i32 noundef %pcm_num.0.i) #18
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcm_num.0.i)
  %cmp43.i = icmp sgt i32 %pcm_num.0.i, 0
  br i1 %cmp43.i, label %for.body.lr.ph.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %pcm_used.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc18.i, %if.end11.i.for.body.i_crit_edge ]
  %call8.i = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %codec, ptr noundef nonnull @.str.156, i32 noundef %idx.044.i) #18
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %for.body.i.cleanup6_crit_edge, label %if.end11.i

for.body.i.cleanup6_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

if.end11.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.hdmi_spec, ptr %1, i32 0, i32 8, i32 %idx.044.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %pcm_used.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcm_used.i, align 8
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %pcm_used.i, align 8
  %pcm_type.i = getelementptr inbounds %struct.hda_pcm, ptr %call8.i, i32 0, i32 2
  %11 = ptrtoint ptr %pcm_type.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %pcm_type.i, align 8
  %own_chmap.i = getelementptr inbounds %struct.hda_pcm, ptr %call8.i, i32 0, i32 5
  %12 = ptrtoint ptr %own_chmap.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %own_chmap.i, align 4
  %stream.i = getelementptr inbounds %struct.hda_pcm, ptr %call8.i, i32 0, i32 1
  %13 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %stream.i, align 8
  %ops.i = getelementptr inbounds %struct.hda_pcm, ptr %call8.i, i32 0, i32 1, i32 0, i32 8
  %14 = call ptr @memcpy(ptr %ops.i, ptr @generic_ops, i32 20)
  %15 = load i32, ptr %pcm_used.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %cmp14.i = icmp sgt i32 %15, 15
  %inc18.i = add nuw nsw i32 %idx.044.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc18.i, i32 %pcm_num.0.i)
  %exitcond.not.i = icmp eq i32 %inc18.i, %pcm_num.0.i
  %or.cond.i = select i1 %cmp14.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.end11.i.if.end_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %if.end11.i.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %16 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spec1.i, align 8
  %num_pins.i = getelementptr inbounds %struct.hdmi_spec, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %num_pins.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not.i = icmp eq i32 %19, 0
  br i1 %cmp1.not.i, label %if.end.cleanup6_crit_edge, label %if.end.for.body.i18_crit_edge

if.end.for.body.i18_crit_edge:                    ; preds = %if.end
  br label %for.body.i18

if.end.cleanup6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

for.cond.i:                                       ; preds = %for.body.i18
  %inc.i14 = add nuw i32 %i.02.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, %19
  br i1 %exitcond.not.i15, label %for.cond.i.cleanup6_crit_edge, label %for.cond.i.for.body.i18_crit_edge

for.cond.i.for.body.i18_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i18

for.cond.i.cleanup6_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

for.body.i18:                                     ; preds = %for.cond.i.for.body.i18_crit_edge, %if.end.for.body.i18_crit_edge
  %i.02.i = phi i32 [ %inc.i14, %for.cond.i.for.body.i18_crit_edge ], [ 0, %if.end.for.body.i18_crit_edge ]
  %arrayidx.i16 = getelementptr %struct.hdmi_spec, ptr %17, i32 0, i32 8, i32 %i.02.i
  %20 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i16, align 4
  %pcm_type.i17 = getelementptr inbounds %struct.hda_pcm, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pcm_type.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcm_type.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp3.i = icmp eq i32 %23, 2
  br i1 %cmp3.i, label %hda_find_pcm_by_type.exit, label %for.cond.i

hda_find_pcm_by_type.exit:                        ; preds = %for.body.i18
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %hda_find_pcm_by_type.exit.cleanup6_crit_edge, label %if.end3

hda_find_pcm_by_type.exit.cleanup6_crit_edge:     ; preds = %hda_find_pcm_by_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup6

if.end3:                                          ; preds = %hda_find_pcm_by_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  %prepare = getelementptr inbounds %struct.hda_pcm, ptr %21, i32 0, i32 1, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tegra_hdmi_pcm_prepare, ptr %prepare, align 8
  %cleanup = getelementptr inbounds %struct.hda_pcm, ptr %21, i32 0, i32 1, i32 0, i32 8, i32 3
  %25 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tegra_hdmi_pcm_cleanup, ptr %cleanup, align 4
  br label %cleanup6

cleanup6:                                         ; preds = %if.end3, %hda_find_pcm_by_type.exit.cleanup6_crit_edge, %for.cond.i.cleanup6_crit_edge, %if.end.cleanup6_crit_edge, %for.body.i.cleanup6_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -19, %hda_find_pcm_by_type.exit.cleanup6_crit_edge ], [ -19, %if.end.cleanup6_crit_edge ], [ -19, %for.cond.i.cleanup6_crit_edge ], [ -12, %for.body.i.cleanup6_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_pcm_prepare(ptr noundef %hinfo, ptr noundef %codec, i32 noundef %stream_tag, i32 noundef %format, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_hdmi_playback_pcm_prepare(ptr noundef %hinfo, ptr noundef %codec, i32 noundef %stream_tag, i32 noundef %format, ptr noundef %substream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4006, i32 noundef 0) #18
  %shr.i = lshr i32 %call.i.i, 24
  %and2.i = and i32 %format, 255
  %call.i20.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4007, i32 noundef %and2.i) #18
  %shr4.i = lshr i32 %format, 8
  %and5.i = and i32 %shr4.i, 255
  %call.i21.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4008, i32 noundef %and5.i) #18
  %call.i22.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4009, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %format)
  %cmp.i = icmp eq i32 %format, 0
  %and8.i = and i32 %shr.i, 191
  %or.i = or i32 %shr.i, 64
  %value.0.i = select i1 %cmp.i, i32 %and8.i, i32 %or.i
  %xor.i = xor i32 %value.0.i, 128
  %call.i23.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4010, i32 noundef %xor.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_hdmi_pcm_cleanup(ptr nocapture noundef readonly %hinfo, ptr noundef %codec, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4006, i32 noundef 0) #18
  %shr.i = lshr i32 %call.i.i, 24
  %call.i20.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4007, i32 noundef 0) #18
  %call.i21.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4008, i32 noundef 0) #18
  %call.i22.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4009, i32 noundef 0) #18
  %and8.i = and i32 %shr.i, 191
  %xor.i = xor i32 %and8.i, 128
  %call.i23.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 4010, i32 noundef %xor.i) #18
  %nid.i = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %0 = ptrtoint ptr %nid.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nid.i, align 4
  tail call void @__snd_hda_codec_cleanup_stream(ptr noundef %codec, i16 noundef zeroext %1, i32 noundef 0) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_port2pin(ptr nocapture noundef readnone %codec, i32 noundef %port) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %port, 4
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nvhdmi_pin2port(ptr nocapture noundef readnone %audio_ptr, i32 noundef %pin_nid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %pin_nid, -4
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_intel_hdmi(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %audio_component = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %audio_component to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio_component, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %codec, ptr noundef nonnull @.str.181) #21
  %probe_id = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 4
  %4 = ptrtoint ptr %probe_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %probe_id, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1448) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %codec, ptr %call7.i.i.i, align 8
  %ops.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 15
  %7 = call ptr @memcpy(ptr %ops.i, ptr @generic_standard_hdmi_ops, i32 20)
  %dev_num.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %dev_num.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dev_num.i, align 4
  %pcm_lock.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %pcm_lock.i, ptr noundef nonnull @.str.139, ptr noundef nonnull @alloc_generic_hdmi.__key) #18
  %bind_lock.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %bind_lock.i, ptr noundef nonnull @.str.141, ptr noundef nonnull @alloc_generic_hdmi.__key.140) #18
  %chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27
  tail call void @snd_hdac_register_chmap_ops(ptr noundef %codec, ptr noundef %chmap.i) #18
  %get_chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 4
  %9 = ptrtoint ptr %get_chmap.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hdmi_get_chmap, ptr %get_chmap.i, align 8
  %set_chmap.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 5
  %10 = ptrtoint ptr %set_chmap.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hdmi_set_chmap, ptr %set_chmap.i, align 4
  %is_pcm_attached.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 6
  %11 = ptrtoint ptr %is_pcm_attached.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @is_hdmi_pcm_attached, ptr %is_pcm_attached.i, align 8
  %get_spk_alloc.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 27, i32 1, i32 3
  %12 = ptrtoint ptr %get_spk_alloc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hdmi_get_spk_alloc, ptr %get_spk_alloc.i, align 4
  %spec13.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %13 = ptrtoint ptr %spec13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %spec13.i, align 8
  %elem_size.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1048, ptr %elem_size.i.i.i, align 8
  %alloc_align.i.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %alloc_align.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %alloc_align.i.i.i, align 4
  %elem_size.i3.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %elem_size.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 40, ptr %elem_size.i3.i.i, align 8
  %alloc_align.i4.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %alloc_align.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %alloc_align.i4.i.i, align 4
  %patch_ops.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %patch_ops.i, ptr @generic_hdmi_patch_ops, i32 40)
  %unsol_event = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 4
  %19 = ptrtoint ptr %unsol_event to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %unsol_event, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_intel_hdmi(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.body.1:                                        ; preds = %entry
  %call.1 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp.1 = icmp slt i32 %call.1, 0
  br i1 %cmp.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  %call.2 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp.2 = icmp slt i32 %call.2, 0
  br i1 %cmp.2, label %do.body.3, label %do.body.2.do.end_crit_edge

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #20
  %call.3 = tail call fastcc i32 @hdmi_parse_codec(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp.3 = icmp slt i32 %call.3, 0
  br label %do.end

do.end:                                           ; preds = %do.body.3, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %do.body.1.do.end_crit_edge ], [ %call.2, %do.body.2.do.end_crit_edge ], [ %call.3, %do.body.3 ]
  %cmp.lcssa = phi i1 [ %cmp, %entry.do.end_crit_edge ], [ %cmp.1, %do.body.1.do.end_crit_edge ], [ %cmp.2, %do.body.2.do.end_crit_edge ], [ %cmp.3, %do.body.3 ]
  br i1 %cmp.lcssa, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.generic_spec_free.exit_crit_edge, label %if.then.i

if.then.generic_spec_free.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %generic_spec_free.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %pins.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7
  tail call void @snd_array_free(ptr noundef %pins.i.i) #18
  %cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2
  tail call void @snd_array_free(ptr noundef %cvts.i.i) #18
  tail call void @kfree(ptr noundef nonnull %1) #18
  %2 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %spec1.i, align 8
  br label %generic_spec_free.exit

generic_spec_free.exit:                           ; preds = %if.then.i, %if.then.generic_spec_free.exit_crit_edge
  %dp_mst.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %3 = ptrtoint ptr %dp_mst.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %dp_mst.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -65537
  store i32 %bf.clear.i, ptr %dp_mst.i, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @generic_hdmi_init_per_pins(ptr noundef %codec)
  %spec1.i9 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %4 = ptrtoint ptr %spec1.i9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec1.i9, align 8
  %use_acomp_notifier.i = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %use_acomp_notifier.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_acomp_notifier.i, align 8
  %port2pin.i = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 26
  %7 = ptrtoint ptr %port2pin.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @intel_port2pin, ptr %port2pin.i, align 8
  %8 = load ptr, ptr %spec1.i9, align 8
  %drm_audio_ops.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %drm_audio_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %codec, ptr %drm_audio_ops.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !481
  tail call void @arm_heavy_mb() #18
  %pin2port3.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 25, i32 2
  %10 = ptrtoint ptr %pin2port3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @intel_pin2port, ptr %pin2port3.i.i, align 4
  %pin_eld_notify5.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 25, i32 1
  %11 = ptrtoint ptr %pin_eld_notify5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @intel_pin_eld_notify, ptr %pin_eld_notify5.i.i, align 4
  %master_bind7.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 25, i32 3
  %12 = ptrtoint ptr %master_bind7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %master_bind7.i.i, align 4
  %master_unbind9.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %8, i32 0, i32 25, i32 4
  %13 = ptrtoint ptr %master_unbind9.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %master_unbind9.i.i, align 4
  %bus.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 1
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %drm_audio_ops.i = getelementptr inbounds %struct.hdmi_spec, ptr %5, i32 0, i32 25
  %call.i = tail call i32 @snd_hdac_acomp_register_notifier(ptr noundef %15, ptr noundef %drm_audio_ops.i) #18
  %relaxed_resume.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %16 = ptrtoint ptr %relaxed_resume.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i10 = load i32, ptr %relaxed_resume.i, align 4
  %bf.set.i = or i32 %bf.load.i10, 1024
  store i32 %bf.set.i, ptr %relaxed_resume.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %generic_spec_free.exit
  %retval.0 = phi i32 [ %call.lcssa, %generic_spec_free.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @intel_port2pin(ptr nocapture noundef readonly %codec, i32 noundef %port) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %port_num = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %4 = add i32 %port, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %4)
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then
  %vendor_id.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 7
  %6 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vendor_id.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %7, label %sw.default.i [
    i32 -2138701740, label %if.end.intel_base_nid.exit_crit_edge
    i32 -2138691580, label %if.end.intel_base_nid.exit_crit_edge20
    i32 -2138691454, label %if.end.intel_base_nid.exit_crit_edge21
  ]

if.end.intel_base_nid.exit_crit_edge21:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

if.end.intel_base_nid.exit_crit_edge20:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

if.end.intel_base_nid.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

intel_base_nid.exit:                              ; preds = %sw.default.i, %if.end.intel_base_nid.exit_crit_edge, %if.end.intel_base_nid.exit_crit_edge20, %if.end.intel_base_nid.exit_crit_edge21
  %retval.0.i = phi i32 [ 5, %sw.default.i ], [ 4, %if.end.intel_base_nid.exit_crit_edge ], [ 4, %if.end.intel_base_nid.exit_crit_edge20 ], [ 4, %if.end.intel_base_nid.exit_crit_edge21 ]
  %add = add nsw i32 %port, -1
  %sub = add nuw nsw i32 %add, %retval.0.i
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %port)
  %cmp5 = icmp sgt i32 %port, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp8.not = icmp sgt i32 %3, %port
  %or.cond19 = select i1 %cmp5, i1 %cmp8.not, i1 false
  br i1 %or.cond19, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %port_map = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_map, align 8
  %arrayidx = getelementptr i32, ptr %10, i32 %port
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %intel_base_nid.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end10 ], [ %sub, %intel_base_nid.exit ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_pin_eld_notify(ptr noundef %audio_ptr, i32 noundef %port, i32 noundef %pipe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %audio_ptr, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %port_num.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %entry
  %4 = add i32 %port, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %4)
  %5 = icmp ult i32 %4, -3
  br i1 %5, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %vendor_id.i.i = getelementptr inbounds %struct.hdac_device, ptr %audio_ptr, i32 0, i32 7
  %6 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vendor_id.i.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %7, label %sw.default.i.i [
    i32 -2138701740, label %if.end.i.intel_port2pin.exit.thread17_crit_edge
    i32 -2138691580, label %if.end.i.intel_port2pin.exit.thread17_crit_edge21
    i32 -2138691454, label %if.end.i.intel_port2pin.exit.thread17_crit_edge22
  ]

if.end.i.intel_port2pin.exit.thread17_crit_edge22: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_port2pin.exit.thread17

if.end.i.intel_port2pin.exit.thread17_crit_edge21: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_port2pin.exit.thread17

if.end.i.intel_port2pin.exit.thread17_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_port2pin.exit.thread17

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_port2pin.exit.thread17

intel_port2pin.exit.thread17:                     ; preds = %sw.default.i.i, %if.end.i.intel_port2pin.exit.thread17_crit_edge, %if.end.i.intel_port2pin.exit.thread17_crit_edge21, %if.end.i.intel_port2pin.exit.thread17_crit_edge22
  %retval.0.i.i = phi i32 [ 5, %sw.default.i.i ], [ 4, %if.end.i.intel_port2pin.exit.thread17_crit_edge ], [ 4, %if.end.i.intel_port2pin.exit.thread17_crit_edge21 ], [ 4, %if.end.i.intel_port2pin.exit.thread17_crit_edge22 ]
  %add.i = add nsw i32 %port, -1
  %sub.i = add nuw nsw i32 %add.i, %retval.0.i.i
  br label %if.end

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %port)
  %cmp5.i = icmp sgt i32 %port, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %port)
  %cmp8.not.i = icmp sgt i32 %3, %port
  %or.cond19.i = select i1 %cmp5.i, i1 %cmp8.not.i, i1 false
  br i1 %or.cond19.i, label %intel_port2pin.exit, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

intel_port2pin.exit:                              ; preds = %if.end4.i
  %port_map.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 29
  %9 = ptrtoint ptr %port_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_map.i, align 8
  %arrayidx.i = getelementptr i32, ptr %10, i32 %port
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %intel_port2pin.exit.cleanup_crit_edge, label %intel_port2pin.exit.if.end_crit_edge

intel_port2pin.exit.if.end_crit_edge:             ; preds = %intel_port2pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

intel_port2pin.exit.cleanup_crit_edge:            ; preds = %intel_port2pin.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %intel_port2pin.exit.if.end_crit_edge, %intel_port2pin.exit.thread17
  %retval.0.i20 = phi i32 [ %sub.i, %intel_port2pin.exit.thread17 ], [ %12, %intel_port2pin.exit.if.end_crit_edge ]
  %power = getelementptr inbounds %struct.device, ptr %audio_ptr, i32 0, i32 12
  %13 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp eq i32 %14, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %in_pm.i = getelementptr inbounds %struct.hdac_device, ptr %audio_ptr, i32 0, i32 20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_pm.i, i32 noundef 4) #18
  %15 = ptrtoint ptr %in_pm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %in_pm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  %conv = trunc i32 %retval.0.i20 to i16
  tail call fastcc void @check_presence_and_report(ptr noundef %audio_ptr, i16 noundef zeroext %conv, i32 noundef %pipe)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %intel_port2pin.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_pin2port(ptr noundef %audio_ptr, i32 noundef %pin_nid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %audio_ptr, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %port_num = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2954 = icmp sgt i32 %3, 0
  br i1 %cmp2954, label %for.body.lr.ph, label %for.cond.preheader.do.end35_crit_edge

for.cond.preheader.do.end35_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end35

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %port_map = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_map, align 8
  br label %for.body

if.then:                                          ; preds = %entry
  %vendor_id.i = getelementptr inbounds %struct.hdac_device, ptr %audio_ptr, i32 0, i32 7
  %6 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vendor_id.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %7, label %sw.default.i [
    i32 -2138701740, label %if.then.intel_base_nid.exit_crit_edge
    i32 -2138691580, label %if.then.intel_base_nid.exit_crit_edge61
    i32 -2138691454, label %if.then.intel_base_nid.exit_crit_edge62
  ]

if.then.intel_base_nid.exit_crit_edge62:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

if.then.intel_base_nid.exit_crit_edge61:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

if.then.intel_base_nid.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_base_nid.exit

intel_base_nid.exit:                              ; preds = %sw.default.i, %if.then.intel_base_nid.exit_crit_edge, %if.then.intel_base_nid.exit_crit_edge61, %if.then.intel_base_nid.exit_crit_edge62
  %retval.0.i = phi i32 [ 5, %sw.default.i ], [ 4, %if.then.intel_base_nid.exit_crit_edge ], [ 4, %if.then.intel_base_nid.exit_crit_edge61 ], [ 4, %if.then.intel_base_nid.exit_crit_edge62 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %pin_nid)
  %cmp = icmp sgt i32 %retval.0.i, %pin_nid
  %add = add nuw nsw i32 %retval.0.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pin_nid)
  %cmp2 = icmp sle i32 %add, %pin_nid
  %9 = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %9, label %do.end, label %if.end25, !prof !484

do.end:                                           ; preds = %intel_base_nid.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.111, i32 noundef 2806, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

if.end25:                                         ; preds = %intel_base_nid.exit
  call void @__sanitizer_cov_trace_pc() #20
  %sub = add nsw i32 %pin_nid, 1
  %add26 = sub i32 %sub, %retval.0.i
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %i.055
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pin_nid)
  %cmp30 = icmp eq i32 %11, %pin_nid
  br i1 %cmp30, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %for.cond.preheader.do.end35_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %audio_ptr, ptr noundef nonnull @.str.183, i32 noundef %pin_nid) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %for.body.cleanup_crit_edge, %if.end25, %do.end
  %retval.0 = phi i32 [ -1, %do.end35 ], [ -1, %do.end ], [ %add26, %if.end25 ], [ %i.055, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @intel_hsw_common_init(ptr noundef %codec, i16 noundef zeroext %vendor_nid, ptr noundef %port_map, i32 noundef %port_num, i32 noundef %dev_num, i1 noundef zeroext %send_silent_stream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_intel_hdmi(ptr noundef %codec)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %dp_mst = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 31
  %2 = ptrtoint ptr %dp_mst to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %dp_mst, align 4
  %bf.set = or i32 %bf.load, 65536
  store i32 %bf.set, ptr %dp_mst, align 4
  %dyn_pcm_assign = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %dyn_pcm_assign to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dyn_pcm_assign, align 1
  %vendor_nid2 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %vendor_nid2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %vendor_nid, ptr %vendor_nid2, align 4
  %port_map3 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %port_map3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %port_map, ptr %port_map3, align 8
  %port_num4 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %port_num4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %port_num, ptr %port_num4, align 4
  %intel_hsw_fixup = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %intel_hsw_fixup to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %intel_hsw_fixup, align 1
  %dev_num5 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %dev_num5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dev_num, ptr %dev_num5, align 4
  %9 = load ptr, ptr %spec1, align 8
  %vendor_nid.i = getelementptr inbounds %struct.hdmi_spec, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor_nid.i, align 4
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %11, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #18
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.intel_haswell_enable_all_pins.exit_crit_edge

if.end.intel_haswell_enable_all_pins.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_haswell_enable_all_pins.exit

if.end.i:                                         ; preds = %if.end
  %or.i = or i32 %call.i.i, 1
  %12 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor_nid.i, align 4
  %call.i20.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %13, i32 noundef 0, i32 noundef 1921, i32 noundef %or.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i20.i)
  %cmp4.i.not = icmp eq i32 %call.i20.i, -1
  br i1 %cmp4.i.not, label %if.end.i.intel_haswell_enable_all_pins.exit_crit_edge, label %if.then8.i

if.end.i.intel_haswell_enable_all_pins.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_haswell_enable_all_pins.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %call9.i = tail call i32 @snd_hda_codec_update_widgets(ptr noundef %codec) #18
  br label %intel_haswell_enable_all_pins.exit

intel_haswell_enable_all_pins.exit:               ; preds = %if.then8.i, %if.end.i.intel_haswell_enable_all_pins.exit_crit_edge, %if.end.intel_haswell_enable_all_pins.exit_crit_edge
  %14 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spec1, align 8
  %vendor_nid.i37 = getelementptr inbounds %struct.hdmi_spec, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %vendor_nid.i37 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor_nid.i37, align 4
  %call.i.i38 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %17, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #18
  %and.i39 = and i32 %call.i.i38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.not.i40 = icmp eq i32 %and.i39, 0
  br i1 %tobool.not.i40, label %if.end.i42, label %intel_haswell_enable_all_pins.exit.intel_haswell_fixup_enable_dp12.exit_crit_edge

intel_haswell_enable_all_pins.exit.intel_haswell_fixup_enable_dp12.exit_crit_edge: ; preds = %intel_haswell_enable_all_pins.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_haswell_fixup_enable_dp12.exit

if.end.i42:                                       ; preds = %intel_haswell_enable_all_pins.exit
  call void @__sanitizer_cov_trace_pc() #20
  %or.i41 = or i32 %call.i.i38, 2
  %call2.i = tail call i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %codec, i32 noundef 1921) #18
  %18 = ptrtoint ptr %vendor_nid.i37 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor_nid.i37, align 4
  %conv.i.i.i = zext i16 %19 to i32
  %shl1.i.i.i = shl i32 %conv.i.i.i, 20
  %or2.i.i.i = or i32 %shl1.i.i.i, 1016064
  %call.i.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i.i, i32 noundef %or.i41) #18
  br label %intel_haswell_fixup_enable_dp12.exit

intel_haswell_fixup_enable_dp12.exit:             ; preds = %if.end.i42, %intel_haswell_enable_all_pins.exit.intel_haswell_fixup_enable_dp12.exit_crit_edge
  %20 = ptrtoint ptr %dp_mst to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load6 = load i32, ptr %dp_mst, align 4
  %set_power_state = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %set_power_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @haswell_set_power_state, ptr %set_power_state, align 4
  %depop_delay = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 40
  %22 = ptrtoint ptr %depop_delay to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %depop_delay, align 8
  %bf.set11 = or i32 %bf.load6, 268443648
  store i32 %bf.set11, ptr %dp_mst, align 4
  %setup_stream = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 15, i32 3
  %23 = ptrtoint ptr %setup_stream to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @i915_hsw_setup_stream, ptr %setup_stream, align 4
  %pin_cvt_fixup = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 15, i32 4
  %24 = ptrtoint ptr %pin_cvt_fixup to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @i915_pin_cvt_fixup, ptr %pin_cvt_fixup, align 8
  br i1 %send_silent_stream, label %if.then13, label %intel_haswell_fixup_enable_dp12.exit.if.end15_crit_edge

intel_haswell_fixup_enable_dp12.exit.if.end15_crit_edge: ; preds = %intel_haswell_fixup_enable_dp12.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

if.then13:                                        ; preds = %intel_haswell_fixup_enable_dp12.exit
  call void @__sanitizer_cov_trace_pc() #20
  %send_silent_stream14 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 31
  %25 = ptrtoint ptr %send_silent_stream14 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %send_silent_stream14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %intel_haswell_fixup_enable_dp12.exit.if.end15_crit_edge
  %call16 = tail call fastcc i32 @parse_intel_hdmi(ptr noundef %codec)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @haswell_set_power_state(ptr noundef %codec, i16 noundef zeroext %fg, i32 noundef %power_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_state)
  %cmp = icmp eq i32 %power_state, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1.i, align 8
  %vendor_nid.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor_nid.i, align 4
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #18
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.intel_haswell_enable_all_pins.exit_crit_edge

if.then.intel_haswell_enable_all_pins.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_haswell_enable_all_pins.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %or.i = or i32 %call.i.i, 1
  %4 = ptrtoint ptr %vendor_nid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor_nid.i, align 4
  %call.i20.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef 0, i32 noundef 1921, i32 noundef %or.i) #18
  br label %intel_haswell_enable_all_pins.exit

intel_haswell_enable_all_pins.exit:               ; preds = %if.end.i, %if.then.intel_haswell_enable_all_pins.exit_crit_edge
  %6 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec1.i, align 8
  %vendor_nid.i8 = getelementptr inbounds %struct.hdmi_spec, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %vendor_nid.i8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor_nid.i8, align 4
  %call.i.i9 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #18
  %and.i10 = and i32 %call.i.i9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %if.end.i13, label %intel_haswell_enable_all_pins.exit.if.end_crit_edge

intel_haswell_enable_all_pins.exit.if.end_crit_edge: ; preds = %intel_haswell_enable_all_pins.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.i13:                                       ; preds = %intel_haswell_enable_all_pins.exit
  call void @__sanitizer_cov_trace_pc() #20
  %or.i12 = or i32 %call.i.i9, 2
  %call2.i = tail call i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %codec, i32 noundef 1921) #18
  %10 = ptrtoint ptr %vendor_nid.i8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor_nid.i8, align 4
  %conv.i.i.i = zext i16 %11 to i32
  %shl1.i.i.i = shl i32 %conv.i.i.i, 20
  %or2.i.i.i = or i32 %shl1.i.i.i, 1016064
  %call.i.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i.i, i32 noundef %or.i12) #18
  br label %if.end

if.end:                                           ; preds = %if.end.i13, %intel_haswell_enable_all_pins.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %fg, i32 noundef 0, i32 noundef 1797, i32 noundef %power_state) #18
  tail call void @snd_hda_codec_set_power_to_all(ptr noundef %codec, i16 noundef zeroext %fg, i32 noundef %power_state) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i915_hsw_setup_stream(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %stream_tag, i32 noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @haswell_verify_D0(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %pin_nid)
  %call = tail call i32 @hdmi_setup_stream(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %stream_tag, i32 noundef %format)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i915_pin_cvt_fixup(ptr noundef %codec, ptr noundef readonly %per_pin, i16 noundef zeroext %cvt_nid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %per_pin, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %cvt_nid1 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 6
  %0 = ptrtoint ptr %cvt_nid1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cvt_nid1, align 4
  %2 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %per_pin, align 8
  tail call fastcc void @haswell_verify_D0(ptr noundef %codec, i16 noundef zeroext %1, i16 noundef zeroext %3)
  %4 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %per_pin, align 8
  %dev_id = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 1
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_id, align 4
  %call = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %5, i32 noundef %7) #18
  %8 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %per_pin, align 8
  %mux_idx2.i = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %per_pin, i32 0, i32 5
  %10 = ptrtoint ptr %mux_idx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mux_idx2.i, align 8
  %call.i.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %9, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %11)
  %cmp.not.i = icmp eq i32 %call.i.i, %11
  br i1 %cmp.not.i, label %if.then.intel_verify_pin_cvt_connect.exit_crit_edge, label %if.then.i

if.then.intel_verify_pin_cvt_connect.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %intel_verify_pin_cvt_connect.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i = zext i16 %9 to i32
  %shl1.i.i.i = shl i32 %conv.i.i.i, 20
  %or2.i.i.i = or i32 %shl1.i.i.i, 983296
  %call.i.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i.i, i32 noundef %11) #18
  br label %intel_verify_pin_cvt_connect.exit

intel_verify_pin_cvt_connect.exit:                ; preds = %if.then.i, %if.then.intel_verify_pin_cvt_connect.exit_crit_edge
  %12 = ptrtoint ptr %per_pin to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %per_pin, align 8
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_id, align 4
  %16 = ptrtoint ptr %mux_idx2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mux_idx2.i, align 8
  tail call fastcc void @intel_not_share_assigned_cvt(ptr noundef %codec, i16 noundef zeroext %13, i32 noundef %15, i32 noundef %17)
  br label %if.end

if.else:                                          ; preds = %entry
  %spec1.i = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %18 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec1.i, align 8
  %num_cvts.i.i = getelementptr inbounds %struct.hdmi_spec, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %num_cvts.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cvts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.i.i = icmp sgt i32 %21, 0
  br i1 %cmp8.i.i, label %if.else.for.body.i.i_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.else.for.body.i.i_crit_edge:                   ; preds = %if.else
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.hdmi_spec, ptr %19, i32 0, i32 3, i32 %i.09.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %cvt_nid)
  %cmp2.i.i = icmp eq i16 %23, %cvt_nid
  br i1 %cmp2.i.i, label %if.then.i17, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i17:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @intel_not_share_assigned_cvt(ptr noundef %codec, i16 noundef zeroext 0, i32 noundef 0, i32 noundef %i.09.i.i) #18
  br label %if.end

if.end:                                           ; preds = %if.then.i17, %for.inc.i.i.if.end_crit_edge, %if.else.if.end_crit_edge, %intel_verify_pin_cvt_connect.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_update_widgets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_set_power_to_all(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @haswell_verify_D0(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i16 noundef zeroext %nid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @snd_hdac_check_power_state(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i32 noundef 0) #18
  br i1 %call.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call.i22 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %cvt_nid, i32 noundef 0, i32 noundef 1797, i32 noundef 0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i23 = tail call zeroext i1 @snd_hdac_check_power_state(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0) #18
  br i1 %call.i23, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call.i24 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 1797, i32 noundef 0) #18
  tail call void @msleep(i32 noundef 40) #18
  %call.i25 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 0, i32 noundef 3845, i32 noundef 0) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @haswell_verify_D0.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@haswell_verify_D0, %if.then9)) #18
          to label %if.end11 [label %if.then9], !srcloc !483

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  %and = lshr i32 %call.i25, 4
  %0 = and i32 %and, 15
  %conv = zext i16 %nid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @haswell_verify_D0.__UNIQUE_ID_ddebug258, ptr noundef %codec, ptr noundef nonnull @.str.186, i32 noundef %conv, i32 noundef %0) #18
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then3, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_hdac_check_power_state(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @intel_not_share_assigned_cvt(ptr noundef %codec, i16 noundef zeroext %pin_nid, i32 noundef %dev_id, i32 noundef %mux_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %num_pins = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp87 = icmp sgt i32 %3, 0
  br i1 %cmp87, label %for.body.lr.ph, label %entry.for.end48_crit_edge

entry.for.end48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %list.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 4
  %elem_size.i = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 7, i32 2
  %num_cvts = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 1
  %list.i79 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 4
  %elem_size.i80 = getelementptr inbounds %struct.hdmi_spec, ptr %1, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %pin_idx.088 = phi i32 [ 0, %for.body.lr.ph ], [ %inc47, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list.i, align 4
  %6 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %elem_size.i, align 4
  %mul.i = mul i32 %7, %pin_idx.088
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %pcm = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 11
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %pin_nid)
  %cmp4 = icmp eq i16 %11, %pin_nid
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %dev_id6 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev_id6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_id6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %dev_id)
  %cmp7 = icmp eq i32 %13, %dev_id
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call12 = tail call i32 @snd_hda_get_num_devices(ptr noundef %codec, i16 noundef zeroext %11) #18
  %add = add i32 %call12, 1
  %dev_id13 = getelementptr inbounds %struct.hdmi_spec_per_pin, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev_id13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_id13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp14.not = icmp slt i32 %15, %add
  br i1 %cmp14.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 8
  %call19 = tail call i32 @snd_hda_get_dev_select(ptr noundef %codec, i16 noundef zeroext %17) #18
  %18 = ptrtoint ptr %dev_id13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_id13, align 4
  %call21 = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %17, i32 noundef %19) #18
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext %17, i32 noundef 0, i32 noundef 3841, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mux_idx)
  %cmp23.not = icmp eq i32 %call.i, %mux_idx
  br i1 %cmp23.not, label %for.cond28.preheader, label %if.end17.cleanup.sink.split_crit_edge

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

for.cond28.preheader:                             ; preds = %if.end17
  %20 = ptrtoint ptr %num_cvts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cvts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2985 = icmp sgt i32 %21, 0
  br i1 %cmp2985, label %for.body31.lr.ph, label %for.cond28.preheader.cleanup.sink.split_crit_edge

for.cond28.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

for.body31.lr.ph:                                 ; preds = %for.cond28.preheader
  %22 = ptrtoint ptr %list.i79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i79, align 4
  %24 = ptrtoint ptr %elem_size.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elem_size.i80, align 4
  br label %for.body31

for.body31:                                       ; preds = %for.inc.for.body31_crit_edge, %for.body31.lr.ph
  %cvt_idx.086 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc, %for.inc.for.body31_crit_edge ]
  %mul.i81 = mul i32 %25, %cvt_idx.086
  %add.ptr.i82 = getelementptr i8, ptr %23, i32 %mul.i81
  %assigned = getelementptr inbounds %struct.hdmi_spec_per_cvt, ptr %add.ptr.i82, i32 0, i32 1
  %26 = ptrtoint ptr %assigned to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assigned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool33.not = icmp eq i32 %27, 0
  br i1 %tobool33.not, label %do.body, label %for.inc

do.body:                                          ; preds = %for.body31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_not_share_assigned_cvt.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_not_share_assigned_cvt, %if.then39)) #18
          to label %do.end [label %if.then39], !srcloc !483

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %conv40 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_not_share_assigned_cvt.__UNIQUE_ID_ddebug261, ptr noundef %codec, ptr noundef nonnull @.str.188, i32 noundef %cvt_idx.086, i32 noundef %conv40) #18
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body
  %conv.i.i = zext i16 %17 to i32
  %shl1.i.i = shl i32 %conv.i.i, 20
  %or2.i.i = or i32 %shl1.i.i, 983296
  %call.i.i = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %codec, i32 noundef %or2.i.i, i32 noundef %cvt_idx.086) #18
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body31
  %inc = add nuw nsw i32 %cvt_idx.086, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body31_crit_edge

for.inc.for.body31_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body31

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %do.end, %for.cond28.preheader.cleanup.sink.split_crit_edge, %if.end17.cleanup.sink.split_crit_edge
  %call44 = tail call i32 @snd_hda_set_dev_select(ptr noundef %codec, i16 noundef zeroext %17, i32 noundef %call19) #18
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc47 = add nuw nsw i32 %pin_idx.088, 1
  %28 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc47, %29
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end48_crit_edge

cleanup.for.end48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end48

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end48:                                        ; preds = %cleanup.for.end48_crit_edge, %entry.for.end48_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_dev_select(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 227)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !271, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !302, !303, !304, !305, !307, !308, !309, !311, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !324, !325, !327, !329, !330, !332, !333, !335, !337, !338, !339, !341, !342, !344, !345, !346, !348, !349, !351, !352, !353, !355, !357, !359, !361, !363, !365, !367, !368, !369, !371, !373, !375, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !392, !393, !394, !395, !397, !398, !399, !400, !402, !404, !406, !408, !410, !411, !412, !413, !415, !416, !418, !419, !420, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !450, !451, !452, !454, !456, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469}
!llvm.module.flags = !{!471, !472, !473, !474, !475, !476, !477, !478}
!llvm.ident = !{!479}

!0 = !{ptr @__param_static_hdmi_pcm, !1, !"__param_static_hdmi_pcm", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_hdmi.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_static_hdmi_pcmtype243, !1, !"__UNIQUE_ID_static_hdmi_pcmtype243", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_static_hdmi_pcm244, !4, !"__UNIQUE_ID_static_hdmi_pcm244", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_hdmi.c", i32 39, i32 1}
!5 = !{ptr @__param_enable_acomp, !6, !"__param_enable_acomp", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_hdmi.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_enable_acomptype245, !6, !"__UNIQUE_ID_enable_acomptype245", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_enable_acomp246, !9, !"__UNIQUE_ID_enable_acomp246", i1 false, i1 false}
!9 = !{!"../sound/pci/hda/patch_hdmi.c", i32 43, i32 1}
!10 = !{ptr @__param_enable_silent_stream, !11, !"__param_enable_silent_stream", i1 false, i1 false}
!11 = !{!"../sound/pci/hda/patch_hdmi.c", i32 47, i32 1}
!12 = !{ptr @__UNIQUE_ID_enable_silent_streamtype247, !11, !"__UNIQUE_ID_enable_silent_streamtype247", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable_silent_stream248, !14, !"__UNIQUE_ID_enable_silent_stream248", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_hdmi.c", i32 48, i32 1}
!15 = !{ptr @__param_enable_all_pins, !16, !"__param_enable_all_pins", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_hdmi.c", i32 51, i32 1}
!17 = !{ptr @__UNIQUE_ID_enable_all_pinstype249, !16, !"__UNIQUE_ID_enable_all_pinstype249", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_enable_all_pins250, !19, !"__UNIQUE_ID_enable_all_pins250", i1 false, i1 false}
!19 = !{!"../sound/pci/hda/patch_hdmi.c", i32 52, i32 1}
!20 = !{ptr @__UNIQUE_ID_file274, !21, !"__UNIQUE_ID_file274", i1 false, i1 false}
!21 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4407, i32 1}
!22 = !{ptr @__UNIQUE_ID_license275, !21, !"__UNIQUE_ID_license275", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description276, !24, !"__UNIQUE_ID_description276", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4408, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias277, !26, !"__UNIQUE_ID_alias277", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4409, i32 1}
!27 = !{ptr @__UNIQUE_ID_alias278, !28, !"__UNIQUE_ID_alias278", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4410, i32 1}
!29 = !{ptr @__UNIQUE_ID_alias279, !30, !"__UNIQUE_ID_alias279", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4411, i32 1}
!31 = !{ptr @__initcall__kmod_snd_hda_codec_hdmi__280_4417_hdmi_driver_init6, !32, !"__initcall__kmod_snd_hda_codec_hdmi__280_4417_hdmi_driver_init6", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4417, i32 1}
!33 = !{ptr @__exitcall_hdmi_driver_exit, !32, !"__exitcall_hdmi_driver_exit", i1 false, i1 false}
!34 = !{ptr @static_hdmi_pcm, !35, !"static_hdmi_pcm", i1 false, i1 false}
!35 = !{!"../sound/pci/hda/patch_hdmi.c", i32 37, i32 13}
!36 = !{ptr @enable_all_pins, !37, !"enable_all_pins", i1 false, i1 false}
!37 = !{!"../sound/pci/hda/patch_hdmi.c", i32 50, i32 13}
!38 = !{ptr @__param_str_static_hdmi_pcm, !1, !"__param_str_static_hdmi_pcm", i1 false, i1 false}
!39 = !{ptr @__param_str_enable_acomp, !6, !"__param_str_enable_acomp", i1 false, i1 false}
!40 = !{ptr @enable_acomp, !41, !"enable_acomp", i1 false, i1 false}
!41 = !{!"../sound/pci/hda/patch_hdmi.c", i32 41, i32 13}
!42 = !{ptr @__param_str_enable_silent_stream, !11, !"__param_str_enable_silent_stream", i1 false, i1 false}
!43 = !{ptr @enable_silent_stream, !44, !"enable_silent_stream", i1 false, i1 false}
!44 = !{!"../sound/pci/hda/patch_hdmi.c", i32 45, i32 13}
!45 = !{ptr @__param_str_enable_all_pins, !16, !"__param_str_enable_all_pins", i1 false, i1 false}
!46 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hdmi_driver, !48, !"hdmi_driver", i1 false, i1 false}
!48 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4413, i32 32}
!49 = !{ptr @.str.1, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4284, i32 1}
!51 = !{ptr @.str.2, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4286, i32 1}
!53 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4287, i32 1}
!55 = !{ptr @.str.4, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4288, i32 1}
!57 = !{ptr @.str.5, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4289, i32 1}
!59 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4290, i32 1}
!61 = !{ptr @.str.7, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4291, i32 1}
!63 = !{ptr @.str.8, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4292, i32 1}
!65 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4294, i32 1}
!67 = !{ptr @.str.10, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4297, i32 1}
!69 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4298, i32 1}
!71 = !{ptr @.str.12, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4299, i32 1}
!73 = !{ptr @.str.13, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4300, i32 1}
!75 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4301, i32 1}
!77 = !{ptr @.str.15, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4302, i32 1}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4303, i32 1}
!81 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4304, i32 1}
!83 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4305, i32 1}
!85 = !{ptr @.str.19, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4306, i32 1}
!87 = !{ptr @.str.20, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4307, i32 1}
!89 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4308, i32 1}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4309, i32 1}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4310, i32 1}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4312, i32 1}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4313, i32 1}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4314, i32 1}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4315, i32 1}
!103 = !{ptr @.str.28, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4316, i32 1}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4317, i32 1}
!107 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4318, i32 1}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4319, i32 1}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4320, i32 1}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4321, i32 1}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4322, i32 1}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4323, i32 1}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4324, i32 1}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4325, i32 1}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4326, i32 1}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4327, i32 1}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4328, i32 1}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4329, i32 1}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4330, i32 1}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4331, i32 1}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4332, i32 1}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4333, i32 1}
!139 = !{ptr @.str.46, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4334, i32 1}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4335, i32 1}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4336, i32 1}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4337, i32 1}
!147 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4338, i32 1}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4339, i32 1}
!151 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4340, i32 1}
!153 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4341, i32 1}
!155 = !{ptr @.str.54, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4342, i32 1}
!157 = !{ptr @.str.55, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4343, i32 1}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4344, i32 1}
!161 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4345, i32 1}
!163 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4346, i32 1}
!165 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4347, i32 1}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4348, i32 1}
!169 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4349, i32 1}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4350, i32 1}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4351, i32 1}
!175 = !{ptr @.str.64, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4352, i32 1}
!177 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4353, i32 1}
!179 = !{ptr @.str.66, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4354, i32 1}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4355, i32 1}
!183 = !{ptr @.str.68, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4356, i32 1}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4357, i32 1}
!187 = !{ptr @.str.70, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4358, i32 1}
!189 = !{ptr @.str.71, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4359, i32 1}
!191 = !{ptr @.str.72, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4360, i32 1}
!193 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4361, i32 1}
!195 = !{ptr @.str.74, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4362, i32 1}
!197 = !{ptr @.str.75, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4363, i32 1}
!199 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4364, i32 1}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4365, i32 1}
!203 = !{ptr @.str.78, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4366, i32 1}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4368, i32 1}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4369, i32 1}
!209 = !{ptr @.str.81, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4371, i32 1}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4373, i32 1}
!213 = !{ptr @.str.83, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4374, i32 1}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4375, i32 1}
!217 = !{ptr @.str.85, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4376, i32 1}
!219 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4377, i32 1}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4379, i32 1}
!223 = !{ptr @.str.88, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4380, i32 1}
!225 = !{ptr @.str.89, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4381, i32 1}
!227 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4382, i32 1}
!229 = !{ptr @.str.91, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4383, i32 1}
!231 = !{ptr @.str.92, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4384, i32 1}
!233 = !{ptr @.str.93, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4385, i32 1}
!235 = !{ptr @.str.94, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4386, i32 1}
!237 = !{ptr @.str.95, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4388, i32 1}
!239 = !{ptr @.str.96, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4389, i32 1}
!241 = !{ptr @.str.97, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4390, i32 1}
!243 = !{ptr @.str.98, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4391, i32 1}
!245 = !{ptr @.str.99, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4392, i32 1}
!247 = !{ptr @.str.100, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4393, i32 1}
!249 = !{ptr @.str.101, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4394, i32 1}
!251 = !{ptr @.str.102, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4395, i32 1}
!253 = !{ptr @.str.103, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4396, i32 1}
!255 = !{ptr @.str.104, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4397, i32 1}
!257 = !{ptr @.str.105, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4398, i32 1}
!259 = !{ptr @.str.106, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4399, i32 1}
!261 = !{ptr @.str.107, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4400, i32 1}
!263 = !{ptr @.str.108, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4402, i32 1}
!265 = !{ptr @snd_hda_id_hdmi, !266, !"snd_hda_id_hdmi", i1 false, i1 false}
!266 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4283, i32 35}
!267 = !{ptr @.str.109, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/hda/patch_hdmi.c", i32 261, i32 2}
!269 = !{ptr @.str.110, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.111, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.112, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.113, !268, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @pin_id_to_pin_index._entry, !268, !"_entry", i1 false, i1 false}
!274 = !{ptr @pin_id_to_pin_index._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.114, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1646, i32 2}
!277 = !{ptr @.str.115, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @hdmi_present_sense_via_verbs.__UNIQUE_ID_ddebug262, !276, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!279 = !{ptr @.str.116, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1781, i32 5}
!281 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.118, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @sync_eld_via_acomp._entry, !280, !"_entry", i1 false, i1 false}
!284 = !{ptr @sync_eld_via_acomp._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.120, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1789, i32 5}
!287 = !{ptr @sync_eld_via_acomp._entry.119, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @sync_eld_via_acomp._entry_ptr.121, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.122, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1679, i32 3}
!291 = !{ptr @.str.123, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @silent_stream_enable.__UNIQUE_ID_ddebug263, !290, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!293 = !{ptr @.str.124, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1686, i32 3}
!295 = !{ptr @silent_stream_enable._entry, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @silent_stream_enable._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.125, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1695, i32 2}
!299 = !{ptr @silent_stream_enable.__UNIQUE_ID_ddebug264, !298, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!300 = !{ptr @.str.126, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/hda/patch_hdmi.c", i32 321, i32 2}
!302 = !{ptr @.str.127, !301, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @cvt_nid_to_cvt_index._entry, !301, !"_entry", i1 false, i1 false}
!304 = !{ptr @cvt_nid_to_cvt_index._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.128, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1735, i32 2}
!307 = !{ptr @.str.129, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @silent_stream_disable.__UNIQUE_ID_ddebug265, !306, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!309 = !{ptr @.str.130, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4136, i32 3}
!311 = !{ptr @.str.131, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @atihdmi_pin_hbr_setup.__UNIQUE_ID_ddebug267, !310, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!313 = !{ptr @.str.132, !310, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.133, !310, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.134, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/pci/hda/patch_hdmi.c", i32 938, i32 3}
!317 = !{ptr @.str.135, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @hdmi_setup_stream.__UNIQUE_ID_ddebug260, !316, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!319 = !{ptr @.str.136, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2701, i32 3}
!321 = !{ptr @.str.137, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.138, !320, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @generic_acomp_init._entry, !320, !"_entry", i1 false, i1 false}
!324 = !{ptr @generic_acomp_init._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!325 = distinct !{null, !326, !"atihdmi_audio_ops", i1 false, i1 false}
!326 = !{!"../sound/pci/hda/patch_hdmi.c", i32 4211, i32 51}
!327 = !{ptr @alloc_generic_hdmi.__key, !328, !"__key", i1 false, i1 false}
!328 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2547, i32 2}
!329 = !{ptr @.str.139, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @alloc_generic_hdmi.__key.140, !331, !"__key", i1 false, i1 false}
!331 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2548, i32 2}
!332 = !{ptr @.str.141, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @generic_standard_hdmi_ops, !334, !"generic_standard_hdmi_ops", i1 false, i1 false}
!334 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2528, i32 30}
!335 = !{ptr @.str.142, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/pci/hda/patch_hdmi.c", i32 695, i32 3}
!337 = !{ptr @.str.143, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug254, !336, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!339 = !{ptr @.str.144, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/pci/hda/patch_hdmi.c", i32 708, i32 3}
!341 = !{ptr @hdmi_pin_setup_infoframe.__UNIQUE_ID_ddebug255, !340, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!342 = !{ptr @.str.145, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/pci/hda/patch_hdmi.c", i32 573, i32 2}
!344 = !{ptr @.str.146, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @hdmi_debug_dip_size.__UNIQUE_ID_ddebug252, !343, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!346 = !{ptr @.str.147, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/pci/hda/patch_hdmi.c", i32 578, i32 3}
!348 = !{ptr @hdmi_debug_dip_size.__UNIQUE_ID_ddebug253, !347, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!349 = !{ptr @.str.148, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/pci/hda/patch_hdmi.c", i32 910, i32 3}
!351 = !{ptr @.str.149, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @hdmi_pin_hbr_setup.__UNIQUE_ID_ddebug259, !350, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!353 = !{ptr @generic_hdmi_patch_ops, !354, !"generic_hdmi_patch_ops", i1 false, i1 false}
!354 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2516, i32 35}
!355 = !{ptr @.str.150, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2309, i32 40}
!357 = !{ptr @.str.151, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2312, i32 21}
!359 = !{ptr @.str.152, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/pci/hda/patch_hdmi.c", i32 395, i32 10}
!361 = !{ptr @eld_bytes_ctl, !362, !"eld_bytes_ctl", i1 false, i1 false}
!362 = !{!"../sound/pci/hda/patch_hdmi.c", i32 391, i32 38}
!363 = !{ptr @.str.153, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/pci/hda/patch_hdmi.c", i32 375, i32 3}
!365 = !{ptr @.str.154, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2265, i32 2}
!367 = !{ptr @.str.155, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @generic_hdmi_build_pcms.__UNIQUE_ID_ddebug266, !366, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!369 = !{ptr @.str.156, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2271, i32 39}
!371 = !{ptr @generic_ops, !372, !"generic_ops", i1 false, i1 false}
!372 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2188, i32 33}
!373 = !{ptr @.str.157, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/pci/hda/patch_hdmi.c", i32 275, i32 2}
!375 = !{ptr @.str.158, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @hinfo_to_pcm_index._entry, !374, !"_entry", i1 false, i1 false}
!377 = !{ptr @hinfo_to_pcm_index._entry_ptr, !374, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.159, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/pci/hda/patch_hdmi.c", i32 293, i32 2}
!380 = !{ptr @.str.160, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @hinfo_to_pin_index.__UNIQUE_ID_ddebug251, !379, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!382 = !{ptr @.str.161, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/pci/hda/patch_hdmi.c", i32 852, i32 3}
!384 = !{ptr @.str.162, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @hdmi_unsol_event.__UNIQUE_ID_ddebug257, !383, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!386 = !{ptr @.str.163, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/pci/hda/patch_hdmi.c", i32 800, i32 2}
!388 = !{ptr @.str.164, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @hdmi_intrinsic_event.__UNIQUE_ID_ddebug256, !387, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!390 = !{ptr @.str.165, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/pci/hda/patch_hdmi.c", i32 815, i32 2}
!392 = !{ptr @.str.166, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @hdmi_non_intrinsic_event._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @hdmi_non_intrinsic_event._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.167, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1962, i32 3}
!397 = !{ptr @.str.168, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @hdmi_parse_codec._entry, !396, !"_entry", i1 false, i1 false}
!399 = !{ptr @hdmi_parse_codec._entry_ptr, !396, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.169, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1945, i32 2}
!402 = !{ptr @.str.170, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1947, i32 2}
!404 = !{ptr @.str.171, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1948, i32 2}
!406 = !{ptr @force_connect_list, !407, !"force_connect_list", i1 false, i1 false}
!407 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1944, i32 35}
!408 = !{ptr @.str.172, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1324, i32 3}
!410 = !{ptr @.str.173, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @hdmi_read_pin_conn._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @hdmi_read_pin_conn._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @generic_hdmi_init_per_pins.__key, !414, !"__key", i1 false, i1 false}
!414 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2403, i32 3}
!415 = !{ptr @.str.174, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @generic_hdmi_init_per_pins.__key.175, !417, !"__key", i1 false, i1 false}
!417 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2404, i32 3}
!418 = !{ptr @.str.176, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @generic_hdmi_init_per_pins.__key.177, !417, !"__key", i1 false, i1 false}
!420 = !{ptr @.str.178, !417, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @.str.179, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/pci/hda/patch_hdmi.c", i32 509, i32 31}
!423 = !{ptr @simple_pcm_playback, !424, !"simple_pcm_playback", i1 false, i1 false}
!424 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3292, i32 36}
!425 = !{ptr @hw_constraints_2_8_channels, !426, !"hw_constraints_2_8_channels", i1 false, i1 false}
!426 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3234, i32 48}
!427 = !{ptr @channels_2_8, !428, !"channels_2_8", i1 false, i1 false}
!428 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3224, i32 27}
!429 = !{ptr @hw_constraints_2_6_8_channels, !430, !"hw_constraints_2_6_8_channels", i1 false, i1 false}
!430 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3228, i32 48}
!431 = !{ptr @channels_2_6_8, !432, !"channels_2_6_8", i1 false, i1 false}
!432 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3220, i32 27}
!433 = !{ptr @simple_hdmi_patch_ops, !434, !"simple_hdmi_patch_ops", i1 false, i1 false}
!434 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3303, i32 35}
!435 = !{ptr @.str.180, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3089, i32 38}
!437 = !{ptr @nvhdmi_basic_init_7x_2ch, !438, !"nvhdmi_basic_init_7x_2ch", i1 false, i1 false}
!438 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3172, i32 30}
!439 = !{ptr @nvhdmi_pcm_playback_8ch_7x, !440, !"nvhdmi_pcm_playback_8ch_7x", i1 false, i1 false}
!440 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3505, i32 36}
!441 = !{ptr @nvhdmi_con_nids_7x, !442, !"nvhdmi_con_nids_7x", i1 false, i1 false}
!442 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3167, i32 24}
!443 = !{ptr @nvhdmi_basic_init_7x_8ch, !444, !"nvhdmi_basic_init_7x_8ch", i1 false, i1 false}
!444 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3180, i32 30}
!445 = distinct !{null, !446, !"nvhdmi_audio_ops", i1 false, i1 false}
!446 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3640, i32 51}
!447 = !{ptr @.str.181, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2915, i32 3}
!449 = !{ptr @.str.182, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @alloc_intel_hdmi._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @alloc_intel_hdmi._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = distinct !{null, !453, !"intel_audio_ops", i1 false, i1 false}
!453 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2862, i32 51}
!454 = !{ptr @.str.183, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/pci/hda/patch_hdmi.c", i32 2820, i32 2}
!456 = !{ptr @.str.184, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @intel_pin2port._entry, !455, !"_entry", i1 false, i1 false}
!458 = !{ptr @intel_pin2port._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.185, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/pci/hda/patch_hdmi.c", i32 879, i32 3}
!461 = !{ptr @.str.186, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @haswell_verify_D0.__UNIQUE_ID_ddebug258, !460, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!463 = !{ptr @.str.187, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/pci/hda/patch_hdmi.c", i32 1125, i32 5}
!465 = !{ptr @.str.188, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @intel_not_share_assigned_cvt.__UNIQUE_ID_ddebug261, !464, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!467 = !{ptr @patch_i915_icl_hdmi.map, !468, !"map", i1 false, i1 false}
!468 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3012, i32 19}
!469 = !{ptr @patch_i915_tgl_hdmi.map, !470, !"map", i1 false, i1 false}
!470 = !{!"../sound/pci/hda/patch_hdmi.c", i32 3024, i32 19}
!471 = !{i32 1, !"wchar_size", i32 2}
!472 = !{i32 1, !"min_enum_size", i32 4}
!473 = !{i32 8, !"branch-target-enforcement", i32 0}
!474 = !{i32 8, !"sign-return-address", i32 0}
!475 = !{i32 8, !"sign-return-address-all", i32 0}
!476 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!477 = !{i32 7, !"uwtable", i32 1}
!478 = !{i32 7, !"frame-pointer", i32 2}
!479 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!480 = !{i8 0, i8 2}
!481 = !{i64 2155164400}
!482 = !{!"branch_weights", i32 2000, i32 1}
!483 = !{i64 2148876547, i64 2148876552, i64 2148876565, i64 2148876609, i64 2148876643, i64 2148876664}
!484 = !{!"branch_weights", i32 1, i32 2000}
!485 = !{!"auto-init"}
