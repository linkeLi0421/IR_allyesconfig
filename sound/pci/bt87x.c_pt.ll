; ModuleID = '/llk/IR_all_yes/sound/pci/bt87x.c_pt.bc'
source_filename = "../sound/pci/bt87x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.snd_bt87x_board = type { i32, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, ptr }
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
%struct.snd_bt87x = type { ptr, ptr, %struct.snd_bt87x_board, ptr, i32, %struct.spinlock, i32, ptr, %struct.snd_dma_buffer, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@__UNIQUE_ID_author242 = internal constant [54 x i8] c"snd_bt87x.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [51 x i8] c"snd_bt87x.description=Brooktree Bt87x audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [35 x i8] c"snd_bt87x.file=sound/pci/snd-bt87x\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"snd_bt87x.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_bt87x.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [38 x i8] c"snd_bt87x.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [53 x i8] c"snd_bt87x.parm=index:Index value for Bt87x soundcard\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_bt87x.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [37 x i8] c"snd_bt87x.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [48 x i8] c"snd_bt87x.parm=id:ID string for Bt87x soundcard\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_bt87x.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [40 x i8] c"snd_bt87x.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [45 x i8] c"snd_bt87x.parm=enable:Enable Bt87x soundcard\00", section ".modinfo", align 1
@__param_str_digital_rate = internal constant [23 x i8] c"snd_bt87x.digital_rate\00", align 1
@__param_arr_digital_rate = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @digital_rate }, align 4
@__param_digital_rate = internal constant %struct.kernel_param { ptr @__param_str_digital_rate, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_digital_rate } }, section "__param", align 4
@__UNIQUE_ID_digital_ratetype252 = internal constant [45 x i8] c"snd_bt87x.parmtype=digital_rate:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_digital_rate253 = internal constant [67 x i8] c"snd_bt87x.parm=digital_rate:Digital input rate for Bt87x soundcard\00", section ".modinfo", align 1
@__param_str_load_all = internal constant [19 x i8] c"snd_bt87x.load_all\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@load_all = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_load_all = internal constant %struct.kernel_param { ptr @__param_str_load_all, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @load_all } }, section "__param", align 4
@__UNIQUE_ID_load_alltype254 = internal constant [33 x i8] c"snd_bt87x.parmtype=load_all:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_load_all255 = internal constant [65 x i8] c"snd_bt87x.parm=load_all:Allow to load cards not on the allowlist\00", section ".modinfo", align 1
@driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_bt87x_ids, ptr @snd_bt87x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_bt87x__257_918_alsa_card_bt87x_init6 = internal global ptr @alsa_card_bt87x_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_bt87x_exit = internal global ptr @alsa_card_bt87x_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@digital_rate = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_bt87x\00", [22 x i8] zeroinitializer }, align 32
@snd_bt87x_ids = internal constant { [13 x %struct.pci_device_id], [96 x i8] } { [13 x %struct.pci_device_id] [%struct.pci_device_id { i32 4254, i32 2168, i32 112, i32 5099, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2169, i32 112, i32 5099, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 112, i32 65281, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 112, i32 65287, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 4098, i32 1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 4221, i32 26118, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 4541, i32 18, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 4634, i32 12288, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 5199, i32 12288, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 5217, i32 3, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 5460, i32 16401, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 48401, i32 4608, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@snd_bt87x_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@snd_bt87x_boards = internal constant { [6 x %struct.snd_bt87x_board], [56 x i8] } { [6 x %struct.snd_bt87x_board] [%struct.snd_bt87x_board { i32 32000, i32 0, i8 0 }, %struct.snd_bt87x_board { i32 32000, i32 0, i8 0 }, %struct.snd_bt87x_board { i32 0, i32 0, i8 64 }, %struct.snd_bt87x_board { i32 44100, i32 4259840, i8 0 }, %struct.snd_bt87x_board { i32 32000, i32 4259840, i8 -128 }, %struct.snd_bt87x_board { i32 48000, i32 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bt87x Digital\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bt87x Analog\00", [19 x i8] zeroinitializer }, align 32
@snd_bt87x_capture_volume = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_bt87x_capture_volume_info, ptr @snd_bt87x_capture_volume_get, ptr @snd_bt87x_capture_volume_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_bt87x_capture_boost = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_bt87x_capture_boost_get, ptr @snd_bt87x_capture_boost_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_bt87x_capture_source = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_bt87x_capture_source_info, ptr @snd_bt87x_capture_source_get, ptr @snd_bt87x_capture_source_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_bt87x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 874, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bt87x%d: Using board %d, %sanalog, %sdigital (rate %d Hz)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_bt87x_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/pci/bt87x.c\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_bt87x_probe._entry_ptr = internal global ptr @snd_bt87x_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"no \00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Bt87x\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Brooktree Bt%x\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at %#llx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_bt87x_detect_card.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_bt87x_detect_card\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"card %#04x-%#04x:%#04x has no audio\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_bt87x_detect_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 801, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown card %#04x-%#04x:%#04x\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_bt87x_detect_card._entry_ptr = internal global ptr @snd_bt87x_detect_card._entry, section ".printk_index", align 4
@snd_bt87x_detect_card._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.5, i32 804, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"please mail id, board name, and, if it works, the correct digital_rate option to <alsa-devel@alsa-project.org>\0A\00", [48 x i8] zeroinitializer }, align 32
@snd_bt87x_detect_card._entry_ptr.18 = internal global ptr @snd_bt87x_detect_card._entry.16, section ".printk_index", align 4
@snd_bt87x_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bt87x audio\00", [20 x i8] zeroinitializer }, align 32
@snd_bt87x_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 714, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot grab irq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_bt87x_create\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_bt87x_create._entry_ptr = internal global ptr @snd_bt87x_create._entry, section ".printk_index", align 4
@snd_bt87x_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 312, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FIFO overrun, status %#08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_bt87x_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_bt87x_interrupt._entry_ptr = internal global ptr @snd_bt87x_interrupt._entry, section ".printk_index", align 4
@snd_bt87x_interrupt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.5, i32 315, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"internal RISC error, status %#08x\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_bt87x_interrupt._entry_ptr.29 = internal global ptr @snd_bt87x_interrupt._entry.27, section ".printk_index", align 4
@snd_bt87x_pci_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 277, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Aieee - PCI error! status %#08x, PCI status %#04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_bt87x_pci_error\00", [44 x i8] zeroinitializer }, align 32
@snd_bt87x_pci_error._entry_ptr = internal global ptr @snd_bt87x_pci_error._entry, section ".printk_index", align 4
@snd_bt87x_pci_error._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 280, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Aieee - PCI parity error detected!\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_bt87x_pci_error._entry_ptr.34 = internal global ptr @snd_bt87x_pci_error._entry.32, section ".printk_index", align 4
@snd_bt87x_pci_error._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.5, i32 285, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Too many PCI parity errors observed.\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_bt87x_pci_error._entry_ptr.37 = internal global ptr @snd_bt87x_pci_error._entry.35, section ".printk_index", align 4
@snd_bt87x_pci_error._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.5, i32 287, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Some device on this bus is generating bad parity.\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_bt87x_pci_error._entry_ptr.40 = internal global ptr @snd_bt87x_pci_error._entry.38, section ".printk_index", align 4
@snd_bt87x_pci_error._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.5, i32 289, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"This is an error *observed by*, not *generated by*, this card.\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_bt87x_pci_error._entry_ptr.43 = internal global ptr @snd_bt87x_pci_error._entry.41, section ".printk_index", align 4
@snd_bt87x_pci_error._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.31, ptr @.str.5, i32 291, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PCI parity error checking has been disabled.\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_bt87x_pci_error._entry_ptr.46 = internal global ptr @snd_bt87x_pci_error._entry.44, section ".printk_index", align 4
@snd_bt87x_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_bt87x_pcm_open, ptr @snd_bt87x_close, ptr null, ptr @snd_bt87x_hw_params, ptr @snd_bt87x_hw_free, ptr @snd_bt87x_prepare, ptr @snd_bt87x_trigger, ptr null, ptr @snd_bt87x_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_bt87x_digital_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 4, i32 0, i32 0, i32 0, i32 2, i32 2, i32 1043460, i32 32, i32 4092, i32 2, i32 255, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_bt87x_set_analog_hw.analog_clock = internal constant { %struct.snd_ratnum, [16 x i8] } { %struct.snd_ratnum { i32 1792000, i32 1, i32 15, i32 1 }, [16 x i8] zeroinitializer }, align 32
@snd_bt87x_set_analog_hw.constraint_rates = internal constant { %struct.snd_pcm_hw_constraint_ratnums, [24 x i8] } { %struct.snd_pcm_hw_constraint_ratnums { i32 1, ptr @snd_bt87x_set_analog_hw.analog_clock }, [24 x i8] zeroinitializer }, align 32
@snd_bt87x_analog_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65811, i64 5, i32 -2147483648, i32 119466, i32 1792000, i32 1, i32 1, i32 1043460, i32 32, i32 4092, i32 2, i32 255, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Capture Boost\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@snd_bt87x_capture_source_info.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52], [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TV Tuner\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic/Line\00", [23 x i8] zeroinitializer }, align 32
@snd_bt87x_default_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4254, i32 2168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4254, i32 2169, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 113, i64 4541, i64 5217, i64 6178, i64 6316, i64 9999, i64 28771]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"load_all\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 31, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 900, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 27, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 28, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 29, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"digital_rate\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 30, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 901, i32 10 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"snd_bt87x_ids\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 732, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 811, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"snd_bt87x_boards\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 151, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 850, i32 45 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 855, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"snd_bt87x_capture_volume\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 573, i32 38 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"snd_bt87x_capture_boost\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 609, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant [25 x i8] c"snd_bt87x_capture_source\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 651, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 871, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 876, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 877, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 878, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 794, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 800, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 802, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 697, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 699, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 714, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 311, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 314, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 275, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 279, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 284, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 286, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 288, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 290, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [18 x i8] c"snd_bt87x_pcm_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 527, i32 33 }
@___asan_gen_.231 = private unnamed_addr constant [21 x i8] c"snd_bt87x_digital_hw\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 336, i32 38 }
@___asan_gen_.234 = private unnamed_addr constant [13 x i8] c"analog_clock\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 384, i32 33 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"constraint_rates\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 390, i32 52 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c"snd_bt87x_analog_hw\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 353, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 575, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 611, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 653, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 620, i32 27 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 620, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 620, i32 51 }
@___asan_gen_.261 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 620, i32 57 }
@___asan_gen_.264 = private unnamed_addr constant [22 x i8] c"snd_bt87x_default_ids\00", align 1
@___asan_gen_.265 = private constant [21 x i8] c"../sound/pci/bt87x.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 894, i32 35 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_digital_rate253, ptr @__UNIQUE_ID_digital_ratetype252, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_load_all255, ptr @__UNIQUE_ID_load_alltype254, ptr @__exitcall_alsa_card_bt87x_exit, ptr @__initcall__kmod_snd_bt87x__257_918_alsa_card_bt87x_init6, ptr @__param_digital_rate, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_load_all, ptr @alsa_card_bt87x_exit, ptr @snd_bt87x_create._entry, ptr @snd_bt87x_create._entry_ptr, ptr @snd_bt87x_detect_card._entry, ptr @snd_bt87x_detect_card._entry.16, ptr @snd_bt87x_detect_card._entry_ptr, ptr @snd_bt87x_detect_card._entry_ptr.18, ptr @snd_bt87x_interrupt._entry, ptr @snd_bt87x_interrupt._entry.27, ptr @snd_bt87x_interrupt._entry_ptr, ptr @snd_bt87x_interrupt._entry_ptr.29, ptr @snd_bt87x_pci_error._entry, ptr @snd_bt87x_pci_error._entry.32, ptr @snd_bt87x_pci_error._entry.35, ptr @snd_bt87x_pci_error._entry.38, ptr @snd_bt87x_pci_error._entry.41, ptr @snd_bt87x_pci_error._entry.44, ptr @snd_bt87x_pci_error._entry_ptr, ptr @snd_bt87x_pci_error._entry_ptr.34, ptr @snd_bt87x_pci_error._entry_ptr.37, ptr @snd_bt87x_pci_error._entry_ptr.40, ptr @snd_bt87x_pci_error._entry_ptr.43, ptr @snd_bt87x_pci_error._entry_ptr.46, ptr @snd_bt87x_probe._entry, ptr @snd_bt87x_probe._entry_ptr, ptr @load_all, ptr @driver, ptr @index, ptr @id, ptr @enable, ptr @digital_rate, ptr @.str, ptr @snd_bt87x_ids, ptr @snd_bt87x_probe.dev, ptr @snd_bt87x_boards, ptr @.str.1, ptr @.str.2, ptr @snd_bt87x_capture_volume, ptr @snd_bt87x_capture_boost, ptr @snd_bt87x_capture_source, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @snd_bt87x_create.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @snd_bt87x_pcm_ops, ptr @snd_bt87x_digital_hw, ptr @snd_bt87x_set_analog_hw.analog_clock, ptr @snd_bt87x_set_analog_hw.constraint_rates, ptr @snd_bt87x_analog_hw, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @snd_bt87x_capture_source_info.texts, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @snd_bt87x_default_ids], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_rate to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_ids to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_boards to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_capture_volume to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_capture_boost to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_capture_source to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_detect_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_detect_card._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_interrupt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_pci_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_pci_error._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_pci_error._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_pci_error._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_pci_error._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_pci_error._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_digital_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_set_analog_hw.analog_clock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_set_analog_hw.constraint_rates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_analog_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_capture_source_info.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bt87x_default_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_bt87x_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_bt87x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @load_all, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @snd_bt87x_default_ids, ptr getelementptr inbounds (%struct.pci_driver, ptr @driver, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %pcm.i145 = alloca ptr, align 4
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !187
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @snd_bt87x_detect_card(ptr noundef %pci)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %boardid.0 = phi i32 [ %call, %if.then.if.end3_crit_edge ], [ %2, %entry.if.end3_crit_edge ]
  %3 = load i32, ptr @snd_bt87x_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp4 = icmp sgt i32 %3, 31
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @snd_bt87x_probe.dev, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx10 = getelementptr [32 x i32], ptr @index, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11, align 4
  %call12 = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %7, ptr noundef %9, ptr noundef null, i32 noundef 136, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end15.cleanup_crit_edge, label %if.end.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %13, align 4
  %pci2.i = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pci2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pci, ptr %pci2.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %irq.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @snd_bt87x_create.__key, i16 noundef signext 3) #10
  %call4.i = call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 1, ptr noundef nonnull @.str.20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call ptr @pcim_iomap_table(ptr noundef %pci) #10
  %17 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call8.i, align 4
  %mmio.i = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 3
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %mmio.i, align 4
  %reg_control.i = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 11
  %20 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67120904, ptr %reg_control.i, align 4
  %interrupt_mask.i = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 12
  %21 = ptrtoint ptr %interrupt_mask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 505856, ptr %interrupt_mask.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 137297924) #10, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %25, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #10, !srcloc !189
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %27, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 12060416) #10, !srcloc !189
  %irq10.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %28 = ptrtoint ptr %irq10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq10.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %29, ptr noundef nonnull @snd_bt87x_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp12.i, label %do.end16.i, label %if.end19

