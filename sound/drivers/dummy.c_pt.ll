; ModuleID = '/llk/IR_all_yes/sound/drivers/dummy.c_pt.bc'
source_filename = "../sound/drivers/dummy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dummy_model = type { ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dummy_timer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.dummy_hw_field = type { ptr, ptr, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_dummy = type { ptr, ptr, ptr, %struct.snd_pcm_hardware, %struct.spinlock, [5 x [2 x i32]], [5 x [2 x i32]], i32, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.dummy_systimer_pcm = type { ptr, %struct.spinlock, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dummy_hrtimer_pcm = type { ptr, i64, i64, %struct.atomic_t, %struct.hrtimer, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.72, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author238 = internal constant [50 x i8] c"snd_dummy.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [50 x i8] c"snd_dummy.description=Dummy soundcard (/dev/null)\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [39 x i8] c"snd_dummy.file=sound/drivers/snd-dummy\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [22 x i8] c"snd_dummy.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_dummy.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype242 = internal constant [38 x i8] c"snd_dummy.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index243 = internal constant [54 x i8] c"snd_dummy.parm=index:Index value for dummy soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_dummy.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype244 = internal constant [37 x i8] c"snd_dummy.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id245 = internal constant [49 x i8] c"snd_dummy.parm=id:ID string for dummy soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_dummy.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype246 = internal constant [40 x i8] c"snd_dummy.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable247 = internal constant [51 x i8] c"snd_dummy.parm=enable:Enable this dummy soundcard.\00", section ".modinfo", align 1
@__param_str_model = internal constant [16 x i8] c"snd_dummy.model\00", align 1
@__param_arr_model = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @model }, align 4
@__param_model = internal constant %struct.kernel_param { ptr @__param_str_model, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_model } }, section "__param", align 4
@__UNIQUE_ID_modeltype248 = internal constant [40 x i8] c"snd_dummy.parmtype=model:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_model249 = internal constant [38 x i8] c"snd_dummy.parm=model:Soundcard model.\00", section ".modinfo", align 1
@__param_str_pcm_devs = internal constant [19 x i8] c"snd_dummy.pcm_devs\00", align 1
@__param_arr_pcm_devs = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcm_devs }, align 4
@__param_pcm_devs = internal constant %struct.kernel_param { ptr @__param_str_pcm_devs, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_pcm_devs } }, section "__param", align 4
@__UNIQUE_ID_pcm_devstype250 = internal constant [41 x i8] c"snd_dummy.parmtype=pcm_devs:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_devs251 = internal constant [62 x i8] c"snd_dummy.parm=pcm_devs:PCM devices # (0-4) for dummy driver.\00", section ".modinfo", align 1
@__param_str_pcm_substreams = internal constant [25 x i8] c"snd_dummy.pcm_substreams\00", align 1
@__param_arr_pcm_substreams = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcm_substreams }, align 4
@__param_pcm_substreams = internal constant %struct.kernel_param { ptr @__param_str_pcm_substreams, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_pcm_substreams } }, section "__param", align 4
@__UNIQUE_ID_pcm_substreamstype252 = internal constant [47 x i8] c"snd_dummy.parmtype=pcm_substreams:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_substreams253 = internal constant [73 x i8] c"snd_dummy.parm=pcm_substreams:PCM substreams # (1-128) for dummy driver.\00", section ".modinfo", align 1
@__param_str_fake_buffer = internal constant [22 x i8] c"snd_dummy.fake_buffer\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@fake_buffer = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_fake_buffer = internal constant %struct.kernel_param { ptr @__param_str_fake_buffer, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fake_buffer } }, section "__param", align 4
@__UNIQUE_ID_fake_buffertype254 = internal constant [36 x i8] c"snd_dummy.parmtype=fake_buffer:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fake_buffer255 = internal constant [52 x i8] c"snd_dummy.parm=fake_buffer:Fake buffer allocations.\00", section ".modinfo", align 1
@__param_str_hrtimer = internal constant [18 x i8] c"snd_dummy.hrtimer\00", align 1
@hrtimer = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_hrtimer = internal constant %struct.kernel_param { ptr @__param_str_hrtimer, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @hrtimer } }, section "__param", align 4
@__UNIQUE_ID_hrtimertype256 = internal constant [32 x i8] c"snd_dummy.parmtype=hrtimer:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_hrtimer257 = internal constant [56 x i8] c"snd_dummy.parm=hrtimer:Use hrtimer as the timer source.\00", section ".modinfo", align 1
@__initcall__kmod_snd_dummy__258_1183_alsa_card_dummy_init6 = internal global ptr @alsa_card_dummy_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_dummy_exit = internal global ptr @alsa_card_dummy_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@enable = internal global { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@model = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@pcm_devs = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@pcm_substreams = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@devices = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_dummy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_dummy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_dummy_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_dummy\00", [22 x i8] zeroinitializer }, align 32
@snd_dummy_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_dummy_suspend, ptr @snd_dummy_resume, ptr @snd_dummy_suspend, ptr @snd_dummy_resume, ptr @snd_dummy_suspend, ptr @snd_dummy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dummy_models = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @model_emu10k1, ptr @model_rme9652, ptr @model_ice1712, ptr @model_uda1341, ptr @model_ac97, ptr @model_ca0106, ptr null], [36 x i8] zeroinitializer }, align 32
@snd_dummy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016snd-dummy: Using model '%s' for card %i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_dummy_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/drivers/dummy.c\00", [42 x i8] zeroinitializer }, align 32
@snd_dummy_probe._entry_ptr = internal global ptr @snd_dummy_probe._entry, section ".printk_index", align 4
@dummy_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 262403, i64 6, i32 1073742078, i32 5500, i32 48000, i32 1, i32 2, i32 65536, i32 64, i32 65536, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Dummy %i\00", [23 x i8] zeroinitializer }, align 32
@model_emu10k1 = internal constant { %struct.dummy_model, [32 x i8] } { %struct.dummy_model { ptr @.str.7, ptr @emu10k1_playback_constraints, ptr null, i64 0, i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [32 x i8] zeroinitializer }, align 32
@model_rme9652 = internal constant { %struct.dummy_model, [32 x i8] } { %struct.dummy_model { ptr @.str.8, ptr null, ptr null, i64 1024, i32 1703936, i32 0, i32 0, i32 2, i32 2, i32 0, i32 0, i32 0, i32 26, i32 26 }, [32 x i8] zeroinitializer }, align 32
@model_ice1712 = internal constant { %struct.dummy_model, [32 x i8] } { %struct.dummy_model { ptr @.str.9, ptr null, ptr null, i64 1024, i32 262144, i32 0, i32 0, i32 1, i32 1024, i32 0, i32 0, i32 0, i32 10, i32 10 }, [32 x i8] zeroinitializer }, align 32
@model_uda1341 = internal constant { %struct.dummy_model, [32 x i8] } { %struct.dummy_model { ptr @.str.10, ptr null, ptr null, i64 4, i32 16380, i32 0, i32 0, i32 2, i32 255, i32 0, i32 0, i32 0, i32 2, i32 2 }, [32 x i8] zeroinitializer }, align 32
@model_ac97 = internal constant { %struct.dummy_model, [32 x i8] } { %struct.dummy_model { ptr @.str.11, ptr null, ptr null, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 48000, i32 48000, i32 2, i32 2 }, [32 x i8] zeroinitializer }, align 32
@model_ca0106 = internal constant { %struct.dummy_model, [32 x i8] } { %struct.dummy_model { ptr @.str.12, ptr null, ptr null, i64 4, i32 523776, i32 0, i32 65472, i32 2, i32 8, i32 5248, i32 48000, i32 192000, i32 2, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emu10k1\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rme9652\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ice1712\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uda1341\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ca0106\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Dummy PCM\00", [22 x i8] zeroinitializer }, align 32
@dummy_pcm_ops_no_buf = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @dummy_pcm_open, ptr @dummy_pcm_close, ptr null, ptr @dummy_pcm_hw_params, ptr null, ptr @dummy_pcm_prepare, ptr @dummy_pcm_trigger, ptr null, ptr @dummy_pcm_pointer, ptr null, ptr @dummy_pcm_silence, ptr @dummy_pcm_copy, ptr @dummy_pcm_copy_kernel, ptr @dummy_pcm_page, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dummy_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @dummy_pcm_open, ptr @dummy_pcm_close, ptr null, ptr @dummy_pcm_hw_params, ptr null, ptr @dummy_pcm_prepare, ptr @dummy_pcm_trigger, ptr null, ptr @dummy_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dummy_systimer_ops = internal constant { %struct.dummy_timer_ops, [40 x i8] } { %struct.dummy_timer_ops { ptr @dummy_systimer_create, ptr @dummy_systimer_free, ptr @dummy_systimer_prepare, ptr @dummy_systimer_start, ptr @dummy_systimer_stop, ptr @dummy_systimer_pointer }, [40 x i8] zeroinitializer }, align 32
@dummy_hrtimer_ops = internal constant { %struct.dummy_timer_ops, [40 x i8] } { %struct.dummy_timer_ops { ptr @dummy_hrtimer_create, ptr @dummy_hrtimer_free, ptr @dummy_hrtimer_prepare, ptr @dummy_hrtimer_start, ptr @dummy_hrtimer_stop, ptr @dummy_hrtimer_pointer }, [40 x i8] zeroinitializer }, align 32
@dummy_systimer_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&dpcm->timer)\00", [17 x i8] zeroinitializer }, align 32
@dummy_systimer_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dpcm->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dummy_page = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@snd_card_dummy_new_mixer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dummy->mixer_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dummy Mixer\00", [20 x i8] zeroinitializer }, align 32
@snd_dummy_controls = internal constant { [11 x %struct.snd_kcontrol_new], [144 x i8] } { [11 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_dummy_volume_info, ptr @snd_dummy_volume_get, ptr @snd_dummy_volume_put, %union.anon.83 { ptr @db_scale_dummy }, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @snd_dummy_capsrc_get, ptr @snd_dummy_capsrc_put, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_dummy_volume_info, ptr @snd_dummy_volume_get, ptr @snd_dummy_volume_put, %union.anon.83 { ptr @db_scale_dummy }, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @snd_dummy_capsrc_get, ptr @snd_dummy_capsrc_put, %union.anon.83 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_dummy_volume_info, ptr @snd_dummy_volume_get, ptr @snd_dummy_volume_put, %union.anon.83 { ptr @db_scale_dummy }, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @snd_dummy_capsrc_get, ptr @snd_dummy_capsrc_put, %union.anon.83 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_dummy_volume_info, ptr @snd_dummy_volume_get, ptr @snd_dummy_volume_put, %union.anon.83 { ptr @db_scale_dummy }, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @snd_dummy_capsrc_get, ptr @snd_dummy_capsrc_put, %union.anon.83 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_dummy_volume_info, ptr @snd_dummy_volume_get, ptr @snd_dummy_volume_put, %union.anon.83 { ptr @db_scale_dummy }, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_stereo_info, ptr @snd_dummy_capsrc_get, ptr @snd_dummy_capsrc_put, %union.anon.83 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_dummy_iobox_info, ptr @snd_dummy_iobox_get, ptr @snd_dummy_iobox_put, %union.anon.83 zeroinitializer, i32 0 }], [144 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CD Volume\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD Capture Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@db_scale_dummy = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -4500, i32 30], [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Synth Volume\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Synth Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"External I/O Box\00", [47 x i8] zeroinitializer }, align 32
@snd_dummy_iobox_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CD Player\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dummy_pcm\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@fields = internal constant { [11 x %struct.dummy_hw_field], [48 x i8] } { [11 x %struct.dummy_hw_field] [%struct.dummy_hw_field { ptr @.str.34, ptr @.str.37, i32 8, i32 8 }, %struct.dummy_hw_field { ptr @.str.35, ptr @.str.38, i32 16, i32 4 }, %struct.dummy_hw_field { ptr @.str.39, ptr @.str.40, i32 20, i32 4 }, %struct.dummy_hw_field { ptr @.str.41, ptr @.str.40, i32 24, i32 4 }, %struct.dummy_hw_field { ptr @.str.42, ptr @.str.40, i32 28, i32 4 }, %struct.dummy_hw_field { ptr @.str.43, ptr @.str.40, i32 32, i32 4 }, %struct.dummy_hw_field { ptr @.str.44, ptr @.str.45, i32 36, i32 4 }, %struct.dummy_hw_field { ptr @.str.46, ptr @.str.45, i32 40, i32 4 }, %struct.dummy_hw_field { ptr @.str.47, ptr @.str.45, i32 44, i32 4 }, %struct.dummy_hw_field { ptr @.str.48, ptr @.str.40, i32 48, i32 4 }, %struct.dummy_hw_field { ptr @.str.49, ptr @.str.40, i32 52, i32 4 }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"formats\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rates\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%#llx\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%#x\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rate_min\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rate_max\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channels_min\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channels_max\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"buffer_bytes_max\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ld\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"period_bytes_min\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"period_bytes_max\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periods_min\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"periods_max\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@print_rates.rates = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 5512, i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" continuous\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" knot\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"fake_buffer\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 56, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"hrtimer\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 54, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 46, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 47, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 48, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 49, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"pcm_devs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 50, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"pcm_substreams\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 51, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 79, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"snd_dummy_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1120, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1123, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"snd_dummy_pm\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1112, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"dummy_models\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 206, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1036, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"dummy_pcm_hardware\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 504, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1082, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1084, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"model_emu10k1\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 146, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"model_rme9652\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 152, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"model_ice1712\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 162, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"model_uda1341\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 172, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"model_ac97\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 182, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"model_ca0106\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 192, i32 33 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 147, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 153, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 163, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 173, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 183, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 193, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 675, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"dummy_pcm_ops_no_buf\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 655, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"dummy_pcm_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 646, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"dummy_systimer_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 342, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"dummy_hrtimer_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 466, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 331, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 332, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"dummy_page\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 589, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 878, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 879, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant [19 x i8] c"snd_dummy_controls\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 851, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 887, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 889, i32 39 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 852, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"db_scale_dummy\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 760, i32 14 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 853, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 854, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 855, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 856, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 857, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 858, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 859, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 864, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 803, i32 27 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 803, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 803, i32 47 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1013, i32 35 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 967, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 946, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 974, i32 31 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 976, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 978, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 947, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 948, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 949, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 950, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 951, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 952, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 953, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 954, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 955, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 956, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 957, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 907, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 914, i32 19 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 921, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 923, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [25 x i8] c"../sound/drivers/dummy.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 926, i32 4 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable247, ptr @__UNIQUE_ID_enabletype246, ptr @__UNIQUE_ID_fake_buffer255, ptr @__UNIQUE_ID_fake_buffertype254, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_hrtimer257, ptr @__UNIQUE_ID_hrtimertype256, ptr @__UNIQUE_ID_id245, ptr @__UNIQUE_ID_idtype244, ptr @__UNIQUE_ID_index243, ptr @__UNIQUE_ID_indextype242, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_model249, ptr @__UNIQUE_ID_modeltype248, ptr @__UNIQUE_ID_pcm_devs251, ptr @__UNIQUE_ID_pcm_devstype250, ptr @__UNIQUE_ID_pcm_substreams253, ptr @__UNIQUE_ID_pcm_substreamstype252, ptr @__exitcall_alsa_card_dummy_exit, ptr @__initcall__kmod_snd_dummy__258_1183_alsa_card_dummy_init6, ptr @__param_enable, ptr @__param_fake_buffer, ptr @__param_hrtimer, ptr @__param_id, ptr @__param_index, ptr @__param_model, ptr @__param_pcm_devs, ptr @__param_pcm_substreams, ptr @alsa_card_dummy_exit, ptr @snd_dummy_probe._entry, ptr @snd_dummy_probe._entry_ptr, ptr @fake_buffer, ptr @hrtimer, ptr @index, ptr @id, ptr @enable, ptr @model, ptr @pcm_devs, ptr @pcm_substreams, ptr @devices, ptr @snd_dummy_driver, ptr @.str, ptr @snd_dummy_pm, ptr @dummy_models, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dummy_pcm_hardware, ptr @.str.5, ptr @.str.6, ptr @model_emu10k1, ptr @model_rme9652, ptr @model_ice1712, ptr @model_uda1341, ptr @model_ac97, ptr @model_ca0106, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @dummy_pcm_ops_no_buf, ptr @dummy_pcm_ops, ptr @dummy_systimer_ops, ptr @dummy_hrtimer_ops, ptr @dummy_systimer_create.__key, ptr @.str.14, ptr @dummy_systimer_create.__key.15, ptr @.str.16, ptr @dummy_page, ptr @snd_card_dummy_new_mixer.__key, ptr @.str.17, ptr @.str.18, ptr @snd_dummy_controls, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @db_scale_dummy, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @snd_dummy_iobox_info.names, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @fields, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @print_rates.rates, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fake_buffer to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hrtimer to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_devs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_substreams to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dummy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dummy_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_models to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dummy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_emu10k1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_rme9652 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_ice1712 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_uda1341 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_ac97 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @model_ca0106 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_pcm_ops_no_buf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_systimer_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_hrtimer_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_systimer_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_systimer_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_page to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_dummy_new_mixer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dummy_controls to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_dummy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dummy_iobox_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fields to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_rates.rates to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_dummy_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_dummy_unregister_all()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_dummy_unregister_all() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #14
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_dummy_driver) #14
  %2 = load i8, ptr @fake_buffer, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %for.end.free_fake_buffer.exit_crit_edge, label %for.body.preheader.i

for.end.free_fake_buffer.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_fake_buffer.exit

for.body.preheader.i:                             ; preds = %for.end
  %3 = load ptr, ptr @dummy_page, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.then2.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %3 to i32
  tail call void @free_pages(i32 noundef %4, i32 noundef 0) #14
  store ptr null, ptr @dummy_page, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.preheader.i.for.inc.i_crit_edge
  %5 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dummy_page, i32 0, i32 1), align 4
  %tobool1.not.1.i = icmp eq ptr %5, null
  br i1 %tobool1.not.1.i, label %for.inc.i.free_fake_buffer.exit_crit_edge, label %if.then2.1.i

for.inc.i.free_fake_buffer.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_fake_buffer.exit

if.then2.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #14
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @dummy_page, i32 0, i32 1), align 4
  br label %free_fake_buffer.exit

free_fake_buffer.exit:                            ; preds = %if.then2.1.i, %for.inc.i.free_fake_buffer.exit_crit_edge, %for.end.free_fake_buffer.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_dummy_init() #0 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @snd_dummy_driver, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup21_crit_edge, label %if.end

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup21

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @fake_buffer, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %if.end.alloc_fake_buffer.exit_crit_edge, label %for.body.preheader.i

if.end.alloc_fake_buffer.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_fake_buffer.exit

for.body.preheader.i:                             ; preds = %if.end
  %call.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #14
  %1 = inttoptr i32 %call.i to ptr
  store ptr %1, ptr @dummy_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %for.body.preheader.i.if.then3.i_crit_edge, label %for.cond.i

for.body.preheader.i.if.then3.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %call.1.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #14
  %2 = inttoptr i32 %call.1.i to ptr
  store ptr %2, ptr getelementptr inbounds ([2 x ptr], ptr @dummy_page, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool2.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool2.not.1.i, label %for.cond.i.if.then3.i_crit_edge, label %for.cond.i.alloc_fake_buffer.exit_crit_edge

for.cond.i.alloc_fake_buffer.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_fake_buffer.exit

for.cond.i.if.then3.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3.i

if.then3.i:                                       ; preds = %for.cond.i.if.then3.i_crit_edge, %for.body.preheader.i.if.then3.i_crit_edge
  %3 = load i8, ptr @fake_buffer, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.then3.i.if.then3_crit_edge, label %for.body.preheader.i.i

if.then3.i.if.then3_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

for.body.preheader.i.i:                           ; preds = %if.then3.i
  %4 = load ptr, ptr @dummy_page, align 4
  %tobool1.not.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i, label %for.body.preheader.i.i.for.inc.i.i_crit_edge, label %if.then2.i.i

for.body.preheader.i.i.for.inc.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then2.i.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %5, i32 noundef 0) #14
  store ptr null, ptr @dummy_page, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then2.i.i, %for.body.preheader.i.i.for.inc.i.i_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @dummy_page, i32 0, i32 1), align 4
  %tobool1.not.1.i.i = icmp eq ptr %6, null
  br i1 %tobool1.not.1.i.i, label %for.inc.i.i.if.then3_crit_edge, label %if.then2.1.i.i

