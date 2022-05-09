; ModuleID = '/llk/IR_all_yes/sound/pci/fm801.c_pt.bc'
source_filename = "../sound/pci/fm801.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_tea575x_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_fm801_tea575x_gpio = type { i8, i8, i8, i8, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, i32 }
%union.anon.114 = type { ptr }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.85 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.fm801 = type { ptr, i32, i32, i8, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, ptr, %struct.v4l2_device, %struct.snd_tea575x, [32 x i16] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.103 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.100], %struct.media_entity_enum, i32 }
%struct.anon.100 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
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
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.87, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.87 = type { i32, [28 x i8] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.98, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.98 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.89, [64 x i8] }
%union.anon.89 = type { %struct.anon.92, [40 x i8] }
%struct.anon.92 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.93, [128 x i8] }
%union.anon.93 = type { %union.anon.95 }
%union.anon.95 = type { [64 x i64] }

@__UNIQUE_ID_author302 = internal constant [50 x i8] c"snd_fm801.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [39 x i8] c"snd_fm801.description=ForteMedia FM801\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [35 x i8] c"snd_fm801.file=sound/pci/snd-fm801\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"snd_fm801.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_fm801.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype306 = internal constant [38 x i8] c"snd_fm801.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index307 = internal constant [58 x i8] c"snd_fm801.parm=index:Index value for the FM801 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_fm801.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype308 = internal constant [37 x i8] c"snd_fm801.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id309 = internal constant [53 x i8] c"snd_fm801.parm=id:ID string for the FM801 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_fm801.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype310 = internal constant [40 x i8] c"snd_fm801.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable311 = internal constant [46 x i8] c"snd_fm801.parm=enable:Enable FM801 soundcard.\00", section ".modinfo", align 1
@__param_str_tea575x_tuner = internal constant [24 x i8] c"snd_fm801.tea575x_tuner\00", align 1
@__param_arr_tea575x_tuner = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @tea575x_tuner }, align 4
@__param_tea575x_tuner = internal constant %struct.kernel_param { ptr @__param_str_tea575x_tuner, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_tea575x_tuner } }, section "__param", align 4
@__UNIQUE_ID_tea575x_tunertype312 = internal constant [46 x i8] c"snd_fm801.parmtype=tea575x_tuner:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_tea575x_tuner313 = internal constant [136 x i8] c"snd_fm801.parm=tea575x_tuner:TEA575x tuner access method (0 = auto, 1 = SF256-PCS, 2=SF256-PCP, 3=SF64-PCR, 8=disable, +16=tuner-only).\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [19 x i8] c"snd_fm801.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype314 = internal constant [41 x i8] c"snd_fm801.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr315 = internal constant [45 x i8] c"snd_fm801.parm=radio_nr:Radio device numbers\00", section ".modinfo", align 1
@__initcall__kmod_snd_fm801__316_1408_fm801_driver_init6 = internal global ptr @fm801_driver_init, section ".initcall6.init", align 4
@fm801_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_fm801_ids, ptr @snd_card_fm801_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_fm801_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_fm801_driver_exit = internal global ptr @fm801_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@tea575x_tuner = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@radio_nr = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_fm801\00", [22 x i8] zeroinitializer }, align 32
@snd_fm801_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4889, i32 2049, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 21011, i32 1296, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_fm801_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_fm801_suspend, ptr @snd_fm801_resume, ptr @snd_fm801_suspend, ptr @snd_fm801_resume, ptr @snd_fm801_suspend, ptr @snd_fm801_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_card_fm801_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FM801\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ForteMedia FM801-\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AU\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AS\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_fm801_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1207, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Primary AC'97 codec not found, assume SF64-PCR (tuner-only)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_fm801_create\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/pci/fm801.c\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry_ptr = internal global ptr @snd_fm801_create._entry, section ".printk_index", align 4
@snd_fm801_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1217, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry_ptr.15 = internal global ptr @snd_fm801_create._entry.12, section ".printk_index", align 4
@snd_fm801_tea_ops = internal constant { %struct.snd_tea575x_ops, [44 x i8] } { %struct.snd_tea575x_ops { ptr null, ptr null, ptr @snd_fm801_tea575x_set_pins, ptr @snd_fm801_tea575x_get_pins, ptr @snd_fm801_tea575x_set_direction }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 1240, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TEA575x radio not found\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry_ptr.19 = internal global ptr @snd_fm801_create._entry.17, section ".printk_index", align 4
@snd_fm801_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 1252, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"detected TEA575x radio type %s\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry_ptr.22 = internal global ptr @snd_fm801_create._entry.20, section ".printk_index", align 4
@snd_fm801_tea575x_gpios = internal constant { [3 x %struct.snd_fm801_tea575x_gpio], [40 x i8] } { [3 x %struct.snd_fm801_tea575x_gpio] [%struct.snd_fm801_tea575x_gpio { i8 1, i8 3, i8 2, i8 0, ptr @.str.25 }, %struct.snd_fm801_tea575x_gpio { i8 1, i8 0, i8 2, i8 3, ptr @.str.26 }, %struct.snd_fm801_tea575x_gpio { i8 2, i8 0, i8 1, i8 3, ptr @.str.27 }], [40 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 1257, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_fm801_create._entry_ptr.24 = internal global ptr @snd_fm801_create._entry.23, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SF256-PCS\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SF256-PCP\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SF64-PCR\00", [23 x i8] zeroinitializer }, align 32
@snd_fm801_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_fm801_playback_open, ptr @snd_fm801_playback_close, ptr null, ptr null, ptr null, ptr @snd_fm801_playback_prepare, ptr @snd_fm801_playback_trigger, ptr null, ptr @snd_fm801_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_fm801_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_fm801_capture_open, ptr @snd_fm801_capture_close, ptr null, ptr null, ptr null, ptr @snd_fm801_capture_prepare, ptr @snd_fm801_capture_trigger, ptr null, ptr @snd_fm801_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_pcm_alt_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_fm801_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 6, i32 -2147483394, i32 5500, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rates, i32 11, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @channels, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rates = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 5500, i32 8000, i32 9600, i32 11025, i32 16000, i32 19200, i32 22050, i32 32000, i32 38400, i32 44100, i32 48000], [52 x i8] zeroinitializer }, align 32
@channels = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 6], [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_fm801_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 6, i32 -2147483394, i32 5500, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_fm801_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_fm801_codec_write, ptr @snd_fm801_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_fm801_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_fm801_info_double, ptr @snd_fm801_get_double, ptr @snd_fm801_put_double, %union.anon.114 { ptr @db_scale_dsp }, i32 18841600 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 16846592 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_fm801_info_double, ptr @snd_fm801_get_double, ptr @snd_fm801_put_double, %union.anon.114 { ptr @db_scale_dsp }, i32 18841604 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 16846596 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_fm801_info_double, ptr @snd_fm801_get_double, ptr @snd_fm801_put_double, %union.anon.114 { ptr @db_scale_dsp }, i32 18841602 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 16846594 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_fm801_info_mux, ptr @snd_fm801_get_mux, ptr @snd_fm801_put_mux, %union.anon.114 zeroinitializer, i32 0 }], [80 x i8] zeroinitializer }, align 32
@snd_fm801_controls_multi = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 67362 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 68130 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 67620 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 67876 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 68132 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_fm801_info_single, ptr @snd_fm801_get_single, ptr @snd_fm801_put_single, %union.anon.114 zeroinitializer, i32 66132 }], [64 x i8] zeroinitializer }, align 32
@snd_fm801_codec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.9, i32 307, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AC'97 interface is busy (1)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_fm801_codec_write\00", [42 x i8] zeroinitializer }, align 32
@snd_fm801_codec_write._entry_ptr = internal global ptr @snd_fm801_codec_write._entry, section ".printk_index", align 4
@snd_fm801_codec_write._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.9, i32 319, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AC'97 interface #%d is busy (2)\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_fm801_codec_write._entry_ptr.33 = internal global ptr @snd_fm801_codec_write._entry.31, section ".printk_index", align 4
@snd_fm801_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.34, ptr @.str.9, i32 330, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_fm801_codec_read\00", [43 x i8] zeroinitializer }, align 32
@snd_fm801_codec_read._entry_ptr = internal global ptr @snd_fm801_codec_read._entry, section ".printk_index", align 4
@snd_fm801_codec_read._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.34, ptr @.str.9, i32 339, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@snd_fm801_codec_read._entry_ptr.36 = internal global ptr @snd_fm801_codec_read._entry.35, section ".printk_index", align 4
@snd_fm801_codec_read._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.9, i32 345, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"AC'97 interface #%d is not valid (2)\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_fm801_codec_read._entry_ptr.39 = internal global ptr @snd_fm801_codec_read._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wave Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@db_scale_dsp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3450, i32 150], [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wave Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I2S Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"I2S Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FM Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FM Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Capture Source\00", [41 x i8] zeroinitializer }, align 32
@snd_fm801_info_mux.texts = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AC97 Primary\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AC97 Secondary\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AC97 2ch->4ch Copy Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AC97 18-bit Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IEC958 Raw Data Playback Switch\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IEC958 Raw Data Capture Switch\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@saved_regs = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\04\02\06\08\0A\0C\10\14\16\18\1C\22$&T", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [13 x i64] [i64 11, i64 32, i64 5500, i64 8000, i64 9600, i64 11025, i64 16000, i64 19200, i64 22050, i64 32000, i64 38400, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [13 x i64] [i64 11, i64 32, i64 5500, i64 8000, i64 9600, i64 11025, i64 16000, i64 19200, i64 22050, i64 32000, i64 38400, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"fm801_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1399, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 30, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 31, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 32, i32 13 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"tea575x_tuner\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 41, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 42, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1408, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"snd_fm801_ids\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 244, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"snd_fm801_pm\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1393, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1274, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1296, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1297, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1298, i32 47 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1298, i32 54 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1299, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1191, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1206, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1217, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [18 x i8] c"snd_fm801_tea_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 834, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1236, i32 30 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1240, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1250, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant [24 x i8] c"snd_fm801_tea575x_gpios\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 755, i32 44 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1257, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 756, i32 55 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 757, i32 55 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 758, i32 55 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"snd_fm801_playback_ops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 700, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant [22 x i8] c"snd_fm801_capture_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 708, i32 33 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"snd_fm801_playback\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 606, i32 38 }
@___asan_gen_.185 = private unnamed_addr constant [21 x i8] c"hw_constraints_rates\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 358, i32 48 }
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"hw_constraints_channels\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 368, i32 48 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 352, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 364, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 385, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [18 x i8] c"snd_fm801_capture\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 626, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1036, i32 39 }
@___asan_gen_.206 = private unnamed_addr constant [19 x i8] c"snd_fm801_controls\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1001, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant [25 x i8] c"snd_fm801_controls_multi\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1022, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 307, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 318, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 330, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 338, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 344, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1002, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [13 x i8] c"db_scale_dsp\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 997, i32 14 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1004, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1005, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1007, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1008, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1010, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1013, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 965, i32 28 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 966, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 966, i32 19 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 966, i32 25 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 966, i32 32 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 966, i32 39 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1023, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1024, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1025, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1026, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1027, i32 1 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1028, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant [11 x i8] c"saved_regs\00", align 1
@___asan_gen_.303 = private constant [21 x i8] c"../sound/pci/fm801.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 1337, i32 28 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_enable311, ptr @__UNIQUE_ID_enabletype310, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_id309, ptr @__UNIQUE_ID_idtype308, ptr @__UNIQUE_ID_index307, ptr @__UNIQUE_ID_indextype306, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_radio_nr315, ptr @__UNIQUE_ID_radio_nrtype314, ptr @__UNIQUE_ID_tea575x_tuner313, ptr @__UNIQUE_ID_tea575x_tunertype312, ptr @__exitcall_fm801_driver_exit, ptr @__initcall__kmod_snd_fm801__316_1408_fm801_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_radio_nr, ptr @__param_tea575x_tuner, ptr @fm801_driver_exit, ptr @snd_fm801_codec_read._entry, ptr @snd_fm801_codec_read._entry.35, ptr @snd_fm801_codec_read._entry.37, ptr @snd_fm801_codec_read._entry_ptr, ptr @snd_fm801_codec_read._entry_ptr.36, ptr @snd_fm801_codec_read._entry_ptr.39, ptr @snd_fm801_codec_write._entry, ptr @snd_fm801_codec_write._entry.31, ptr @snd_fm801_codec_write._entry_ptr, ptr @snd_fm801_codec_write._entry_ptr.33, ptr @snd_fm801_create._entry, ptr @snd_fm801_create._entry.12, ptr @snd_fm801_create._entry.17, ptr @snd_fm801_create._entry.20, ptr @snd_fm801_create._entry.23, ptr @snd_fm801_create._entry_ptr, ptr @snd_fm801_create._entry_ptr.15, ptr @snd_fm801_create._entry_ptr.19, ptr @snd_fm801_create._entry_ptr.22, ptr @snd_fm801_create._entry_ptr.24, ptr @fm801_driver, ptr @index, ptr @id, ptr @enable, ptr @tea575x_tuner, ptr @radio_nr, ptr @.str, ptr @snd_fm801_ids, ptr @snd_fm801_pm, ptr @snd_card_fm801_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_fm801_create.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @snd_fm801_tea_ops, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @snd_fm801_tea575x_gpios, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @snd_fm801_playback_ops, ptr @snd_fm801_capture_ops, ptr @snd_fm801_playback, ptr @hw_constraints_rates, ptr @hw_constraints_channels, ptr @rates, ptr @channels, ptr @.str.28, ptr @snd_fm801_capture, ptr @snd_fm801_mixer.ops, ptr @snd_fm801_controls, ptr @snd_fm801_controls_multi, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.38, ptr @.str.40, ptr @db_scale_dsp, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @snd_fm801_info_mux.texts, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @saved_regs], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm801_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea575x_tuner to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_fm801_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_tea_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_tea575x_gpios to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rates to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_controls_multi to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_codec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_codec_write._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_codec_read._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_codec_read._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_dsp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fm801_info_mux.texts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fm801_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @fm801_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fm801_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @fm801_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_fm801_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  %opl3 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3) #10
  %1 = ptrtoint ptr %opl3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3, align 4, !annotation !208
  %2 = load i32, ptr @snd_card_fm801_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @snd_card_fm801_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %2
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 2112, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %13 = load i32, ptr @snd_card_fm801_probe.dev, align 4
  %arrayidx8 = getelementptr [32 x i32], ptr @tea575x_tuner, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr [32 x i32], ptr @radio_nr, i32 0, i32 %13
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx9, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %do.body.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  %reg_lock.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 28
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_fm801_create.__key, i16 noundef signext 3) #10
  %card2.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 21
  %18 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %card2.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %12, align 8
  %irq.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %irq.i, align 4
  %tea575x_tuner4.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 5
  %21 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %tea575x_tuner4.i, align 8
  %call5.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.body.i.cleanup_crit_edge, label %if.end8.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %22 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 2
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %port.i, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %25 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %26)
  %cmp9.i = icmp ugt i8 %26, -80
  br i1 %cmp9.i, label %if.then11.i, label %if.end8.i.if.end12.i_crit_edge

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %multichannel.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 3
  %27 = ptrtoint ptr %multichannel.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %multichannel.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %multichannel.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end12.i_crit_edge
  %28 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tea575x_tuner4.i, align 8
  %and.i = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then14.i, label %if.end12.i.if.end26.i_crit_edge