do.end16.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev17.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %30 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev17.i, align 8
  %32 = ptrtoint ptr %irq10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq10.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.21, i32 noundef %33) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end7.i
  %34 = ptrtoint ptr %irq10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq10.i, align 4
  %36 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 33
  %37 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 10
  %38 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @snd_bt87x_free, ptr %private_free.i, align 4
  call void @pci_set_master(ptr noundef %pci) #10
  %board = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 2
  %arrayidx20 = getelementptr [6 x %struct.snd_bt87x_board], ptr @snd_bt87x_boards, i32 0, i32 %boardid.0
  %39 = call ptr @memcpy(ptr %board, ptr %arrayidx20, i32 12)
  %no_digital = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %no_digital to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %no_digital, align 4
  %41 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool22.not = icmp eq i8 %41, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end35_crit_edge

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then23:                                        ; preds = %if.end19
  %42 = load i32, ptr @snd_bt87x_probe.dev, align 4
  %arrayidx24 = getelementptr [32 x i32], ptr @digital_rate, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp25 = icmp sgt i32 %44, 0
  br i1 %cmp25, label %if.then26, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %board to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %board, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23.if.end29_crit_edge
  %digital_fmt = getelementptr inbounds %struct.snd_bt87x, ptr %13, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %digital_fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %digital_fmt, align 4
  %48 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg_control.i, align 4
  %or = or i32 %49, %47
  store i32 %or, ptr %reg_control.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %50 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !187
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %13, align 4
  %call.i139 = call i32 @snd_pcm_new(ptr noundef %52, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp.i140 = icmp slt i32 %call.i139, 0
  br i1 %cmp.i140, label %snd_bt87x_pcm.exit.thread, label %snd_bt87x_pcm.exit

snd_bt87x_pcm.exit.thread:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

snd_bt87x_pcm.exit:                               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcm.i, align 4
  %private_data.i141 = getelementptr inbounds %struct.snd_pcm, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %private_data.i141 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %13, ptr %private_data.i141, align 8
  %name1.i = getelementptr inbounds %struct.snd_pcm, ptr %54, i32 0, i32 7
  %56 = call ptr @memcpy(ptr %name1.i, ptr @.str.1, i32 14)
  call void @snd_pcm_set_ops(ptr noundef %54, i32 noundef 1, ptr noundef nonnull @snd_bt87x_pcm_ops) #10
  %57 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcm.i, align 4
  %59 = ptrtoint ptr %pci2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci2.i, align 4
  %dev.i142 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %call3.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %58, i32 noundef 2, ptr noundef %dev.i142, i32 noundef 131072, i32 noundef 1044480) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  %61 = ptrtoint ptr %no_digital to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load37.pr = load i8, ptr %no_digital, align 4
  br label %if.end35