for.inc.i.i.if.then3_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then3

if.then2.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %6 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #14
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @dummy_page, i32 0, i32 1), align 4
  br label %if.then3

alloc_fake_buffer.exit:                           ; preds = %for.cond.i.alloc_fake_buffer.exit_crit_edge, %if.end.alloc_fake_buffer.exit_crit_edge
  %8 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  br label %for.body

if.then3:                                         ; preds = %if.then2.1.i.i, %for.inc.i.i.if.then3_crit_edge, %if.then3.i.if.then3_crit_edge
  tail call void @platform_driver_unregister(ptr noundef nonnull @snd_dummy_driver) #14
  br label %cleanup21

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %alloc_fake_buffer.exit
  %cards.040 = phi i32 [ 0, %alloc_fake_buffer.exit ], [ %cards.1, %cleanup.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %alloc_fake_buffer.exit ], [ %inc17, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %i.038
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #14
  %11 = call ptr @memset(ptr %8, i32 255, i32 48)
  %12 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %13 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fwnode.i.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %8, align 8
  %15 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str, ptr %name2.i.i, align 4
  %16 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.038, ptr %id3.i.i, align 8
  %17 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %dma_mask.i.i, align 8
  %18 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %properties.i.i, align 8
  %19 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #14
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void @platform_device_unregister(ptr noundef %call.i.i) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx16 = getelementptr [32 x ptr], ptr @devices, i32 0, i32 %i.038
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %arrayidx16, align 4
  %inc = add i32 %cards.040, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %cards.1 = phi i32 [ %inc, %if.end15 ], [ %cards.040, %if.then14 ], [ %cards.040, %for.body.cleanup_crit_edge ], [ %cards.040, %if.end7.cleanup_crit_edge ]
  %inc17 = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc17, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cards.1)
  %tobool18.not = icmp eq i32 %cards.1, 0
  br i1 %tobool18.not, label %if.then19, label %for.end.cleanup21_crit_edge