if.end12.i.if.end26.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then14.i:                                      ; preds = %if.end12.i
  %call15.i = call fastcc i32 @reset_codec(ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end21.i, label %if.else.i

do.end21.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card2.i, align 4
  %dev23.i = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev23.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.7) #13
  %34 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %tea575x_tuner4.i, align 8
  br label %if.end26.i

if.else.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @snd_fm801_chip_multichannel_init(ptr noundef %12) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %do.end21.i, %if.end12.i.if.end26.i_crit_edge
  %35 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tea575x_tuner4.i, align 8
  %and28.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %cmp29.i = icmp eq i32 %and28.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %if.end26.i.if.end46.i_crit_edge

if.end26.i.if.end46.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then31.i:                                      ; preds = %if.end26.i
  %irq33.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %37 = ptrtoint ptr %irq33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq33.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %38, ptr noundef nonnull @snd_fm801_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool35.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool35.not.i, label %if.end42.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev40.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %39 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev40.i, align 8
  %41 = ptrtoint ptr %irq33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq33.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.13, i32 noundef %42) #13
  br label %cleanup

if.end42.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %irq33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq33.i, align 4
  %45 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 33
  %46 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %sync_irq.i, align 4
  call void @pci_set_master(ptr noundef %pci) #10
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end42.i, %if.end26.i.if.end46.i_crit_edge
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 10
  %47 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @snd_fm801_free, ptr %private_free.i, align 4
  call fastcc void @snd_fm801_chip_init(ptr noundef %12) #10
  %v4l2_dev.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 30
  %call48.i = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.end46.i.cleanup_crit_edge, label %if.end52.i

if.end46.i.cleanup_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52.i:                                       ; preds = %if.end46.i
  %tea.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 31
  %48 = ptrtoint ptr %tea.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %v4l2_dev.i, ptr %tea.i, align 8
  %radio_nr56.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 31, i32 3
  %49 = ptrtoint ptr %radio_nr56.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %17, ptr %radio_nr56.i, align 8
  %private_data58.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 31, i32 16
  %50 = ptrtoint ptr %private_data58.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %12, ptr %private_data58.i, align 8
  %ops.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 31, i32 15
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @snd_fm801_tea_ops, ptr %ops.i, align 4
  %bus_info.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 31, i32 18
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 3
  %52 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end52.i.pci_name.exit.i_crit_edge

if.end52.i.pci_name.exit.i_crit_edge:             ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end52.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %55, %if.end.i.i.i ], [ %53, %if.end52.i.pci_name.exit.i_crit_edge ]
  %call62.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info.i, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i.i) #10
  %56 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tea575x_tuner4.i, align 8
  %and64.i = and i32 %57, 65519
  %58 = add nsw i32 %and64.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %if.then71.i, label %if.else81.i

if.then71.i:                                      ; preds = %pci_name.exit.i
  %call73.i = call i32 @snd_tea575x_init(ptr noundef %tea.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.then71.i.if.end115.i_crit_edge, label %do.end78.i

if.then71.i.if.end115.i_crit_edge:                ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115.i

do.end78.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev79.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %60 = ptrtoint ptr %dev79.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev79.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.else81.i:                                      ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %cmp84.i = icmp eq i32 %and64.i, 0
  br i1 %cmp84.i, label %if.then86.i, label %if.else81.i.if.end115.i_crit_edge

if.else81.i.if.end115.i_crit_edge:                ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115.i

if.then86.i:                                      ; preds = %if.else81.i
  %and88.i = and i32 %57, 16
  %62 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %tea575x_tuner4.i, align 8
  %call93.i = call i32 @snd_tea575x_init(ptr noundef %tea.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %if.then86.i.for.end.thread.i_crit_edge, label %for.inc.i

if.then86.i.for.end.thread.i_crit_edge:           ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.inc.1.i.for.end.thread.i_crit_edge, %for.inc.i.for.end.thread.i_crit_edge, %if.then86.i.for.end.thread.i_crit_edge
  %dev99.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %63 = ptrtoint ptr %dev99.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev99.i, align 8
  %65 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tea575x_tuner4.i, align 8
  %and101.i = and i32 %66, 65519
  %sub.i = add nsw i32 %and101.i, -1
  %name.i = getelementptr [3 x %struct.snd_fm801_tea575x_gpio], ptr @snd_fm801_tea575x_gpios, i32 0, i32 %sub.i, i32 4
  %67 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.21, ptr noundef %68) #13
  br label %if.end112.i

for.inc.i:                                        ; preds = %if.then86.i
  %69 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %tea575x_tuner4.i, align 8
  %call93.1.i = call i32 @snd_tea575x_init(ptr noundef %tea.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.1.i)
  %tobool94.not.1.i = icmp eq i32 %call93.1.i, 0
  br i1 %tobool94.not.1.i, label %for.inc.i.for.end.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %70 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %tea575x_tuner4.i, align 8
  %call93.2.i = call i32 @snd_tea575x_init(ptr noundef %tea.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.2.i)
  %tobool94.not.2.i = icmp eq i32 %call93.2.i, 0
  br i1 %tobool94.not.2.i, label %for.inc.1.i.for.end.thread.i_crit_edge, label %do.end109.i

for.inc.1.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread.i

do.end109.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev110.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %71 = ptrtoint ptr %dev110.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev110.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.18) #13
  %73 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %tea575x_tuner4.i, align 8
  br label %if.end112.i

if.end112.i:                                      ; preds = %do.end109.i, %for.end.thread.i
  %74 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tea575x_tuner4.i, align 8
  %or.i = or i32 %75, %and88.i
  store i32 %or.i, ptr %tea575x_tuner4.i, align 8
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.end112.i, %if.else81.i.if.end115.i_crit_edge, %if.then71.i.if.end115.i_crit_edge
  %76 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tea575x_tuner4.i, align 8
  %and117.i = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.then119.i, label %if.end115.i.if.end13_crit_edge

if.end115.i.if.end13_crit_edge:                   ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then119.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  %card121.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 31, i32 17
  %and124.i = and i32 %77, 65519
  %sub125.i = add nsw i32 %and124.i, -1
  %name127.i = getelementptr [3 x %struct.snd_fm801_tea575x_gpio], ptr @snd_fm801_tea575x_gpios, i32 0, i32 %sub125.i, i32 4
  %78 = ptrtoint ptr %name127.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name127.i, align 4
  %call128.i = call i32 @strscpy(ptr noundef %card121.i, ptr noundef %79, i32 noundef 32) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then119.i, %if.end115.i.if.end13_crit_edge
  %80 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %81, i32 0, i32 2
  %82 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 6)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %81, i32 0, i32 3
  %83 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 18)
  %multichannel = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 3
  %84 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %multichannel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool19.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool19.not, ptr @.str.4, ptr @.str.3
  %strlen = call i32 @strlen(ptr noundef %shortname) #14
  %endptr = getelementptr i8, ptr %shortname, i32 %strlen
  %85 = call ptr @memcpy(ptr %endptr, ptr %cond, i32 3)
  %86 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %87, i32 0, i32 4
  %shortname22 = getelementptr inbounds %struct.snd_card, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port.i, align 8
  %90 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq.i, align 4
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.5, ptr noundef %shortname22, i32 noundef %89, i32 noundef %91)
  %92 = ptrtoint ptr %tea575x_tuner4.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tea575x_tuner4.i, align 8
  %and = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end27, label %if.end13.__fm801_tuner_only_crit_edge

if.end13.__fm801_tuner_only_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm801_tuner_only

if.end27:                                         ; preds = %if.end13
  %94 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %96 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !208
  %97 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card2.i, align 4
  %call.i87 = call i32 @snd_pcm_new(ptr noundef %98, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp.i88 = icmp slt i32 %call.i87, 0
  br i1 %cmp.i88, label %snd_fm801_pcm.exit.thread, label %snd_fm801_pcm.exit

snd_fm801_pcm.exit.thread:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

snd_fm801_pcm.exit:                               ; preds = %if.end27
  %99 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %100, i32 noundef 0, ptr noundef nonnull @snd_fm801_playback_ops) #10
  %101 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %102, i32 noundef 1, ptr noundef nonnull @snd_fm801_capture_ops) #10
  %103 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pcm.i, align 4
  %private_data.i89 = getelementptr inbounds %struct.snd_pcm, ptr %104, i32 0, i32 11
  %105 = ptrtoint ptr %private_data.i89 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %12, ptr %private_data.i89, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %104, i32 0, i32 3
  %106 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %info_flags.i, align 8
  %name.i90 = getelementptr inbounds %struct.snd_pcm, ptr %104, i32 0, i32 7
  %107 = call ptr @memcpy(ptr %name.i90, ptr @.str.1, i32 6)
  %pcm2.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 22
  %108 = ptrtoint ptr %pcm2.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %104, ptr %pcm2.i, align 8
  %109 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load.i92 = load i8, ptr %multichannel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i92)
  %tobool.not.i93 = icmp sgt i8 %bf.load.i92, -1
  %cond.i = select i1 %tobool.not.i93, i32 65536, i32 131072
  %call4.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %104, i32 noundef 2, ptr noundef %95, i32 noundef %cond.i, i32 noundef 131072) #10
  %110 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pcm.i, align 4
  %112 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load6.i = load i8, ptr %multichannel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i)
  %tobool9.not.i = icmp sgt i8 %bf.load6.i, -1
  %cond10.i = select i1 %tobool9.not.i, i32 2, i32 6
  %call11.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %111, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef %cond10.i, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp29 = icmp slt i32 %call11.i, 0
  br i1 %cmp29, label %snd_fm801_pcm.exit.cleanup_crit_edge, label %if.end31

snd_fm801_pcm.exit.cleanup_crit_edge:             ; preds = %snd_fm801_pcm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %snd_fm801_pcm.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #10
  %113 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 3
  %114 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 4
  %115 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %card2.i, align 4
  %ac97_bus.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 18
  %call.i96 = call i32 @snd_ac97_bus(ptr noundef %116, i32 noundef 0, ptr noundef nonnull @snd_fm801_mixer.ops, ptr noundef %12, ptr noundef %ac97_bus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.i97 = icmp slt i32 %call.i96, 0
  br i1 %cmp.i97, label %if.end31.snd_fm801_mixer.exit.thread_crit_edge, label %if.end.i98

if.end31.snd_fm801_mixer.exit.thread_crit_edge:   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

if.end.i98:                                       ; preds = %if.end31
  %117 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %118 = call ptr @memset(ptr %117, i32 0, i32 20)
  %119 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %12, ptr %ac97.i, align 4
  %120 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ac97_bus.i, align 8
  %ac972.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 19
  %call3.i = call i32 @snd_ac97_mixer(ptr noundef %121, ptr noundef nonnull %ac97.i, ptr noundef %ac972.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i98.snd_fm801_mixer.exit.thread_crit_edge, label %if.end6.i

if.end.i98.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

if.end6.i:                                        ; preds = %if.end.i98
  %122 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load.i99 = load i8, ptr %multichannel, align 4
  %123 = and i8 %bf.load.i99, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i100 = icmp eq i8 %123, 0
  br i1 %tobool.not.i100, label %if.end6.i.if.end14.i_crit_edge, label %if.then7.i

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end6.i
  %124 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %113, align 4
  %secondary_addr.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 4
  %125 = ptrtoint ptr %secondary_addr.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %secondary_addr.i, align 1
  %conv.i = zext i8 %126 to i16
  %127 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv.i, ptr %114, align 2
  %128 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ac97_bus.i, align 8
  %ac97_sec.i = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 20
  %call9.i = call i32 @snd_ac97_mixer(ptr noundef %129, ptr noundef nonnull %ac97.i, ptr noundef %ac97_sec.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then7.i.snd_fm801_mixer.exit.thread_crit_edge, label %if.then7.i.if.end14.i_crit_edge

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then7.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

if.end14.i:                                       ; preds = %if.then7.i.if.end14.i_crit_edge, %if.end6.i.if.end14.i_crit_edge
  %130 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %card2.i, align 4
  %call18.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_fm801_controls, ptr noundef %12) #10
  %call19.i = call i32 @snd_ctl_add(ptr noundef %131, ptr noundef %call18.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end14.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond.i

if.end14.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond.i:                                       ; preds = %if.end14.i
  %132 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %card2.i, align 4
  %call18.1.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls, i32 0, i32 1), ptr noundef %12) #10
  %call19.1.i = call i32 @snd_ctl_add(ptr noundef %133, ptr noundef %call18.1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1.i)
  %cmp20.1.i = icmp slt i32 %call19.1.i, 0
  br i1 %cmp20.1.i, label %for.cond.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond.1.i

for.cond.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %134 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %card2.i, align 4
  %call18.2.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls, i32 0, i32 2), ptr noundef %12) #10
  %call19.2.i = call i32 @snd_ctl_add(ptr noundef %135, ptr noundef %call18.2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2.i)
  %cmp20.2.i = icmp slt i32 %call19.2.i, 0
  br i1 %cmp20.2.i, label %for.cond.1.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond.2.i

for.cond.1.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %136 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %card2.i, align 4
  %call18.3.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls, i32 0, i32 3), ptr noundef %12) #10
  %call19.3.i = call i32 @snd_ctl_add(ptr noundef %137, ptr noundef %call18.3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3.i)
  %cmp20.3.i = icmp slt i32 %call19.3.i, 0
  br i1 %cmp20.3.i, label %for.cond.2.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond.3.i