if.end35:                                         ; preds = %snd_bt87x_pcm.exit, %if.end19.if.end35_crit_edge
  %bf.load37 = phi i8 [ %bf.load37.pr, %snd_bt87x_pcm.exit ], [ %bf.load, %if.end19.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37)
  %tobool40.not = icmp sgt i8 %bf.load37, -1
  br i1 %tobool40.not, label %if.then41, label %if.end35.do.end_crit_edge

if.end35.do.end_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then41:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i145) #10
  %62 = ptrtoint ptr %pcm.i145 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i145, align 4, !annotation !187
  %63 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %13, align 4
  %call.i146 = call i32 @snd_pcm_new(ptr noundef %64, ptr noundef nonnull @.str.2, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm.i145) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp.i147 = icmp slt i32 %call.i146, 0
  br i1 %cmp.i147, label %snd_bt87x_pcm.exit156.thread, label %if.end45

snd_bt87x_pcm.exit156.thread:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i145) #10
  br label %cleanup

if.end45:                                         ; preds = %if.then41
  %65 = ptrtoint ptr %pcm.i145 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcm.i145, align 4
  %private_data.i148 = getelementptr inbounds %struct.snd_pcm, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %private_data.i148 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %13, ptr %private_data.i148, align 8
  %name1.i149 = getelementptr inbounds %struct.snd_pcm, ptr %66, i32 0, i32 7
  %68 = call ptr @memcpy(ptr %name1.i149, ptr @.str.2, i32 13)
  call void @snd_pcm_set_ops(ptr noundef %66, i32 noundef 1, ptr noundef nonnull @snd_bt87x_pcm_ops) #10
  %69 = ptrtoint ptr %pcm.i145 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcm.i145, align 4
  %71 = ptrtoint ptr %pci2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci2.i, align 4
  %dev.i152 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %call3.i153 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %70, i32 noundef 2, ptr noundef %dev.i152, i32 noundef 131072, i32 noundef 1044480) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i145) #10
  %73 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card, align 4
  %call46 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_bt87x_capture_volume, ptr noundef %13) #10
  %call47 = call i32 @snd_ctl_add(ptr noundef %74, ptr noundef %call46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %75 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %card, align 4
  %call51 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_bt87x_capture_boost, ptr noundef %13) #10
  %call52 = call i32 @snd_ctl_add(ptr noundef %76, ptr noundef %call51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %77 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card, align 4
  %call56 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_bt87x_capture_source, ptr noundef %13) #10
  %call57 = call i32 @snd_ctl_add(ptr noundef %78, ptr noundef %call56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end55.cleanup_crit_edge, label %if.end55.do.end_crit_edge

if.end55.do.end_crit_edge:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end55.do.end_crit_edge, %if.end35.do.end_crit_edge
  %79 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card, align 4
  %dev62 = getelementptr inbounds %struct.snd_card, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev62, align 8
  %83 = load i32, ptr @snd_bt87x_probe.dev, align 4
  %84 = ptrtoint ptr %no_digital to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load65 = load i8, ptr %no_digital, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load65)
  %tobool68.not = icmp sgt i8 %bf.load65, -1
  %cond = select i1 %tobool68.not, ptr @.str.9, ptr @.str.8
  %85 = and i8 %bf.load65, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool75.not = icmp eq i8 %85, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.9, ptr @.str.8
  %86 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %board, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %82, ptr noundef nonnull @.str.3, i32 noundef %83, i32 noundef %boardid.0, ptr noundef nonnull %cond, ptr noundef nonnull %cond76, i32 noundef %87) #13
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %89, i32 0, i32 2
  %90 = call ptr @memcpy(ptr %driver, ptr @.str.10, i32 6)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %89, i32 0, i32 3
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %91 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %device, align 2
  %conv = zext i16 %92 to i32
  %call81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.11, i32 noundef %conv)
  %93 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %94, i32 0, i32 4
  %shortname83 = getelementptr inbounds %struct.snd_card, ptr %94, i32 0, i32 3
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %95 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %resource, align 8
  %conv86 = zext i32 %96 to i64
  %97 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq.i, align 4
  %call87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.12, ptr noundef %shortname83, i64 noundef %conv86, i32 noundef %98)
  %99 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %100, i32 0, i32 6
  %101 = call ptr @memcpy(ptr %mixername, ptr @.str.10, i32 6)
  %call90 = call i32 @snd_card_register(ptr noundef %100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %do.end.cleanup_crit_edge, label %if.end94

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %104 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %driver_data.i.i, align 4
  %105 = load i32, ptr @snd_bt87x_probe.dev, align 4
  %inc95 = add i32 %105, 1
  store i32 %inc95, ptr @snd_bt87x_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %snd_bt87x_pcm.exit156.thread, %snd_bt87x_pcm.exit.thread, %do.end16.i, %if.end.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end94 ], [ -2, %if.then8 ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call47, %if.end45.cleanup_crit_edge ], [ %call52, %if.end50.cleanup_crit_edge ], [ %call57, %if.end55.cleanup_crit_edge ], [ %call90, %do.end.cleanup_crit_edge ], [ %call.i139, %snd_bt87x_pcm.exit.thread ], [ %call.i146, %snd_bt87x_pcm.exit156.thread ], [ %call4.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ], [ %call.i.i, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_bt87x_detect_card(ptr noundef %pci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_match_id(ptr noundef nonnull @snd_bt87x_ids, ptr noundef %pci) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %2 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_vendor, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.for.inc.10_crit_edge [
    i16 113, label %land.lhs.true6
    i16 4541, label %land.lhs.true6.1
    i16 5217, label %land.lhs.true6.3
    i16 6178, label %land.lhs.true6.5
    i16 6316, label %land.lhs.true6.6
    i16 9999, label %land.lhs.true6.9
    i16 28771, label %land.lhs.true6.10
  ]

if.end.for.inc.10_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6:                                   ; preds = %if.end
  %5 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %6)
  %cmp10 = icmp eq i16 %6, 257
  br i1 %cmp10, label %land.lhs.true6.do.body_crit_edge, label %land.lhs.true6.for.inc.10_crit_edge

land.lhs.true6.for.inc.10_crit_edge:              ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6.do.body_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %land.lhs.true6.10.do.body_crit_edge, %land.lhs.true6.9.do.body_crit_edge, %land.lhs.true6.8.do.body_crit_edge, %land.lhs.true6.7.do.body_crit_edge, %land.lhs.true6.6.do.body_crit_edge, %land.lhs.true6.5.do.body_crit_edge, %land.lhs.true6.4.do.body_crit_edge, %land.lhs.true6.3.do.body_crit_edge, %land.lhs.true6.2.do.body_crit_edge, %land.lhs.true6.1.do.body_crit_edge, %land.lhs.true6.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_bt87x_detect_card.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_bt87x_detect_card, %if.then17)) #10
          to label %cleanup [label %if.then17], !srcloc !190

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %conv18 = zext i16 %8 to i32
  %9 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_vendor, align 4
  %conv20 = zext i16 %10 to i32
  %11 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_device, align 2
  %conv22 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_bt87x_detect_card.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22) #10
  br label %cleanup