for.end.cleanup21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup21

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @snd_dummy_unregister_all()
  br label %cleanup21

cleanup21:                                        ; preds = %if.then19, %for.end.cleanup21_crit_edge, %if.then3, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -19, %if.then19 ], [ %call, %entry.cleanup21_crit_edge ], [ 0, %for.end.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_probe(ptr noundef %devptr) #1 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #14
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !238
  %id = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3
  %arrayidx = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev1, i32 noundef %4, ptr noundef %6, ptr noundef null, i32 noundef 216, ptr noundef nonnull %card) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %10, align 8
  %arrayidx4 = getelementptr [32 x ptr], ptr @model, i32 0, i32 %2
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end.for.end_crit_edge, label %land.rhs.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.preheader:                               ; preds = %if.end
  %call7 = call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(8) @.str.7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %land.rhs.preheader.do.end_crit_edge, label %for.inc

land.rhs.preheader.do.end_crit_edge:              ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %for.inc.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %land.rhs.preheader.do.end_crit_edge
  %mdl.0214.lcssa = phi ptr [ @dummy_models, %land.rhs.preheader.do.end_crit_edge ], [ getelementptr inbounds ([7 x ptr], ptr @dummy_models, i32 0, i32 1), %for.inc.do.end_crit_edge ], [ getelementptr inbounds ([7 x ptr], ptr @dummy_models, i32 0, i32 2), %for.inc.1.do.end_crit_edge ], [ getelementptr inbounds ([7 x ptr], ptr @dummy_models, i32 0, i32 3), %for.inc.2.do.end_crit_edge ], [ getelementptr inbounds ([7 x ptr], ptr @dummy_models, i32 0, i32 4), %for.inc.3.do.end_crit_edge ], [ getelementptr inbounds ([7 x ptr], ptr @dummy_models, i32 0, i32 5), %for.inc.4.do.end_crit_edge ]
  %.lcssa = phi ptr [ @.str.7, %land.rhs.preheader.do.end_crit_edge ], [ @.str.8, %for.inc.do.end_crit_edge ], [ @.str.9, %for.inc.1.do.end_crit_edge ], [ @.str.10, %for.inc.2.do.end_crit_edge ], [ @.str.11, %for.inc.3.do.end_crit_edge ], [ @.str.12, %for.inc.4.do.end_crit_edge ]
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %.lcssa, i32 noundef %17) #18
  %18 = ptrtoint ptr %mdl.0214.lcssa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdl.0214.lcssa, align 4
  %model = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 1
  %20 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %model, align 4
  br label %for.end

for.inc:                                          ; preds = %land.rhs.preheader
  %call7.1 = call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(8) @.str.8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %cmp8.1 = icmp eq i32 %call7.1, 0
  br i1 %cmp8.1, label %for.inc.do.end_crit_edge, label %for.inc.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.inc.1:                                        ; preds = %for.inc
  %call7.2 = call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(8) @.str.9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %cmp8.2 = icmp eq i32 %call7.2, 0
  br i1 %cmp8.2, label %for.inc.1.do.end_crit_edge, label %for.inc.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.inc.2:                                        ; preds = %for.inc.1
  %call7.3 = call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(8) @.str.10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %cmp8.3 = icmp eq i32 %call7.3, 0
  br i1 %cmp8.3, label %for.inc.2.do.end_crit_edge, label %for.inc.3

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.inc.3:                                        ; preds = %for.inc.2
  %call7.4 = call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(5) @.str.11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.4)
  %cmp8.4 = icmp eq i32 %call7.4, 0
  br i1 %cmp8.4, label %for.inc.3.do.end_crit_edge, label %for.inc.4

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.inc.4:                                        ; preds = %for.inc.3
  %call7.5 = call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(7) @.str.12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.5)
  %cmp8.5 = icmp eq i32 %call7.5, 0
  br i1 %cmp8.5, label %for.inc.4.do.end_crit_edge, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.end:                                          ; preds = %for.inc.4.for.end_crit_edge, %do.end, %if.end.for.end_crit_edge
  %m.0 = phi ptr [ %19, %do.end ], [ null, %if.end.for.end_crit_edge ], [ null, %for.inc.4.for.end_crit_edge ]
  %arrayidx16 = getelementptr [32 x i32], ptr @pcm_devs, i32 0, i32 %2
  %arrayidx20 = getelementptr [32 x i32], ptr @pcm_substreams, i32 0, i32 %2
  %pcm1.i = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 2
  br label %land.rhs15

land.rhs15:                                       ; preds = %for.inc35.land.rhs15_crit_edge, %for.end
  %idx.0215 = phi i32 [ 0, %for.end ], [ %inc, %for.inc35.land.rhs15_crit_edge ]
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0215, i32 %22)
  %cmp17 = icmp slt i32 %idx.0215, %22
  br i1 %cmp17, label %for.body19, label %land.rhs15.for.end36_crit_edge

land.rhs15.for.end36_crit_edge:                   ; preds = %land.rhs15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

for.body19:                                       ; preds = %land.rhs15
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp21 = icmp slt i32 %24, 1
  br i1 %cmp21, label %for.body19.if.end29.sink.split_crit_edge, label %if.end24

for.body19.if.end29.sink.split_crit_edge:         ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.sink.split

if.end24:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %24)
  %cmp26 = icmp ugt i32 %24, 128
  br i1 %cmp26, label %if.end24.if.end29.sink.split_crit_edge, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end24.if.end29.sink.split_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.end24.if.end29.sink.split_crit_edge, %for.body19.if.end29.sink.split_crit_edge
  %.sink = phi i32 [ 1, %for.body19.if.end29.sink.split_crit_edge ], [ 128, %if.end24.if.end29.sink.split_crit_edge ]
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %arrayidx20, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.end24.if.end29_crit_edge
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #14
  %28 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !238
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %10, align 8
  %call.i = call i32 @snd_pcm_new(ptr noundef %30, ptr noundef nonnull @.str.13, i32 noundef %idx.0215, i32 noundef %27, i32 noundef %27, ptr noundef nonnull %pcm.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_card_dummy_pcm.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end29
  %31 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcm.i, align 4
  %33 = ptrtoint ptr %pcm1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %pcm1.i, align 8
  %34 = load i8, ptr @fake_buffer, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  %dummy_pcm_ops.dummy_pcm_ops_no_buf.i = select i1 %tobool.not.i, ptr @dummy_pcm_ops, ptr @dummy_pcm_ops_no_buf
  call void @snd_pcm_set_ops(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %dummy_pcm_ops.dummy_pcm_ops_no_buf.i) #14
  %35 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %36, i32 noundef 1, ptr noundef nonnull %dummy_pcm_ops.dummy_pcm_ops_no_buf.i) #14
  %37 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %10, ptr %private_data.i, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %38, i32 0, i32 3
  %40 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %38, i32 0, i32 7
  %41 = call ptr @memcpy(ptr %name.i, ptr @.str.13, i32 10)
  %42 = load i8, ptr @fake_buffer, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool5.not.i = icmp eq i8 %42, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.for.inc35_crit_edge

if.end.i.for.inc35_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc35

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %38, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 65536) #14
  br label %for.inc35

snd_card_dummy_pcm.exit:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #14
  br label %cleanup

for.inc35:                                        ; preds = %if.then6.i, %if.end.i.for.inc35_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #14
  %inc = add nuw nsw i32 %idx.0215, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc35.for.end36_crit_edge, label %for.inc35.land.rhs15_crit_edge

for.inc35.land.rhs15_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs15

for.inc35.for.end36_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

for.end36:                                        ; preds = %for.inc35.for.end36_crit_edge, %land.rhs15.for.end36_crit_edge
  %pcm_hw = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3
  %43 = call ptr @memcpy(ptr %pcm_hw, ptr @dummy_pcm_hardware, i32 64)
  %tobool37.not = icmp eq ptr %m.0, null
  br i1 %tobool37.not, label %for.end36.if.end105_crit_edge, label %if.then38