for.cond.2.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %138 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %card2.i, align 4
  %call18.4.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls, i32 0, i32 4), ptr noundef %12) #10
  %call19.4.i = call i32 @snd_ctl_add(ptr noundef %139, ptr noundef %call18.4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.4.i)
  %cmp20.4.i = icmp slt i32 %call19.4.i, 0
  br i1 %cmp20.4.i, label %for.cond.3.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond.4.i

for.cond.3.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %140 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %card2.i, align 4
  %call18.5.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls, i32 0, i32 5), ptr noundef %12) #10
  %call19.5.i = call i32 @snd_ctl_add(ptr noundef %141, ptr noundef %call18.5.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.5.i)
  %cmp20.5.i = icmp slt i32 %call19.5.i, 0
  br i1 %cmp20.5.i, label %for.cond.4.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond.5.i

for.cond.4.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %142 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %card2.i, align 4
  %call18.6.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([7 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls, i32 0, i32 6), ptr noundef %12) #10
  %call19.6.i = call i32 @snd_ctl_add(ptr noundef %143, ptr noundef %call18.6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.6.i)
  %cmp20.6.i = icmp slt i32 %call19.6.i, 0
  br i1 %cmp20.6.i, label %for.cond.5.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond.6.i

for.cond.5.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %144 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load24.i = load i8, ptr %multichannel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24.i)
  %tobool27.not.i = icmp sgt i8 %bf.load24.i, -1
  br i1 %tobool27.not.i, label %snd_fm801_mixer.exit.thread108, label %for.body32.preheader.i

snd_fm801_mixer.exit.thread108:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  br label %if.end35

for.body32.preheader.i:                           ; preds = %for.cond.6.i
  %145 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %card2.i, align 4
  %call35.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_fm801_controls_multi, ptr noundef %12) #10
  %call36.i = call i32 @snd_ctl_add(ptr noundef %146, ptr noundef %call35.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %for.body32.preheader.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond29.i

for.body32.preheader.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.body32.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond29.i:                                     ; preds = %for.body32.preheader.i
  %147 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %card2.i, align 4
  %call35.1.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls_multi, i32 0, i32 1), ptr noundef %12) #10
  %call36.1.i = call i32 @snd_ctl_add(ptr noundef %148, ptr noundef %call35.1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.1.i)
  %cmp37.1.i = icmp slt i32 %call36.1.i, 0
  br i1 %cmp37.1.i, label %for.cond29.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond29.1.i

for.cond29.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond29.1.i:                                   ; preds = %for.cond29.i
  %149 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %card2.i, align 4
  %call35.2.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls_multi, i32 0, i32 2), ptr noundef %12) #10
  %call36.2.i = call i32 @snd_ctl_add(ptr noundef %150, ptr noundef %call35.2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.2.i)
  %cmp37.2.i = icmp slt i32 %call36.2.i, 0
  br i1 %cmp37.2.i, label %for.cond29.1.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond29.2.i

for.cond29.1.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond29.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond29.2.i:                                   ; preds = %for.cond29.1.i
  %151 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %card2.i, align 4
  %call35.3.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls_multi, i32 0, i32 3), ptr noundef %12) #10
  %call36.3.i = call i32 @snd_ctl_add(ptr noundef %152, ptr noundef %call35.3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.3.i)
  %cmp37.3.i = icmp slt i32 %call36.3.i, 0
  br i1 %cmp37.3.i, label %for.cond29.2.i.snd_fm801_mixer.exit.thread_crit_edge, label %for.cond29.3.i

for.cond29.2.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond29.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

for.cond29.3.i:                                   ; preds = %for.cond29.2.i
  %153 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %card2.i, align 4
  %call35.4.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls_multi, i32 0, i32 4), ptr noundef %12) #10
  %call36.4.i = call i32 @snd_ctl_add(ptr noundef %154, ptr noundef %call35.4.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.4.i)
  %cmp37.4.i = icmp slt i32 %call36.4.i, 0
  br i1 %cmp37.4.i, label %for.cond29.3.i.snd_fm801_mixer.exit.thread_crit_edge, label %snd_fm801_mixer.exit

for.cond29.3.i.snd_fm801_mixer.exit.thread_crit_edge: ; preds = %for.cond29.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_mixer.exit.thread

snd_fm801_mixer.exit.thread:                      ; preds = %for.cond29.3.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond29.2.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond29.1.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond29.i.snd_fm801_mixer.exit.thread_crit_edge, %for.body32.preheader.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond.5.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond.4.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond.3.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond.2.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond.1.i.snd_fm801_mixer.exit.thread_crit_edge, %for.cond.i.snd_fm801_mixer.exit.thread_crit_edge, %if.end14.i.snd_fm801_mixer.exit.thread_crit_edge, %if.then7.i.snd_fm801_mixer.exit.thread_crit_edge, %if.end.i98.snd_fm801_mixer.exit.thread_crit_edge, %if.end31.snd_fm801_mixer.exit.thread_crit_edge
  %retval.0.i101.ph = phi i32 [ %call19.6.i, %for.cond.5.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call19.5.i, %for.cond.4.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call19.4.i, %for.cond.3.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call19.3.i, %for.cond.2.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call19.2.i, %for.cond.1.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call19.1.i, %for.cond.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call19.i, %if.end14.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call36.4.i, %for.cond29.3.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call36.3.i, %for.cond29.2.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call36.2.i, %for.cond29.1.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call36.1.i, %for.cond29.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call36.i, %for.body32.preheader.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call9.i, %if.then7.i.snd_fm801_mixer.exit.thread_crit_edge ], [ %call3.i, %if.end.i98.snd_fm801_mixer.exit.thread_crit_edge ], [ %call.i96, %if.end31.snd_fm801_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  br label %cleanup

snd_fm801_mixer.exit:                             ; preds = %for.cond29.3.i
  %155 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %card2.i, align 4
  %call35.5.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_fm801_controls_multi, i32 0, i32 5), ptr noundef %12) #10
  %call36.5.i = call i32 @snd_ctl_add(ptr noundef %156, ptr noundef %call35.5.i) #10
  %157 = call i32 @llvm.smin.i32(i32 %call36.5.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.5.i)
  %cmp33 = icmp slt i32 %call36.5.i, 0
  br i1 %cmp33, label %snd_fm801_mixer.exit.cleanup_crit_edge, label %snd_fm801_mixer.exit.if.end35_crit_edge

snd_fm801_mixer.exit.if.end35_crit_edge:          ; preds = %snd_fm801_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

snd_fm801_mixer.exit.cleanup_crit_edge:           ; preds = %snd_fm801_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %snd_fm801_mixer.exit.if.end35_crit_edge, %snd_fm801_mixer.exit.thread108
  %158 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %card, align 4
  %160 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port.i, align 8
  %add = add i32 %161, 48
  %rmidi = getelementptr inbounds %struct.fm801, ptr %12, i32 0, i32 23
  %call37 = call i32 @snd_mpu401_uart_new(ptr noundef %159, i32 noundef 0, i16 noundef zeroext 8, i32 noundef %add, i32 noundef 36, i32 noundef -1, ptr noundef %rmidi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %162 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %card, align 4
  %164 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port.i, align 8
  %add42 = add i32 %165, 104
  %add44 = add i32 %165, 106
  %call45 = call i32 @snd_opl3_create(ptr noundef %163, i32 noundef %add42, i32 noundef %add44, i16 noundef zeroext 771, i32 noundef 1, ptr noundef nonnull %opl3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end40.cleanup_crit_edge, label %if.end48

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %166 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %opl3, align 4
  %call49 = call i32 @snd_opl3_hwdep_new(ptr noundef %167, i32 noundef 0, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.cleanup_crit_edge, label %if.end48.__fm801_tuner_only_crit_edge

if.end48.__fm801_tuner_only_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fm801_tuner_only

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

__fm801_tuner_only:                               ; preds = %if.end48.__fm801_tuner_only_crit_edge, %if.end13.__fm801_tuner_only_crit_edge
  %168 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %card, align 4
  %call53 = call i32 @snd_card_register(ptr noundef %169) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %__fm801_tuner_only.cleanup_crit_edge, label %if.end56

__fm801_tuner_only.cleanup_crit_edge:             ; preds = %__fm801_tuner_only
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %__fm801_tuner_only
  call void @__sanitizer_cov_trace_pc() #12
  %170 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %172 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %171, ptr %driver_data.i.i, align 4
  %173 = load i32, ptr @snd_card_fm801_probe.dev, align 4
  %inc57 = add i32 %173, 1
  store i32 %inc57, ptr @snd_card_fm801_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %__fm801_tuner_only.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %snd_fm801_mixer.exit.cleanup_crit_edge, %snd_fm801_mixer.exit.thread, %snd_fm801_pcm.exit.cleanup_crit_edge, %snd_fm801_pcm.exit.thread, %do.end78.i, %if.end46.i.cleanup_crit_edge, %do.end39.i, %do.body.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call11.i, %snd_fm801_pcm.exit.cleanup_crit_edge ], [ %157, %snd_fm801_mixer.exit.cleanup_crit_edge ], [ %call37, %if.end35.cleanup_crit_edge ], [ %call45, %if.end40.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call53, %__fm801_tuner_only.cleanup_crit_edge ], [ %call.i87, %snd_fm801_pcm.exit.thread ], [ %retval.0.i101.ph, %snd_fm801_mixer.exit.thread ], [ %call48.i, %if.end46.i.cleanup_crit_edge ], [ %call5.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -19, %do.end78.i ], [ -16, %do.end39.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_create(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reset_codec(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  %add = add i32 %1, 34
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 24576) #10, !srcloc !211
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 8
  %add3 = add i32 %4, 34
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %5 = inttoptr i32 %add5 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 8
  %add11 = add i32 %9, 34
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %10 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 0) #10, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 8
  %add3.i = add i32 %13, 42
  %and.i = and i32 %add3.i, 1048575
  %add4.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 -32768) #10, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #10
  %.neg20 = sub i32 -75, %11
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.end.i.do.body5.i_crit_edge, %entry
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 8
  %add7.i = add i32 %17, 42
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %18 = inttoptr i32 %add9.i to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %20 = and i16 %19, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %20)
  %cmp.i = icmp eq i16 %20, 1
  br i1 %cmp.i, label %do.body5.i.wait_for_codec.exit_crit_edge, label %if.end.i

do.body5.i.wait_for_codec.exit_crit_edge:         ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_codec.exit

if.end.i:                                         ; preds = %do.body5.i
  %call15.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg20, %21
  %cmp17.i = icmp slt i32 %sub.i, 0
  br i1 %cmp17.i, label %if.end.i.do.body5.i_crit_edge, label %if.end.i.wait_for_codec.exit_crit_edge

if.end.i.wait_for_codec.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_codec.exit

if.end.i.do.body5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

wait_for_codec.exit:                              ; preds = %if.end.i.wait_for_codec.exit_crit_edge, %do.body5.i.wait_for_codec.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body5.i.wait_for_codec.exit_crit_edge ], [ -5, %if.end.i.wait_for_codec.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_fm801_chip_multichannel_init(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %multichannel = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %multichannel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then:                                          ; preds = %entry
  %secondary_addr = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %secondary_addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %secondary_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.then2

for.cond.preheader:                               ; preds = %if.then
  %port.i42 = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i42, align 8
  %add3.i43 = add i32 %5, 42
  %and.i44 = and i32 %add3.i43, 1048575
  %add4.i45 = or i32 %and.i44, -18874368
  %6 = inttoptr i32 %add4.i45 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 -1012) #10, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 1073740) #10
  %.neg76 = sub i32 -5, %3
  br label %do.body5.i50

if.then2:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %codec_id.tr.i = zext i8 %2 to i16
  %9 = shl i16 %codec_id.tr.i, 10
  %conv2.i = or i16 %9, 252
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #10
  %port.i = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 2
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 8
  %add3.i = add i32 %12, 42
  %and.i = and i32 %add3.i, 1048575
  %add4.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add4.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #10, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #10
  %.neg74 = sub i32 -5, %8
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.end.i.do.body5.i_crit_edge, %if.then2
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 8
  %add7.i = add i32 %16, 42
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %17 = inttoptr i32 %add9.i to ptr
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %17) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %19 = and i16 %18, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp.i = icmp eq i16 %19, 1
  br i1 %cmp.i, label %do.body5.i.if.end24_crit_edge, label %if.end.i

do.body5.i.if.end24_crit_edge:                    ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i:                                         ; preds = %do.body5.i
  %call15.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg74, %20
  %cmp17.i = icmp slt i32 %sub.i, 0
  br i1 %cmp17.i, label %if.end.i.do.body5.i_crit_edge, label %if.end.i.if.end24_crit_edge

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i.do.body5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i50:                                     ; preds = %if.end.i54.do.body5.i50_crit_edge, %for.cond.preheader
  %21 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i42, align 8
  %add7.i46 = add i32 %22, 42
  %and8.i47 = and i32 %add7.i46, 1048575
  %add9.i48 = or i32 %and8.i47, -18874368
  %23 = inttoptr i32 %add9.i48 to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %25 = and i16 %24, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp.i49 = icmp eq i16 %25, 1
  br i1 %cmp.i49, label %if.then9, label %if.end.i54

if.end.i54:                                       ; preds = %do.body5.i50
  %call15.i51 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.i52 = add i32 %.neg76, %26
  %cmp17.i53 = icmp slt i32 %sub.i52, 0
  br i1 %cmp17.i53, label %if.end.i54.do.body5.i50_crit_edge, label %if.end.i54.for.inc_crit_edge

if.end.i54.for.inc_crit_edge:                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i54.do.body5.i50_crit_edge:                ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i50

if.then9:                                         ; preds = %do.body5.i50
  %27 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i42, align 8
  %add = add i32 %28, 44
  %and = and i32 %add, 1048575
  %add10 = or i32 %and, -18874368
  %29 = inttoptr i32 %add10 to ptr
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %29) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i16 %30, label %if.then9.if.then19_crit_edge [
    i16 -1, label %if.then9.for.inc_crit_edge
    i16 0, label %if.then9.for.inc_crit_edge88
  ]