land.lhs.true6.1:                                 ; preds = %if.end
  %13 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %14)
  %cmp10.1 = icmp eq i16 %14, 28
  br i1 %cmp10.1, label %land.lhs.true6.1.do.body_crit_edge, label %land.lhs.true6.2

land.lhs.true6.1.do.body_crit_edge:               ; preds = %land.lhs.true6.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.2:                                 ; preds = %land.lhs.true6.1
  %15 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 38, i16 %16)
  %cmp10.2 = icmp eq i16 %16, 38
  br i1 %cmp10.2, label %land.lhs.true6.2.do.body_crit_edge, label %land.lhs.true6.2.for.inc.10_crit_edge

land.lhs.true6.2.for.inc.10_crit_edge:            ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6.2.do.body_crit_edge:               ; preds = %land.lhs.true6.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.3:                                 ; preds = %if.end
  %17 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1889, i16 %18)
  %cmp10.3 = icmp eq i16 %18, 1889
  br i1 %cmp10.3, label %land.lhs.true6.3.do.body_crit_edge, label %land.lhs.true6.4

land.lhs.true6.3.do.body_crit_edge:               ; preds = %land.lhs.true6.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.4:                                 ; preds = %land.lhs.true6.3
  %19 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1905, i16 %20)
  %cmp10.4 = icmp eq i16 %20, 1905
  br i1 %cmp10.4, label %land.lhs.true6.4.do.body_crit_edge, label %land.lhs.true6.4.for.inc.10_crit_edge

land.lhs.true6.4.for.inc.10_crit_edge:            ; preds = %land.lhs.true6.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6.4.do.body_crit_edge:               ; preds = %land.lhs.true6.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.5:                                 ; preds = %if.end
  %21 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp10.5 = icmp eq i16 %22, 1
  br i1 %cmp10.5, label %land.lhs.true6.5.do.body_crit_edge, label %land.lhs.true6.5.for.inc.10_crit_edge

land.lhs.true6.5.for.inc.10_crit_edge:            ; preds = %land.lhs.true6.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6.5.do.body_crit_edge:               ; preds = %land.lhs.true6.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.6:                                 ; preds = %if.end
  %23 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11008, i16 %24)
  %cmp10.6 = icmp eq i16 %24, -11008
  br i1 %cmp10.6, label %land.lhs.true6.6.do.body_crit_edge, label %land.lhs.true6.7

land.lhs.true6.6.do.body_crit_edge:               ; preds = %land.lhs.true6.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.7:                                 ; preds = %land.lhs.true6.6
  %25 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9456, i16 %26)
  %cmp10.7 = icmp eq i16 %26, -9456
  br i1 %cmp10.7, label %land.lhs.true6.7.do.body_crit_edge, label %land.lhs.true6.8

