; ModuleID = '/llk/IR_all_yes/sound/pci/nm256/nm256.c_pt.bc'
source_filename = "../sound/pci/nm256/nm256.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ac97_res_table = type { i16, i16 }
%struct.initialValues = type { i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.nm256 = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, [2 x i32], i8, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, [2 x %struct.nm256_stream], ptr, ptr, ptr, ptr, %struct.spinlock }
%struct.nm256_stream = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.85, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.85 = type { i32, [28 x i8] }
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

@__UNIQUE_ID_author242 = internal constant [46 x i8] c"snd_nm256.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [42 x i8] c"snd_nm256.description=NeoMagic NM256AV/ZX\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [41 x i8] c"snd_nm256.file=sound/pci/nm256/snd-nm256\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"snd_nm256.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_nm256.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [29 x i8] c"snd_nm256.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [66 x i8] c"snd_nm256.parm=index:Index value for NeoMagic 256AV/ZX soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_nm256.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [28 x i8] c"snd_nm256.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [61 x i8] c"snd_nm256.parm=id:ID string for NeoMagic 256AV/ZX soundcard.\00", section ".modinfo", align 1
@__param_str_playback_bufsize = internal constant [27 x i8] c"snd_nm256.playback_bufsize\00", align 1
@playback_bufsize = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_playback_bufsize = internal constant %struct.kernel_param { ptr @__param_str_playback_bufsize, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @playback_bufsize } }, section "__param", align 4
@__UNIQUE_ID_playback_bufsizetype250 = internal constant [40 x i8] c"snd_nm256.parmtype=playback_bufsize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_playback_bufsize251 = internal constant [86 x i8] c"snd_nm256.parm=playback_bufsize:DAC frame size in kB for NeoMagic 256AV/ZX soundcard.\00", section ".modinfo", align 1
@__param_str_capture_bufsize = internal constant [26 x i8] c"snd_nm256.capture_bufsize\00", align 1
@capture_bufsize = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_capture_bufsize = internal constant %struct.kernel_param { ptr @__param_str_capture_bufsize, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @capture_bufsize } }, section "__param", align 4
@__UNIQUE_ID_capture_bufsizetype252 = internal constant [39 x i8] c"snd_nm256.parmtype=capture_bufsize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_capture_bufsize253 = internal constant [85 x i8] c"snd_nm256.parm=capture_bufsize:ADC frame size in kB for NeoMagic 256AV/ZX soundcard.\00", section ".modinfo", align 1
@__param_str_force_ac97 = internal constant [21 x i8] c"snd_nm256.force_ac97\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_ac97 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_ac97 = internal constant %struct.kernel_param { ptr @__param_str_force_ac97, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @force_ac97 } }, section "__param", align 4
@__UNIQUE_ID_force_ac97type254 = internal constant [35 x i8] c"snd_nm256.parmtype=force_ac97:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_ac97255 = internal constant [83 x i8] c"snd_nm256.parm=force_ac97:Force to use AC97 codec for NeoMagic 256AV/ZX soundcard.\00", section ".modinfo", align 1
@__param_str_buffer_top = internal constant [21 x i8] c"snd_nm256.buffer_top\00", align 1
@buffer_top = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_buffer_top = internal constant %struct.kernel_param { ptr @__param_str_buffer_top, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @buffer_top } }, section "__param", align 4
@__UNIQUE_ID_buffer_toptype256 = internal constant [34 x i8] c"snd_nm256.parmtype=buffer_top:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buffer_top257 = internal constant [95 x i8] c"snd_nm256.parm=buffer_top:Set the top address of audio buffer for NeoMagic 256AV/ZX soundcard.\00", section ".modinfo", align 1
@__param_str_use_cache = internal constant [20 x i8] c"snd_nm256.use_cache\00", align 1
@use_cache = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_cache = internal constant %struct.kernel_param { ptr @__param_str_use_cache, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_cache } }, section "__param", align 4
@__UNIQUE_ID_use_cachetype258 = internal constant [34 x i8] c"snd_nm256.parmtype=use_cache:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_cache259 = internal constant [72 x i8] c"snd_nm256.parm=use_cache:Enable the cache for coefficient table access.\00", section ".modinfo", align 1
@__param_str_vaio_hack = internal constant [20 x i8] c"snd_nm256.vaio_hack\00", align 1
@vaio_hack = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_vaio_hack = internal constant %struct.kernel_param { ptr @__param_str_vaio_hack, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @vaio_hack } }, section "__param", align 4
@__UNIQUE_ID_vaio_hacktype260 = internal constant [34 x i8] c"snd_nm256.parmtype=vaio_hack:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_vaio_hack261 = internal constant [68 x i8] c"snd_nm256.parm=vaio_hack:Enable workaround for Sony VAIO notebooks.\00", section ".modinfo", align 1
@__param_str_reset_workaround = internal constant [27 x i8] c"snd_nm256.reset_workaround\00", align 1
@reset_workaround = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reset_workaround = internal constant %struct.kernel_param { ptr @__param_str_reset_workaround, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @reset_workaround } }, section "__param", align 4
@__UNIQUE_ID_reset_workaroundtype262 = internal constant [41 x i8] c"snd_nm256.parmtype=reset_workaround:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_workaround263 = internal constant [79 x i8] c"snd_nm256.parm=reset_workaround:Enable AC97 RESET workaround for some laptops.\00", section ".modinfo", align 1
@__param_str_reset_workaround_2 = internal constant [29 x i8] c"snd_nm256.reset_workaround_2\00", align 1
@reset_workaround_2 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reset_workaround_2 = internal constant %struct.kernel_param { ptr @__param_str_reset_workaround_2, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @reset_workaround_2 } }, section "__param", align 4
@__UNIQUE_ID_reset_workaround_2type264 = internal constant [43 x i8] c"snd_nm256.parmtype=reset_workaround_2:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_workaround_2265 = internal constant [96 x i8] c"snd_nm256.parm=reset_workaround_2:Enable extended AC97 RESET workaround for some other laptops.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_nm256.enable\00", align 1
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype266 = internal constant [31 x i8] c"snd_nm256.parmtype=enable:bool\00", section ".modinfo", align 1
@__initcall__kmod_snd_nm256__278_1697_nm256_driver_init6 = internal global ptr @nm256_driver_init, section ".initcall6.init", align 4
@nm256_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_nm256_ids, ptr @snd_nm256_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nm256_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_nm256_driver_exit = internal global ptr @nm256_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_nm256\00", [22 x i8] zeroinitializer }, align 32
@snd_nm256_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4296, i32 32773, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4296, i32 32774, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4296, i32 32790, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nm256_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nm256_suspend, ptr @nm256_resume, ptr @nm256_suspend, ptr @nm256_resume, ptr @nm256_suspend, ptr @nm256_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nm256_quirks = internal constant { [5 x %struct.snd_pci_quirk], [48 x i8] } { [5 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4156, i16 7, i16 -1, i32 0, ptr @.str.18 }, %struct.snd_pci_quirk { i16 4173, i16 -32703, i16 -1, i32 1, ptr @.str.19 }, %struct.snd_pci_quirk { i16 4136, i16 128, i16 -1, i32 1, ptr @.str.20 }, %struct.snd_pci_quirk { i16 4136, i16 145, i16 -1, i32 2, ptr @.str.21 }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@snd_nm256_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_nm256_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/nm256/nm256.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enabled quirk for %s.\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_nm256_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1611, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"The device is on the denylist. Loading stopped\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_nm256_probe._entry_ptr = internal global ptr @snd_nm256_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NM256AV\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NM256XL+\00", [23 x i8] zeroinitializer }, align 32
@snd_nm256_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1639, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid device id 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_nm256_probe._entry_ptr.13 = internal global ptr @snd_nm256_probe._entry.10, section ".printk_index", align 4
@snd_nm256_probe.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 1, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reset_workaround activated\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_nm256_probe.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 1, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reset_workaround_2 activated\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NeoMagic %s\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s at 0x%lx & 0x%lx, irq %d\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HP omnibook 4150\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Sony PCG-F305\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dell Latitude LS\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Dell Latitude CSx\00", [46 x i8] zeroinitializer }, align 32
@snd_nm256_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_nm256_create.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->irq_mutex\00", [47 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1490, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to map control port %lx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_nm256_create\00", [47 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry_ptr = internal global ptr @snd_nm256_create._entry, section ".printk_index", align 4
@snd_nm256_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1500, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no ac97 is found!\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry_ptr.29 = internal global ptr @snd_nm256_create._entry.27, section ".printk_index", align 4
@snd_nm256_create._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 1502, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"force the driver to load by passing in the module parameter\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry_ptr.32 = internal global ptr @snd_nm256_create._entry.30, section ".printk_index", align 4
@snd_nm256_create._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 1504, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" force_ac97=1\0A\00", [17 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry_ptr.35 = internal global ptr @snd_nm256_create._entry.33, section ".printk_index", align 4
@snd_nm256_create._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.2, i32 1506, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"or try sb16, opl3sa2, or cs423x drivers instead.\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry_ptr.38 = internal global ptr @snd_nm256_create._entry.36, section ".printk_index", align 4
@snd_nm256_create._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.2, i32 1546, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mapping port 1 from 0x%x - 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry_ptr.41 = internal global ptr @snd_nm256_create._entry.39, section ".printk_index", align 4
@snd_nm256_create._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.26, ptr @.str.2, i32 1552, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to map ring buffer at %lx\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_nm256_create._entry_ptr.44 = internal global ptr @snd_nm256_create._entry.42, section ".printk_index", align 4
@snd_nm256_interrupt.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_nm256_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NM256: Got misc interrupt #1\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_nm256_interrupt.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NM256: Got misc interrupt #2\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_nm256_interrupt.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.48, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NM256: Fire in the hole! Unknown status 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.46, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_nm256_interrupt_zx\00", [41 x i8] zeroinitializer }, align 32
@snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.47, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.48, i8 1, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@snd_nm256_peek_for_sig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1357, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to scan for card signature in video RAM\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_nm256_peek_for_sig\00", [41 x i8] zeroinitializer }, align 32
@snd_nm256_peek_for_sig._entry_ptr = internal global ptr @snd_nm256_peek_for_sig._entry, section ".printk_index", align 4
@snd_nm256_peek_for_sig._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1372, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid signature found: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_nm256_peek_for_sig._entry_ptr.54 = internal global ptr @snd_nm256_peek_for_sig._entry.52, section ".printk_index", align 4
@snd_nm256_peek_for_sig._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 1379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"found card signature in video RAM: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_nm256_peek_for_sig._entry_ptr.57 = internal global ptr @snd_nm256_peek_for_sig._entry.55, section ".printk_index", align 4
@snd_nm256_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_nm256_playback_open, ptr @snd_nm256_playback_close, ptr null, ptr @snd_nm256_pcm_hw_params, ptr null, ptr @snd_nm256_pcm_prepare, ptr @snd_nm256_playback_trigger, ptr null, ptr @snd_nm256_playback_pointer, ptr null, ptr @snd_nm256_playback_silence, ptr @snd_nm256_playback_copy, ptr @snd_nm256_playback_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_nm256_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_nm256_capture_open, ptr @snd_nm256_capture_close, ptr null, ptr @snd_nm256_pcm_hw_params, ptr null, ptr @snd_nm256_pcm_prepare, ptr @snd_nm256_capture_trigger, ptr null, ptr @snd_nm256_capture_pointer, ptr null, ptr null, ptr @snd_nm256_capture_copy, ptr @snd_nm256_capture_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_nm256_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 262402, i64 6, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 2, i32 131072, i32 256, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_nm256_acquire_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 454, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_nm256_acquire_irq\00", [42 x i8] zeroinitializer }, align 32
@snd_nm256_acquire_irq._entry_ptr = internal global ptr @snd_nm256_acquire_irq._entry, section ".printk_index", align 4
@constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @samplerates, i32 8, i32 0 }, [20 x i8] zeroinitializer }, align 32
@samplerates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_nm256_load_coefficient.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_nm256_load_coefficient\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"NM256: Engine was enabled while loading coefficients!\0A\00", [41 x i8] zeroinitializer }, align 32
@coefficients = internal constant { [50528 x i8], [12608 x i8] } { [50528 x i8] c"\FF\FF/\00K\FF\A5\01\EF\FC!\05\87\F7b\11\E9E^\F9\B5\01\DE\FF\A4\FF`\00\CA\FF\0D\00\FD\FF6\006\FF\E6\01=\FC\D6\06L\F3\ED ==J\F3N\05\B1\FD\E1\00\C3\FF\05\00\02\00\FD\FF*\00\\\FF\AA\01q\FC\07\07~\F1D0D0~\F1\07\07q\FC\AA\01\\\FF*\00\FD\FF\02\00\05\00\C3\FF\E1\00\B1\FDN\05J\F3==\ED L\F3\D6\06=\FC\E6\016\FF6\00\FD\FF\0D\00\CA\FF`\00\A4\FF\DE\FF\B5\01^\F9\E9Eb\11\87\F7!\05\EF\FC\A5\01K\FF/\00\FF\FF\00\00\1E\00\84\FF\11\014\FE\8F\02\C7\FC\AE\03\F7H\AE\03\C7\FC\8F\024\FE\11\01\84\FF\1E\00\FE\FF4\00=\FF\CA\01\95\FC\EA\05\BB\F5%\17<C\8D\F6C\03\F5\FE&\00 \00\E2\FF\08\00\FD\FF0\00M\FF\C5\01L\FC&\07\A3\F1\AB,\BB3\8F\F1\CA\06\A6\FC\85\01o\FF$\00\FD\FF\03\00\FE\FF\D5\FF\BC\00\F0\FD\EC\04\D9\F3\B1>\CD\1E\C1\F3\AF\06I\FC\E4\016\FF6\00\FE\FF\16\00\A6\FF\BB\00\E9\FE8\01K\FF(\FE:H\04\0A.\FA\DF\03\8A\FD`\01e\FF'\00\00\00\FF\FF.\00P\FF\98\01\0D\FD\E0\04\14\F8\C3\0F\89FL\FA8\01%\00}\FFs\00\C2\FF\0F\00\FD\FF5\00:\FF\E3\011\FC\0F\07\84\F2)%\1A:g\F2\F6\05A\FD$\01\A1\FF\12\00\00\00\FF\FF\15\00\97\FF7\01\22\FD#\06/\F2\119{&P\F2\1B\072\FC\E1\01<\FF5\00\FD\FF\0E\00\C8\FFd\00\9B\FF\EE\FF\98\01\93\F9\10F\03\11\A7\F7\12\05\F6\FC\A2\01L\FF/\00\FF\FF\00\00&\00j\FFS\01\A6\FD\A6\03\A1\FA\DE\08vH\0C\FF\DE\FEs\01\C9\FE\CA\00\A0\FF\17\00\FE\FF6\006\FF\E1\01R\FC\93\06\10\F4x\1D\90?>\F4\AA\04\19\FE\A4\00\E2\FF\FA\FF\03\00\FD\FF&\00h\FF\93\01\92\FC\E2\06\83\F1\8C2\ED-\90\F1\1E\07W\FC\BD\01Q\FF.\00\FD\FF\07\00\E8\FF\12\00B\00\C4\FE\94\03\02\F6\89Bv\18\\\F5\12\06\84\FC\D1\01;\FF4\00\FE\FF\1D\00\8A\FF\03\01S\FES\029\FD\A9\02\F2H\B9\04T\FC\CA\02\16\FE \01\7F\FF \00\00\00\FF\FF3\00@\FF\C3\01\A7\FC\C0\05\1E\F6\D8\15\E7C \F7\EF\02'\FF\0A\00.\00\DD\FF\09\00\FD\FF1\00H\FF\CD\01C\FC*\07\BC\F1d+\E34\A3\F1\AE\06\BD\FCw\01w\FF!\00\FE\FF\02\00\03\00\CA\FF\D4\00\C8\FD*\05}\F3\CA=\22 v\F3\C8\06A\FC\E6\016\FF6\00\FD\FF\14\00\AC\FF\AC\00\08\FF\FD\00\B5\FFK\FD\F4G0\0B\BC\F9\17\04n\FDm\01`\FF)\00\00\00\FF\FF,\00T\FF\8D\01&\FD\AD\04\82\F8\87\0E\F9F\0C\FB\D4\00]\00^\FF\82\00\BD\FF\10\00\FD\FF6\008\FF\E5\013\FC\01\07\BE\F2\D6#\1F;\A5\F2\C5\05b\FD\10\01\AB\FF\0E\00\00\00\FF\FF\19\00\8E\FFI\01\04\FDM\06\00\F2\FE7\CB'!\F2#\074\FC\DD\01?\FF4\00\FD\FF\0C\00\CE\FFV\00\B9\FF\B8\FF\F7\01\E2\F8\8DEF\12<\F7C\05\DF\FC\AC\01H\FF0\00\FF\FF\00\00$\00p\FFF\01\C3\FDm\03\14\FB\BE\07\A6H\F8\FFp\FE\AE\01\AA\FE\D9\00\9A\FF\19\00\FE\FF6\007\FF\DE\01]\FCt\06c\F4#\1Cf@\AA\F4e\04D\FE\8B\00\EE\FF\F5\FF\04\00\FD\FF)\00a\FF\9F\01\80\FC\F7\06}\F1Z1,/\83\F1\13\07d\FC\B3\01W\FF,\00\FD\FF\06\00\ED\FF\05\00]\00\95\FE\E2\03\7F\F5\CCA\C7\19\FF\F47\06u\FC\D6\019\FF5\00\FE\FF\1B\00\90\FF\F4\00r\FE\18\02\AA\FD\AB\01\DFH\CA\05\E1\FB\05\03\F7\FD.\01y\FF!\00\00\00\FF\FF2\00C\FF\BB\01\BA\FC\95\05\83\F6\8C\14\87D\BB\F7\98\02Z\FF\EE\FF<\00\D8\FF\0A\00\FD\FF2\00D\FF\D3\01<\FC*\07\DC\F1\1A*\066\BE\F1\8E\06\D5\FCg\01\7F\FF\1E\00\FE\FF\01\00\07\00\BE\FF\EA\00\A2\FDe\05(\F3\DB<x!0\F3\DF\06:\FC\E6\017\FF6\00\FD\FF\13\00\B2\FF\9D\00'\FF\C3\00\1F\00v\FC\A3G`\0CJ\F9N\04S\FDy\01\\\FF*\00\00\00\00\00+\00X\FF\82\01?\FDx\04\F2\F8P\0D^G\D5\FBo\00\96\00@\FF\91\00\B7\FF\12\00\FD\FF6\007\FF\E6\016\FC\EF\06\FC\F2\81\22\1C<\EC\F2\90\05\85\FD\FB\00\B6\FF\0A\00\01\00\FE\FF\1C\00\85\FF[\01\E9\FCs\06\D8\F1\E56\19)\F8\F1)\077\FC\D8\01B\FF3\00\FD\FF\0B\00\D3\FFG\00\D7\FF\82\FFS\029\F8\FDD\8D\13\D3\F6r\05\CA\FC\B5\01E\FF1\00\FF\FF\00\00#\00u\FF9\01\E0\FD3\03\87\FB\A2\06\CBH\EA\00\01\FE\E9\01\8A\FE\E8\00\95\FF\1A\00\FE\FF5\008\FF\DA\01j\FCS\06\BA\F4\CE\1A2A\1F\F5\1D\04q\FEq\00\FB\FF\F0\FF\05\00\FD\FF+\00[\FF\AB\01o\FC\08\07~\F1!0g0}\F1\05\07s\FC\A8\01\\\FF*\00\FD\FF\05\00\F2\FF\F8\FFw\00g\FE-\04\04\F5\07A\1B\1B\A6\F4Z\06g\FC\DB\018\FF6\00\FE\FF\1A\00\96\FF\E5\00\91\FE\DC\01\1A\FE\B3\00\C3H\E1\06n\FB@\03\DA\FD<\01t\FF#\00\00\00\FF\FF1\00F\FF\B3\01\CF\FCg\05\EA\F6D\13\1EE^\F8?\02\8E\FF\D0\FFJ\00\D2\FF\0B\00\FD\FF3\00A\FF\D9\016\FC(\07\01\F2\CE(#7\E0\F1k\06\EF\FCW\01\87\FF\1B\00\FE\FF\01\00\0B\00\B4\FF\00\01~\FD\9C\05\DC\F2\E4;\CD\22\EE\F2\F3\065\FC\E6\017\FF6\00\FD\FF\11\00\B8\FF\8E\00F\FF\8A\00\86\00\A7\FBHG\95\0D\D9\F8\84\049\FD\85\01W\FF+\00\00\00\00\00*\00]\FFv\01Y\FDB\04c\F9\1C\0C\B6G\A4\FC\07\00\D0\00 \FF\A0\00\B1\FF\13\00\FD\FF6\006\FF\E6\01;\FC\DA\06?\F3,!\11=:\F3X\05\AA\FD\E5\00\C1\FF\06\00\01\00\FE\FF\1F\00}\FFk\01\CF\FC\96\06\B7\F1\C65d*\D4\F1+\07=\FC\D2\01E\FF2\00\FD\FF\0A\00\D9\FF9\00\F4\FFN\FF\AC\02\98\F7eD\D6\14l\F6\9F\05\B6\FC\BD\01B\FF2\00\FF\FF\00\00!\00z\FF+\01\FE\FD\F8\02\FB\FB\8D\05\E5H\E3\01\91\FD%\02k\FE\F7\00\8F\FF\1C\00\FE\FF5\00:\FF\D5\01x\FC/\06\13\F5|\19\F7A\9B\F5\D1\03\9F\FEW\00\08\00\EC\FF\06\00\FD\FF-\00U\FF\B5\01a\FC\16\07\85\F1\E6.\9E1}\F1\F3\06\84\FC\9D\01c\FF(\00\FD\FF\04\00\F6\FF\EB\FF\91\00;\FEu\04\92\F46@n\1CP\F4{\06[\FC\DF\017\FF6\00\FE\FF\18\00\9C\FF\D6\00\B1\FE\A1\01\89\FE\C3\FF\9CH\FD\07\FA\FAz\03\BC\FDI\01n\FF$\00\00\00\FF\FF0\00I\FF\AA\01\E4\FC8\05T\F7\FE\11\AAE\09\F9\E2\01\C4\FF\B3\FFY\00\CD\FF\0D\00\FD\FF4\00>\FF\DE\013\FC\22\07+\F2\80';8\0A\F2D\06\0B\FDE\01\90\FF\18\00\FF\FF\00\00\0F\00\A9\FF\15\01[\FD\D0\05\97\F2\E6:!$\B1\F2\04\073\FC\E5\019\FF6\00\FD\FF\10\00\BE\FF\7F\00e\FFQ\00\EB\00\E1\FA\E1F\CD\0Ej\F8\B8\04 \FD\90\01S\FF-\00\FF\FF\00\00(\00b\FFj\01t\FD\0A\04\D5\F9\ED\0A\03H|\FD\9E\FF\0A\01\01\FF\AF\00\AB\FF\14\00\FD\FF6\006\FF\E5\01B\FC\C3\06\87\F3\D7\1F\FE=\91\F3\1D\05\D1\FD\CE\00\CC\FF\02\00\02\00\FE\FF\22\00u\FFz\01\B8\FC\B4\06\9E\F1\A24\AD+\B6\F1)\07E\FC\CB\01I\FF1\00\FD\FF\09\00\DE\FF+\00\11\00\1B\FF\02\03\FE\F6\C3C\22\16\07\F6\CA\05\A3\FC\C5\01?\FF3\00\FF\FF\00\00 \00\80\FF\1C\01\1C\FE\BD\02n\FC}\04\F3H\E2\02\1F\FD`\02L\FE\06\01\89\FF\1D\00\FE\FF4\00<\FF\CF\01\88\FC\09\06q\F5+\18\B2B \F6\83\03\CF\FE<\00\15\00\E6\FF\07\00\FD\FF.\00P\FF\BF\01T\FC \07\94\F1\A6-\D02\85\F1\DD\06\96\FC\90\01i\FF&\00\FD\FF\03\00\FB\FF\DF\FF\A9\00\10\FE\B9\04'\F4^?\C3\1D\FE\F3\99\06P\FC\E2\016\FF6\00\FE\FF\17\00\A2\FF\C7\00\D0\FEe\01\F6\FE\D9\FEjH\1F\09\87\FA\B3\03\A0\FDV\01i\FF&\00\00\00\FF\FF/\00M\FF\A0\01\FB\FC\07\05\BF\F7\BB\10+F\BB\F9\83\01\FA\FF\95\FFh\00\C7\FF\0E\00\FD\FF5\00<\FF\E1\011\FC\19\07[\F20&K9;\F2\1A\06)\FD3\01\99\FF\15\00\FF\FF\00\00\13\00\9F\FF(\01:\FD\00\06Z\F2\DF9s%y\F2\12\071\FC\E3\01;\FF5\00\FD\FF\0F\00\C4\FFp\00\84\FF\19\00M\01\22\FApF\0A\10\FC\F7\EB\04\08\FD\9A\01O\FF.\00\FF\FF\00\00'\00f\FF^\01\90\FD\D2\03G\FA\C3\09HHZ\FE3\FFE\01\E2\FE\BE\00\A5\FF\16\00\FE\FF6\006\FF\E3\01K\FC\A9\06\D2\F3\81\1E\E4>\EF\F3\DE\04\F9\FD\B7\00\D8\FF\FD\FF\03\00\FD\FF$\00m\FF\88\01\A2\FC\D0\06\8C\F1x3\F2,\9E\F1$\07N\FC\C3\01N\FF/\00\FD\FF\08\00\E4\FF\1D\00-\00\EA\FEV\03m\F6\17Cp\17\A6\F5\F3\05\91\FC\CC\01=\FF4\00\FE\FF\1E\00\86\FF\0E\01;\FE\82\02\E0\FCs\03\F6H\E9\03\AD\FC\9C\02-\FE\14\01\83\FF\1F\00\00\00\FF\FF3\00>\FF\C9\01\99\FC\E1\05\D1\F5\DC\16eC\AD\F61\03\00\FF \00#\00\E1\FF\08\00\FD\FF0\00L\FF\C7\01J\FC'\07\A8\F1b,\FD3\93\F1\C4\06\AB\FC\82\01q\FF#\00\FE\FF\02\00\FF\FF\D3\FF\C1\00\E7\FD\FA\04\C4\F3~>\19\1F\B0\F3\B5\06G\FC\E4\016\FF6\00\FD\FF\15\00\A8\FF\B8\00\F0\FE+\01c\FF\F6\FD,HG\0A\14\FA\EB\03\84\FDc\01d\FF'\00\00\00\FF\FF-\00Q\FF\96\01\13\FD\D5\04,\F8}\0F\A3Fv\FA\22\012\00v\FFv\00\C1\FF\0F\00\FD\FF6\00:\FF\E4\012\FC\0C\07\91\F2\DD$T:t\F2\EB\05I\FD \01\A3\FF\11\00\00\00\FF\FF\16\00\95\FF;\01\1B\FD-\06$\F2\D38\C6&E\F2\1D\072\FC\E0\01=\FF5\00\FD\FF\0D\00\C9\FFa\00\A2\FF\E2\FF\AE\01k\F9\F2EJ\11\8F\F7\1D\05\F1\FC\A4\01K\FF/\00\FF\FF\00\00%\00l\FFQ\01\AC\FD\9A\03\BA\FA\9E\08\81H@\FF\C6\FE\80\01\C2\FE\CE\00\9F\FF\17\00\FE\FF6\007\FF\E1\01U\FC\8C\06\22\F4,\1D\C0?U\F4\9B\04#\FE\9F\00\E4\FF\F9\FF\04\00\FD\FF'\00f\FF\96\01\8E\FC\E7\06\81\F1H24.\8D\F1\1C\07Z\FC\BB\01S\FF.\00\FD\FF\07\00\E9\FF\0F\00H\00\B9\FE\A6\03\E4\F5`B\C1\18G\F5\1A\06\81\FC\D2\01;\FF5\00\FE\FF\1C\00\8B\FF\FF\00Z\FEF\02R\FDp\02\EDH\F5\04;\FC\D7\02\0F\FE#\01~\FF \00\00\00\FF\FF3\00@\FF\C1\01\AB\FC\B7\054\F6\8E\15\0BDB\F7\DC\022\FF\04\001\00\DC\FF\09\00\FD\FF1\00G\FF\CE\01A\FC*\07\C2\F1\1B+%5\A8\F1\A7\06\C2\FCt\01x\FF \00\FE\FF\02\00\04\00\C7\FF\D9\00\BF\FD8\05i\F3\96=o f\F3\CE\06?\FC\E6\016\FF6\00\FD\FF\14\00\AE\FF\A9\00\0F\FF\F0\00\CD\FF\1B\FD\E4Gs\0B\A2\F9#\04h\FDp\01_\FF)\00\00\00\FF\FF,\00U\FF\8B\01+\FD\A1\04\9B\F8B\0E\0FG8\FB\BE\00j\00X\FF\85\00\BB\FF\10\00\FD\FF6\008\FF\E6\014\FC\FD\06\CB\F2\8A#X;\B4\F2\BA\05j\FD\0B\01\AE\FF\0D\00\00\00\FF\FF\19\00\8C\FFM\01\FE\FCV\06\F7\F1\BF7\15(\18\F2%\074\FC\DC\01?\FF4\00\FD\FF\0C\00\CF\FFR\00\C0\FF\AC\FF\0C\02\BC\F8mE\8E\12$\F7M\05\DB\FC\AE\01H\FF0\00\FF\FF\00\00$\00q\FFC\01\C9\FD`\03.\FB~\07\AFH-\00X\FE\BB\01\A3\FE\DD\00\99\FF\19\00\FE\FF6\007\FF\DD\01`\FCm\06v\F4\D8\1B\95@\C3\F4V\04N\FE\85\00\F1\FF\F4\FF\04\00\FD\FF)\00`\FF\A2\01|\FC\FB\06|\F1\151s/\81\F1\10\07g\FC\B1\01X\FF,\00\FD\FF\06\00\EE\FF\02\00c\00\8A\FE\F3\03c\F5\A1A\12\1A\EB\F4?\06r\FC\D7\019\FF5\00\FE\FF\1B\00\91\FF\F1\00y\FE\0A\02\C3\FDs\01\DBH\07\06\C7\FB\12\03\F1\FD1\01x\FF\22\00\00\00\FF\FF2\00C\FF\BA\01\BF\FC\8B\05\99\F6C\14\A9D\DE\F7\85\02e\FF\E7\FF?\00\D6\FF\0A\00\FD\FF2\00D\FF\D5\01:\FC*\07\E3\F1\D1)F6\C5\F1\87\06\DA\FCd\01\80\FF\1E\00\FE\FF\01\00\08\00\BC\FF\EF\00\9A\FDr\05\16\F3\A5<\C4!!\F3\E4\069\FC\E6\017\FF6\00\FD\FF\12\00\B3\FF\99\00.\FF\B6\006\00G\FC\90G\A4\0C1\F9Z\04N\FD|\01[\FF*\00\00\00\00\00+\00Y\FF\80\01E\FDl\04\0B\F9\0B\0DsG\02\FCX\00\A3\009\FF\94\00\B5\FF\12\00\FD\FF6\007\FF\E6\017\FC\EB\06\0B\F35\22R<\FD\F2\84\05\8D\FD\F6\00\B8\FF\09\00\01\00\FE\FF\1D\00\83\FF^\01\E3\FC{\06\D0\F1\A56b)\EF\F1)\079\FC\D7\01B\FF3\00\FD\FF\0B\00\D5\FFD\00\DD\FFw\FFg\02\14\F8\DCD\D5\13\BC\F6|\05\C5\FC\B7\01D\FF1\00\FF\FF\00\00\22\00v\FF5\01\E7\FD&\03\A1\FBd\06\D2H!\01\E8\FD\F7\01\83\FE\EC\00\93\FF\1A\00\FE\FF5\009\FF\D9\01m\FCK\06\CD\F4\83\1A_A:\F5\0C\04{\FEl\00\FE\FF\EF\FF\05\00\FD\FF+\00Z\FF\AD\01l\FC\0C\07\7F\F1\DC/\AD0}\F1\01\07v\FC\A6\01^\FF*\00\FD\FF\05\00\F3\FF\F5\FF}\00]\FE>\04\EA\F4\D9@f\1B\93\F4b\06d\FC\DC\018\FF6\00\FE\FF\19\00\97\FF\E2\00\98\FE\CF\013\FE}\00\BBH\1F\07T\FBL\03\D3\FD?\01s\FF#\00\00\00\FF\FF1\00F\FF\B1\01\D3\FC]\05\01\F7\FB\12?E\83\F8*\02\9A\FF\CA\FFN\00\D1\FF\0C\00\FD\FF4\00@\FF\DA\015\FC'\07\09\F2\85(c7\E9\F1c\06\F5\FCS\01\89\FF\1A\00\FE\FF\00\00\0C\00\B1\FF\04\01v\FD\A8\05\CC\F2\AB;\18#\E0\F2\F7\065\FC\E6\018\FF6\00\FD\FF\11\00\B9\FF\8A\00M\FF}\00\9C\00{\FB1G\D9\0D\C0\F8\8F\044\FD\87\01V\FF,\00\00\00\00\00)\00^\FFt\01_\FD5\04|\F9\D8\0B\C9G\D4\FC\F0\FF\DD\00\19\FF\A4\00\AF\FF\13\00\FD\FF6\006\FF\E6\01=\FC\D5\06O\F3\E0 E=M\F3K\05\B3\FD\E0\00\C3\FF\05\00\02\00\FE\FF \00{\FFn\01\CA\FC\9D\06\B1\F1\865\AE*\CD\F1+\07?\FC\D1\01F\FF2\00\FD\FF\0A\00\DA\FF6\00\FA\FFC\FF\BF\02u\F7BD \15U\F6\A9\05\B2\FC\BF\01A\FF2\00\FF\FF\00\00!\00|\FF'\01\05\FE\EB\02\14\FCP\05\EAH\1B\02x\FD2\02d\FE\FA\00\8D\FF\1C\00\FE\FF5\00:\FF\D4\01|\FC'\06(\F51\19!B\B8\F5\C0\03\AA\FEQ\00\0B\00\EA\FF\06\00\FD\FF-\00T\FF\B7\01^\FC\19\07\88\F1\9F.\E31~\F1\EE\06\88\FC\9A\01d\FF(\00\FD\FF\04\00\F7\FF\E8\FF\96\001\FE\84\04y\F4\07@\BA\1C>\F4\82\06X\FC\E0\017\FF6\00\FE\FF\18\00\9D\FF\D3\00\B8\FE\93\01\A1\FE\8E\FF\92H=\08\E1\FA\86\03\B6\FDL\01m\FF%\00\00\00\FF\FF0\00J\FF\A8\01\E9\FC-\05k\F7\B6\11\C8E0\F9\CD\01\D0\FF\AC\FF\\\00\CB\FF\0D\00\FD\FF4\00>\FF\DF\013\FC \075\F26'x8\14\F2;\06\11\FDA\01\92\FF\17\00\FF\FF\00\00\10\00\A7\FF\19\01S\FD\DB\05\88\F2\AD:m$\A4\F2\08\072\FC\E5\019\FF6\00\FD\FF\10\00\BF\FF{\00l\FFD\00\01\01\B6\FA\C8F\13\0FQ\F8\C4\04\1B\FD\92\01R\FF-\00\FF\FF\00\00(\00c\FFg\01z\FD\FE\03\EE\F9\AA\0A\16H\AC\FD\86\FF\17\01\FA\FE\B3\00\AA\FF\15\00\FD\FF6\006\FF\E5\01D\FC\BD\06\97\F3\8A\1F1>\A5\F3\0F\05\DA\FD\C9\00\CF\FF\01\00\02\00\FE\FF\22\00s\FF}\01\B3\FC\BB\06\9A\F1`4\F5+\B0\F1(\07G\FC\CA\01J\FF0\00\FD\FF\09\00\DF\FF(\00\17\00\10\FF\15\03\DD\F6\9ECl\16\F1\F5\D3\05\9F\FC\C6\01?\FF3\00\FF\FF\00\00\1F\00\81\FF\19\01#\FE\B0\02\87\FCA\04\F4H\1C\03\06\FDn\02E\FE\09\01\88\FF\1D\00\FE\FF4\00<\FF\CE\01\8C\FC\00\06\86\F5\E0\17\DBB?\F6q\03\D9\FE6\00\18\00\E5\FF\07\00\FD\FF/\00O\FF\C1\01R\FC\22\07\98\F1^-\133\87\F1\D8\06\9B\FC\8D\01k\FF%\00\FD\FF\03\00\FC\FF\DC\FF\AF\00\07\FE\C8\04\10\F4-?\0F\1E\ED\F3\A0\06N\FC\E3\016\FF6\00\FE\FF\16\00\A3\FF\C3\00\D7\FEX\01\0F\FF\A6\FE]Ha\09n\FA\C0\03\99\FDY\01h\FF&\00\00\00\FF\FF.\00N\FF\9E\01\00\FD\FC\04\D7\F7u\10HF\E4\F9n\01\06\00\8E\FFk\00\C6\FF\0E\00\FD\FF5\00;\FF\E2\011\FC\16\07g\F2\E5%\879G\F2\10\060\FD/\01\9C\FF\14\00\FF\FF\FF\FF\13\00\9D\FF-\013\FD\0B\06M\F2\A59\BF%m\F2\15\071\FC\E2\01;\FF5\00\FD\FF\0E\00\C5\FFm\00\8B\FF\0D\00c\01\F9\F9UFQ\10\E3\F7\F7\04\03\FD\9D\01N\FF.\00\FF\FF\00\00&\00h\FF[\01\96\FD\C6\03a\FA\81\09WH\8D\FE\1B\FFR\01\DB\FE\C2\00\A4\FF\16\00\FE\FF6\006\FF\E3\01M\FC\A3\06\E4\F36\1E\16?\05\F4\CF\04\02\FE\B2\00\DB\FF\FC\FF\03\00\FD\FF%\00l\FF\8B\01\9D\FC\D5\06\89\F153:-\9A\F1#\07Q\FC\C2\01O\FF/\00\FD\FF\07\00\E5\FF\1A\003\00\DF\FEh\03N\F6\EEB\BB\17\90\F5\FC\05\8E\FC\CD\01<\FF4\00\FE\FF\1E\00\87\FF\0B\01B\FEt\02\F9\FC9\03\F5H$\04\94\FC\A9\02'\FE\18\01\82\FF\1F\00\00\00\FF\FF3\00>\FF\C7\01\9D\FC\D8\05\E7\F5\91\16\89C\CD\F6\1E\03\0B\FF\1A\00&\00\E0\FF\08\00\FD\FF0\00K\FF\C9\01H\FC(\07\AD\F1\19,?4\97\F1\BE\06\B0\FC\7F\01r\FF#\00\FE\FF\02\00\00\00\D0\FF\C7\00\DE\FD\08\05\B0\F3J>d\1F\A0\F3\BB\06E\FC\E5\016\FF6\00\FD\FF\15\00\A9\FF\B4\00\F7\FE\1D\01z\FF\C5\FD\1DH\89\0A\FB\F9\F8\03}\FDf\01c\FF(\00\00\00\FF\FF-\00R\FF\93\01\18\FD\C9\04E\F86\0F\BBF\A1\FA\0C\01>\00p\FFz\00\C0\FF\0F\00\FD\FF6\009\FF\E4\012\FC\09\07\9D\F2\92$\8F:\82\F2\E1\05P\FD\1B\01\A6\FF\10\00\00\00\FF\FF\17\00\93\FF?\01\15\FD6\06\19\F2\978\11';\F2\1F\072\FC\DF\01=\FF4\00\FD\FF\0D\00\CB\FF^\00\A9\FF\D6\FF\C3\01C\F9\D7E\92\11w\F7(\05\EC\FC\A7\01J\FF/\00\FF\FF\00\00%\00m\FFN\01\B3\FD\8D\03\D4\FA]\08\8DHt\FF\AE\FE\8D\01\BB\FE\D1\00\9E\FF\18\00\FE\FF6\007\FF\E0\01W\FC\85\064\F4\E0\1C\F0?m\F4\8C\04,\FE\99\00\E7\FF\F8\FF\04\00\FD\FF'\00e\FF\98\01\8A\FC\EC\06\7F\F1\042{.\8A\F1\1A\07]\FC\B8\01T\FF-\00\FD\FF\06\00\EA\FF\0C\00N\00\AF\FE\B8\03\C7\F58B\0C\192\F5#\06}\FC\D3\01:\FF5\00\FE\FF\1C\00\8D\FF\FC\00a\FE9\02k\FD7\02\EBH1\05!\FC\E4\02\08\FE&\01|\FF!\00\00\00\FF\FF2\00A\FF\C0\01\AF\FC\AD\05J\F6D\15/Dd\F7\C9\02=\FF\FE\FF4\00\DB\FF\09\00\FD\FF2\00G\FF\D0\01@\FC*\07\CA\F1\D1*e5\AE\F1\A0\06\C7\FCp\01z\FF \00\FE\FF\02\00\05\00\C5\FF\DE\00\B7\FDE\05V\F3a=\BA V\F3\D3\06>\FC\E6\016\FF6\00\FD\FF\13\00\AF\FF\A5\00\16\FF\E3\00\E4\FF\EB\FC\D2G\B6\0B\89\F9/\04b\FDr\01^\FF)\00\00\00\FF\FF,\00V\FF\88\011\FD\95\04\B4\F8\FC\0D&Gd\FB\A7\00w\00Q\FF\89\00\BA\FF\11\00\FD\FF6\008\FF\E6\014\FC\F9\06\D9\F2?#\90;\C4\F2\AE\05r\FD\07\01\B0\FF\0C\00\00\00\FF\FF\1A\00\8A\FFQ\01\F8\FC^\06\ED\F1\827`(\0E\F2&\075\FC\DB\01@\FF4\00\FD\FF\0C\00\D0\FFO\00\C7\FF\A0\FF \02\96\F8NE\D7\12\0D\F7X\05\D6\FC\B0\01G\FF0\00\FF\FF\00\00#\00r\FF@\01\D0\FDS\03G\FB?\07\B8Hb\00?\FE\C8\01\9C\FE\E0\00\98\FF\19\00\FE\FF6\008\FF\DC\01c\FCf\06\89\F4\8C\1B\C3@\DD\F4F\04X\FE\80\00\F4\FF\F3\FF\05\00\FD\FF)\00_\FF\A5\01x\FC\FF\06}\F1\CF0\B8/\80\F1\0D\07j\FC\AE\01Y\FF+\00\FD\FF\05\00\EF\FF\FF\FFi\00\80\FE\04\04H\F5tA]\1A\D7\F4G\06o\FC\D8\019\FF5\00\FE\FF\1B\00\93\FF\ED\00\80\FE\FD\01\DC\FD<\01\D5HE\06\AE\FB\1F\03\EA\FD4\01w\FF\22\00\00\00\FF\FF1\00D\FF\B8\01\C3\FC\81\05\B0\F6\FA\13\CCD\02\F8q\02q\FF\E1\FFB\00\D5\FF\0B\00\FD\FF3\00C\FF\D6\019\FC*\07\EB\F1\87)\856\CC\F1\7F\06\E0\FC`\01\82\FF\1D\00\FE\FF\01\00\09\00\BA\FF\F4\00\91\FD~\05\05\F3n<\10\22\12\F3\E9\068\FC\E6\017\FF6\00\FD\FF\12\00\B5\FF\96\005\FF\A9\00M\00\19\FC|G\E8\0C\18\F9f\04H\FD~\01Z\FF+\00\00\00\00\00*\00Z\FF}\01K\FD`\04$\F9\C6\0C\86G0\FCA\00\B0\002\FF\98\00\B4\FF\12\00\FD\FF6\007\FF\E6\018\FC\E6\06\19\F3\EA!\8A<\0E\F3x\05\96\FD\F1\00\BB\FF\08\00\01\00\FE\FF\1D\00\81\FFb\01\DD\FC\83\06\C9\F1f6\AC)\E7\F1*\07:\FC\D5\01C\FF3\00\FD\FF\0B\00\D6\FFA\00\E4\FFk\FF{\02\F0\F7\BAD\1E\14\A5\F6\86\05\C1\FC\B9\01D\FF2\00\FF\FF\00\00\22\00w\FF2\01\ED\FD\19\03\BB\FB&\06\D7HX\01\CF\FD\04\02}\FE\EF\00\92\FF\1B\00\FE\FF5\009\FF\D8\01p\FCC\06\E1\F48\1A\8CAU\F5\FC\03\85\FEf\00\01\00\EE\FF\06\00\FD\FF+\00Y\FF\B0\01i\FC\0F\07\80\F1\96/\F20|\F1\FD\06z\FC\A3\01_\FF)\00\FD\FF\05\00\F4\FF\F2\FF\83\00S\FEN\04\D0\F4\AB@\B2\1B\7F\F4i\06b\FC\DD\018\FF6\00\FE\FF\19\00\98\FF\DE\00\9F\FE\C2\01K\FEH\00\B3H^\07;\FBY\03\CD\FDB\01q\FF$\00\00\00\FF\FF0\00G\FF\AF\01\D8\FCR\05\19\F7\B2\12\\E\A9\F8\16\02\A6\FF\C3\FFQ\00\D0\FF\0C\00\FD\FF4\00@\FF\DB\015\FC%\07\13\F2:(\A07\F2\F1Z\06\FB\FCO\01\8B\FF\1A\00\FF\FF\00\00\0D\00\AF\FF\09\01n\FD\B4\05\BC\F2s;d#\D2\F2\FB\064\FC\E6\018\FF6\00\FD\FF\11\00\BB\FF\87\00T\FFp\00\B3\00N\FB\1AG\1F\0E\A8\F8\9B\04.\FD\8A\01U\FF,\00\FF\FF\00\00)\00_\FFq\01e\FD)\04\96\F9\95\0B\DCG\03\FD\D9\FF\EA\00\12\FF\A7\00\AE\FF\14\00\FD\FF6\006\FF\E6\01>\FC\D0\06^\F3\94 {=`\F3>\05\BB\FD\DB\00\C6\FF\04\00\02\00\FE\FF \00y\FFr\01\C4\FC\A4\06\AB\F1F5\F7*\C6\F1*\07@\FC\CF\01G\FF1\00\FD\FF\09\00\DB\FF3\00\01\008\FF\D3\02S\F7\1FDi\15?\F6\B2\05\AD\FC\C1\01A\FF2\00\FF\FF\00\00 \00}\FF$\01\0C\FE\DE\02.\FC\13\05\ECHT\02^\FD?\02]\FE\FE\00\8C\FF\1C\00\FE\FF5\00;\FF\D3\01\7F\FC\1F\06<\F5\E6\18MB\D5\F5\AF\03\B4\FEK\00\0E\00\E9\FF\07\00\FD\FF-\00S\FF\BA\01[\FC\1B\07\8B\F1X.&2\80\F1\EA\06\8C\FC\97\01f\FF'\00\FD\FF\04\00\F8\FF\E6\FF\9C\00'\FE\94\04a\F4\D7?\06\1D+\F4\89\06V\FC\E0\017\FF6\00\FE\FF\17\00\9E\FF\CF\00\BF\FE\86\01\BA\FEZ\FF\86H}\08\C7\FA\93\03\B0\FDO\01l\FF%\00\00\00\FF\FF/\00K\FF\A6\01\EE\FC#\05\83\F7n\11\E5EW\F9\B8\01\DC\FF\A5\FF_\00\CA\FF\0D\00\FD\FF5\00=\FF\DF\012\FC\1E\07@\F2\EB&\B58\1F\F22\06\18\FD=\01\94\FF\16\00\FF\FF\00\00\11\00\A4\FF\1D\01L\FD\E6\05{\F2q:\B8$\97\F2\0B\072\FC\E4\019\FF6\00\FD\FF\0F\00\C0\FFx\00s\FF8\00\17\01\8B\FA\AFFY\0F9\F8\CF\04\15\FD\95\01Q\FF-\00\FF\FF\00\00(\00d\FFe\01\81\FD\F2\03\08\FAh\0A%H\DE\FDn\FF$\01\F3\FE\B6\00\A8\FF\15\00\FD\FF6\006\FF\E5\01F\FC\B8\06\A8\F3?\1Fd>\BA\F3\01\05\E2\FD\C4\00\D2\FF\00\00\02\00\FE\FF#\00q\FF\81\01\AE\FC\C1\06\95\F1\1E4>,\AB\F1'\07I\FC\C8\01K\FF0\00\FD\FF\08\00\E1\FF%\00\1D\00\05\FF(\03\BD\F6wC\B6\16\DC\F5\DD\05\9B\FC\C8\01>\FF3\00\FF\FF\00\00\1F\00\83\FF\16\01*\FE\A3\02\A1\FC\06\04\F5HV\03\ED\FC{\02>\FE\0C\01\86\FF\1E\00\FE\FF4\00=\FF\CC\01\8F\FC\F8\05\9B\F5\96\17\02C^\F6_\03\E4\FE0\00\1B\00\E4\FF\08\00\FD\FF/\00N\FF\C3\01O\FC$\07\9C\F1\17-W3\8A\F1\D3\06\9F\FC\8A\01m\FF%\00\FD\FF\03\00\FD\FF\D9\FF\B4\00\FD\FD\D7\04\FA\F3\FC>[\1E\DB\F3\A6\06L\FC\E3\016\FF6\00\FE\FF\16\00\A4\FF\C0\00\DE\FEK\01'\FFs\FEOH\A2\09T\FA\CC\03\93\FD\\\01g\FF'\00\00\00\FF\FF.\00N\FF\9C\01\05\FD\F1\04\F0\F7-\10aF\0D\FAX\01\13\00\87\FFn\00\C4\FF\0E\00\FD\FF5\00;\FF\E3\011\FC\14\07s\F2\99%\C29T\F2\05\067\FD+\01\9E\FF\13\00\FF\FF\FF\FF\14\00\9B\FF1\01,\FD\15\06A\F2j9\0A&a\F2\17\071\FC\E2\01;\FF5\00\FD\FF\0E\00\C6\FFi\00\91\FF\00\00x\01\D0\F99F\98\10\CB\F7\02\05\FE\FC\9F\01M\FF.\00\FF\FF\00\00&\00i\FFX\01\9D\FD\B9\03{\FA@\09cH\BF\FE\03\FF_\01\D4\FE\C5\00\A2\FF\16\00\FE\FF6\006\FF\E2\01O\FC\9C\06\F5\F3\EA\1DG?\1B\F4\C1\04\0B\FE\AC\00\DE\FF\FB\FF\03\00\FD\FF%\00j\FF\8E\01\99\FC\DB\06\86\F1\F22\82-\96\F1!\07S\FC\C0\01P\FF.\00\FD\FF\07\00\E6\FF\17\009\00\D4\FEz\03/\F6\C7B\06\18{\F5\05\06\8A\FC\CF\01<\FF4\00\FE\FF\1D\00\88\FF\07\01I\FEg\02\13\FD\FF\02\F4H_\04z\FC\B6\02 \FE\1B\01\81\FF\1F\00\00\00\FF\FF3\00?\FF\C6\01\A1\FC\CF\05\FC\F5G\16\B0C\EE\F6\0C\03\16\FF\14\00)\00\DF\FF\09\00\FD\FF0\00J\FF\CA\01F\FC)\07\B3\F1\D1+\814\9C\F1\B8\06\B5\FC|\01t\FF\22\00\FE\FF\02\00\01\00\CE\FF\CC\00\D5\FD\16\05\9B\F3\18>\B1\1F\8F\F3\C0\06C\FC\E5\016\FF6\00\FD\FF\15\00\AA\FF\B1\00\FE\FE\10\01\92\FF\94\FD\0DH\CB\0A\E2\F9\04\04w\FDi\01b\FF(\00\00\00\FF\FF-\00R\FF\91\01\1E\FD\BE\04^\F8\F0\0E\D3F\CB\FA\F6\00K\00i\FF}\00\BE\FF\10\00\FD\FF6\009\FF\E5\012\FC\06\07\AA\F2F$\C8:\90\F2\D6\05W\FD\17\01\A8\FF\0F\00\00\00\FF\FF\18\00\91\FFC\01\0E\FD@\06\0F\F2[8\\'0\F2!\073\FC\DE\01>\FF4\00\FD\FF\0D\00\CC\FFZ\00\AF\FF\CA\FF\D8\01\1C\F9\B8E\DA\11`\F73\05\E7\FC\A9\01J\FF0\00\FF\FF\00\00%\00n\FFK\01\B9\FD\80\03\EE\FA\1D\08\98H\A8\FF\95\FE\9A\01\B4\FE\D4\00\9C\FF\18\00\FE\FF6\007\FF\DF\01Z\FC~\06G\F4\94\1C\1F@\85\F4}\046\FE\93\00\EA\FF\F7\FF\04\00\FD\FF(\00c\FF\9B\01\86\FC\F1\06~\F1\C01\C2.\87\F1\17\07_\FC\B6\01U\FF-\00\FD\FF\06\00\EB\FF\09\00T\00\A4\FE\C9\03\AA\F5\0CBV\19\1E\F5+\06z\FC\D4\01:\FF5\00\FE\FF\1C\00\8E\FF\F9\00h\FE,\02\84\FD\FF\01\E6Hn\05\07\FC\F1\02\01\FE)\01{\FF!\00\00\00\FF\FF2\00B\FF\BE\01\B4\FC\A4\05a\F6\FB\14SD\86\F7\B6\02I\FF\F7\FF7\00\D9\FF\0A\00\FD\FF2\00F\FF\D1\01>\FC+\07\D0\F1\89*\A65\B4\F1\99\06\CD\FCm\01|\FF\1F\00\FE\FF\01\00\06\00\C2\FF\E3\00\AE\FDR\05D\F3*=\06!G\F3\D8\06<\FC\E6\016\FF6\00\FD\FF\13\00\B0\FF\A2\00\1D\FF\D6\00\FC\FF\BC\FC\C0G\FA\0Bp\F9<\04\\\FDu\01]\FF*\00\00\00\00\00+\00W\FF\86\016\FD\89\04\CD\F8\B7\0D=G\91\FB\91\00\83\00J\FF\8C\00\B9\FF\11\00\FD\FF6\008\FF\E6\015\FC\F5\06\E7\F2\F2\22\C7;\D4\F2\A2\05z\FD\02\01\B2\FF\0B\00\01\00\FE\FF\1B\00\88\FFU\01\F2\FCg\06\E4\F1D7\AA(\05\F2'\076\FC\DA\01A\FF3\00\FD\FF\0B\00\D2\FFL\00\CD\FF\94\FF4\02p\F8.E \13\F6\F6b\05\D1\FC\B2\01F\FF1\00\FF\FF\00\00#\00s\FF=\01\D6\FDF\03a\FB\00\07\BFH\98\00&\FE\D5\01\95\FE\E3\00\96\FF\1A\00\FE\FF6\008\FF\DB\01f\FC^\06\9C\F4@\1B\EF@\F7\F45\04b\FEz\00\F7\FF\F2\FF\05\00\FD\FF*\00]\FF\A7\01u\FC\03\07}\F1\8A0\FF/~\F1\0A\07n\FC\AC\01Z\FF+\00\FD\FF\05\00\F0\FF\FC\FFn\00v\FE\15\04,\F5IA\A9\1A\C3\F4O\06l\FC\D9\018\FF5\00\FE\FF\1A\00\94\FF\EA\00\87\FE\F0\01\F5\FD\05\01\CEH\83\06\94\FB,\03\E4\FD7\01v\FF\22\00\00\00\FF\FF1\00E\FF\B6\01\C8\FCw\05\C7\F6\B1\13\EDD&\F8]\02}\FF\DA\FFF\00\D4\FF\0B\00\FD\FF3\00B\FF\D7\018\FC)\07\F3\F1>)\C66\D4\F1w\06\E6\FC\\\01\84\FF\1C\00\FE\FF\01\00\0A\00\B7\FF\F9\00\89\FD\8A\05\F4\F27<[\22\03\F3\ED\067\FC\E6\017\FF6\00\FD\FF\12\00\B6\FF\93\00<\FF\9D\00c\00\EB\FBiG-\0D\FF\F8r\04B\FD\81\01Y\FF+\00\00\00\00\00*\00[\FFz\01P\FDT\04=\F9\82\0C\9AG^\FC*\00\BD\00+\FF\9B\00\B3\FF\12\00\FD\FF6\007\FF\E6\01:\FC\E2\06(\F3\9E!\C0<\1F\F3l\05\9E\FD\ED\00\BD\FF\07\00\01\00\FE\FF\1E\00\80\FFf\01\D8\FC\8B\06\C1\F1'6\F6)\DF\F1*\07;\FC\D4\01D\FF2\00\FD\FF\0A\00\D7\FF>\00\EA\FF`\FF\8F\02\CD\F7\99Dh\14\8E\F6\90\05\BC\FC\BA\01C\FF2\00\FF\FF\00\00\22\00y\FF/\01\F4\FD\0C\03\D4\FB\E9\05\DEH\8F\01\B6\FD\11\02v\FE\F2\00\91\FF\1B\00\FE\FF5\009\FF\D7\01s\FC;\06\F5\F4\ED\19\B7Aq\F5\EB\03\90\FE`\00\04\00\ED\FF\06\00\FD\FF,\00W\FF\B2\01e\FC\12\07\82\F1P/81|\F1\F9\06~\FC\A1\01a\FF)\00\FD\FF\04\00\F5\FF\EF\FF\88\00I\FE]\04\B7\F4}@\FD\1Bl\F4p\06_\FC\DE\017\FF6\00\FE\FF\19\00\9A\FF\DB\00\A6\FE\B4\01d\FE\12\00\AAH\9E\07!\FBf\03\C6\FDE\01p\FF$\00\00\00\FF\FF0\00H\FF\AD\01\DD\FCH\050\F7k\12}E\CF\F8\01\02\B2\FF\BD\FFT\00\CE\FF\0C\00\FD\FF4\00?\FF\DC\014\FC$\07\1C\F2\F0'\DF7\FB\F1Q\06\01\FDK\01\8D\FF\19\00\FF\FF\00\00\0E\00\AC\FF\0E\01f\FD\BF\05\AD\F2;;\B0#\C4\F2\FF\063\FC\E5\018\FF6\00\FD\FF\10\00\BC\FF\84\00[\FFd\00\C9\00\22\FB\02Gd\0E\8F\F8\A7\04)\FD\8C\01T\FF,\00\FF\FF\00\00)\00`\FFn\01k\FD\1D\04\AF\F9Q\0B\ECG3\FD\C1\FF\F7\00\0C\FF\AA\00\AD\FF\14\00\FD\FF6\006\FF\E6\01@\FC\CB\06n\F3I \B0=s\F31\05\C4\FD\D6\00\C8\FF\03\00\02\00\FE\FF!\00w\FFu\01\BF\FC\AB\06\A6\F1\055@+\BF\F1*\07B\FC\CE\01H\FF1\00\FD\FF\09\00\DC\FF/\00\07\00,\FF\E6\021\F7\FAC\B3\15)\F6\BC\05\A9\FC\C2\01@\FF3\00\FF\FF\00\00 \00~\FF!\01\12\FE\D1\02G\FC\D7\04\F0H\8D\02E\FDM\02V\FE\01\01\8B\FF\1D\00\FE\FF4\00;\FF\D1\01\83\FC\16\06Q\F5\9B\18uB\F3\F5\9D\03\BF\FEE\00\11\00\E8\FF\07\00\FD\FF.\00R\FF\BC\01X\FC\1D\07\8E\F1\11.k2\81\F1\E5\06\90\FC\94\01g\FF&\00\FD\FF\04\00\F9\FF\E3\FF\A1\00\1E\FE\A3\04I\F4\A8?R\1D\19\F4\90\06S\FC\E1\016\FF6\00\FE\FF\17\00\A0\FF\CC\00\C6\FEy\01\D2\FE&\FF|H\BE\08\AE\FA\A0\03\A9\FDR\01k\FF%\00\00\00\FF\FF/\00L\FF\A3\01\F3\FC\18\05\9B\F7'\11\02F\7F\F9\A3\01\E8\FF\9F\FFc\00\C9\FF\0D\00\FD\FF5\00<\FF\E0\012\FC\1C\07K\F2\A0&\F28*\F2(\06\1F\FD9\01\96\FF\16\00\FF\FF\00\00\11\00\A2\FF\22\01E\FD\F1\05m\F28:\03%\8B\F2\0E\072\FC\E4\01:\FF6\00\FD\FF\0F\00\C2\FFu\00z\FF+\00-\01a\FA\97F\A0\0F \F8\DA\04\10\FD\97\01P\FF.\00\FF\FF\00\00'\00e\FFb\01\87\FD\E5\03!\FA%\0A3H\0F\FEW\FF1\01\EC\FE\B9\00\A7\FF\15\00\FE\FF6\006\FF\E4\01H\FC\B2\06\B9\F3\F3\1E\98>\CF\F3\F3\04\EB\FD\BF\00\D4\FF\FF\FF\03\00\FE\FF#\00p\FF\84\01\A9\FC\C7\06\91\F1\DC3\87,\A5\F1&\07K\FC\C6\01L\FF0\00\FD\FF\08\00\E2\FF!\00#\00\FA\FE:\03\9D\F6PC\00\17\C6\F5\E6\05\97\FC\C9\01>\FF4\00\FE\FF\00\00\1E\00\84\FF\13\011\FE\95\02\BA\FC\CB\03\F7H\91\03\D3\FC\88\028\FE\10\01\85\FF\1E\00\FE\FF4\00=\FF\CB\01\93\FC\EF\05\B0\F5K\17*C}\F6M\03\EF\FE*\00\1E\00\E3\FF\08\00\FD\FF/\00M\FF\C4\01M\FC%\07\A1\F1\CE,\993\8E\F1\CD\06\A4\FC\87\01n\FF$\00\FD\FF\03\00\FE\FF\D7\FF\BA\00\F4\FD\E5\04\E4\F3\CA>\A7\1E\CA\F3\AC\06J\FC\E4\016\FF6\00\FE\FF\16\00\A6\FF\BD\00\E5\FE>\01?\FFA\FEAH\E4\09;\FA\D9\03\8D\FD_\01f\FF'\00\00\00\FF\FF.\00O\FF\99\01\0B\FD\E6\04\08\F8\E7\0F|F7\FAB\01\1F\00\81\FFq\00\C3\FF\0F\00\FD\FF5\00:\FF\E3\011\FC\11\07\7F\F2N%\FD9`\F2\FB\05>\FD&\01\A0\FF\12\00\00\00\FF\FF\15\00\98\FF5\01%\FD\1E\065\F2.9U&V\F2\1A\071\FC\E1\01<\FF5\00\FD\FF\0E\00\C7\FFf\00\98\FF\F4\FF\8E\01\A7\F9\1DF\DF\10\B3\F7\0D\05\F8\FC\A1\01L\FF/\00\FF\FF\00\00&\00j\FFU\01\A3\FD\AD\03\94\FA\FF\08pH\F3\FE\EA\FEl\01\CD\FE\C9\00\A1\FF\17\00\FE\FF6\006\FF\E2\01Q\FC\96\06\07\F4\9E\1Dw?2\F4\B2\04\15\FE\A7\00\E0\FF\FA\FF\03\00\FD\FF&\00i\FF\91\01\94\FC\E0\06\84\F1\AF2\CA-\92\F1\1F\07V\FC\BE\01Q\FF.\00\FD\FF\07\00\E7\FF\14\00?\00\C9\FE\8C\03\11\F6\9EBP\18f\F5\0D\06\86\FC\D0\01;\FF4\00\FE\FF\1D\00\8A\FF\04\01P\FEZ\02,\FD\C6\02\F2H\9B\04a\FC\C3\02\19\FE\1E\01\7F\FF \00\00\00\FF\FF3\00@\FF\C4\01\A5\FC\C5\05\13\F6\FD\15\D4C\0F\F7\F9\02!\FF\0D\00,\00\DE\FF\09\00\FD\FF1\00I\FF\CC\01D\FC)\07\B9\F1\89+\C34\A0\F1\B1\06\BA\FCy\01v\FF!\00\FE\FF\02\00\02\00\CB\FF\D1\00\CC\FD$\05\87\F3\E4=\FD\1F\7F\F3\C6\06A\FC\E5\016\FF6\00\FD\FF\14\00\AC\FF\AE\00\05\FF\03\01\AA\FFc\FD\FDG\0E\0B\C8\F9\11\04q\FDl\01a\FF(\00\00\00\FF\FF-\00S\FF\8F\01#\FD\B2\04v\F8\AA\0E\EDF\F7\FA\DF\00W\00b\FF\80\00\BD\FF\10\00\FD\FF6\009\FF\E5\013\FC\03\07\B7\F2\FC#\03;\9E\F2\CB\05_\FD\12\01\AA\FF\0E\00\00\00\FF\FF\18\00\8F\FFG\01\08\FDI\06\05\F2\1D8\A6'&\F2#\073\FC\DD\01>\FF4\00\FD\FF\0C\00\CD\FFW\00\B6\FF\BE\FF\ED\01\F5\F8\9BE\22\12H\F7=\05\E2\FC\AB\01I\FF0\00\FF\FF\00\00$\00o\FFH\01\C0\FDs\03\07\FB\DD\07\A1H\DD\FF}\FE\A7\01\AD\FE\D8\00\9B\FF\18\00\FE\FF6\007\FF\DF\01\\\FCx\06Z\F4I\1CN@\9E\F4m\04?\FE\8E\00\ED\FF\F6\FF\04\00\FD\FF(\00b\FF\9E\01\82\FC\F5\06}\F1{1\09/\84\F1\15\07b\FC\B4\01V\FF,\00\FD\FF\06\00\EC\FF\06\00Z\00\9A\FE\DA\03\8D\F5\E1A\A1\19\09\F53\06w\FC\D6\01:\FF5\00\FE\FF\1B\00\8F\FF\F5\00o\FE\1E\02\9D\FD\C7\01\E1H\AB\05\EE\FB\FE\02\FB\FD,\01z\FF!\00\00\00\FF\FF2\00B\FF\BC\01\B8\FC\9A\05w\F6\B1\14wD\A9\F7\A2\02T\FF\F1\FF:\00\D8\FF\0A\00\FD\FF2\00E\FF\D3\01<\FC*\07\D8\F1?*\E65\BB\F1\92\06\D2\FCi\01~\FF\1F\00\FE\FF\01\00\07\00\C0\FF\E8\00\A6\FD_\051\F3\F6<R!7\F3\DD\06;\FC\E6\016\FF6\00\FD\FF\13\00\B1\FF\9F\00$\FF\C9\00\13\00\8D\FC\AEG>\0CV\F9H\04V\FDx\01\\\FF*\00\00\00\00\00+\00X\FF\83\01<\FD~\04\E6\F8r\0DRG\BE\FBz\00\90\00C\FF\8F\00\B7\FF\11\00\FD\FF6\007\FF\E6\016\FC\F1\06\F5\F2\A7\22\FF;\E4\F2\96\05\81\FD\FD\00\B5\FF\0B\00\01\00\FE\FF\1C\00\86\FFY\01\EC\FCo\06\DC\F1\047\F3(\FC\F1(\077\FC\D8\01A\FF3\00\FD\FF\0B\00\D3\FFI\00\D4\FF\88\FFI\02K\F8\0DEh\13\DF\F6l\05\CC\FC\B4\01E\FF1\00\FF\FF\00\00#\00t\FF:\01\DD\FD9\03{\FB\C1\06\C7H\CF\00\0D\FE\E3\01\8E\FE\E7\00\95\FF\1A\00\FE\FF6\008\FF\DA\01i\FCW\06\AF\F4\F5\1A\1DA\11\F5%\04l\FEt\00\F9\FF\F1\FF\05\00\FD\FF*\00\\\FF\AA\01q\FC\07\07~\F1D0D0~\F1\07\07q\FC\AA\01\\\FF*\00\FD\FF\05\00\F1\FF\F9\FFt\00l\FE%\04\11\F5\1DA\F5\1A\AF\F4W\06i\FC\DA\018\FF6\00\FE\FF\1A\00\95\FF\E7\00\8E\FE\E3\01\0D\FE\CF\00\C7H\C1\06{\FB9\03\DD\FD:\01t\FF#\00\00\00\FF\FF1\00E\FF\B4\01\CC\FCl\05\DF\F6h\13\0DEK\F8I\02\88\FF\D4\FFI\00\D3\FF\0B\00\FD\FF3\00A\FF\D8\017\FC(\07\FC\F1\F3(\047\DC\F1o\06\EC\FCY\01\86\FF\1C\00\FE\FF\01\00\0B\00\B5\FF\FD\00\81\FD\96\05\E4\F2\FF;\A7\22\F5\F2\F1\066\FC\E6\017\FF6\00\FD\FF\11\00\B7\FF\8F\00C\FF\90\00z\00\BE\FBRGr\0D\E6\F8~\04<\FD\83\01X\FF+\00\00\00\00\00*\00\\\FFx\01V\FDH\04V\F9>\0C\AEG\8D\FC\13\00\C9\00$\FF\9F\00\B1\FF\13\00\FD\FF6\006\FF\E6\01;\FC\DD\067\F3R!\F6<1\F3_\05\A6\FD\E8\00\C0\FF\07\00\01\00\FE\FF\1F\00~\FFi\01\D2\FC\92\06\BB\F1\E65?*\D8\F1*\07<\FC\D3\01E\FF2\00\FD\FF\0A\00\D8\FF:\00\F1\FFT\FF\A2\02\A9\F7wD\B1\14w\F6\9A\05\B8\FC\BC\01B\FF2\00\FF\FF\00\00!\00z\FF,\01\FB\FD\FE\02\EE\FB\AB\05\E1H\C7\01\9D\FD\1E\02o\FE\F5\00\8F\FF\1B\00\FE\FF5\00:\FF\D6\01w\FC3\06\09\F5\A1\19\E1A\8D\F5\DA\03\9A\FEZ\00\06\00\EC\FF\06\00\FD\FF,\00V\FF\B4\01b\FC\15\07\84\F1\09/{1}\F1\F5\06\82\FC\9E\01b\FF(\00\FD\FF\04\00\F6\FF\ED\FF\8E\00?\FEm\04\9E\F4N@I\1CZ\F4x\06\\\FC\DF\017\FF6\00\FE\FF\18\00\9B\FF\D8\00\AD\FE\A7\01}\FE\DD\FF\A1H\DD\07\07\FBs\03\C0\FDH\01o\FF$\00\00\00\FF\FF0\00I\FF\AB\01\E2\FC=\05H\F7\22\12\9BE\F5\F8\ED\01\BE\FF\B6\FFW\00\CD\FF\0C\00\FD\FF4\00>\FF\DD\013\FC#\07&\F2\A6'\1D8\05\F2I\06\08\FDG\01\8F\FF\18\00\FF\FF\00\00\0E\00\AA\FF\12\01_\FD\CB\05\9E\F2\03;\FC#\B7\F2\03\073\FC\E5\019\FF6\00\FD\FF\10\00\BD\FF\80\00b\FFW\00\DF\00\F7\FA\EDF\AA\0Ev\F8\B2\04#\FD\8F\01S\FF-\00\FF\FF\00\00(\00a\FFl\01q\FD\11\04\C8\F9\0E\0B\FDGc\FD\AA\FF\03\01\05\FF\AE\00\AC\FF\14\00\FD\FF6\006\FF\E5\01A\FC\C6\06\7F\F3\FD\1F\E4=\87\F3$\05\CC\FD\D1\00\CB\FF\02\00\02\00\FE\FF!\00v\FFy\01\BA\FC\B1\06\A0\F1\C34\89+\B9\F1)\07D\FC\CC\01I\FF1\00\FD\FF\09\00\DE\FF,\00\0D\00!\FF\F9\02\0F\F7\D4C\FD\15\13\F6\C5\05\A5\FC\C4\01@\FF3\00\FF\FF\00\00 \00\7F\FF\1E\01\19\FE\C3\02a\FC\9B\04\F2H\C6\02,\FDZ\02P\FE\04\01\8A\FF\1D\00\FE\FF4\00;\FF\D0\01\86\FC\0D\06f\F5P\18\9EB\11\F6\8C\03\C9\FE?\00\14\00\E7\FF\07\00\FD\FF.\00Q\FF\BE\01V\FC\1F\07\92\F1\CA-\AF2\84\F1\E0\06\94\FC\91\01i\FF&\00\FD\FF\03\00\FA\FF\E0\FF\A7\00\15\FE\B2\042\F4w?\9E\1D\07\F4\96\06Q\FC\E2\016\FF6\00\FE\FF\17\00\A1\FF\C9\00\CD\FEl\01\EA\FE\F3\FEpH\FF\08\94\FA\AD\03\A3\FDU\01j\FF&\00\00\00\FF\FF/\00L\FF\A1\01\F8\FC\0D\05\B3\F7\DF\10\1DF\A7\F9\8E\01\F4\FF\98\FFf\00\C7\FF\0E\00\FD\FF5\00<\FF\E1\011\FC\1A\07V\F2U&.95\F2\1E\06%\FD5\01\98\FF\15\00\FF\FF\00\00\12\00\A0\FF&\01>\FD\FB\05`\F2\FD9N%\7F\F2\11\071\FC\E3\01:\FF5\00\FD\FF\0F\00\C3\FFq\00\81\FF\1F\00B\017\FA|F\E7\0F\08\F8\E6\04\0B\FD\99\01O\FF.\00\FF\FF\00\00'\00f\FF_\01\8D\FD\D9\03;\FA\E4\09AHA\FE?\FF>\01\E5\FE\BD\00\A6\FF\16\00\FE\FF6\006\FF\E4\01J\FC\AC\06\CA\F3\A7\1E\CA>\E4\F3\E5\04\F4\FD\BA\00\D7\FF\FE\FF\03\00\FD\FF$\00n\FF\87\01\A4\FC\CD\06\8E\F1\993\CE,\A1\F1%\07M\FC\C4\01M\FF/\00\FD\FF\08\00\E3\FF\1E\00*\00\EF\FEM\03}\F6*CK\17\B0\F5\EF\05\93\FC\CB\01=\FF4\00\FE\FF\1E\00\85\FF\10\018\FE\88\02\D3\FC\91\03\F7H\CB\03\BA\FC\95\021\FE\13\01\84\FF\1E\00\00\00\FE\FF4\00>\FF\C9\01\97\FC\E6\05\C6\F5\00\17PC\9D\F6:\03\FA\FE#\00!\00\E2\FF\08\00\FD\FF0\00L\FF\C6\01K\FC&\07\A5\F1\87,\DC3\91\F1\C7\06\A9\FC\84\01p\FF#\00\FE\FF\03\00\FF\FF\D4\FF\BF\00\EB\FD\F3\04\CF\F3\98>\F3\1E\B9\F3\B2\06H\FC\E4\016\FF6\00\FE\FF\15\00\A7\FF\B9\00\EC\FE1\01W\FF\0F\FE3H%\0A!\FA\E5\03\87\FDb\01e\FF'\00\00\00\FF\FF.\00P\FF\97\01\10\FD\DA\04 \F8\A0\0F\97Fa\FA-\01+\00z\FFu\00\C2\FF\0F\00\FD\FF6\00:\FF\E4\012\FC\0E\07\8B\F2\03%8:m\F2\F1\05E\FD\22\01\A2\FF\11\00\00\00\FF\FF\16\00\96\FF9\01\1F\FD(\06*\F2\F28\A0&K\F2\1C\072\FC\E0\01<\FF5\00\FD\FF\0D\00\C9\FFc\00\9F\FF\E8\FF\A3\01\7F\F9\02F'\11\9B\F7\18\05\F3\FC\A3\01L\FF/\00\FF\FF\00\00%\00k\FFR\01\A9\FD\A0\03\AE\FA\BE\08|H&\FF\D2\FEy\01\C6\FE\CC\00\A0\FF\17\00\FE\FF6\006\FF\E1\01S\FC\90\06\19\F4R\1D\A8?I\F4\A3\04\1E\FE\A1\00\E3\FF\F9\FF\04\00\FD\FF&\00g\FF\94\01\90\FC\E5\06\81\F1k2\11.\8E\F1\1D\07X\FC\BC\01R\FF.\00\FD\FF\07\00\E8\FF\11\00E\00\BF\FE\9D\03\F3\F5uB\9B\18Q\F5\16\06\83\FC\D1\01;\FF4\00\FE\FF\1D\00\8B\FF\01\01V\FEM\02E\FD\8D\02\F0H\D7\04G\FC\D1\02\12\FE!\01~\FF \00\00\00\FF\FF3\00@\FF\C2\01\A9\FC\BC\05)\F6\B3\15\FAC1\F7\E6\02,\FF\07\00/\00\DC\FF\09\00\FD\FF1\00H\FF\CE\01B\FC*\07\BF\F1@+\055\A6\F1\AB\06\BF\FCu\01w\FF!\00\FE\FF\02\00\03\00\C8\FF\D6\00\C4\FD1\05s\F3\B0=I n\F3\CB\06@\FC\E6\016\FF6\00\FD\FF\14\00\AD\FF\AA\00\0C\FF\F7\00\C1\FF3\FD\ECGQ\0B\AF\F9\1D\04k\FDn\01`\FF)\00\00\00\FF\FF,\00T\FF\8C\01)\FD\A7\04\8F\F8d\0E\02G\22\FB\C9\00d\00[\FF\84\00\BC\FF\10\00\FD\FF6\008\FF\E5\013\FC\FF\06\C4\F2\B0#;;\AD\F2\BF\05f\FD\0E\01\AC\FF\0E\00\00\00\FF\FF\19\00\8D\FFK\01\01\FDQ\06\FB\F1\DF7\F0'\1C\F2$\074\FC\DC\01?\FF4\00\FD\FF\0C\00\CE\FFT\00\BD\FF\B2\FF\01\02\CF\F8}Ek\120\F7H\05\DD\FC\AD\01H\FF0\00\FF\FF\00\00$\00p\FFE\01\C6\FDf\03!\FB\9E\07\AAH\12\00d\FE\B4\01\A6\FE\DB\00\9A\FF\19\00\FE\FF6\007\FF\DE\01_\FCp\06l\F4\FD\1B}@\B7\F4]\04I\FE\88\00\EF\FF\F5\FF\04\00\FD\FF)\00a\FF\A1\01~\FC\F9\06|\F181P/\82\F1\12\07e\FC\B2\01W\FF,\00\FD\FF\06\00\ED\FF\04\00`\00\90\FE\EB\03q\F5\B7A\ED\19\F5\F4;\06s\FC\D7\019\FF5\00\FE\FF\1B\00\91\FF\F2\00v\FE\11\02\B6\FD\8F\01\DEH\E9\05\D4\FB\0C\03\F4\FD/\01y\FF\22\00\00\00\FF\FF2\00C\FF\BA\01\BC\FC\90\05\8E\F6h\14\99D\CD\F7\8F\02`\FF\EA\FF>\00\D7\FF\0A\00\FD\FF2\00D\FF\D4\01;\FC*\07\DF\F1\F6)'6\C1\F1\8B\06\D8\FCf\01\80\FF\1E\00\FE\FF\01\00\07\00\BD\FF\ED\00\9E\FDl\05\1F\F3\C0<\9E!(\F3\E2\06:\FC\E6\017\FF6\00\FD\FF\12\00\B3\FF\9B\00+\FF\BD\00*\00^\FC\9AG\82\0C=\F9T\04P\FDz\01[\FF*\00\00\00\00\00+\00Y\FF\81\01B\FDr\04\FF\F8-\0DiG\EB\FBc\00\9D\00<\FF\93\00\B6\FF\12\00\FD\FF6\007\FF\E6\017\FC\ED\06\03\F3[\227<\F4\F2\8A\05\89\FD\F9\00\B7\FF\0A\00\01\00\FE\FF\1C\00\84\FF\\\01\E6\FCw\06\D4\F1\C66>)\F3\F1)\078\FC\D7\01B\FF3\00\FD\FF\0B\00\D4\FFF\00\DA\FF}\FF]\02&\F8\EDD\B1\13\C7\F6w\05\C8\FC\B6\01E\FF1\00\FF\FF\00\00\22\00v\FF7\01\E4\FD,\03\94\FB\83\06\CEH\05\01\F5\FD\F0\01\87\FE\EA\00\94\FF\1A\00\FE\FF5\008\FF\D9\01l\FCO\06\C3\F4\A9\1AIA,\F5\15\04v\FEn\00\FC\FF\F0\FF\05\00\FD\FF+\00Z\FF\AC\01n\FC\0A\07~\F1\FF/\8A0}\F1\03\07u\FC\A7\01]\FF*\00\FD\FF\05\00\F2\FF\F7\FFz\00b\FE5\04\F7\F4\EF@@\1B\9C\F4^\06f\FC\DB\018\FF6\00\FE\FF\1A\00\96\FF\E3\00\95\FE\D5\01&\FE\98\00\BFH\00\07a\FBF\03\D6\FD=\01s\FF#\00\00\00\FF\FF1\00F\FF\B2\01\D1\FCb\05\F6\F6 \13.Ep\F84\02\94\FF\CD\FFL\00\D2\FF\0B\00\FD\FF3\00A\FF\DA\016\FC'\07\05\F2\AA(D7\E4\F1g\06\F2\FCU\01\88\FF\1B\00\FE\FF\01\00\0B\00\B2\FF\02\01z\FD\A2\05\D4\F2\C7;\F2\22\E7\F2\F5\065\FC\E6\018\FF6\00\FD\FF\11\00\B9\FF\8C\00J\FF\83\00\91\00\91\FB=G\B7\0D\CD\F8\89\046\FD\86\01W\FF+\00\00\00\00\00*\00]\FFu\01\\\FD<\04p\F9\FA\0B\C0G\BC\FC\FC\FF\D6\00\1D\FF\A2\00\B0\FF\13\00\FD\FF6\006\FF\E6\01<\FC\D8\06G\F3\06!*=D\F3R\05\AE\FD\E3\00\C2\FF\06\00\01\00\FE\FF\1F\00|\FFm\01\CD\FC\99\06\B4\F1\A65\89*\D0\F1+\07>\FC\D1\01F\FF2\00\FD\FF\0A\00\D9\FF7\00\F7\FFI\FF\B6\02\86\F7SD\FB\14a\F6\A4\05\B4\FC\BE\01B\FF2\00\FF\FF\00\00!\00{\FF)\01\01\FE\F1\02\07\FCn\05\E6H\FF\01\84\FD,\02h\FE\F9\00\8E\FF\1C\00\FE\FF5\00:\FF\D4\01z\FC+\06\1E\F5V\19\0CB\AA\F5\C9\03\A4\FET\00\09\00\EB\FF\06\00\FD\FF-\00U\FF\B6\01_\FC\17\07\87\F1\C2.\C01~\F1\F1\06\86\FC\9B\01c\FF(\00\FD\FF\04\00\F7\FF\EA\FF\93\006\FE}\04\85\F4\1F@\94\1CG\F4~\06Z\FC\DF\017\FF6\00\FE\FF\18\00\9C\FF\D4\00\B4\FE\9A\01\95\FE\A8\FF\98H\1D\08\EE\FA\80\03\B9\FDK\01n\FF%\00\00\00\FF\FF0\00J\FF\A9\01\E7\FC3\05`\F7\DA\11\B8E\1C\F9\D8\01\CA\FF\AF\FFZ\00\CC\FF\0D\00\FD\FF4\00>\FF\DE\013\FC!\070\F2\\'[8\0F\F2@\06\0E\FDC\01\91\FF\18\00\FF\FF\00\00\0F\00\A8\FF\17\01W\FD\D6\05\90\F2\C8:F$\AA\F2\06\072\FC\E5\019\FF6\00\FD\FF\10\00\BE\FF}\00i\FFK\00\F6\00\CB\FA\D3F\F0\0E^\F8\BE\04\1E\FD\91\01R\FF-\00\FF\FF\00\00(\00b\FFi\01w\FD\04\04\E2\F9\CB\0A\0DH\94\FD\92\FF\10\01\FE\FE\B1\00\AA\FF\15\00\FD\FF6\006\FF\E5\01C\FC\C0\06\8F\F3\B1\1F\18>\9B\F3\16\05\D5\FD\CC\00\CE\FF\01\00\02\00\FE\FF\22\00t\FF|\01\B5\FC\B8\06\9C\F1\814\D1+\B3\F1)\07F\FC\CA\01J\FF0\00\FD\FF\09\00\DF\FF)\00\14\00\16\FF\0C\03\EE\F6\B0CG\16\FC\F5\CF\05\A1\FC\C6\01?\FF3\00\FF\FF\00\00\1F\00\81\FF\1B\01 \FE\B6\02z\FC_\04\F4H\FF\02\13\FDg\02I\FE\07\01\88\FF\1D\00\FE\FF4\00<\FF\CF\01\8A\FC\05\06{\F5\06\18\C7B/\F6z\03\D4\FE9\00\17\00\E6\FF\07\00\FD\FF.\00P\FF\C0\01S\FC!\07\96\F1\82-\F22\86\F1\DB\06\99\FC\8E\01j\FF%\00\FD\FF\03\00\FB\FF\DE\FF\AC\00\0B\FE\C1\04\1B\F4G?\EA\1D\F5\F3\9C\06O\FC\E2\016\FF6\00\FE\FF\16\00\A2\FF\C5\00\D4\FE_\01\03\FF\BF\FEcH@\09{\FA\B9\03\9D\FDX\01i\FF&\00\00\00\FF\FF.\00M\FF\9F\01\FE\FC\02\05\CB\F7\98\109F\D0\F9x\01\00\00\91\FFi\00\C6\FF\0E\00\FD\FF5\00;\FF\E2\011\FC\17\07a\F2\0A&j9A\F2\15\06,\FD1\01\9B\FF\14\00\FF\FF\FF\FF\13\00\9E\FF+\017\FD\05\06T\F2\C29\99%s\F2\14\071\FC\E3\01;\FF5\00\FD\FF\0E\00\C4\FFn\00\87\FF\13\00X\01\0D\FAaF-\10\F0\F7\F1\04\05\FD\9C\01N\FF.\00\FF\FF\00\00'\00g\FF\\\01\93\FD\CC\03T\FA\A2\09OHs\FE'\FFK\01\DE\FE\C0\00\A4\FF\16\00\FE\FF6\006\FF\E3\01L\FC\A6\06\DB\F3[\1E\FC>\FA\F3\D7\04\FD\FD\B4\00\D9\FF\FD\FF\03\00\FD\FF%\00m\FF\8A\01\9F\FC\D3\06\8A\F1W3\17-\9C\F1$\07O\FC\C3\01N\FF/\00\FD\FF\08\00\E4\FF\1B\000\00\E4\FE_\03^\F6\02C\96\17\9B\F5\F8\05\8F\FC\CC\01=\FF4\00\FE\FF\1E\00\86\FF\0C\01>\FE{\02\ED\FCV\03\F5H\06\04\A1\FC\A3\02*\FE\16\01\83\FF\1F\00\00\00\FF\FF3\00>\FF\C8\01\9B\FC\DD\05\DC\F5\B6\16wC\BD\F6(\03\05\FF\1D\00%\00\E1\FF\08\00\FD\FF0\00K\FF\C8\01I\FC'\07\AB\F1>,\1E4\95\F1\C1\06\AE\FC\81\01q\FF#\00\FE\FF\02\00\00\00\D2\FF\C4\00\E2\FD\01\05\BA\F3d>?\1F\A8\F3\B8\06F\FC\E5\016\FF6\00\FD\FF\15\00\A8\FF\B6\00\F3\FE$\01n\FF\DE\FD%Hh\0A\08\FA\F2\03\81\FDe\01d\FF(\00\00\00\FF\FF-\00Q\FF\95\01\15\FD\CF\049\F8Y\0F\AFF\8B\FA\17\018\00s\FFx\00\C0\FF\0F\00\FD\FF6\009\FF\E4\012\FC\0B\07\97\F2\B8$q:{\F2\E6\05L\FD\1D\01\A4\FF\11\00\00\00\FF\FF\16\00\94\FF=\01\18\FD2\06\1F\F2\B58\EB&@\F2\1E\072\FC\DF\01=\FF5\00\FD\FF\0D\00\CA\FF_\00\A5\FF\DC\FF\B8\01W\F9\E5En\11\83\F7#\05\EE\FC\A6\01K\FF/\00\FF\FF\00\00%\00l\FFO\01\B0\FD\93\03\C7\FA}\08\86HZ\FF\BA\FE\86\01\BF\FE\CF\00\9E\FF\17\00\FE\FF6\007\FF\E0\01V\FC\89\06+\F4\06\1D\D7?a\F4\94\04'\FE\9C\00\E6\FF\F8\FF\04\00\FD\FF'\00f\FF\97\01\8C\FC\EA\06\80\F1&2X.\8B\F1\1B\07[\FC\BA\01S\FF-\00\FD\FF\07\00\E9\FF\0E\00K\00\B4\FE\AF\03\D5\F5MB\E6\18<\F5\1F\06\7F\FC\D3\01;\FF5\00\FE\FF\1C\00\8C\FF\FE\00]\FE?\02^\FDT\02\ECH\13\05.\FC\DE\02\0C\FE$\01}\FF \00\00\00\FF\FF2\00A\FF\C1\01\AD\FC\B2\05?\F6i\15\1FDS\F7\D3\028\FF\01\003\00\DB\FF\09\00\FD\FF1\00G\FF\CF\01@\FC*\07\C6\F1\F7*F5\AB\F1\A4\06\C4\FCr\01y\FF \00\FE\FF\02\00\04\00\C6\FF\DB\00\BB\FD>\05`\F3{=\94 ^\F3\D0\06>\FC\E6\016\FF6\00\FD\FF\14\00\AE\FF\A7\00\12\FF\EA\00\D9\FF\03\FD\DCG\95\0B\96\F9)\04e\FDq\01_\FF)\00\00\00\FF\FF,\00U\FF\8A\01.\FD\9B\04\A8\F8\1F\0E\1AGN\FB\B3\00p\00T\FF\87\00\BB\FF\11\00\FD\FF6\008\FF\E6\014\FC\FB\06\D2\F2d#s;\BC\F2\B4\05n\FD\09\01\AF\FF\0D\00\00\00\FF\FF\1A\00\8B\FFO\01\FB\FCZ\06\F2\F1\A07:(\13\F2%\075\FC\DB\01@\FF4\00\FD\FF\0C\00\D0\FFQ\00\C3\FF\A6\FF\16\02\A9\F8\\E\B2\12\19\F7R\05\D8\FC\AF\01G\FF0\00\FF\FF\00\00$\00q\FFB\01\CD\FDY\03;\FB^\07\B3HH\00K\FE\C2\01\9F\FE\DE\00\98\FF\19\00\FE\FF6\008\FF\DD\01b\FCi\06\7F\F4\B2\1B\AB@\D0\F4N\04S\FE\83\00\F2\FF\F4\FF\05\00\FD\FF)\00_\FF\A3\01z\FC\FD\06|\F1\F20\96/\80\F1\0F\07i\FC\B0\01Y\FF+\00\FD\FF\06\00\EE\FF\01\00f\00\85\FE\FC\03U\F5\8CA8\1A\E1\F4C\06p\FC\D8\019\FF5\00\FE\FF\1B\00\92\FF\EF\00}\FE\04\02\CF\FDX\01\D7H&\06\BB\FB\19\03\ED\FD2\01w\FF\22\00\00\00\FF\FF2\00D\FF\B9\01\C1\FC\86\05\A5\F6\1E\14\BAD\F0\F7{\02k\FF\E4\FFA\00\D6\FF\0B\00\FD\FF3\00C\FF\D5\01:\FC*\07\E7\F1\AC)f6\C9\F1\83\06\DD\FCb\01\81\FF\1D\00\FE\FF\01\00\08\00\BB\FF\F1\00\96\FDx\05\0E\F3\8A<\EA!\19\F3\E6\068\FC\E6\017\FF6\00\FD\FF\12\00\B4\FF\98\002\FF\B0\00A\000\FC\86G\C6\0C$\F9`\04K\FD}\01Z\FF*\00\00\00\00\00+\00Z\FF~\01H\FDf\04\18\F9\E8\0C|G\19\FCM\00\A9\005\FF\96\00\B5\FF\12\00\FD\FF6\007\FF\E6\018\FC\E9\06\12\F3\10\22n<\05\F3~\05\91\FD\F4\00\BA\FF\09\00\01\00\FE\FF\1D\00\82\FF`\01\E0\FC\7F\06\CC\F1\856\87)\EB\F1*\079\FC\D6\01C\FF3\00\FD\FF\0B\00\D5\FFB\00\E1\FFq\FFq\02\02\F8\CCD\FA\13\B0\F6\81\05\C3\FC\B8\01D\FF1\00\FF\FF\00\00\22\00w\FF4\01\EA\FD\1F\03\AE\FBE\06\D5H<\01\DC\FD\FD\01\80\FE\ED\00\93\FF\1B\00\FE\FF5\009\FF\D8\01o\FCG\06\D7\F4]\1AtAH\F5\04\04\80\FEi\00\FF\FF\EF\FF\05\00\FD\FF+\00Y\FF\AE\01j\FC\0D\07\80\F1\B8/\CF0}\F1\FF\06x\FC\A5\01_\FF)\00\FD\FF\05\00\F3\FF\F4\FF\80\00X\FEF\04\DD\F4\C3@\8C\1B\89\F4f\06c\FC\DC\018\FF6\00\FE\FF\19\00\98\FF\E0\00\9C\FE\C8\01?\FEb\00\B8H?\07G\FBS\03\D0\FD@\01r\FF#\00\00\00\FF\FF0\00G\FF\B0\01\D6\FCX\05\0D\F7\D7\12NE\96\F8 \02\A0\FF\C7\FFO\00\D0\FF\0C\00\FD\FF4\00@\FF\DB\015\FC&\07\0E\F2`(\827\ED\F1^\06\F8\FCQ\01\8A\FF\1A\00\FF\FF\00\00\0C\00\B0\FF\07\01r\FD\AE\05\C4\F2\90;?#\D9\F2\F9\064\FC\E6\018\FF6\00\FD\FF\11\00\BA\FF\89\00Q\FFw\00\A7\00d\FB&G\FC\0D\B4\F8\95\041\FD\88\01V\FF,\00\FF\FF\00\00)\00^\FFr\01b\FD/\04\89\F9\B6\0B\D2G\EB\FC\E4\FF\E3\00\16\FF\A5\00\AF\FF\13\00\FD\FF6\006\FF\E6\01>\FC\D3\06V\F3\BA a=V\F3E\05\B7\FD\DE\00\C5\FF\05\00\02\00\FE\FF \00z\FFp\01\C7\FC\A0\06\AE\F1e5\D1*\CA\F1*\07@\FC\D0\01G\FF2\00\FD\FF\09\00\DB\FF4\00\FE\FF=\FF\C9\02d\F7/DD\15J\F6\AD\05\AF\FC\C0\01A\FF2\00\FF\FF\00\00!\00|\FF&\01\08\FE\E4\02!\FC1\05\EBH7\02k\FD9\02a\FE\FC\00\8D\FF\1C\00\FE\FF5\00:\FF\D3\01}\FC#\062\F5\0C\198B\C7\F5\B8\03\AF\FEN\00\0C\00\EA\FF\06\00\FD\FF-\00T\FF\B8\01]\FC\1A\07\8A\F1{.\042\7F\F1\EC\06\8A\FC\98\01e\FF'\00\FD\FF\04\00\F8\FF\E7\FF\99\00,\FE\8C\04m\F4\F0?\E0\1C4\F4\85\06W\FC\E0\017\FF6\00\FE\FF\18\00\9E\FF\D1\00\BB\FE\8D\01\AE\FEt\FF\8DH]\08\D4\FA\8D\03\B3\FDN\01m\FF%\00\00\00\FF\FF/\00J\FF\A7\01\EC\FC(\05w\F7\92\11\D7EC\F9\C3\01\D6\FF\A9\FF^\00\CB\FF\0D\00\FD\FF4\00=\FF\DF\012\FC\1F\07;\F2\11'\978\19\F26\06\15\FD?\01\93\FF\17\00\FF\FF\00\00\10\00\A6\FF\1B\01P\FD\E1\05\82\F2\8F:\92$\9D\F2\09\072\FC\E4\019\FF6\00\FD\FF\0F\00\C0\FFz\00p\FF>\00\0C\01\A1\FA\BBF6\0FE\F8\C9\04\18\FD\93\01R\FF-\00\FF\FF\00\00(\00c\FFf\01}\FD\F8\03\FB\F9\89\0A\1DH\C5\FDz\FF\1D\01\F7\FE\B4\00\A9\FF\15\00\FD\FF6\006\FF\E5\01E\FC\BB\06\A0\F3d\1FJ>\B0\F3\08\05\DE\FD\C7\00\D0\FF\00\00\02\00\FE\FF#\00r\FF\7F\01\B0\FC\BE\06\97\F1?4\19,\AD\F1(\07H\FC\C9\01K\FF0\00\FD\FF\08\00\E0\FF&\00\1A\00\0B\FF\1E\03\CD\F6\89C\91\16\E7\F5\D8\05\9D\FC\C7\01>\FF3\00\FF\FF\00\00\1F\00\82\FF\18\01'\FE\A9\02\94\FC$\04\F5H9\03\F9\FCt\02B\FE\0B\01\87\FF\1E\00\FE\FF4\00<\FF\CD\01\8E\FC\FC\05\90\F5\BB\17\EEBN\F6h\03\DF\FE3\00\1A\00\E5\FF\07\00\FD\FF/\00O\FF\C2\01Q\FC#\07\9A\F1:-53\89\F1\D5\06\9D\FC\8B\01l\FF%\00\FD\FF\03\00\FC\FF\DB\FF\B2\00\02\FE\CF\04\05\F4\16?6\1E\E4\F3\A3\06M\FC\E3\016\FF6\00\FE\FF\16\00\A4\FF\C2\00\DB\FER\01\1B\FF\8D\FEWH\81\09a\FA\C6\03\96\FD[\01h\FF&\00\00\00\FF\FF.\00N\FF\9D\01\03\FD\F7\04\E3\F7Q\10UF\F9\F9c\01\0D\00\8B\FFm\00\C5\FF\0E\00\FD\FF5\00;\FF\E2\011\FC\15\07m\F2\BF%\A59M\F2\0B\063\FD-\01\9D\FF\13\00\FF\FF\FF\FF\14\00\9C\FF/\010\FD\10\06G\F2\879\E5%g\F2\16\071\FC\E2\01;\FF5\00\FD\FF\0E\00\C6\FFk\00\8E\FF\06\00n\01\E4\F9HFu\10\D7\F7\FC\04\00\FD\9E\01N\FF.\00\FF\FF\00\00&\00h\FFY\01\99\FD\C0\03n\FAa\09]H\A6\FE\0F\FFX\01\D7\FE\C3\00\A3\FF\16\00\FE\FF6\006\FF\E3\01N\FC\A0\06\ED\F3\0F\1E-?\10\F4\C8\04\07\FE\AF\00\DC\FF\FC\FF\03\00\FD\FF%\00k\FF\8D\01\9B\FC\D8\06\87\F1\133^-\98\F1\22\07R\FC\C1\01O\FF/\00\FD\FF\07\00\E5\FF\18\006\00\D9\FEq\03?\F6\DBB\E0\17\86\F5\00\06\8C\FC\CE\01<\FF4\00\FE\FF\1D\00\88\FF\09\01E\FEn\02\06\FD\1C\03\F4HA\04\87\FC\B0\02#\FE\19\01\81\FF\1F\00\00\00\FF\FF3\00?\FF\C6\01\9F\FC\D3\05\F1\F5l\16\9EC\DD\F6\15\03\10\FF\17\00(\00\DF\FF\09\00\FD\FF0\00J\FF\CA\01G\FC(\07\B0\F1\F5+`4\9A\F1\BB\06\B3\FC}\01s\FF\22\00\FE\FF\02\00\01\00\CF\FF\C9\00\DA\FD\0F\05\A5\F31>\8A\1F\97\F3\BD\06D\FC\E5\016\FF6\00\FD\FF\15\00\AA\FF\B3\00\FA\FE\17\01\86\FF\AC\FD\16H\AA\0A\EE\F9\FE\03z\FDg\01c\FF(\00\00\00\FF\FF-\00R\FF\92\01\1B\FD\C4\04Q\F8\13\0F\C8F\B6\FA\01\01D\00l\FF{\00\BF\FF\10\00\FD\FF6\009\FF\E5\012\FC\08\07\A4\F2m$\AD:\88\F2\DB\05S\FD\19\01\A7\FF\10\00\00\00\FF\FF\17\00\92\FFA\01\11\FD;\06\14\F2x86'5\F2 \073\FC\DF\01>\FF4\00\FD\FF\0D\00\CB\FF\\\00\AC\FF\D0\FF\CD\010\F9\C8E\B6\11k\F7-\05\E9\FC\A8\01J\FF0\00\FF\FF\00\00%\00m\FFL\01\B6\FD\86\03\E1\FA=\08\92H\8E\FF\A1\FE\93\01\B8\FE\D3\00\9D\FF\18\00\FE\FF6\007\FF\E0\01X\FC\82\06>\F4\BA\1C\07@y\F4\84\041\FE\96\00\E8\FF\F7\FF\04\00\FD\FF(\00d\FF\9A\01\88\FC\EE\06~\F1\E31\9F.\88\F1\19\07^\FC\B7\01T\FF-\00\FD\FF\06\00\EA\FF\0B\00Q\00\AA\FE\C0\03\B8\F5!B1\19(\F5'\06|\FC\D4\01:\FF5\00\FE\FF\1C\00\8D\FF\FA\00d\FE2\02x\FD\1B\02\EAHP\05\14\FC\EB\02\05\FE'\01|\FF!\00\00\00\FF\FF2\00A\FF\BF\01\B2\FC\A9\05U\F6 \15BDu\F7\BF\02C\FF\FA\FF6\00\DA\FF\0A\00\FD\FF2\00F\FF\D1\01?\FC+\07\CD\F1\AE*\865\B1\F1\9D\06\CA\FCn\01{\FF \00\FE\FF\02\00\05\00\C3\FF\E0\00\B3\FDK\05M\F3E=\E0 O\F3\D5\06=\FC\E6\016\FF6\00\FD\FF\13\00\AF\FF\A4\00\19\FF\DD\00\F0\FF\D4\FC\C9G\D8\0B|\F95\04_\FDt\01^\FF)\00\00\00\00\00,\00V\FF\87\014\FD\8F\04\C0\F8\D9\0D1G{\FB\9C\00}\00M\FF\8A\00\B9\FF\11\00\FD\FF6\008\FF\E6\015\FC\F7\06\E0\F2\18#\AB;\CC\F2\A8\05v\FD\04\01\B1\FF\0C\00\00\00\FE\FF\1A\00\89\FFS\01\F5\FCc\06\E9\F1c7\85(\09\F2'\075\FC\DA\01@\FF4\00\FD\FF\0C\00\D1\FFN\00\CA\FF\9A\FF*\02\83\F8?E\FB\12\01\F7]\05\D3\FC\B1\01F\FF1\00\FF\FF\00\00#\00s\FF?\01\D3\FDL\03T\FB\1F\07\BBH}\003\FE\CF\01\98\FE\E2\00\97\FF\19\00\FE\FF6\008\FF\DC\01d\FCb\06\93\F4f\1B\D9@\EA\F4>\04]\FE}\00\F5\FF\F3\FF\05\00\FD\FF*\00^\FF\A6\01v\FC\01\07}\F1\AD0\DC/\7F\F1\0C\07l\FC\AD\01Z\FF+\00\FD\FF\05\00\EF\FF\FE\FFl\00{\FE\0C\04:\F5_A\83\1A\CD\F4K\06m\FC\D9\019\FF5\00\FE\FF\1A\00\93\FF\EC\00\83\FE\F7\01\E8\FD!\01\D2Hd\06\A1\FB&\03\E7\FD5\01v\FF\22\00\00\00\FF\FF1\00D\FF\B7\01\C5\FC|\05\BC\F6\D5\13\DCD\14\F8g\02w\FF\DD\FFD\00\D5\FF\0B\00\FD\FF3\00B\FF\D7\019\FC)\07\EF\F1b)\A56\D0\F1{\06\E3\FC^\01\83\FF\1D\00\FE\FF\01\00\09\00\B8\FF\F6\00\8D\FD\84\05\FD\F2R<5\22\0B\F3\EB\067\FC\E6\017\FF6\00\FD\FF\12\00\B5\FF\94\009\FF\A3\00X\00\02\FCsG\0B\0D\0B\F9l\04E\FD\80\01Y\FF+\00\00\00\00\00*\00[\FF|\01N\FDZ\041\F9\A4\0C\90GG\FC6\00\B6\00.\FF\99\00\B3\FF\12\00\FD\FF6\007\FF\E6\019\FC\E4\06!\F3\C4!\A5<\16\F3r\05\9A\FD\EF\00\BC\FF\08\00\01\00\FE\FF\1E\00\80\FFd\01\DA\FC\87\06\C5\F1F6\D1)\E3\F1*\07:\FC\D5\01D\FF2\00\FD\FF\0A\00\D6\FF?\00\E7\FFe\FF\85\02\DE\F7\A9DC\14\99\F6\8B\05\BF\FC\BA\01C\FF2\00\FF\FF\00\00\22\00x\FF1\01\F1\FD\12\03\C7\FB\07\06\DBHs\01\C3\FD\0A\02y\FE\F1\00\91\FF\1B\00\FE\FF5\009\FF\D7\01r\FC?\06\EB\F4\12\1A\A1Ac\F5\F3\03\8A\FEc\00\02\00\EE\FF\06\00\FD\FF,\00X\FF\B1\01g\FC\10\07\81\F1s/\151|\F1\FB\06|\FC\A2\01`\FF)\00\FD\FF\04\00\F4\FF\F1\FF\85\00N\FEV\04\C3\F4\95@\D8\1Bv\F4m\06`\FC\DD\017\FF6\00\FE\FF\19\00\99\FF\DD\00\A3\FE\BB\01X\FE-\00\AFH~\07.\FB`\03\C9\FDC\01q\FF$\00\00\00\FF\FF0\00H\FF\AE\01\DB\FCM\05$\F7\8E\12mE\BC\F8\0C\02\AC\FF\C0\FFR\00\CF\FF\0C\00\FD\FF4\00?\FF\DC\014\FC%\07\18\F2\15(\BF7\F7\F1V\06\FE\FCM\01\8C\FF\19\00\FF\FF\00\00\0D\00\AE\FF\0B\01j\FD\BA\05\B4\F2X;\8A#\CB\F2\FD\064\FC\E6\018\FF6\00\FD\FF\10\00\BB\FF\85\00X\FFj\00\BE\008\FB\0FGB\0E\9B\F8\A1\04+\FD\8B\01U\FF,\00\FF\FF\00\00)\00_\FFp\01h\FD#\04\A2\F9s\0B\E4G\1B\FD\CD\FF\F0\00\0F\FF\A9\00\AE\FF\14\00\FD\FF6\006\FF\E6\01?\FC\CE\06f\F3o \96=i\F38\05\BF\FD\D9\00\C7\FF\04\00\02\00\FE\FF \00x\FFt\01\C2\FC\A7\06\A8\F1%5\1B+\C2\F1*\07A\FC\CE\01G\FF1\00\FD\FF\09\00\DC\FF1\00\04\002\FF\DC\02B\F7\0BD\8E\154\F6\B7\05\AB\FC\C1\01@\FF3\00\FF\FF\00\00 \00~\FF#\01\0F\FE\D7\02;\FC\F5\04\EDHp\02R\FDF\02Z\FE\FF\00\8B\FF\1C\00\FE\FF5\00;\FF\D2\01\81\FC\1A\06G\F5\C1\18`B\E4\F5\A6\03\B9\FEH\00\0F\00\E9\FF\07\00\FD\FF.\00S\FF\BB\01Z\FC\1C\07\8D\F14.H2\81\F1\E7\06\8E\FC\96\01f\FF'\00\FD\FF\04\00\F9\FF\E4\FF\9F\00#\FE\9B\04U\F4\C0?,\1D\22\F4\8C\06U\FC\E1\017\FF6\00\FE\FF\17\00\9F\FF\CE\00\C2\FE\80\01\C6\FE@\FF\81H\9E\08\BA\FA\9A\03\AC\FDQ\01l\FF%\00\00\00\FF\FF/\00K\FF\A4\01\F1\FC\1D\05\8F\F7J\11\F2Ek\F9\AE\01\E2\FF\A2\FFa\00\C9\FF\0D\00\FD\FF5\00=\FF\E0\012\FC\1D\07E\F2\C6&\D38$\F2-\06\1B\FD;\01\95\FF\16\00\FF\FF\00\00\11\00\A3\FF \01I\FD\EB\05t\F2T:\DD$\91\F2\0C\072\FC\E4\01:\FF6\00\FD\FF\0F\00\C1\FFv\00v\FF2\00\22\01v\FA\A3F}\0F,\F8\D5\04\13\FD\96\01Q\FF-\00\FF\FF\00\00'\00d\FFc\01\84\FD\EB\03\14\FAG\0A,H\F6\FDc\FF+\01\F0\FE\B8\00\A8\FF\15\00\FD\FF6\006\FF\E4\01G\FC\B5\06\B0\F3\19\1F~>\C4\F3\FA\04\E7\FD\C1\00\D3\FF\FF\FF\02\00\FE\FF#\00q\FF\82\01\AB\FC\C4\06\93\F1\FD3b,\A8\F1'\07J\FC\C7\01L\FF0\00\FD\FF\08\00\E1\FF#\00 \00\00\FF1\03\AD\F6eC\DC\16\D1\F5\E1\05\99\FC\C9\01>\FF3\00\FF\FF\00\00\1F\00\83\FF\14\01-\FE\9C\02\AD\FC\E9\03\F6Hs\03\E0\FC\82\02;\FE\0E\01\86\FF\1E\00\FE\FF4\00=\FF\CC\01\91\FC\F3\05\A6\F5p\17\17Cm\F6V\03\EA\FE-\00\1D\00\E4\FF\08\00\FD\FF/\00N\FF\C3\01N\FC$\07\9E\F1\F2,x3\8C\F1\D0\06\A2\FC\88\01m\FF$\00\FD\FF\03\00\FD\FF\D8\FF\B7\00\F9\FD\DE\04\EF\F3\E4>\81\1E\D2\F3\A9\06K\FC\E3\016\FF6\00\FE\FF\16\00\A5\FF\BE\00\E2\FEE\013\FFZ\FEHH\C3\09G\FA\D2\03\90\FD^\01f\FF'\00\00\00\FF\FF.\00O\FF\9A\01\08\FD\EB\04\FC\F7\0A\10pF\22\FAM\01\19\00\84\FFp\00\C4\FF\0F\00\FD\FF5\00;\FF\E3\011\FC\12\07y\F2s%\DF9Z\F2\00\06:\FD(\01\9F\FF\13\00\00\00\FF\FF\15\00\99\FF3\01)\FD\1A\06;\F2K90&[\F2\19\071\FC\E1\01<\FF5\00\FD\FF\0E\00\C7\FFh\00\95\FF\FA\FF\83\01\BB\F9+F\BB\10\BF\F7\07\05\FB\FC\A0\01M\FF/\00\FF\FF\00\00&\00i\FFV\01\A0\FD\B3\03\87\FA\1F\09jH\D9\FE\F6\FEe\01\D0\FE\C7\00\A2\FF\17\00\FE\FF6\006\FF\E2\01P\FC\99\06\FE\F3\C3\1D^?'\F4\B9\04\10\FE\A9\00\DF\FF\FB\FF\03\00\FD\FF&\00i\FF\90\01\96\FC\DD\06\85\F1\D02\A6-\94\F1 \07T\FC\BF\01P\FF.\00\FD\FF\07\00\E6\FF\15\00<\00\CF\FE\83\03 \F6\B2B+\18q\F5\09\06\88\FC\CF\01<\FF4\00\FE\FF\1D\00\89\FF\06\01L\FE`\02\1F\FD\E2\02\F3H}\04n\FC\BD\02\1C\FE\1C\01\80\FF \00\00\00\FF\FF3\00?\FF\C5\01\A3\FC\CA\05\07\F6\22\16\C3C\FE\F6\02\03\1B\FF\11\00+\00\DE\FF\09\00\FD\FF1\00I\FF\CB\01E\FC)\07\B6\F1\AD+\A24\9E\F1\B4\06\B8\FCz\01u\FF\22\00\FE\FF\02\00\02\00\CC\FF\CE\00\D1\FD\1D\05\91\F3\FE=\D7\1F\87\F3\C3\06B\FC\E5\016\FF6\00\FD\FF\14\00\AB\FF\AF\00\01\FF\0A\01\9E\FF|\FD\03H\ED\0A\D5\F9\0A\04t\FDj\01b\FF(\00\00\00\FF\FF-\00S\FF\90\01 \FD\B8\04j\F8\CD\0E\E1F\E1\FA\EB\00Q\00e\FF\7F\00\BE\FF\10\00\FD\FF6\009\FF\E5\013\FC\04\07\B1\F2!$\E6:\97\F2\D0\05[\FD\15\01\A9\FF\0F\00\00\00\FF\FF\18\00\90\FFE\01\0B\FDD\06\0A\F2;8\80'+\F2\22\073\FC\DE\01>\FF4\00\FD\FF\0D\00\CD\FFY\00\B3\FF\C4\FF\E2\01\09\F9\AAE\FE\11T\F78\05\E4\FC\AA\01I\FF0\00\FF\FF\00\00$\00n\FFI\01\BC\FDz\03\FA\FA\FD\07\9CH\C3\FF\89\FE\A1\01\B1\FE\D6\00\9C\FF\18\00\FE\FF6\007\FF\DF\01[\FC{\06P\F4n\1C6@\92\F4u\04;\FE\91\00\EB\FF\F6\FF\04\00\FD\FF(\00c\FF\9D\01\84\FC\F3\06}\F1\9E1\E6.\85\F1\16\07a\FC\B5\01U\FF-\00\FD\FF\06\00\EC\FF\08\00W\00\9F\FE\D1\03\9B\F5\F7A|\19\13\F5/\06x\FC\D5\01:\FF5\00\FE\FF\1C\00\8F\FF\F7\00k\FE%\02\91\FD\E3\01\E5H\8D\05\FB\FB\F8\02\FE\FD+\01z\FF!\00\00\00\FF\FF2\00B\FF\BD\01\B6\FC\9F\05l\F6\D6\14eD\98\F7\AC\02N\FF\F4\FF9\00\D9\FF\0A\00\FD\FF2\00E\FF\D2\01=\FC+\07\D4\F1d*\C65\B7\F1\96\06\CF\FCk\01}\FF\1F\00\FE\FF\01\00\06\00\C1\FF\E5\00\AA\FDX\05:\F3\11=,!?\F3\DA\06;\FC\E6\016\FF6\00\FD\FF\13\00\B1\FF\A0\00 \FF\D0\00\07\00\A4\FC\B6G\1C\0Cc\F9B\04Y\FDv\01]\FF*\00\00\00\00\00+\00W\FF\85\019\FD\84\04\D9\F8\95\0DHG\A7\FB\86\00\8A\00F\FF\8E\00\B8\FF\11\00\FD\FF6\007\FF\E6\015\FC\F3\06\EE\F2\CD\22\E4;\DC\F2\9C\05~\FD\00\01\B4\FF\0B\00\01\00\FE\FF\1B\00\87\FFW\01\EF\FCk\06\E0\F1#7\CE(\01\F2(\076\FC\D9\01A\FF3\00\FD\FF\0B\00\D2\FFJ\00\D0\FF\8E\FF?\02^\F8\1EED\13\EA\F6g\05\CF\FC\B3\01F\FF1\00\FF\FF\00\00#\00t\FF<\01\DA\FD@\03n\FB\E1\06\C3H\B3\00\1A\FE\DC\01\91\FE\E5\00\96\FF\1A\00\FE\FF6\008\FF\DB\01g\FCZ\06\A6\F4\1B\1B\07A\04\F5-\04g\FEw\00\F8\FF\F2\FF\05\00\FD\FF*\00\\\FF\A8\01s\FC\05\07}\F1g0!0~\F1\08\07o\FC\AB\01[\FF+\00\FD\FF\05\00\F0\FF\FB\FFq\00q\FE\1D\04\1F\F52A\CE\1A\BA\F4S\06j\FC\DA\018\FF5\00\FE\FF\1A\00\95\FF\E8\00\8A\FE\E9\01\01\FE\EA\00\CBH\A2\06\87\FB3\03\E0\FD9\01u\FF#\00\00\00\FF\FF1\00E\FF\B5\01\CA\FCr\05\D3\F6\8D\13\FDD9\F8S\02\82\FF\D7\FFG\00\D3\FF\0B\00\FD\FF3\00B\FF\D8\017\FC)\07\F8\F1\19)\E56\D8\F1s\06\E9\FC[\01\85\FF\1C\00\FE\FF\01\00\0A\00\B6\FF\FB\00\85\FD\90\05\EC\F2\1C<\81\22\FC\F2\EF\066\FC\E6\017\FF6\00\FD\FF\12\00\B7\FF\91\00@\FF\96\00o\00\D5\FB^GP\0D\F2\F8x\04?\FD\82\01X\FF+\00\00\00\00\00*\00\\\FFy\01S\FDN\04J\F9`\0C\A3Gv\FC\1F\00\C3\00'\FF\9D\00\B2\FF\13\00\FD\FF6\007\FF\E6\01:\FC\DF\060\F3x!\DB<(\F3e\05\A2\FD\EA\00\BE\FF\07\00\01\00\FE\FF\1E\00\7F\FFg\01\D5\FC\8E\06\BE\F1\066\1A*\DC\F1*\07<\FC\D3\01D\FF2\00\FD\FF\0A\00\D8\FF<\00\EE\FFZ\FF\98\02\BB\F7\87D\8C\14\83\F6\95\05\BA\FC\BB\01C\FF2\00\FF\FF\00\00!\00y\FF.\01\F7\FD\05\03\E1\FB\CA\05\DFH\AB\01\AA\FD\18\02r\FE\F4\00\90\FF\1B\00\FE\FF5\009\FF\D6\01u\FC7\06\FF\F4\C7\19\CCA\7F\F5\E2\03\95\FE]\00\05\00\ED\FF\06\00\FD\FF,\00W\FF\B3\01d\FC\13\07\83\F1,/Z1}\F1\F7\06\80\FC\9F\01a\FF)\00\FD\FF\04\00\F5\FF\EE\FF\8B\00D\FEe\04\AA\F4f@#\1Cc\F4t\06]\FC\DE\017\FF6\00\FE\FF\19\00\9A\FF\D9\00\AA\FE\AE\01p\FE\F8\FF\A6H\BE\07\14\FBm\03\C3\FDF\01p\FF$\00\00\00\FF\FF0\00H\FF\AC\01\DF\FCC\05<\F7F\12\8DE\E2\F8\F7\01\B8\FF\B9\FFV\00\CE\FF\0C\00\FD\FF4\00?\FF\DD\014\FC#\07!\F2\CB'\FE7\00\F2M\06\04\FDI\01\8E\FF\19\00\FF\FF\00\00\0E\00\AB\FF\10\01b\FD\C5\05\A5\F2\1F;\D6#\BE\F2\01\073\FC\E5\018\FF6\00\FD\FF\10\00\BD\FF\82\00^\FF]\00\D4\00\0C\FB\F9F\87\0E\82\F8\AD\04&\FD\8D\01T\FF,\00\FF\FF\00\00)\00`\FFm\01n\FD\17\04\BC\F90\0B\F4GK\FD\B5\FF\FD\00\08\FF\AC\00\AC\FF\14\00\FD\FF6\006\FF\E6\01A\FC\C8\06v\F3\22 \CA=}\F3*\05\C8\FD\D4\00\CA\FF\03\00\02\00\FE\FF!\00w\FFw\01\BD\FC\AE\06\A3\F1\E34d+\BC\F1*\07C\FC\CD\01H\FF1\00\FD\FF\09\00\DD\FF.\00\0A\00'\FF\EF\02 \F7\E7C\D8\15\1E\F6\C0\05\A7\FC\C3\01@\FF3\00\FF\FF\00\00 \00\7F\FF \01\16\FE\CA\02T\FC\B9\04\F2H\A9\029\FDS\02S\FE\03\01\8A\FF\1D\00\FE\FF4\00;\FF\D1\01\84\FC\12\06\\\F5v\18\89B\02\F6\94\03\C4\FEB\00\12\00\E8\FF\07\00\FD\FF.\00Q\FF\BD\01W\FC\1E\07\90\F1\ED-\8C2\83\F1\E2\06\92\FC\93\01h\FF&\00\FD\FF\03\00\FA\FF\E2\FF\A4\00\19\FE\AA\04>\F4\90?x\1D\10\F4\93\06R\FC\E1\016\FF6\00\FE\FF\17\00\A0\FF\CA\00\C9\FEs\01\DE\FE\0C\FFvH\DE\08\A1\FA\A6\03\A6\FDS\01j\FF&\00\00\00\FF\FF/\00L\FF\A2\01\F6\FC\12\05\A7\F7\03\11\10F\93\F9\98\01\EE\FF\9B\FFd\00\C8\FF\0E\00\FD\FF5\00<\FF\E1\012\FC\1B\07P\F2{&\119/\F2#\06\22\FD7\01\97\FF\15\00\FF\FF\00\00\12\00\A1\FF$\01A\FD\F6\05g\F2\1A:)%\84\F2\0F\071\FC\E3\01:\FF5\00\FD\FF\0F\00\C2\FFs\00}\FF%\008\01L\FA\89F\C3\0F\14\F8\E0\04\0D\FD\98\01P\FF.\00\FF\FF\00\00'\00e\FF`\01\8A\FD\DF\03.\FA\04\0A:H(\FEK\FF8\01\E9\FE\BB\00\A6\FF\16\00\FE\FF6\006\FF\E4\01I\FC\AF\06\C1\F3\CD\1E\B1>\D9\F3\EC\04\F0\FD\BC\00\D5\FF\FE\FF\03\00\FD\FF$\00o\FF\85\01\A6\FC\CA\06\8F\F1\BB3\AB,\A3\F1&\07L\FC\C5\01M\FF0\00\FD\FF\08\00\E2\FF \00&\00\F5\FEC\03\8D\F6<C%\17\BB\F5\EA\05\95\FC\CA\01=\FF4\00\FE\FF\00\00\1E\00\84\FF\11\014\FE\8F\02\C7\FC\AE\03\F7H\AE\03\C7\FC\8F\024\FE\11\01\84\FF\1E\00\FD\FF6\006\FF\E6\01=\FC\D6\06L\F3\ED ==J\F3N\05\B1\FD\E1\00\C3\FF\05\00\02\00\02\00\05\00\C3\FF\E1\00\B1\FDN\05J\F3==\ED L\F3\D6\06=\FC\E6\016\FF6\00\FD\FF\00\00\1E\00\84\FF\11\014\FE\8F\02\C7\FC\AE\03\F7H\AE\03\C7\FC\8F\024\FE\11\01\84\FF\1E\00\FD\FF0\00M\FF\C5\01L\FC&\07\A3\F1\AB,\BB3\8F\F1\CA\06\A6\FC\85\01o\FF$\00\FD\FF\16\00\A6\FF\BB\00\E9\FE8\01K\FF(\FE:H\04\0A.\FA\DF\03\8A\FD`\01e\FF'\00\00\00\FD\FF5\00:\FF\E3\011\FC\0F\07\84\F2)%\1A:g\F2\F6\05A\FD$\01\A1\FF\12\00\00\00\0E\00\C8\FFd\00\9B\FF\EE\FF\98\01\93\F9\10F\03\11\A7\F7\12\05\F6\FC\A2\01L\FF/\00\FF\FF\FE\FF6\006\FF\E1\01R\FC\93\06\10\F4x\1D\90?>\F4\AA\04\19\FE\A4\00\E2\FF\FA\FF\03\00\07\00\E8\FF\12\00B\00\C4\FE\94\03\02\F6\89Bv\18\\\F5\12\06\84\FC\D1\01;\FF4\00\FE\FF\FF\FF3\00@\FF\C3\01\A7\FC\C0\05\1E\F6\D8\15\E7C \F7\EF\02'\FF\0A\00.\00\DD\FF\09\00\02\00\03\00\CA\FF\D4\00\C8\FD*\05}\F3\CA=\22 v\F3\C8\06A\FC\E6\016\FF6\00\FD\FF\FF\FF,\00T\FF\8D\01&\FD\AD\04\82\F8\87\0E\F9F\0C\FB\D4\00]\00^\FF\82\00\BD\FF\10\00\FF\FF\19\00\8E\FFI\01\04\FDM\06\00\F2\FE7\CB'!\F2#\074\FC\DD\01?\FF4\00\FD\FF\00\00$\00p\FFF\01\C3\FDm\03\14\FB\BE\07\A6H\F8\FFp\FE\AE\01\AA\FE\D9\00\9A\FF\19\00\FD\FF)\00a\FF\9F\01\80\FC\F7\06}\F1Z1,/\83\F1\13\07d\FC\B3\01W\FF,\00\FD\FF\1B\00\90\FF\F4\00r\FE\18\02\AA\FD\AB\01\DFH\CA\05\E1\FB\05\03\F7\FD.\01y\FF!\00\00\00\FD\FF2\00D\FF\D3\01<\FC*\07\DC\F1\1A*\066\BE\F1\8E\06\D5\FCg\01\7F\FF\1E\00\FE\FF\13\00\B2\FF\9D\00'\FF\C3\00\1F\00v\FC\A3G`\0CJ\F9N\04S\FDy\01\\\FF*\00\00\00\FD\FF6\007\FF\E6\016\FC\EF\06\FC\F2\81\22\1C<\EC\F2\90\05\85\FD\FB\00\B6\FF\0A\00\01\00\0B\00\D3\FFG\00\D7\FF\82\FFS\029\F8\FDD\8D\13\D3\F6r\05\CA\FC\B5\01E\FF1\00\FF\FF\FE\FF5\008\FF\DA\01j\FCS\06\BA\F4\CE\1A2A\1F\F5\1D\04q\FEq\00\FB\FF\F0\FF\05\00\05\00\F2\FF\F8\FFw\00g\FE-\04\04\F5\07A\1B\1B\A6\F4Z\06g\FC\DB\018\FF6\00\FE\FF\FF\FF1\00F\FF\B3\01\CF\FCg\05\EA\F6D\13\1EE^\F8?\02\8E\FF\D0\FFJ\00\D2\FF\0B\00\01\00\0B\00\B4\FF\00\01~\FD\9C\05\DC\F2\E4;\CD\22\EE\F2\F3\065\FC\E6\017\FF6\00\FD\FF\00\00*\00]\FFv\01Y\FDB\04c\F9\1C\0C\B6G\A4\FC\07\00\D0\00 \FF\A0\00\B1\FF\13\00\FE\FF\1F\00}\FFk\01\CF\FC\96\06\B7\F1\C65d*\D4\F1+\07=\FC\D2\01E\FF2\00\FD\FF\00\00!\00z\FF+\01\FE\FD\F8\02\FB\FB\8D\05\E5H\E3\01\91\FD%\02k\FE\F7\00\8F\FF\1C\00\FD\FF-\00U\FF\B5\01a\FC\16\07\85\F1\E6.\9E1}\F1\F3\06\84\FC\9D\01c\FF(\00\FD\FF\18\00\9C\FF\D6\00\B1\FE\A1\01\89\FE\C3\FF\9CH\FD\07\FA\FAz\03\BC\FDI\01n\FF$\00\00\00\FD\FF4\00>\FF\DE\013\FC\22\07+\F2\80';8\0A\F2D\06\0B\FDE\01\90\FF\18\00\FF\FF\10\00\BE\FF\7F\00e\FFQ\00\EB\00\E1\FA\E1F\CD\0Ej\F8\B8\04 \FD\90\01S\FF-\00\FF\FF\FD\FF6\006\FF\E5\01B\FC\C3\06\87\F3\D7\1F\FE=\91\F3\1D\05\D1\FD\CE\00\CC\FF\02\00\02\00\09\00\DE\FF+\00\11\00\1B\FF\02\03\FE\F6\C3C\22\16\07\F6\CA\05\A3\FC\C5\01?\FF3\00\FF\FF\FE\FF4\00<\FF\CF\01\88\FC\09\06q\F5+\18\B2B \F6\83\03\CF\FE<\00\15\00\E6\FF\07\00\03\00\FB\FF\DF\FF\A9\00\10\FE\B9\04'\F4^?\C3\1D\FE\F3\99\06P\FC\E2\016\FF6\00\FE\FF\FF\FF/\00M\FF\A0\01\FB\FC\07\05\BF\F7\BB\10+F\BB\F9\83\01\FA\FF\95\FFh\00\C7\FF\0E\00\00\00\13\00\9F\FF(\01:\FD\00\06Z\F2\DF9s%y\F2\12\071\FC\E3\01;\FF5\00\FD\FF\00\00'\00f\FF^\01\90\FD\D2\03G\FA\C3\09HHZ\FE3\FFE\01\E2\FE\BE\00\A5\FF\16\00\FD\FF$\00m\FF\88\01\A2\FC\D0\06\8C\F1x3\F2,\9E\F1$\07N\FC\C3\01N\FF/\00\FD\FF\1E\00\86\FF\0E\01;\FE\82\02\E0\FCs\03\F6H\E9\03\AD\FC\9C\02-\FE\14\01\83\FF\1F\00\00\00\FD\FF0\00L\FF\C7\01J\FC'\07\A8\F1b,\FD3\93\F1\C4\06\AB\FC\82\01q\FF#\00\FE\FF\15\00\A8\FF\B8\00\F0\FE+\01c\FF\F6\FD,HG\0A\14\FA\EB\03\84\FDc\01d\FF'\00\00\00\FD\FF6\00:\FF\E4\012\FC\0C\07\91\F2\DD$T:t\F2\EB\05I\FD \01\A3\FF\11\00\00\00\0D\00\C9\FFa\00\A2\FF\E2\FF\AE\01k\F9\F2EJ\11\8F\F7\1D\05\F1\FC\A4\01K\FF/\00\FF\FF\FE\FF6\007\FF\E1\01U\FC\8C\06\22\F4,\1D\C0?U\F4\9B\04#\FE\9F\00\E4\FF\F9\FF\04\00\07\00\E9\FF\0F\00H\00\B9\FE\A6\03\E4\F5`B\C1\18G\F5\1A\06\81\FC\D2\01;\FF5\00\FE\FF\FF\FF3\00@\FF\C1\01\AB\FC\B7\054\F6\8E\15\0BDB\F7\DC\022\FF\04\001\00\DC\FF\09\00\02\00\04\00\C7\FF\D9\00\BF\FD8\05i\F3\96=o f\F3\CE\06?\FC\E6\016\FF6\00\FD\FF\FF\FF,\00U\FF\8B\01+\FD\A1\04\9B\F8B\0E\0FG8\FB\BE\00j\00X\FF\85\00\BB\FF\10\00\FF\FF\19\00\8C\FFM\01\FE\FCV\06\F7\F1\BF7\15(\18\F2%\074\FC\DC\01?\FF4\00\FD\FF\00\00$\00q\FFC\01\C9\FD`\03.\FB~\07\AFH-\00X\FE\BB\01\A3\FE\DD\00\99\FF\19\00\FD\FF)\00`\FF\A2\01|\FC\FB\06|\F1\151s/\81\F1\10\07g\FC\B1\01X\FF,\00\FD\FF\1B\00\91\FF\F1\00y\FE\0A\02\C3\FDs\01\DBH\07\06\C7\FB\12\03\F1\FD1\01x\FF\22\00\00\00\FD\FF2\00D\FF\D5\01:\FC*\07\E3\F1\D1)F6\C5\F1\87\06\DA\FCd\01\80\FF\1E\00\FE\FF\12\00\B3\FF\99\00.\FF\B6\006\00G\FC\90G\A4\0C1\F9Z\04N\FD|\01[\FF*\00\00\00\FD\FF6\007\FF\E6\017\FC\EB\06\0B\F35\22R<\FD\F2\84\05\8D\FD\F6\00\B8\FF\09\00\01\00\0B\00\D5\FFD\00\DD\FFw\FFg\02\14\F8\DCD\D5\13\BC\F6|\05\C5\FC\B7\01D\FF1\00\FF\FF\FE\FF5\009\FF\D9\01m\FCK\06\CD\F4\83\1A_A:\F5\0C\04{\FEl\00\FE\FF\EF\FF\05\00\05\00\F3\FF\F5\FF}\00]\FE>\04\EA\F4\D9@f\1B\93\F4b\06d\FC\DC\018\FF6\00\FE\FF\FF\FF1\00F\FF\B1\01\D3\FC]\05\01\F7\FB\12?E\83\F8*\02\9A\FF\CA\FFN\00\D1\FF\0C\00\00\00\0C\00\B1\FF\04\01v\FD\A8\05\CC\F2\AB;\18#\E0\F2\F7\065\FC\E6\018\FF6\00\FD\FF\00\00)\00^\FFt\01_\FD5\04|\F9\D8\0B\C9G\D4\FC\F0\FF\DD\00\19\FF\A4\00\AF\FF\13\00\FE\FF \00{\FFn\01\CA\FC\9D\06\B1\F1\865\AE*\CD\F1+\07?\FC\D1\01F\FF2\00\FD\FF\00\00!\00|\FF'\01\05\FE\EB\02\14\FCP\05\EAH\1B\02x\FD2\02d\FE\FA\00\8D\FF\1C\00\FD\FF-\00T\FF\B7\01^\FC\19\07\88\F1\9F.\E31~\F1\EE\06\88\FC\9A\01d\FF(\00\FD\FF\18\00\9D\FF\D3\00\B8\FE\93\01\A1\FE\8E\FF\92H=\08\E1\FA\86\03\B6\FDL\01m\FF%\00\00\00\FD\FF4\00>\FF\DF\013\FC \075\F26'x8\14\F2;\06\11\FDA\01\92\FF\17\00\FF\FF\10\00\BF\FF{\00l\FFD\00\01\01\B6\FA\C8F\13\0FQ\F8\C4\04\1B\FD\92\01R\FF-\00\FF\FF\FD\FF6\006\FF\E5\01D\FC\BD\06\97\F3\8A\1F1>\A5\F3\0F\05\DA\FD\C9\00\CF\FF\01\00\02\00\09\00\DF\FF(\00\17\00\10\FF\15\03\DD\F6\9ECl\16\F1\F5\D3\05\9F\FC\C6\01?\FF3\00\FF\FF\FE\FF4\00<\FF\CE\01\8C\FC\00\06\86\F5\E0\17\DBB?\F6q\03\D9\FE6\00\18\00\E5\FF\07\00\03\00\FC\FF\DC\FF\AF\00\07\FE\C8\04\10\F4-?\0F\1E\ED\F3\A0\06N\FC\E3\016\FF6\00\FE\FF\FF\FF.\00N\FF\9E\01\00\FD\FC\04\D7\F7u\10HF\E4\F9n\01\06\00\8E\FFk\00\C6\FF\0E\00\FF\FF\13\00\9D\FF-\013\FD\0B\06M\F2\A59\BF%m\F2\15\071\FC\E2\01;\FF5\00\FD\FF\00\00&\00h\FF[\01\96\FD\C6\03a\FA\81\09WH\8D\FE\1B\FFR\01\DB\FE\C2\00\A4\FF\16\00\FD\FF%\00l\FF\8B\01\9D\FC\D5\06\89\F153:-\9A\F1#\07Q\FC\C2\01O\FF/\00\FD\FF\1E\00\87\FF\0B\01B\FEt\02\F9\FC9\03\F5H$\04\94\FC\A9\02'\FE\18\01\82\FF\1F\00\00\00\FD\FF0\00K\FF\C9\01H\FC(\07\AD\F1\19,?4\97\F1\BE\06\B0\FC\7F\01r\FF#\00\FE\FF\15\00\A9\FF\B4\00\F7\FE\1D\01z\FF\C5\FD\1DH\89\0A\FB\F9\F8\03}\FDf\01c\FF(\00\00\00\FD\FF6\009\FF\E4\012\FC\09\07\9D\F2\92$\8F:\82\F2\E1\05P\FD\1B\01\A6\FF\10\00\00\00\0D\00\CB\FF^\00\A9\FF\D6\FF\C3\01C\F9\D7E\92\11w\F7(\05\EC\FC\A7\01J\FF/\00\FF\FF\FE\FF6\007\FF\E0\01W\FC\85\064\F4\E0\1C\F0?m\F4\8C\04,\FE\99\00\E7\FF\F8\FF\04\00\06\00\EA\FF\0C\00N\00\AF\FE\B8\03\C7\F58B\0C\192\F5#\06}\FC\D3\01:\FF5\00\FE\FF\FF\FF2\00A\FF\C0\01\AF\FC\AD\05J\F6D\15/Dd\F7\C9\02=\FF\FE\FF4\00\DB\FF\09\00\02\00\05\00\C5\FF\DE\00\B7\FDE\05V\F3a=\BA V\F3\D3\06>\FC\E6\016\FF6\00\FD\FF\FF\FF,\00V\FF\88\011\FD\95\04\B4\F8\FC\0D&Gd\FB\A7\00w\00Q\FF\89\00\BA\FF\11\00\FF\FF\1A\00\8A\FFQ\01\F8\FC^\06\ED\F1\827`(\0E\F2&\075\FC\DB\01@\FF4\00\FD\FF\00\00#\00r\FF@\01\D0\FDS\03G\FB?\07\B8Hb\00?\FE\C8\01\9C\FE\E0\00\98\FF\19\00\FD\FF)\00_\FF\A5\01x\FC\FF\06}\F1\CF0\B8/\80\F1\0D\07j\FC\AE\01Y\FF+\00\FD\FF\1B\00\93\FF\ED\00\80\FE\FD\01\DC\FD<\01\D5HE\06\AE\FB\1F\03\EA\FD4\01w\FF\22\00\00\00\FD\FF3\00C\FF\D6\019\FC*\07\EB\F1\87)\856\CC\F1\7F\06\E0\FC`\01\82\FF\1D\00\FE\FF\12\00\B5\FF\96\005\FF\A9\00M\00\19\FC|G\E8\0C\18\F9f\04H\FD~\01Z\FF+\00\00\00\FD\FF6\007\FF\E6\018\FC\E6\06\19\F3\EA!\8A<\0E\F3x\05\96\FD\F1\00\BB\FF\08\00\01\00\0B\00\D6\FFA\00\E4\FFk\FF{\02\F0\F7\BAD\1E\14\A5\F6\86\05\C1\FC\B9\01D\FF2\00\FF\FF\FE\FF5\009\FF\D8\01p\FCC\06\E1\F48\1A\8CAU\F5\FC\03\85\FEf\00\01\00\EE\FF\06\00\05\00\F4\FF\F2\FF\83\00S\FEN\04\D0\F4\AB@\B2\1B\7F\F4i\06b\FC\DD\018\FF6\00\FE\FF\FF\FF0\00G\FF\AF\01\D8\FCR\05\19\F7\B2\12\\E\A9\F8\16\02\A6\FF\C3\FFQ\00\D0\FF\0C\00\00\00\0D\00\AF\FF\09\01n\FD\B4\05\BC\F2s;d#\D2\F2\FB\064\FC\E6\018\FF6\00\FD\FF\00\00)\00_\FFq\01e\FD)\04\96\F9\95\0B\DCG\03\FD\D9\FF\EA\00\12\FF\A7\00\AE\FF\14\00\FE\FF \00y\FFr\01\C4\FC\A4\06\AB\F1F5\F7*\C6\F1*\07@\FC\CF\01G\FF1\00\FD\FF\00\00 \00}\FF$\01\0C\FE\DE\02.\FC\13\05\ECHT\02^\FD?\02]\FE\FE\00\8C\FF\1C\00\FD\FF-\00S\FF\BA\01[\FC\1B\07\8B\F1X.&2\80\F1\EA\06\8C\FC\97\01f\FF'\00\FD\FF\17\00\9E\FF\CF\00\BF\FE\86\01\BA\FEZ\FF\86H}\08\C7\FA\93\03\B0\FDO\01l\FF%\00\00\00\FD\FF5\00=\FF\DF\012\FC\1E\07@\F2\EB&\B58\1F\F22\06\18\FD=\01\94\FF\16\00\FF\FF\0F\00\C0\FFx\00s\FF8\00\17\01\8B\FA\AFFY\0F9\F8\CF\04\15\FD\95\01Q\FF-\00\FF\FF\FD\FF6\006\FF\E5\01F\FC\B8\06\A8\F3?\1Fd>\BA\F3\01\05\E2\FD\C4\00\D2\FF\00\00\02\00\08\00\E1\FF%\00\1D\00\05\FF(\03\BD\F6wC\B6\16\DC\F5\DD\05\9B\FC\C8\01>\FF3\00\FF\FF\FE\FF4\00=\FF\CC\01\8F\FC\F8\05\9B\F5\96\17\02C^\F6_\03\E4\FE0\00\1B\00\E4\FF\08\00\03\00\FD\FF\D9\FF\B4\00\FD\FD\D7\04\FA\F3\FC>[\1E\DB\F3\A6\06L\FC\E3\016\FF6\00\FE\FF\FF\FF.\00N\FF\9C\01\05\FD\F1\04\F0\F7-\10aF\0D\FAX\01\13\00\87\FFn\00\C4\FF\0E\00\FF\FF\14\00\9B\FF1\01,\FD\15\06A\F2j9\0A&a\F2\17\071\FC\E2\01;\FF5\00\FD\FF\00\00&\00i\FFX\01\9D\FD\B9\03{\FA@\09cH\BF\FE\03\FF_\01\D4\FE\C5\00\A2\FF\16\00\FD\FF%\00j\FF\8E\01\99\FC\DB\06\86\F1\F22\82-\96\F1!\07S\FC\C0\01P\FF.\00\FD\FF\1D\00\88\FF\07\01I\FEg\02\13\FD\FF\02\F4H_\04z\FC\B6\02 \FE\1B\01\81\FF\1F\00\00\00\FD\FF0\00J\FF\CA\01F\FC)\07\B3\F1\D1+\814\9C\F1\B8\06\B5\FC|\01t\FF\22\00\FE\FF\15\00\AA\FF\B1\00\FE\FE\10\01\92\FF\94\FD\0DH\CB\0A\E2\F9\04\04w\FDi\01b\FF(\00\00\00\FD\FF6\009\FF\E5\012\FC\06\07\AA\F2F$\C8:\90\F2\D6\05W\FD\17\01\A8\FF\0F\00\00\00\0D\00\CC\FFZ\00\AF\FF\CA\FF\D8\01\1C\F9\B8E\DA\11`\F73\05\E7\FC\A9\01J\FF0\00\FF\FF\FE\FF6\007\FF\DF\01Z\FC~\06G\F4\94\1C\1F@\85\F4}\046\FE\93\00\EA\FF\F7\FF\04\00\06\00\EB\FF\09\00T\00\A4\FE\C9\03\AA\F5\0CBV\19\1E\F5+\06z\FC\D4\01:\FF5\00\FE\FF\FF\FF2\00B\FF\BE\01\B4\FC\A4\05a\F6\FB\14SD\86\F7\B6\02I\FF\F7\FF7\00\D9\FF\0A\00\01\00\06\00\C2\FF\E3\00\AE\FDR\05D\F3*=\06!G\F3\D8\06<\FC\E6\016\FF6\00\FD\FF\00\00+\00W\FF\86\016\FD\89\04\CD\F8\B7\0D=G\91\FB\91\00\83\00J\FF\8C\00\B9\FF\11\00\FE\FF\1B\00\88\FFU\01\F2\FCg\06\E4\F1D7\AA(\05\F2'\076\FC\DA\01A\FF3\00\FD\FF\00\00#\00s\FF=\01\D6\FDF\03a\FB\00\07\BFH\98\00&\FE\D5\01\95\FE\E3\00\96\FF\1A\00\FD\FF*\00]\FF\A7\01u\FC\03\07}\F1\8A0\FF/~\F1\0A\07n\FC\AC\01Z\FF+\00\FD\FF\1A\00\94\FF\EA\00\87\FE\F0\01\F5\FD\05\01\CEH\83\06\94\FB,\03\E4\FD7\01v\FF\22\00\00\00\FD\FF3\00B\FF\D7\018\FC)\07\F3\F1>)\C66\D4\F1w\06\E6\FC\\\01\84\FF\1C\00\FE\FF\12\00\B6\FF\93\00<\FF\9D\00c\00\EB\FBiG-\0D\FF\F8r\04B\FD\81\01Y\FF+\00\00\00\FD\FF6\007\FF\E6\01:\FC\E2\06(\F3\9E!\C0<\1F\F3l\05\9E\FD\ED\00\BD\FF\07\00\01\00\0A\00\D7\FF>\00\EA\FF`\FF\8F\02\CD\F7\99Dh\14\8E\F6\90\05\BC\FC\BA\01C\FF2\00\FF\FF\FE\FF5\009\FF\D7\01s\FC;\06\F5\F4\ED\19\B7Aq\F5\EB\03\90\FE`\00\04\00\ED\FF\06\00\04\00\F5\FF\EF\FF\88\00I\FE]\04\B7\F4}@\FD\1Bl\F4p\06_\FC\DE\017\FF6\00\FE\FF\FF\FF0\00H\FF\AD\01\DD\FCH\050\F7k\12}E\CF\F8\01\02\B2\FF\BD\FFT\00\CE\FF\0C\00\00\00\0E\00\AC\FF\0E\01f\FD\BF\05\AD\F2;;\B0#\C4\F2\FF\063\FC\E5\018\FF6\00\FD\FF\00\00)\00`\FFn\01k\FD\1D\04\AF\F9Q\0B\ECG3\FD\C1\FF\F7\00\0C\FF\AA\00\AD\FF\14\00\FE\FF!\00w\FFu\01\BF\FC\AB\06\A6\F1\055@+\BF\F1*\07B\FC\CE\01H\FF1\00\FD\FF\00\00 \00~\FF!\01\12\FE\D1\02G\FC\D7\04\F0H\8D\02E\FDM\02V\FE\01\01\8B\FF\1D\00\FD\FF.\00R\FF\BC\01X\FC\1D\07\8E\F1\11.k2\81\F1\E5\06\90\FC\94\01g\FF&\00\FD\FF\17\00\A0\FF\CC\00\C6\FEy\01\D2\FE&\FF|H\BE\08\AE\FA\A0\03\A9\FDR\01k\FF%\00\00\00\FD\FF5\00<\FF\E0\012\FC\1C\07K\F2\A0&\F28*\F2(\06\1F\FD9\01\96\FF\16\00\FF\FF\0F\00\C2\FFu\00z\FF+\00-\01a\FA\97F\A0\0F \F8\DA\04\10\FD\97\01P\FF.\00\FF\FF\FE\FF6\006\FF\E4\01H\FC\B2\06\B9\F3\F3\1E\98>\CF\F3\F3\04\EB\FD\BF\00\D4\FF\FF\FF\03\00\08\00\E2\FF!\00#\00\FA\FE:\03\9D\F6PC\00\17\C6\F5\E6\05\97\FC\C9\01>\FF4\00\FE\FF\FE\FF4\00=\FF\CB\01\93\FC\EF\05\B0\F5K\17*C}\F6M\03\EF\FE*\00\1E\00\E3\FF\08\00\03\00\FE\FF\D7\FF\BA\00\F4\FD\E5\04\E4\F3\CA>\A7\1E\CA\F3\AC\06J\FC\E4\016\FF6\00\FE\FF\FF\FF.\00O\FF\99\01\0B\FD\E6\04\08\F8\E7\0F|F7\FAB\01\1F\00\81\FFq\00\C3\FF\0F\00\FF\FF\15\00\98\FF5\01%\FD\1E\065\F2.9U&V\F2\1A\071\FC\E1\01<\FF5\00\FD\FF\00\00&\00j\FFU\01\A3\FD\AD\03\94\FA\FF\08pH\F3\FE\EA\FEl\01\CD\FE\C9\00\A1\FF\17\00\FD\FF&\00i\FF\91\01\94\FC\E0\06\84\F1\AF2\CA-\92\F1\1F\07V\FC\BE\01Q\FF.\00\FD\FF\1D\00\8A\FF\04\01P\FEZ\02,\FD\C6\02\F2H\9B\04a\FC\C3\02\19\FE\1E\01\7F\FF \00\00\00\FD\FF1\00I\FF\CC\01D\FC)\07\B9\F1\89+\C34\A0\F1\B1\06\BA\FCy\01v\FF!\00\FE\FF\14\00\AC\FF\AE\00\05\FF\03\01\AA\FFc\FD\FDG\0E\0B\C8\F9\11\04q\FDl\01a\FF(\00\00\00\FD\FF6\009\FF\E5\013\FC\03\07\B7\F2\FC#\03;\9E\F2\CB\05_\FD\12\01\AA\FF\0E\00\00\00\0C\00\CD\FFW\00\B6\FF\BE\FF\ED\01\F5\F8\9BE\22\12H\F7=\05\E2\FC\AB\01I\FF0\00\FF\FF\FE\FF6\007\FF\DF\01\\\FCx\06Z\F4I\1CN@\9E\F4m\04?\FE\8E\00\ED\FF\F6\FF\04\00\06\00\EC\FF\06\00Z\00\9A\FE\DA\03\8D\F5\E1A\A1\19\09\F53\06w\FC\D6\01:\FF5\00\FE\FF\FF\FF2\00B\FF\BC\01\B8\FC\9A\05w\F6\B1\14wD\A9\F7\A2\02T\FF\F1\FF:\00\D8\FF\0A\00\01\00\07\00\C0\FF\E8\00\A6\FD_\051\F3\F6<R!7\F3\DD\06;\FC\E6\016\FF6\00\FD\FF\00\00+\00X\FF\83\01<\FD~\04\E6\F8r\0DRG\BE\FBz\00\90\00C\FF\8F\00\B7\FF\11\00\FE\FF\1C\00\86\FFY\01\EC\FCo\06\DC\F1\047\F3(\FC\F1(\077\FC\D8\01A\FF3\00\FD\FF\00\00#\00t\FF:\01\DD\FD9\03{\FB\C1\06\C7H\CF\00\0D\FE\E3\01\8E\FE\E7\00\95\FF\1A\00\FD\FF*\00\\\FF\AA\01q\FC\07\07~\F1D0D0~\F1\07\07q\FC\AA\01\\\FF*\00\FD\FF\1A\00\95\FF\E7\00\8E\FE\E3\01\0D\FE\CF\00\C7H\C1\06{\FB9\03\DD\FD:\01t\FF#\00\00\00\FD\FF3\00A\FF\D8\017\FC(\07\FC\F1\F3(\047\DC\F1o\06\EC\FCY\01\86\FF\1C\00\FE\FF\11\00\B7\FF\8F\00C\FF\90\00z\00\BE\FBRGr\0D\E6\F8~\04<\FD\83\01X\FF+\00\00\00\FD\FF6\006\FF\E6\01;\FC\DD\067\F3R!\F6<1\F3_\05\A6\FD\E8\00\C0\FF\07\00\01\00\0A\00\D8\FF:\00\F1\FFT\FF\A2\02\A9\F7wD\B1\14w\F6\9A\05\B8\FC\BC\01B\FF2\00\FF\FF\FE\FF5\00:\FF\D6\01w\FC3\06\09\F5\A1\19\E1A\8D\F5\DA\03\9A\FEZ\00\06\00\EC\FF\06\00\04\00\F6\FF\ED\FF\8E\00?\FEm\04\9E\F4N@I\1CZ\F4x\06\\\FC\DF\017\FF6\00\FE\FF\FF\FF0\00I\FF\AB\01\E2\FC=\05H\F7\22\12\9BE\F5\F8\ED\01\BE\FF\B6\FFW\00\CD\FF\0C\00\00\00\0E\00\AA\FF\12\01_\FD\CB\05\9E\F2\03;\FC#\B7\F2\03\073\FC\E5\019\FF6\00\FD\FF\00\00(\00a\FFl\01q\FD\11\04\C8\F9\0E\0B\FDGc\FD\AA\FF\03\01\05\FF\AE\00\AC\FF\14\00\FE\FF!\00v\FFy\01\BA\FC\B1\06\A0\F1\C34\89+\B9\F1)\07D\FC\CC\01I\FF1\00\FD\FF\00\00 \00\7F\FF\1E\01\19\FE\C3\02a\FC\9B\04\F2H\C6\02,\FDZ\02P\FE\04\01\8A\FF\1D\00\FD\FF.\00Q\FF\BE\01V\FC\1F\07\92\F1\CA-\AF2\84\F1\E0\06\94\FC\91\01i\FF&\00\FD\FF\17\00\A1\FF\C9\00\CD\FEl\01\EA\FE\F3\FEpH\FF\08\94\FA\AD\03\A3\FDU\01j\FF&\00\00\00\FD\FF5\00<\FF\E1\011\FC\1A\07V\F2U&.95\F2\1E\06%\FD5\01\98\FF\15\00\FF\FF\0F\00\C3\FFq\00\81\FF\1F\00B\017\FA|F\E7\0F\08\F8\E6\04\0B\FD\99\01O\FF.\00\FF\FF\FE\FF6\006\FF\E4\01J\FC\AC\06\CA\F3\A7\1E\CA>\E4\F3\E5\04\F4\FD\BA\00\D7\FF\FE\FF\03\00\08\00\E3\FF\1E\00*\00\EF\FEM\03}\F6*CK\17\B0\F5\EF\05\93\FC\CB\01=\FF4\00\FE\FF\FE\FF4\00>\FF\C9\01\97\FC\E6\05\C6\F5\00\17PC\9D\F6:\03\FA\FE#\00!\00\E2\FF\08\00\03\00\FF\FF\D4\FF\BF\00\EB\FD\F3\04\CF\F3\98>\F3\1E\B9\F3\B2\06H\FC\E4\016\FF6\00\FE\FF\FF\FF.\00P\FF\97\01\10\FD\DA\04 \F8\A0\0F\97Fa\FA-\01+\00z\FFu\00\C2\FF\0F\00\FF\FF\16\00\96\FF9\01\1F\FD(\06*\F2\F28\A0&K\F2\1C\072\FC\E0\01<\FF5\00\FD\FF\00\00%\00k\FFR\01\A9\FD\A0\03\AE\FA\BE\08|H&\FF\D2\FEy\01\C6\FE\CC\00\A0\FF\17\00\FD\FF&\00g\FF\94\01\90\FC\E5\06\81\F1k2\11.\8E\F1\1D\07X\FC\BC\01R\FF.\00\FD\FF\1D\00\8B\FF\01\01V\FEM\02E\FD\8D\02\F0H\D7\04G\FC\D1\02\12\FE!\01~\FF \00\00\00\FD\FF1\00H\FF\CE\01B\FC*\07\BF\F1@+\055\A6\F1\AB\06\BF\FCu\01w\FF!\00\FE\FF\14\00\AD\FF\AA\00\0C\FF\F7\00\C1\FF3\FD\ECGQ\0B\AF\F9\1D\04k\FDn\01`\FF)\00\00\00\FD\FF6\008\FF\E5\013\FC\FF\06\C4\F2\B0#;;\AD\F2\BF\05f\FD\0E\01\AC\FF\0E\00\00\00\0C\00\CE\FFT\00\BD\FF\B2\FF\01\02\CF\F8}Ek\120\F7H\05\DD\FC\AD\01H\FF0\00\FF\FF\FE\FF6\007\FF\DE\01_\FCp\06l\F4\FD\1B}@\B7\F4]\04I\FE\88\00\EF\FF\F5\FF\04\00\06\00\ED\FF\04\00`\00\90\FE\EB\03q\F5\B7A\ED\19\F5\F4;\06s\FC\D7\019\FF5\00\FE\FF\FF\FF2\00C\FF\BA\01\BC\FC\90\05\8E\F6h\14\99D\CD\F7\8F\02`\FF\EA\FF>\00\D7\FF\0A\00\01\00\07\00\BD\FF\ED\00\9E\FDl\05\1F\F3\C0<\9E!(\F3\E2\06:\FC\E6\017\FF6\00\FD\FF\00\00+\00Y\FF\81\01B\FDr\04\FF\F8-\0DiG\EB\FBc\00\9D\00<\FF\93\00\B6\FF\12\00\FE\FF\1C\00\84\FF\\\01\E6\FCw\06\D4\F1\C66>)\F3\F1)\078\FC\D7\01B\FF3\00\FD\FF\00\00\22\00v\FF7\01\E4\FD,\03\94\FB\83\06\CEH\05\01\F5\FD\F0\01\87\FE\EA\00\94\FF\1A\00\FD\FF+\00Z\FF\AC\01n\FC\0A\07~\F1\FF/\8A0}\F1\03\07u\FC\A7\01]\FF*\00\FD\FF\1A\00\96\FF\E3\00\95\FE\D5\01&\FE\98\00\BFH\00\07a\FBF\03\D6\FD=\01s\FF#\00\00\00\FD\FF3\00A\FF\DA\016\FC'\07\05\F2\AA(D7\E4\F1g\06\F2\FCU\01\88\FF\1B\00\FE\FF\11\00\B9\FF\8C\00J\FF\83\00\91\00\91\FB=G\B7\0D\CD\F8\89\046\FD\86\01W\FF+\00\00\00\FD\FF6\006\FF\E6\01<\FC\D8\06G\F3\06!*=D\F3R\05\AE\FD\E3\00\C2\FF\06\00\01\00\0A\00\D9\FF7\00\F7\FFI\FF\B6\02\86\F7SD\FB\14a\F6\A4\05\B4\FC\BE\01B\FF2\00\FF\FF\FE\FF5\00:\FF\D4\01z\FC+\06\1E\F5V\19\0CB\AA\F5\C9\03\A4\FET\00\09\00\EB\FF\06\00\04\00\F7\FF\EA\FF\93\006\FE}\04\85\F4\1F@\94\1CG\F4~\06Z\FC\DF\017\FF6\00\FE\FF\FF\FF0\00J\FF\A9\01\E7\FC3\05`\F7\DA\11\B8E\1C\F9\D8\01\CA\FF\AF\FFZ\00\CC\FF\0D\00\00\00\0F\00\A8\FF\17\01W\FD\D6\05\90\F2\C8:F$\AA\F2\06\072\FC\E5\019\FF6\00\FD\FF\00\00(\00b\FFi\01w\FD\04\04\E2\F9\CB\0A\0DH\94\FD\92\FF\10\01\FE\FE\B1\00\AA\FF\15\00\FE\FF\22\00t\FF|\01\B5\FC\B8\06\9C\F1\814\D1+\B3\F1)\07F\FC\CA\01J\FF0\00\FD\FF\00\00\1F\00\81\FF\1B\01 \FE\B6\02z\FC_\04\F4H\FF\02\13\FDg\02I\FE\07\01\88\FF\1D\00\FD\FF.\00P\FF\C0\01S\FC!\07\96\F1\82-\F22\86\F1\DB\06\99\FC\8E\01j\FF%\00\FD\FF\16\00\A2\FF\C5\00\D4\FE_\01\03\FF\BF\FEcH@\09{\FA\B9\03\9D\FDX\01i\FF&\00\00\00\FD\FF5\00;\FF\E2\011\FC\17\07a\F2\0A&j9A\F2\15\06,\FD1\01\9B\FF\14\00\FF\FF\0E\00\C4\FFn\00\87\FF\13\00X\01\0D\FAaF-\10\F0\F7\F1\04\05\FD\9C\01N\FF.\00\FF\FF\FE\FF6\006\FF\E3\01L\FC\A6\06\DB\F3[\1E\FC>\FA\F3\D7\04\FD\FD\B4\00\D9\FF\FD\FF\03\00\08\00\E4\FF\1B\000\00\E4\FE_\03^\F6\02C\96\17\9B\F5\F8\05\8F\FC\CC\01=\FF4\00\FE\FF\FF\FF3\00>\FF\C8\01\9B\FC\DD\05\DC\F5\B6\16wC\BD\F6(\03\05\FF\1D\00%\00\E1\FF\08\00\02\00\00\00\D2\FF\C4\00\E2\FD\01\05\BA\F3d>?\1F\A8\F3\B8\06F\FC\E5\016\FF6\00\FD\FF\FF\FF-\00Q\FF\95\01\15\FD\CF\049\F8Y\0F\AFF\8B\FA\17\018\00s\FFx\00\C0\FF\0F\00\FF\FF\16\00\94\FF=\01\18\FD2\06\1F\F2\B58\EB&@\F2\1E\072\FC\DF\01=\FF5\00\FD\FF\00\00%\00l\FFO\01\B0\FD\93\03\C7\FA}\08\86HZ\FF\BA\FE\86\01\BF\FE\CF\00\9E\FF\17\00\FD\FF'\00f\FF\97\01\8C\FC\EA\06\80\F1&2X.\8B\F1\1B\07[\FC\BA\01S\FF-\00\FD\FF\1C\00\8C\FF\FE\00]\FE?\02^\FDT\02\ECH\13\05.\FC\DE\02\0C\FE$\01}\FF \00\00\00\FD\FF1\00G\FF\CF\01@\FC*\07\C6\F1\F7*F5\AB\F1\A4\06\C4\FCr\01y\FF \00\FE\FF\14\00\AE\FF\A7\00\12\FF\EA\00\D9\FF\03\FD\DCG\95\0B\96\F9)\04e\FDq\01_\FF)\00\00\00\FD\FF6\008\FF\E6\014\FC\FB\06\D2\F2d#s;\BC\F2\B4\05n\FD\09\01\AF\FF\0D\00\00\00\0C\00\D0\FFQ\00\C3\FF\A6\FF\16\02\A9\F8\\E\B2\12\19\F7R\05\D8\FC\AF\01G\FF0\00\FF\FF\FE\FF6\008\FF\DD\01b\FCi\06\7F\F4\B2\1B\AB@\D0\F4N\04S\FE\83\00\F2\FF\F4\FF\05\00\06\00\EE\FF\01\00f\00\85\FE\FC\03U\F5\8CA8\1A\E1\F4C\06p\FC\D8\019\FF5\00\FE\FF\FF\FF2\00D\FF\B9\01\C1\FC\86\05\A5\F6\1E\14\BAD\F0\F7{\02k\FF\E4\FFA\00\D6\FF\0B\00\01\00\08\00\BB\FF\F1\00\96\FDx\05\0E\F3\8A<\EA!\19\F3\E6\068\FC\E6\017\FF6\00\FD\FF\00\00+\00Z\FF~\01H\FDf\04\18\F9\E8\0C|G\19\FCM\00\A9\005\FF\96\00\B5\FF\12\00\FE\FF\1D\00\82\FF`\01\E0\FC\7F\06\CC\F1\856\87)\EB\F1*\079\FC\D6\01C\FF3\00\FD\FF\00\00\22\00w\FF4\01\EA\FD\1F\03\AE\FBE\06\D5H<\01\DC\FD\FD\01\80\FE\ED\00\93\FF\1B\00\FD\FF+\00Y\FF\AE\01j\FC\0D\07\80\F1\B8/\CF0}\F1\FF\06x\FC\A5\01_\FF)\00\FD\FF\19\00\98\FF\E0\00\9C\FE\C8\01?\FEb\00\B8H?\07G\FBS\03\D0\FD@\01r\FF#\00\00\00\FD\FF4\00@\FF\DB\015\FC&\07\0E\F2`(\827\ED\F1^\06\F8\FCQ\01\8A\FF\1A\00\FF\FF\11\00\BA\FF\89\00Q\FFw\00\A7\00d\FB&G\FC\0D\B4\F8\95\041\FD\88\01V\FF,\00\FF\FF\FD\FF6\006\FF\E6\01>\FC\D3\06V\F3\BA a=V\F3E\05\B7\FD\DE\00\C5\FF\05\00\02\00\09\00\DB\FF4\00\FE\FF=\FF\C9\02d\F7/DD\15J\F6\AD\05\AF\FC\C0\01A\FF2\00\FF\FF\FE\FF5\00:\FF\D3\01}\FC#\062\F5\0C\198B\C7\F5\B8\03\AF\FEN\00\0C\00\EA\FF\06\00\04\00\F8\FF\E7\FF\99\00,\FE\8C\04m\F4\F0?\E0\1C4\F4\85\06W\FC\E0\017\FF6\00\FE\FF\FF\FF/\00J\FF\A7\01\EC\FC(\05w\F7\92\11\D7EC\F9\C3\01\D6\FF\A9\FF^\00\CB\FF\0D\00\00\00\10\00\A6\FF\1B\01P\FD\E1\05\82\F2\8F:\92$\9D\F2\09\072\FC\E4\019\FF6\00\FD\FF\00\00(\00c\FFf\01}\FD\F8\03\FB\F9\89\0A\1DH\C5\FDz\FF\1D\01\F7\FE\B4\00\A9\FF\15\00\FE\FF#\00r\FF\7F\01\B0\FC\BE\06\97\F1?4\19,\AD\F1(\07H\FC\C9\01K\FF0\00\FD\FF\00\00\1F\00\82\FF\18\01'\FE\A9\02\94\FC$\04\F5H9\03\F9\FCt\02B\FE\0B\01\87\FF\1E\00\FD\FF/\00O\FF\C2\01Q\FC#\07\9A\F1:-53\89\F1\D5\06\9D\FC\8B\01l\FF%\00\FD\FF\16\00\A4\FF\C2\00\DB\FER\01\1B\FF\8D\FEWH\81\09a\FA\C6\03\96\FD[\01h\FF&\00\00\00\FD\FF5\00;\FF\E2\011\FC\15\07m\F2\BF%\A59M\F2\0B\063\FD-\01\9D\FF\13\00\FF\FF\0E\00\C6\FFk\00\8E\FF\06\00n\01\E4\F9HFu\10\D7\F7\FC\04\00\FD\9E\01N\FF.\00\FF\FF\FE\FF6\006\FF\E3\01N\FC\A0\06\ED\F3\0F\1E-?\10\F4\C8\04\07\FE\AF\00\DC\FF\FC\FF\03\00\07\00\E5\FF\18\006\00\D9\FEq\03?\F6\DBB\E0\17\86\F5\00\06\8C\FC\CE\01<\FF4\00\FE\FF\FF\FF3\00?\FF\C6\01\9F\FC\D3\05\F1\F5l\16\9EC\DD\F6\15\03\10\FF\17\00(\00\DF\FF\09\00\02\00\01\00\CF\FF\C9\00\DA\FD\0F\05\A5\F31>\8A\1F\97\F3\BD\06D\FC\E5\016\FF6\00\FD\FF\FF\FF-\00R\FF\92\01\1B\FD\C4\04Q\F8\13\0F\C8F\B6\FA\01\01D\00l\FF{\00\BF\FF\10\00\FF\FF\17\00\92\FFA\01\11\FD;\06\14\F2x86'5\F2 \073\FC\DF\01>\FF4\00\FD\FF\00\00%\00m\FFL\01\B6\FD\86\03\E1\FA=\08\92H\8E\FF\A1\FE\93\01\B8\FE\D3\00\9D\FF\18\00\FD\FF(\00d\FF\9A\01\88\FC\EE\06~\F1\E31\9F.\88\F1\19\07^\FC\B7\01T\FF-\00\FD\FF\1C\00\8D\FF\FA\00d\FE2\02x\FD\1B\02\EAHP\05\14\FC\EB\02\05\FE'\01|\FF!\00\00\00\FD\FF2\00F\FF\D1\01?\FC+\07\CD\F1\AE*\865\B1\F1\9D\06\CA\FCn\01{\FF \00\FE\FF\13\00\AF\FF\A4\00\19\FF\DD\00\F0\FF\D4\FC\C9G\D8\0B|\F95\04_\FDt\01^\FF)\00\00\00\FD\FF6\008\FF\E6\015\FC\F7\06\E0\F2\18#\AB;\CC\F2\A8\05v\FD\04\01\B1\FF\0C\00\00\00\0C\00\D1\FFN\00\CA\FF\9A\FF*\02\83\F8?E\FB\12\01\F7]\05\D3\FC\B1\01F\FF1\00\FF\FF\FE\FF6\008\FF\DC\01d\FCb\06\93\F4f\1B\D9@\EA\F4>\04]\FE}\00\F5\FF\F3\FF\05\00\05\00\EF\FF\FE\FFl\00{\FE\0C\04:\F5_A\83\1A\CD\F4K\06m\FC\D9\019\FF5\00\FE\FF\FF\FF1\00D\FF\B7\01\C5\FC|\05\BC\F6\D5\13\DCD\14\F8g\02w\FF\DD\FFD\00\D5\FF\0B\00\01\00\09\00\B8\FF\F6\00\8D\FD\84\05\FD\F2R<5\22\0B\F3\EB\067\FC\E6\017\FF6\00\FD\FF\00\00*\00[\FF|\01N\FDZ\041\F9\A4\0C\90GG\FC6\00\B6\00.\FF\99\00\B3\FF\12\00\FE\FF\1E\00\80\FFd\01\DA\FC\87\06\C5\F1F6\D1)\E3\F1*\07:\FC\D5\01D\FF2\00\FD\FF\00\00\22\00x\FF1\01\F1\FD\12\03\C7\FB\07\06\DBHs\01\C3\FD\0A\02y\FE\F1\00\91\FF\1B\00\FD\FF,\00X\FF\B1\01g\FC\10\07\81\F1s/\151|\F1\FB\06|\FC\A2\01`\FF)\00\FD\FF\19\00\99\FF\DD\00\A3\FE\BB\01X\FE-\00\AFH~\07.\FB`\03\C9\FDC\01q\FF$\00\00\00\FD\FF4\00?\FF\DC\014\FC%\07\18\F2\15(\BF7\F7\F1V\06\FE\FCM\01\8C\FF\19\00\FF\FF\10\00\BB\FF\85\00X\FFj\00\BE\008\FB\0FGB\0E\9B\F8\A1\04+\FD\8B\01U\FF,\00\FF\FF\FD\FF6\006\FF\E6\01?\FC\CE\06f\F3o \96=i\F38\05\BF\FD\D9\00\C7\FF\04\00\02\00\09\00\DC\FF1\00\04\002\FF\DC\02B\F7\0BD\8E\154\F6\B7\05\AB\FC\C1\01@\FF3\00\FF\FF\FE\FF5\00;\FF\D2\01\81\FC\1A\06G\F5\C1\18`B\E4\F5\A6\03\B9\FEH\00\0F\00\E9\FF\07\00\04\00\F9\FF\E4\FF\9F\00#\FE\9B\04U\F4\C0?,\1D\22\F4\8C\06U\FC\E1\017\FF6\00\FE\FF\FF\FF/\00K\FF\A4\01\F1\FC\1D\05\8F\F7J\11\F2Ek\F9\AE\01\E2\FF\A2\FFa\00\C9\FF\0D\00\00\00\11\00\A3\FF \01I\FD\EB\05t\F2T:\DD$\91\F2\0C\072\FC\E4\01:\FF6\00\FD\FF\00\00'\00d\FFc\01\84\FD\EB\03\14\FAG\0A,H\F6\FDc\FF+\01\F0\FE\B8\00\A8\FF\15\00\FE\FF#\00q\FF\82\01\AB\FC\C4\06\93\F1\FD3b,\A8\F1'\07J\FC\C7\01L\FF0\00\FD\FF\00\00\1F\00\83\FF\14\01-\FE\9C\02\AD\FC\E9\03\F6Hs\03\E0\FC\82\02;\FE\0E\01\86\FF\1E\00\FD\FF/\00N\FF\C3\01N\FC$\07\9E\F1\F2,x3\8C\F1\D0\06\A2\FC\88\01m\FF$\00\FD\FF\16\00\A5\FF\BE\00\E2\FEE\013\FFZ\FEHH\C3\09G\FA\D2\03\90\FD^\01f\FF'\00\00\00\FD\FF5\00;\FF\E3\011\FC\12\07y\F2s%\DF9Z\F2\00\06:\FD(\01\9F\FF\13\00\00\00\0E\00\C7\FFh\00\95\FF\FA\FF\83\01\BB\F9+F\BB\10\BF\F7\07\05\FB\FC\A0\01M\FF/\00\FF\FF\FE\FF6\006\FF\E2\01P\FC\99\06\FE\F3\C3\1D^?'\F4\B9\04\10\FE\A9\00\DF\FF\FB\FF\03\00\07\00\E6\FF\15\00<\00\CF\FE\83\03 \F6\B2B+\18q\F5\09\06\88\FC\CF\01<\FF4\00\FE\FF\FF\FF3\00?\FF\C5\01\A3\FC\CA\05\07\F6\22\16\C3C\FE\F6\02\03\1B\FF\11\00+\00\DE\FF\09\00\02\00\02\00\CC\FF\CE\00\D1\FD\1D\05\91\F3\FE=\D7\1F\87\F3\C3\06B\FC\E5\016\FF6\00\FD\FF\FF\FF-\00S\FF\90\01 \FD\B8\04j\F8\CD\0E\E1F\E1\FA\EB\00Q\00e\FF\7F\00\BE\FF\10\00\FF\FF\18\00\90\FFE\01\0B\FDD\06\0A\F2;8\80'+\F2\22\073\FC\DE\01>\FF4\00\FD\FF\00\00$\00n\FFI\01\BC\FDz\03\FA\FA\FD\07\9CH\C3\FF\89\FE\A1\01\B1\FE\D6\00\9C\FF\18\00\FD\FF(\00c\FF\9D\01\84\FC\F3\06}\F1\9E1\E6.\85\F1\16\07a\FC\B5\01U\FF-\00\FD\FF\1C\00\8F\FF\F7\00k\FE%\02\91\FD\E3\01\E5H\8D\05\FB\FB\F8\02\FE\FD+\01z\FF!\00\00\00\FD\FF2\00E\FF\D2\01=\FC+\07\D4\F1d*\C65\B7\F1\96\06\CF\FCk\01}\FF\1F\00\FE\FF\13\00\B1\FF\A0\00 \FF\D0\00\07\00\A4\FC\B6G\1C\0Cc\F9B\04Y\FDv\01]\FF*\00\00\00\FD\FF6\007\FF\E6\015\FC\F3\06\EE\F2\CD\22\E4;\DC\F2\9C\05~\FD\00\01\B4\FF\0B\00\01\00\0B\00\D2\FFJ\00\D0\FF\8E\FF?\02^\F8\1EED\13\EA\F6g\05\CF\FC\B3\01F\FF1\00\FF\FF\FE\FF6\008\FF\DB\01g\FCZ\06\A6\F4\1B\1B\07A\04\F5-\04g\FEw\00\F8\FF\F2\FF\05\00\05\00\F0\FF\FB\FFq\00q\FE\1D\04\1F\F52A\CE\1A\BA\F4S\06j\FC\DA\018\FF5\00\FE\FF\FF\FF1\00E\FF\B5\01\CA\FCr\05\D3\F6\8D\13\FDD9\F8S\02\82\FF\D7\FFG\00\D3\FF\0B\00\01\00\0A\00\B6\FF\FB\00\85\FD\90\05\EC\F2\1C<\81\22\FC\F2\EF\066\FC\E6\017\FF6\00\FD\FF\00\00*\00\\\FFy\01S\FDN\04J\F9`\0C\A3Gv\FC\1F\00\C3\00'\FF\9D\00\B2\FF\13\00\FE\FF\1E\00\7F\FFg\01\D5\FC\8E\06\BE\F1\066\1A*\DC\F1*\07<\FC\D3\01D\FF2\00\FD\FF\00\00!\00y\FF.\01\F7\FD\05\03\E1\FB\CA\05\DFH\AB\01\AA\FD\18\02r\FE\F4\00\90\FF\1B\00\FD\FF,\00W\FF\B3\01d\FC\13\07\83\F1,/Z1}\F1\F7\06\80\FC\9F\01a\FF)\00\FD\FF\19\00\9A\FF\D9\00\AA\FE\AE\01p\FE\F8\FF\A6H\BE\07\14\FBm\03\C3\FDF\01p\FF$\00\00\00\FD\FF4\00?\FF\DD\014\FC#\07!\F2\CB'\FE7\00\F2M\06\04\FDI\01\8E\FF\19\00\FF\FF\10\00\BD\FF\82\00^\FF]\00\D4\00\0C\FB\F9F\87\0E\82\F8\AD\04&\FD\8D\01T\FF,\00\FF\FF\FD\FF6\006\FF\E6\01A\FC\C8\06v\F3\22 \CA=}\F3*\05\C8\FD\D4\00\CA\FF\03\00\02\00\09\00\DD\FF.\00\0A\00'\FF\EF\02 \F7\E7C\D8\15\1E\F6\C0\05\A7\FC\C3\01@\FF3\00\FF\FF\FE\FF4\00;\FF\D1\01\84\FC\12\06\\\F5v\18\89B\02\F6\94\03\C4\FEB\00\12\00\E8\FF\07\00\03\00\FA\FF\E2\FF\A4\00\19\FE\AA\04>\F4\90?x\1D\10\F4\93\06R\FC\E1\016\FF6\00\FE\FF\FF\FF/\00L\FF\A2\01\F6\FC\12\05\A7\F7\03\11\10F\93\F9\98\01\EE\FF\9B\FFd\00\C8\FF\0E\00\00\00\12\00\A1\FF$\01A\FD\F6\05g\F2\1A:)%\84\F2\0F\071\FC\E3\01:\FF5\00\FD\FF\00\00'\00e\FF`\01\8A\FD\DF\03.\FA\04\0A:H(\FEK\FF8\01\E9\FE\BB\00\A6\FF\16\00\FD\FF$\00o\FF\85\01\A6\FC\CA\06\8F\F1\BB3\AB,\A3\F1&\07L\FC\C5\01M\FF0\00\FD\FF\00\00\1E\00\84\FF\11\014\FE\8F\02\C7\FC\AE\03\F7H\AE\03\C7\FC\8F\024\FE\11\01\84\FF\1E\00\FD\FF*\00\\\FF\AA\01q\FC\07\07~\F1D0D0~\F1\07\07q\FC\AA\01\\\FF*\00\FD\FF\00\00\1E\00\84\FF\11\014\FE\8F\02\C7\FC\AE\03\F7H\AE\03\C7\FC\8F\024\FE\11\01\84\FF\1E\00\02\00\05\00\C3\FF\E1\00\B1\FDN\05J\F3==\ED L\F3\D6\06=\FC\E6\016\FF6\00\FD\FF\FD\FF6\006\FF\E6\01=\FC\D6\06L\F3\ED ==J\F3N\05\B1\FD\E1\00\C3\FF\05\00\02\00\00\00\1E\00\84\FF\11\014\FE\8F\02\C7\FC\AE\03\F7H\AE\03\C7\FC\8F\024\FE\11\01\84\FF\1E\00\16\00\A6\FF\BB\00\E9\FE8\01K\FF(\FE:H\04\0A.\FA\DF\03\8A\FD`\01e\FF'\00\00\00\0E\00\C8\FFd\00\9B\FF\EE\FF\98\01\93\F9\10F\03\11\A7\F7\12\05\F6\FC\A2\01L\FF/\00\FF\FF\07\00\E8\FF\12\00B\00\C4\FE\94\03\02\F6\89Bv\18\\\F5\12\06\84\FC\D1\01;\FF4\00\FE\FF\02\00\03\00\CA\FF\D4\00\C8\FD*\05}\F3\CA=\22 v\F3\C8\06A\FC\E6\016\FF6\00\FD\FF\FF\FF\19\00\8E\FFI\01\04\FDM\06\00\F2\FE7\CB'!\F2#\074\FC\DD\01?\FF4\00\FD\FF\FD\FF)\00a\FF\9F\01\80\FC\F7\06}\F1Z1,/\83\F1\13\07d\FC\B3\01W\FF,\00\FD\FF\FD\FF2\00D\FF\D3\01<\FC*\07\DC\F1\1A*\066\BE\F1\8E\06\D5\FCg\01\7F\FF\1E\00\FE\FF\FD\FF6\007\FF\E6\016\FC\EF\06\FC\F2\81\22\1C<\EC\F2\90\05\85\FD\FB\00\B6\FF\0A\00\01\00\FE\FF5\008\FF\DA\01j\FCS\06\BA\F4\CE\1A2A\1F\F5\1D\04q\FEq\00\FB\FF\F0\FF\05\00\FF\FF1\00F\FF\B3\01\CF\FCg\05\EA\F6D\13\1EE^\F8?\02\8E\FF\D0\FFJ\00\D2\FF\0B\00\00\00*\00]\FFv\01Y\FDB\04c\F9\1C\0C\B6G\A4\FC\07\00\D0\00 \FF\A0\00\B1\FF\13\00\00\00!\00z\FF+\01\FE\FD\F8\02\FB\FB\8D\05\E5H\E3\01\91\FD%\02k\FE\F7\00\8F\FF\1C\00\18\00\9C\FF\D6\00\B1\FE\A1\01\89\FE\C3\FF\9CH\FD\07\FA\FAz\03\BC\FDI\01n\FF$\00\00\00\10\00\BE\FF\7F\00e\FFQ\00\EB\00\E1\FA\E1F\CD\0Ej\F8\B8\04 \FD\90\01S\FF-\00\FF\FF\09\00\DE\FF+\00\11\00\1B\FF\02\03\FE\F6\C3C\22\16\07\F6\CA\05\A3\FC\C5\01?\FF3\00\FF\FF\03\00\FB\FF\DF\FF\A9\00\10\FE\B9\04'\F4^?\C3\1D\FE\F3\99\06P\FC\E2\016\FF6\00\FE\FF\00\00\13\00\9F\FF(\01:\FD\00\06Z\F2\DF9s%y\F2\12\071\FC\E3\01;\FF5\00\FD\FF\FD\FF$\00m\FF\88\01\A2\FC\D0\06\8C\F1x3\F2,\9E\F1$\07N\FC\C3\01N\FF/\00\FD\FF\FD\FF0\00L\FF\C7\01J\FC'\07\A8\F1b,\FD3\93\F1\C4\06\AB\FC\82\01q\FF#\00\FE\FF\FD\FF6\00:\FF\E4\012\FC\0C\07\91\F2\DD$T:t\F2\EB\05I\FD \01\A3\FF\11\00\00\00\FE\FF6\007\FF\E1\01U\FC\8C\06\22\F4,\1D\C0?U\F4\9B\04#\FE\9F\00\E4\FF\F9\FF\04\00\FF\FF3\00@\FF\C1\01\AB\FC\B7\054\F6\8E\15\0BDB\F7\DC\022\FF\04\001\00\DC\FF\09\00\FF\FF,\00U\FF\8B\01+\FD\A1\04\9B\F8B\0E\0FG8\FB\BE\00j\00X\FF\85\00\BB\FF\10\00\00\00$\00q\FFC\01\C9\FD`\03.\FB~\07\AFH-\00X\FE\BB\01\A3\FE\DD\00\99\FF\19\00\1B\00\91\FF\F1\00y\FE\0A\02\C3\FDs\01\DBH\07\06\C7\FB\12\03\F1\FD1\01x\FF\22\00\00\00\12\00\B3\FF\99\00.\FF\B6\006\00G\FC\90G\A4\0C1\F9Z\04N\FD|\01[\FF*\00\00\00\0B\00\D5\FFD\00\DD\FFw\FFg\02\14\F8\DCD\D5\13\BC\F6|\05\C5\FC\B7\01D\FF1\00\FF\FF\05\00\F3\FF\F5\FF}\00]\FE>\04\EA\F4\D9@f\1B\93\F4b\06d\FC\DC\018\FF6\00\FE\FF\00\00\0C\00\B1\FF\04\01v\FD\A8\05\CC\F2\AB;\18#\E0\F2\F7\065\FC\E6\018\FF6\00\FD\FF\FE\FF \00{\FFn\01\CA\FC\9D\06\B1\F1\865\AE*\CD\F1+\07?\FC\D1\01F\FF2\00\FD\FF\FD\FF-\00T\FF\B7\01^\FC\19\07\88\F1\9F.\E31~\F1\EE\06\88\FC\9A\01d\FF(\00\FD\FF\FD\FF4\00>\FF\DF\013\FC \075\F26'x8\14\F2;\06\11\FDA\01\92\FF\17\00\FF\FF\FD\FF6\006\FF\E5\01D\FC\BD\06\97\F3\8A\1F1>\A5\F3\0F\05\DA\FD\C9\00\CF\FF\01\00\02\00\FE\FF4\00<\FF\CE\01\8C\FC\00\06\86\F5\E0\17\DBB?\F6q\03\D9\FE6\00\18\00\E5\FF\07\00\FF\FF.\00N\FF\9E\01\00\FD\FC\04\D7\F7u\10HF\E4\F9n\01\06\00\8E\FFk\00\C6\FF\0E\00\00\00&\00h\FF[\01\96\FD\C6\03a\FA\81\09WH\8D\FE\1B\FFR\01\DB\FE\C2\00\A4\FF\16\00\1E\00\87\FF\0B\01B\FEt\02\F9\FC9\03\F5H$\04\94\FC\A9\02'\FE\18\01\82\FF\1F\00\00\00\15\00\A9\FF\B4\00\F7\FE\1D\01z\FF\C5\FD\1DH\89\0A\FB\F9\F8\03}\FDf\01c\FF(\00\00\00\0D\00\CB\FF^\00\A9\FF\D6\FF\C3\01C\F9\D7E\92\11w\F7(\05\EC\FC\A7\01J\FF/\00\FF\FF\06\00\EA\FF\0C\00N\00\AF\FE\B8\03\C7\F58B\0C\192\F5#\06}\FC\D3\01:\FF5\00\FE\FF\02\00\05\00\C5\FF\DE\00\B7\FDE\05V\F3a=\BA V\F3\D3\06>\FC\E6\016\FF6\00\FD\FF\FF\FF\1A\00\8A\FFQ\01\F8\FC^\06\ED\F1\827`(\0E\F2&\075\FC\DB\01@\FF4\00\FD\FF\FD\FF)\00_\FF\A5\01x\FC\FF\06}\F1\CF0\B8/\80\F1\0D\07j\FC\AE\01Y\FF+\00\FD\FF\FD\FF3\00C\FF\D6\019\FC*\07\EB\F1\87)\856\CC\F1\7F\06\E0\FC`\01\82\FF\1D\00\FE\FF\FD\FF6\007\FF\E6\018\FC\E6\06\19\F3\EA!\8A<\0E\F3x\05\96\FD\F1\00\BB\FF\08\00\01\00\FE\FF5\009\FF\D8\01p\FCC\06\E1\F48\1A\8CAU\F5\FC\03\85\FEf\00\01\00\EE\FF\06\00\FF\FF0\00G\FF\AF\01\D8\FCR\05\19\F7\B2\12\\E\A9\F8\16\02\A6\FF\C3\FFQ\00\D0\FF\0C\00\00\00)\00_\FFq\01e\FD)\04\96\F9\95\0B\DCG\03\FD\D9\FF\EA\00\12\FF\A7\00\AE\FF\14\00\00\00 \00}\FF$\01\0C\FE\DE\02.\FC\13\05\ECHT\02^\FD?\02]\FE\FE\00\8C\FF\1C\00\17\00\9E\FF\CF\00\BF\FE\86\01\BA\FEZ\FF\86H}\08\C7\FA\93\03\B0\FDO\01l\FF%\00\00\00\0F\00\C0\FFx\00s\FF8\00\17\01\8B\FA\AFFY\0F9\F8\CF\04\15\FD\95\01Q\FF-\00\FF\FF\08\00\E1\FF%\00\1D\00\05\FF(\03\BD\F6wC\B6\16\DC\F5\DD\05\9B\FC\C8\01>\FF3\00\FF\FF\03\00\FD\FF\D9\FF\B4\00\FD\FD\D7\04\FA\F3\FC>[\1E\DB\F3\A6\06L\FC\E3\016\FF6\00\FE\FF\FF\FF\14\00\9B\FF1\01,\FD\15\06A\F2j9\0A&a\F2\17\071\FC\E2\01;\FF5\00\FD\FF\FD\FF%\00j\FF\8E\01\99\FC\DB\06\86\F1\F22\82-\96\F1!\07S\FC\C0\01P\FF.\00\FD\FF\FD\FF0\00J\FF\CA\01F\FC)\07\B3\F1\D1+\814\9C\F1\B8\06\B5\FC|\01t\FF\22\00\FE\FF\FD\FF6\009\FF\E5\012\FC\06\07\AA\F2F$\C8:\90\F2\D6\05W\FD\17\01\A8\FF\0F\00\00\00\FE\FF6\007\FF\DF\01Z\FC~\06G\F4\94\1C\1F@\85\F4}\046\FE\93\00\EA\FF\F7\FF\04\00\FF\FF2\00B\FF\BE\01\B4\FC\A4\05a\F6\FB\14SD\86\F7\B6\02I\FF\F7\FF7\00\D9\FF\0A\00\00\00+\00W\FF\86\016\FD\89\04\CD\F8\B7\0D=G\91\FB\91\00\83\00J\FF\8C\00\B9\FF\11\00\00\00#\00s\FF=\01\D6\FDF\03a\FB\00\07\BFH\98\00&\FE\D5\01\95\FE\E3\00\96\FF\1A\00\1A\00\94\FF\EA\00\87\FE\F0\01\F5\FD\05\01\CEH\83\06\94\FB,\03\E4\FD7\01v\FF\22\00\00\00\12\00\B6\FF\93\00<\FF\9D\00c\00\EB\FBiG-\0D\FF\F8r\04B\FD\81\01Y\FF+\00\00\00\0A\00\D7\FF>\00\EA\FF`\FF\8F\02\CD\F7\99Dh\14\8E\F6\90\05\BC\FC\BA\01C\FF2\00\FF\FF\04\00\F5\FF\EF\FF\88\00I\FE]\04\B7\F4}@\FD\1Bl\F4p\06_\FC\DE\017\FF6\00\FE\FF\00\00\0E\00\AC\FF\0E\01f\FD\BF\05\AD\F2;;\B0#\C4\F2\FF\063\FC\E5\018\FF6\00\FD\FF\FE\FF!\00w\FFu\01\BF\FC\AB\06\A6\F1\055@+\BF\F1*\07B\FC\CE\01H\FF1\00\FD\FF\FD\FF.\00R\FF\BC\01X\FC\1D\07\8E\F1\11.k2\81\F1\E5\06\90\FC\94\01g\FF&\00\FD\FF\FD\FF5\00<\FF\E0\012\FC\1C\07K\F2\A0&\F28*\F2(\06\1F\FD9\01\96\FF\16\00\FF\FF\FE\FF6\006\FF\E4\01H\FC\B2\06\B9\F3\F3\1E\98>\CF\F3\F3\04\EB\FD\BF\00\D4\FF\FF\FF\03\00\FE\FF4\00=\FF\CB\01\93\FC\EF\05\B0\F5K\17*C}\F6M\03\EF\FE*\00\1E\00\E3\FF\08\00\FF\FF.\00O\FF\99\01\0B\FD\E6\04\08\F8\E7\0F|F7\FAB\01\1F\00\81\FFq\00\C3\FF\0F\00\00\00&\00j\FFU\01\A3\FD\AD\03\94\FA\FF\08pH\F3\FE\EA\FEl\01\CD\FE\C9\00\A1\FF\17\00\1D\00\8A\FF\04\01P\FEZ\02,\FD\C6\02\F2H\9B\04a\FC\C3\02\19\FE\1E\01\7F\FF \00\00\00\14\00\AC\FF\AE\00\05\FF\03\01\AA\FFc\FD\FDG\0E\0B\C8\F9\11\04q\FDl\01a\FF(\00\00\00\0C\00\CD\FFW\00\B6\FF\BE\FF\ED\01\F5\F8\9BE\22\12H\F7=\05\E2\FC\AB\01I\FF0\00\FF\FF\06\00\EC\FF\06\00Z\00\9A\FE\DA\03\8D\F5\E1A\A1\19\09\F53\06w\FC\D6\01:\FF5\00\FE\FF\01\00\07\00\C0\FF\E8\00\A6\FD_\051\F3\F6<R!7\F3\DD\06;\FC\E6\016\FF6\00\FD\FF\FE\FF\1C\00\86\FFY\01\EC\FCo\06\DC\F1\047\F3(\FC\F1(\077\FC\D8\01A\FF3\00\FD\FF\FD\FF*\00\\\FF\AA\01q\FC\07\07~\F1D0D0~\F1\07\07q\FC\AA\01\\\FF*\00\FD\FF\FD\FF3\00A\FF\D8\017\FC(\07\FC\F1\F3(\047\DC\F1o\06\EC\FCY\01\86\FF\1C\00\FE\FF\FD\FF6\006\FF\E6\01;\FC\DD\067\F3R!\F6<1\F3_\05\A6\FD\E8\00\C0\FF\07\00\01\00\FE\FF5\00:\FF\D6\01w\FC3\06\09\F5\A1\19\E1A\8D\F5\DA\03\9A\FEZ\00\06\00\EC\FF\06\00\FF\FF0\00I\FF\AB\01\E2\FC=\05H\F7\22\12\9BE\F5\F8\ED\01\BE\FF\B6\FFW\00\CD\FF\0C\00\00\00(\00a\FFl\01q\FD\11\04\C8\F9\0E\0B\FDGc\FD\AA\FF\03\01\05\FF\AE\00\AC\FF\14\00\00\00 \00\7F\FF\1E\01\19\FE\C3\02a\FC\9B\04\F2H\C6\02,\FDZ\02P\FE\04\01\8A\FF\1D\00\17\00\A1\FF\C9\00\CD\FEl\01\EA\FE\F3\FEpH\FF\08\94\FA\AD\03\A3\FDU\01j\FF&\00\00\00\0F\00\C3\FFq\00\81\FF\1F\00B\017\FA|F\E7\0F\08\F8\E6\04\0B\FD\99\01O\FF.\00\FF\FF\08\00\E3\FF\1E\00*\00\EF\FEM\03}\F6*CK\17\B0\F5\EF\05\93\FC\CB\01=\FF4\00\FE\FF\03\00\FF\FF\D4\FF\BF\00\EB\FD\F3\04\CF\F3\98>\F3\1E\B9\F3\B2\06H\FC\E4\016\FF6\00\FE\FF\FF\FF\16\00\96\FF9\01\1F\FD(\06*\F2\F28\A0&K\F2\1C\072\FC\E0\01<\FF5\00\FD\FF\FD\FF&\00g\FF\94\01\90\FC\E5\06\81\F1k2\11.\8E\F1\1D\07X\FC\BC\01R\FF.\00\FD\FF\FD\FF1\00H\FF\CE\01B\FC*\07\BF\F1@+\055\A6\F1\AB\06\BF\FCu\01w\FF!\00\FE\FF\FD\FF6\008\FF\E5\013\FC\FF\06\C4\F2\B0#;;\AD\F2\BF\05f\FD\0E\01\AC\FF\0E\00\00\00\FE\FF6\007\FF\DE\01_\FCp\06l\F4\FD\1B}@\B7\F4]\04I\FE\88\00\EF\FF\F5\FF\04\00\FF\FF2\00C\FF\BA\01\BC\FC\90\05\8E\F6h\14\99D\CD\F7\8F\02`\FF\EA\FF>\00\D7\FF\0A\00\00\00+\00Y\FF\81\01B\FDr\04\FF\F8-\0DiG\EB\FBc\00\9D\00<\FF\93\00\B6\FF\12\00\00\00\22\00v\FF7\01\E4\FD,\03\94\FB\83\06\CEH\05\01\F5\FD\F0\01\87\FE\EA\00\94\FF\1A\00\1A\00\96\FF\E3\00\95\FE\D5\01&\FE\98\00\BFH\00\07a\FBF\03\D6\FD=\01s\FF#\00\00\00\11\00\B9\FF\8C\00J\FF\83\00\91\00\91\FB=G\B7\0D\CD\F8\89\046\FD\86\01W\FF+\00\00\00\0A\00\D9\FF7\00\F7\FFI\FF\B6\02\86\F7SD\FB\14a\F6\A4\05\B4\FC\BE\01B\FF2\00\FF\FF\04\00\F7\FF\EA\FF\93\006\FE}\04\85\F4\1F@\94\1CG\F4~\06Z\FC\DF\017\FF6\00\FE\FF\00\00\0F\00\A8\FF\17\01W\FD\D6\05\90\F2\C8:F$\AA\F2\06\072\FC\E5\019\FF6\00\FD\FF\FE\FF\22\00t\FF|\01\B5\FC\B8\06\9C\F1\814\D1+\B3\F1)\07F\FC\CA\01J\FF0\00\FD\FF\FD\FF.\00P\FF\C0\01S\FC!\07\96\F1\82-\F22\86\F1\DB\06\99\FC\8E\01j\FF%\00\FD\FF\FD\FF5\00;\FF\E2\011\FC\17\07a\F2\0A&j9A\F2\15\06,\FD1\01\9B\FF\14\00\FF\FF\FE\FF6\006\FF\E3\01L\FC\A6\06\DB\F3[\1E\FC>\FA\F3\D7\04\FD\FD\B4\00\D9\FF\FD\FF\03\00\FF\FF3\00>\FF\C8\01\9B\FC\DD\05\DC\F5\B6\16wC\BD\F6(\03\05\FF\1D\00%\00\E1\FF\08\00\FF\FF-\00Q\FF\95\01\15\FD\CF\049\F8Y\0F\AFF\8B\FA\17\018\00s\FFx\00\C0\FF\0F\00\00\00%\00l\FFO\01\B0\FD\93\03\C7\FA}\08\86HZ\FF\BA\FE\86\01\BF\FE\CF\00\9E\FF\17\00\1C\00\8C\FF\FE\00]\FE?\02^\FDT\02\ECH\13\05.\FC\DE\02\0C\FE$\01}\FF \00\00\00\14\00\AE\FF\A7\00\12\FF\EA\00\D9\FF\03\FD\DCG\95\0B\96\F9)\04e\FDq\01_\FF)\00\00\00\0C\00\D0\FFQ\00\C3\FF\A6\FF\16\02\A9\F8\\E\B2\12\19\F7R\05\D8\FC\AF\01G\FF0\00\FF\FF\06\00\EE\FF\01\00f\00\85\FE\FC\03U\F5\8CA8\1A\E1\F4C\06p\FC\D8\019\FF5\00\FE\FF\01\00\08\00\BB\FF\F1\00\96\FDx\05\0E\F3\8A<\EA!\19\F3\E6\068\FC\E6\017\FF6\00\FD\FF\FE\FF\1D\00\82\FF`\01\E0\FC\7F\06\CC\F1\856\87)\EB\F1*\079\FC\D6\01C\FF3\00\FD\FF\FD\FF+\00Y\FF\AE\01j\FC\0D\07\80\F1\B8/\CF0}\F1\FF\06x\FC\A5\01_\FF)\00\FD\FF\FD\FF4\00@\FF\DB\015\FC&\07\0E\F2`(\827\ED\F1^\06\F8\FCQ\01\8A\FF\1A\00\FF\FF\FD\FF6\006\FF\E6\01>\FC\D3\06V\F3\BA a=V\F3E\05\B7\FD\DE\00\C5\FF\05\00\02\00\FE\FF5\00:\FF\D3\01}\FC#\062\F5\0C\198B\C7\F5\B8\03\AF\FEN\00\0C\00\EA\FF\06\00\FF\FF/\00J\FF\A7\01\EC\FC(\05w\F7\92\11\D7EC\F9\C3\01\D6\FF\A9\FF^\00\CB\FF\0D\00\00\00(\00c\FFf\01}\FD\F8\03\FB\F9\89\0A\1DH\C5\FDz\FF\1D\01\F7\FE\B4\00\A9\FF\15\00\00\00\1F\00\82\FF\18\01'\FE\A9\02\94\FC$\04\F5H9\03\F9\FCt\02B\FE\0B\01\87\FF\1E\00\16\00\A4\FF\C2\00\DB\FER\01\1B\FF\8D\FEWH\81\09a\FA\C6\03\96\FD[\01h\FF&\00\00\00\0E\00\C6\FFk\00\8E\FF\06\00n\01\E4\F9HFu\10\D7\F7\FC\04\00\FD\9E\01N\FF.\00\FF\FF\07\00\E5\FF\18\006\00\D9\FEq\03?\F6\DBB\E0\17\86\F5\00\06\8C\FC\CE\01<\FF4\00\FE\FF\02\00\01\00\CF\FF\C9\00\DA\FD\0F\05\A5\F31>\8A\1F\97\F3\BD\06D\FC\E5\016\FF6\00\FD\FF\FF\FF\17\00\92\FFA\01\11\FD;\06\14\F2x86'5\F2 \073\FC\DF\01>\FF4\00\FD\FF\FD\FF(\00d\FF\9A\01\88\FC\EE\06~\F1\E31\9F.\88\F1\19\07^\FC\B7\01T\FF-\00\FD\FF\FD\FF2\00F\FF\D1\01?\FC+\07\CD\F1\AE*\865\B1\F1\9D\06\CA\FCn\01{\FF \00\FE\FF\FD\FF6\008\FF\E6\015\FC\F7\06\E0\F2\18#\AB;\CC\F2\A8\05v\FD\04\01\B1\FF\0C\00\00\00\FE\FF6\008\FF\DC\01d\FCb\06\93\F4f\1B\D9@\EA\F4>\04]\FE}\00\F5\FF\F3\FF\05\00\FF\FF1\00D\FF\B7\01\C5\FC|\05\BC\F6\D5\13\DCD\14\F8g\02w\FF\DD\FFD\00\D5\FF\0B\00\00\00*\00[\FF|\01N\FDZ\041\F9\A4\0C\90GG\FC6\00\B6\00.\FF\99\00\B3\FF\12\00\00\00\22\00x\FF1\01\F1\FD\12\03\C7\FB\07\06\DBHs\01\C3\FD\0A\02y\FE\F1\00\91\FF\1B\00\19\00\99\FF\DD\00\A3\FE\BB\01X\FE-\00\AFH~\07.\FB`\03\C9\FDC\01q\FF$\00\00\00\10\00\BB\FF\85\00X\FFj\00\BE\008\FB\0FGB\0E\9B\F8\A1\04+\FD\8B\01U\FF,\00\FF\FF\09\00\DC\FF1\00\04\002\FF\DC\02B\F7\0BD\8E\154\F6\B7\05\AB\FC\C1\01@\FF3\00\FF\FF\04\00\F9\FF\E4\FF\9F\00#\FE\9B\04U\F4\C0?,\1D\22\F4\8C\06U\FC\E1\017\FF6\00\FE\FF\00\00\11\00\A3\FF \01I\FD\EB\05t\F2T:\DD$\91\F2\0C\072\FC\E4\01:\FF6\00\FD\FF\FE\FF#\00q\FF\82\01\AB\FC\C4\06\93\F1\FD3b,\A8\F1'\07J\FC\C7\01L\FF0\00\FD\FF\FD\FF/\00N\FF\C3\01N\FC$\07\9E\F1\F2,x3\8C\F1\D0\06\A2\FC\88\01m\FF$\00\FD\FF\FD\FF5\00;\FF\E3\011\FC\12\07y\F2s%\DF9Z\F2\00\06:\FD(\01\9F\FF\13\00\00\00\FE\FF6\006\FF\E2\01P\FC\99\06\FE\F3\C3\1D^?'\F4\B9\04\10\FE\A9\00\DF\FF\FB\FF\03\00\FF\FF3\00?\FF\C5\01\A3\FC\CA\05\07\F6\22\16\C3C\FE\F6\02\03\1B\FF\11\00+\00\DE\FF\09\00\FF\FF-\00S\FF\90\01 \FD\B8\04j\F8\CD\0E\E1F\E1\FA\EB\00Q\00e\FF\7F\00\BE\FF\10\00\00\00$\00n\FFI\01\BC\FDz\03\FA\FA\FD\07\9CH\C3\FF\89\FE\A1\01\B1\FE\D6\00\9C\FF\18\00\1C\00\8F\FF\F7\00k\FE%\02\91\FD\E3\01\E5H\8D\05\FB\FB\F8\02\FE\FD+\01z\FF!\00\00\00\13\00\B1\FF\A0\00 \FF\D0\00\07\00\A4\FC\B6G\1C\0Cc\F9B\04Y\FDv\01]\FF*\00\00\00\0B\00\D2\FFJ\00\D0\FF\8E\FF?\02^\F8\1EED\13\EA\F6g\05\CF\FC\B3\01F\FF1\00\FF\FF\05\00\F0\FF\FB\FFq\00q\FE\1D\04\1F\F52A\CE\1A\BA\F4S\06j\FC\DA\018\FF5\00\FE\FF\01\00\0A\00\B6\FF\FB\00\85\FD\90\05\EC\F2\1C<\81\22\FC\F2\EF\066\FC\E6\017\FF6\00\FD\FF\FE\FF\1E\00\7F\FFg\01\D5\FC\8E\06\BE\F1\066\1A*\DC\F1*\07<\FC\D3\01D\FF2\00\FD\FF\FD\FF,\00W\FF\B3\01d\FC\13\07\83\F1,/Z1}\F1\F7\06\80\FC\9F\01a\FF)\00\FD\FF\FD\FF4\00?\FF\DD\014\FC#\07!\F2\CB'\FE7\00\F2M\06\04\FDI\01\8E\FF\19\00\FF\FF\FD\FF6\006\FF\E6\01A\FC\C8\06v\F3\22 \CA=}\F3*\05\C8\FD\D4\00\CA\FF\03\00\02\00\FE\FF4\00;\FF\D1\01\84\FC\12\06\\\F5v\18\89B\02\F6\94\03\C4\FEB\00\12\00\E8\FF\07\00\FF\FF/\00L\FF\A2\01\F6\FC\12\05\A7\F7\03\11\10F\93\F9\98\01\EE\FF\9B\FFd\00\C8\FF\0E\00\00\00'\00e\FF`\01\8A\FD\DF\03.\FA\04\0A:H(\FEK\FF8\01\E9\FE\BB\00\A6\FF\16\00\00\00\1E\00\84\FF\11\014\FE\8F\02\C7\FC\AE\03\F7H\AE\03\C7\FC\8F\024\FE\11\01\84\FF\1E\00\00\00\F4\FF\1A\00\FF\00\07\03\16\06|\09*\0C.\0D*\0C|\09\16\06\07\03\FF\00\1A\00\F4\FF\F2\FF\A0\FFq\FFq\00\86\03s\08\88\0Dx\10\C9\0F\D5\0B\8B\06(\02\DF\FFo\FF\C3\FF\FD\FF\00\00\DC\FF\80\FF\9A\FFF\01\1E\05Z\0A\ED\0E\AA\10\AF\0E\FD\09\CB\04\18\01\8E\FF\85\FF\E1\FF\FC\FF\BD\FFm\FF\F6\FFe\02\E5\06+\0C\F3\0F`\10;\0D\16\08?\03P\00n\FF\A7\FF\F5\FF\EF\FF\9A\FFu\FF\91\00\C9\03\C8\08\CC\0D\89\10\9F\0F\85\0B;\06\F4\01\CD\FFr\FF\C9\FF\FE\FF\00\00\D7\FF{\FF\A5\FFs\01j\05\AD\0A!\0F\A6\10t\0E\A9\09\83\04\F0\00\85\FF\8B\FF\E5\FF\FA\FF\B7\FFl\FF\0C\00\9D\027\07x\0C\15\10G\10\F3\0C\C2\07\01\035\00m\FF\AD\FF\F7\FF\EB\FF\94\FFz\FF\B3\00\0D\04\1C\09\0D\0E\97\10s\0F5\0B\EB\05\C1\01\BD\FFu\FF\CE\FF\FF\FF\FF\FF\D2\FFw\FF\B3\FF\A1\01\B7\05\FF\0AS\0F\9E\107\0EU\09;\04\CB\00~\FF\90\FF\E9\FF\F8\FF\B1\FFl\FF$\00\D8\02\8A\07\C2\0C4\10*\10\AA\0Co\07\C4\02\1C\00l\FF\B3\FF\F9\FF\E8\FF\8E\FF\80\FF\D7\00S\04q\09L\0E\A1\10C\0F\E3\0A\9D\05\91\01\AE\FFy\FF\D4\FF\00\00\FF\FF\CD\FFt\FF\C2\FF\D2\01\06\06P\0B\82\0F\93\10\F8\0D\00\09\F6\03\A7\00x\FF\96\FF\EC\FF\F6\FF\AB\FFm\FF>\00\15\03\DE\07\0B\0DP\10\0A\10^\0C\1C\07\8A\02\04\00l\FF\B9\FF\FB\FF\E4\FF\89\FF\88\FF\FD\00\9B\04\C5\09\88\0E\A8\10\10\0F\91\0AP\05d\01\A1\FF}\FF\D9\FF\00\00\FE\FF\C7\FFq\FF\D3\FF\05\02U\06\A0\0B\AD\0F\84\10\B6\0D\AC\08\B3\03\86\00t\FF\9C\FF\F0\FF\F4\FF\A5\FFo\FFZ\00T\032\08R\0Dh\10\E6\0F\11\0C\CA\06R\02\EF\FFn\FF\BF\FF\FC\FF\DF\FF\84\FF\91\FF%\01\E4\04\19\0A\C2\0E\AA\10\DA\0E>\0A\05\058\01\96\FF\81\FF\DD\FF\00\00\FD\FF\C1\FFn\FF\E6\FF:\02\A6\06\EF\0B\D6\0Fq\10q\0DW\08q\03g\00p\FF\A2\FF\F3\FF\F1\FF\9F\FFr\FFx\00\95\03\86\08\98\0D|\10\C0\0F\C3\0By\06\1C\02\DB\FFp\FF\C5\FF\FE\FF\00\00\DB\FF\7F\FF\9C\FFP\01/\05l\0A\F9\0E\A9\10\A2\0E\EA\09\BB\04\0F\01\8C\FF\87\FF\E2\FF\FC\FF\BC\FFm\FF\FA\FFq\02\F7\06<\0C\FB\0F[\10+\0D\03\081\03J\00n\FF\A8\FF\F5\FF\EE\FF\99\FFv\FF\98\00\D8\03\DB\08\DB\0D\8D\10\96\0Fs\0B)\06\E8\01\C9\FFr\FF\CA\FF\FE\FF\00\00\D6\FFz\FF\A8\FF}\01{\05\BF\0A-\0F\A5\10g\0E\96\09s\04\E7\00\84\FF\8C\FF\E6\FF\FA\FF\B6\FFl\FF\11\00\AA\02J\07\88\0C\1C\10A\10\E3\0C\AF\07\F3\02/\00l\FF\AE\FF\F7\FF\EA\FF\93\FF{\FF\BB\00\1C\04/\09\1B\0E\9A\10h\0F#\0B\DA\05\B7\01\B9\FFv\FF\D0\FF\FF\FF\FF\FF\D1\FFv\FF\B6\FF\AC\01\C8\05\11\0B^\0F\9C\10)\0EB\09,\04\C2\00}\FF\92\FF\EA\FF\F8\FF\B0\FFl\FF)\00\E6\02\9D\07\D3\0C;\10#\10\99\0C\\\07\B7\02\16\00l\FF\B4\FF\F9\FF\E7\FF\8D\FF\82\FF\DF\00c\04\84\09Y\0E\A3\108\0F\D1\0A\8C\05\87\01\AB\FFy\FF\D5\FF\00\00\FF\FF\CB\FFs\FF\C6\FF\DD\01\17\06b\0B\8C\0F\90\10\E9\0D\ED\08\E7\03\A0\00w\FF\97\FF\ED\FF\F6\FF\A9\FFm\FFD\00#\03\F1\07\1B\0DU\10\02\10M\0C\0A\07~\02\FF\FFm\FF\BA\FF\FB\FF\E3\FF\88\FF\8A\FF\06\01\AB\04\D8\09\95\0E\A9\10\05\0F\7F\0A@\05Z\01\9F\FF~\FF\DA\FF\00\00\FE\FF\C6\FFp\FF\D7\FF\10\02g\06\B1\0B\B7\0F\80\10\A7\0D\99\08\A4\03\7F\00s\FF\9D\FF\F0\FF\F3\FF\A3\FFp\FF`\00b\03E\08b\0Dl\10\DE\0F\00\0C\B8\06F\02\EA\FFn\FF\C0\FF\FD\FF\00\00\DE\FF\83\FF\94\FF/\01\F4\04+\0A\CE\0E\AA\10\CE\0E+\0A\F4\04/\01\94\FF\83\FF\DE\FF\FD\FF\C0\FFn\FF\EA\FFF\02\B8\06\00\0C\DE\0Fl\10b\0DE\08b\03`\00p\FF\A3\FF\F3\FF\F0\FF\9D\FFs\FF\7F\00\A4\03\99\08\A7\0D\80\10\B7\0F\B1\0Bg\06\10\02\D7\FFp\FF\C6\FF\FE\FF\00\00\DA\FF~\FF\9F\FFZ\01@\05\7F\0A\05\0F\A9\10\95\0E\D8\09\AB\04\06\01\8A\FF\88\FF\E3\FF\FB\FF\BA\FFm\FF\FF\FF~\02\0A\07M\0C\02\10U\10\1B\0D\F1\07#\03D\00m\FF\A9\FF\F6\FF\ED\FF\97\FFw\FF\A0\00\E7\03\ED\08\E9\0D\90\10\8C\0Fb\0B\17\06\DD\01\C6\FFs\FF\CB\FF\FF\FF\00\00\D5\FFy\FF\AB\FF\87\01\8C\05\D1\0A8\0F\A3\10Y\0E\84\09c\04\DF\00\82\FF\8D\FF\E7\FF\F9\FF\B4\FFl\FF\16\00\B7\02\\\07\99\0C#\10;\10\D3\0C\9D\07\E6\02)\00l\FF\B0\FF\F8\FF\EA\FF\92\FF}\FF\C2\00,\04B\09)\0E\9C\10^\0F\11\0B\C8\05\AC\01\B6\FFv\FF\D1\FF\FF\FF\FF\FF\D0\FFv\FF\B9\FF\B7\01\DA\05#\0Bh\0F\9A\10\1B\0E/\09\1C\04\BB\00{\FF\93\FF\EA\FF\F7\FF\AE\FFl\FF/\00\F3\02\AF\07\E3\0CA\10\1C\10\88\0CJ\07\AA\02\11\00l\FF\B6\FF\FA\FF\E6\FF\8C\FF\84\FF\E7\00s\04\96\09g\0E\A5\10-\0F\BF\0A{\05}\01\A8\FFz\FF\D6\FF\00\00\FE\FF\CA\FFr\FF\C9\FF\E8\01)\06s\0B\96\0F\8D\10\DB\0D\DB\08\D8\03\98\00v\FF\99\FF\EE\FF\F5\FF\A8\FFn\FFJ\001\03\03\08+\0D[\10\FB\0F<\0C\F7\06q\02\FA\FFm\FF\BC\FF\FC\FF\E2\FF\87\FF\8C\FF\0F\01\BB\04\EA\09\A2\0E\A9\10\F9\0El\0A/\05P\01\9C\FF\7F\FF\DB\FF\00\00\FE\FF\C5\FFp\FF\DB\FF\1C\02y\06\C3\0B\C0\0F|\10\98\0D\86\08\95\03x\00r\FF\9F\FF\F1\FF\F3\FF\A2\FFp\FFg\00q\03W\08q\0Dq\10\D6\0F\EF\0B\A6\06:\02\E6\FFn\FF\C1\FF\FD\FF\00\00\DD\FF\81\FF\96\FF8\01\05\05>\0A\DA\0E\AA\10\C2\0E\19\0A\E4\04%\01\91\FF\84\FF\DF\FF\FC\FF\BF\FFn\FF\EF\FFR\02\CA\06\11\0C\E6\0Fh\10R\0D2\08T\03Z\00o\FF\A5\FF\F4\FF\F0\FF\9C\FFt\FF\86\00\B3\03\AC\08\B6\0D\84\10\AD\0F\A0\0BU\06\05\02\D3\FFq\FF\C7\FF\FE\FF\00\00\D9\FF}\FF\A1\FFd\01P\05\91\0A\10\0F\A8\10\88\0E\C5\09\9B\04\FD\00\88\FF\89\FF\E4\FF\FB\FF\B9\FFl\FF\04\00\8A\02\1C\07^\0C\0A\10P\10\0B\0D\DE\07\15\03>\00m\FF\AB\FF\F6\FF\EC\FF\96\FFx\FF\A7\00\F6\03\00\09\F8\0D\93\10\82\0FP\0B\06\06\D2\01\C2\FFt\FF\CD\FF\FF\FF\00\00\D4\FFy\FF\AE\FF\91\01\9D\05\E3\0AC\0F\A1\10L\0Eq\09S\04\D7\00\80\FF\8E\FF\E8\FF\F9\FF\B3\FFl\FF\1C\00\C4\02o\07\AA\0C*\104\10\C2\0C\8A\07\D8\02$\00l\FF\B1\FF\F8\FF\E9\FF\90\FF~\FF\CB\00;\04U\097\0E\9E\10S\0F\FF\0A\B7\05\A1\01\B3\FFw\FF\D2\FF\FF\FF\FF\FF\CE\FFu\FF\BD\FF\C1\01\EB\055\0Bs\0F\97\10\0D\0E\1C\09\0D\04\B3\00z\FF\94\FF\EB\FF\F7\FF\AD\FFm\FF5\00\01\03\C2\07\F3\0CG\10\15\10x\0C7\07\9D\02\0C\00l\FF\B7\FF\FA\FF\E5\FF\8B\FF\85\FF\F0\00\83\04\A9\09t\0E\A6\10!\0F\AD\0Aj\05s\01\A5\FF{\FF\D7\FF\00\00\FE\FF\C9\FFr\FF\CD\FF\F4\01;\06\85\0B\9F\0F\89\10\CC\0D\C8\08\C9\03\91\00u\FF\9A\FF\EF\FF\F5\FF\A7\FFn\FFP\00?\03\16\08;\0D`\10\F3\0F+\0C\E5\06e\02\F6\FFm\FF\BD\FF\FC\FF\E1\FF\85\FF\8E\FF\18\01\CB\04\FD\09\AF\0E\AA\10\ED\0EZ\0A\1E\05F\01\9A\FF\80\FF\DC\FF\00\00\FD\FF\C3\FFo\FF\DF\FF(\02\8B\06\D5\0B\C9\0Fx\10\88\0Ds\08\86\03q\00q\FF\A0\FF\F2\FF\F2\FF\A1\FFq\FFn\00\7F\03j\08\81\0Dv\10\CD\0F\DD\0B\94\06.\02\E1\FFo\FF\C3\FF\FD\FF\00\00\DC\FF\80\FF\98\FFB\01\16\05P\0A\E7\0E\AA\10\B5\0E\06\0A\D3\04\1C\01\8F\FF\85\FF\E0\FF\FC\FF\BE\FFm\FF\F3\FF^\02\DC\06#\0C\EF\0Fc\10C\0D\1F\08F\03S\00n\FF\A6\FF\F4\FF\EF\FF\9B\FFu\FF\8D\00\C1\03\BE\08\C4\0D\88\10\A4\0F\8E\0BC\06\F9\01\CF\FFq\FF\C8\FF\FE\FF\00\00\D8\FF|\FF\A4\FFn\01a\05\A3\0A\1C\0F\A7\10{\0E\B2\09\8B\04\F4\00\86\FF\8A\FF\E4\FF\FA\FF\B8\FFl\FF\09\00\97\02.\07o\0C\11\10J\10\FB\0C\CB\07\07\038\00m\FF\AC\FF\F7\FF\EC\FF\95\FFy\FF\AF\00\05\04\13\09\06\0E\96\10x\0F>\0B\F4\05\C7\01\BF\FFt\FF\CE\FF\FF\FF\FF\FF\D2\FFx\FF\B1\FF\9C\01\AE\05\F6\0AN\0F\9F\10>\0E^\09C\04\CF\00\7F\FF\90\FF\E8\FF\F9\FF\B2\FFl\FF!\00\D2\02\81\07\BA\0C1\10.\10\B2\0Cx\07\CB\02\1E\00l\FF\B2\FF\F9\FF\E8\FF\8F\FF\80\FF\D3\00K\04g\09E\0E\A0\10H\0F\EC\0A\A6\05\97\01\B0\FFx\FF\D3\FF\00\00\FF\FF\CD\FFt\FF\C0\FF\CC\01\FD\05G\0B}\0F\94\10\FF\0D\0A\09\FE\03\AB\00y\FF\95\FF\EC\FF\F7\FF\AC\FFm\FF;\00\0E\03\D5\07\03\0DM\10\0E\10g\0C%\07\91\02\07\00l\FF\B8\FF\FB\FF\E4\FF\89\FF\87\FF\F9\00\93\04\BC\09\82\0E\A7\10\16\0F\9A\0AY\05i\01\A3\FF|\FF\D8\FF\00\00\FE\FF\C8\FFq\FF\D1\FF\FF\01L\06\97\0B\A9\0F\86\10\BD\0D\B5\08\BA\03\8A\00t\FF\9B\FF\EF\FF\F4\FF\A5\FFo\FFW\00M\03)\08K\0De\10\EB\0F\1A\0C\D3\06X\02\F1\FFm\FF\BE\FF\FC\FF\E0\FF\84\FF\90\FF!\01\DC\04\10\0A\BB\0E\AA\10\E1\0EG\0A\0D\05=\01\97\FF\81\FF\DD\FF\00\00\FD\FF\C2\FFo\FF\E4\FF4\02\9D\06\E6\0B\D1\0Fs\10y\0Da\08x\03j\00p\FF\A1\FF\F2\FF\F1\FF\9F\FFr\FFt\00\8E\03}\08\90\0Dz\10\C4\0F\CC\0B\82\06\22\02\DD\FFo\FF\C4\FF\FD\FF\00\00\DB\FF\7F\FF\9B\FFK\01&\05c\0A\F3\0E\AA\10\A8\0E\F4\09\C3\04\13\01\8D\FF\86\FF\E1\FF\FC\FF\BC\FFm\FF\F8\FFk\02\EE\064\0C\F7\0F]\103\0D\0D\088\03M\00n\FF\A7\FF\F5\FF\EE\FF\99\FFv\FF\94\00\D0\03\D1\08\D3\0D\8B\10\9A\0F|\0B2\06\EE\01\CB\FFr\FF\CA\FF\FE\FF\00\00\D6\FF{\FF\A7\FFx\01r\05\B6\0A'\0F\A5\10n\0E\A0\09{\04\EC\00\85\FF\8B\FF\E5\FF\FA\FF\B6\FFl\FF\0E\00\A4\02A\07\80\0C\19\10D\10\EB\0C\B9\07\FA\022\00m\FF\AE\FF\F7\FF\EB\FF\93\FF{\FF\B7\00\15\04&\09\14\0E\98\10m\0F,\0B\E3\05\BC\01\BB\FFu\FF\CF\FF\FF\FF\FF\FF\D1\FFw\FF\B5\FF\A6\01\C0\05\08\0BX\0F\9D\100\0EK\094\04\C6\00}\FF\91\FF\E9\FF\F8\FF\B0\FFl\FF'\00\DF\02\94\07\CA\0C7\10'\10\A1\0Ce\07\BE\02\19\00l\FF\B4\FF\F9\FF\E7\FF\8E\FF\81\FF\DB\00[\04z\09S\0E\A2\10=\0F\DA\0A\95\05\8C\01\AD\FFy\FF\D4\FF\00\00\FF\FF\CC\FFs\FF\C4\FF\D7\01\0E\06Y\0B\87\0F\91\10\F0\0D\F7\08\EF\03\A3\00x\FF\97\FF\ED\FF\F6\FF\AA\FFm\FFA\00\1C\03\E7\07\13\0DR\10\06\10V\0C\13\07\84\02\02\00m\FF\BA\FF\FB\FF\E3\FF\88\FF\89\FF\01\01\A3\04\CE\09\8F\0E\A8\10\0A\0F\88\0AH\05_\01\A0\FF}\FF\D9\FF\00\00\FE\FF\C7\FFp\FF\D5\FF\0B\02^\06\A9\0B\B2\0F\82\10\AE\0D\A2\08\AB\03\82\00s\FF\9D\FF\F0\FF\F3\FF\A4\FFo\FF]\00[\03;\08Z\0Dj\10\E2\0F\09\0C\C1\06L\02\EC\FFn\FF\C0\FF\FC\FF\DF\FF\83\FF\93\FF*\01\EC\04\22\0A\C8\0E\AB\10\D4\0E5\0A\FD\043\01\95\FF\82\FF\DE\FF\00\00\FD\FF\C1\FFn\FF\E8\FF@\02\AF\06\F7\0B\DA\0Fo\10j\0DN\08j\03d\00p\FF\A3\FF\F3\FF\F1\FF\9E\FFr\FF{\00\9C\03\90\08\9F\0D~\10\BB\0F\BA\0Bp\06\16\02\D9\FFp\FF\C5\FF\FE\FF\00\00\DA\FF~\FF\9D\FFU\017\05u\0A\FF\0E\A9\10\9C\0E\E1\09\B3\04\0A\01\8B\FF\87\FF\E2\FF\FB\FF\BB\FFm\FF\FD\FFw\02\01\07E\0C\FF\0FX\10#\0D\FA\07*\03G\00n\FF\A9\FF\F5\FF\ED\FF\98\FFw\FF\9C\00\DF\03\E4\08\E2\0D\8E\10\91\0Fk\0B \06\E3\01\C8\FFs\FF\CB\FF\FF\FF\00\00\D5\FFz\FF\AA\FF\82\01\83\05\C8\0A2\0F\A4\10`\0E\8D\09k\04\E3\00\83\FF\8D\FF\E6\FF\FA\FF\B5\FFl\FF\14\00\B1\02S\07\91\0C \10>\10\DB\0C\A6\07\EC\02,\00l\FF\AF\FF\F8\FF\EA\FF\92\FF|\FF\BE\00$\048\09\22\0E\9B\10c\0F\1A\0B\D1\05\B1\01\B8\FFv\FF\D0\FF\FF\FF\FF\FF\D0\FFv\FF\B8\FF\B1\01\D1\05\1A\0Bc\0F\9B\10\22\0E8\09$\04\BE\00|\FF\92\FF\EA\FF\F8\FF\AF\FFl\FF,\00\EC\02\A6\07\DB\0C>\10 \10\91\0CS\07\B1\02\14\00l\FF\B5\FF\FA\FF\E6\FF\8D\FF\83\FF\E3\00k\04\8D\09`\0E\A4\102\0F\C8\0A\83\05\82\01\AA\FFz\FF\D5\FF\00\00\FF\FF\CB\FFs\FF\C8\FF\E3\01 \06k\0B\91\0F\8E\10\E2\0D\E4\08\DF\03\9C\00w\FF\98\FF\ED\FF\F5\FF\A9\FFn\FFG\00*\03\FA\07#\0DX\10\FF\0FE\0C\01\07w\02\FD\FFm\FF\BB\FF\FB\FF\E2\FF\87\FF\8B\FF\0A\01\B3\04\E1\09\9C\0E\A9\10\FF\0Eu\0A7\05U\01\9D\FF~\FF\DA\FF\00\00\FE\FF\C5\FFp\FF\D9\FF\16\02p\06\BA\0B\BB\0F~\10\9F\0D\90\08\9C\03{\00r\FF\9E\FF\F1\FF\F3\FF\A3\FFp\FFd\00j\03N\08j\0Do\10\DA\0F\F7\0B\AF\06@\02\E8\FFn\FF\C1\FF\FD\FF\00\00\DE\FF\82\FF\95\FF3\01\FD\045\0A\D4\0E\AB\10\C8\0E\22\0A\EC\04*\01\93\FF\83\FF\DF\FF\FC\FF\C0\FFn\FF\EC\FFL\02\C1\06\09\0C\E2\0Fj\10Z\0D;\08[\03]\00o\FF\A4\FF\F3\FF\F0\FF\9D\FFs\FF\82\00\AB\03\A2\08\AE\0D\82\10\B2\0F\A9\0B^\06\0B\02\D5\FFp\FF\C7\FF\FE\FF\00\00\D9\FF}\FF\A0\FF_\01H\05\88\0A\0A\0F\A8\10\8F\0E\CE\09\A3\04\01\01\89\FF\88\FF\E3\FF\FB\FF\BA\FFm\FF\02\00\84\02\13\07V\0C\06\10R\10\13\0D\E7\07\1C\03A\00m\FF\AA\FF\F6\FF\ED\FF\97\FFx\FF\A3\00\EF\03\F7\08\F0\0D\91\10\87\0FY\0B\0E\06\D7\01\C4\FFs\FF\CC\FF\FF\FF\00\00\D4\FFy\FF\AD\FF\8C\01\95\05\DA\0A=\0F\A2\10S\0Ez\09[\04\DB\00\81\FF\8E\FF\E7\FF\F9\FF\B4\FFl\FF\19\00\BE\02e\07\A1\0C'\107\10\CA\0C\94\07\DF\02'\00l\FF\B0\FF\F8\FF\E9\FF\91\FF}\FF\C6\004\04K\090\0E\9D\10X\0F\08\0B\C0\05\A6\01\B5\FFw\FF\D1\FF\FF\FF\FF\FF\CF\FFu\FF\BB\FF\BC\01\E3\05,\0Bm\0F\98\10\14\0E&\09\15\04\B7\00{\FF\93\FF\EB\FF\F7\FF\AE\FFm\FF2\00\FA\02\B9\07\EB\0CD\10\19\10\80\0CA\07\A4\02\0E\00l\FF\B6\FF\FA\FF\E5\FF\8B\FF\85\FF\EC\00{\04\A0\09n\0E\A5\10'\0F\B6\0Ar\05x\01\A7\FF{\FF\D6\FF\00\00\FE\FF\CA\FFr\FF\CB\FF\EE\012\06|\0B\9A\0F\8B\10\D3\0D\D1\08\D0\03\94\00v\FF\99\FF\EE\FF\F5\FF\A7\FFn\FFM\008\03\0D\083\0D]\10\F7\0F4\0C\EE\06k\02\F8\FFm\FF\BC\FF\FC\FF\E1\FF\86\FF\8D\FF\13\01\C3\04\F4\09\A8\0E\AA\10\F3\0Ec\0A&\05K\01\9B\FF\7F\FF\DB\FF\00\00\FD\FF\C4\FFo\FF\DD\FF\22\02\82\06\CC\0B\C4\0Fz\10\90\0D}\08\8E\03t\00r\FF\9F\FF\F1\FF\F2\FF\A1\FFp\FFj\00x\03a\08y\0Ds\10\D1\0F\E6\0B\9D\064\02\E4\FFo\FF\C2\FF\FD\FF\00\00\DD\FF\81\FF\97\FF=\01\0D\05G\0A\E1\0E\AA\10\BB\0E\10\0A\DC\04!\01\90\FF\84\FF\E0\FF\FC\FF\BE\FFm\FF\F1\FFX\02\D3\06\1A\0C\EB\0Fe\10K\0D)\08M\03W\00o\FF\A5\FF\F4\FF\EF\FF\9B\FFt\FF\8A\00\BA\03\B5\08\BD\0D\86\10\A9\0F\97\0BL\06\FF\01\D1\FFq\FF\C8\FF\FE\FF\00\00\D8\FF|\FF\A3\FFi\01Y\05\9A\0A\16\0F\A7\10\82\0E\BC\09\93\04\F9\00\87\FF\89\FF\E4\FF\FB\FF\B8\FFl\FF\07\00\91\02%\07g\0C\0E\10M\10\03\0D\D5\07\0E\03;\00m\FF\AC\FF\F7\FF\EC\FF\95\FFy\FF\AB\00\FE\03\0A\09\FF\0D\94\10}\0FG\0B\FD\05\CC\01\C0\FFt\FF\CD\FF\FF\FF\00\00\D3\FFx\FF\B0\FF\97\01\A6\05\EC\0AH\0F\A0\10E\0Eg\09K\04\D3\00\80\FF\8F\FF\E8\FF\F9\FF\B2\FFl\FF\1E\00\CB\02x\07\B2\0C.\101\10\BA\0C\81\07\D2\02!\00l\FF\B2\FF\F9\FF\E8\FF\90\FF\7F\FF\CF\00C\04^\09>\0E\9F\10N\0F\F6\0A\AE\05\9C\01\B1\FFx\FF\D2\FF\FF\FF\FF\FF\CE\FFt\FF\BF\FF\C7\01\F4\05>\0Bx\0F\96\10\06\0E\13\09\05\04\AF\00y\FF\95\FF\EC\FF\F7\FF\AC\FFm\FF8\00\07\03\CB\07\FB\0CJ\10\11\10o\0C.\07\97\02\09\00l\FF\B8\FF\FA\FF\E4\FF\8A\FF\86\FF\F4\00\8B\04\B2\09{\0E\A7\10\1C\0F\A3\0Aa\05n\01\A4\FF|\FF\D8\FF\00\00\FE\FF\C8\FFq\FF\CF\FF\F9\01C\06\8E\0B\A4\0F\88\10\C4\0D\BE\08\C1\03\8D\00u\FF\9B\FF\EF\FF\F4\FF\A6\FFn\FFS\00F\03\1F\08C\0Dc\10\EF\0F#\0C\DC\06^\02\F3\FFm\FF\BE\FF\FC\FF\E0\FF\85\FF\8F\FF\1C\01\D3\04\06\0A\B5\0E\AA\10\E7\0EP\0A\16\05B\01\98\FF\80\FF\DC\FF\00\00\FD\FF\C3\FFo\FF\E1\FF.\02\94\06\DD\0B\CD\0Fv\10\81\0Dj\08\7F\03n\00q\FF\A1\FF\F2\FF\00\00\15\00\D1\FF\8B\FE\BC\FD\E1\00\84\09\B0\13G\18\B0\13\84\09\E1\00\BC\FD\8B\FE\D1\FF\15\00\FD\FF\13\00\DA\000\00]\FC\B3\FC5\0A\C2\1C$ H\10]\FFt\FB:\FF\FB\00B\00\F8\FF\FA\FF,\00\F3\00\AD\FF\C5\FB\11\FE\AF\0D\EF\1Eh\1E\BC\0C\A7\FD\EA\FB\D3\FF\EE\00$\00\FA\FF\F7\FFL\00\FB\00\0C\FF_\FB\E8\FF=\11~ \13\1CL\09j\FC\8C\FCN\00\D1\00\0E\00\FD\FF\F7\FFr\00\EC\00U\FE=\FB7\02\BE\14]!@\19\18\06\A2\FBG\FD\A7\00\AB\00\00\00\00\00\00\00\FC\FF\9B\00\C0\00\92\FDs\FB\F2\04\0E\18\81!\0C\167\03G\FB\0B\FE\DF\00\82\00\F9\FF\FE\FF\08\00\C3\00t\00\D2\FC\10\FC\08\08\0A\1B\E9 \9A\12\BE\00I\FB\C8\FE\F9\00Z\00\F7\FF\FC\FF\1B\00\E4\00\06\00$\FC\1E\FDe\0B\94\1D\9D\1F\0D\0F\B8\FE\96\FBr\FF\F9\007\00\F8\FF\F9\FF6\00\F8\00x\FF\9B\FB\A6\FE\E9\0E\8D\1F\AA\1D\87\0B+\FD\1E\FC\02\00\E5\00\1C\00\FB\FF\F7\FFX\00\F9\00\CF\FEJ\FB\A7\00w\12\E0 &\1B(\08\18\FC\CB\FCq\00\C5\00\08\00\FE\FF\F8\FF\80\00\E1\00\13\FEE\FB\1D\03\EB\15\7F!-\18\0E\05w\FB\8B\FD\BE\00\9D\00\FD\FF\00\00\00\00\FF\FF\A9\00\AA\00O\FD\9D\FB\FA\05\22\19b!\E0\14P\02>\FBN\FE\EB\00s\00\F7\FF\FE\FF\0D\00\D0\00R\00\93\FC`\FC,\09\FA\1B\8A `\11\FD\FF\\\FB\06\FF\FB\00M\00\F7\FF\FA\FF#\00\ED\00\D9\FF\EF\FB\98\FD\99\0CT\1E\02\1F\D2\0D \FE\C0\FB\A7\FF\F4\00-\00\F9\FF\F8\FFA\00\FB\00A\FFx\FBJ\FF%\10\16 \DA\1CV\0A\BE\FCV\FC,\00\DB\00\14\00\FD\FF\F7\FFf\00\F4\00\8F\FE?\FBu\01\AE\13,!*\1A\0D\07\D4\FB\0C\FD\8F\00\B7\00\03\00\FF\FF\00\00\FA\FF\8E\00\D1\00\CF\FDX\FB\10\04\10\17\8A!\10\17\10\04X\FB\CF\FD\D1\00\8E\00\FA\FF\FF\FF\03\00\B7\00\8F\00\0C\FD\D4\FB\0D\07*\1A,!\AE\13u\01?\FB\8F\FE\F4\00f\00\F7\FF\FD\FF\14\00\DB\00,\00V\FC\BE\FCV\0A\DA\1C\16 %\10J\FFx\FBA\FF\FB\00A\00\F8\FF\F9\FF-\00\F4\00\A7\FF\C0\FB \FE\D2\0D\02\1FT\1E\99\0C\98\FD\EF\FB\D9\FF\ED\00#\00\FA\FF\F7\FFM\00\FB\00\06\FF\\\FB\FD\FF`\11\8A \FA\1B,\09`\FC\93\FCR\00\D0\00\0D\00\FE\FF\F7\FFs\00\EB\00N\FE>\FBP\02\E0\14b!\22\19\FA\05\9D\FBO\FD\AA\00\A9\00\FF\FF\00\00\00\00\FD\FF\9D\00\BE\00\8B\FDw\FB\0E\05-\18\7F!\EB\15\1D\03E\FB\13\FE\E1\00\80\00\F8\FF\FE\FF\08\00\C5\00q\00\CB\FC\18\FC(\08&\1B\E0 w\12\A7\00J\FB\CF\FE\F9\00X\00\F7\FF\FB\FF\1C\00\E5\00\02\00\1E\FC+\FD\87\0B\AA\1D\8D\1F\E9\0E\A6\FE\9B\FBx\FF\F8\006\00\F9\FF\F8\FF7\00\F9\00r\FF\96\FB\B8\FE\0D\0F\9D\1F\94\1De\0B\1E\FD$\FC\06\00\E4\00\1B\00\FC\FF\F7\FFZ\00\F9\00\C8\FEI\FB\BE\00\9A\12\E9 \0A\1B\08\08\10\FC\D2\FCt\00\C3\00\08\00\FE\FF\F9\FF\82\00\DF\00\0B\FEG\FB7\03\0C\16\81!\0E\18\F2\04s\FB\92\FD\C0\00\9B\00\FC\FF\00\00\00\00\00\00\AB\00\A7\00G\FD\A2\FB\18\06@\19]!\BE\147\02=\FBU\FE\EC\00r\00\F7\FF\FD\FF\0E\00\D1\00N\00\8C\FCj\FCL\09\13\1C~ =\11\E8\FF_\FB\0C\FF\FB\00L\00\F7\FF\FA\FF$\00\EE\00\D3\FF\EA\FB\A7\FD\BC\0Ch\1E\EF\1E\AF\0D\11\FE\C5\FB\AD\FF\F3\00,\00\FA\FF\F8\FFB\00\FB\00:\FFt\FB]\FFH\10$ \C2\1C5\0A\B3\FC]\FC0\00\DA\00\13\00\FD\FF\F7\FFg\00\F3\00\88\FE>\FB\8C\01\D0\133!\0D\1A\EE\06\CD\FB\13\FD\92\00\B6\00\03\00\FF\FF\00\00\FA\FF\90\00\CF\00\C7\FD[\FB+\041\17\8A!\F0\16\F4\03V\FB\D6\FD\D3\00\8D\00\FA\FF\FF\FF\04\00\B9\00\8C\00\05\FD\DB\FB,\07G\1A%!\8B\13]\01@\FB\97\FE\F5\00d\00\F7\FF\FC\FF\15\00\DC\00'\00P\FC\CA\FCx\0A\F2\1C\07 \02\107\FF{\FBG\FF\FB\00@\00\F8\FF\F9\FF.\00\F5\00\A2\FF\BB\FB1\FE\F5\0D\14\1F?\1Ew\0C\8A\FD\F5\FB\DE\FF\EC\00\22\00\FB\FF\F7\FFN\00\FB\00\FF\FEY\FB\11\00\83\11\96 \E0\1B\0B\09V\FC\99\FCV\00\CE\00\0D\00\FE\FF\F8\FFu\00\EA\00G\FE>\FBi\02\02\15f!\04\19\DC\05\98\FBV\FD\AD\00\A8\00\FF\FF\00\00\00\00\FD\FF\9E\00\BC\00\83\FD{\FB+\05L\18|!\CA\15\03\03D\FB\1A\FE\E2\00~\00\F8\FF\FE\FF\09\00\C6\00m\00\C3\FC \FCI\08A\1B\D6 T\12\92\00L\FB\D6\FE\FA\00W\00\F7\FF\FB\FF\1D\00\E6\00\FD\FF\18\FC8\FD\A9\0B\C0\1D|\1F\C6\0E\95\FE\9F\FB~\FF\F8\005\00\F9\FF\F8\FF8\00\F9\00l\FF\92\FB\C9\FE/\0F\AD\1F}\1DB\0B\12\FD*\FC\0B\00\E3\00\1A\00\FC\FF\F7\FF[\00\F8\00\C1\FEG\FB\D4\00\BC\12\F3 \EF\1A\E9\07\08\FC\D9\FCx\00\C2\00\07\00\FF\FF\F9\FF\83\00\DD\00\04\FEI\FBR\03-\16\83!\EF\17\D5\04o\FB\9A\FD\C3\00\9A\00\FC\FF\00\00\FF\FF\00\00\AD\00\A4\00@\FD\A8\FB6\06^\19X!\9C\14\1E\02=\FB]\FE\ED\00p\00\F7\FF\FD\FF\0F\00\D2\00J\00\85\FCt\FCm\09-\1Cr \1A\11\D4\FFa\FB\13\FF\FC\00J\00\F7\FF\FA\FF%\00\EF\00\CE\FF\E4\FB\B5\FD\DE\0C|\1E\DD\1E\8C\0D\01\FE\CA\FB\B3\FF\F3\00+\00\FA\FF\F8\FFD\00\FB\004\FFq\FBq\FFk\102 \A9\1C\13\0A\A8\FCc\FC5\00\D9\00\12\00\FD\FF\F7\FFi\00\F2\00\81\FE>\FB\A4\01\F2\13:!\F0\19\CF\06\C7\FB\1B\FD\96\00\B4\00\02\00\FF\FF\00\00\FB\FF\92\00\CD\00\C0\FD^\FBG\04Q\17\8A!\D0\16\D9\03S\FB\DE\FD\D5\00\8B\00\FA\FF\FF\FF\04\00\BA\00\89\00\FD\FC\E2\FBK\07c\1A\1D!i\13F\01A\FB\9E\FE\F5\00c\00\F7\FF\FC\FF\16\00\DD\00#\00I\FC\D5\FC\99\0A\09\1D\F9\1F\DF\0F$\FF\7F\FBM\FF\FB\00?\00\F8\FF\F9\FF/\00\F5\00\9C\FF\B6\FBA\FE\17\0E&\1F+\1ET\0C|\FD\FA\FB\E3\FF\EB\00!\00\FB\FF\F7\FFP\00\FB\00\F8\FEW\FB&\00\A6\11\A1 \C6\1B\EA\08M\FC\A0\FCZ\00\CD\00\0C\00\FE\FF\F8\FFw\00\E9\00?\FE?\FB\82\02#\15k!\E5\18\BE\05\93\FB^\FD\AF\00\A6\00\FF\FF\00\00\00\00\FD\FF\A0\00\B9\00|\FD\80\FBH\05k\18y!\A9\15\E9\02C\FB!\FE\E3\00}\00\F8\FF\FE\FF\09\00\C7\00i\00\BC\FC)\FCi\08\\\1B\CC 2\12|\00N\FB\DD\FE\FA\00V\00\F7\FF\FB\FF\1D\00\E7\00\F8\FF\12\FCE\FD\CB\0B\D6\1Dl\1F\A3\0E\84\FE\A4\FB\84\FF\F7\004\00\F9\FF\F8\FF:\00\FA\00f\FF\8E\FB\DB\FES\0F\BD\1Ff\1D!\0B\05\FD0\FC\10\00\E2\00\19\00\FC\FF\F7\FF]\00\F8\00\BA\FEF\FB\EA\00\DF\12\FC \D3\1A\C9\07\00\FC\E0\FC{\00\C0\00\07\00\FF\FF\F9\FF\85\00\DC\00\FC\FDJ\FBl\03N\16\85!\CF\17\B8\04l\FB\A2\FD\C5\00\98\00\FC\FF\00\00\FF\FF\01\00\AE\00\A1\008\FD\AE\FBT\06|\19S!{\14\05\02=\FBd\FE\EE\00o\00\F7\FF\FD\FF\0F\00\D4\00F\00~\FC~\FC\8E\09F\1Cf \F7\10\C0\FFd\FB\1A\FF\FC\00I\00\F7\FF\FA\FF&\00\F0\00\C9\FF\DF\FB\C4\FD\01\0D\90\1E\CA\1Ei\0D\F1\FD\CF\FB\B8\FF\F2\00)\00\FA\FF\F7\FFE\00\FC\00-\FFm\FB\84\FF\8E\10? \91\1C\F2\09\9D\FCj\FC9\00\D7\00\12\00\FD\FF\F7\FFj\00\F1\00z\FE=\FB\BC\01\14\14A!\D4\19\B0\06\C0\FB\22\FD\99\00\B3\00\02\00\FF\FF\00\00\FB\FF\93\00\CB\00\B8\FDa\FBc\04q\17\89!\B0\16\BD\03Q\FB\E6\FD\D7\00\8A\00\FA\FF\FF\FF\05\00\BC\00\86\00\F6\FC\E9\FBj\07\80\1A\15!G\13/\01B\FB\A5\FE\F6\00a\00\F7\FF\FC\FF\16\00\DF\00\1E\00C\FC\E1\FC\BB\0A!\1D\EA\1F\BC\0F\12\FF\82\FBT\FF\FA\00=\00\F8\FF\F9\FF0\00\F6\00\96\FF\B1\FBQ\FE:\0E8\1F\16\1E2\0Cn\FD\00\FC\E8\FF\EA\00 \00\FB\FF\F7\FFQ\00\FB\00\F1\FET\FB;\00\C9\11\AD \AC\1B\CA\08D\FC\A7\FC^\00\CC\00\0B\00\FE\FF\F8\FFx\00\E7\008\FE@\FB\9B\02E\15o!\C7\18\A1\05\8E\FBe\FD\B2\00\A5\00\FE\FF\00\00\00\00\FE\FF\A2\00\B7\00t\FD\84\FBf\05\8A\18v!\87\15\CF\02A\FB)\FE\E5\00{\00\F8\FF\FE\FF\0A\00\C9\00f\00\B5\FC2\FC\89\08w\1B\C2 \0F\12f\00P\FB\E4\FE\FA\00T\00\F7\FF\FB\FF\1E\00\E8\00\F3\FF\0C\FCS\FD\ED\0B\EB\1DZ\1F\80\0Es\FE\A8\FB\8A\FF\F7\002\00\F9\FF\F8\FF;\00\FA\00`\FF\8A\FB\ED\FEv\0F\CC\1FO\1D\FF\0A\F9\FC6\FC\15\00\E1\00\18\00\FC\FF\F7\FF^\00\F7\00\B3\FED\FB\01\01\02\13\04!\B8\1A\A9\07\F8\FB\E7\FC\7F\00\BF\00\06\00\FF\FF\F9\FF\86\00\DA\00\F5\FDL\FB\87\03n\16\86!\B0\17\9C\04h\FB\A9\FD\C7\00\96\00\FB\FF\00\00\FF\FF\01\00\B0\00\9F\001\FD\B4\FBs\06\99\19M!Y\14\ED\01=\FBk\FE\EF\00m\00\F7\FF\FD\FF\10\00\D5\00B\00w\FC\88\FC\AF\09_\1CY \D4\10\AC\FFg\FB \FF\FC\00H\00\F7\FF\FA\FF'\00\F0\00\C3\FF\D9\FB\D3\FD$\0D\A3\1E\B7\1EF\0D\E2\FD\D4\FB\BE\FF\F1\00(\00\FA\FF\F7\FFF\00\FC\00'\FFj\FB\98\FF\B1\10L x\1C\D1\09\93\FCq\FC=\00\D6\00\11\00\FD\FF\F7\FFl\00\F0\00r\FE=\FB\D4\016\14G!\B6\19\91\06\BA\FB)\FD\9C\00\B1\00\02\00\FF\FF\00\00\FB\FF\95\00\C9\00\B1\FDe\FB\80\04\90\17\88!\8F\16\A2\03N\FB\ED\FD\D9\00\88\00\F9\FF\FF\FF\05\00\BD\00\82\00\EF\FC\F0\FB\8A\07\9C\1A\0D!$\13\18\01C\FB\AC\FE\F7\00`\00\F7\FF\FC\FF\17\00\E0\00\1A\00=\FC\ED\FC\DD\0A8\1D\DB\1F\99\0F\FF\FE\86\FBZ\FF\FA\00<\00\F8\FF\F9\FF1\00\F6\00\90\FF\AD\FBb\FE]\0EI\1F\01\1E\10\0C`\FD\06\FC\EE\FF\E9\00\1F\00\FB\FF\F7\FFS\00\FB\00\EB\FER\FBQ\00\EC\11\B7 \91\1B\A9\08;\FC\AE\FCb\00\CA\00\0B\00\FE\FF\F8\FFz\00\E6\000\FE@\FB\B5\02f\15s!\A9\18\83\05\89\FBm\FD\B4\00\A3\00\FE\FF\00\00\00\00\FE\FF\A3\00\B4\00m\FD\89\FB\83\05\A9\18s!f\15\B5\02@\FB0\FE\E6\00z\00\F8\FF\FE\FF\0B\00\CA\00b\00\AE\FC;\FC\A9\08\91\1B\B7 \EC\11Q\00R\FB\EB\FE\FB\00S\00\F7\FF\FB\FF\1F\00\E9\00\EE\FF\06\FC`\FD\10\0C\01\1EI\1F]\0Eb\FE\AD\FB\90\FF\F6\001\00\F9\FF\F8\FF<\00\FA\00Z\FF\86\FB\FF\FE\99\0F\DB\1F8\1D\DD\0A\ED\FC=\FC\1A\00\E0\00\17\00\FC\FF\F7\FF`\00\F7\00\AC\FEC\FB\18\01$\13\0D!\9C\1A\8A\07\F0\FB\EF\FC\82\00\BD\00\05\00\FF\FF\F9\FF\88\00\D9\00\ED\FDN\FB\A2\03\8F\16\88!\90\17\80\04e\FB\B1\FD\C9\00\95\00\FB\FF\00\00\FF\FF\02\00\B1\00\9C\00)\FD\BA\FB\91\06\B6\19G!6\14\D4\01=\FBr\FE\F0\00l\00\F7\FF\FD\FF\11\00\D6\00=\00q\FC\93\FC\D1\09x\1CL \B1\10\98\FFj\FB'\FF\FC\00F\00\F7\FF\FA\FF(\00\F1\00\BE\FF\D4\FB\E2\FDF\0D\B7\1E\A3\1E$\0D\D3\FD\D9\FB\C3\FF\F0\00'\00\FA\FF\F7\FFH\00\FC\00 \FFg\FB\AC\FF\D4\10Y _\1C\AF\09\88\FCw\FCB\00\D5\00\10\00\FD\FF\F7\FFm\00\EF\00k\FE=\FB\ED\01Y\14M!\99\19s\06\B4\FB1\FD\9F\00\B0\00\01\00\FF\FF\00\00\FB\FF\96\00\C7\00\A9\FDh\FB\9C\04\B0\17\86!n\16\87\03L\FB\F5\FD\DA\00\86\00\F9\FF\FF\FF\06\00\BF\00\7F\00\E7\FC\F8\FB\A9\07\B8\1A\04!\02\13\01\01D\FB\B3\FE\F7\00^\00\F7\FF\FC\FF\18\00\E1\00\15\006\FC\F9\FC\FF\0AO\1D\CC\1Fv\0F\ED\FE\8A\FB`\FF\FA\00;\00\F8\FF\F9\FF2\00\F7\00\8A\FF\A8\FBs\FE\80\0EZ\1F\EB\1D\ED\0BS\FD\0C\FC\F3\FF\E8\00\1E\00\FB\FF\F7\FFT\00\FA\00\E4\FEP\FBf\00\0F\12\C2 w\1B\89\082\FC\B5\FCf\00\C9\00\0A\00\FE\FF\F8\FF{\00\E5\00)\FEA\FB\CF\02\87\15v!\8A\18f\05\84\FBt\FD\B7\00\A2\00\FE\FF\00\00\00\00\FE\FF\A5\00\B2\00e\FD\8E\FB\A1\05\C7\18o!E\15\9B\02@\FB8\FE\E7\00x\00\F8\FF\FE\FF\0B\00\CC\00^\00\A7\FCD\FC\CA\08\AC\1B\AD \C9\11;\00T\FB\F1\FE\FB\00Q\00\F7\FF\FB\FF \00\EA\00\E8\FF\00\FCn\FD2\0C\16\1E8\1F:\0EQ\FE\B1\FB\96\FF\F6\000\00\F9\FF\F8\FF=\00\FA\00T\FF\82\FB\12\FF\BC\0F\EA\1F!\1D\BB\0A\E1\FCC\FC\1E\00\DF\00\16\00\FC\FF\F7\FFa\00\F6\00\A5\FEB\FB/\01G\13\15!\80\1Aj\07\E9\FB\F6\FC\86\00\BC\00\05\00\FF\FF\FA\FF\8A\00\D7\00\E6\FDQ\FB\BD\03\B0\16\89!q\17c\04a\FB\B8\FD\CB\00\93\00\FB\FF\00\00\FF\FF\02\00\B3\00\99\00\22\FD\C0\FB\B0\06\D4\19A!\14\14\BC\01=\FBz\FE\F1\00j\00\F7\FF\FD\FF\12\00\D7\009\00j\FC\9D\FC\F2\09\91\1C? \8E\10\84\FFm\FB-\FF\FC\00E\00\F7\FF\FA\FF)\00\F2\00\B8\FF\CF\FB\F1\FDi\0D\CA\1E\90\1E\01\0D\C4\FD\DF\FB\C9\FF\F0\00&\00\FA\FF\F7\FFI\00\FC\00\1A\FFd\FB\C0\FF\F7\10f F\1C\8E\09~\FC~\FCF\00\D4\00\0F\00\FD\FF\F7\FFo\00\EE\00d\FE=\FB\05\02{\14S!|\19T\06\AE\FB8\FD\A1\00\AE\00\01\00\FF\FF\00\00\FC\FF\98\00\C5\00\A2\FDl\FB\B8\04\CF\17\85!N\16l\03J\FB\FC\FD\DC\00\85\00\F9\FF\FF\FF\07\00\C0\00{\00\E0\FC\00\FC\C9\07\D3\1A\FC \DF\12\EA\00F\FB\BA\FE\F8\00]\00\F7\FF\FC\FF\19\00\E2\00\10\000\FC\05\FD!\0Bf\1D\BD\1FS\0F\DB\FE\8E\FBf\FF\FA\00:\00\F8\FF\F9\FF4\00\F7\00\84\FF\A4\FB\84\FE\A3\0El\1F\D6\1D\CB\0BE\FD\12\FC\F8\FF\E7\00\1D\00\FB\FF\F7\FFV\00\FA\00\DD\FEN\FB|\002\12\CC \\\1Bi\08)\FC\BC\FCi\00\C7\00\09\00\FE\FF\F8\FF}\00\E3\00!\FEC\FB\E9\02\A9\15y!k\18H\05\80\FB|\FD\B9\00\A0\00\FD\FF\00\00\00\00\FF\FF\A6\00\AF\00^\FD\93\FB\BE\05\E5\18k!#\15\82\02?\FB?\FE\E9\00w\00\F8\FF\FE\FF\0C\00\CD\00Z\00\A0\FCM\FC\EA\08\C6\1B\A1 \A6\11&\00W\FB\F8\FE\FB\00P\00\F7\FF\FB\FF!\00\EB\00\E3\FF\FA\FB|\FDT\0C+\1E&\1F\17\0EA\FE\B6\FB\9C\FF\F5\00/\00\F9\FF\F8\FF?\00\FB\00M\FF\7F\FB$\FF\DF\0F\F9\1F\09\1D\99\0A\D5\FCI\FC#\00\DD\00\16\00\FC\FF\F7\FFc\00\F5\00\9E\FEA\FBF\01i\13\1D!c\1AK\07\E2\FB\FD\FC\89\00\BA\00\04\00\FF\FF\FA\FF\8B\00\D5\00\DE\FDS\FB\D9\03\D0\16\8A!Q\17G\04^\FB\C0\FD\CD\00\92\00\FB\FF\00\00\FF\FF\02\00\B4\00\96\00\1B\FD\C7\FB\CF\06\F0\19:!\F2\13\A4\01>\FB\81\FE\F2\00i\00\F7\FF\FD\FF\12\00\D9\005\00c\FC\A8\FC\13\0A\A9\1C2 k\10q\FFq\FB4\FF\FB\00D\00\F8\FF\FA\FF+\00\F3\00\B3\FF\CA\FB\01\FE\8C\0D\DD\1E|\1E\DE\0C\B5\FD\E4\FB\CE\FF\EF\00%\00\FA\FF\F7\FFJ\00\FC\00\13\FFa\FB\D4\FF\1A\11r -\1Cm\09t\FC\85\FCJ\00\D2\00\0F\00\FD\FF\F7\FFp\00\ED\00]\FE=\FB\1E\02\9C\14X!^\196\06\A8\FB@\FD\A4\00\AD\00\00\00\FF\FF\00\00\FC\FF\9A\00\C3\00\9A\FDo\FB\D5\04\EF\17\83!-\16R\03I\FB\04\FE\DD\00\83\00\F9\FF\FF\FF\07\00\C2\00x\00\D9\FC\08\FC\E9\07\EF\1A\F3 \BC\12\D4\00G\FB\C1\FE\F8\00[\00\F7\FF\FC\FF\1A\00\E3\00\0B\00*\FC\12\FDB\0B}\1D\AD\1F/\0F\C9\FE\92\FBl\FF\F9\008\00\F8\FF\F9\FF5\00\F8\00~\FF\9F\FB\95\FE\C6\0E|\1F\C0\1D\A9\0B8\FD\18\FC\FD\FF\E6\00\1D\00\FB\FF\F7\FFW\00\FA\00\D6\FEL\FB\92\00T\12\D6 A\1BI\08 \FC\C3\FCm\00\C6\00\09\00\FE\FF\F8\FF~\00\E2\00\1A\FED\FB\03\03\CA\15|!L\18+\05{\FB\83\FD\BC\00\9E\00\FD\FF\00\00\00\00\FF\FF\A8\00\AD\00V\FD\98\FB\DC\05\04\19f!\02\15i\02>\FBG\FE\EA\00u\00\F8\FF\FE\FF\0D\00\CE\00V\00\99\FCV\FC\0B\09\E0\1B\96 \83\11\11\00Y\FB\FF\FE\FB\00N\00\F7\FF\FB\FF\22\00\EC\00\DE\FF\F5\FB\8A\FDw\0C?\1E\14\1F\F5\0D1\FE\BB\FB\A2\FF\F5\00.\00\F9\FF\F8\FF@\00\FB\00G\FF{\FB7\FF\02\10\07 \F2\1Cx\0A\CA\FCP\FC'\00\DC\00\15\00\FC\FF\F7\FFd\00\F5\00\97\FE@\FB]\01\8B\13%!G\1A,\07\DB\FB\05\FD\8C\00\B9\00\04\00\FF\FF\FA\FF\8D\00\D3\00\D6\FDV\FB\F4\03\F0\16\8A!1\17+\04[\FB\C7\FD\CF\00\90\00\FA\FF\00\00\FF\FF\03\00\B6\00\92\00\13\FD\CD\FB\EE\06\0D\1A3!\D0\13\8C\01>\FB\88\FE\F3\00g\00\F7\FF\06\00\1D\00\03\FF\FE\00\A1\02\A6\F8V\02\A5(\A5(V\02\A6\F8\A1\02\FE\00\03\FF\1D\00\06\00\00\00!\00\A6\FF?\FF\0B\03B\FE>\F8\7F\15\AC0\7F\15>\F8B\FE\0B\03?\FF\A6\FF!\00\00\00\FA\FF\CE\FF\14\01\00\FD5\06\D5\F4\DA\15\92@\AE\FE\F3\FCh\03\86\FDQ\01\8B\FF\11\00\01\00\EC\FF\F9\FF\C6\00U\FD5\06\90\F3\E5\1Ck=q\FA4\FFF\02\FF\FD-\01\90\FF\10\00\03\00\DB\FF-\00`\00\E1\FD\CE\05\ED\F2\F3# 9\22\F7D\01\1F\01\89\FE\FB\00\9C\FF\0D\00\06\00\C9\FFh\00\E5\FF\A0\FE\FB\04\0C\F3\C5*\D83\C9\F4\0B\03\05\00\1A\FF\C1\00\AD\FF\0A\00\09\00\B5\FF\A5\00\\\FF\8C\FF\BF\03\06\F4\221\C8-c\F3v\04\08\FF\A7\FF\84\00\C0\FF\07\00\0C\00\A4\FF\E1\00\CB\FE\9B\00!\02\EE\F5\CD6$'\E1\F2z\053\FE*\00G\00\D3\FF\04\00\0F\00\95\FF\17\01=\FE\BD\010\00\CC\F8\92;* .\F3\12\06\8F\FD\9A\00\10\00\E5\FF\02\00\10\00\8C\FFB\01\BB\FD\E4\02\01\FE\9C\FCE?\16\19-\F4A\06!\FD\F3\00\E0\FF\F4\FF\01\00\10\00\8B\FF]\01O\FD\FB\03\B2\FBS\01\C2A$\12\BA\F5\0F\06\E9\FC3\01\BB\FF\00\00\00\00\0D\00\93\FFc\01\04\FD\EF\04b\F9\D7\06\F2B\8D\0B\B0\F7\87\05\E6\FCX\01\A0\FF\09\00\00\00\00\00\07\00\A5\FFR\01\E2\FC\AD\055\F7\08\0D\CBB\81\05\E8\F9\BB\04\12\FDd\01\90\FF\0E\00\00\00\FE\FF\C2\FF'\01\F1\FC\22\06T\F5\B8\13JA)\00<\FC\BD\03f\FDX\01\8A\FF\11\00\01\00\F1\FF\EB\FF\E1\005\FD@\06\E4\F3\B7\1A\85>\A6\FB\86\FE\A0\02\D7\FD9\01\8E\FF\10\00\03\00\E1\FF\1C\00\82\00\B0\FD\F9\05\0C\F3\CB!\8F:\0D\F8\A9\00y\01]\FE\0B\01\98\FF\0E\00\05\00\CE\FFU\00\0D\00`\FEH\05\EC\F2\B6(\915h\F5\88\02Z\00\ED\FE\D4\00\A8\FF\0B\00\08\00\BB\FF\92\00\87\FF?\FF+\04\A1\F3=/\B8/\B8\F3\11\04R\FF|\FF\97\00\BA\FF\08\00\0B\00\A9\FF\CF\00\F8\FED\00\AA\02>\F5$5;)\F2\F25\05p\FE\03\00Z\00\CD\FF\05\00\0E\00\99\FF\07\01h\FEc\01\D0\00\D0\F75:U\22\02\F3\EF\05\BC\FDz\00 \00\DF\FF\03\00\10\00\8E\FF6\01\E1\FD\8A\02\B2\FEV\FB@>B\1B\CE\F3>\06=\FD\DB\00\EE\FF\F0\FF\01\00\11\00\8A\FFW\01m\FD\A8\03i\FC\C8\FF A@\143\F5(\06\F5\FC\22\01\C5\FF\FD\FF\00\00\0F\00\8F\FFd\01\17\FD\A9\04\16\FA\10\05\B8B\87\0D\0D\F7\B9\05\E2\FCP\01\A7\FF\07\00\00\00\00\00\0A\00\9E\FFZ\01\E8\FCz\05\DA\F7\10\0B\FBBK\075\F9\00\05\00\FDc\01\94\FF\0D\00\00\00\01\00\B8\FF7\01\E7\FC\07\06\DE\F5\9F\11\E4A\B8\01\84\FB\0F\04H\FD^\01\8B\FF\10\00\01\00\F5\FF\DD\FF\F9\00\1B\FDA\06G\F4\8B\18\81?\F1\FC\D5\FD\FA\02\B2\FDE\01\8C\FF\11\00\02\00\E6\FF\0C\00\A2\00\85\FD\1A\06<\F3\9F\1F\E6;\0E\F9\07\00\D4\013\FE\1B\01\94\FF\0F\00\04\00\D4\FFC\003\00%\FE\89\05\E0\F2\9C&37\1E\F6\FD\01\B0\00\C0\FE\E6\00\A2\FF\0C\00\07\00\C1\FF\7F\00\B2\FF\F6\FE\8E\04Q\F3I-\981#\F4\A2\03\A0\FFQ\FF\AA\00\B4\FF\09\00\0A\00\AE\FF\BD\00%\FF\F1\FF+\03\A5\F4h3H+\17\F3\E7\04\B1\FE\DB\FFl\00\C7\FF\06\00\0D\00\9E\FF\F7\00\94\FE\09\01j\01\EB\F6\C18}$\E8\F2\C1\05\EE\FDW\001\00\DA\FF\03\00\10\00\91\FF)\01\09\FE/\02_\FF'\FA =p\1D}\F31\06^\FD\BF\00\FD\FF\EB\FF\02\00\11\00\8B\FFN\01\8E\FDR\03 \FDR\FE`@c\16\B7\F49\06\05\FD\0F\01\D1\FF\F9\FF\00\00\10\00\8D\FFb\01.\FD^\04\CC\FA[\03^B\8E\0Fq\F6\E4\05\E2\FCE\01\AF\FF\04\00\00\00\00\00\0B\00\99\FF`\01\F2\FC@\05\85\F8&\09\0CC&\09\85\F8@\05\F2\FC`\01\99\FF\0B\00\00\00\04\00\AF\FFE\01\E2\FC\E4\05q\F6\8E\0F^B[\03\CC\FA^\04.\FDb\01\8D\FF\10\00\00\00\F9\FF\D1\FF\0F\01\05\FD9\06\B7\F4c\16`@R\FE \FDR\03\8E\FDN\01\8B\FF\11\00\02\00\EB\FF\FD\FF\BF\00^\FD1\06}\F3p\1D ='\FA_\FF/\02\09\FE)\01\91\FF\10\00\03\00\DA\FF1\00W\00\EE\FD\C1\05\E8\F2}$\C18\EB\F6j\01\09\01\94\FE\F7\00\9E\FF\0D\00\06\00\C7\FFl\00\DB\FF\B1\FE\E7\04\17\F3H+h3\A5\F4+\03\F1\FF%\FF\BD\00\AE\FF\0A\00\09\00\B4\FF\AA\00Q\FF\A0\FF\A2\03#\F4\981I-Q\F3\8E\04\F6\FE\B2\FF\7F\00\C1\FF\07\00\0C\00\A2\FF\E6\00\C0\FE\B0\00\FD\01\1E\F637\9C&\E0\F2\89\05%\FE3\00C\00\D4\FF\04\00\0F\00\94\FF\1B\013\FE\D4\01\07\00\0E\F9\E6;\9F\1F<\F3\1A\06\85\FD\A2\00\0C\00\E6\FF\02\00\11\00\8C\FFE\01\B2\FD\FA\02\D5\FD\F1\FC\81?\8B\18G\F4A\06\1B\FD\F9\00\DD\FF\F5\FF\01\00\10\00\8B\FF^\01H\FD\0F\04\84\FB\B8\01\E4A\9F\11\DE\F5\07\06\E7\FC7\01\B8\FF\01\00\00\00\0D\00\94\FFc\01\00\FD\00\055\F9K\07\FBB\10\0B\DA\F7z\05\E8\FCZ\01\9E\FF\0A\00\00\00\00\00\07\00\A7\FFP\01\E2\FC\B9\05\0D\F7\87\0D\B8B\10\05\16\FA\A9\04\17\FDd\01\8F\FF\0F\00\00\00\FD\FF\C5\FF\22\01\F5\FC(\063\F5@\14 A\C8\FFi\FC\A8\03m\FDW\01\8A\FF\11\00\01\00\F0\FF\EE\FF\DB\00=\FD>\06\CE\F3B\1B@>V\FB\B2\FE\8A\02\E1\FD6\01\8E\FF\10\00\03\00\DF\FF \00z\00\BC\FD\EF\05\02\F3U\225:\D0\F7\D0\00c\01h\FE\07\01\99\FF\0E\00\05\00\CD\FFZ\00\03\00p\FE5\05\F2\F2;)$5>\F5\AA\02D\00\F8\FE\CF\00\A9\FF\0B\00\08\00\BA\FF\97\00|\FFR\FF\11\04\B8\F3\B8/=/\A1\F3+\04?\FF\87\FF\92\00\BB\FF\08\00\0B\00\A8\FF\D4\00\ED\FEZ\00\88\02h\F5\915\B6(\EC\F2H\05`\FE\0D\00U\00\CE\FF\05\00\0E\00\98\FF\0B\01]\FEy\01\A9\00\0D\F8\8F:\CB!\0C\F3\F9\05\B0\FD\82\00\1C\00\E1\FF\03\00\10\00\8E\FF9\01\D7\FD\A0\02\86\FE\A6\FB\85>\B7\1A\E4\F3@\065\FD\E1\00\EB\FF\F1\FF\01\00\11\00\8A\FFX\01f\FD\BD\03<\FC)\00JA\B8\13T\F5\22\06\F1\FC'\01\C2\FF\FE\FF\00\00\0E\00\90\FFd\01\12\FD\BB\04\E8\F9\81\05\CBB\08\0D5\F7\AD\05\E2\FCR\01\A5\FF\07\00\00\00\00\00\09\00\A0\FFX\01\E6\FC\87\05\B0\F7\8D\0B\F2B\D7\06b\F9\EF\04\04\FDc\01\93\FF\0D\00\00\00\00\00\BB\FF3\01\E9\FC\0F\06\BA\F5$\12\C2AS\01\B2\FB\FB\03O\FD]\01\8B\FF\10\00\01\00\F4\FF\E0\FF\F3\00!\FDA\06-\F4\16\19E?\9C\FC\01\FE\E4\02\BB\FDB\01\8C\FF\10\00\02\00\E5\FF\10\00\9A\00\8F\FD\12\06.\F3* \92;\CC\F80\00\BD\01=\FE\17\01\95\FF\0F\00\04\00\D3\FFG\00*\003\FEz\05\E1\F2$'\CD6\EE\F5!\02\9B\00\CB\FE\E1\00\A4\FF\0C\00\07\00\C0\FF\84\00\A7\FF\08\FFv\04c\F3\C8-\221\06\F4\BF\03\8C\FF\\\FF\A5\00\B5\FF\09\00\0A\00\AD\FF\C1\00\1A\FF\05\00\0B\03\C9\F4\D83\C5*\0C\F3\FB\04\A0\FE\E5\FFh\00\C9\FF\06\00\0D\00\9C\FF\FB\00\89\FE\1F\01D\01\22\F7 9\F3#\ED\F2\CE\05\E1\FD`\00-\00\DB\FF\03\00\10\00\90\FF-\01\FF\FDF\024\FFq\FAk=\E5\1C\90\F35\06U\FD\C6\00\F9\FF\EC\FF\01\00\11\00\8B\FFQ\01\86\FDh\03\F3\FC\AE\FE\92@\DA\15\D5\F45\06\00\FD\14\01\CE\FF\FA\FF\00\00\0F\00\8D\FFc\01(\FDq\04\9E\FA\C7\03yB\0B\0F\97\F6\DA\05\E2\FCH\01\AD\FF\05\00\00\00\00\00\0B\00\9A\FF_\01\EF\FCO\05Z\F8\9F\09\0AC\AE\08\B1\F80\05\F5\FCa\01\97\FF\0C\00\00\00\03\00\B1\FFA\01\E3\FC\ED\05L\F6\11\10BB\F1\02\FA\FAK\044\FDa\01\8C\FF\10\00\01\00\F8\FF\D4\FF\0A\01\0A\FD<\06\9A\F4\ED\16*@\F8\FDM\FD<\03\97\FDL\01\8B\FF\11\00\02\00\EA\FF\00\00\B8\00g\FD,\06k\F3\FC\1D\D3<\DF\F9\89\FF\18\02\13\FE&\01\92\FF\0F\00\04\00\D9\FF6\00N\00\FB\FD\B4\05\E4\F2\04%_8\B6\F6\90\01\F3\00\9F\FE\F3\00\9F\FF\0D\00\06\00\C6\FFq\00\D1\FF\C2\FE\D1\04#\F3\C9+\F52\83\F4I\03\DC\FF0\FF\B8\00\B0\FF\0A\00\09\00\B3\FF\AE\00F\FF\B4\FF\85\03B\F4\0E2\CA,A\F3\A5\04\E4\FE\BC\FFz\00\C3\FF\07\00\0D\00\A1\FF\EA\00\B5\FE\C6\00\D9\01O\F6\997\16&\E0\F2\98\05\16\FE<\00?\00\D6\FF\04\00\0F\00\93\FF\1F\01(\FE\EB\01\DD\FFR\F96<\13\1FK\F3 \06{\FD\A9\00\08\00\E7\FF\02\00\11\00\8C\FFG\01\A9\FD\10\03\A8\FDG\FD\BB?\01\18b\F4@\06\15\FD\FF\00\DA\FF\F6\FF\01\00\10\00\8B\FF_\01A\FD#\04V\FB\1F\02\06B\19\11\02\F6\FF\05\E5\FC;\01\B6\FF\02\00\00\00\0D\00\95\FFb\01\FC\FC\10\05\09\F9\C1\07\03C\94\0A\05\F8l\05\EA\FC\\\01\9D\FF\0A\00\00\00\00\00\06\00\A9\FFM\01\E1\FC\C4\05\E6\F6\08\0E\A5B\A1\04C\FA\97\04\1D\FDd\01\8F\FF\0F\00\00\00\FC\FF\C8\FF\1E\01\F8\FC-\06\13\F5\C8\14\F2@i\FF\97\FC\92\03u\FDU\01\8A\FF\11\00\01\00\EF\FF\F2\FF\D4\00E\FD;\06\B8\F3\CE\1B\FB=\08\FB\DE\FEs\02\EB\FD3\01\8F\FF\10\00\03\00\DE\FF%\00q\00\C8\FD\E5\05\FA\F2\DF\22\DB9\94\F7\F7\00L\01s\FE\03\01\9A\FF\0E\00\05\00\CC\FF^\00\F9\FF\80\FE#\05\F9\F2\C0)\B84\16\F5\CB\02/\00\03\FF\CA\00\AA\FF\0B\00\08\00\B8\FF\9B\00r\FFe\FF\F6\03\D1\F310\C1.\8B\F3E\04-\FF\92\FF\8D\00\BD\FF\08\00\0C\00\A6\FF\D8\00\E2\FEo\00f\02\93\F5\FB51(\E7\F2Y\05Q\FE\17\00P\00\D0\FF\05\00\0E\00\97\FF\0F\01S\FE\90\01\81\00K\F8\E6:?!\16\F3\02\06\A5\FD\8A\00\18\00\E2\FF\02\00\10\00\8D\FF<\01\CE\FD\B7\02Z\FE\F7\FB\C6>,\1A\FC\F3A\06.\FD\E7\00\E7\FF\F2\FF\01\00\10\00\8B\FFZ\01^\FD\D2\03\0E\FC\8B\00uA2\13u\F5\1C\06\EE\FC+\01\C0\FF\FF\FF\00\00\0E\00\91\FFd\01\0D\FD\CD\04\BB\F9\F2\05\D9B\88\0C^\F7\A1\05\E3\FCT\01\A3\FF\08\00\00\00\00\00\09\00\A2\FFV\01\E5\FC\94\05\87\F7\0A\0C\E6Bd\06\8E\F9\DE\04\09\FDd\01\92\FF\0E\00\00\00\00\00\BD\FF/\01\EC\FC\16\06\98\F5\AB\12\9CA\EE\00\E0\FB\E6\03W\FD[\01\8B\FF\10\00\01\00\F3\FF\E4\FF\ED\00'\FDA\06\14\F4\A1\19\06?I\FC.\FE\CD\02\C4\FD?\01\8D\FF\10\00\02\00\E3\FF\14\00\92\00\9A\FD\0A\06\22\F3\B4 <;\8B\F8X\00\A7\01H\FE\13\01\96\FF\0F\00\04\00\D1\FFL\00 \00B\FEj\05\E3\F2\AB'f6\C0\F5D\02\85\00\D7\FE\DD\00\A5\FF\0C\00\07\00\BE\FF\89\00\9D\FF\1A\FF^\04v\F3E.\AA0\EB\F3\DB\03y\FFg\FF\A0\00\B7\FF\09\00\0B\00\AC\FF\C6\00\0E\FF\1A\00\EB\02\EF\F4I4C*\02\F3\0F\05\90\FE\EF\FFc\00\CA\FF\06\00\0E\00\9B\FF\FF\00~\FE6\01\1E\01[\F7~9i#\F3\F2\D9\05\D4\FDi\00)\00\DD\FF\03\00\10\00\90\FF0\01\F5\FD\\\02\09\FF\BC\FA\B5=Z\1C\A3\F38\06M\FD\CD\00\F5\FF\ED\FF\01\00\11\00\8B\FFS\01~\FD}\03\C5\FC\0B\FF\C3@Q\15\F4\F41\06\FC\FC\19\01\CB\FF\FB\FF\00\00\0F\00\8E\FFc\01\22\FD\84\04q\FA4\04\90B\89\0E\BE\F6\CF\05\E1\FCJ\01\AB\FF\06\00\00\00\00\00\0B\00\9B\FF]\01\EC\FC]\05/\F8\19\0A\07C7\08\DD\F8!\05\F8\FCb\01\96\FF\0C\00\00\00\03\00\B4\FF>\01\E4\FC\F6\05&\F6\95\10&B\87\02(\FB7\04;\FD`\01\8C\FF\10\00\01\00\F7\FF\D7\FF\04\01\0F\FD>\06}\F4v\17\F4?\9F\FD{\FD&\03\A0\FDJ\01\8B\FF\11\00\02\00\E9\FF\04\00\B1\00q\FD&\06Z\F3\88\1E\87<\98\F9\B3\FF\02\02\1E\FE\22\01\93\FF\0F\00\04\00\D7\FF:\00E\00\09\FE\A7\05\E1\F2\8D%\FD7\82\F6\B5\01\DC\00\AA\FE\EE\00\A0\FF\0D\00\06\00\C4\FFv\00\C7\FF\D3\FE\BC\041\F3J,\832a\F4h\03\C8\FF;\FF\B3\00\B1\FF\0A\00\0A\00\B1\FF\B3\00;\FF\C8\FFh\03a\F4\832J,1\F3\BC\04\D3\FE\C7\FFv\00\C4\FF\06\00\0D\00\A0\FF\EE\00\AA\FE\DC\00\B5\01\82\F6\FD7\8D%\E1\F2\A7\05\09\FEE\00:\00\D7\FF\04\00\0F\00\93\FF\22\01\1E\FE\02\02\B3\FF\98\F9\87<\88\1EZ\F3&\06q\FD\B1\00\04\00\E9\FF\02\00\11\00\8B\FFJ\01\A0\FD&\03{\FD\9F\FD\F4?v\17}\F4>\06\0F\FD\04\01\D7\FF\F7\FF\01\00\10\00\8C\FF`\01;\FD7\04(\FB\87\02&B\95\10&\F6\F6\05\E4\FC>\01\B4\FF\03\00\00\00\0C\00\96\FFb\01\F8\FC!\05\DD\F87\08\07C\19\0A/\F8]\05\EC\FC]\01\9B\FF\0B\00\00\00\00\00\06\00\AB\FFJ\01\E1\FC\CF\05\BE\F6\89\0E\90B4\04q\FA\84\04\22\FDc\01\8E\FF\0F\00\00\00\FB\FF\CB\FF\19\01\FC\FC1\06\F4\F4Q\15\C3@\0B\FF\C5\FC}\03~\FDS\01\8B\FF\11\00\01\00\ED\FF\F5\FF\CD\00M\FD8\06\A3\F3Z\1C\B5=\BC\FA\09\FF\\\02\F5\FD0\01\90\FF\10\00\03\00\DD\FF)\00i\00\D4\FD\D9\05\F3\F2i#~9[\F7\1E\016\01~\FE\FF\00\9B\FF\0E\00\06\00\CA\FFc\00\EF\FF\90\FE\0F\05\02\F3C*I4\EF\F4\EB\02\1A\00\0E\FF\C6\00\AC\FF\0B\00\09\00\B7\FF\A0\00g\FFy\FF\DB\03\EB\F3\AA0E.v\F3^\04\1A\FF\9D\FF\89\00\BE\FF\07\00\0C\00\A5\FF\DD\00\D7\FE\85\00D\02\C0\F5f6\AB'\E3\F2j\05B\FE \00L\00\D1\FF\04\00\0F\00\96\FF\13\01H\FE\A7\01X\00\8B\F8<;\B4 \22\F3\0A\06\9A\FD\92\00\14\00\E3\FF\02\00\10\00\8D\FF?\01\C4\FD\CD\02.\FEI\FC\06?\A1\19\14\F4A\06'\FD\ED\00\E4\FF\F3\FF\01\00\10\00\8B\FF[\01W\FD\E6\03\E0\FB\EE\00\9CA\AB\12\98\F5\16\06\EC\FC/\01\BD\FF\00\00\00\00\0E\00\92\FFd\01\09\FD\DE\04\8E\F9d\06\E6B\0A\0C\87\F7\94\05\E5\FCV\01\A2\FF\09\00\00\00\00\00\08\00\A3\FFT\01\E3\FC\A1\05^\F7\88\0C\D9B\F2\05\BB\F9\CD\04\0D\FDd\01\91\FF\0E\00\00\00\FF\FF\C0\FF+\01\EE\FC\1C\06u\F52\13uA\8B\00\0E\FC\D2\03^\FDZ\01\8B\FF\10\00\01\00\F2\FF\E7\FF\E7\00.\FDA\06\FC\F3,\1A\C6>\F7\FBZ\FE\B7\02\CE\FD<\01\8D\FF\10\00\02\00\E2\FF\18\00\8A\00\A5\FD\02\06\16\F3?!\E6:K\F8\81\00\90\01S\FE\0F\01\97\FF\0E\00\05\00\D0\FFP\00\17\00Q\FEY\05\E7\F21(\FB5\93\F5f\02o\00\E2\FE\D8\00\A6\FF\0C\00\08\00\BD\FF\8D\00\92\FF-\FFE\04\8B\F3\C1.10\D1\F3\F6\03e\FFr\FF\9B\00\B8\FF\08\00\0B\00\AA\FF\CA\00\03\FF/\00\CB\02\16\F5\B84\C0)\F9\F2#\05\80\FE\F9\FF^\00\CC\FF\05\00\0E\00\9A\FF\03\01s\FEL\01\F7\00\94\F7\DB9\DF\22\FA\F2\E5\05\C8\FDq\00%\00\DE\FF\03\00\10\00\8F\FF3\01\EB\FDs\02\DE\FE\08\FB\FB=\CE\1B\B8\F3;\06E\FD\D4\00\F2\FF\EF\FF\01\00\11\00\8A\FFU\01u\FD\92\03\97\FCi\FF\F2@\C8\14\13\F5-\06\F8\FC\1E\01\C8\FF\FC\FF\00\00\0F\00\8F\FFd\01\1D\FD\97\04C\FA\A1\04\A5B\08\0E\E6\F6\C4\05\E1\FCM\01\A9\FF\06\00\00\00\00\00\0A\00\9D\FF\\\01\EA\FCl\05\05\F8\94\0A\03C\C1\07\09\F9\10\05\FC\FCb\01\95\FF\0D\00\00\00\02\00\B6\FF;\01\E5\FC\FF\05\02\F6\19\11\06B\1F\02V\FB#\04A\FD_\01\8B\FF\10\00\01\00\F6\FF\DA\FF\FF\00\15\FD@\06b\F4\01\18\BB?G\FD\A8\FD\10\03\A9\FDG\01\8C\FF\11\00\02\00\E7\FF\08\00\A9\00{\FD \06K\F3\13\1F6<R\F9\DD\FF\EB\01(\FE\1F\01\93\FF\0F\00\04\00\D6\FF?\00<\00\16\FE\98\05\E0\F2\16&\997O\F6\D9\01\C6\00\B5\FE\EA\00\A1\FF\0D\00\07\00\C3\FFz\00\BC\FF\E4\FE\A5\04A\F3\CA,\0E2B\F4\85\03\B4\FFF\FF\AE\00\B3\FF\09\00\0A\00\B0\FF\B8\000\FF\DC\FFI\03\83\F4\F52\C9+#\F3\D1\04\C2\FE\D1\FFq\00\C6\FF\06\00\0D\00\9F\FF\F3\00\9F\FE\F3\00\90\01\B6\F6_8\04%\E4\F2\B4\05\FB\FDN\006\00\D9\FF\04\00\0F\00\92\FF&\01\13\FE\18\02\89\FF\DF\F9\D3<\FC\1Dk\F3,\06g\FD\B8\00\00\00\EA\FF\02\00\11\00\8B\FFL\01\97\FD<\03M\FD\F8\FD*@\ED\16\9A\F4<\06\0A\FD\0A\01\D4\FF\F8\FF\01\00\10\00\8C\FFa\014\FDK\04\FA\FA\F1\02BB\11\10L\F6\ED\05\E3\FCA\01\B1\FF\03\00\00\00\0C\00\97\FFa\01\F5\FC0\05\B1\F8\AE\08\0AC\9F\09Z\F8O\05\EF\FC_\01\9A\FF\0B\00\00\00\00\00\05\00\AD\FFH\01\E2\FC\DA\05\97\F6\0B\0FyB\C7\03\9E\FAq\04(\FDc\01\8D\FF\0F\00", [12608 x i8] zeroinitializer }, align 32
@coefficient_sizes = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 192, i16 20480, i16 96, i16 10240, i16 64, i16 96, i16 5120, i16 0, i16 32, i16 4704, i16 32, i16 4704, i16 0, i16 64, i16 4704, i16 0], [32 x i8] zeroinitializer }, align 32
@snd_nm256_write_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 305, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"write_buffer invalid offset = %d size = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_nm256_write_buffer\00", [41 x i8] zeroinitializer }, align 32
@snd_nm256_write_buffer._entry_ptr = internal global ptr @snd_nm256_write_buffer._entry, section ".printk_index", align 4
@snd_nm256_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 262402, i64 6, i32 -2147483394, i32 8000, i32 48000, i32 1, i32 2, i32 131072, i32 256, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_nm256_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr @snd_nm256_ac97_reset, ptr null, ptr @snd_nm256_ac97_write, ptr @snd_nm256_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nm256_res_table = internal constant { [13 x %struct.snd_ac97_res_table], [44 x i8] } { [13 x %struct.snd_ac97_res_table] [%struct.snd_ac97_res_table { i16 2, i16 7967 }, %struct.snd_ac97_res_table { i16 4, i16 7967 }, %struct.snd_ac97_res_table { i16 6, i16 31 }, %struct.snd_ac97_res_table { i16 10, i16 31 }, %struct.snd_ac97_res_table { i16 12, i16 31 }, %struct.snd_ac97_res_table { i16 14, i16 31 }, %struct.snd_ac97_res_table { i16 16, i16 7967 }, %struct.snd_ac97_res_table { i16 18, i16 7967 }, %struct.snd_ac97_res_table { i16 20, i16 7967 }, %struct.snd_ac97_res_table { i16 22, i16 7967 }, %struct.snd_ac97_res_table { i16 24, i16 7967 }, %struct.snd_ac97_res_table { i16 28, i16 3855 }, %struct.snd_ac97_res_table zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s AC97\00", [24 x i8] zeroinitializer }, align 32
@nm256_ac97_init_val = internal constant { [17 x %struct.initialValues], [60 x i8] } { [17 x %struct.initialValues] [%struct.initialValues { i16 2, i16 -32768 }, %struct.initialValues { i16 4, i16 -32768 }, %struct.initialValues { i16 6, i16 -32768 }, %struct.initialValues { i16 10, i16 -32768 }, %struct.initialValues { i16 12, i16 -32760 }, %struct.initialValues { i16 14, i16 -32768 }, %struct.initialValues { i16 16, i16 -30712 }, %struct.initialValues { i16 18, i16 -30712 }, %struct.initialValues { i16 20, i16 -30712 }, %struct.initialValues { i16 22, i16 -30712 }, %struct.initialValues { i16 24, i16 -30712 }, %struct.initialValues { i16 26, i16 0 }, %struct.initialValues { i16 28, i16 2827 }, %struct.initialValues { i16 32, i16 0 }, %struct.initialValues { i16 34, i16 -32768 }, %struct.initialValues { i16 124, i16 -31868 }, %struct.initialValues { i16 126, i16 30217 }], [60 x i8] zeroinitializer }, align 32
@snd_nm256_ac97_write.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 1, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_nm256_ac97_write\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nm256: ac97 codec not ready..\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 16, i64 32773, i64 32774, i64 32790]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.70 = internal global [10 x i64] [i64 8, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [19 x i64] [i64 17, i64 16, i64 2, i64 4, i64 6, i64 10, i64 12, i64 14, i64 16, i64 18, i64 20, i64 22, i64 24, i64 26, i64 28, i64 32, i64 34, i64 124, i64 126]
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 40, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 41, i32 14 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"playback_bufsize\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 42, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"capture_bufsize\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 43, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"force_ac97\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 44, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"buffer_top\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 45, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"use_cache\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 46, i32 13 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"vaio_hack\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 47, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"reset_workaround\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 48, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"reset_workaround_2\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 49, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 73, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"nm256_driver\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1688, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1697, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"snd_nm256_ids\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 247, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant [9 x i8] c"nm256_pm\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1433, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"nm256_quirks\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1585, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1606, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1610, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1630, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1636, i32 24 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1639, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1659, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1664, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1675, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1676, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1587, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1589, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1590, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1591, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1463, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1465, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1489, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1499, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1501, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1503, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1505, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1545, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1551, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1044, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1053, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1060, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1110, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1356, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1371, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1377, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant [23 x i8] c"snd_nm256_playback_ops\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 904, i32 33 }
@___asan_gen_.278 = private unnamed_addr constant [22 x i8] c"snd_nm256_capture_ops\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 919, i32 33 }
@___asan_gen_.281 = private unnamed_addr constant [19 x i8] c"snd_nm256_playback\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 784, i32 38 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 453, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [18 x i8] c"constraints_rates\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 386, i32 48 }
@___asan_gen_.296 = private unnamed_addr constant [12 x i8] c"samplerates\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 383, i32 27 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 403, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 352, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [13 x i8] c"coefficients\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 4, i32 19 }
@___asan_gen_.311 = private unnamed_addr constant [18 x i8] c"coefficient_sizes\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [32 x i8] c"../sound/pci/nm256/nm256_coef.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 4602, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 303, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant [18 x i8] c"snd_nm256_capture\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 803, i32 38 }
@___asan_gen_.326 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1308, i32 39 }
@___asan_gen_.329 = private unnamed_addr constant [16 x i8] c"nm256_res_table\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1256, i32 40 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1334, i32 34 }
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c"nm256_ac97_init_val\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1178, i32 35 }
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private constant [27 x i8] c"../sound/pci/nm256/nm256.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1252, i32 2 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_buffer_top257, ptr @__UNIQUE_ID_buffer_toptype256, ptr @__UNIQUE_ID_capture_bufsize253, ptr @__UNIQUE_ID_capture_bufsizetype252, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enabletype266, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_force_ac97255, ptr @__UNIQUE_ID_force_ac97type254, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_playback_bufsize251, ptr @__UNIQUE_ID_playback_bufsizetype250, ptr @__UNIQUE_ID_reset_workaround263, ptr @__UNIQUE_ID_reset_workaround_2265, ptr @__UNIQUE_ID_reset_workaround_2type264, ptr @__UNIQUE_ID_reset_workaroundtype262, ptr @__UNIQUE_ID_use_cache259, ptr @__UNIQUE_ID_use_cachetype258, ptr @__UNIQUE_ID_vaio_hack261, ptr @__UNIQUE_ID_vaio_hacktype260, ptr @__exitcall_nm256_driver_exit, ptr @__initcall__kmod_snd_nm256__278_1697_nm256_driver_init6, ptr @__param_buffer_top, ptr @__param_capture_bufsize, ptr @__param_enable, ptr @__param_force_ac97, ptr @__param_id, ptr @__param_index, ptr @__param_playback_bufsize, ptr @__param_reset_workaround, ptr @__param_reset_workaround_2, ptr @__param_use_cache, ptr @__param_vaio_hack, ptr @nm256_driver_exit, ptr @snd_nm256_acquire_irq._entry, ptr @snd_nm256_acquire_irq._entry_ptr, ptr @snd_nm256_create._entry, ptr @snd_nm256_create._entry.27, ptr @snd_nm256_create._entry.30, ptr @snd_nm256_create._entry.33, ptr @snd_nm256_create._entry.36, ptr @snd_nm256_create._entry.39, ptr @snd_nm256_create._entry.42, ptr @snd_nm256_create._entry_ptr, ptr @snd_nm256_create._entry_ptr.29, ptr @snd_nm256_create._entry_ptr.32, ptr @snd_nm256_create._entry_ptr.35, ptr @snd_nm256_create._entry_ptr.38, ptr @snd_nm256_create._entry_ptr.41, ptr @snd_nm256_create._entry_ptr.44, ptr @snd_nm256_peek_for_sig._entry, ptr @snd_nm256_peek_for_sig._entry.52, ptr @snd_nm256_peek_for_sig._entry.55, ptr @snd_nm256_peek_for_sig._entry_ptr, ptr @snd_nm256_peek_for_sig._entry_ptr.54, ptr @snd_nm256_peek_for_sig._entry_ptr.57, ptr @snd_nm256_probe._entry, ptr @snd_nm256_probe._entry.10, ptr @snd_nm256_probe._entry_ptr, ptr @snd_nm256_probe._entry_ptr.13, ptr @snd_nm256_write_buffer._entry, ptr @snd_nm256_write_buffer._entry_ptr, ptr @index, ptr @id, ptr @playback_bufsize, ptr @capture_bufsize, ptr @force_ac97, ptr @buffer_top, ptr @use_cache, ptr @vaio_hack, ptr @reset_workaround, ptr @reset_workaround_2, ptr @enable, ptr @nm256_driver, ptr @.str, ptr @snd_nm256_ids, ptr @nm256_pm, ptr @nm256_quirks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @snd_nm256_create.__key, ptr @.str.22, ptr @snd_nm256_create.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @snd_nm256_playback_ops, ptr @snd_nm256_capture_ops, ptr @snd_nm256_playback, ptr @.str.58, ptr @.str.59, ptr @constraints_rates, ptr @samplerates, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @coefficients, ptr @coefficient_sizes, ptr @.str.63, ptr @.str.64, ptr @snd_nm256_capture, ptr @snd_nm256_mixer.ops, ptr @nm256_res_table, ptr @.str.65, ptr @nm256_ac97_init_val, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_bufsize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_ac97 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_top to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_cache to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vaio_hack to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_workaround to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_workaround_2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nm256_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nm256_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nm256_quirks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_create._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_peek_for_sig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_peek_for_sig._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_peek_for_sig._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_acquire_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samplerates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coefficients to i32), i32 50528, i32 63136, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coefficient_sizes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_write_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_nm256_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nm256_res_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nm256_ac97_init_val to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nm256_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @nm256_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nm256_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @nm256_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !263
  %call = tail call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @nm256_quirks) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.body

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_probe, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !264

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %name = getelementptr inbounds %struct.snd_pci_quirk, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %2) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %value = getelementptr inbounds %struct.snd_pci_quirk, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end.if.end12_crit_edge [
    i32 0, label %do.end8
    i32 2, label %sw.bb10
    i32 1, label %do.end.sw.bb11_crit_edge
  ]

do.end.sw.bb11_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.4) #14
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr @reset_workaround_2, align 1
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb10, %do.end.sw.bb11_crit_edge
  store i8 1, ptr @reset_workaround, align 1
  br label %if.end12

if.end12:                                         ; preds = %sw.bb11, %do.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %6 = load i32, ptr @index, align 4
  %7 = load ptr, ptr @id, align 4
  %call14 = call i32 @snd_devm_card_new(ptr noundef %dev13, i32 noundef %6, ptr noundef %7, ptr noundef null, i32 noundef 332, ptr noundef nonnull %card) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %13, label %do.end29 [
    i16 -32763, label %sw.bb17
    i16 -32762, label %sw.bb19
    i16 -32746, label %sw.bb23
  ]

sw.bb17:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %driver = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 5642221112290006528, ptr %driver, align 1
  br label %sw.epilog33

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %driver20 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %driver20 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 5642221112291645440, ptr %driver20, align 1
  br label %sw.epilog33

sw.bb23:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %driver24 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %driver24, ptr @.str.9, i32 9)
  br label %sw.epilog33

do.end29:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.11, i32 noundef %conv) #14
  br label %cleanup

sw.epilog33:                                      ; preds = %sw.bb23, %sw.bb19, %sw.bb17
  %18 = load i8, ptr @vaio_hack, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool34.not = icmp eq i8 %18, 0
  br i1 %tobool34.not, label %sw.epilog33.if.end36_crit_edge, label %if.then35

sw.epilog33.if.end36_crit_edge:                   ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #13
  store i32 2467840, ptr @buffer_top, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %sw.epilog33.if.end36_crit_edge
  %19 = load i32, ptr @playback_bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp37 = icmp slt i32 %19, 4
  br i1 %cmp37, label %if.end36.if.end44.sink.split_crit_edge, label %if.end40

if.end36.if.end44.sink.split_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.sink.split

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %19)
  %cmp41 = icmp ugt i32 %19, 128
  br i1 %cmp41, label %if.end40.if.end44.sink.split_crit_edge, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end40.if.end44.sink.split_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.end40.if.end44.sink.split_crit_edge, %if.end36.if.end44.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.end36.if.end44.sink.split_crit_edge ], [ 128, %if.end40.if.end44.sink.split_crit_edge ]
  store i32 %.sink, ptr @playback_bufsize, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.end40.if.end44_crit_edge
  %20 = load i32, ptr @capture_bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp45 = icmp slt i32 %20, 4
  br i1 %cmp45, label %if.end44.if.end52.sink.split_crit_edge, label %if.end48

if.end44.if.end52.sink.split_crit_edge:           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.sink.split

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %20)
  %cmp49 = icmp ugt i32 %20, 128
  br i1 %cmp49, label %if.end48.if.end52.sink.split_crit_edge, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end48.if.end52.sink.split_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.end48.if.end52.sink.split_crit_edge, %if.end44.if.end52.sink.split_crit_edge
  %.sink190 = phi i32 [ 4, %if.end44.if.end52.sink.split_crit_edge ], [ 128, %if.end48.if.end52.sink.split_crit_edge ]
  store i32 %.sink190, ptr @capture_bufsize, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.end48.if.end52_crit_edge
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end52.cleanup_crit_edge, label %if.end.i

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end52
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %9, ptr %22, align 4
  %pci2.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 23
  %24 = ptrtoint ptr %pci2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pci, ptr %pci2.i, align 4
  %25 = load i8, ptr @use_cache, align 1, !range !265
  %use_cache.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 10
  %26 = ptrtoint ptr %use_cache.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %use_cache.i, align 4
  %bf.shl.i = shl nuw nsw i8 %25, 6
  %bf.clear.i = and i8 %bf.load.i, -65
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %use_cache.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 24
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @snd_nm256_create.__key, i16 noundef signext 3) #11
  %irq.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 14
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %irq.i, align 4
  %irq_mutex.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 18
  call void @__mutex_init(ptr noundef %irq_mutex.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @snd_nm256_create.__key.23) #11
  %28 = load i32, ptr @playback_bufsize, align 4
  %mul.i = shl i32 %28, 10
  %bufsize.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 19, i32 0, i32 5
  %29 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul.i, ptr %bufsize.i, align 4
  %30 = load i32, ptr @capture_bufsize, align 4
  %mul7.i = shl i32 %30, 10
  %bufsize10.i = getelementptr %struct.nm256, ptr %22, i32 0, i32 19, i32 1, i32 5
  %31 = ptrtoint ptr %bufsize10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul7.i, ptr %bufsize10.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %32 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resource.i, align 8
  %buffer_addr.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 4
  %34 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %buffer_addr.i, align 4
  %arrayidx13.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %35 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx13.i, align 8
  %cport_addr.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 2
  %37 = ptrtoint ptr %cport_addr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cport_addr.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %call15.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %driver.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end.i.cleanup_crit_edge, label %if.end19.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %cport_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cport_addr.i, align 4
  %call21.i = call ptr @devm_ioremap(ptr noundef %dev13, i32 noundef %39, i32 noundef 4096) #11
  %cport.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 1
  %40 = ptrtoint ptr %cport.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call21.i, ptr %cport.i, align 4
  %tobool23.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool23.not.i, label %do.end27.i, label %if.end30.i

do.end27.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev28.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %41 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev28.i, align 8
  %43 = ptrtoint ptr %cport_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cport_addr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.25, i32 noundef %44) #14
  br label %cleanup

if.end30.i:                                       ; preds = %if.end19.i
  %call33.i = call i32 @strcmp(ptr noundef %driver.i, ptr noundef nonnull dereferenceable(8) @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.end30.i
  %add.ptr.i.i = getelementptr i8, ptr %call21.i, i32 2566
  %45 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #11, !srcloc !266
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %46 = and i16 %45, 20480
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %46)
  %cmp38.not.i = icmp eq i16 %46, 16384
  br i1 %cmp38.not.i, label %if.then35.i.if.end73.i_crit_edge, label %if.then40.i

if.then35.i.if.end73.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

if.then40.i:                                      ; preds = %if.then35.i
  %47 = load i8, ptr @force_ac97, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool41.not.i = icmp eq i8 %47, 0
  br i1 %tobool41.not.i, label %do.end45.i, label %if.then40.i.if.end73.i_crit_edge

if.then40.i.if.end73.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73.i

do.end45.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev46.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %48 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev46.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.28) #14
  %50 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev46.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.31) #14
  %52 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev46.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.34) #14
  %54 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev46.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.37) #14
  br label %cleanup

if.else.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i251.i = getelementptr i8, ptr %call21.i, i32 2571
  %56 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i251.i) #11, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp63.not.i = icmp eq i8 %56, 0
  %spec.select.i = select i1 %cmp63.not.i, i32 4194304, i32 6291456
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.else.i, %if.then40.i.if.end73.i_crit_edge, %if.then35.i.if.end73.i_crit_edge
  %spec.select.sink.i = phi i32 [ %spec.select.i, %if.else.i ], [ 2621440, %if.then40.i.if.end73.i_crit_edge ], [ 2621440, %if.then35.i.if.end73.i_crit_edge ]
  %snd_nm256_interrupt_zx.sink.i = phi ptr [ @snd_nm256_interrupt_zx, %if.else.i ], [ @snd_nm256_interrupt, %if.then40.i.if.end73.i_crit_edge ], [ @snd_nm256_interrupt, %if.then35.i.if.end73.i_crit_edge ]
  %.sink.i = phi i32 [ 2566, %if.else.i ], [ 2564, %if.then40.i.if.end73.i_crit_edge ], [ 2564, %if.then35.i.if.end73.i_crit_edge ]
  %57 = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 6
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.sink.i, ptr %57, align 4
  %interrupt70.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 16
  %59 = ptrtoint ptr %interrupt70.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %snd_nm256_interrupt_zx.sink.i, ptr %interrupt70.i, align 4
  %mixer_status_offset71.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 12
  %60 = ptrtoint ptr %mixer_status_offset71.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink.i, ptr %mixer_status_offset71.i, align 4
  %mixer_status_mask72.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 13
  %61 = ptrtoint ptr %mixer_status_mask72.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2048, ptr %mixer_status_mask72.i, align 4
  %62 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bufsize.i, align 4
  %64 = ptrtoint ptr %bufsize10.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bufsize10.i, align 4
  %add.i = add i32 %65, %63
  %buffer_size.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 7
  %66 = ptrtoint ptr %use_cache.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load81.i = load i8, ptr %use_cache.i, align 4
  %67 = and i8 %bf.load81.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool83.not.i = icmp eq i8 %67, 0
  %storemerge.v.i = select i1 %tobool83.not.i, i32 25184, i32 50528
  %storemerge.i = add i32 %add.i, %storemerge.v.i
  %68 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %storemerge.i, ptr %buffer_size.i, align 4
  %69 = load i32, ptr @buffer_top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %storemerge.i)
  %cmp92.not.i = icmp uge i32 %69, %storemerge.i
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %spec.select.sink.i)
  %cmp95.i = icmp ult i32 %69, %spec.select.sink.i
  %or.cond = select i1 %cmp92.not.i, i1 %cmp95.i, i1 false
  br i1 %or.cond, label %if.end73.i.if.end105.i_crit_edge, label %if.else99.i

if.end73.i.if.end105.i_crit_edge:                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105.i

if.else99.i:                                      ; preds = %if.end73.i
  %70 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %buffer_addr.i, align 4
  %add.i.i = add nsw i32 %spec.select.sink.i, -1024
  %sub2.i.i = add i32 %add.i.i, %71
  %call.i.i = call ptr @ioremap(i32 noundef %sub2.i.i, i32 noundef 16) #11
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %22, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %73, i32 0, i32 27
  %74 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.50) #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else99.i
  %sub.i.i = add nsw i32 %spec.select.sink.i, -5120
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i.i) #11, !srcloc !270
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  %77 = and i32 %76, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 19790, i32 %77)
  %cmp5.i.i = icmp eq i32 %77, 19790
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end.i.i.snd_nm256_peek_for_sig.exit.i_crit_edge

if.end.i.i.snd_nm256_peek_for_sig.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_peek_for_sig.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %add.ptr.i252.i = getelementptr i8, ptr %call.i.i, i32 4
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252.i) #11, !srcloc !270
  %79 = call i32 @llvm.bswap.i32(i32 %78) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp12.i.i = icmp eq i32 %78, -1
  br i1 %cmp12.i.i, label %if.then6.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i

if.then6.i.i.cleanup.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %if.then6.i.i
  %80 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp13.i.i = icmp ult i32 %79, %81
  br i1 %cmp13.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false14.i.i

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false.i.i
  %82 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %83)
  %cmp16.i.i = icmp ugt i32 %79, %83
  br i1 %cmp16.i.i, label %lor.lhs.false14.i.i.cleanup.i.i_crit_edge, label %cleanup.thread.i.i

lor.lhs.false14.i.i.cleanup.i.i_crit_edge:        ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %22, align 4
  %dev27.i.i = getelementptr inbounds %struct.snd_card, ptr %85, i32 0, i32 27
  %86 = ptrtoint ptr %dev27.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev27.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.56, i32 noundef %79) #14
  br label %snd_nm256_peek_for_sig.exit.i

cleanup.i.i:                                      ; preds = %lor.lhs.false14.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %if.then6.i.i.cleanup.i.i_crit_edge
  %88 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %22, align 4
  %dev22.i.i = getelementptr inbounds %struct.snd_card, ptr %89, i32 0, i32 27
  %90 = ptrtoint ptr %dev22.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev22.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.53, i32 noundef %79) #14
  call void @iounmap(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

snd_nm256_peek_for_sig.exit.i:                    ; preds = %cleanup.thread.i.i, %if.end.i.i.snd_nm256_peek_for_sig.exit.i_crit_edge
  %pointer_found.1.i.i = phi i32 [ %sub.i.i, %if.end.i.i.snd_nm256_peek_for_sig.exit.i_crit_edge ], [ %79, %cleanup.thread.i.i ]
  call void @iounmap(ptr noundef nonnull %call.i.i) #11
  br label %if.end105.i

if.end105.i:                                      ; preds = %snd_nm256_peek_for_sig.exit.i, %if.end73.i.if.end105.i_crit_edge
  %storemerge = phi i32 [ %pointer_found.1.i.i, %snd_nm256_peek_for_sig.exit.i ], [ %69, %if.end73.i.if.end105.i_crit_edge ]
  %92 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %storemerge, ptr %57, align 4
  %93 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %buffer_size.i, align 4
  %sub.i = sub i32 %storemerge, %94
  %buffer_start.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 5
  %95 = ptrtoint ptr %buffer_start.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub.i, ptr %buffer_start.i, align 4
  %96 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %buffer_addr.i, align 4
  %add110.i = add i32 %97, %sub.i
  store i32 %add110.i, ptr %buffer_addr.i, align 4
  %dev114.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %98 = ptrtoint ptr %dev114.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev114.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.40, i32 noundef %sub.i, i32 noundef %storemerge) #14
  %100 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %buffer_addr.i, align 4
  %102 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %buffer_size.i, align 4
  %call120.i = call ptr @devm_ioremap(ptr noundef %dev13, i32 noundef %101, i32 noundef %103) #11
  %buffer.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 3
  %104 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call120.i, ptr %buffer.i, align 4
  %tobool122.not.i = icmp eq ptr %call120.i, null
  br i1 %tobool122.not.i, label %do.end126.i, label %if.end129.i

do.end126.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %dev114.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev114.i, align 8
  %107 = ptrtoint ptr %buffer_addr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %buffer_addr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.43, i32 noundef %108) #14
  br label %cleanup

if.end129.i:                                      ; preds = %if.end105.i
  %109 = ptrtoint ptr %buffer_start.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %buffer_start.i, align 4
  %buf.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 19, i32 0, i32 4
  %111 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %buf.i, align 4
  %112 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bufsize.i, align 4
  %add136.i = add i32 %113, %110
  %buf139.i = getelementptr %struct.nm256, ptr %22, i32 0, i32 19, i32 1, i32 4
  %114 = ptrtoint ptr %buf139.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add136.i, ptr %buf139.i, align 4
  %115 = ptrtoint ptr %bufsize10.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bufsize10.i, align 4
  %add143.i = add i32 %116, %add136.i
  %117 = ptrtoint ptr %use_cache.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load145.i = load i8, ptr %use_cache.i, align 4
  %118 = and i8 %bf.load145.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool149.not.i = icmp eq i8 %118, 0
  br i1 %tobool149.not.i, label %if.else151.i, label %if.then150.i

if.then150.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #13
  %all_coeff_buf.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 8
  %119 = ptrtoint ptr %all_coeff_buf.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add143.i, ptr %all_coeff_buf.i, align 4
  br label %if.end57

if.else151.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #13
  %coeff_buf.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 9
  %120 = ptrtoint ptr %coeff_buf.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add143.i, ptr %coeff_buf.i, align 4
  %add153.i = add i32 %add143.i, 20480
  %arrayidx155.i = getelementptr %struct.nm256, ptr %22, i32 0, i32 9, i32 1
  %121 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add153.i, ptr %arrayidx155.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else151.i, %if.then150.i
  %mixer_base.i = getelementptr inbounds %struct.nm256, ptr %22, i32 0, i32 11
  %122 = ptrtoint ptr %mixer_base.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1536, ptr %mixer_base.i, align 4
  %123 = ptrtoint ptr %use_cache.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load157.i = load i8, ptr %use_cache.i, align 4
  %bf.clear158.i = and i8 %bf.load157.i, 127
  store i8 %bf.clear158.i, ptr %use_cache.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  call void @arm_heavy_mb() #11
  %124 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cport.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %125, i8 17) #11, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  call void @arm_heavy_mb() #11
  %126 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %127, i32 532
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 0) #11, !srcloc !276
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %128 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @snd_nm256_free, ptr %private_free.i, align 4
  %129 = load i8, ptr @reset_workaround, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool58.not = icmp eq i8 %129, 0
  br i1 %tobool58.not, label %if.end57.if.end77_crit_edge, label %do.body60

if.end57.if.end77_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.body60:                                        ; preds = %if.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_probe.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_probe, %if.then72)) #11
          to label %do.end76 [label %if.then72], !srcloc !264

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_probe.__UNIQUE_ID_ddebug276, ptr noundef %dev13, ptr noundef nonnull @.str.14) #11
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %do.body60
  %reset_workaround = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 10
  %130 = ptrtoint ptr %reset_workaround to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load = load i8, ptr %reset_workaround, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %reset_workaround, align 4
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %if.end57.if.end77_crit_edge
  %131 = load i8, ptr @reset_workaround_2, align 1, !range !265
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool78.not = icmp eq i8 %131, 0
  br i1 %tobool78.not, label %if.end77.if.end100_crit_edge, label %do.body80

if.end77.if.end100_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

do.body80:                                        ; preds = %if.end77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_probe.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_probe, %if.then92)) #11
          to label %do.end96 [label %if.then92], !srcloc !264

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_probe.__UNIQUE_ID_ddebug277, ptr noundef %dev13, ptr noundef nonnull @.str.15) #11
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body80
  %reset_workaround_2 = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 10
  %132 = ptrtoint ptr %reset_workaround_2 to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load97 = load i8, ptr %reset_workaround_2, align 4
  %bf.set99 = or i8 %bf.load97, 16
  store i8 %bf.set99, ptr %reset_workaround_2, align 4
  br label %if.end100

if.end100:                                        ; preds = %do.end96, %if.end77.if.end100_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #11
  %133 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !263
  %buffer.i161 = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 3
  %buffer_start.i162 = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 5
  %buffer_addr.i163 = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 4
  %134 = ptrtoint ptr %buffer.i161 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %buffer.i161, align 4
  %buf.i164 = getelementptr %struct.nm256, ptr %11, i32 0, i32 19, i32 0, i32 4
  %136 = ptrtoint ptr %buf.i164 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %buf.i164, align 4
  %138 = ptrtoint ptr %buffer_start.i162 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %buffer_start.i162, align 4
  %sub.i165 = sub i32 %137, %139
  %add.ptr.i = getelementptr i8, ptr %135, i32 %sub.i165
  %bufptr.i = getelementptr %struct.nm256, ptr %11, i32 0, i32 19, i32 0, i32 6
  %140 = ptrtoint ptr %bufptr.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr.i, ptr %bufptr.i, align 4
  %141 = ptrtoint ptr %buffer_addr.i163 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %buffer_addr.i163, align 4
  %add.i166 = add i32 %sub.i165, %142
  %bufptr_addr.i = getelementptr %struct.nm256, ptr %11, i32 0, i32 19, i32 0, i32 7
  %143 = ptrtoint ptr %bufptr_addr.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add.i166, ptr %bufptr_addr.i, align 4
  %buf.1.i = getelementptr %struct.nm256, ptr %11, i32 0, i32 19, i32 1, i32 4
  %144 = ptrtoint ptr %buf.1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %buf.1.i, align 4
  %sub.1.i = sub i32 %145, %139
  %add.ptr.1.i = getelementptr i8, ptr %135, i32 %sub.1.i
  %bufptr.1.i = getelementptr %struct.nm256, ptr %11, i32 0, i32 19, i32 1, i32 6
  %146 = ptrtoint ptr %bufptr.1.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr.1.i, ptr %bufptr.1.i, align 4
  %sub3.1.i = sub i32 %142, %139
  %add.1.i = add i32 %sub3.1.i, %145
  %bufptr_addr.1.i = getelementptr %struct.nm256, ptr %11, i32 0, i32 19, i32 1, i32 7
  %147 = ptrtoint ptr %bufptr_addr.1.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add.1.i, ptr %bufptr_addr.1.i, align 4
  %148 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %11, align 4
  %driver.i167 = getelementptr inbounds %struct.snd_card, ptr %149, i32 0, i32 2
  %call.i168 = call i32 @snd_pcm_new(ptr noundef %149, ptr noundef %driver.i167, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp5.i = icmp slt i32 %call.i168, 0
  br i1 %cmp5.i, label %snd_nm256_pcm.exit.thread, label %if.end105

snd_nm256_pcm.exit.thread:                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #11
  br label %cleanup

if.end105:                                        ; preds = %if.end100
  %150 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %151, i32 noundef 0, ptr noundef nonnull @snd_nm256_playback_ops) #11
  %152 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %153, i32 noundef 1, ptr noundef nonnull @snd_nm256_capture_ops) #11
  %154 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pcm.i, align 4
  %private_data.i169 = getelementptr inbounds %struct.snd_pcm, ptr %155, i32 0, i32 11
  %156 = ptrtoint ptr %private_data.i169 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %11, ptr %private_data.i169, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %155, i32 0, i32 3
  %157 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %info_flags.i, align 8
  %pcm6.i = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 22
  %158 = ptrtoint ptr %pcm6.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %155, ptr %pcm6.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #11
  %159 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !263
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #11
  %160 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %161 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 6
  %162 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %11, align 4
  %dev.i172 = getelementptr inbounds %struct.snd_card, ptr %163, i32 0, i32 27
  %164 = ptrtoint ptr %dev.i172 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i172, align 8
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %165, i32 noundef 34, i32 noundef 3520) #11
  %ac97_regs.i = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 21
  %166 = ptrtoint ptr %ac97_regs.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call5.i.i.i, ptr %ac97_regs.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %if.end105.snd_nm256_mixer.exit.thread_crit_edge, label %if.end.i174

if.end105.snd_nm256_mixer.exit.thread_crit_edge:  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_mixer.exit.thread

if.end.i174:                                      ; preds = %if.end105
  %167 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %11, align 4
  %call3.i = call i32 @snd_ac97_bus(ptr noundef %168, i32 noundef 0, ptr noundef nonnull @snd_nm256_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i173 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i173, label %if.end.i174.snd_nm256_mixer.exit.thread_crit_edge, label %if.end5.i

if.end.i174.snd_nm256_mixer.exit.thread_crit_edge: ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_mixer.exit.thread

if.end5.i:                                        ; preds = %if.end.i174
  %169 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %170 = call ptr @memset(ptr %169, i32 0, i32 12)
  %171 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1, ptr %160, align 4
  %172 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %11, ptr %ac97.i, align 4
  %173 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @nm256_res_table, ptr %161, align 4
  %174 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pbus.i, align 4
  %no_vra.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %no_vra.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load.i175 = load i8, ptr %no_vra.i, align 2
  %bf.set.i176 = or i8 %bf.load.i175, -128
  store i8 %bf.set.i176, ptr %no_vra.i, align 2
  %ac976.i = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 20
  %call7.i = call i32 @snd_ac97_mixer(ptr noundef %175, ptr noundef nonnull %ac97.i, ptr noundef %ac976.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end5.i.snd_nm256_mixer.exit.thread_crit_edge, label %if.end10.i

if.end5.i.snd_nm256_mixer.exit.thread_crit_edge:  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_mixer.exit.thread

if.end10.i:                                       ; preds = %if.end5.i
  %177 = ptrtoint ptr %ac976.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ac976.i, align 4
  %id.i = getelementptr inbounds %struct.snd_ac97, ptr %178, i32 0, i32 13
  %179 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %180)
  %tobool12.not.i = icmp ult i32 %180, 268435456
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end10.i.if.end110_crit_edge

if.end10.i.if.end110_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %181 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %11, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %182, i32 0, i32 6
  %driver.i177 = getelementptr inbounds %struct.snd_card, ptr %182, i32 0, i32 2
  %call17.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %mixername.i, ptr noundef nonnull @.str.65, ptr noundef %driver.i177) #11
  br label %if.end110

snd_nm256_mixer.exit.thread:                      ; preds = %if.end5.i.snd_nm256_mixer.exit.thread_crit_edge, %if.end.i174.snd_nm256_mixer.exit.thread_crit_edge, %if.end105.snd_nm256_mixer.exit.thread_crit_edge
  %retval.0.i178.ph = phi i32 [ %call7.i, %if.end5.i.snd_nm256_mixer.exit.thread_crit_edge ], [ %call3.i, %if.end.i174.snd_nm256_mixer.exit.thread_crit_edge ], [ -12, %if.end105.snd_nm256_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #11
  br label %cleanup

if.end110:                                        ; preds = %if.then13.i, %if.end10.i.if.end110_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #11
  %183 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %184, i32 0, i32 3
  %driver112 = getelementptr inbounds %struct.snd_card, ptr %184, i32 0, i32 2
  %call114 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.16, ptr noundef %driver112)
  %185 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %186, i32 0, i32 4
  %shortname116 = getelementptr inbounds %struct.snd_card, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %buffer_addr.i163 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %buffer_addr.i163, align 4
  %cport_addr = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 2
  %189 = ptrtoint ptr %cport_addr to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cport_addr, align 4
  %irq = getelementptr inbounds %struct.nm256, ptr %11, i32 0, i32 14
  %191 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %irq, align 4
  %call118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.17, ptr noundef %shortname116, i32 noundef %188, i32 noundef %190, i32 noundef %192)
  %193 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %card, align 4
  %call119 = call i32 @snd_card_register(ptr noundef %194) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end110.cleanup_crit_edge, label %if.end123

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end123:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %197 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %196, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.end110.cleanup_crit_edge, %snd_nm256_mixer.exit.thread, %snd_nm256_pcm.exit.thread, %do.end126.i, %cleanup.i.i, %do.end.i.i, %do.end45.i, %do.end27.i, %if.end.i.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end29, %if.end12.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -22, %do.end29 ], [ 0, %if.end123 ], [ -19, %do.end8 ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call119, %if.end110.cleanup_crit_edge ], [ %call.i168, %snd_nm256_pcm.exit.thread ], [ %retval.0.i178.ph, %snd_nm256_mixer.exit.thread ], [ -16, %do.end.i.i ], [ -19, %cleanup.i.i ], [ %call15.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end52.cleanup_crit_edge ], [ -12, %do.end27.i ], [ -6, %do.end45.i ], [ -12, %do.end126.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cport.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2564
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !266
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp = icmp eq i16 %2, 0
  %badintrcount.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %badintrcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %badintrcount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %badintrcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %cmp.i = icmp sgt i32 %5, 1000
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %running.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 2
  %6 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -32640) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cport.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %11, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i, i8 0) #11, !srcloc !274
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %running4.i = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 2
  %12 = ptrtoint ptr %running4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %running4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i16.i, i8 0) #11, !srcloc !274
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %16 = ptrtoint ptr %badintrcount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %badintrcount.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %badintrcount.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %badintrcount.i, align 4
  %reg_lock = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %18 = and i16 %3, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %and6 = and i16 %3, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cport.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %20, i32 2564
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i130, i16 -32768) #11, !srcloc !276
  %running.i131 = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 2
  %21 = ptrtoint ptr %running.i131 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %running.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i132 = icmp eq i32 %22, 0
  br i1 %tobool.not.i132, label %if.then4.if.end8_crit_edge, label %land.lhs.true.i

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true.i:                                  ; preds = %if.then4
  %substream.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 1
  %23 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %substream.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end8_crit_edge, label %if.then.i135

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then.i135:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  %25 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %substream.i, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %26) #11
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %cur_period.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 12
  %27 = ptrtoint ptr %cur_period.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_period.i.i, align 4
  %inc.i.i = add i32 %28, 1
  %periods.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 10
  %29 = ptrtoint ptr %periods.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %periods.i.i, align 4
  %rem.i.i = srem i32 %inc.i.i, %30
  store i32 %rem.i.i, ptr %cur_period.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 4
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf.i.i, align 4
  %period_size.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 9
  %33 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %period_size.i.i, align 4
  %mul.i.i = mul i32 %34, %rem.i.i
  %add.i.i = add i32 %mul.i.i, %32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %36 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i.i134 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i134, i32 %35) #11, !srcloc !278
  br label %if.end8

if.end8:                                          ; preds = %if.then.i135, %land.lhs.true.i.if.end8_crit_edge, %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %status.0 = phi i16 [ %3, %if.end.if.end8_crit_edge ], [ %and6, %if.then4.if.end8_crit_edge ], [ %and6, %land.lhs.true.i.if.end8_crit_edge ], [ %and6, %if.then.i135 ]
  %38 = and i16 %status.0, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool11.not = icmp eq i16 %38, 0
  br i1 %tobool11.not, label %if.end8.if.end16_crit_edge, label %if.then12

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %if.end8
  %and14 = and i16 %status.0, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cport.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %40, i32 2564
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i138, i16 2) #11, !srcloc !276
  %running.i139 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 2
  %41 = ptrtoint ptr %running.i139 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %running.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i140 = icmp eq i32 %42, 0
  br i1 %tobool.not.i140, label %if.then12.if.end16_crit_edge, label %land.lhs.true.i143

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true.i143:                               ; preds = %if.then12
  %substream.i141 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 1
  %43 = ptrtoint ptr %substream.i141 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %substream.i141, align 4
  %tobool1.not.i142 = icmp eq ptr %44, null
  br i1 %tobool1.not.i142, label %land.lhs.true.i143.if.end16_crit_edge, label %if.then.i155

land.lhs.true.i143.if.end16_crit_edge:            ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then.i155:                                     ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  %45 = ptrtoint ptr %substream.i141 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %substream.i141, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %46) #11
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %cur_period.i.i145 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 12
  %47 = ptrtoint ptr %cur_period.i.i145 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_period.i.i145, align 4
  %inc.i.i146 = add i32 %48, 1
  %periods.i.i147 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 10
  %49 = ptrtoint ptr %periods.i.i147 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %periods.i.i147, align 4
  %rem.i.i148 = srem i32 %inc.i.i146, %50
  store i32 %rem.i.i148, ptr %cur_period.i.i145, align 4
  %buf.i.i149 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 4
  %51 = ptrtoint ptr %buf.i.i149 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf.i.i149, align 4
  %period_size.i.i150 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 9
  %53 = ptrtoint ptr %period_size.i.i150 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %period_size.i.i150, align 4
  %mul.i.i151 = mul i32 %54, %rem.i.i148
  %add.i.i152 = add i32 %mul.i.i151, %52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %55 = tail call i32 @llvm.bswap.i32(i32 %add.i.i152) #11
  %56 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i.i154 = getelementptr i8, ptr %57, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i154, i32 %55) #11, !srcloc !278
  br label %if.end16

if.end16:                                         ; preds = %if.then.i155, %land.lhs.true.i143.if.end16_crit_edge, %if.then12.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %status.1 = phi i16 [ %status.0, %if.end8.if.end16_crit_edge ], [ %and14, %if.then12.if.end16_crit_edge ], [ %and14, %land.lhs.true.i143.if.end16_crit_edge ], [ %and14, %if.then.i155 ]
  %58 = and i16 %status.1, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool19.not = icmp eq i16 %58, 0
  br i1 %tobool19.not, label %if.end16.if.end33_crit_edge, label %if.then20

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then20:                                        ; preds = %if.end16
  %and22 = and i16 %status.1, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %59 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cport.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %60, i32 2564
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i158, i16 128) #11, !srcloc !276
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_interrupt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_interrupt, %if.then28)) #11
          to label %do.end [label %if.then28], !srcloc !264

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 27
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_interrupt.__UNIQUE_ID_ddebug268, ptr noundef %64, ptr noundef nonnull @.str.46) #11
  br label %do.end

do.end:                                           ; preds = %if.then28, %if.then20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cport.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %66, i32 2564
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i160, i16 128) #11, !srcloc !276
  %67 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cport.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %68, i32 1024
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i162) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  %70 = or i8 %69, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cport.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %72, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i164, i8 %70) #11, !srcloc !274
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end16.if.end33_crit_edge
  %status.2 = phi i16 [ %and22, %do.end ], [ %status.1, %if.end16.if.end33_crit_edge ]
  %73 = and i16 %status.2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool36.not = icmp eq i16 %73, 0
  br i1 %tobool36.not, label %if.end33.if.end63_crit_edge, label %if.then37

if.end33.if.end63_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then37:                                        ; preds = %if.end33
  %and39 = and i16 %status.2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %74 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cport.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %75, i32 2564
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i166, i16 512) #11, !srcloc !276
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_interrupt.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_interrupt, %if.then53)) #11
          to label %do.end58 [label %if.then53], !srcloc !264

if.then53:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_id, align 4
  %dev55 = getelementptr inbounds %struct.snd_card, ptr %77, i32 0, i32 27
  %78 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev55, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_interrupt.__UNIQUE_ID_ddebug269, ptr noundef %79, ptr noundef nonnull @.str.47) #11
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %if.then37
  %80 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cport.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %81, i32 1024
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i168) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  %83 = and i8 %82, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %84 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cport.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %85, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i170, i8 %83) #11, !srcloc !274
  br label %if.end63

if.end63:                                         ; preds = %do.end58, %if.end33.if.end63_crit_edge
  %status.3 = phi i16 [ %and39, %do.end58 ], [ %status.2, %if.end33.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %status.3)
  %tobool64.not = icmp eq i16 %status.3, 0
  br i1 %tobool64.not, label %if.end63.if.end87_crit_edge, label %do.body66

if.end63.if.end87_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

do.body66:                                        ; preds = %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_interrupt.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_interrupt, %if.then78)) #11
          to label %do.end84 [label %if.then78], !srcloc !264

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_id, align 4
  %dev80 = getelementptr inbounds %struct.snd_card, ptr %87, i32 0, i32 27
  %88 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev80, align 8
  %conv81 = zext i16 %status.3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_interrupt.__UNIQUE_ID_ddebug270, ptr noundef %89, ptr noundef nonnull @.str.48, i32 noundef %conv81) #11
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %do.body66
  %shl = shl i16 %status.3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %90 = tail call i16 @llvm.bswap.i16(i16 %shl) #11
  %91 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cport.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %92, i32 2564
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i172, i16 %90) #11, !srcloc !276
  br label %if.end87

if.end87:                                         ; preds = %do.end84, %if.end63.if.end87_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end7.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end87 ], [ 1, %if.end7.i ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_interrupt_zx(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cport.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2564
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !270
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %badintrcount.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %badintrcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %badintrcount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %badintrcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %5)
  %cmp.i = icmp sgt i32 %5, 1000
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %running.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 2
  %6 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -32640) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cport.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %11, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i, i8 0) #11, !srcloc !274
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  %running4.i = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 2
  %12 = ptrtoint ptr %running4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %running4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i16.i, i8 0) #11, !srcloc !274
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %16 = ptrtoint ptr %badintrcount.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %badintrcount.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %badintrcount.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %badintrcount.i, align 4
  %reg_lock = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %3, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cport.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %19, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 256) #11, !srcloc !278
  %running.i113 = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 2
  %20 = ptrtoint ptr %running.i113 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %running.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i114 = icmp eq i32 %21, 0
  br i1 %tobool.not.i114, label %if.then2.if.end4_crit_edge, label %land.lhs.true.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.then2
  %substream.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 1
  %22 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream.i, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end4_crit_edge, label %if.then.i117

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then.i117:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  %24 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %substream.i, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %25) #11
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %cur_period.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 12
  %26 = ptrtoint ptr %cur_period.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_period.i.i, align 4
  %inc.i.i = add i32 %27, 1
  %periods.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 10
  %28 = ptrtoint ptr %periods.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %periods.i.i, align 4
  %rem.i.i = srem i32 %inc.i.i, %29
  store i32 %rem.i.i, ptr %cur_period.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 4
  %30 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf.i.i, align 4
  %period_size.i.i = getelementptr inbounds %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 0, i32 9
  %32 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %period_size.i.i, align 4
  %mul.i.i = mul i32 %33, %rem.i.i
  %add.i.i = add i32 %mul.i.i, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %35 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i.i116 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i116, i32 %34) #11, !srcloc !278
  br label %if.end4

if.end4:                                          ; preds = %if.then.i117, %land.lhs.true.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %status.0 = phi i32 [ %3, %if.end.if.end4_crit_edge ], [ %and3, %if.then2.if.end4_crit_edge ], [ %and3, %land.lhs.true.i.if.end4_crit_edge ], [ %and3, %if.then.i117 ]
  %and5 = and i32 %status.0, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  %and8 = and i32 %status.0, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cport.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %38, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 2048) #11, !srcloc !278
  %running.i121 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 2
  %39 = ptrtoint ptr %running.i121 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %running.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i122 = icmp eq i32 %40, 0
  br i1 %tobool.not.i122, label %if.then7.if.end9_crit_edge, label %land.lhs.true.i125

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.i125:                               ; preds = %if.then7
  %substream.i123 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 1
  %41 = ptrtoint ptr %substream.i123 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %substream.i123, align 4
  %tobool1.not.i124 = icmp eq ptr %42, null
  br i1 %tobool1.not.i124, label %land.lhs.true.i125.if.end9_crit_edge, label %if.then.i137

land.lhs.true.i125.if.end9_crit_edge:             ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then.i137:                                     ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  %43 = ptrtoint ptr %substream.i123 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %substream.i123, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %44) #11
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %cur_period.i.i127 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 12
  %45 = ptrtoint ptr %cur_period.i.i127 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cur_period.i.i127, align 4
  %inc.i.i128 = add i32 %46, 1
  %periods.i.i129 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 10
  %47 = ptrtoint ptr %periods.i.i129 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %periods.i.i129, align 4
  %rem.i.i130 = srem i32 %inc.i.i128, %48
  store i32 %rem.i.i130, ptr %cur_period.i.i127, align 4
  %buf.i.i131 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 4
  %49 = ptrtoint ptr %buf.i.i131 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf.i.i131, align 4
  %period_size.i.i132 = getelementptr %struct.nm256, ptr %dev_id, i32 0, i32 19, i32 1, i32 9
  %51 = ptrtoint ptr %period_size.i.i132 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %period_size.i.i132, align 4
  %mul.i.i133 = mul i32 %52, %rem.i.i130
  %add.i.i134 = add i32 %mul.i.i133, %50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %add.i.i134) #11
  %54 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.i.i136 = getelementptr i8, ptr %55, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i136, i32 %53) #11, !srcloc !278
  br label %if.end9

if.end9:                                          ; preds = %if.then.i137, %land.lhs.true.i125.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %status.1 = phi i32 [ %status.0, %if.end4.if.end9_crit_edge ], [ %and8, %if.then7.if.end9_crit_edge ], [ %and8, %land.lhs.true.i125.if.end9_crit_edge ], [ %and8, %if.then.i137 ]
  %and10 = and i32 %status.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end22_crit_edge, label %if.then12

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then12:                                        ; preds = %if.end9
  %and13 = and i32 %status.1, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cport.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %57, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 134217728) #11, !srcloc !278
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_interrupt_zx, %if.then18)) #11
          to label %do.end [label %if.then18], !srcloc !264

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug271, ptr noundef %61, ptr noundef nonnull @.str.46) #11
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.then12
  %62 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cport.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %63, i32 1024
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i142) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  %65 = or i8 %64, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %66 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cport.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %67, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i144, i8 %65) #11, !srcloc !274
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end9.if.end22_crit_edge
  %status.2 = phi i32 [ %and13, %do.end ], [ %status.1, %if.end9.if.end22_crit_edge ]
  %and23 = and i32 %status.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end49_crit_edge, label %if.then25

if.end22.if.end49_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then25:                                        ; preds = %if.end22
  %and26 = and i32 %status.2, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cport.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %69, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 33554432) #11, !srcloc !278
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_interrupt_zx, %if.then39)) #11
          to label %do.end44 [label %if.then39], !srcloc !264

if.then39:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_id, align 4
  %dev41 = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 27
  %72 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug272, ptr noundef %73, ptr noundef nonnull @.str.47) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %if.then25
  %74 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cport.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %75, i32 1024
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i148) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  %77 = and i8 %76, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %78 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cport.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %79, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i150, i8 %77) #11, !srcloc !274
  br label %if.end49

if.end49:                                         ; preds = %do.end44, %if.end22.if.end49_crit_edge
  %status.3 = phi i32 [ %and26, %do.end44 ], [ %status.2, %if.end22.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.3)
  %tobool50.not = icmp eq i32 %status.3, 0
  br i1 %tobool50.not, label %if.end49.if.end70_crit_edge, label %do.body52

if.end49.if.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

do.body52:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_interrupt_zx, %if.then64)) #11
          to label %do.end69 [label %if.then64], !srcloc !264

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_id, align 4
  %dev66 = getelementptr inbounds %struct.snd_card, ptr %81, i32 0, i32 27
  %82 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev66, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug273, ptr noundef %83, ptr noundef nonnull @.str.48, i32 noundef %status.3) #11
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %84 = tail call i32 @llvm.bswap.i32(i32 %status.3) #11
  %85 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cport.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %86, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %84) #11, !srcloc !278
  br label %if.end70

if.end70:                                         ; preds = %do.end69, %if.end49.if.end70_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end7.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end70 ], [ 1, %if.end7.i ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_nm256_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %running = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 19, i32 0, i32 2
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %cport.i.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -32640) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i, i8 0) #11, !srcloc !274
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %running3 = getelementptr %struct.nm256, ptr %1, i32 0, i32 19, i32 1, i32 2
  %8 = ptrtoint ptr %running3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %running3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %cport.i.i10 = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cport.i.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cport.i.i10, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i11, i8 0) #11, !srcloc !274
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_nm256_acquire_irq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %streams = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 19
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %running.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 19, i32 0, i32 2
  %4 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %running.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_nm256_playback, i32 64)
  %bufsize.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 19, i32 0, i32 5
  %6 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bufsize.i, align 4
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buffer_bytes_max.i, align 4
  %9 = load i32, ptr %bufsize.i, align 4
  %div.i = sdiv i32 %9, 2
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %10 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %period_bytes_max.i, align 4
  %bufptr.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 19, i32 0, i32 6
  %11 = ptrtoint ptr %bufptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bufptr.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %13 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dma_area.i, align 4
  %bufptr_addr.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 19, i32 0, i32 7
  %14 = ptrtoint ptr %bufptr_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufptr_addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma_addr.i, align 8
  %17 = load i32, ptr %bufsize.i, align 4
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %18 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dma_bytes.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %streams, ptr %private_data.i, align 8
  %substream6.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 19, i32 0, i32 1
  %20 = ptrtoint ptr %substream6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %substream, ptr %substream6.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @constraints_rates) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_mutex.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex.i, i32 noundef 0) #11
  %irq_acks.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %irq_acks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_acks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add nsw i32 %3, -1
  %4 = ptrtoint ptr %irq_acks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %irq_acks.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %5 = phi i32 [ %dec.i, %if.then.i ], [ %3, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp eq i32 %5, 0
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i.snd_nm256_release_irq.exit_crit_edge

if.end.i.snd_nm256_release_irq.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_release_irq.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %irq.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp4.i = icmp sgt i32 %7, -1
  br i1 %cmp4.i, label %if.then5.i, label %land.lhs.true.i.snd_nm256_release_irq.exit_crit_edge

land.lhs.true.i.snd_nm256_release_irq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_release_irq.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #11
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %sync_irq.i, align 4
  br label %snd_nm256_release_irq.exit

snd_nm256_release_irq.exit:                       ; preds = %if.then5.i, %land.lhs.true.i.snd_nm256_release_irq.exit_crit_edge, %if.end.i.snd_nm256_release_irq.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %irq_mutex.i) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_nm256_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %dma_bytes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !280

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 627, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %9, %7
  %div1.i = lshr i32 %mul.i, 3
  %dma_size = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div1.i, ptr %dma_size, align 4
  %11 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime1, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_size, align 4
  %15 = load i32, ptr %frame_bits.i, align 8
  %mul.i52 = mul i32 %15, %14
  %div1.i53 = lshr i32 %mul.i52, 3
  %period_size29 = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %period_size29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div1.i53, ptr %period_size29, align 4
  %17 = load ptr, ptr %runtime1, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %periods, align 8
  %periods31 = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %periods31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %periods31, align 4
  %cur_period = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %cur_period to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cur_period, align 4
  %reg_lock = getelementptr inbounds %struct.nm256, ptr %5, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %running = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %running, align 4
  tail call fastcc void @snd_nm256_set_format(ptr noundef %5, ptr noundef nonnull %3, ptr noundef %substream)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !280

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 552, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %cmd, label %if.end24.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 1, label %if.end24.sw.bb25_crit_edge
    i32 5, label %sw.bb30
    i32 0, label %if.end24.sw.bb32_crit_edge
  ]

if.end24.sw.bb32_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb32

if.end24.sw.bb25_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb25

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %suspended = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %suspended, align 4
  br label %sw.bb25

sw.bb25:                                          ; preds = %sw.bb, %if.end24.sw.bb25_crit_edge
  %running = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not = icmp eq i32 %9, 0
  br i1 %tobool26.not, label %if.then27, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %cport.i.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #11, !srcloc !278
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf.i, align 4
  %dma_size.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_size.i, align 4
  %add.i = add i32 %18, %16
  %shift.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shift.i, align 4
  %shl.neg.i = shl nsw i32 -1, %20
  %sub.i = add i32 %add.i, %shl.neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %sub.i) #11
  %22 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %21) #11, !srcloc !278
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  %27 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %26) #11, !srcloc !278
  %cur_period.i.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 12
  %29 = ptrtoint ptr %cur_period.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_period.i.i, align 4
  %inc.i.i = add i32 %30, 1
  %periods.i.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 10
  %31 = ptrtoint ptr %periods.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %periods.i.i, align 4
  %rem.i.i = srem i32 %inc.i.i, %32
  store i32 %rem.i.i, ptr %cur_period.i.i, align 4
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf.i, align 4
  %period_size.i.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 9
  %35 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %period_size.i.i, align 4
  %mul.i.i = mul i32 %36, %rem.i.i
  %add.i.i = add i32 %mul.i.i, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %38 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %37) #11, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %41, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i, i8 5) #11, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 0) #11, !srcloc !276
  %44 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %running, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %suspended31 = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 3
  %45 = ptrtoint ptr %suspended31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %suspended31, align 4
  br label %sw.bb32

sw.bb32:                                          ; preds = %sw.bb30, %if.end24.sw.bb32_crit_edge
  %running33 = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %running33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %running33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool34.not = icmp eq i32 %47, 0
  br i1 %tobool34.not, label %sw.bb32.sw.epilog_crit_edge, label %if.then35

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %cport.i.i54 = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %cport.i.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cport.i.i54, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %49, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i55, i16 -32640) #11, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %cport.i.i54 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cport.i.i54, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %51, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i, i8 0) #11, !srcloc !274
  %52 = ptrtoint ptr %running33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %running33, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then35, %sw.bb32.sw.epilog_crit_edge, %if.then27, %sw.bb25.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.then35 ], [ 0, %sw.bb32.sw.epilog_crit_edge ], [ 0, %sw.bb25.sw.epilog_crit_edge ], [ 0, %if.then27 ], [ -22, %if.end24.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %err.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !280

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 653, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cport.i = getelementptr inbounds %struct.nm256, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !270
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  %buf = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 4
  %sub = sub i32 %9, %11
  %dma_size = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_size, align 4
  %rem = urem i32 %sub, %13
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %rem, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_playback_silence(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %bufptr = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %pos
  tail call void @mmioset(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %count) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_playback_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %bufptr = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %pos
  %call = tail call i32 @copy_from_user_toio(ptr noundef %add.ptr, ptr noundef %src, i32 noundef %count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_playback_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %src, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %bufptr = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %pos
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %src, i32 noundef %count) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_nm256_acquire_irq(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_mutex = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 14
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %pci = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  %interrupt = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 16
  %6 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %chip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %irq4 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 46
  %14 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.58, i32 noundef %15) #14
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %irq7 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq7, align 4
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq, align 4
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %sync_irq, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %irq_acks = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 15
  %24 = ptrtoint ptr %irq_acks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_acks, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %irq_acks, align 4
  br label %return

return:                                           ; preds = %if.end11, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end11 ]
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_nm256_set_format(ptr nocapture noundef %chip, ptr nocapture noundef %s, ptr nocapture noundef readonly %substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %3, label %for.inc.7.i [
    i32 8000, label %entry.snd_nm256_fixed_rate.exit_crit_edge
    i32 11025, label %cleanup.fold.split.i
    i32 16000, label %cleanup.fold.split25.i
    i32 22050, label %cleanup.fold.split26.i
    i32 24000, label %cleanup.fold.split27.i
    i32 32000, label %cleanup.fold.split28.i
    i32 44100, label %cleanup.fold.split29.i
    i32 48000, label %cleanup.fold.split30.i
  ]

entry.snd_nm256_fixed_rate.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

for.inc.7.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 403, i32 noundef 9, ptr noundef nonnull @.str.60) #11
  br label %snd_nm256_fixed_rate.exit

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

cleanup.fold.split25.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

cleanup.fold.split26.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

cleanup.fold.split27.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

cleanup.fold.split28.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

cleanup.fold.split29.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

cleanup.fold.split30.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_fixed_rate.exit

snd_nm256_fixed_rate.exit:                        ; preds = %cleanup.fold.split30.i, %cleanup.fold.split29.i, %cleanup.fold.split28.i, %cleanup.fold.split27.i, %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split.i, %for.inc.7.i, %entry.snd_nm256_fixed_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.inc.7.i ], [ 0, %entry.snd_nm256_fixed_rate.exit_crit_edge ], [ 1, %cleanup.fold.split.i ], [ 2, %cleanup.fold.split25.i ], [ 3, %cleanup.fold.split26.i ], [ 4, %cleanup.fold.split27.i ], [ 5, %cleanup.fold.split28.i ], [ 6, %cleanup.fold.split29.i ], [ 7, %cleanup.fold.split30.i ]
  %call.tr = trunc i32 %retval.0.i to i8
  %conv = shl nuw nsw i8 %call.tr, 4
  %shift = getelementptr inbounds %struct.nm256_stream, ptr %s, i32 0, i32 11
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %shift, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %call2 = tail call i32 @snd_pcm_format_width(i32 noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call2)
  %cmp = icmp eq i32 %call2, 16
  br i1 %cmp, label %if.then, label %snd_nm256_fixed_rate.exit.if.end_crit_edge

snd_nm256_fixed_rate.exit.if.end_crit_edge:       ; preds = %snd_nm256_fixed_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %snd_nm256_fixed_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = or i8 %conv, 2
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %shift, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %snd_nm256_fixed_rate.exit.if.end_crit_edge
  %ratebits.0 = phi i8 [ %8, %if.then ], [ %conv, %snd_nm256_fixed_rate.exit.if.end_crit_edge ]
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp7 = icmp ugt i32 %12, 1
  br i1 %cmp7, label %if.then9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = or i8 %ratebits.0, 1
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift, align 4
  %inc14 = add i32 %15, 1
  store i32 %inc14, ptr %shift, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  %ratebits.1 = phi i8 [ %13, %if.then9 ], [ %ratebits.0, %if.end.if.end15_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr @samplerates, i32 0, i32 %retval.0.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rate, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %20, label %if.end15.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ]

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @snd_nm256_load_coefficient(ptr noundef %chip, i32 noundef 0, i32 noundef %retval.0.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %cport.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 1
  %22 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %ratebits.1) #11, !srcloc !274
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @snd_nm256_load_coefficient(ptr noundef %chip, i32 noundef 1, i32 noundef %retval.0.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %cport.i33 = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 1
  %24 = ptrtoint ptr %cport.i33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cport.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %25, i32 514
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i34, i8 %ratebits.1) #11, !srcloc !274
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb, %if.end15.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_nm256_load_coefficient(ptr nocapture noundef %chip, i32 noundef %stream, i32 noundef %number) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stream)
  %cmp = icmp eq i32 %stream, 1
  %cond = select i1 %cmp, i32 512, i32 1
  %add = select i1 %cmp, i32 540, i32 28
  %cport.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %cond
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #11, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_load_coefficient.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_load_coefficient, %if.then7)) #11
          to label %cleanup [label %if.then7], !srcloc !264

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_load_coefficient.__UNIQUE_ID_ddebug267, ptr noundef %7, ptr noundef nonnull @.str.62) #11
  br label %cleanup

if.end8:                                          ; preds = %entry
  %and9 = and i32 %number, 7
  %add13 = or i32 %and9, 8
  %spec.select = select i1 %cmp, i32 %add13, i32 %and9
  %use_cache = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 10
  %8 = ptrtoint ptr %use_cache to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %use_cache, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end8
  %arrayidx.i = getelementptr %struct.nm256, ptr %chip, i32 0, i32 9, i32 %stream
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp5.i.i.not = icmp eq i32 %spec.select, 0
  br i1 %cmp5.i.i.not, label %if.then16.snd_nm256_get_start_offset.exit.i_crit_edge, label %if.then16.while.body.i.i_crit_edge

if.then16.while.body.i.i_crit_edge:               ; preds = %if.then16
  br label %while.body.i.i

if.then16.snd_nm256_get_start_offset.exit.i_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_get_start_offset.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then16.while.body.i.i_crit_edge
  %offset.07.i.i = phi i16 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.then16.while.body.i.i_crit_edge ]
  %which.addr.06.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %spec.select, %if.then16.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %which.addr.06.i.i, -1
  %arrayidx.i.i = getelementptr [16 x i16], ptr @coefficient_sizes, i32 0, i32 %dec.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  %add.i.i = add i16 %13, %offset.07.i.i
  %cmp.i.i = icmp ugt i32 %which.addr.06.i.i, 1
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %snd_nm256_get_start_offset.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

snd_nm256_get_start_offset.exit.loopexit.i:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.i = zext i16 %add.i.i to i32
  br label %snd_nm256_get_start_offset.exit.i

snd_nm256_get_start_offset.exit.i:                ; preds = %snd_nm256_get_start_offset.exit.loopexit.i, %if.then16.snd_nm256_get_start_offset.exit.i_crit_edge
  %offset.0.lcssa.i.i = phi i32 [ 0, %if.then16.snd_nm256_get_start_offset.exit.i_crit_edge ], [ %phi.cast.i, %snd_nm256_get_start_offset.exit.loopexit.i ]
  %arrayidx2.i = getelementptr [16 x i16], ptr @coefficient_sizes, i32 0, i32 %spec.select
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx2.i, align 2
  %add.ptr.i65 = getelementptr i8, ptr @coefficients, i32 %offset.0.lcssa.i.i
  %conv3.i = zext i16 %15 to i32
  %buffer_start.i.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 5
  %16 = ptrtoint ptr %buffer_start.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_start.i.i, align 4
  %sub.i.i = sub i32 %11, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i17.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i17.i, label %snd_nm256_get_start_offset.exit.i.do.end.i.i_crit_edge, label %lor.lhs.false.i.i

snd_nm256_get_start_offset.exit.i.do.end.i.i_crit_edge: ; preds = %snd_nm256_get_start_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %snd_nm256_get_start_offset.exit.i
  %buffer_size.i.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 7
  %18 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %19)
  %cmp1.not.i.i = icmp ult i32 %sub.i.i, %19
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %snd_nm256_get_start_offset.exit.i.do.end.i.i_crit_edge
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.63, i32 noundef %sub.i.i, i32 noundef %conv3.i) #14
  br label %snd_nm256_load_one_coefficient.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %buffer.i.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 3
  %24 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %sub.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr.i65, i32 noundef %conv3.i) #11
  br label %snd_nm256_load_one_coefficient.exit

snd_nm256_load_one_coefficient.exit:              ; preds = %if.end.i.i, %do.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  %27 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cport.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %28, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %26) #11, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp.i = icmp eq i32 %stream, 0
  %dec.i = sext i1 %cmp.i to i16
  %spec.select.i = add i16 %15, %dec.i
  %add.i = add nuw nsw i32 %add, 4
  %conv5.i = zext i16 %spec.select.i to i32
  %add6.i = add i32 %11, %conv5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %add6.i) #11
  %30 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cport.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %29) #11, !srcloc !278
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool21.not = icmp sgt i8 %bf.load, -1
  %all_coeff_buf = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 8
  %32 = ptrtoint ptr %all_coeff_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %all_coeff_buf, align 4
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end17
  %buffer_start.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 5
  %34 = ptrtoint ptr %buffer_start.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buffer_start.i, align 4
  %sub.i = sub i32 %33, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i66 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i66, label %if.then22.do.end.i_crit_edge, label %lor.lhs.false.i

if.then22.do.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then22
  %buffer_size.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 7
  %36 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %37)
  %cmp1.not.i = icmp ult i32 %sub.i, %37
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then22.do.end.i_crit_edge
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.63, i32 noundef %sub.i, i32 noundef 50528) #14
  br label %snd_nm256_write_buffer.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %buffer.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 3
  %42 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %43, i32 %sub.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i67, ptr noundef nonnull @coefficients, i32 noundef 50528) #11
  br label %snd_nm256_write_buffer.exit

snd_nm256_write_buffer.exit:                      ; preds = %if.end.i, %do.end.i
  %44 = ptrtoint ptr %use_cache to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load24 = load i8, ptr %use_cache, align 4
  %bf.set = or i8 %bf.load24, -128
  store i8 %bf.set, ptr %use_cache, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp5.i.not = icmp eq i32 %spec.select, 0
  br i1 %cmp5.i.not, label %if.else.snd_nm256_get_start_offset.exit_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.snd_nm256_get_start_offset.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_get_start_offset.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %offset.07.i = phi i16 [ %add.i70, %while.body.i.while.body.i_crit_edge ], [ 0, %if.else.while.body.i_crit_edge ]
  %which.addr.06.i = phi i32 [ %dec.i68, %while.body.i.while.body.i_crit_edge ], [ %spec.select, %if.else.while.body.i_crit_edge ]
  %dec.i68 = add nsw i32 %which.addr.06.i, -1
  %arrayidx.i69 = getelementptr [16 x i16], ptr @coefficient_sizes, i32 0, i32 %dec.i68
  %45 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i69, align 2
  %add.i70 = add i16 %46, %offset.07.i
  %cmp.i71 = icmp ugt i32 %which.addr.06.i, 1
  br i1 %cmp.i71, label %while.body.i.while.body.i_crit_edge, label %snd_nm256_get_start_offset.exit.loopexit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

snd_nm256_get_start_offset.exit.loopexit:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i16 %add.i70 to i32
  br label %snd_nm256_get_start_offset.exit

snd_nm256_get_start_offset.exit:                  ; preds = %snd_nm256_get_start_offset.exit.loopexit, %if.else.snd_nm256_get_start_offset.exit_crit_edge
  %offset.0.lcssa.i = phi i32 [ 0, %if.else.snd_nm256_get_start_offset.exit_crit_edge ], [ %phi.cast, %snd_nm256_get_start_offset.exit.loopexit ]
  %arrayidx = getelementptr [16 x i16], ptr @coefficient_sizes, i32 0, i32 %spec.select
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx, align 2
  %conv29 = zext i16 %48 to i32
  %add31 = add i32 %33, %offset.0.lcssa.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %49 = tail call i32 @llvm.bswap.i32(i32 %add31) #11
  %50 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cport.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %51, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %49) #11, !srcloc !278
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp32 = icmp eq i32 %stream, 0
  %dec = sext i1 %cmp32 to i32
  %add36 = add nuw nsw i32 %add, 4
  %spec.select64 = add i32 %add31, %dec
  %add37 = add i32 %spec.select64, %conv29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %52 = tail call i32 @llvm.bswap.i32(i32 %add37) #11
  %53 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cport.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %54, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %52) #11, !srcloc !278
  br label %cleanup

cleanup:                                          ; preds = %snd_nm256_get_start_offset.exit, %snd_nm256_write_buffer.exit, %snd_nm256_load_one_coefficient.exit, %if.then7, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_user_toio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_nm256_acquire_irq(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.nm256, ptr %1, i32 0, i32 19, i32 1
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %running.i = getelementptr %struct.nm256, ptr %1, i32 0, i32 19, i32 1, i32 2
  %4 = ptrtoint ptr %running.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %running.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_nm256_capture, i32 64)
  %bufsize.i = getelementptr %struct.nm256, ptr %1, i32 0, i32 19, i32 1, i32 5
  %6 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bufsize.i, align 4
  %buffer_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %buffer_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buffer_bytes_max.i, align 4
  %9 = load i32, ptr %bufsize.i, align 4
  %div.i = sdiv i32 %9, 2
  %period_bytes_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %10 = ptrtoint ptr %period_bytes_max.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %period_bytes_max.i, align 4
  %bufptr.i = getelementptr %struct.nm256, ptr %1, i32 0, i32 19, i32 1, i32 6
  %11 = ptrtoint ptr %bufptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bufptr.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %13 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dma_area.i, align 4
  %bufptr_addr.i = getelementptr %struct.nm256, ptr %1, i32 0, i32 19, i32 1, i32 7
  %14 = ptrtoint ptr %bufptr_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufptr_addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma_addr.i, align 8
  %17 = load i32, ptr %bufsize.i, align 4
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %18 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dma_bytes.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx, ptr %private_data.i, align 8
  %substream6.i = getelementptr %struct.nm256, ptr %1, i32 0, i32 19, i32 1, i32 1
  %20 = ptrtoint ptr %substream6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %substream, ptr %substream6.i, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @constraints_rates) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_mutex.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex.i, i32 noundef 0) #11
  %irq_acks.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %irq_acks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_acks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add nsw i32 %3, -1
  %4 = ptrtoint ptr %irq_acks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec.i, ptr %irq_acks.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %5 = phi i32 [ %dec.i, %if.then.i ], [ %3, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp eq i32 %5, 0
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end.i.snd_nm256_release_irq.exit_crit_edge

if.end.i.snd_nm256_release_irq.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_release_irq.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %irq.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp4.i = icmp sgt i32 %7, -1
  br i1 %cmp4.i, label %if.then5.i, label %land.lhs.true.i.snd_nm256_release_irq.exit_crit_edge

land.lhs.true.i.snd_nm256_release_irq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_nm256_release_irq.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #11
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %sync_irq.i, align 4
  br label %snd_nm256_release_irq.exit

snd_nm256_release_irq.exit:                       ; preds = %if.then5.i, %land.lhs.true.i.snd_nm256_release_irq.exit_crit_edge, %if.end.i.snd_nm256_release_irq.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %irq_mutex.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !280

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 590, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %cmd, label %if.end24.sw.epilog_crit_edge [
    i32 1, label %if.end24.sw.bb_crit_edge
    i32 6, label %if.end24.sw.bb_crit_edge51
    i32 0, label %if.end24.sw.bb29_crit_edge
    i32 5, label %if.end24.sw.bb29_crit_edge52
  ]

if.end24.sw.bb29_crit_edge52:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

if.end24.sw.bb29_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

if.end24.sw.bb_crit_edge51:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge51
  %running = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool25.not = icmp eq i32 %8, 0
  br i1 %tobool25.not, label %if.then26, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %buf.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %cport.i.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #11, !srcloc !278
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf.i, align 4
  %dma_size.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_size.i, align 4
  %add.i = add i32 %17, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %add.i) #11
  %19 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %20, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %18) #11, !srcloc !278
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  %24 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %25, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %23) #11, !srcloc !278
  %cur_period.i.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 12
  %26 = ptrtoint ptr %cur_period.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_period.i.i, align 4
  %inc.i.i = add i32 %27, 1
  %periods.i.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 10
  %28 = ptrtoint ptr %periods.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %periods.i.i, align 4
  %rem.i.i = srem i32 %inc.i.i, %29
  store i32 %rem.i.i, ptr %cur_period.i.i, align 4
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf.i, align 4
  %period_size.i.i = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 9
  %32 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %period_size.i.i, align 4
  %mul.i.i = mul i32 %33, %rem.i.i
  %add.i.i = add i32 %mul.i.i, %31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %35 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %34) #11, !srcloc !278
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %38, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i6.i, i8 3) #11, !srcloc !274
  %39 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %running, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end24.sw.bb29_crit_edge, %if.end24.sw.bb29_crit_edge52
  %running30 = getelementptr inbounds %struct.nm256_stream, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %running30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %running30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool31.not = icmp eq i32 %41, 0
  br i1 %tobool31.not, label %sw.bb29.sw.epilog_crit_edge, label %if.then32

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then32:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %cport.i.i49 = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %cport.i.i49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cport.i.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %43, i32 512
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i50, i8 0) #11, !srcloc !274
  %44 = ptrtoint ptr %running30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %running30, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %sw.bb29.sw.epilog_crit_edge, %if.then26, %sw.bb.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.then32 ], [ 0, %sw.bb29.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then26 ], [ -22, %if.end24.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %err.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !280

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cport.i = getelementptr inbounds %struct.nm256, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !270
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  %buf = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 4
  %sub = sub i32 %9, %11
  %dma_size = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_size, align 4
  %rem = urem i32 %sub, %13
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %rem, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_capture_copy(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %bufptr = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %pos
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %dst, ptr noundef %add.ptr, i32 noundef %count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_nm256_capture_copy_kernel(ptr nocapture noundef readonly %substream, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %bufptr = getelementptr inbounds %struct.nm256_stream, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bufptr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %pos
  tail call void @mmiocpy(ptr noundef %dst, ptr noundef %add.ptr, i32 noundef %count) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_user_fromio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_nm256_ac97_reset(ptr nocapture noundef readonly %ac97) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %cport.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1728
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #11, !srcloc !274
  %reset_workaround = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %reset_workaround to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %reset_workaround, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cport.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %7, i32 1740
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i27, i8 -121) #11, !srcloc !274
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %reset_workaround to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load1 = load i8, ptr %reset_workaround, align 4
  %9 = and i8 %bf.load1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cport.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 1740
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 -128) #11, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cport.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %13, i32 1740
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 0) #11, !srcloc !274
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %reset_workaround to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load8 = load i8, ptr %reset_workaround, align 4
  %15 = and i8 %bf.load8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.end7.for.body_crit_edge, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.initialValues], ptr @nm256_ac97_init_val, i32 0, i32 %i.032
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %value = getelementptr [17 x %struct.initialValues], ptr @nm256_ac97_init_val, i32 0, i32 %i.032, i32 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %value, align 2
  tail call void @snd_nm256_ac97_write(ptr noundef %ac97, i16 noundef zeroext %17, i16 noundef zeroext %19)
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.body.if.end15_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %for.body.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_nm256_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @nm256_ac97_idx(i16 noundef zeroext %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mixer_base = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mixer_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mixer_base, align 4
  %call1 = tail call fastcc i32 @snd_nm256_ac97_ready(ptr noundef %1)
  %conv = zext i16 %reg to i32
  %add = add i32 %3, %conv
  %4 = tail call i16 @llvm.bswap.i16(i16 %val) #11
  %cport.i = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %4) #11, !srcloc !276
  tail call void @msleep(i32 noundef 1) #11
  %call3 = tail call fastcc i32 @snd_nm256_ac97_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %while.cond.1, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

while.cond.1:                                     ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1, i16 %4) #11, !srcloc !276
  tail call void @msleep(i32 noundef 1) #11
  %call3.1 = tail call fastcc i32 @snd_nm256_ac97_ready(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool.not.1, label %do.body, label %while.cond.1.if.then4_crit_edge

while.cond.1.if.then4_crit_edge:                  ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %while.cond.1.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %ac97_regs = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %ac97_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac97_regs, align 4
  %arrayidx = getelementptr i16, ptr %10, i32 %call
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %val, ptr %arrayidx, align 2
  br label %cleanup

do.body:                                          ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_nm256_ac97_write.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_nm256_ac97_write, %if.then10)) #11
          to label %cleanup [label %if.then10], !srcloc !264

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_nm256_ac97_write.__UNIQUE_ID_ddebug274, ptr noundef %15, ptr noundef nonnull @.str.67) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_nm256_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nm256_ac97_idx(i16 noundef zeroext %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97_regs = getelementptr inbounds %struct.nm256, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ac97_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97_regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %call
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nm256_ac97_idx(i16 noundef zeroext %reg) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %reg, label %for.inc.16 [
    i16 2, label %entry.cleanup_crit_edge
    i16 4, label %cleanup.fold.split
    i16 6, label %cleanup.fold.split9
    i16 10, label %cleanup.fold.split10
    i16 12, label %cleanup.fold.split11
    i16 14, label %cleanup.fold.split12
    i16 16, label %cleanup.fold.split13
    i16 18, label %cleanup.fold.split14
    i16 20, label %cleanup.fold.split15
    i16 22, label %cleanup.fold.split16
    i16 24, label %cleanup.fold.split17
    i16 26, label %cleanup.fold.split18
    i16 28, label %cleanup.fold.split19
    i16 32, label %cleanup.fold.split20
    i16 34, label %cleanup.fold.split21
    i16 124, label %cleanup.fold.split22
    i16 126, label %cleanup.fold.split23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.16:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split, %for.inc.16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %for.inc.16 ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split9 ], [ 3, %cleanup.fold.split10 ], [ 4, %cleanup.fold.split11 ], [ 5, %cleanup.fold.split12 ], [ 6, %cleanup.fold.split13 ], [ 7, %cleanup.fold.split14 ], [ 8, %cleanup.fold.split15 ], [ 9, %cleanup.fold.split16 ], [ 10, %cleanup.fold.split17 ], [ 11, %cleanup.fold.split18 ], [ 12, %cleanup.fold.split19 ], [ 13, %cleanup.fold.split20 ], [ 14, %cleanup.fold.split21 ], [ 15, %cleanup.fold.split22 ], [ 16, %cleanup.fold.split23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_nm256_ac97_ready(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer_status_offset = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %mixer_status_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mixer_status_offset, align 4
  %mixer_status_mask = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 13
  %2 = ptrtoint ptr %mixer_status_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mixer_status_mask, align 4
  %cport.i = getelementptr inbounds %struct.nm256, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cport.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #11, !srcloc !266
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2 = zext i16 %7 to i32
  %and = and i32 %3, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4 = icmp eq i32 %and, 0
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #11
  %9 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %10, i32 %1
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1) #11, !srcloc !266
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.1 = zext i16 %12 to i32
  %and.1 = and i32 %3, %conv2.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp4.1 = icmp eq i32 %and.1, 0
  br i1 %cmp4.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #11
  %14 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %15, i32 %1
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.2) #11, !srcloc !266
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.2 = zext i16 %17 to i32
  %and.2 = and i32 %3, %conv2.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp4.2 = icmp eq i32 %and.2, 0
  br i1 %cmp4.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 21474800) #11
  %19 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %20, i32 %1
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.3) #11, !srcloc !266
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.3 = zext i16 %22 to i32
  %and.3 = and i32 %3, %conv2.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp4.3 = icmp eq i32 %and.3, 0
  br i1 %cmp4.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 21474800) #11
  %24 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %25, i32 %1
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.4) #11, !srcloc !266
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.4 = zext i16 %27 to i32
  %and.4 = and i32 %3, %conv2.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp4.4 = icmp eq i32 %and.4, 0
  br i1 %cmp4.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 21474800) #11
  %29 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %30, i32 %1
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.5) #11, !srcloc !266
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.5 = zext i16 %32 to i32
  %and.5 = and i32 %3, %conv2.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp4.5 = icmp eq i32 %and.5, 0
  br i1 %cmp4.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 21474800) #11
  %34 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %35, i32 %1
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.6) #11, !srcloc !266
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.6 = zext i16 %37 to i32
  %and.6 = and i32 %3, %conv2.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp4.6 = icmp eq i32 %and.6, 0
  br i1 %cmp4.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 21474800) #11
  %39 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %40, i32 %1
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.7) #11, !srcloc !266
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.7 = zext i16 %42 to i32
  %and.7 = and i32 %3, %conv2.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp4.7 = icmp eq i32 %and.7, 0
  br i1 %cmp4.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 21474800) #11
  %44 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %45, i32 %1
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.8) #11, !srcloc !266
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.8 = zext i16 %47 to i32
  %and.8 = and i32 %3, %conv2.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %cmp4.8 = icmp eq i32 %and.8, 0
  br i1 %cmp4.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 21474800) #11
  %49 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cport.i, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %50, i32 %1
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.9) #11, !srcloc !266
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %conv2.9 = zext i16 %52 to i32
  %and.9 = and i32 %3, %conv2.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %cmp4.9 = icmp eq i32 %and.9, 0
  br i1 %cmp4.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 21474800) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end.1.cleanup_crit_edge ], [ 1, %if.end.2.cleanup_crit_edge ], [ 1, %if.end.3.cleanup_crit_edge ], [ 1, %if.end.4.cleanup_crit_edge ], [ 1, %if.end.5.cleanup_crit_edge ], [ 1, %if.end.6.cleanup_crit_edge ], [ 1, %if.end.7.cleanup_crit_edge ], [ 1, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nm256_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %ac97 = getelementptr inbounds %struct.nm256, ptr %3, i32 0, i32 20
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #11
  %coeffs_current = getelementptr inbounds %struct.nm256, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %coeffs_current to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %coeffs_current, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %coeffs_current, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nm256_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %in_resume = getelementptr inbounds %struct.nm256, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %in_resume to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %in_resume, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %in_resume, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %cport.i.i = getelementptr inbounds %struct.nm256, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cport.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 17) #11, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %cport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cport.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 532
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #11, !srcloc !276
  %ac97 = getelementptr inbounds %struct.nm256, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %10) #11
  %reg_lock = getelementptr inbounds %struct.nm256, ptr %3, i32 0, i32 24
  %arrayidx = getelementptr %struct.nm256, ptr %3, i32 0, i32 19, i32 0
  %substream = getelementptr %struct.nm256, ptr %3, i32 0, i32 19, i32 0, i32 1
  %11 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %suspended = getelementptr %struct.nm256, ptr %3, i32 0, i32 19, i32 0, i32 3
  %13 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not = icmp eq i32 %14, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %15 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %substream, align 4
  tail call fastcc void @snd_nm256_set_format(ptr noundef %3, ptr noundef %arrayidx, ptr noundef %16)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr %struct.nm256, ptr %3, i32 0, i32 19, i32 1
  %substream.1 = getelementptr %struct.nm256, ptr %3, i32 0, i32 19, i32 1, i32 1
  %17 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream.1, align 4
  %tobool.not.1 = icmp eq ptr %18, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %land.lhs.true.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %suspended.1 = getelementptr %struct.nm256, ptr %3, i32 0, i32 19, i32 1, i32 3
  %19 = ptrtoint ptr %suspended.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %suspended.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.1 = icmp eq i32 %20, 0
  br i1 %tobool1.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %if.then.1

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %21 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream.1, align 4
  tail call fastcc void @snd_nm256_set_format(ptr noundef %3, ptr noundef %arrayidx.1, ptr noundef %22)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %23 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %24 = ptrtoint ptr %in_resume to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load5 = load i8, ptr %in_resume, align 4
  %bf.clear6 = and i8 %bf.load5, -9
  store i8 %bf.clear6, ptr %in_resume, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !190, !191, !193, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !212, !213, !214, !215, !217, !219, !221, !223, !225, !226, !227, !229, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !249, !250, !252}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/nm256/nm256.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/nm256/nm256.c", i32 33, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/nm256/nm256.c", i32 34, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/nm256/nm256.c", i32 51, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/nm256/nm256.c", i32 52, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/nm256/nm256.c", i32 53, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/nm256/nm256.c", i32 54, i32 1}
!17 = !{ptr @__param_playback_bufsize, !18, !"__param_playback_bufsize", i1 false, i1 false}
!18 = !{!"../sound/pci/nm256/nm256.c", i32 55, i32 1}
!19 = !{ptr @__UNIQUE_ID_playback_bufsizetype250, !18, !"__UNIQUE_ID_playback_bufsizetype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_playback_bufsize251, !21, !"__UNIQUE_ID_playback_bufsize251", i1 false, i1 false}
!21 = !{!"../sound/pci/nm256/nm256.c", i32 56, i32 1}
!22 = !{ptr @__param_capture_bufsize, !23, !"__param_capture_bufsize", i1 false, i1 false}
!23 = !{!"../sound/pci/nm256/nm256.c", i32 57, i32 1}
!24 = !{ptr @__UNIQUE_ID_capture_bufsizetype252, !23, !"__UNIQUE_ID_capture_bufsizetype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_capture_bufsize253, !26, !"__UNIQUE_ID_capture_bufsize253", i1 false, i1 false}
!26 = !{!"../sound/pci/nm256/nm256.c", i32 58, i32 1}
!27 = !{ptr @__param_force_ac97, !28, !"__param_force_ac97", i1 false, i1 false}
!28 = !{!"../sound/pci/nm256/nm256.c", i32 59, i32 1}
!29 = !{ptr @__UNIQUE_ID_force_ac97type254, !28, !"__UNIQUE_ID_force_ac97type254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_force_ac97255, !31, !"__UNIQUE_ID_force_ac97255", i1 false, i1 false}
!31 = !{!"../sound/pci/nm256/nm256.c", i32 60, i32 1}
!32 = !{ptr @__param_buffer_top, !33, !"__param_buffer_top", i1 false, i1 false}
!33 = !{!"../sound/pci/nm256/nm256.c", i32 61, i32 1}
!34 = !{ptr @__UNIQUE_ID_buffer_toptype256, !33, !"__UNIQUE_ID_buffer_toptype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_buffer_top257, !36, !"__UNIQUE_ID_buffer_top257", i1 false, i1 false}
!36 = !{!"../sound/pci/nm256/nm256.c", i32 62, i32 1}
!37 = !{ptr @__param_use_cache, !38, !"__param_use_cache", i1 false, i1 false}
!38 = !{!"../sound/pci/nm256/nm256.c", i32 63, i32 1}
!39 = !{ptr @__UNIQUE_ID_use_cachetype258, !38, !"__UNIQUE_ID_use_cachetype258", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_use_cache259, !41, !"__UNIQUE_ID_use_cache259", i1 false, i1 false}
!41 = !{!"../sound/pci/nm256/nm256.c", i32 64, i32 1}
!42 = !{ptr @__param_vaio_hack, !43, !"__param_vaio_hack", i1 false, i1 false}
!43 = !{!"../sound/pci/nm256/nm256.c", i32 65, i32 1}
!44 = !{ptr @__UNIQUE_ID_vaio_hacktype260, !43, !"__UNIQUE_ID_vaio_hacktype260", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_vaio_hack261, !46, !"__UNIQUE_ID_vaio_hack261", i1 false, i1 false}
!46 = !{!"../sound/pci/nm256/nm256.c", i32 66, i32 1}
!47 = !{ptr @__param_reset_workaround, !48, !"__param_reset_workaround", i1 false, i1 false}
!48 = !{!"../sound/pci/nm256/nm256.c", i32 67, i32 1}
!49 = !{ptr @__UNIQUE_ID_reset_workaroundtype262, !48, !"__UNIQUE_ID_reset_workaroundtype262", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_reset_workaround263, !51, !"__UNIQUE_ID_reset_workaround263", i1 false, i1 false}
!51 = !{!"../sound/pci/nm256/nm256.c", i32 68, i32 1}
!52 = !{ptr @__param_reset_workaround_2, !53, !"__param_reset_workaround_2", i1 false, i1 false}
!53 = !{!"../sound/pci/nm256/nm256.c", i32 69, i32 1}
!54 = !{ptr @__UNIQUE_ID_reset_workaround_2type264, !53, !"__UNIQUE_ID_reset_workaround_2type264", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_reset_workaround_2265, !56, !"__UNIQUE_ID_reset_workaround_2265", i1 false, i1 false}
!56 = !{!"../sound/pci/nm256/nm256.c", i32 70, i32 1}
!57 = !{ptr @__param_enable, !58, !"__param_enable", i1 false, i1 false}
!58 = !{!"../sound/pci/nm256/nm256.c", i32 74, i32 1}
!59 = !{ptr @__UNIQUE_ID_enabletype266, !58, !"__UNIQUE_ID_enabletype266", i1 false, i1 false}
!60 = !{ptr @__initcall__kmod_snd_nm256__278_1697_nm256_driver_init6, !61, !"__initcall__kmod_snd_nm256__278_1697_nm256_driver_init6", i1 false, i1 false}
!61 = !{!"../sound/pci/nm256/nm256.c", i32 1697, i32 1}
!62 = !{ptr @__exitcall_nm256_driver_exit, !61, !"__exitcall_nm256_driver_exit", i1 false, i1 false}
!63 = !{ptr @force_ac97, !64, !"force_ac97", i1 false, i1 false}
!64 = !{!"../sound/pci/nm256/nm256.c", i32 44, i32 13}
!65 = !{ptr @buffer_top, !66, !"buffer_top", i1 false, i1 false}
!66 = !{!"../sound/pci/nm256/nm256.c", i32 45, i32 12}
!67 = !{ptr @use_cache, !68, !"use_cache", i1 false, i1 false}
!68 = !{!"../sound/pci/nm256/nm256.c", i32 46, i32 13}
!69 = !{ptr @vaio_hack, !70, !"vaio_hack", i1 false, i1 false}
!70 = !{!"../sound/pci/nm256/nm256.c", i32 47, i32 13}
!71 = !{ptr @reset_workaround, !72, !"reset_workaround", i1 false, i1 false}
!72 = !{!"../sound/pci/nm256/nm256.c", i32 48, i32 13}
!73 = !{ptr @reset_workaround_2, !74, !"reset_workaround_2", i1 false, i1 false}
!74 = !{!"../sound/pci/nm256/nm256.c", i32 49, i32 13}
!75 = !{ptr @enable, !76, !"enable", i1 false, i1 false}
!76 = !{!"../sound/pci/nm256/nm256.c", i32 73, i32 13}
!77 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!78 = !{ptr @index, !79, !"index", i1 false, i1 false}
!79 = !{!"../sound/pci/nm256/nm256.c", i32 40, i32 12}
!80 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!81 = !{ptr @id, !82, !"id", i1 false, i1 false}
!82 = !{!"../sound/pci/nm256/nm256.c", i32 41, i32 14}
!83 = !{ptr @__param_str_playback_bufsize, !18, !"__param_str_playback_bufsize", i1 false, i1 false}
!84 = !{ptr @playback_bufsize, !85, !"playback_bufsize", i1 false, i1 false}
!85 = !{!"../sound/pci/nm256/nm256.c", i32 42, i32 12}
!86 = !{ptr @__param_str_capture_bufsize, !23, !"__param_str_capture_bufsize", i1 false, i1 false}
!87 = !{ptr @capture_bufsize, !88, !"capture_bufsize", i1 false, i1 false}
!88 = !{!"../sound/pci/nm256/nm256.c", i32 43, i32 12}
!89 = !{ptr @__param_str_force_ac97, !28, !"__param_str_force_ac97", i1 false, i1 false}
!90 = !{ptr @__param_str_buffer_top, !33, !"__param_str_buffer_top", i1 false, i1 false}
!91 = !{ptr @__param_str_use_cache, !38, !"__param_str_use_cache", i1 false, i1 false}
!92 = !{ptr @__param_str_vaio_hack, !43, !"__param_str_vaio_hack", i1 false, i1 false}
!93 = !{ptr @__param_str_reset_workaround, !48, !"__param_str_reset_workaround", i1 false, i1 false}
!94 = !{ptr @__param_str_reset_workaround_2, !53, !"__param_str_reset_workaround_2", i1 false, i1 false}
!95 = !{ptr @__param_str_enable, !58, !"__param_str_enable", i1 false, i1 false}
!96 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nm256_driver, !98, !"nm256_driver", i1 false, i1 false}
!98 = !{!"../sound/pci/nm256/nm256.c", i32 1688, i32 26}
!99 = !{ptr @snd_nm256_ids, !100, !"snd_nm256_ids", i1 false, i1 false}
!100 = !{!"../sound/pci/nm256/nm256.c", i32 247, i32 35}
!101 = !{ptr @.str.1, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/nm256/nm256.c", i32 1606, i32 3}
!103 = !{ptr @.str.2, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.3, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @snd_nm256_probe.__UNIQUE_ID_ddebug275, !102, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!106 = !{ptr @.str.4, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/nm256/nm256.c", i32 1610, i32 4}
!108 = !{ptr @.str.5, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.6, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @snd_nm256_probe._entry, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @snd_nm256_probe._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.7, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/nm256/nm256.c", i32 1630, i32 24}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/nm256/nm256.c", i32 1633, i32 24}
!116 = !{ptr @.str.9, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/nm256/nm256.c", i32 1636, i32 24}
!118 = !{ptr @.str.11, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/nm256/nm256.c", i32 1639, i32 3}
!120 = !{ptr @.str.12, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @snd_nm256_probe._entry.10, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @snd_nm256_probe._entry_ptr.13, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.14, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/nm256/nm256.c", i32 1659, i32 3}
!125 = !{ptr @snd_nm256_probe.__UNIQUE_ID_ddebug276, !124, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!126 = !{ptr @.str.15, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/nm256/nm256.c", i32 1664, i32 3}
!128 = !{ptr @snd_nm256_probe.__UNIQUE_ID_ddebug277, !127, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!129 = !{ptr @.str.16, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/nm256/nm256.c", i32 1675, i32 27}
!131 = !{ptr @.str.17, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/nm256/nm256.c", i32 1676, i32 26}
!133 = !{ptr @.str.18, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/nm256/nm256.c", i32 1587, i32 2}
!135 = !{ptr @.str.19, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/nm256/nm256.c", i32 1589, i32 2}
!137 = !{ptr @.str.20, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/nm256/nm256.c", i32 1590, i32 2}
!139 = !{ptr @.str.21, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/nm256/nm256.c", i32 1591, i32 2}
!141 = !{ptr @nm256_quirks, !142, !"nm256_quirks", i1 false, i1 false}
!142 = !{!"../sound/pci/nm256/nm256.c", i32 1585, i32 35}
!143 = !{ptr @snd_nm256_create.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../sound/pci/nm256/nm256.c", i32 1463, i32 2}
!145 = !{ptr @.str.22, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @snd_nm256_create.__key.23, !147, !"__key", i1 false, i1 false}
!147 = !{!"../sound/pci/nm256/nm256.c", i32 1465, i32 2}
!148 = !{ptr @.str.24, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.25, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/nm256/nm256.c", i32 1489, i32 3}
!151 = !{ptr @.str.26, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @snd_nm256_create._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @snd_nm256_create._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.28, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/nm256/nm256.c", i32 1499, i32 5}
!156 = !{ptr @snd_nm256_create._entry.27, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @snd_nm256_create._entry_ptr.29, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.31, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/nm256/nm256.c", i32 1501, i32 5}
!160 = !{ptr @snd_nm256_create._entry.30, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @snd_nm256_create._entry_ptr.32, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.34, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/nm256/nm256.c", i32 1503, i32 5}
!164 = !{ptr @snd_nm256_create._entry.33, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @snd_nm256_create._entry_ptr.35, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.37, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/nm256/nm256.c", i32 1505, i32 5}
!168 = !{ptr @snd_nm256_create._entry.36, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @snd_nm256_create._entry_ptr.38, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.40, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/nm256/nm256.c", i32 1545, i32 2}
!172 = !{ptr @snd_nm256_create._entry.39, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @snd_nm256_create._entry_ptr.41, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.43, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/nm256/nm256.c", i32 1551, i32 3}
!176 = !{ptr @snd_nm256_create._entry.42, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @snd_nm256_create._entry_ptr.44, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.45, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/nm256/nm256.c", i32 1044, i32 3}
!180 = !{ptr @.str.46, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @snd_nm256_interrupt.__UNIQUE_ID_ddebug268, !179, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!182 = !{ptr @.str.47, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/nm256/nm256.c", i32 1053, i32 3}
!184 = !{ptr @snd_nm256_interrupt.__UNIQUE_ID_ddebug269, !183, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!185 = !{ptr @.str.48, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/nm256/nm256.c", i32 1060, i32 3}
!187 = !{ptr @snd_nm256_interrupt.__UNIQUE_ID_ddebug270, !186, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!188 = !{ptr @.str.49, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/nm256/nm256.c", i32 1110, i32 3}
!190 = !{ptr @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug271, !189, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!191 = !{ptr @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug272, !192, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!192 = !{!"../sound/pci/nm256/nm256.c", i32 1118, i32 3}
!193 = !{ptr @snd_nm256_interrupt_zx.__UNIQUE_ID_ddebug273, !194, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!194 = !{!"../sound/pci/nm256/nm256.c", i32 1125, i32 3}
!195 = !{ptr @.str.50, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/nm256/nm256.c", i32 1356, i32 3}
!197 = !{ptr @.str.51, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @snd_nm256_peek_for_sig._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @snd_nm256_peek_for_sig._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/nm256/nm256.c", i32 1371, i32 4}
!202 = !{ptr @snd_nm256_peek_for_sig._entry.52, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @snd_nm256_peek_for_sig._entry_ptr.54, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.56, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/nm256/nm256.c", i32 1377, i32 4}
!206 = !{ptr @snd_nm256_peek_for_sig._entry.55, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @snd_nm256_peek_for_sig._entry_ptr.57, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @snd_nm256_playback_ops, !209, !"snd_nm256_playback_ops", i1 false, i1 false}
!209 = !{!"../sound/pci/nm256/nm256.c", i32 904, i32 33}
!210 = !{ptr @.str.58, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/nm256/nm256.c", i32 453, i32 4}
!212 = !{ptr @.str.59, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @snd_nm256_acquire_irq._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @snd_nm256_acquire_irq._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @constraints_rates, !216, !"constraints_rates", i1 false, i1 false}
!216 = !{!"../sound/pci/nm256/nm256.c", i32 386, i32 48}
!217 = !{ptr @samplerates, !218, !"samplerates", i1 false, i1 false}
!218 = !{!"../sound/pci/nm256/nm256.c", i32 383, i32 27}
!219 = !{ptr @snd_nm256_playback, !220, !"snd_nm256_playback", i1 false, i1 false}
!220 = !{!"../sound/pci/nm256/nm256.c", i32 784, i32 38}
!221 = !{ptr @.str.60, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/nm256/nm256.c", i32 403, i32 2}
!223 = !{ptr @.str.61, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/nm256/nm256.c", i32 352, i32 3}
!225 = !{ptr @.str.62, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @snd_nm256_load_coefficient.__UNIQUE_ID_ddebug267, !224, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!227 = !{ptr @.str.63, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/nm256/nm256.c", i32 303, i32 3}
!229 = !{ptr @.str.64, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @snd_nm256_write_buffer._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @snd_nm256_write_buffer._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @coefficients, !233, !"coefficients", i1 false, i1 false}
!233 = !{!"../sound/pci/nm256/nm256_coef.c", i32 4, i32 19}
!234 = !{ptr @coefficient_sizes, !235, !"coefficient_sizes", i1 false, i1 false}
!235 = !{!"../sound/pci/nm256/nm256_coef.c", i32 4602, i32 1}
!236 = !{ptr @snd_nm256_capture_ops, !237, !"snd_nm256_capture_ops", i1 false, i1 false}
!237 = !{!"../sound/pci/nm256/nm256.c", i32 919, i32 33}
!238 = !{ptr @snd_nm256_capture, !239, !"snd_nm256_capture", i1 false, i1 false}
!239 = !{!"../sound/pci/nm256/nm256.c", i32 803, i32 38}
!240 = !{ptr @snd_nm256_mixer.ops, !241, !"ops", i1 false, i1 false}
!241 = !{!"../sound/pci/nm256/nm256.c", i32 1308, i32 39}
!242 = !{ptr @.str.65, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/nm256/nm256.c", i32 1334, i32 34}
!244 = !{ptr @nm256_ac97_init_val, !245, !"nm256_ac97_init_val", i1 false, i1 false}
!245 = !{!"../sound/pci/nm256/nm256.c", i32 1178, i32 35}
!246 = !{ptr @.str.66, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/nm256/nm256.c", i32 1252, i32 2}
!248 = !{ptr @.str.67, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @snd_nm256_ac97_write.__UNIQUE_ID_ddebug274, !247, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!250 = !{ptr @nm256_res_table, !251, !"nm256_res_table", i1 false, i1 false}
!251 = !{!"../sound/pci/nm256/nm256.c", i32 1256, i32 40}
!252 = !{ptr @nm256_pm, !253, !"nm256_pm", i1 false, i1 false}
!253 = !{!"../sound/pci/nm256/nm256.c", i32 1433, i32 8}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{!"auto-init"}
!264 = !{i64 2148194373, i64 2148194378, i64 2148194391, i64 2148194435, i64 2148194469, i64 2148194490}
!265 = !{i8 0, i8 2}
!266 = !{i64 726796}
!267 = !{i64 2155095650}
!268 = !{i64 727414}
!269 = !{i64 2155094983}
!270 = !{i64 727634}
!271 = !{i64 2155136688}
!272 = !{i64 2155137160}
!273 = !{i64 2155096703}
!274 = !{i64 727019}
!275 = !{i64 2155097145}
!276 = !{i64 726596}
!277 = !{i64 2155097709}
!278 = !{i64 727216}
!279 = !{i64 2155096317}
!280 = !{!"branch_weights", i32 1, i32 2000}