if.then9.for.inc_crit_edge88:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9.if.then19_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.then19:                                        ; preds = %if.then9.2.if.then19_crit_edge, %if.then9.1.if.then19_crit_edge, %if.then9.if.then19_crit_edge
  %i.081.lcssa = phi i8 [ 3, %if.then9.if.then19_crit_edge ], [ 2, %if.then9.1.if.then19_crit_edge ], [ 1, %if.then9.2.if.then19_crit_edge ]
  %32 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load20 = load i8, ptr %multichannel, align 4
  %bf.set = or i8 %bf.load20, 64
  store i8 %bf.set, ptr %multichannel, align 4
  %33 = ptrtoint ptr %secondary_addr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %i.081.lcssa, ptr %secondary_addr, align 1
  br label %if.end24

for.inc:                                          ; preds = %if.then9.for.inc_crit_edge, %if.then9.for.inc_crit_edge88, %if.end.i54.for.inc_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i42, align 8
  %add3.i43.1 = add i32 %36, 42
  %and.i44.1 = and i32 %add3.i43.1, 1048575
  %add4.i45.1 = or i32 %and.i44.1, -18874368
  %37 = inttoptr i32 %add4.i45.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 -1016) #10, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #10
  %.neg76.1 = sub i32 -5, %34
  br label %do.body5.i50.1

do.body5.i50.1:                                   ; preds = %if.end.i54.1.do.body5.i50.1_crit_edge, %for.inc
  %39 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i42, align 8
  %add7.i46.1 = add i32 %40, 42
  %and8.i47.1 = and i32 %add7.i46.1, 1048575
  %add9.i48.1 = or i32 %and8.i47.1, -18874368
  %41 = inttoptr i32 %add9.i48.1 to ptr
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %41) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %43 = and i16 %42, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %43)
  %cmp.i49.1 = icmp eq i16 %43, 1
  br i1 %cmp.i49.1, label %if.then9.1, label %if.end.i54.1

if.end.i54.1:                                     ; preds = %do.body5.i50.1
  %call15.i51.1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub.i52.1 = add i32 %.neg76.1, %44
  %cmp17.i53.1 = icmp slt i32 %sub.i52.1, 0
  br i1 %cmp17.i53.1, label %if.end.i54.1.do.body5.i50.1_crit_edge, label %if.end.i54.1.for.inc.1_crit_edge

if.end.i54.1.for.inc.1_crit_edge:                 ; preds = %if.end.i54.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.i54.1.do.body5.i50.1_crit_edge:            ; preds = %if.end.i54.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i50.1

if.then9.1:                                       ; preds = %do.body5.i50.1
  %45 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port.i42, align 8
  %add.1 = add i32 %46, 44
  %and.1 = and i32 %add.1, 1048575
  %add10.1 = or i32 %and.1, -18874368
  %47 = inttoptr i32 %add10.1 to ptr
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.58)
  switch i16 %48, label %if.then9.1.if.then19_crit_edge [
    i16 -1, label %if.then9.1.for.inc.1_crit_edge
    i16 0, label %if.then9.1.for.inc.1_crit_edge89
  ]

if.then9.1.for.inc.1_crit_edge89:                 ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then9.1.for.inc.1_crit_edge:                   ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then9.1.if.then19_crit_edge:                   ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

for.inc.1:                                        ; preds = %if.then9.1.for.inc.1_crit_edge, %if.then9.1.for.inc.1_crit_edge89, %if.end.i54.1.for.inc.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port.i42, align 8
  %add3.i43.2 = add i32 %52, 42
  %and.i44.2 = and i32 %add3.i43.2, 1048575
  %add4.i45.2 = or i32 %and.i44.2, -18874368
  %53 = inttoptr i32 %add4.i45.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %53, i16 -1020) #10, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 1073740) #10
  %.neg76.2 = sub i32 -5, %50
  br label %do.body5.i50.2

do.body5.i50.2:                                   ; preds = %if.end.i54.2.do.body5.i50.2_crit_edge, %for.inc.1
  %55 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port.i42, align 8
  %add7.i46.2 = add i32 %56, 42
  %and8.i47.2 = and i32 %add7.i46.2, 1048575
  %add9.i48.2 = or i32 %and8.i47.2, -18874368
  %57 = inttoptr i32 %add9.i48.2 to ptr
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %57) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %59 = and i16 %58, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %cmp.i49.2 = icmp eq i16 %59, 1
  br i1 %cmp.i49.2, label %if.then9.2, label %if.end.i54.2

if.end.i54.2:                                     ; preds = %do.body5.i50.2
  %call15.i51.2 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %sub.i52.2 = add i32 %.neg76.2, %60
  %cmp17.i53.2 = icmp slt i32 %sub.i52.2, 0
  br i1 %cmp17.i53.2, label %if.end.i54.2.do.body5.i50.2_crit_edge, label %if.end.i54.2.if.end24_crit_edge

if.end.i54.2.if.end24_crit_edge:                  ; preds = %if.end.i54.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i54.2.do.body5.i50.2_crit_edge:            ; preds = %if.end.i54.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i50.2

if.then9.2:                                       ; preds = %do.body5.i50.2
  %61 = ptrtoint ptr %port.i42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i42, align 8
  %add.2 = add i32 %62, 44
  %and.2 = and i32 %add.2, 1048575
  %add10.2 = or i32 %and.2, -18874368
  %63 = inttoptr i32 %add10.2 to ptr
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %63) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  %65 = zext i16 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.59)
  switch i16 %64, label %if.then9.2.if.then19_crit_edge [
    i16 -1, label %if.then9.2.if.end24_crit_edge
    i16 0, label %if.then9.2.if.end24_crit_edge90
  ]

if.then9.2.if.end24_crit_edge90:                  ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then9.2.if.end24_crit_edge:                    ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then9.2.if.then19_crit_edge:                   ; preds = %if.then9.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then19

if.end24:                                         ; preds = %if.then9.2.if.end24_crit_edge, %if.then9.2.if.end24_crit_edge90, %if.end.i54.2.if.end24_crit_edge, %if.then19, %if.end.i.if.end24_crit_edge, %do.body5.i.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %port.i57 = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 2
  %67 = ptrtoint ptr %port.i57 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port.i57, align 8
  %add3.i58 = add i32 %68, 42
  %and.i59 = and i32 %add3.i58, 1048575
  %add4.i60 = or i32 %and.i59, -18874368
  %69 = inttoptr i32 %add4.i60 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %69, i16 -1024) #10, !srcloc !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 1073740) #10
  %.neg78 = sub i32 -75, %66
  br label %do.body5.i65

do.body5.i65:                                     ; preds = %if.end.i69.do.body5.i65_crit_edge, %if.end24
  %71 = ptrtoint ptr %port.i57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port.i57, align 8
  %add7.i61 = add i32 %72, 42
  %and8.i62 = and i32 %add7.i61, 1048575
  %add9.i63 = or i32 %and8.i62, -18874368
  %73 = inttoptr i32 %add9.i63 to ptr
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %73) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %75 = and i16 %74, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %75)
  %cmp.i64 = icmp eq i16 %75, 1
  br i1 %cmp.i64, label %do.body5.i65.if.end27_crit_edge, label %if.end.i69

do.body5.i65.if.end27_crit_edge:                  ; preds = %do.body5.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end.i69:                                       ; preds = %do.body5.i65
  %call15.i66 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %sub.i67 = add i32 %.neg78, %76
  %cmp17.i68 = icmp slt i32 %sub.i67, 0
  br i1 %cmp17.i68, label %if.end.i69.do.body5.i65_crit_edge, label %if.end.i69.if.end27_crit_edge

if.end.i69.if.end27_crit_edge:                    ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end.i69.do.body5.i65_crit_edge:                ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i65

if.end27:                                         ; preds = %if.end.i69.if.end27_crit_edge, %do.body5.i65.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  %add = add i32 %1, 90
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #10, !srcloc !212
  %4 = shl i16 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %5 = and i16 %4, -15616
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %6 = lshr exact i16 %5, 8
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 8
  %add7 = add i32 %8, 90
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %9 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #10, !srcloc !211
  %pcm = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 22
  %10 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm, align 8
  %tobool11.not = icmp eq ptr %11, null
  %12 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %do.body.if.end51_crit_edge, label %land.lhs.true15

do.body.if.end51_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true15:                                  ; preds = %do.body
  %playback_substream = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 24
  %13 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %playback_substream, align 8
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %land.lhs.true15.if.end51_crit_edge, label %if.then17

land.lhs.true15.if.end51_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then17:                                        ; preds = %land.lhs.true15
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %ply_buf = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 9
  %15 = ptrtoint ptr %ply_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ply_buf, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %ply_buf, align 4
  %ply_count = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 10
  %17 = ptrtoint ptr %ply_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ply_count, align 8
  %ply_pos = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 12
  %19 = ptrtoint ptr %ply_pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ply_pos, align 8
  %add18 = add i32 %20, %18
  %ply_size = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 11
  %21 = ptrtoint ptr %ply_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ply_size, align 4
  %rem = urem i32 %add18, %22
  store i32 %rem, ptr %ply_pos, align 8
  %add22 = add i32 %rem, %18
  %rem24 = urem i32 %add22, %22
  %and26 = and i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %ply_buffer41 = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 8
  %23 = ptrtoint ptr %ply_buffer41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ply_buffer41, align 8
  %add42 = add i32 %24, %rem24
  %25 = tail call i32 @llvm.bswap.i32(i32 %add42)
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 8
  br i1 %tobool27.not, label %do.body38, label %do.body29

do.body29:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %add34 = add i32 %27, 12
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %28 = inttoptr i32 %add36 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #10, !srcloc !220
  br label %if.end48

do.body38:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %add44 = add i32 %27, 16
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %29 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %25) #10, !srcloc !220
  br label %if.end48

if.end48:                                         ; preds = %do.body38, %do.body29
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %30 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %playback_substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %31) #10
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %land.lhs.true15.if.end51_crit_edge, %do.body.if.end51_crit_edge
  %32 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcm, align 8
  %tobool53.not = icmp eq ptr %33, null
  %34 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool57.not = icmp eq i16 %34, 0
  %or.cond165 = select i1 %tobool53.not, i1 true, i1 %tobool57.not
  br i1 %or.cond165, label %if.end51.if.end98_crit_edge, label %land.lhs.true58

if.end51.if.end98_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

land.lhs.true58:                                  ; preds = %if.end51
  %capture_substream = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 25
  %35 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %capture_substream, align 4
  %tobool59.not = icmp eq ptr %36, null
  br i1 %tobool59.not, label %land.lhs.true58.if.end98_crit_edge, label %if.then60

land.lhs.true58.if.end98_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then60:                                        ; preds = %land.lhs.true58
  %reg_lock61 = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock61) #10
  %cap_buf = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 14
  %37 = ptrtoint ptr %cap_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cap_buf, align 8
  %inc62 = add i32 %38, 1
  store i32 %inc62, ptr %cap_buf, align 8
  %cap_count = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 15
  %39 = ptrtoint ptr %cap_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cap_count, align 4
  %cap_pos = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 17
  %41 = ptrtoint ptr %cap_pos to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cap_pos, align 4
  %add63 = add i32 %42, %40
  %cap_size = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 16
  %43 = ptrtoint ptr %cap_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cap_size, align 8
  %rem65 = urem i32 %add63, %44
  store i32 %rem65, ptr %cap_pos, align 4
  %add68 = add i32 %rem65, %40
  %rem70 = urem i32 %add68, %44
  %and72 = and i32 %inc62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %cap_buffer88 = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 13
  %45 = ptrtoint ptr %cap_buffer88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cap_buffer88, align 4
  %add89 = add i32 %46, %rem70
  %47 = tail call i32 @llvm.bswap.i32(i32 %add89)
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 8
  br i1 %tobool73.not, label %do.body85, label %do.body75

do.body75:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %add80 = add i32 %49, 24
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %50 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 %47) #10, !srcloc !220
  br label %if.end95

do.body85:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %add91 = add i32 %49, 28
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %51 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 %47) #10, !srcloc !220
  br label %if.end95