land.lhs.true6.7.do.body_crit_edge:               ; preds = %land.lhs.true6.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.8:                                 ; preds = %land.lhs.true6.7
  %27 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9455, i16 %28)
  %cmp10.8 = icmp eq i16 %28, -9455
  br i1 %cmp10.8, label %land.lhs.true6.8.do.body_crit_edge, label %land.lhs.true6.8.for.inc.10_crit_edge

land.lhs.true6.8.for.inc.10_crit_edge:            ; preds = %land.lhs.true6.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6.8.do.body_crit_edge:               ; preds = %land.lhs.true6.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.9:                                 ; preds = %if.end
  %29 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1024, i16 %30)
  %cmp10.9 = icmp eq i16 %30, -1024
  br i1 %cmp10.9, label %land.lhs.true6.9.do.body_crit_edge, label %land.lhs.true6.9.for.inc.10_crit_edge

land.lhs.true6.9.for.inc.10_crit_edge:            ; preds = %land.lhs.true6.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6.9.do.body_crit_edge:               ; preds = %land.lhs.true6.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true6.10:                                ; preds = %if.end
  %31 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %32)
  %cmp10.10 = icmp eq i16 %32, 8192
  br i1 %cmp10.10, label %land.lhs.true6.10.do.body_crit_edge, label %land.lhs.true6.10.for.inc.10_crit_edge

land.lhs.true6.10.for.inc.10_crit_edge:           ; preds = %land.lhs.true6.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10

land.lhs.true6.10.do.body_crit_edge:              ; preds = %land.lhs.true6.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc.10:                                       ; preds = %land.lhs.true6.10.for.inc.10_crit_edge, %land.lhs.true6.9.for.inc.10_crit_edge, %land.lhs.true6.8.for.inc.10_crit_edge, %land.lhs.true6.5.for.inc.10_crit_edge, %land.lhs.true6.4.for.inc.10_crit_edge, %land.lhs.true6.2.for.inc.10_crit_edge, %land.lhs.true6.for.inc.10_crit_edge, %if.end.for.inc.10_crit_edge
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %device29 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %33 = ptrtoint ptr %device29 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device29, align 2
  %conv30 = zext i16 %34 to i32
  %35 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %subsystem_vendor, align 4
  %conv32 = zext i16 %36 to i32
  %37 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %subsystem_device, align 2
  %conv34 = zext i16 %38 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.15, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv34) #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.17) #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.10, %if.then17, %do.body, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.10 ], [ %1, %land.lhs.true.cleanup_crit_edge ], [ -16, %if.then17 ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !191
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  %interrupt_mask = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 12
  %4 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interrupt_mask, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %8, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %6) #10, !srcloc !189
  %and1 = and i32 %and, 503808
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end21_crit_edge, label %if.then3

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then3:                                         ; preds = %if.end
  %and4 = and i32 %and, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then3.if.end7_crit_edge, label %do.end

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef %3) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then3.if.end7_crit_edge
  %and8 = and i32 %and, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %do.end13

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  %dev15 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.28, i32 noundef %3) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end7.if.end16_crit_edge
  %and17 = and i32 %and, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  %pci.i = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 1
  %17 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci.i, align 4
  %call.i = tail call i32 @pci_status_get_and_clear_errors(ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 32768
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %dev5.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev5.i, align 8
  br i1 %cmp.not.i, label %do.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.30, i32 noundef %and1, i32 noundef %call.i) #13
  br label %if.end21

do.end3.i:                                        ; preds = %if.then19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33) #13
  %pci_parity_errors.i = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 14
  %23 = ptrtoint ptr %pci_parity_errors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pci_parity_errors.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %pci_parity_errors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i)
  %cmp7.i = icmp sgt i32 %inc.i, 20
  br i1 %cmp7.i, label %do.end11.i, label %do.end3.i.if.end21_crit_edge

do.end3.i.if.end21_crit_edge:                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end11.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 4
  %dev13.i = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev13.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.36) #13
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 4
  %dev18.i = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev18.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.39) #13
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %dev23.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev23.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.42) #13
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 4
  %dev28.i = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev28.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.45) #13
  %41 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %interrupt_mask, align 4
  %and29.i = and i32 %42, -98305
  store i32 %and29.i, ptr %interrupt_mask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %and29.i) #10
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %43) #10, !srcloc !189
  br label %if.end21

if.end21:                                         ; preds = %do.end11.i, %do.end3.i.if.end21_crit_edge, %do.end.i, %if.end16.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %and22 = and i32 %and, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %land.lhs.true

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end21
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 11
  %46 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg_control, align 4
  %and24 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true.cleanup_crit_edge, label %if.then26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %current_line = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 13
  %48 = ptrtoint ptr %current_line to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %current_line, align 4
  %add = add i32 %49, 1
  %lines = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 10
  %50 = ptrtoint ptr %lines to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lines, align 4
  %rem = urem i32 %add, %51
  %mul = shl i32 %rem, 4
  %div = udiv i32 %mul, %51
  %shr = lshr i32 %3, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %shr)
  %cmp.not = icmp eq i32 %div, %shr
  %mul32 = mul i32 %51, %shr
  %sub = add i32 %mul32, 15
  %div3465 = lshr i32 %sub, 4
  %storemerge = select i1 %cmp.not, i32 %rem, i32 %div3465
  %52 = ptrtoint ptr %current_line to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge, ptr %current_line, align 4
  %substream = getelementptr inbounds %struct.snd_bt87x, ptr %dev_id, i32 0, i32 7
  %53 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then26 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_bt87x_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %reg_lock.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #10
  %reg_control.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control.i, align 4
  %and.i = and i32 %3, -20
  store i32 %and.i, ptr %reg_control.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %mmio.i.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %8, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 12060416) #10, !srcloc !189
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_status_get_and_clear_errors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_pcm_open(ptr noundef %substream) #2 align 64 {
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
  %opened = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 6
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %opened) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %reg_control.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_control.i, align 4
  br i1 %cmp, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %9, 67108928
  %10 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %reg_control.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %11 = call ptr @memcpy(ptr %hw.i, ptr @snd_bt87x_digital_hw, i32 64)
  %board.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %board.i, align 4
  %call.i = tail call i32 @snd_pcm_rate_to_rate_bit(i32 noundef %13) #10
  %rates.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %14 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %rates.i, align 8
  %15 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %board.i, align 4
  %rate_min.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %17 = ptrtoint ptr %rate_min.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rate_min.i, align 4
  %18 = load i32, ptr %board.i, align 4
  %rate_max.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %19 = ptrtoint ptr %rate_max.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rate_max.i, align 8
  br label %if.end8

if.end5:                                          ; preds = %if.end
  %and.i = and i32 %9, -67108929
  %20 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i, ptr %reg_control.i, align 4
  %hw.i32 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %21 = call ptr @memcpy(ptr %hw.i32, ptr @snd_bt87x_analog_hw, i32 64)
  %call.i33 = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_bt87x_set_analog_hw.constraint_rates) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp6 = icmp slt i32 %call.i33, 0
  br i1 %cmp6, label %if.end5._error_crit_edge, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end5._error_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %_error