for.end36.if.end105_crit_edge:                    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then38:                                        ; preds = %for.end36
  %formats = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 3
  %44 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %formats, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool39.not = icmp eq i64 %45, 0
  br i1 %tobool39.not, label %if.then38.if.end44_crit_edge, label %if.then40

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  %formats43 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %formats43 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %formats43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.then38.if.end44_crit_edge
  %buffer_bytes_max = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 4
  %47 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buffer_bytes_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool45.not = icmp eq i32 %48, 0
  br i1 %tobool45.not, label %if.end44.if.end50_crit_edge, label %if.then46

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %buffer_bytes_max49 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 7
  %49 = ptrtoint ptr %buffer_bytes_max49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %buffer_bytes_max49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.end44.if.end50_crit_edge
  %period_bytes_min = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 5
  %50 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %period_bytes_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool51.not = icmp eq i32 %51, 0
  br i1 %tobool51.not, label %if.end50.if.end56_crit_edge, label %if.then52

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %period_bytes_min55 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %period_bytes_min55 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %period_bytes_min55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end50.if.end56_crit_edge
  %period_bytes_max = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 6
  %53 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %period_bytes_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool57.not = icmp eq i32 %54, 0
  br i1 %tobool57.not, label %if.end56.if.end62_crit_edge, label %if.then58

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  %period_bytes_max61 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 9
  %55 = ptrtoint ptr %period_bytes_max61 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %period_bytes_max61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end56.if.end62_crit_edge
  %periods_min = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 7
  %56 = ptrtoint ptr %periods_min to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %periods_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool63.not = icmp eq i32 %57, 0
  br i1 %tobool63.not, label %if.end62.if.end68_crit_edge, label %if.then64

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  %periods_min67 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 10
  %58 = ptrtoint ptr %periods_min67 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %periods_min67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end62.if.end68_crit_edge
  %periods_max = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 8
  %59 = ptrtoint ptr %periods_max to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %periods_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool69.not = icmp eq i32 %60, 0
  br i1 %tobool69.not, label %if.end68.if.end74_crit_edge, label %if.then70

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %periods_max73 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 11
  %61 = ptrtoint ptr %periods_max73 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %periods_max73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end68.if.end74_crit_edge
  %rates = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 9
  %62 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool75.not = icmp eq i32 %63, 0
  br i1 %tobool75.not, label %if.end74.if.end80_crit_edge, label %if.then76

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %rates79 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 2
  %64 = ptrtoint ptr %rates79 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rates79, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.end74.if.end80_crit_edge
  %rate_min = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 10
  %65 = ptrtoint ptr %rate_min to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rate_min, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool81.not = icmp eq i32 %66, 0
  br i1 %tobool81.not, label %if.end80.if.end86_crit_edge, label %if.then82

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  %rate_min85 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 3
  %67 = ptrtoint ptr %rate_min85 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rate_min85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end80.if.end86_crit_edge
  %rate_max = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 11
  %68 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rate_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool87.not = icmp eq i32 %69, 0
  br i1 %tobool87.not, label %if.end86.if.end92_crit_edge, label %if.then88

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %rate_max91 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 4
  %70 = ptrtoint ptr %rate_max91 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %rate_max91, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end86.if.end92_crit_edge
  %channels_min = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 12
  %71 = ptrtoint ptr %channels_min to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channels_min, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool93.not = icmp eq i32 %72, 0
  br i1 %tobool93.not, label %if.end92.if.end98_crit_edge, label %if.then94

if.end92.if.end98_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end98

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %channels_min97 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 5
  %73 = ptrtoint ptr %channels_min97 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %channels_min97, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end92.if.end98_crit_edge
  %channels_max = getelementptr inbounds %struct.dummy_model, ptr %m.0, i32 0, i32 13
  %74 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channels_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool99.not = icmp eq i32 %75, 0
  br i1 %tobool99.not, label %if.end98.if.end105_crit_edge, label %if.then100

if.end98.if.end105_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  %channels_max103 = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 3, i32 6
  %76 = ptrtoint ptr %channels_max103 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %channels_max103, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end98.if.end105_crit_edge, %for.end36.if.end105_crit_edge
  %77 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %10, align 8
  %mixer_lock.i = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %mixer_lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @snd_card_dummy_new_mixer.__key, i16 noundef signext 3) #14
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 6
  %79 = call ptr @memcpy(ptr %mixername.i, ptr @.str.18, i32 12)
  %iobox.i = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 7
  %80 = ptrtoint ptr %iobox.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %iobox.i, align 4
  %cd_switch_ctl.i = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 9
  %cd_volume_ctl.i = getelementptr inbounds %struct.snd_dummy, ptr %10, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end105
  %idx.033.i = phi i32 [ 0, %if.end105 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [11 x %struct.snd_kcontrol_new], ptr @snd_dummy_controls, i32 0, i32 %idx.033.i
  %call3.i = call ptr @snd_ctl_new1(ptr noundef %arrayidx.i, ptr noundef %10) #14
  %call4.i = call i32 @snd_ctl_add(ptr noundef %78, ptr noundef %call3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %for.body.i.cleanup_crit_edge, label %if.end.i204

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i204:                                      ; preds = %for.body.i
  %name.i201 = getelementptr inbounds %struct.snd_kcontrol, ptr %call3.i, i32 0, i32 1, i32 4
  %call7.i202 = call i32 @strcmp(ptr noundef %name.i201, ptr noundef nonnull dereferenceable(10) @.str.19) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i202)
  %tobool.not.i203 = icmp eq i32 %call7.i202, 0
  br i1 %tobool.not.i203, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %cd_volume_ctl.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call3.i, ptr %cd_volume_ctl.i, align 8
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i204
  %call12.i = call i32 @strcmp(ptr noundef %name.i201, ptr noundef nonnull dereferenceable(18) @.str.20) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %cd_switch_ctl.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call3.i, ptr %cd_switch_ctl.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %if.else.i.for.inc.i_crit_edge, %if.then8.i
  %inc.i = add nuw nsw i32 %idx.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %if.end109, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end109:                                        ; preds = %for.inc.i
  %83 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 2
  %85 = call ptr @memcpy(ptr %driver, ptr @.str.5, i32 6)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 3
  %86 = call ptr @memcpy(ptr %shortname, ptr @.str.5, i32 6)
  %longname = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 4
  %add = add i32 %2, 1
  %call114 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.6, i32 noundef %add)
  %87 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %10, align 8
  %call.i206 = call i32 @snd_card_rw_proc_new(ptr noundef %88, ptr noundef nonnull @.str.32, ptr noundef %10, ptr noundef nonnull @dummy_proc_read, ptr noundef nonnull @dummy_proc_write) #14
  %89 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %card, align 4
  %call115 = call i32 @snd_card_register(ptr noundef %90) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end109.cleanup_crit_edge, label %if.end118

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end118:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %devptr, i32 0, i32 3, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %if.end109.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %snd_card_dummy_pcm.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end118 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %snd_card_dummy_pcm.exit ], [ %call115, %if.end109.cleanup_crit_edge ], [ %call4.i, %for.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emu10k1_playback_constraints(ptr noundef %runtime) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %runtime, i32 noundef 15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %runtime, i32 noundef 18, i32 noundef 256, i32 noundef -1) #14
  %0 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_pcm_open(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %model1 = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %model1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %6 = load i8, ptr @hrtimer, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %spec.store.select = select i1 %tobool.not, ptr @dummy_systimer_ops, ptr @dummy_hrtimer_ops
  %7 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec.store.select, align 4
  %call = tail call i32 %8(ptr noundef %substream) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %entry
  %9 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime2, align 4
  %private_data6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %private_data6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data6, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.store.select, ptr %12, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %pcm_hw = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %hw, ptr %pcm_hw, i32 64)
  %15 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.if.end13_crit_edge, label %if.then8

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw, align 8
  %and10 = and i32 %20, -769
  %or = or i32 %and10, 512
  store i32 %or, ptr %hw, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end4.if.end13_crit_edge
  %21 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream, align 4
  %device15 = getelementptr inbounds %struct.snd_pcm, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device15, align 4
  %and16 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end13.if.end22_crit_edge, label %if.then18

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw, align 8
  %and21 = and i32 %26, -4
  store i32 %and21, ptr %hw, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end13.if.end22_crit_edge
  %cmp23 = icmp eq ptr %3, null
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %27 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26 = icmp eq i32 %28, 0
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end25
  %playback_constraints = getelementptr inbounds %struct.dummy_model, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %playback_constraints to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %playback_constraints, align 4
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %if.then27.cleanup_crit_edge, label %if.then27.if.end40_crit_edge