if.end95:                                         ; preds = %do.body85, %do.body75
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock61) #10
  %52 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %53) #10
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %land.lhs.true58.if.end98_crit_edge, %if.end51.if.end98_crit_edge
  %rmidi = getelementptr inbounds %struct.fm801, ptr %dev_id, i32 0, i32 23
  %54 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmidi, align 4
  %tobool99.not = icmp eq ptr %55, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool103.not = icmp sgt i16 %4, -1
  %or.cond166 = select i1 %tobool99.not, i1 true, i1 %tobool103.not
  br i1 %or.cond166, label %if.end98.cleanup_crit_edge, label %if.then104

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then104:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %private_data, align 4
  %call106 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %57) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %if.end98.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then104 ], [ 1, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_fm801_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  %add = add i32 %3, 86
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %6 = or i16 %5, -15616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 8
  %add5 = add i32 %8, 86
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #10, !srcloc !211
  %tea575x_tuner = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tea575x_tuner, align 8
  %and9 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tea = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 31
  tail call void @snd_tea575x_exit(ptr noundef %tea) #10
  %v4l2_dev = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 30
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_fm801_chip_init(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 8
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 2056) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 8
  %add6 = add i32 %4, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 8095) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 8
  %add14 = add i32 %7, 4
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %8 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 2184) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 8
  %add22 = add i32 %10, 36
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %11 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 768) #10, !srcloc !211
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 8
  %add27 = add i32 %13, 86
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %14 = inttoptr i32 %add29 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #10, !srcloc !212
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %irq = getelementptr inbounds %struct.fm801, ptr %chip, i32 0, i32 1
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp slt i32 %18, 0
  %19 = or i16 %16, 195
  %20 = and i16 %16, -132
  %cmdw.0 = select i1 %cmp, i16 %19, i16 %20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %21 = tail call i16 @llvm.bswap.i16(i16 %cmdw.0)
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 8
  %add40 = add i32 %23, 86
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %24 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 8
  %add48 = add i32 %26, 90
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %27 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 131) #10, !srcloc !211
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_tea575x_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tea575x_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_fm801_tea575x_set_pins(ptr nocapture noundef readonly %tea, i8 noundef zeroext %pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  %add = add i32 %3, 82
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %tea575x_tuner = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tea575x_tuner, align 8
  %and3 = and i32 %7, 65519
  %sub = add nsw i32 %and3, -1
  %arrayidx = getelementptr [3 x %struct.snd_fm801_tea575x_gpio], ptr @snd_fm801_tea575x_gpios, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %gpio.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %gpio.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %9 = ptrtoint ptr %gpio.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %gpio.sroa.6.0.copyload = load i8, ptr %gpio.sroa.6.0.arrayidx.sroa_idx, align 1
  %gpio.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %10 = ptrtoint ptr %gpio.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %gpio.sroa.9.0.copyload = load i8, ptr %gpio.sroa.9.0.arrayidx.sroa_idx, align 2
  %conv = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl nuw i32 1, %conv
  %conv5 = zext i8 %gpio.sroa.6.0.copyload to i32
  %shl7 = shl nuw i32 1, %conv5
  %conv8 = zext i8 %gpio.sroa.9.0.copyload to i32
  %shl10 = shl nuw i32 1, %conv8
  %conv15 = zext i8 %pins to i32
  %and16 = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  %phi.cast = trunc i32 %shl to i16
  %spec.select = select i1 %tobool.not, i16 0, i16 %phi.cast
  %and25 = and i32 %conv15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %phi.cast68 = trunc i32 %shl7 to i16
  %cond34 = select i1 %tobool26.not, i16 0, i16 %phi.cast68
  %and39 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %phi.cast69 = trunc i32 %shl10 to i16
  %cond48 = select i1 %tobool40.not, i16 %phi.cast69, i16 0
  %11 = tail call i16 @llvm.bswap.i16(i16 %5)
  %or = or i32 %shl7, %shl
  %or11 = or i32 %or, %shl10
  %12 = trunc i32 %or11 to i16
  %13 = xor i16 %12, -1
  %conv14 = and i16 %11, %13
  %conv23 = or i16 %cond34, %spec.select
  %conv37 = or i16 %conv23, %cond48
  %conv51 = or i16 %conv37, %conv14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv51)
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 8
  %add53 = add i32 %16, 82
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %17 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #10, !srcloc !211
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @snd_fm801_tea575x_get_pins(ptr nocapture noundef readonly %tea) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  %add = add i32 %3, 82
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !212
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %tea575x_tuner = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tea575x_tuner, align 8
  %and3 = and i32 %8, 65519
  %sub = add nsw i32 %and3, -1
  %arrayidx = getelementptr [3 x %struct.snd_fm801_tea575x_gpio], ptr @snd_fm801_tea575x_gpios, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %gpio.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %gpio.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %10 = ptrtoint ptr %gpio.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %gpio.sroa.7.0.copyload = load i8, ptr %gpio.sroa.7.0.arrayidx.sroa_idx, align 1
  %conv = zext i16 %6 to i32
  %conv4 = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl nuw i32 1, %conv4
  %and6 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp ne i32 %and6, 0
  %spec.select = zext i1 %tobool.not to i8
  %conv10 = zext i8 %gpio.sroa.7.0.copyload to i32
  %shl12 = shl nuw i32 1, %conv10
  %and13 = and i32 %shl12, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %11 = or i8 %spec.select, 8
  %ret.1 = select i1 %tobool14.not, i8 %spec.select, i8 %11
  ret i8 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_fm801_tea575x_set_direction(ptr nocapture noundef readonly %tea, i1 noundef zeroext %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_tea575x, ptr %tea, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  %add = add i32 %3, 82
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !212
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %tea575x_tuner = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tea575x_tuner, align 8
  %and3 = and i32 %8, 65519
  %sub = add nsw i32 %and3, -1
  %arrayidx = getelementptr [3 x %struct.snd_fm801_tea575x_gpio], ptr @snd_fm801_tea575x_gpios, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %gpio.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %gpio.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %10 = ptrtoint ptr %gpio.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %gpio.sroa.9.0.copyload = load i8, ptr %gpio.sroa.9.0.arrayidx.sroa_idx, align 1
  %gpio.sroa.15.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %11 = ptrtoint ptr %gpio.sroa.15.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %gpio.sroa.15.0.copyload = load i8, ptr %gpio.sroa.15.0.arrayidx.sroa_idx, align 2
  %gpio.sroa.21.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %12 = ptrtoint ptr %gpio.sroa.21.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %gpio.sroa.21.0.copyload = load i8, ptr %gpio.sroa.21.0.arrayidx.sroa_idx, align 1
  %conv = zext i8 %gpio.sroa.0.0.copyload to i32
  %shl = shl i32 4096, %conv
  %conv5 = zext i8 %gpio.sroa.15.0.copyload to i32
  %shl7 = shl i32 4096, %conv5
  %conv8 = zext i8 %gpio.sroa.9.0.copyload to i32
  %shl10 = shl i32 4096, %conv8
  %conv12 = zext i8 %gpio.sroa.21.0.copyload to i32
  %shl14 = shl i32 4096, %conv12
  %or = or i32 %shl10, %shl
  %or11 = or i32 %or, %shl7
  %or15 = or i32 %or11, %shl14
  %13 = trunc i32 %or15 to i16
  %conv18 = or i16 %6, %13
  br i1 %output, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl26 = shl i32 256, %conv5
  %shl31 = shl i32 256, %conv8
  %shl41 = shl nuw i32 1, %conv8
  %shl46 = shl nuw i32 1, %conv5
  %or27 = shl i32 257, %conv
  %or32 = or i32 %or27, %shl31
  %or37 = or i32 %or32, %shl41
  %or42 = or i32 %or37, %shl26
  %or47 = or i32 %or42, %shl46
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl58 = shl i32 256, %conv12
  %shl68 = shl nuw i32 1, %conv12
  %shl73 = shl nuw i32 1, %conv5
  %or59 = shl i32 257, %conv
  %or64 = or i32 %or59, %shl73
  %or69 = or i32 %or64, %shl58
  %or74 = or i32 %or69, %shl68
  %14 = trunc i32 %or74 to i16
  %conv77 = or i16 %conv18, %14
  %shl81 = shl i32 256, %conv5
  %or86 = shl i32 257, %conv8
  %or91 = or i32 %or86, %shl81
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %or47.sink = phi i32 [ %or47, %if.then ], [ %or91, %if.else ]
  %conv18.sink = phi i16 [ %conv18, %if.then ], [ %conv77, %if.else ]
  %15 = trunc i32 %or47.sink to i16
  %16 = xor i16 %15, -1
  %conv50 = and i16 %conv18.sink, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv50)
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 8
  %add97 = add i32 %19, 82
  %and98 = and i32 %add97, 1048575
  %add99 = or i32 %and98, -18874368
  %20 = inttoptr i32 %add99 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #10, !srcloc !211
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_playback_open(ptr noundef %substream) #2 align 64 {
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
  %playback_substream = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %playback_substream, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_fm801_playback, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_rates) #10
  %multichannel = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %multichannel to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %multichannel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %7 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %channels_max, align 8
  %call3 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_constraints_channels) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  %8 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_fm801_playback_close(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback_substream = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %playback_substream, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %ply_size = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %ply_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %ply_size, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i108 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i108 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i108, align 8
  %mul.i.i109 = mul i32 %13, %11
  %div1.i.i110 = lshr i32 %mul.i.i109, 3
  %ply_count = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %ply_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i110, ptr %ply_count, align 8
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %ply_ctrl = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ply_ctrl, align 4
  %17 = and i16 %16, 223
  store i16 %17, ptr %ply_ctrl, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp eq i32 %call4, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ply_ctrl, align 4
  %22 = or i16 %21, 16384
  store i16 %22, ptr %ply_ctrl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp9 = icmp ugt i32 %24, 1
  br i1 %cmp9, label %if.then11, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then11:                                        ; preds = %if.end
  %25 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ply_ctrl, align 4
  %27 = or i16 %26, -32768
  store i16 %27, ptr %ply_ctrl, align 4
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels, align 8
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %29, label %if.then11.if.end34_crit_edge [
    i32 4, label %if.then11.if.end34.sink.split_crit_edge
    i32 6, label %if.then27
  ]

if.then11.if.end34.sink.split_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split

if.then11.if.end34_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then27:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then27, %if.then11.if.end34.sink.split_crit_edge
  %.sink111 = phi i16 [ -24576, %if.then27 ], [ -28672, %if.then11.if.end34.sink.split_crit_edge ]
  %31 = or i16 %26, %.sink111
  %32 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %ply_ctrl, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.then11.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %33 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %34, label %for.inc.10.i [
    i32 5500, label %if.end34.snd_fm801_rate_bits.exit_crit_edge
    i32 8000, label %cleanup.fold.split.i
    i32 9600, label %cleanup.fold.split25.i
    i32 11025, label %cleanup.fold.split26.i
    i32 16000, label %cleanup.fold.split27.i
    i32 19200, label %cleanup.fold.split28.i
    i32 22050, label %cleanup.fold.split29.i
    i32 32000, label %cleanup.fold.split30.i
    i32 38400, label %cleanup.fold.split31.i
    i32 44100, label %cleanup.fold.split32.i
    i32 48000, label %cleanup.fold.split33.i
  ]

if.end34.snd_fm801_rate_bits.exit_crit_edge:      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

for.inc.10.i:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 385, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split.i:                             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split25.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split26.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split27.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split28.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split29.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split30.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split31.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split32.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split33.i:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

snd_fm801_rate_bits.exit:                         ; preds = %cleanup.fold.split33.i, %cleanup.fold.split32.i, %cleanup.fold.split31.i, %cleanup.fold.split30.i, %cleanup.fold.split29.i, %cleanup.fold.split28.i, %cleanup.fold.split27.i, %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split.i, %for.inc.10.i, %if.end34.snd_fm801_rate_bits.exit_crit_edge
  %retval.0.i = phi i16 [ 2560, %for.inc.10.i ], [ 0, %if.end34.snd_fm801_rate_bits.exit_crit_edge ], [ 256, %cleanup.fold.split.i ], [ 512, %cleanup.fold.split25.i ], [ 768, %cleanup.fold.split26.i ], [ 1024, %cleanup.fold.split27.i ], [ 1280, %cleanup.fold.split28.i ], [ 1536, %cleanup.fold.split29.i ], [ 1792, %cleanup.fold.split30.i ], [ 2048, %cleanup.fold.split31.i ], [ 2304, %cleanup.fold.split32.i ], [ 2560, %cleanup.fold.split33.i ]
  %36 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ply_ctrl, align 4
  %or39 = or i16 %37, %retval.0.i
  store i16 %or39, ptr %ply_ctrl, align 4
  %ply_buf = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %ply_buf to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ply_buf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ply_ctrl, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 8
  %add = add i32 %43, 8
  %and42 = and i32 %add, 1048575
  %add43 = or i32 %and42, -18874368
  %44 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %44, i16 %41) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %ply_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ply_count, align 8
  %47 = trunc i32 %46 to i16
  %conv49 = add i16 %47, -1
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv49)
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 8
  %add51 = add i32 %50, 10
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %51 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #10, !srcloc !211
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %52 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_addr, align 8
  %ply_buffer = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %ply_buffer to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %ply_buffer, align 8
  %ply_pos = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 12
  %55 = ptrtoint ptr %ply_pos to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %ply_pos, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %ply_buffer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ply_buffer, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 8
  %add60 = add i32 %60, 12
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %61 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 %58) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %ply_buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ply_buffer, align 8
  %64 = ptrtoint ptr %ply_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ply_count, align 8
  %66 = ptrtoint ptr %ply_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ply_size, align 4
  %rem = urem i32 %65, %67
  %add70 = add i32 %rem, %63
  %68 = tail call i32 @llvm.bswap.i32(i32 %add70)
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 8
  %add72 = add i32 %70, 16
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %71 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %71, i32 %68) #10, !srcloc !220
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb5
    i32 3, label %entry.sw.bb10_crit_edge
    i32 5, label %entry.sw.bb10_crit_edge52
    i32 4, label %entry.sw.bb15_crit_edge
    i32 6, label %entry.sw.bb15_crit_edge53
  ]

entry.sw.bb15_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

entry.sw.bb10_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ply_ctrl = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ply_ctrl, align 4
  %5 = and i16 %4, -231
  %6 = or i16 %5, 160
  store i16 %6, ptr %ply_ctrl, align 4
  br label %do.body35

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ply_ctrl6 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ply_ctrl6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ply_ctrl6, align 4
  %9 = and i16 %8, -97
  store i16 %9, ptr %ply_ctrl6, align 4
  br label %do.body35

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge52
  %ply_ctrl11 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %ply_ctrl11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ply_ctrl11, align 4
  %12 = or i16 %11, 64
  store i16 %12, ptr %ply_ctrl11, align 4
  br label %do.body35

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge53
  %ply_ctrl16 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %ply_ctrl16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ply_ctrl16, align 4
  %15 = and i16 %14, -65
  store i16 %15, ptr %ply_ctrl16, align 4
  br label %do.body35

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 420, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %cleanup