if.end8:                                          ; preds = %if.end5.if.end8_crit_edge, %if.end5.thread
  %call9 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8._error_crit_edge, label %if.end12

if.end8._error_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %_error

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %substream13 = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %substream13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %substream, ptr %substream13, align 4
  br label %cleanup

_error:                                           ; preds = %if.end8._error_crit_edge, %if.end5._error_crit_edge
  %err.1 = phi i32 [ %call.i33, %if.end5._error_crit_edge ], [ %call9, %if.end8._error_crit_edge ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %opened) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %_error, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %_error ], [ 0, %if.end12 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control, align 4
  %or = or i32 %3, 67108864
  store i32 %or, ptr %reg_control, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %mmio.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #10, !srcloc !189
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  %substream3 = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %substream3, align 4
  %opened = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %opened) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i5 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i5, align 4
  %area.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %area.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.then.i, label %entry.if.end4.i_crit_edge

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %dma_risc.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 8
  %pci.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev.i, i32 noundef 0, i32 noundef 4096, ptr noundef %dma_risc.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then.i.snd_bt87x_create_risc.exit_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i.snd_bt87x_create_risc.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_bt87x_create_risc.exit

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %10 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %area.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100663424, ptr %11, align 4
  %incdec.ptr7.i = getelementptr i32, ptr %11, i32 2
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp873.not.i = icmp eq i32 %3, 0
  br i1 %cmp873.not.i, label %if.end4.i.for.end.i_crit_edge, label %do.body.preheader.lr.ph.i

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.body.preheader.lr.ph.i:                        ; preds = %if.end4.i
  %runtime.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %do.end.i.do.body.preheader.i_crit_edge, %do.body.preheader.lr.ph.i
  %risc.076.i = phi ptr [ %incdec.ptr7.i, %do.body.preheader.lr.ph.i ], [ %incdec.ptr25.i, %do.end.i.do.body.preheader.i_crit_edge ]
  %offset.075.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %add.i, %do.end.i.do.body.preheader.i_crit_edge ]
  %i.074.i = phi i32 [ 0, %do.body.preheader.lr.ph.i ], [ %inc.i, %do.end.i.do.body.preheader.i_crit_edge ]
  %mul.i = shl i32 %i.074.i, 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end18.i.do.body.i_crit_edge, %do.body.preheader.i
  %offset.1.i = phi i32 [ %add.i, %if.end18.i.do.body.i_crit_edge ], [ %offset.075.i, %do.body.preheader.i ]
  %risc.1.i = phi ptr [ %incdec.ptr25.i, %if.end18.i.do.body.i_crit_edge ], [ %risc.076.i, %do.body.preheader.i ]
  %rest.0.i = phi i32 [ %sub26.i, %if.end18.i.do.body.i_crit_edge ], [ %5, %do.body.preheader.i ]
  %rem.i = and i32 %offset.1.i, 4095
  %sub.i = sub nuw nsw i32 4096, %rem.i
  %14 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %rest.0.i) #10
  %or.i = or i32 %14, 268435456
  call void @__sanitizer_cov_trace_cmp4(i32 %rest.0.i, i32 %5)
  %cmp12.i = icmp eq i32 %rest.0.i, %5
  br i1 %cmp12.i, label %if.then13.i, label %do.body.i.if.end18.i_crit_edge

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i = udiv i32 %mul.i, %3
  %shl.i = shl i32 %div.i, 16
  %or14.i = or i32 %shl.i, %14
  %neg.i = shl i32 %div.i, 20
  %and.i = and i32 %neg.i, 15728640
  %shl16.i = xor i32 %and.i, 15728640
  %or15.i = or i32 %or14.i, %shl16.i
  %or17.i = or i32 %or15.i, 402653184
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %do.body.i.if.end18.i_crit_edge
  %cmd.0.i = phi i32 [ %or17.i, %if.then13.i ], [ %or.i, %do.body.i.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rest.0.i, i32 %sub.i)
  %cmp19.not.i = icmp ugt i32 %rest.0.i, %sub.i
  %or21.i = or i32 %cmd.0.i, 83886080
  %spec.select71.i = select i1 %cmp19.not.i, i32 %cmd.0.i, i32 %or21.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %spec.select71.i) #10
  %incdec.ptr23.i = getelementptr i32, ptr %risc.1.i, i32 1
  %16 = ptrtoint ptr %risc.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %risc.1.i, align 4
  %17 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime.i.i, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %18, i32 0, i32 53
  %19 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_buffer_p.i.i, align 8
  %call.i72.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %20, i32 noundef %offset.1.i) #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %call.i72.i) #10
  %incdec.ptr25.i = getelementptr i32, ptr %risc.1.i, i32 2
  %22 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %incdec.ptr23.i, align 4
  %add.i = add i32 %14, %offset.1.i
  %sub26.i = sub i32 %rest.0.i, %14
  %cmp27.not.i = icmp eq i32 %sub26.i, 0
  br i1 %cmp27.not.i, label %do.end.i, label %if.end18.i.do.body.i_crit_edge

if.end18.i.do.body.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %if.end18.i
  %inc.i = add nuw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.do.body.preheader.i_crit_edge

do.end.i.do.body.preheader.i_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %do.end.i.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  %risc.0.lcssa.i = phi ptr [ %incdec.ptr7.i, %if.end4.i.for.end.i_crit_edge ], [ %incdec.ptr25.i, %do.end.i.for.end.i_crit_edge ]
  %incdec.ptr28.i = getelementptr i32, ptr %risc.0.lcssa.i, i32 1
  %23 = ptrtoint ptr %risc.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 201326720, ptr %risc.0.lcssa.i, align 4
  %incdec.ptr29.i = getelementptr i32, ptr %risc.0.lcssa.i, i32 2
  %24 = ptrtoint ptr %incdec.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %incdec.ptr28.i, align 4
  %incdec.ptr30.i = getelementptr i32, ptr %risc.0.lcssa.i, i32 3
  %25 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 112, ptr %incdec.ptr29.i, align 4
  %addr32.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %addr32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr32.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %29 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %incdec.ptr30.i, align 4
  %line_bytes.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %line_bytes.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %5, ptr %line_bytes.i, align 4
  %lines.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %lines.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %3, ptr %lines.i, align 4
  br label %snd_bt87x_create_risc.exit