if.then27.if.end40_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %capture_constraints = getelementptr inbounds %struct.dummy_model, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %capture_constraints to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %capture_constraints, align 8
  %tobool34.not = icmp eq ptr %32, null
  br i1 %tobool34.not, label %if.else.cleanup_crit_edge, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end40:                                         ; preds = %if.else.if.end40_crit_edge, %if.then27.if.end40_crit_edge
  %.sink76 = phi ptr [ %30, %if.then27.if.end40_crit_edge ], [ %32, %if.else.if.end40_crit_edge ]
  %33 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %runtime2, align 4
  %call38 = tail call i32 %.sink76(ptr noundef %34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp41 = icmp slt i32 %call38, 0
  br i1 %cmp41, label %if.then42, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %runtime2, align 4
  %private_data44 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %36, i32 0, i32 44
  %37 = ptrtoint ptr %private_data44 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private_data44, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %free = getelementptr inbounds %struct.dummy_timer_ops, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %free, align 4
  tail call void %42(ptr noundef %substream) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end40.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.then42 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_pcm_close(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %5 = load ptr, ptr %3, align 4
  %free = getelementptr inbounds %struct.dummy_timer_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free, align 4
  tail call void %7(ptr noundef %substream) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @fake_buffer, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %4, i32 0, i32 52
  %5 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %dma_bytes, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_pcm_prepare(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %5 = load ptr, ptr %3, align 4
  %prepare = getelementptr inbounds %struct.dummy_timer_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prepare, align 4
  %call = tail call i32 %7(ptr noundef %substream) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge8
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge9
  ]

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb1

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %1 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 44
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %start = getelementptr inbounds %struct.dummy_timer_ops, ptr %6, i32 0, i32 3
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge9
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %7 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime2, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data3, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %stop = getelementptr inbounds %struct.dummy_timer_ops, ptr %12, i32 0, i32 4
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %sw.bb
  %stop.sink = phi ptr [ %stop, %sw.bb1 ], [ %start, %sw.bb ]
  %13 = ptrtoint ptr %stop.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop.sink, align 4
  %call4 = tail call i32 %14(ptr noundef %substream) #14
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call4, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_pcm_pointer(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %5 = load ptr, ptr %3, align 4
  %pointer = getelementptr inbounds %struct.dummy_timer_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pointer, align 4
  %call = tail call i32 %7(ptr noundef %substream) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_pcm_silence(ptr nocapture noundef readnone %substream, i32 noundef %channel, i32 noundef %pos, i32 noundef %bytes) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_pcm_copy(ptr nocapture noundef readnone %substream, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef readnone %dst, i32 noundef %bytes) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_pcm_copy_kernel(ptr nocapture noundef readnone %substream, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef readnone %dst, i32 noundef %bytes) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dummy_pcm_page(ptr nocapture noundef readonly %substream, i32 noundef %offset) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stream, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @dummy_page, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %4 to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %shr
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_systimer_create(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %1 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 44
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 8
  %timer = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %call7.i.i, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dummy_systimer_callback, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @dummy_systimer_create.__key) #14
  %lock = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @dummy_systimer_create.__key.15, i16 noundef signext 3) #14
  %substream5 = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_systimer_free(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %3) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_systimer_prepare(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %frac_pos = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %frac_pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %frac_pos, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 4
  %rate2 = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %rate2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rate2, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 4
  %mul = mul i32 %9, 100
  %frac_buffer_size = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %frac_buffer_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %frac_buffer_size, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %period_size, align 4
  %mul3 = mul i32 %12, 100
  %frac_period_size = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %frac_period_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul3, ptr %frac_period_size, align 4
  %frac_period_rest = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %frac_period_rest to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul3, ptr %frac_period_rest, align 4
  %elapsed = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %elapsed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %elapsed, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_systimer_start(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %base_time = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %base_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %base_time, align 4
  %timer.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 2
  %6 = load volatile i32, ptr @jiffies, align 128
  %frac_period_rest.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %frac_period_rest.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frac_period_rest.i, align 4
  %rate.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate.i, align 4
  %add.i = add i32 %8, -1
  %sub.i = add i32 %add.i, %10
  %div.i = udiv i32 %sub.i, %10
  %add2.i = add i32 %div.i, %6
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add2.i) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_systimer_stop(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %timer = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 2
  %call = tail call i32 @del_timer(ptr noundef %timer) #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_systimer_pointer(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %base_time.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_time.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %tobool.not.i = icmp eq i32 %4, %6
  br i1 %tobool.not.i, label %entry.dummy_systimer_update.exit_crit_edge, label %if.end.i

entry.dummy_systimer_update.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dummy_systimer_update.exit

if.end.i:                                         ; preds = %entry
  %sub.i = sub i32 %4, %6
  %7 = ptrtoint ptr %base_time.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %base_time.i, align 4
  %rate.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate.i, align 4
  %mul.i = mul i32 %9, %sub.i
  %frac_pos.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %frac_pos.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frac_pos.i, align 4
  %add2.i = add i32 %11, %mul.i
  %frac_buffer_size.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %frac_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frac_buffer_size.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i
  %storemerge.i = phi i32 [ %add2.i, %if.end.i ], [ %sub6.i, %while.cond.i.while.cond.i_crit_edge ]
  %cmp.not.i = icmp ult i32 %storemerge.i, %13
  %sub6.i = sub i32 %storemerge.i, %13
  br i1 %cmp.not.i, label %while.cond7.preheader.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.cond7.preheader.i:                          ; preds = %while.cond.i
  %14 = ptrtoint ptr %frac_pos.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge.i, ptr %frac_pos.i, align 4
  %frac_period_rest.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %frac_period_rest.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %frac_period_rest.promoted.i = load i32, ptr %frac_period_rest.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %frac_period_rest.promoted.i, i32 %mul.i)
  %cmp8.not35.i = icmp ugt i32 %frac_period_rest.promoted.i, %mul.i
  br i1 %cmp8.not35.i, label %while.cond7.preheader.i.while.end12.i_crit_edge, label %while.body9.lr.ph.i

while.cond7.preheader.i.while.end12.i_crit_edge:  ; preds = %while.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end12.i

while.body9.lr.ph.i:                              ; preds = %while.cond7.preheader.i
  %elapsed.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 9
  %frac_period_size.i = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %frac_period_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frac_period_size.i, align 4
  %18 = ptrtoint ptr %elapsed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %elapsed.promoted.i = load i32, ptr %elapsed.i, align 4
  br label %while.body9.i

while.body9.i:                                    ; preds = %while.body9.i.while.body9.i_crit_edge, %while.body9.lr.ph.i
  %inc38.i = phi i32 [ %elapsed.promoted.i, %while.body9.lr.ph.i ], [ %inc.i, %while.body9.i.while.body9.i_crit_edge ]
  %add113436.i = phi i32 [ %frac_period_rest.promoted.i, %while.body9.lr.ph.i ], [ %add11.i, %while.body9.i.while.body9.i_crit_edge ]
  %inc.i = add i32 %inc38.i, 1
  %add11.i = add i32 %add113436.i, %17
  %cmp8.not.i = icmp ugt i32 %add11.i, %mul.i
  br i1 %cmp8.not.i, label %while.cond7.while.end12_crit_edge.i, label %while.body9.i.while.body9.i_crit_edge

while.body9.i.while.body9.i_crit_edge:            ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body9.i

while.cond7.while.end12_crit_edge.i:              ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %elapsed.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc.i, ptr %elapsed.i, align 4
  br label %while.end12.i

while.end12.i:                                    ; preds = %while.cond7.while.end12_crit_edge.i, %while.cond7.preheader.i.while.end12.i_crit_edge
  %.lcssa.i = phi i32 [ %add11.i, %while.cond7.while.end12_crit_edge.i ], [ %frac_period_rest.promoted.i, %while.cond7.preheader.i.while.end12.i_crit_edge ]
  %sub14.i = sub i32 %.lcssa.i, %mul.i
  %20 = ptrtoint ptr %frac_period_rest.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub14.i, ptr %frac_period_rest.i, align 4
  br label %dummy_systimer_update.exit

dummy_systimer_update.exit:                       ; preds = %while.end12.i, %entry.dummy_systimer_update.exit_crit_edge
  %frac_pos = getelementptr inbounds %struct.dummy_systimer_pcm, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %frac_pos to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frac_pos, align 4
  %div = udiv i32 %22, 100
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_systimer_callback(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %base_time.i = getelementptr i8, ptr %t, i32 48
  %1 = ptrtoint ptr %base_time.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base_time.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %tobool.not.i = icmp eq i32 %0, %2
  br i1 %tobool.not.i, label %entry.dummy_systimer_update.exit_crit_edge, label %if.end.i

entry.dummy_systimer_update.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dummy_systimer_update.exit

if.end.i:                                         ; preds = %entry
  %sub.i = sub i32 %0, %2
  %3 = ptrtoint ptr %base_time.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %base_time.i, align 4
  %rate.i = getelementptr i8, ptr %t, i32 68
  %4 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate.i, align 4
  %mul.i = mul i32 %5, %sub.i
  %frac_pos.i = getelementptr i8, ptr %t, i32 52
  %6 = ptrtoint ptr %frac_pos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frac_pos.i, align 4
  %add2.i = add i32 %7, %mul.i
  %frac_buffer_size.i = getelementptr i8, ptr %t, i32 60
  %8 = ptrtoint ptr %frac_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frac_buffer_size.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end.i
  %storemerge.i = phi i32 [ %add2.i, %if.end.i ], [ %sub6.i, %while.cond.i.while.cond.i_crit_edge ]
  %cmp.not.i = icmp ult i32 %storemerge.i, %9
  %sub6.i = sub i32 %storemerge.i, %9
  br i1 %cmp.not.i, label %while.cond7.preheader.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i

while.cond7.preheader.i:                          ; preds = %while.cond.i
  %10 = ptrtoint ptr %frac_pos.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge.i, ptr %frac_pos.i, align 4
  %frac_period_rest.i = getelementptr i8, ptr %t, i32 56
  %11 = ptrtoint ptr %frac_period_rest.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %frac_period_rest.promoted.i = load i32, ptr %frac_period_rest.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %frac_period_rest.promoted.i, i32 %mul.i)
  %cmp8.not35.i = icmp ugt i32 %frac_period_rest.promoted.i, %mul.i
  br i1 %cmp8.not35.i, label %while.cond7.preheader.i.while.end12.i_crit_edge, label %while.body9.lr.ph.i

while.cond7.preheader.i.while.end12.i_crit_edge:  ; preds = %while.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end12.i

while.body9.lr.ph.i:                              ; preds = %while.cond7.preheader.i
  %elapsed.i = getelementptr i8, ptr %t, i32 72
  %frac_period_size.i = getelementptr i8, ptr %t, i32 64
  %12 = ptrtoint ptr %frac_period_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frac_period_size.i, align 4
  %14 = ptrtoint ptr %elapsed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %elapsed.promoted.i = load i32, ptr %elapsed.i, align 4
  br label %while.body9.i

while.body9.i:                                    ; preds = %while.body9.i.while.body9.i_crit_edge, %while.body9.lr.ph.i
  %inc38.i = phi i32 [ %elapsed.promoted.i, %while.body9.lr.ph.i ], [ %inc.i, %while.body9.i.while.body9.i_crit_edge ]
  %add113436.i = phi i32 [ %frac_period_rest.promoted.i, %while.body9.lr.ph.i ], [ %add11.i, %while.body9.i.while.body9.i_crit_edge ]
  %inc.i = add i32 %inc38.i, 1
  %add11.i = add i32 %add113436.i, %13
  %cmp8.not.i = icmp ugt i32 %add11.i, %mul.i
  br i1 %cmp8.not.i, label %while.cond7.while.end12_crit_edge.i, label %while.body9.i.while.body9.i_crit_edge

while.body9.i.while.body9.i_crit_edge:            ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body9.i

while.cond7.while.end12_crit_edge.i:              ; preds = %while.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %elapsed.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i, ptr %elapsed.i, align 4
  br label %while.end12.i

while.end12.i:                                    ; preds = %while.cond7.while.end12_crit_edge.i, %while.cond7.preheader.i.while.end12.i_crit_edge
  %.lcssa.i = phi i32 [ %add11.i, %while.cond7.while.end12_crit_edge.i ], [ %frac_period_rest.promoted.i, %while.cond7.preheader.i.while.end12.i_crit_edge ]
  %sub14.i = sub i32 %.lcssa.i, %mul.i
  %16 = ptrtoint ptr %frac_period_rest.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub14.i, ptr %frac_period_rest.i, align 4
  br label %dummy_systimer_update.exit

dummy_systimer_update.exit:                       ; preds = %while.end12.i, %entry.dummy_systimer_update.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %frac_period_rest.i15 = getelementptr i8, ptr %t, i32 56
  %18 = ptrtoint ptr %frac_period_rest.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frac_period_rest.i15, align 4
  %rate.i16 = getelementptr i8, ptr %t, i32 68
  %20 = ptrtoint ptr %rate.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate.i16, align 4
  %add.i = add i32 %19, -1
  %sub.i17 = add i32 %add.i, %21
  %div.i = udiv i32 %sub.i17, %21
  %add2.i18 = add i32 %div.i, %17
  %call.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add2.i18) #14
  %elapsed6 = getelementptr i8, ptr %t, i32 72
  %22 = ptrtoint ptr %elapsed6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %elapsed6, align 4
  store i32 0, ptr %elapsed6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %dummy_systimer_update.exit.if.end_crit_edge, label %if.then

dummy_systimer_update.exit.if.end_crit_edge:      ; preds = %dummy_systimer_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %dummy_systimer_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %substream = getelementptr i8, ptr %t, i32 76
  %24 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %25) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %dummy_systimer_update.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hrtimer_create(ptr noundef %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %1 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %2, i32 0, i32 44
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 8
  %timer = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %call7.i.i, i32 0, i32 4
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 5) #14
  %function = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %call7.i.i, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dummy_hrtimer_callback, ptr %function, align 8
  %substream2 = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %substream, ptr %substream2, align 8
  %running = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %running, i32 noundef 4) #14
  %6 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %running, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_hrtimer_free(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %timer.i = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #14
  tail call void @kfree(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hrtimer_prepare(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %timer.i = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #14
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size, align 4
  %rate2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %rate2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate2, align 4
  %.frozen = freeze i32 %5
  %.frozen18 = freeze i32 %7
  %div = udiv i32 %.frozen, %.frozen18
  %8 = mul i32 %div, %.frozen18
  %rem.decomposed = sub i32 %.frozen, %8
  %conv = zext i32 %rem.decomposed to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %conv3 = zext i32 %7 to i64
  %add = add nsw i64 %conv3, -1
  %sub = add nsw i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !239

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %7
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %sub) #21, !srcloc !240
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t16 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t16, %if.else174.i.i ]
  %conv5 = sext i32 %div to i64
  %mul.i = mul nsw i64 %conv5, 1000000000
  %conv.i = zext i32 %dividend.addr.0.i.i.off0 to i64
  %add.i = add nsw i64 %mul.i, %conv.i
  %period_time = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %period_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add.i, ptr %period_time, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hrtimer_start(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %timer = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 4
  %base.i = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %7() #14
  %base_time = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %base_time to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %base_time, align 8
  %period_time = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %period_time to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %period_time, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %10, i64 noundef 0, i32 noundef 5) #14
  %running = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %running, i32 noundef 4) #14
  %11 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %running, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hrtimer_stop(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %running = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %running, i32 noundef 4) #14
  %4 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %running, align 4
  %timer = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 4
  %base.i = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 4, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %running.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %running.i, align 8
  %cmp.i.not = icmp eq ptr %8, %timer
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hrtimer_pointer(ptr nocapture noundef readonly %substream) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %base.i = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %7() #14
  %base_time = getelementptr inbounds %struct.dummy_hrtimer_pcm, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %base_time, align 8
  %sub.i = sub i64 %call.i, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %10 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #14
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #21, !srcloc !241
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #21, !srcloc !242
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  %conv = zext i32 %14 to i64
  %mul = mul i64 %cond213.i.i.i, %conv
  %add = add i64 %mul, 999999
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add) #21, !srcloc !243
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add, i64 %15, i32 0) #21, !srcloc !242
  %asmresult10.i.i.i = extractvalue { i64, i32 } %16, 0
  %div158.i.i10 = lshr i64 %asmresult10.i.i.i, 18
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842624, i64 %asmresult10.i.i.i)
  %cmp164.i = icmp ult i64 %asmresult10.i.i.i, 1125899906842624
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !239

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %conv169.i = trunc i64 %div158.i.i10 to i32
  %rem170.i = urem i32 %conv169.i, %18
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %div158.i.i10) #21, !srcloc !240
  %asmresult.i261.i = extractvalue { i64, i64 } %19, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  ret i32 %__rem.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_hrtimer_callback(ptr noundef %timer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr i8, ptr %timer, i32 -8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running, i32 noundef 4) #14
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream = getelementptr i8, ptr %timer, i32 48
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %3) #14
  %call.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %running, i32 noundef 4) #14
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %period_time = getelementptr i8, ptr %timer, i32 -16
  %6 = ptrtoint ptr %period_time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %period_time, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %11() #14
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_dummy_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -50, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %mixer_lock = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %mixer_lock) #14
  %arrayidx = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 5, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 5, i32 %3, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 -50)
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 100)
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 -50)
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 100)
  %mixer_lock = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %mixer_lock) #14
  %arrayidx12 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 5, i32 %3
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp14.not = icmp eq i32 %13, %7
  br i1 %cmp14.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx17 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 5, i32 %3, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp18 = icmp ne i32 %15, %11
  %phi.cast = zext i1 %cmp18 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %16 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %7, ptr %arrayidx12, align 4
  %arrayidx24 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 5, i32 %3, i32 1
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %arrayidx24, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #14
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_stereo_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_capsrc_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %mixer_lock = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %mixer_lock) #14
  %arrayidx = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 6, i32 %3, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_capsrc_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and = and i32 %5, 1
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %and3 = and i32 %7, 1
  %mixer_lock = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %mixer_lock) #14
  %arrayidx4 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 6, i32 %3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and)
  %cmp.not = icmp eq i32 %9, %and
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx8 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 6, i32 %3, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and3)
  %cmp9 = icmp ne i32 %11, %and3
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %arrayidx4, align 4
  %arrayidx15 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 6, i32 %3, i32 1
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and3, ptr %arrayidx15, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #14
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_iobox_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_dummy_iobox_info.names) #14
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_dummy_iobox_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobox = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %iobox to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobox, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_iobox_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobox = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %iobox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobox, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp4.not = icmp eq i32 %3, %5
  br i1 %cmp4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %iobox to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %iobox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  %cd_volume_ctl17 = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %cd_volume_ctl17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cd_volume_ctl17, align 8
  %access20 = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %access20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %access20, align 4
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %and = and i32 %10, -257
  %11 = ptrtoint ptr %access20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %access20, align 4
  %cd_switch_ctl = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %cd_switch_ctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cd_switch_ctl, align 4
  %access15 = getelementptr inbounds %struct.snd_kcontrol, ptr %13, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %access15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %access15, align 4
  %and16 = and i32 %15, -257
  store i32 %and16, ptr %access15, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %10, 256
  %16 = ptrtoint ptr %access20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %access20, align 4
  %cd_switch_ctl21 = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %cd_switch_ctl21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cd_switch_ctl21, align 4
  %access24 = getelementptr inbounds %struct.snd_kcontrol, ptr %18, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %access24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %access24, align 4
  %or25 = or i32 %20, 256
  store i32 %or25, ptr %access24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %cd_volume_ctl27 = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %cd_volume_ctl27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cd_volume_ctl27, align 8
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %24, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %22, i32 noundef 2, ptr noundef %id) #14
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %cd_switch_ctl29 = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %cd_switch_ctl29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cd_switch_ctl29, align 4
  %id30 = getelementptr inbounds %struct.snd_kcontrol, ptr %28, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %26, i32 noundef 2, ptr noundef %id30) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end26 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm_hw = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 3
  %rates.i = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 3, i32 2
  %formats.i = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 3, i32 1
  %add.ptr14 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %entry
  %i.051 = phi i32 [ 0, %entry ], [ %inc, %if.end25.for.body_crit_edge ]
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr [11 x %struct.dummy_hw_field], ptr @fields, i32 0, i32 %i.051
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.051)
  %cmp4.not = icmp eq i32 %i.051, 0
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  br i1 %cmp4.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %format = getelementptr [11 x %struct.dummy_hw_field], ptr @fields, i32 0, i32 %i.051, i32 1
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 4
  %offset = getelementptr [11 x %struct.dummy_hw_field], ptr @fields, i32 0, i32 %i.051, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %pcm_hw, i32 %11
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef %9, i32 noundef %13) #14
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr14, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.37, i64 noundef %15) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(8) @.str.34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.for.body.i_crit_edge, label %if.else18

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.06.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %formats.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %formats.i, align 8
  %sh_prom.i.i = zext i32 %i.06.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %and.i = and i64 %shl.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %call2.i = tail call ptr @snd_pcm_format_name(i32 noundef %i.06.i) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.50, ptr noundef %call2.i) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %add.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %add.i, 53
  br i1 %exitcond.not.i, label %for.inc.i.if.end25_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.else18:                                        ; preds = %if.end
  %call21 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(6) @.str.35) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else18.if.end25_crit_edge