do.body35:                                        ; preds = %sw.bb15, %sw.bb10, %sw.bb5, %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %ply_ctrl38 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %ply_ctrl38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ply_ctrl38, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 8
  %add = add i32 %20, 8
  %and39 = and i32 %add, 1048575
  %add40 = or i32 %and39, -18874368
  %21 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #10, !srcloc !211
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ply_ctrl = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ply_ctrl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ply_ctrl, align 4
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %ply_pos = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %ply_pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ply_pos, align 8
  %ply_count = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ply_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ply_count, align 8
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 8
  %add1 = add i32 %10, 10
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %11 = inttoptr i32 %add3 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #10, !srcloc !212
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  %conv5 = zext i16 %13 to i32
  %sub = add i32 %6, -1
  %add = add i32 %sub, %8
  %sub6 = sub i32 %add, %conv5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 8
  %add9 = add i32 %15, 90
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %16 = inttoptr i32 %add11 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool17.not = icmp eq i16 %18, 0
  br i1 %tobool17.not, label %if.end.if.end21_crit_edge, label %if.then18

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ply_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ply_count, align 8
  %add20 = add i32 %20, %sub6
  %ply_size = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %ply_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ply_size, align 4
  %rem = urem i32 %add20, %22
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %ptr.0 = phi i32 [ %rem, %if.then18 ], [ %sub6, %if.end.if.end21_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %23 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %ptr.0, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %26
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end21 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_capture_open(ptr noundef %substream) #2 align 64 {
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
  %capture_substream = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %capture_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_fm801_capture, i32 64)
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_rates) #10
  %call2 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  %6 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_fm801_capture_close(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_substream = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %cap_size = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %cap_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %cap_size, align 8
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i86 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i86 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i86, align 8
  %mul.i.i87 = mul i32 %13, %11
  %div1.i.i88 = lshr i32 %mul.i.i87, 3
  %cap_count = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %cap_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i88, ptr %cap_count, align 4
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %cap_ctrl = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %cap_ctrl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cap_ctrl, align 2
  %17 = and i16 %16, 12511
  store i16 %17, ptr %cap_ctrl, align 2
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp eq i32 %call4, 16
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %cap_ctrl to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cap_ctrl, align 2
  %22 = or i16 %21, 16384
  store i16 %22, ptr %cap_ctrl, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp9 = icmp ugt i32 %24, 1
  br i1 %cmp9, label %if.then11, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %cap_ctrl to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cap_ctrl, align 2
  %27 = or i16 %26, -32768
  store i16 %27, ptr %cap_ctrl, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %28 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rate, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %29, label %for.inc.10.i [
    i32 5500, label %if.end16.snd_fm801_rate_bits.exit_crit_edge
    i32 8000, label %cleanup.fold.split.i
    i32 9600, label %cleanup.fold.split25.i
    i32 11025, label %cleanup.fold.split26.i
    i32 16000, label %cleanup.fold.split27.i
    i32 19200, label %cleanup.fold.split28.i
    i32 22050, label %cleanup.fold.split29.i
    i32 32000, label %cleanup.fold.split30.i
    i32 38400, label %cleanup.fold.split31.i
    i32 44100, label %cleanup.fold.split32.i
    i32 48000, label %cleanup.fold.split33.i
  ]

if.end16.snd_fm801_rate_bits.exit_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

for.inc.10.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 385, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split.i:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split25.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split26.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split27.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split28.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split29.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split30.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split31.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split32.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

cleanup.fold.split33.i:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_rate_bits.exit

snd_fm801_rate_bits.exit:                         ; preds = %cleanup.fold.split33.i, %cleanup.fold.split32.i, %cleanup.fold.split31.i, %cleanup.fold.split30.i, %cleanup.fold.split29.i, %cleanup.fold.split28.i, %cleanup.fold.split27.i, %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split.i, %for.inc.10.i, %if.end16.snd_fm801_rate_bits.exit_crit_edge
  %retval.0.i = phi i16 [ 2560, %for.inc.10.i ], [ 0, %if.end16.snd_fm801_rate_bits.exit_crit_edge ], [ 256, %cleanup.fold.split.i ], [ 512, %cleanup.fold.split25.i ], [ 768, %cleanup.fold.split26.i ], [ 1024, %cleanup.fold.split27.i ], [ 1280, %cleanup.fold.split28.i ], [ 1536, %cleanup.fold.split29.i ], [ 1792, %cleanup.fold.split30.i ], [ 2048, %cleanup.fold.split31.i ], [ 2304, %cleanup.fold.split32.i ], [ 2560, %cleanup.fold.split33.i ]
  %31 = ptrtoint ptr %cap_ctrl to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cap_ctrl, align 2
  %or21 = or i16 %32, %retval.0.i
  store i16 %or21, ptr %cap_ctrl, align 2
  %cap_buf = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %cap_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cap_buf, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %cap_ctrl to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cap_ctrl, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 8
  %add = add i32 %38, 20
  %and24 = and i32 %add, 1048575
  %add25 = or i32 %and24, -18874368
  %39 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %cap_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cap_count, align 4
  %42 = trunc i32 %41 to i16
  %conv31 = add i16 %42, -1
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv31)
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 8
  %add33 = add i32 %45, 22
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %46 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %46, i16 %43) #10, !srcloc !211
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %47 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_addr, align 8
  %cap_buffer = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 13
  %49 = ptrtoint ptr %cap_buffer to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %cap_buffer, align 4
  %cap_pos = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %cap_pos to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cap_pos, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %cap_buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cap_buffer, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 8
  %add42 = add i32 %55, 24
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %56 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %cap_buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cap_buffer, align 4
  %59 = ptrtoint ptr %cap_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cap_count, align 4
  %61 = ptrtoint ptr %cap_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cap_size, align 8
  %rem = urem i32 %60, %62
  %add52 = add i32 %rem, %58
  %63 = tail call i32 @llvm.bswap.i32(i32 %add52)
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 8
  %add54 = add i32 %65, 28
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %66 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %66, i32 %63) #10, !srcloc !220
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %cmd, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb5
    i32 3, label %entry.sw.bb10_crit_edge
    i32 5, label %entry.sw.bb10_crit_edge52
    i32 4, label %entry.sw.bb15_crit_edge
    i32 6, label %entry.sw.bb15_crit_edge53
  ]

entry.sw.bb15_crit_edge53:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

entry.sw.bb10_crit_edge52:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb10

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cap_ctrl = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %cap_ctrl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cap_ctrl, align 2
  %5 = and i16 %4, -231
  %6 = or i16 %5, 160
  store i16 %6, ptr %cap_ctrl, align 2
  br label %do.body35

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cap_ctrl6 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %cap_ctrl6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cap_ctrl6, align 2
  %9 = and i16 %8, -97
  store i16 %9, ptr %cap_ctrl6, align 2
  br label %do.body35

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge52
  %cap_ctrl11 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %cap_ctrl11 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cap_ctrl11, align 2
  %12 = or i16 %11, 64
  store i16 %12, ptr %cap_ctrl11, align 2
  br label %do.body35

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge53
  %cap_ctrl16 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %cap_ctrl16 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cap_ctrl16, align 2
  %15 = and i16 %14, -65
  store i16 %15, ptr %cap_ctrl16, align 2
  br label %do.body35

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 455, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %cleanup

do.body35:                                        ; preds = %sw.bb15, %sw.bb10, %sw.bb5, %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %cap_ctrl38 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %cap_ctrl38 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cap_ctrl38, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 8
  %add = add i32 %20, 20
  %and39 = and i32 %add, 1048575
  %add40 = or i32 %and39, -18874368
  %21 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #10, !srcloc !211
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cap_ctrl = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cap_ctrl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cap_ctrl, align 2
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %cap_pos = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %cap_pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cap_pos, align 4
  %cap_count = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %cap_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap_count, align 4
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 8
  %add1 = add i32 %10, 22
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %11 = inttoptr i32 %add3 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #10, !srcloc !212
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %conv5 = zext i16 %13 to i32
  %sub = add i32 %6, -1
  %add = add i32 %sub, %8
  %sub6 = sub i32 %add, %conv5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 8
  %add9 = add i32 %15, 90
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %16 = inttoptr i32 %add11 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  %18 = and i16 %17, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool17.not = icmp eq i16 %18, 0
  br i1 %tobool17.not, label %if.end.if.end21_crit_edge, label %if.then18

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %cap_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cap_count, align 4
  %add20 = add i32 %20, %sub6
  %cap_size = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %cap_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap_size, align 8
  %rem = urem i32 %add20, %22
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end.if.end21_crit_edge
  %ptr.0 = phi i32 [ %rem, %if.then18 ], [ %sub6, %if.end.if.end21_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %23 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %ptr.0, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %24, i32 0, i32 21
  %25 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %26
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end21 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_fm801_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 8
  %add.i46 = add i32 %3, 42
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i48 = or i32 %and.i47, -18874368
  %4 = inttoptr i32 %add1.i48 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i49 = icmp eq i16 %6, 0
  br i1 %tobool.not.i49, label %entry.do.body1_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

for.body.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 8
  %add.i = add i32 %8, 42
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %11 = and i16 %10, 2
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %for.body.i.fm801_ac97_is_ready.exit_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.fm801_ac97_is_ready.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %idx.06.i50 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #10
  %inc.i = add nuw nsw i32 %idx.06.i50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.fm801_ac97_is_ready.exit_crit_edge, label %for.body.i

if.end.i.fm801_ac97_is_ready.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit

fm801_ac97_is_ready.exit:                         ; preds = %if.end.i.fm801_ac97_is_ready.exit_crit_edge, %for.body.i.fm801_ac97_is_ready.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %idx.06.i50)
  %cmp.i.le = icmp ult i32 %idx.06.i50, 99
  br i1 %cmp.i.le, label %fm801_ac97_is_ready.exit.do.body1_crit_edge, label %do.end

fm801_ac97_is_ready.exit.do.body1_crit_edge:      ; preds = %fm801_ac97_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

do.end:                                           ; preds = %fm801_ac97_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.29) #13
  br label %cleanup

do.body1:                                         ; preds = %fm801_ac97_is_ready.exit.do.body1_crit_edge, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %17 = tail call i16 @llvm.bswap.i16(i16 %val)
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 8
  %add = add i32 %19, 44
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %20 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %20, i16 %17) #10, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %addr = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 12
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr, align 2
  %shl = shl i16 %22, 10
  %or = or i16 %shl, %reg
  %23 = tail call i16 @llvm.bswap.i16(i16 %or)
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 8
  %add12 = add i32 %25, 42
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %26 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #10, !srcloc !211
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 8
  %add.i3552 = add i32 %28, 42
  %and.i3653 = and i32 %add.i3552, 1048575
  %add1.i3754 = or i32 %and.i3653, -18874368
  %29 = inttoptr i32 %add1.i3754 to ptr
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %29) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %31 = and i16 %30, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i3855 = icmp eq i16 %31, 0
  br i1 %tobool.not.i3855, label %do.body1.cleanup_crit_edge, label %do.body1.if.end.i43_crit_edge

do.body1.if.end.i43_crit_edge:                    ; preds = %do.body1
  br label %if.end.i43

do.body1.cleanup_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i39:                                     ; preds = %if.end.i43
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 8
  %add.i35 = add i32 %33, 42
  %and.i36 = and i32 %add.i35, 1048575
  %add1.i37 = or i32 %and.i36, -18874368
  %34 = inttoptr i32 %add1.i37 to ptr
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %34) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %36 = and i16 %35, 2
  %tobool.not.i38 = icmp eq i16 %36, 0
  br i1 %tobool.not.i38, label %for.body.i39.fm801_ac97_is_ready.exit45_crit_edge, label %for.body.i39.if.end.i43_crit_edge

for.body.i39.if.end.i43_crit_edge:                ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i43

for.body.i39.fm801_ac97_is_ready.exit45_crit_edge: ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit45

if.end.i43:                                       ; preds = %for.body.i39.if.end.i43_crit_edge, %do.body1.if.end.i43_crit_edge
  %idx.06.i3456 = phi i32 [ %inc.i40, %for.body.i39.if.end.i43_crit_edge ], [ 0, %do.body1.if.end.i43_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #10
  %inc.i40 = add nuw nsw i32 %idx.06.i3456, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i40)
  %exitcond.not.i42 = icmp eq i32 %inc.i40, 1000
  br i1 %exitcond.not.i42, label %if.end.i43.fm801_ac97_is_ready.exit45_crit_edge, label %for.body.i39

if.end.i43.fm801_ac97_is_ready.exit45_crit_edge:  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit45

fm801_ac97_is_ready.exit45:                       ; preds = %if.end.i43.fm801_ac97_is_ready.exit45_crit_edge, %for.body.i39.fm801_ac97_is_ready.exit45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %idx.06.i3456)
  %cmp.i41.le = icmp ult i32 %idx.06.i3456, 999
  br i1 %cmp.i41.le, label %fm801_ac97_is_ready.exit45.cleanup_crit_edge, label %do.end20

fm801_ac97_is_ready.exit45.cleanup_crit_edge:     ; preds = %fm801_ac97_is_ready.exit45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end20:                                         ; preds = %fm801_ac97_is_ready.exit45
  call void @__sanitizer_cov_trace_pc() #12
  %card21 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 21
  %38 = ptrtoint ptr %card21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card21, align 4
  %dev22 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev22, align 8
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %42 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num, align 8
  %conv23 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.32, i32 noundef %conv23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %fm801_ac97_is_ready.exit45.cleanup_crit_edge, %do.body1.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_fm801_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 8
  %add.i69 = add i32 %3, 42
  %and.i70 = and i32 %add.i69, 1048575
  %add1.i71 = or i32 %and.i70, -18874368
  %4 = inttoptr i32 %add1.i71 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i72 = icmp eq i16 %6, 0
  br i1 %tobool.not.i72, label %entry.do.body1_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

for.body.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 8
  %add.i = add i32 %8, 42
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %11 = and i16 %10, 2
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %for.body.i.fm801_ac97_is_ready.exit_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.body.i.fm801_ac97_is_ready.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %idx.06.i73 = phi i32 [ %inc.i, %for.body.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #10
  %inc.i = add nuw nsw i32 %idx.06.i73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i.fm801_ac97_is_ready.exit_crit_edge, label %for.body.i

if.end.i.fm801_ac97_is_ready.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit

fm801_ac97_is_ready.exit:                         ; preds = %if.end.i.fm801_ac97_is_ready.exit_crit_edge, %for.body.i.fm801_ac97_is_ready.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %idx.06.i73)
  %cmp.i.le = icmp ult i32 %idx.06.i73, 99
  br i1 %cmp.i.le, label %fm801_ac97_is_ready.exit.do.body1_crit_edge, label %do.end

fm801_ac97_is_ready.exit.do.body1_crit_edge:      ; preds = %fm801_ac97_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

do.end:                                           ; preds = %fm801_ac97_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.29) #13
  br label %cleanup

do.body1:                                         ; preds = %fm801_ac97_is_ready.exit.do.body1_crit_edge, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %addr = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 12
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr, align 2
  %shl = shl i16 %18, 10
  %or = or i16 %shl, %reg
  %or5 = or i16 %or, 128
  %19 = tail call i16 @llvm.bswap.i16(i16 %or5)
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 8
  %add = add i32 %21, 42
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %22 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #10, !srcloc !211
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 8
  %add.i4775 = add i32 %24, 42
  %and.i4876 = and i32 %add.i4775, 1048575
  %add1.i4977 = or i32 %and.i4876, -18874368
  %25 = inttoptr i32 %add1.i4977 to ptr
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %25) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %27 = and i16 %26, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i5078 = icmp eq i16 %27, 0
  br i1 %tobool.not.i5078, label %do.body1.for.body.i63.preheader_crit_edge, label %do.body1.if.end.i55_crit_edge

do.body1.if.end.i55_crit_edge:                    ; preds = %do.body1
  br label %if.end.i55

do.body1.for.body.i63.preheader_crit_edge:        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i63.preheader