snd_bt87x_create_risc.exit:                       ; preds = %for.end.i, %if.then.i.snd_bt87x_create_risc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end.i ], [ -12, %if.then.i.snd_bt87x_create_risc.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %area.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_bt87x_free_risc.exit_crit_edge, label %if.then.i

entry.snd_bt87x_free_risc.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_bt87x_free_risc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dma_risc.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 8
  tail call void @snd_dma_free_pages(ptr noundef %dma_risc.i) #10
  %4 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %area.i, align 4
  br label %snd_bt87x_free_risc.exit

snd_bt87x_free_risc.exit:                         ; preds = %if.then.i, %entry.snd_bt87x_free_risc.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %reg_lock = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_control, align 4
  %and = and i32 %5, -20225
  store i32 %and, ptr %reg_control, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate, align 4
  %div18 = lshr i32 %7, 2
  %add = add nuw nsw i32 %div18, 1792000
  %div3 = udiv i32 %add, %7
  %shl = shl i32 %div3, 8
  %or = or i32 %shl, %and
  store i32 %or, ptr %reg_control, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or6 = or i32 %or, 16384
  %10 = ptrtoint ptr %reg_control to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or6, ptr %reg_control, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_control, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %mmio.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #10, !srcloc !189
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg_lock.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #10
  %current_line.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %current_line.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %current_line.i, align 4
  %reg_control.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_control.i, align 4
  %or.i = or i32 %5, 19
  store i32 %or.i, ptr %reg_control.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %mmio.i.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #10, !srcloc !189
  %line_bytes.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %line_bytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %line_bytes.i, align 4
  %lines.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %lines.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lines.i, align 4
  %shl.i = shl i32 %14, 16
  %or1.i = or i32 %shl.i, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #10
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %17, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %15) #10, !srcloc !189
  %interrupt_mask.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %interrupt_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %interrupt_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %22, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %20) #10, !srcloc !189
  %23 = ptrtoint ptr %reg_control.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_control.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %27, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %25) #10, !srcloc !189
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %reg_lock.i4 = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i4) #10
  %reg_control.i5 = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %reg_control.i5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_control.i5, align 4
  %and.i = and i32 %29, -20
  store i32 %and.i, ptr %reg_control.i5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %mmio.i.i6 = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %mmio.i.i6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i6, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %32, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 %30) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %mmio.i.i6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i6, align 4
  %add.ptr.i2.i8 = getelementptr i8, ptr %34, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i8, i32 0) #10, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %mmio.i.i6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i6, align 4
  %add.ptr.i4.i9 = getelementptr i8, ptr %36, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9, i32 12060416) #10, !srcloc !189
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %sw.bb
  %reg_lock.i4.sink = phi ptr [ %reg_lock.i4, %sw.bb1 ], [ %reg_lock.i, %sw.bb ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i4.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bt87x_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
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
  %current_line = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %current_line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_line, align 4
  %line_bytes = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %line_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line_bytes, align 4
  %mul = shl i32 %5, 3
  %mul.i = mul i32 %mul, %7
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_rate_to_rate_bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratnums(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_bt87x_capture_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bt87x_capture_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control, align 4
  %shr = lshr i32 %3, 28
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_capture_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control, align 4
  %and = and i32 %3, 268435455
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value2, align 8
  %shl = shl i32 %5, 28
  %or = or i32 %shl, %and
  store i32 %or, ptr %reg_control, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %mmio.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !189
  %9 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_control, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %10)
  %cmp = icmp ne i32 %3, %10
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bt87x_capture_boost_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control, align 4
  %and = lshr i32 %3, 27
  %and.lobit = and i32 %and, 1
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_capture_boost_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control, align 4
  %and = and i32 %3, -134217729
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 134217728
  %or = or i32 %cond, %and
  %6 = ptrtoint ptr %reg_control to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %reg_control, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %mmio.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #10, !srcloc !189
  %10 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_control, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp = icmp ne i32 %11, %3
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_capture_source_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %info, i32 noundef 1, i32 noundef 3, ptr noundef nonnull @snd_bt87x_capture_source_info.texts) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bt87x_capture_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control, align 4
  %and = lshr i32 %3, 24
  %shr = and i32 %and, 3
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %value1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bt87x_capture_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %reg_control = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_control, align 4
  %and = and i32 %3, -50331649
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value2, align 8
  %shl = shl i32 %5, 24
  %or = or i32 %shl, %and
  store i32 %or, ptr %reg_control, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %mmio.i = getelementptr inbounds %struct.snd_bt87x, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !189
  %9 = ptrtoint ptr %reg_control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_control, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp = icmp ne i32 %10, %3
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !73, !74, !75, !76, !77, !79, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/bt87x.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/bt87x.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/bt87x.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/bt87x.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/bt87x.c", i32 34, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/bt87x.c", i32 35, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/bt87x.c", i32 36, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/bt87x.c", i32 37, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/bt87x.c", i32 38, i32 1}
!22 = !{ptr @__param_digital_rate, !23, !"__param_digital_rate", i1 false, i1 false}
!23 = !{!"../sound/pci/bt87x.c", i32 39, i32 1}
!24 = !{ptr @__UNIQUE_ID_digital_ratetype252, !23, !"__UNIQUE_ID_digital_ratetype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_digital_rate253, !26, !"__UNIQUE_ID_digital_rate253", i1 false, i1 false}
!26 = !{!"../sound/pci/bt87x.c", i32 40, i32 1}
!27 = !{ptr @__param_load_all, !28, !"__param_load_all", i1 false, i1 false}
!28 = !{!"../sound/pci/bt87x.c", i32 41, i32 1}
!29 = !{ptr @__UNIQUE_ID_load_alltype254, !28, !"__UNIQUE_ID_load_alltype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_load_all255, !31, !"__UNIQUE_ID_load_all255", i1 false, i1 false}
!31 = !{!"../sound/pci/bt87x.c", i32 42, i32 1}
!32 = !{ptr @__initcall__kmod_snd_bt87x__257_918_alsa_card_bt87x_init6, !33, !"__initcall__kmod_snd_bt87x__257_918_alsa_card_bt87x_init6", i1 false, i1 false}
!33 = !{!"../sound/pci/bt87x.c", i32 918, i32 1}
!34 = !{ptr @__exitcall_alsa_card_bt87x_exit, !35, !"__exitcall_alsa_card_bt87x_exit", i1 false, i1 false}
!35 = !{!"../sound/pci/bt87x.c", i32 919, i32 1}
!36 = !{ptr @load_all, !37, !"load_all", i1 false, i1 false}
!37 = !{!"../sound/pci/bt87x.c", i32 31, i32 13}
!38 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!39 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!40 = !{ptr @index, !41, !"index", i1 false, i1 false}
!41 = !{!"../sound/pci/bt87x.c", i32 27, i32 12}
!42 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!43 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!44 = !{ptr @id, !45, !"id", i1 false, i1 false}
!45 = !{!"../sound/pci/bt87x.c", i32 28, i32 14}
!46 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!47 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!48 = !{ptr @enable, !49, !"enable", i1 false, i1 false}
!49 = !{!"../sound/pci/bt87x.c", i32 29, i32 13}
!50 = !{ptr @__param_str_digital_rate, !23, !"__param_str_digital_rate", i1 false, i1 false}
!51 = !{ptr @__param_arr_digital_rate, !23, !"__param_arr_digital_rate", i1 false, i1 false}
!52 = !{ptr @digital_rate, !53, !"digital_rate", i1 false, i1 false}
!53 = !{!"../sound/pci/bt87x.c", i32 30, i32 12}
!54 = !{ptr @__param_str_load_all, !28, !"__param_str_load_all", i1 false, i1 false}
!55 = !{ptr @.str, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/bt87x.c", i32 901, i32 10}
!57 = !{ptr @driver, !58, !"driver", i1 false, i1 false}
!58 = !{!"../sound/pci/bt87x.c", i32 900, i32 26}
!59 = !{ptr @snd_bt87x_ids, !60, !"snd_bt87x_ids", i1 false, i1 false}
!60 = !{!"../sound/pci/bt87x.c", i32 732, i32 35}
!61 = !{ptr @snd_bt87x_probe.dev, !62, !"dev", i1 false, i1 false}
!62 = !{!"../sound/pci/bt87x.c", i32 811, i32 13}
!63 = !{ptr @.str.1, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/bt87x.c", i32 850, i32 45}
!65 = !{ptr @.str.2, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/bt87x.c", i32 855, i32 44}
!67 = !{ptr @.str.3, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/bt87x.c", i32 871, i32 2}
!69 = !{ptr @.str.4, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.5, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.6, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.7, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @snd_bt87x_probe._entry, !68, !"_entry", i1 false, i1 false}
!74 = !{ptr @snd_bt87x_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.8, !68, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.9, !68, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.10, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/bt87x.c", i32 876, i32 23}
!79 = !{ptr @.str.11, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/bt87x.c", i32 877, i32 27}
!81 = !{ptr @.str.12, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/bt87x.c", i32 878, i32 26}
!83 = !{ptr @.str.13, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/bt87x.c", i32 794, i32 4}
!85 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @snd_bt87x_detect_card.__UNIQUE_ID_ddebug256, !84, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!87 = !{ptr @.str.15, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/bt87x.c", i32 800, i32 2}
!89 = !{ptr @snd_bt87x_detect_card._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @snd_bt87x_detect_card._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.17, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/bt87x.c", i32 802, i32 2}
!93 = !{ptr @snd_bt87x_detect_card._entry.16, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_bt87x_detect_card._entry_ptr.18, !92, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"denylist", i1 false, i1 false}
!96 = !{!"../sound/pci/bt87x.c", i32 765, i32 3}
!97 = !{ptr @snd_bt87x_create.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../sound/pci/bt87x.c", i32 697, i32 2}
!99 = !{ptr @.str.19, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.20, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/bt87x.c", i32 699, i32 40}
!102 = !{ptr @.str.21, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/bt87x.c", i32 714, i32 3}
!104 = !{ptr @.str.22, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @snd_bt87x_create._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @snd_bt87x_create._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/bt87x.c", i32 311, i32 4}
!110 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.26, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @snd_bt87x_interrupt._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @snd_bt87x_interrupt._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/bt87x.c", i32 314, i32 4}
!116 = !{ptr @snd_bt87x_interrupt._entry.27, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @snd_bt87x_interrupt._entry_ptr.29, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/bt87x.c", i32 275, i32 3}
!120 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @snd_bt87x_pci_error._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @snd_bt87x_pci_error._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/bt87x.c", i32 279, i32 3}
!125 = !{ptr @snd_bt87x_pci_error._entry.32, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @snd_bt87x_pci_error._entry_ptr.34, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/bt87x.c", i32 284, i32 4}
!129 = !{ptr @snd_bt87x_pci_error._entry.35, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @snd_bt87x_pci_error._entry_ptr.37, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/bt87x.c", i32 286, i32 4}
!133 = !{ptr @snd_bt87x_pci_error._entry.38, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @snd_bt87x_pci_error._entry_ptr.40, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/bt87x.c", i32 288, i32 4}
!137 = !{ptr @snd_bt87x_pci_error._entry.41, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @snd_bt87x_pci_error._entry_ptr.43, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/bt87x.c", i32 290, i32 4}
!141 = !{ptr @snd_bt87x_pci_error._entry.44, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @snd_bt87x_pci_error._entry_ptr.46, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @snd_bt87x_boards, !144, !"snd_bt87x_boards", i1 false, i1 false}
!144 = !{!"../sound/pci/bt87x.c", i32 151, i32 37}
!145 = !{ptr @snd_bt87x_pcm_ops, !146, !"snd_bt87x_pcm_ops", i1 false, i1 false}
!146 = !{!"../sound/pci/bt87x.c", i32 527, i32 33}
!147 = !{ptr @snd_bt87x_digital_hw, !148, !"snd_bt87x_digital_hw", i1 false, i1 false}
!148 = !{!"../sound/pci/bt87x.c", i32 336, i32 38}
!149 = !{ptr @snd_bt87x_set_analog_hw.analog_clock, !150, !"analog_clock", i1 false, i1 false}
!150 = !{!"../sound/pci/bt87x.c", i32 384, i32 33}
!151 = !{ptr @snd_bt87x_set_analog_hw.constraint_rates, !152, !"constraint_rates", i1 false, i1 false}
!152 = !{!"../sound/pci/bt87x.c", i32 390, i32 52}
!153 = !{ptr @snd_bt87x_analog_hw, !154, !"snd_bt87x_analog_hw", i1 false, i1 false}
!154 = !{!"../sound/pci/bt87x.c", i32 353, i32 38}
!155 = !{ptr @.str.47, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/bt87x.c", i32 575, i32 10}
!157 = !{ptr @snd_bt87x_capture_volume, !158, !"snd_bt87x_capture_volume", i1 false, i1 false}
!158 = !{!"../sound/pci/bt87x.c", i32 573, i32 38}
!159 = !{ptr @.str.48, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/bt87x.c", i32 611, i32 10}
!161 = !{ptr @snd_bt87x_capture_boost, !162, !"snd_bt87x_capture_boost", i1 false, i1 false}
!162 = !{!"../sound/pci/bt87x.c", i32 609, i32 38}
!163 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/bt87x.c", i32 653, i32 10}
!165 = !{ptr @snd_bt87x_capture_source, !166, !"snd_bt87x_capture_source", i1 false, i1 false}
!166 = !{!"../sound/pci/bt87x.c", i32 651, i32 38}
!167 = !{ptr @.str.50, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/bt87x.c", i32 620, i32 39}
!169 = !{ptr @.str.51, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/pci/bt87x.c", i32 620, i32 51}
!171 = !{ptr @.str.52, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/bt87x.c", i32 620, i32 57}
!173 = !{ptr @snd_bt87x_capture_source_info.texts, !174, !"texts", i1 false, i1 false}
!174 = !{!"../sound/pci/bt87x.c", i32 620, i32 27}
!175 = !{ptr @snd_bt87x_default_ids, !176, !"snd_bt87x_default_ids", i1 false, i1 false}
!176 = !{!"../sound/pci/bt87x.c", i32 894, i32 35}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i8 0, i8 2}
!187 = !{!"auto-init"}
!188 = !{i64 2154697072}
!189 = !{i64 4224355}
!190 = !{i64 2148743547, i64 2148743552, i64 2148743565, i64 2148743609, i64 2148743643, i64 2148743664}
!191 = !{i64 4224773}
!192 = !{i64 2154696688}
!193 = !{i64 2154716394}
!194 = !{i64 2154716733}