if.else18.if.end25_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %if.else18
  %20 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rates.i, align 8
  %and.i44 = and i32 %21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %if.then23.if.end.i_crit_edge, label %if.then.i46

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i46:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.51) #14
  %24 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i = load i32, ptr %rates.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i46, %if.then23.if.end.i_crit_edge
  %25 = phi i32 [ %.pr.i, %if.then.i46 ], [ %21, %if.then23.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool5.not.i = icmp sgt i32 %25, -1
  br i1 %tobool5.not.i, label %if.end.i.for.body.i47.preheader_crit_edge, label %if.then6.i

if.end.i.for.body.i47.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i47.preheader

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.52) #14
  br label %for.body.i47.preheader

for.body.i47.preheader:                           ; preds = %if.then6.i, %if.end.i.for.body.i47.preheader_crit_edge
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i49.for.body.i47_crit_edge, %for.body.i47.preheader
  %i.023.i = phi i32 [ %inc.i, %for.inc.i49.for.body.i47_crit_edge ], [ 0, %for.body.i47.preheader ]
  %28 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rates.i, align 8
  %shl.i = shl nuw nsw i32 1, %i.023.i
  %and11.i = and i32 %29, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %for.body.i47.for.inc.i49_crit_edge, label %if.then13.i

for.body.i47.for.inc.i49_crit_edge:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i49

if.then13.i:                                      ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %arrayidx.i = getelementptr [13 x i32], ptr @print_rates.rates, i32 0, i32 %i.023.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.53, i32 noundef %33) #14
  br label %for.inc.i49

for.inc.i49:                                      ; preds = %if.then13.i, %for.body.i47.for.inc.i49_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i48 = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i48, label %for.inc.i49.if.end25_crit_edge, label %for.inc.i49.for.body.i47_crit_edge

for.inc.i49.for.body.i47_crit_edge:               ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i47

for.inc.i49.if.end25_crit_edge:                   ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.end25:                                         ; preds = %for.inc.i49.if.end25_crit_edge, %if.else18.if.end25_crit_edge, %for.inc.i.if.end25_crit_edge
  %34 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.36) #14
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_proc_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #1 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %item = alloca [20 x i8], align 1
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #14
  %2 = call ptr @memset(ptr %line, i32 255, i32 64)
  %call40 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not41 = icmp eq i32 %call40, 0
  br i1 %tobool.not41, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pcm_hw = getelementptr inbounds %struct.snd_dummy, ptr %1, i32 0, i32 3
  %add.ptr25 = getelementptr %struct.snd_dummy, ptr %1, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %item) #14
  %3 = call ptr @memset(ptr %item, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #14
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %val, align 8, !annotation !238
  %call4 = call ptr @snd_info_get_str(ptr noundef nonnull %item, ptr noundef nonnull %line, i32 noundef 20) #14
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %item, ptr noundef nonnull dereferenceable(8) @.str.34, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %while.body.if.end10_crit_edge, label %for.inc

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc:                                          ; preds = %while.body
  %bcmp43 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %item, ptr noundef nonnull dereferenceable(6) @.str.35, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43)
  %tobool7.not.1 = icmp eq i32 %bcmp43, 0
  br i1 %tobool7.not.1, label %for.inc.if.end10_crit_edge, label %for.inc.1

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.1:                                        ; preds = %for.inc
  %bcmp44 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %item, ptr noundef nonnull dereferenceable(9) @.str.39, i32 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp44)
  %tobool7.not.2 = icmp eq i32 %bcmp44, 0
  br i1 %tobool7.not.2, label %for.inc.1.if.end10_crit_edge, label %for.inc.2