for.body.i51:                                     ; preds = %if.end.i55
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 8
  %add.i47 = add i32 %29, 42
  %and.i48 = and i32 %add.i47, 1048575
  %add1.i49 = or i32 %and.i48, -18874368
  %30 = inttoptr i32 %add1.i49 to ptr
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %30) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %32 = and i16 %31, 2
  %tobool.not.i50 = icmp eq i16 %32, 0
  br i1 %tobool.not.i50, label %for.body.i51.fm801_ac97_is_ready.exit57_crit_edge, label %for.body.i51.if.end.i55_crit_edge

for.body.i51.if.end.i55_crit_edge:                ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i55

for.body.i51.fm801_ac97_is_ready.exit57_crit_edge: ; preds = %for.body.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit57

if.end.i55:                                       ; preds = %for.body.i51.if.end.i55_crit_edge, %do.body1.if.end.i55_crit_edge
  %idx.06.i4679 = phi i32 [ %inc.i52, %for.body.i51.if.end.i55_crit_edge ], [ 0, %do.body1.if.end.i55_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #10
  %inc.i52 = add nuw nsw i32 %idx.06.i4679, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i52)
  %exitcond.not.i54 = icmp eq i32 %inc.i52, 100
  br i1 %exitcond.not.i54, label %if.end.i55.fm801_ac97_is_ready.exit57_crit_edge, label %for.body.i51

if.end.i55.fm801_ac97_is_ready.exit57_crit_edge:  ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_ready.exit57

fm801_ac97_is_ready.exit57:                       ; preds = %if.end.i55.fm801_ac97_is_ready.exit57_crit_edge, %for.body.i51.fm801_ac97_is_ready.exit57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %idx.06.i4679)
  %cmp.i53.le = icmp ult i32 %idx.06.i4679, 99
  br i1 %cmp.i53.le, label %fm801_ac97_is_ready.exit57.for.body.i63.preheader_crit_edge, label %do.end13

fm801_ac97_is_ready.exit57.for.body.i63.preheader_crit_edge: ; preds = %fm801_ac97_is_ready.exit57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i63.preheader

for.body.i63.preheader:                           ; preds = %fm801_ac97_is_ready.exit57.for.body.i63.preheader_crit_edge, %do.body1.for.body.i63.preheader_crit_edge
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i, align 8
  %add.i5982 = add i32 %35, 42
  %and.i6083 = and i32 %add.i5982, 1048575
  %add1.i6184 = or i32 %and.i6083, -18874368
  %36 = inttoptr i32 %add1.i6184 to ptr
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i6285 = icmp eq i16 %38, 0
  br i1 %tobool.not.i6285, label %for.body.i63.preheader.if.end.i67_crit_edge, label %for.body.i63.preheader.if.end27_crit_edge

for.body.i63.preheader.if.end27_crit_edge:        ; preds = %for.body.i63.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

for.body.i63.preheader.if.end.i67_crit_edge:      ; preds = %for.body.i63.preheader
  br label %if.end.i67

do.end13:                                         ; preds = %fm801_ac97_is_ready.exit57
  call void @__sanitizer_cov_trace_pc() #12
  %card14 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %card14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card14, align 4
  %dev15 = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev15, align 8
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %43 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num, align 8
  %conv16 = zext i16 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.32, i32 noundef %conv16) #13
  br label %cleanup

for.body.i63:                                     ; preds = %if.end.i67
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port.i, align 8
  %add.i59 = add i32 %46, 42
  %and.i60 = and i32 %add.i59, 1048575
  %add1.i61 = or i32 %and.i60, -18874368
  %47 = inttoptr i32 %add1.i61 to ptr
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %47) #10, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %49 = and i16 %48, 1
  %tobool.not.i62 = icmp eq i16 %49, 0
  br i1 %tobool.not.i62, label %for.body.i63.if.end.i67_crit_edge, label %for.body.i63.fm801_ac97_is_valid.exit_crit_edge

for.body.i63.fm801_ac97_is_valid.exit_crit_edge:  ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_valid.exit

for.body.i63.if.end.i67_crit_edge:                ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i67

if.end.i67:                                       ; preds = %for.body.i63.if.end.i67_crit_edge, %for.body.i63.preheader.if.end.i67_crit_edge
  %idx.01.i86 = phi i32 [ %inc.i64, %for.body.i63.if.end.i67_crit_edge ], [ 0, %for.body.i63.preheader.if.end.i67_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #10
  %inc.i64 = add nuw nsw i32 %idx.01.i86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i64)
  %exitcond.not.i66 = icmp eq i32 %inc.i64, 1000
  br i1 %exitcond.not.i66, label %if.end.i67.fm801_ac97_is_valid.exit_crit_edge, label %for.body.i63

if.end.i67.fm801_ac97_is_valid.exit_crit_edge:    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %fm801_ac97_is_valid.exit

fm801_ac97_is_valid.exit:                         ; preds = %if.end.i67.fm801_ac97_is_valid.exit_crit_edge, %for.body.i63.fm801_ac97_is_valid.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %idx.01.i86)
  %cmp.i65.le = icmp ult i32 %idx.01.i86, 999
  br i1 %cmp.i65.le, label %fm801_ac97_is_valid.exit.if.end27_crit_edge, label %do.end22

fm801_ac97_is_valid.exit.if.end27_crit_edge:      ; preds = %fm801_ac97_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end22:                                         ; preds = %fm801_ac97_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %card23 = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 21
  %51 = ptrtoint ptr %card23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card23, align 4
  %dev24 = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 27
  %53 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev24, align 8
  %num25 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %55 = ptrtoint ptr %num25 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num25, align 8
  %conv26 = zext i16 %56 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.38, i32 noundef %conv26) #13
  br label %cleanup

if.end27:                                         ; preds = %fm801_ac97_is_valid.exit.if.end27_crit_edge, %for.body.i63.preheader.if.end27_crit_edge
  %57 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port.i, align 8
  %add29 = add i32 %58, 44
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %59 = inttoptr i32 %add31 to ptr
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %59) #10, !srcloc !212
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end22, %do.end13, %do.end
  %retval.0 = phi i16 [ %61, %if.end27 ], [ 0, %do.end22 ], [ 0, %do.end13 ], [ 0, %do.end ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_fm801_info_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_get_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 15
  %shr4 = lshr i32 %3, 12
  %and5 = and i32 %shr4, 15
  %shr7 = lshr i32 %3, 16
  %and8 = and i32 %shr7, 255
  %value12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %reg_lock = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %conv = and i32 %3, 255
  %port.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 8
  %add.i = add i32 %5, %conv
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #10, !srcloc !212
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %conv13 = zext i16 %8 to i32
  %shr14 = lshr i32 %conv13, %and2
  %and15 = and i32 %shr14, %and8
  %9 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and15, ptr %value12, align 4
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 8
  %add.i47 = add i32 %11, %conv
  %and.i48 = and i32 %add.i47, 1048575
  %add1.i49 = or i32 %and.i48, -18874368
  %12 = inttoptr i32 %add1.i49 to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #10, !srcloc !212
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %conv18 = zext i16 %14 to i32
  %shr19 = lshr i32 %conv18, %and5
  %and20 = and i32 %shr19, %and8
  %arrayidx21 = getelementptr i32, ptr %value12, i32 1
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and20, ptr %arrayidx21, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %value12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value12, align 4
  %sub = sub i32 %and8, %17
  store i32 %sub, ptr %value12, align 4
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21, align 4
  %sub26 = sub i32 %and8, %19
  store i32 %sub26, ptr %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_put_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr7 = lshr i32 %3, 16
  %and8 = and i32 %shr7, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and12 = and i32 %and8, %5
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %7, %and8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %sub = sub nsw i32 %and8, %and12
  %sub20 = sub nsw i32 %and8, %and15
  %val1.0 = select i1 %tobool.not, i32 %and12, i32 %sub
  %val2.0 = select i1 %tobool.not, i32 %and15, i32 %sub20
  %shr4 = lshr i32 %3, 12
  %and5 = and i32 %shr4, 15
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 15
  %conv22 = and i32 %3, 255
  %shl = shl nuw nsw i32 %and8, %and2
  %shl23 = shl nuw nsw i32 %and8, %and5
  %or = or i32 %shl, %shl23
  %conv24 = trunc i32 %or to i16
  %shl26 = shl nsw i32 %val1.0, %and2
  %shl28 = shl nsw i32 %val2.0, %and5
  %or29 = or i32 %shl26, %shl28
  %conv30 = trunc i32 %or29 to i16
  %reg_lock.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %port.i.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i.i, align 8
  %add.i.i = add i32 %9, %conv22
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %10 = inttoptr i32 %add1.i.i to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #10, !srcloc !212
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %neg.i = xor i16 %conv24, -1
  %and.i = and i16 %12, %neg.i
  %or.i = or i16 %and.i, %conv30
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %or.i)
  %cmp12.i = icmp ne i16 %12, %or.i
  br i1 %cmp12.i, label %if.then.i, label %entry.snd_fm801_update_bits.exit_crit_edge

entry.snd_fm801_update_bits.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_update_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %13 = tail call i16 @llvm.bswap.i16(i16 %or.i) #10
  %14 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i.i, align 8
  %add.i24.i = add i32 %15, %conv22
  %and.i25.i = and i32 %add.i24.i, 1048575
  %add1.i26.i = or i32 %and.i25.i, -18874368
  %16 = inttoptr i32 %add1.i26.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 %13) #10, !srcloc !211
  br label %snd_fm801_update_bits.exit

snd_fm801_update_bits.exit:                       ; preds = %if.then.i, %entry.snd_fm801_update_bits.exit_crit_edge
  %conv13.i = zext i1 %cmp12.i to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #10
  ret i32 %conv13.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_fm801_info_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_get_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %conv = and i32 %3, 255
  %port.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 8
  %add.i = add i32 %5, %conv
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #10, !srcloc !212
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %conv10 = zext i16 %8 to i32
  %shr11 = lshr i32 %conv10, %and2
  %and12 = and i32 %shr11, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %sub = sub nsw i32 %and5, %and12
  %spec.select = select i1 %tobool.not, i32 %and12, i32 %sub
  %value9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %value9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_put_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and9 = and i32 %and5, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %sub = sub nsw i32 %and5, %and9
  %spec.select = select i1 %tobool.not, i32 %and9, i32 %sub
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %conv12 = and i32 %3, 255
  %shl = shl i32 %and5, %and2
  %conv13 = trunc i32 %shl to i16
  %shl15 = shl i32 %spec.select, %and2
  %conv16 = trunc i32 %shl15 to i16
  %reg_lock.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 28
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %port.i.i = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i.i, align 8
  %add.i.i = add i32 %7, %conv12
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #10, !srcloc !212
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %neg.i = xor i16 %conv13, -1
  %and.i = and i16 %10, %neg.i
  %or.i = or i16 %and.i, %conv16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %or.i)
  %cmp12.i = icmp ne i16 %10, %or.i
  br i1 %cmp12.i, label %if.then.i, label %entry.snd_fm801_update_bits.exit_crit_edge

entry.snd_fm801_update_bits.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_update_bits.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %11 = tail call i16 @llvm.bswap.i16(i16 %or.i) #10
  %12 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i.i, align 8
  %add.i24.i = add i32 %13, %conv12
  %and.i25.i = and i32 %add.i24.i, 1048575
  %add1.i26.i = or i32 %and.i25.i, -18874368
  %14 = inttoptr i32 %add1.i26.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %11) #10, !srcloc !211
  br label %snd_fm801_update_bits.exit

snd_fm801_update_bits.exit:                       ; preds = %if.then.i, %entry.snd_fm801_update_bits.exit_crit_edge
  %conv13.i = zext i1 %cmp12.i to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #10
  ret i32 %conv13.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_info_mux(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 5, ptr noundef nonnull @snd_fm801_info_mux.texts) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_get_mux(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.fm801, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 8
  %add = add i32 %3, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #10, !srcloc !212
  %6 = lshr i16 %5, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %7 = and i16 %6, 7
  %8 = tail call i16 @llvm.umin.i16(i16 %7, i16 4)
  %conv7 = zext i16 %8 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_put_mux(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  %conv1 = and i32 %1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1)
  %cmp = icmp ugt i32 %conv1, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %1 to i16
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %reg_lock.i = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 28
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #10
  %port.i.i = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i.i, align 8
  %add.i.i = add i32 %5, 6
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #10, !srcloc !212
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %and.i = and i16 %8, -8
  %or.i = or i16 %and.i, %conv
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %or.i)
  %cmp12.i = icmp ne i16 %8, %or.i
  br i1 %cmp12.i, label %if.then.i, label %if.end.snd_fm801_update_bits.exit_crit_edge

if.end.snd_fm801_update_bits.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_fm801_update_bits.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %9 = tail call i16 @llvm.bswap.i16(i16 %or.i) #10
  %10 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i.i, align 8
  %add.i24.i = add i32 %11, 6
  %and.i25.i = and i32 %add.i24.i, 1048575
  %add1.i26.i = or i32 %and.i25.i, -18874368
  %12 = inttoptr i32 %add1.i26.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 %9) #10, !srcloc !211
  br label %snd_fm801_update_bits.exit

snd_fm801_update_bits.exit:                       ; preds = %if.then.i, %if.end.snd_fm801_update_bits.exit_crit_edge
  %conv13.i = zext i1 %cmp12.i to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #10
  br label %cleanup

cleanup:                                          ; preds = %snd_fm801_update_bits.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv13.i, %snd_fm801_update_bits.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %port.i = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i8], ptr @saved_regs, i32 0, i32 %i.011
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 8
  %conv.i = zext i8 %6 to i32
  %add.i = add i32 %8, %conv.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #10, !srcloc !212
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %arrayidx2 = getelementptr %struct.fm801, ptr %3, i32 0, i32 32, i32 %i.011
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx2, align 2
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %tea575x_tuner = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tea575x_tuner, align 8
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %ac97 = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %16) #10
  %ac97_sec = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 20
  %17 = ptrtoint ptr %ac97_sec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ac97_sec, align 8
  tail call void @snd_ac97_suspend(ptr noundef %18) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_fm801_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tea575x_tuner = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tea575x_tuner, align 8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @snd_fm801_chip_init(ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @reset_codec(ptr noundef %3)
  tail call fastcc void @snd_fm801_chip_multichannel_init(ptr noundef %3)
  tail call fastcc void @snd_fm801_chip_init(ptr noundef %3)
  %ac97 = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %7) #10
  %ac97_sec = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %ac97_sec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ac97_sec, align 8
  tail call void @snd_ac97_resume(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %port.i = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.022 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i8], ptr @saved_regs, i32 0, i32 %i.022
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr %struct.fm801, ptr %3, i32 0, i32 32, i32 %i.022
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #10
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 8
  %conv.i = zext i8 %11 to i32
  %add.i = add i32 %16, %conv.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #10, !srcloc !211
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %18 = ptrtoint ptr %tea575x_tuner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tea575x_tuner, align 8
  %and4 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %tea = getelementptr inbounds %struct.fm801, ptr %3, i32 0, i32 31
  tail call void @snd_tea575x_set_freq(ptr noundef %tea) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.end.if.end7_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %20 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_tea575x_set_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__UNIQUE_ID_author302, !1, !"__UNIQUE_ID_author302", i1 false, i1 false}