for.inc.1.if.end10_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.2:                                        ; preds = %for.inc.1
  %bcmp45 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %item, ptr noundef nonnull dereferenceable(9) @.str.41, i32 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp45)
  %tobool7.not.3 = icmp eq i32 %bcmp45, 0
  br i1 %tobool7.not.3, label %for.inc.2.if.end10_crit_edge, label %for.inc.3

for.inc.2.if.end10_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.3:                                        ; preds = %for.inc.2
  %bcmp46 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %item, ptr noundef nonnull dereferenceable(13) @.str.42, i32 13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp46)
  %tobool7.not.4 = icmp eq i32 %bcmp46, 0
  br i1 %tobool7.not.4, label %for.inc.3.if.end10_crit_edge, label %for.inc.4

for.inc.3.if.end10_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.4:                                        ; preds = %for.inc.3
  %bcmp47 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %item, ptr noundef nonnull dereferenceable(13) @.str.43, i32 13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp47)
  %tobool7.not.5 = icmp eq i32 %bcmp47, 0
  br i1 %tobool7.not.5, label %for.inc.4.if.end10_crit_edge, label %for.inc.5

for.inc.4.if.end10_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.5:                                        ; preds = %for.inc.4
  %bcmp48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %item, ptr noundef nonnull dereferenceable(17) @.str.44, i32 17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48)
  %tobool7.not.6 = icmp eq i32 %bcmp48, 0
  br i1 %tobool7.not.6, label %for.inc.5.if.end10_crit_edge, label %for.inc.6

for.inc.5.if.end10_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.6:                                        ; preds = %for.inc.5
  %bcmp49 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %item, ptr noundef nonnull dereferenceable(17) @.str.46, i32 17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49)
  %tobool7.not.7 = icmp eq i32 %bcmp49, 0
  br i1 %tobool7.not.7, label %for.inc.6.if.end10_crit_edge, label %for.inc.7

for.inc.6.if.end10_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.7:                                        ; preds = %for.inc.6
  %bcmp50 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %item, ptr noundef nonnull dereferenceable(17) @.str.47, i32 17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp50)
  %tobool7.not.8 = icmp eq i32 %bcmp50, 0
  br i1 %tobool7.not.8, label %for.inc.7.if.end10_crit_edge, label %for.inc.8

for.inc.7.if.end10_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.8:                                        ; preds = %for.inc.7
  %bcmp51 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %item, ptr noundef nonnull dereferenceable(12) @.str.48, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp51)
  %tobool7.not.9 = icmp eq i32 %bcmp51, 0
  br i1 %tobool7.not.9, label %for.inc.8.if.end10_crit_edge, label %for.inc.9

for.inc.8.if.end10_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