!1 = !{!"../sound/pci/fm801.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description303, !3, !"__UNIQUE_ID_description303", i1 false, i1 false}
!3 = !{!"../sound/pci/fm801.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file304, !5, !"__UNIQUE_ID_file304", i1 false, i1 false}
!5 = !{!"../sound/pci/fm801.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license305, !5, !"__UNIQUE_ID_license305", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/fm801.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype306, !8, !"__UNIQUE_ID_indextype306", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index307, !11, !"__UNIQUE_ID_index307", i1 false, i1 false}
!11 = !{!"../sound/pci/fm801.c", i32 45, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/fm801.c", i32 46, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype308, !13, !"__UNIQUE_ID_idtype308", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id309, !16, !"__UNIQUE_ID_id309", i1 false, i1 false}
!16 = !{!"../sound/pci/fm801.c", i32 47, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/fm801.c", i32 48, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype310, !18, !"__UNIQUE_ID_enabletype310", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable311, !21, !"__UNIQUE_ID_enable311", i1 false, i1 false}
!21 = !{!"../sound/pci/fm801.c", i32 49, i32 1}
!22 = !{ptr @__param_tea575x_tuner, !23, !"__param_tea575x_tuner", i1 false, i1 false}
!23 = !{!"../sound/pci/fm801.c", i32 50, i32 1}
!24 = !{ptr @__UNIQUE_ID_tea575x_tunertype312, !23, !"__UNIQUE_ID_tea575x_tunertype312", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_tea575x_tuner313, !26, !"__UNIQUE_ID_tea575x_tuner313", i1 false, i1 false}
!26 = !{!"../sound/pci/fm801.c", i32 51, i32 1}
!27 = !{ptr @__param_radio_nr, !28, !"__param_radio_nr", i1 false, i1 false}
!28 = !{!"../sound/pci/fm801.c", i32 52, i32 1}
!29 = !{ptr @__UNIQUE_ID_radio_nrtype314, !28, !"__UNIQUE_ID_radio_nrtype314", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_radio_nr315, !31, !"__UNIQUE_ID_radio_nr315", i1 false, i1 false}
!31 = !{!"../sound/pci/fm801.c", i32 53, i32 1}
!32 = !{ptr @__initcall__kmod_snd_fm801__316_1408_fm801_driver_init6, !33, !"__initcall__kmod_snd_fm801__316_1408_fm801_driver_init6", i1 false, i1 false}
!33 = !{!"../sound/pci/fm801.c", i32 1408, i32 1}
!34 = !{ptr @__exitcall_fm801_driver_exit, !33, !"__exitcall_fm801_driver_exit", i1 false, i1 false}
!35 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!36 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!37 = !{ptr @index, !38, !"index", i1 false, i1 false}
!38 = !{!"../sound/pci/fm801.c", i32 30, i32 12}
!39 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!40 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!41 = !{ptr @id, !42, !"id", i1 false, i1 false}
!42 = !{!"../sound/pci/fm801.c", i32 31, i32 14}
!43 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!44 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!45 = !{ptr @enable, !46, !"enable", i1 false, i1 false}
!46 = !{!"../sound/pci/fm801.c", i32 32, i32 13}
!47 = !{ptr @__param_str_tea575x_tuner, !23, !"__param_str_tea575x_tuner", i1 false, i1 false}
!48 = !{ptr @__param_arr_tea575x_tuner, !23, !"__param_arr_tea575x_tuner", i1 false, i1 false}
!49 = !{ptr @tea575x_tuner, !50, !"tea575x_tuner", i1 false, i1 false}
!50 = !{!"../sound/pci/fm801.c", i32 41, i32 12}
!51 = !{ptr @__param_str_radio_nr, !28, !"__param_str_radio_nr", i1 false, i1 false}
!52 = !{ptr @__param_arr_radio_nr, !28, !"__param_arr_radio_nr", i1 false, i1 false}
!53 = !{ptr @radio_nr, !54, !"radio_nr", i1 false, i1 false}
!54 = !{!"../sound/pci/fm801.c", i32 42, i32 12}
!55 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @fm801_driver, !57, !"fm801_driver", i1 false, i1 false}
!57 = !{!"../sound/pci/fm801.c", i32 1399, i32 26}
!58 = !{ptr @snd_fm801_ids, !59, !"snd_fm801_ids", i1 false, i1 false}
!59 = !{!"../sound/pci/fm801.c", i32 244, i32 35}
!60 = !{ptr @snd_card_fm801_probe.dev, !61, !"dev", i1 false, i1 false}
!61 = !{!"../sound/pci/fm801.c", i32 1274, i32 13}
!62 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/fm801.c", i32 1296, i32 23}
!64 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/fm801.c", i32 1297, i32 26}
!66 = !{ptr @.str.3, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/fm801.c", i32 1298, i32 47}
!68 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/fm801.c", i32 1298, i32 54}
!70 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/fm801.c", i32 1299, i32 26}
!72 = !{ptr @snd_fm801_create.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../sound/pci/fm801.c", i32 1191, i32 2}
!74 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.7, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/fm801.c", i32 1206, i32 4}
!77 = !{ptr @.str.8, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.9, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.11, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @snd_fm801_create._entry, !76, !"_entry", i1 false, i1 false}
!82 = !{ptr @snd_fm801_create._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.13, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/fm801.c", i32 1217, i32 4}
!85 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @snd_fm801_create._entry.12, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @snd_fm801_create._entry_ptr.15, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.16, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/fm801.c", i32 1236, i32 30}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/fm801.c", i32 1240, i32 4}
!92 = !{ptr @snd_fm801_create._entry.17, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @snd_fm801_create._entry_ptr.19, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/fm801.c", i32 1250, i32 5}
!96 = !{ptr @snd_fm801_create._entry.20, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @snd_fm801_create._entry_ptr.22, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @snd_fm801_create._entry.23, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../sound/pci/fm801.c", i32 1257, i32 4}
!100 = !{ptr @snd_fm801_create._entry_ptr.24, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @snd_fm801_tea_ops, !102, !"snd_fm801_tea_ops", i1 false, i1 false}
!102 = !{!"../sound/pci/fm801.c", i32 834, i32 37}
!103 = !{ptr @.str.25, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/fm801.c", i32 756, i32 55}
!105 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/fm801.c", i32 757, i32 55}
!107 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/fm801.c", i32 758, i32 55}
!109 = !{ptr @snd_fm801_tea575x_gpios, !110, !"snd_fm801_tea575x_gpios", i1 false, i1 false}
!110 = !{!"../sound/pci/fm801.c", i32 755, i32 44}
!111 = !{ptr @snd_fm801_playback_ops, !112, !"snd_fm801_playback_ops", i1 false, i1 false}
!112 = !{!"../sound/pci/fm801.c", i32 700, i32 33}
!113 = !{ptr @snd_fm801_playback, !114, !"snd_fm801_playback", i1 false, i1 false}
!114 = !{!"../sound/pci/fm801.c", i32 606, i32 38}
!115 = !{ptr @hw_constraints_rates, !116, !"hw_constraints_rates", i1 false, i1 false}
!116 = !{!"../sound/pci/fm801.c", i32 358, i32 48}
!117 = !{ptr @rates, !118, !"rates", i1 false, i1 false}
!118 = !{!"../sound/pci/fm801.c", i32 352, i32 27}
!119 = !{ptr @hw_constraints_channels, !120, !"hw_constraints_channels", i1 false, i1 false}
!120 = !{!"../sound/pci/fm801.c", i32 368, i32 48}
!121 = !{ptr @channels, !122, !"channels", i1 false, i1 false}
!122 = !{!"../sound/pci/fm801.c", i32 364, i32 27}
!123 = !{ptr @.str.28, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/fm801.c", i32 385, i32 2}
!125 = !{ptr @snd_fm801_capture_ops, !126, !"snd_fm801_capture_ops", i1 false, i1 false}
!126 = !{!"../sound/pci/fm801.c", i32 708, i32 33}
!127 = !{ptr @snd_fm801_capture, !128, !"snd_fm801_capture", i1 false, i1 false}
!128 = !{!"../sound/pci/fm801.c", i32 626, i32 38}
!129 = !{ptr @snd_fm801_mixer.ops, !130, !"ops", i1 false, i1 false}
!130 = !{!"../sound/pci/fm801.c", i32 1036, i32 39}
!131 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/fm801.c", i32 307, i32 3}
!133 = !{ptr @.str.30, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @snd_fm801_codec_write._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @snd_fm801_codec_write._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.32, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/fm801.c", i32 318, i32 3}
!138 = !{ptr @snd_fm801_codec_write._entry.31, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @snd_fm801_codec_write._entry_ptr.33, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.34, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/fm801.c", i32 330, i32 3}
!142 = !{ptr @snd_fm801_codec_read._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @snd_fm801_codec_read._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @snd_fm801_codec_read._entry.35, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../sound/pci/fm801.c", i32 338, i32 3}
!146 = !{ptr @snd_fm801_codec_read._entry_ptr.36, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.38, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/fm801.c", i32 344, i32 3}
!149 = !{ptr @snd_fm801_codec_read._entry.37, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @snd_fm801_codec_read._entry_ptr.39, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.40, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/fm801.c", i32 1002, i32 1}
!153 = !{ptr @.str.41, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/fm801.c", i32 1004, i32 1}
!155 = !{ptr @.str.42, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/fm801.c", i32 1005, i32 1}
!157 = !{ptr @.str.43, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/fm801.c", i32 1007, i32 1}
!159 = !{ptr @.str.44, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/fm801.c", i32 1008, i32 1}
!161 = !{ptr @.str.45, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/fm801.c", i32 1010, i32 1}
!163 = !{ptr @.str.46, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/fm801.c", i32 1013, i32 10}
!165 = !{ptr @snd_fm801_controls, !166, !"snd_fm801_controls", i1 false, i1 false}
!166 = !{!"../sound/pci/fm801.c", i32 1001, i32 38}
!167 = !{ptr @db_scale_dsp, !168, !"db_scale_dsp", i1 false, i1 false}
!168 = !{!"../sound/pci/fm801.c", i32 997, i32 14}
!169 = !{ptr @.str.47, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/fm801.c", i32 966, i32 3}
!171 = !{ptr @.str.48, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/fm801.c", i32 966, i32 19}
!173 = !{ptr @.str.49, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/fm801.c", i32 966, i32 25}
!175 = !{ptr @.str.50, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/fm801.c", i32 966, i32 32}
!177 = !{ptr @.str.51, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/fm801.c", i32 966, i32 39}
!179 = !{ptr @snd_fm801_info_mux.texts, !180, !"texts", i1 false, i1 false}
!180 = !{!"../sound/pci/fm801.c", i32 965, i32 28}
!181 = !{ptr @.str.52, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/fm801.c", i32 1023, i32 1}
!183 = !{ptr @.str.53, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/fm801.c", i32 1024, i32 1}
!185 = !{ptr @.str.54, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/fm801.c", i32 1025, i32 1}
!187 = !{ptr @.str.55, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/fm801.c", i32 1026, i32 1}
!189 = !{ptr @.str.56, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/fm801.c", i32 1027, i32 1}
!191 = !{ptr @.str.57, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/fm801.c", i32 1028, i32 1}
!193 = !{ptr @snd_fm801_controls_multi, !194, !"snd_fm801_controls_multi", i1 false, i1 false}
!194 = !{!"../sound/pci/fm801.c", i32 1022, i32 38}
!195 = !{ptr @snd_fm801_pm, !196, !"snd_fm801_pm", i1 false, i1 false}
!196 = !{!"../sound/pci/fm801.c", i32 1393, i32 8}
!197 = !{ptr @saved_regs, !198, !"saved_regs", i1 false, i1 false}
!198 = !{!"../sound/pci/fm801.c", i32 1337, i32 28}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"auto-init"}
!209 = !{i8 0, i8 2}
!210 = !{i64 2156998857}
!211 = !{i64 4244194}
!212 = !{i64 4244394}
!213 = !{i64 2156999869}
!214 = !{i64 2157000754}
!215 = !{i64 2156996545}
!216 = !{i64 2156998115}
!217 = !{i64 2157001743}
!218 = !{i64 2156978196}
!219 = !{i64 2156978573}
!220 = !{i64 4244814}
!221 = !{i64 2157006800}
!222 = !{i64 2157007139}
!223 = !{i64 2157002089}
!224 = !{i64 2157002664}
!225 = !{i64 2157003241}
!226 = !{i64 2157003820}
!227 = !{i64 2157004802}
!228 = !{i64 2157005141}
!229 = !{i64 2157005780}
!230 = !{i64 2156984730}
!231 = !{i64 2156985341}
!232 = !{i64 2156986319}
!233 = !{i64 2156987240}
!234 = !{i64 2156988101}
!235 = !{i64 2156969339}
!236 = !{i64 2156969962}
!237 = !{i64 2156970587}
!238 = !{i64 2156971280}
!239 = !{i64 2156967388}
!240 = !{i64 2156975139}
!241 = !{i64 2156975889}
!242 = !{i64 2156972075}
!243 = !{i64 2156972698}
!244 = !{i64 2156973323}
!245 = !{i64 2156974016}
!246 = !{i64 2156968598}
!247 = !{i64 2156976689}
!248 = !{i64 2156977439}
!249 = !{i64 2156951333}
!250 = !{i64 2156955518}
!251 = !{i64 2156956132}
!252 = !{i64 2156960151}
!253 = !{i64 2156952628}
!254 = !{i64 2156964628}
!255 = !{i64 2156950553}
!256 = !{i64 2156949471}
!257 = !{i64 2156989391}