for.inc.9:                                        ; preds = %for.inc.8
  %bcmp52 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %item, ptr noundef nonnull dereferenceable(12) @.str.49, i32 12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52)
  %tobool7.not.10 = icmp eq i32 %bcmp52, 0
  br i1 %tobool7.not.10, label %for.inc.9.if.end10_crit_edge, label %for.inc.9.cleanup_crit_edge

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.9.if.end10_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %for.inc.9.if.end10_crit_edge, %for.inc.8.if.end10_crit_edge, %for.inc.7.if.end10_crit_edge, %for.inc.6.if.end10_crit_edge, %for.inc.5.if.end10_crit_edge, %for.inc.4.if.end10_crit_edge, %for.inc.3.if.end10_crit_edge, %for.inc.2.if.end10_crit_edge, %for.inc.1.if.end10_crit_edge, %for.inc.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %i.039.lcssa = phi i32 [ 0, %while.body.if.end10_crit_edge ], [ 1, %for.inc.if.end10_crit_edge ], [ 2, %for.inc.1.if.end10_crit_edge ], [ 3, %for.inc.2.if.end10_crit_edge ], [ 4, %for.inc.3.if.end10_crit_edge ], [ 5, %for.inc.4.if.end10_crit_edge ], [ 6, %for.inc.5.if.end10_crit_edge ], [ 7, %for.inc.6.if.end10_crit_edge ], [ 8, %for.inc.7.if.end10_crit_edge ], [ 9, %for.inc.8.if.end10_crit_edge ], [ 10, %for.inc.9.if.end10_crit_edge ]
  %call12 = call ptr @snd_info_get_str(ptr noundef nonnull %item, ptr noundef %call4, i32 noundef 20) #14
  %call14 = call i32 @kstrtoull(ptr noundef nonnull %item, i32 noundef 0, ptr noundef nonnull %val) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val, align 8
  br i1 %tobool7.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %conv = trunc i64 %6 to i32
  %offset = getelementptr [11 x %struct.dummy_hw_field], ptr @fields, i32 0, i32 %i.039.lcssa, i32 2
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %pcm_hw, i32 %8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %add.ptr, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %6, ptr %add.ptr25, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %if.end10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %item) #14
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #14
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pcm_format_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_get_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_suspend(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_dummy_resume(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !135, !137, !139, !141, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/drivers/dummy.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/drivers/dummy.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/drivers/dummy.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/drivers/dummy.c", i32 58, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype242, !8, !"__UNIQUE_ID_indextype242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index243, !11, !"__UNIQUE_ID_index243", i1 false, i1 false}
!11 = !{!"../sound/drivers/dummy.c", i32 59, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/drivers/dummy.c", i32 60, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype244, !13, !"__UNIQUE_ID_idtype244", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id245, !16, !"__UNIQUE_ID_id245", i1 false, i1 false}
!16 = !{!"../sound/drivers/dummy.c", i32 61, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/drivers/dummy.c", i32 62, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype246, !18, !"__UNIQUE_ID_enabletype246", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable247, !21, !"__UNIQUE_ID_enable247", i1 false, i1 false}
!21 = !{!"../sound/drivers/dummy.c", i32 63, i32 1}
!22 = !{ptr @__param_model, !23, !"__param_model", i1 false, i1 false}
!23 = !{!"../sound/drivers/dummy.c", i32 64, i32 1}
!24 = !{ptr @__UNIQUE_ID_modeltype248, !23, !"__UNIQUE_ID_modeltype248", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_model249, !26, !"__UNIQUE_ID_model249", i1 false, i1 false}
!26 = !{!"../sound/drivers/dummy.c", i32 65, i32 1}
!27 = !{ptr @__param_pcm_devs, !28, !"__param_pcm_devs", i1 false, i1 false}
!28 = !{!"../sound/drivers/dummy.c", i32 66, i32 1}
!29 = !{ptr @__UNIQUE_ID_pcm_devstype250, !28, !"__UNIQUE_ID_pcm_devstype250", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_pcm_devs251, !31, !"__UNIQUE_ID_pcm_devs251", i1 false, i1 false}
!31 = !{!"../sound/drivers/dummy.c", i32 67, i32 1}
!32 = !{ptr @__param_pcm_substreams, !33, !"__param_pcm_substreams", i1 false, i1 false}
!33 = !{!"../sound/drivers/dummy.c", i32 68, i32 1}
!34 = !{ptr @__UNIQUE_ID_pcm_substreamstype252, !33, !"__UNIQUE_ID_pcm_substreamstype252", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_pcm_substreams253, !36, !"__UNIQUE_ID_pcm_substreams253", i1 false, i1 false}
!36 = !{!"../sound/drivers/dummy.c", i32 69, i32 1}
!37 = !{ptr @__param_fake_buffer, !38, !"__param_fake_buffer", i1 false, i1 false}
!38 = !{!"../sound/drivers/dummy.c", i32 72, i32 1}
!39 = !{ptr @__UNIQUE_ID_fake_buffertype254, !38, !"__UNIQUE_ID_fake_buffertype254", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_fake_buffer255, !41, !"__UNIQUE_ID_fake_buffer255", i1 false, i1 false}
!41 = !{!"../sound/drivers/dummy.c", i32 73, i32 1}
!42 = !{ptr @__param_hrtimer, !43, !"__param_hrtimer", i1 false, i1 false}
!43 = !{!"../sound/drivers/dummy.c", i32 75, i32 1}
!44 = !{ptr @__UNIQUE_ID_hrtimertype256, !43, !"__UNIQUE_ID_hrtimertype256", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_hrtimer257, !46, !"__UNIQUE_ID_hrtimer257", i1 false, i1 false}
!46 = !{!"../sound/drivers/dummy.c", i32 76, i32 1}
!47 = !{ptr @__initcall__kmod_snd_dummy__258_1183_alsa_card_dummy_init6, !48, !"__initcall__kmod_snd_dummy__258_1183_alsa_card_dummy_init6", i1 false, i1 false}
!48 = !{!"../sound/drivers/dummy.c", i32 1183, i32 1}
!49 = !{ptr @__exitcall_alsa_card_dummy_exit, !50, !"__exitcall_alsa_card_dummy_exit", i1 false, i1 false}
!50 = !{!"../sound/drivers/dummy.c", i32 1184, i32 1}
!51 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!52 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!53 = !{ptr @index, !54, !"index", i1 false, i1 false}
!54 = !{!"../sound/drivers/dummy.c", i32 46, i32 12}
!55 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!56 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!57 = !{ptr @id, !58, !"id", i1 false, i1 false}
!58 = !{!"../sound/drivers/dummy.c", i32 47, i32 14}
!59 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!60 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!61 = !{ptr @enable, !62, !"enable", i1 false, i1 false}
!62 = !{!"../sound/drivers/dummy.c", i32 48, i32 13}
!63 = !{ptr @__param_str_model, !23, !"__param_str_model", i1 false, i1 false}
!64 = !{ptr @__param_arr_model, !23, !"__param_arr_model", i1 false, i1 false}
!65 = !{ptr @model, !66, !"model", i1 false, i1 false}
!66 = !{!"../sound/drivers/dummy.c", i32 49, i32 14}
!67 = !{ptr @__param_str_pcm_devs, !28, !"__param_str_pcm_devs", i1 false, i1 false}
!68 = !{ptr @__param_arr_pcm_devs, !28, !"__param_arr_pcm_devs", i1 false, i1 false}
!69 = !{ptr @pcm_devs, !70, !"pcm_devs", i1 false, i1 false}
!70 = !{!"../sound/drivers/dummy.c", i32 50, i32 12}
!71 = !{ptr @__param_str_pcm_substreams, !33, !"__param_str_pcm_substreams", i1 false, i1 false}
!72 = !{ptr @__param_arr_pcm_substreams, !33, !"__param_arr_pcm_substreams", i1 false, i1 false}
!73 = !{ptr @pcm_substreams, !74, !"pcm_substreams", i1 false, i1 false}
!74 = !{!"../sound/drivers/dummy.c", i32 51, i32 12}
!75 = !{ptr @__param_str_fake_buffer, !38, !"__param_str_fake_buffer", i1 false, i1 false}
!76 = !{ptr @fake_buffer, !77, !"fake_buffer", i1 false, i1 false}
!77 = !{!"../sound/drivers/dummy.c", i32 56, i32 13}
!78 = !{ptr @__param_str_hrtimer, !43, !"__param_str_hrtimer", i1 false, i1 false}
!79 = !{ptr @hrtimer, !80, !"hrtimer", i1 false, i1 false}
!80 = !{!"../sound/drivers/dummy.c", i32 54, i32 13}
!81 = !{ptr @devices, !82, !"devices", i1 false, i1 false}
!82 = !{!"../sound/drivers/dummy.c", i32 79, i32 32}
!83 = !{ptr @.str, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/drivers/dummy.c", i32 1123, i32 11}
!85 = !{ptr @snd_dummy_driver, !86, !"snd_dummy_driver", i1 false, i1 false}
!86 = !{!"../sound/drivers/dummy.c", i32 1120, i32 31}
!87 = !{ptr @.str.2, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/drivers/dummy.c", i32 1036, i32 4}
!89 = !{ptr @.str.3, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @snd_dummy_probe._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_dummy_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.5, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/drivers/dummy.c", i32 1082, i32 23}
!95 = !{ptr @.str.6, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/drivers/dummy.c", i32 1084, i32 26}
!97 = !{ptr @dummy_models, !98, !"dummy_models", i1 false, i1 false}
!98 = !{!"../sound/drivers/dummy.c", i32 206, i32 34}
!99 = !{ptr @.str.7, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/drivers/dummy.c", i32 147, i32 10}
!101 = !{ptr @model_emu10k1, !102, !"model_emu10k1", i1 false, i1 false}
!102 = !{!"../sound/drivers/dummy.c", i32 146, i32 33}
!103 = !{ptr @.str.8, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/drivers/dummy.c", i32 153, i32 10}
!105 = !{ptr @model_rme9652, !106, !"model_rme9652", i1 false, i1 false}
!106 = !{!"../sound/drivers/dummy.c", i32 152, i32 33}
!107 = !{ptr @.str.9, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/drivers/dummy.c", i32 163, i32 10}
!109 = !{ptr @model_ice1712, !110, !"model_ice1712", i1 false, i1 false}
!110 = !{!"../sound/drivers/dummy.c", i32 162, i32 33}
!111 = !{ptr @.str.10, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/drivers/dummy.c", i32 173, i32 10}
!113 = !{ptr @model_uda1341, !114, !"model_uda1341", i1 false, i1 false}
!114 = !{!"../sound/drivers/dummy.c", i32 172, i32 33}
!115 = !{ptr @.str.11, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/drivers/dummy.c", i32 183, i32 10}
!117 = !{ptr @model_ac97, !118, !"model_ac97", i1 false, i1 false}
!118 = !{!"../sound/drivers/dummy.c", i32 182, i32 33}
!119 = !{ptr @.str.12, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/drivers/dummy.c", i32 193, i32 10}
!121 = !{ptr @model_ca0106, !122, !"model_ca0106", i1 false, i1 false}
!122 = !{!"../sound/drivers/dummy.c", i32 192, i32 33}
!123 = !{ptr @.str.13, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/drivers/dummy.c", i32 675, i32 33}
!125 = !{ptr @dummy_pcm_ops_no_buf, !126, !"dummy_pcm_ops_no_buf", i1 false, i1 false}
!126 = !{!"../sound/drivers/dummy.c", i32 655, i32 33}
!127 = !{ptr @dummy_systimer_ops, !128, !"dummy_systimer_ops", i1 false, i1 false}
!128 = !{!"../sound/drivers/dummy.c", i32 342, i32 37}
!129 = !{ptr @dummy_systimer_create.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../sound/drivers/dummy.c", i32 331, i32 2}
!131 = !{ptr @.str.14, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @dummy_systimer_create.__key.15, !133, !"__key", i1 false, i1 false}
!133 = !{!"../sound/drivers/dummy.c", i32 332, i32 2}
!134 = !{ptr @.str.16, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @dummy_hrtimer_ops, !136, !"dummy_hrtimer_ops", i1 false, i1 false}
!136 = !{!"../sound/drivers/dummy.c", i32 466, i32 37}
!137 = !{ptr @dummy_page, !138, !"dummy_page", i1 false, i1 false}
!138 = !{!"../sound/drivers/dummy.c", i32 589, i32 14}
!139 = !{ptr @dummy_pcm_ops, !140, !"dummy_pcm_ops", i1 false, i1 false}
!140 = !{!"../sound/drivers/dummy.c", i32 646, i32 33}
!141 = !{ptr @dummy_pcm_hardware, !142, !"dummy_pcm_hardware", i1 false, i1 false}
!142 = !{!"../sound/drivers/dummy.c", i32 504, i32 38}
!143 = !{ptr @snd_card_dummy_new_mixer.__key, !144, !"__key", i1 false, i1 false}
!144 = !{!"../sound/drivers/dummy.c", i32 878, i32 2}
!145 = !{ptr @.str.17, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.18, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/drivers/dummy.c", i32 879, i32 26}
!148 = !{ptr @.str.19, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/drivers/dummy.c", i32 887, i32 34}
!150 = !{ptr @.str.20, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/drivers/dummy.c", i32 889, i32 39}
!152 = !{ptr @.str.21, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/drivers/dummy.c", i32 852, i32 1}
!154 = !{ptr @.str.22, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/drivers/dummy.c", i32 853, i32 1}
!156 = !{ptr @.str.23, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/drivers/dummy.c", i32 854, i32 1}
!158 = !{ptr @.str.24, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/drivers/dummy.c", i32 855, i32 1}
!160 = !{ptr @.str.25, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/drivers/dummy.c", i32 856, i32 1}
!162 = !{ptr @.str.26, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/drivers/dummy.c", i32 857, i32 1}
!164 = !{ptr @.str.27, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/drivers/dummy.c", i32 858, i32 1}
!166 = !{ptr @.str.28, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/drivers/dummy.c", i32 859, i32 1}
!168 = !{ptr @.str.29, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/drivers/dummy.c", i32 864, i32 11}
!170 = !{ptr @snd_dummy_controls, !171, !"snd_dummy_controls", i1 false, i1 false}
!171 = !{!"../sound/drivers/dummy.c", i32 851, i32 38}
!172 = !{ptr @db_scale_dummy, !173, !"db_scale_dummy", i1 false, i1 false}
!173 = !{!"../sound/drivers/dummy.c", i32 760, i32 14}
!174 = !{ptr @.str.30, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/drivers/dummy.c", i32 803, i32 39}
!176 = !{ptr @.str.31, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/drivers/dummy.c", i32 803, i32 47}
!178 = !{ptr @snd_dummy_iobox_info.names, !179, !"names", i1 false, i1 false}
!179 = !{!"../sound/drivers/dummy.c", i32 803, i32 27}
!180 = !{ptr @.str.32, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/drivers/dummy.c", i32 1013, i32 35}
!182 = !{ptr @.str.33, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/drivers/dummy.c", i32 967, i32 3}
!184 = !{ptr @.str.34, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/drivers/dummy.c", i32 974, i32 31}
!186 = !{ptr @.str.35, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/drivers/dummy.c", i32 976, i32 36}
!188 = !{ptr @.str.36, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/drivers/dummy.c", i32 978, i32 3}
!190 = !{ptr @.str.37, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/drivers/dummy.c", i32 947, i32 2}
!192 = !{ptr @.str.38, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/drivers/dummy.c", i32 948, i32 2}
!194 = !{ptr @.str.39, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/drivers/dummy.c", i32 949, i32 2}
!196 = !{ptr @.str.40, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.41, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/drivers/dummy.c", i32 950, i32 2}
!199 = !{ptr @.str.42, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/drivers/dummy.c", i32 951, i32 2}
!201 = !{ptr @.str.43, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/drivers/dummy.c", i32 952, i32 2}
!203 = !{ptr @.str.44, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/drivers/dummy.c", i32 953, i32 2}
!205 = !{ptr @.str.45, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.46, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/drivers/dummy.c", i32 954, i32 2}
!208 = !{ptr @.str.47, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/drivers/dummy.c", i32 955, i32 2}
!210 = !{ptr @.str.48, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/drivers/dummy.c", i32 956, i32 2}
!212 = !{ptr @.str.49, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/drivers/dummy.c", i32 957, i32 2}
!214 = !{ptr @fields, !215, !"fields", i1 false, i1 false}
!215 = !{!"../sound/drivers/dummy.c", i32 946, i32 36}
!216 = !{ptr @.str.50, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/drivers/dummy.c", i32 907, i32 4}
!218 = !{ptr @print_rates.rates, !219, !"rates", i1 false, i1 false}
!219 = !{!"../sound/drivers/dummy.c", i32 914, i32 19}
!220 = !{ptr @.str.51, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/drivers/dummy.c", i32 921, i32 3}
!222 = !{ptr @.str.52, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/drivers/dummy.c", i32 923, i32 3}
!224 = !{ptr @.str.53, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/drivers/dummy.c", i32 926, i32 4}
!226 = !{ptr @snd_dummy_pm, !227, !"snd_dummy_pm", i1 false, i1 false}
!227 = !{!"../sound/drivers/dummy.c", i32 1112, i32 8}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{i8 0, i8 2}
!238 = !{!"auto-init"}
!239 = !{!"branch_weights", i32 2000, i32 1}
!240 = !{i64 2148355151, i64 2148355431, i64 2148355765, i64 2148356099}
!241 = !{i64 869607, i64 869634, i64 869656, i64 869684}
!242 = !{i64 870015, i64 870042, i64 870075, i64 870096, i64 870123, i64 870149}
!243 = !{i64 869320, i64 869347}
